unit COB941;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DBGrids, Db;

type
  TfRepRes01Gest = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    dtgResGes: TwwDBGrid;
    lblDescrip: TLabel;
    lblDescripc: TLabel;
    dtgData: TDBGrid;
    BitExporta: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgResGesDblClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepRes01Gest: TfRepRes01Gest;

implementation

uses COBDM1, COB942, COB940;

{$R *.dfm}

procedure TfRepRes01Gest.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfRepRes01Gest.FormActivate(Sender: TObject);
var xCount:Integer;
    xCremtoCob:Currency;

begin
    DM1.cdsDetRegCob1.First;  xCount:=0;  xCremtoCob:=0;
    While Not DM1.cdsDetRegCob1.Eof Do
    Begin
        xCount:=xCount + DM1.cdsDetRegCob1.FieldByName('MOVIMIENTOS').AsInteger;
        xCremtoCob:=xCremtoCob + DM1.cdsDetRegCob1.FieldByName('CREMTOCOB').AsCurrency;
        DM1.cdsDetRegCob1.Next;
    End;
    dtgResGes.ColumnByName('OFDESNOM').FooterValue :='Totales : ';
    dtgResGes.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtoCob,ffNumber, 15, 2);
    dtgResGes.ColumnByName('MOVIMIENTOS').FooterValue := FloatToStrF(xCount,ffNumber, 10, 0);

end;

procedure TfRepRes01Gest.dtgResGesDblClick(Sender: TObject);
var xSQL:String;
begin
  Try
    fDetAsoc := TfDetAsoc.create(Self);
    Screen.Cursor := crHourGlass;
    If fRepResGest.rdbOfDes.Checked Then
       Begin
          Screen.Cursor := crDefault;
          Exit;
       End
    Else If fRepResGest.rdbForPag.Checked Then
       Begin
          xSQL:='SELECT NVL(E.USENOM,''POR IDENTIFICAR'') USENOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,CREFPAG,CREDOCPAG,A.USUARIO,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,COUNT(*) MOVIMIENTOS, '+
                'F.ASODIR,NVL(F.ASOTELF1,F.ASOTELF2) ASOTELF,F.ZIPID,NVL(G.ZIPABR,''NO IDENTIFICADO'') ZIPABR,F.CIUDID,NVL(H.CIUDABR,''NO IDENTIFICADO'') CIUDABR,  '+
                'F.ASODPTO,NVL(I.DPTOABR,''NO IDENTIFICADO'') DPTOABR FROM CRE310 A,COB101 B,TGE006 C,APO110 D,APO101 E,APO201 F,APO122 G,APO123 H,APO158 I '+
                'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(fRepResGest.DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(fRepResGest.DtpFecFin.Date))+' '+
                'AND A.UPROID=E.UPROID(+) AND  A.UPAGOID=E.UPAGOID(+)  AND A.USEID=E.USEID(+) AND CREESTID NOT IN (''13'',''99'') AND A.FORPAGID=B.FORPAGOID(+) AND A.USUARIO=C.USERID(+) AND C.OFDESID=D.OFDESID(+) '+
                'AND A.ASOID=F.ASOID AND F.ZIPID=G.ZIPID(+) AND F.CIUDID=H.CIUDID(+) AND F.ASODPTO=I.DPTOID(+) AND A.FORPAGID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('OFDESID').AsString)+' AND C.OFDESID='+QuotedStr(DM1.cdsDetRegCob1.FieldByName('OFDESID').AsString)+' GROUP BY E.USENOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,CREFPAG,CREDOCPAG,A.USUARIO,F.ASODIR,NVL(F.ASOTELF1,F.ASOTELF2), '+
                'F.ZIPID,NVL(G.ZIPABR,''NO IDENTIFICADO''),F.CIUDID,NVL(H.CIUDABR,''NO IDENTIFICADO''),F.ASODPTO,NVL(I.DPTOABR,''NO IDENTIFICADO'') ';
                fDetAsoc.lblDescrip.Caption:=lblDescrip.Caption;
                fDetAsoc.lblDescripc.Caption:=lblDescripc.Caption;
                fDetAsoc.lblDescripx.Caption:= Trim(DM1.cdsDetRegCob1.FieldByName('OFDESID').AsString)+' - '+DM1.cdsDetRegCob1.FieldByName('OFDESNOM').AsString;
       End
    Else
       Begin
          Screen.Cursor := crDefault;
          Exit;
       End;
    DM1.cdsDetRegGlob.Close;
    DM1.cdsDetRegGlob.DataRequest(xSQL);
    DM1.cdsDetRegGlob.Open;
    TNumericField(DM1.cdsDetRegGlob.FieldByName('MOVIMIENTOS')).DisplayFormat:='###,###,###';
    TNumericField(DM1.cdsDetRegGlob.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,###.#0';

    Screen.Cursor := crDefault;
    fDetAsoc.ShowModal;
  Finally
    fDetAsoc.Free;
  end;


end;

procedure TfRepRes01Gest.BitExportaClick(Sender: TObject);
begin
	Screen.Cursor:= crHourGlass;
	try
  DM1.HojaExcel(lblDescrip.Caption,DM1.dsDetRegCob1, dtgData);
	except
		on Ex: Exception do
			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	end;
	Screen.Cursor:= crDefault;

end;

end.
