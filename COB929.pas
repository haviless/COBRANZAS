unit COB929;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ExtCtrls, DBGrids;

type
  TfRepDetGest = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    dtgResGes: TwwDBGrid;
    GroupBox2: TGroupBox;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitMostrar: TBitBtn;
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
    Panel2: TPanel;
    Chk01: TCheckBox;
    BitPrint: TBitBtn;
    ppRepEstPre: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLblTipo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBEstPre: TppDBPipeline;
    ppLabel7: TppLabel;
    ppLabel5: TppLabel;
    BitExporta: TBitBtn;
    dtgData: TDBGrid;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure dtgResGesDblClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
  private
    { Private declarations }
    procedure limpiagrids;

  public
    { Public declarations }
  end;

var
  fRepDetGest: TfRepDetGest;

implementation

uses COBDM1, COB938;

{$R *.dfm}

procedure TfRepDetGest.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfRepDetGest.FormActivate(Sender: TObject);
begin
    limpiagrids;     DtpFecIni.Date := DM1.FechaSys;   DtpFecFin.Date := DM1.FechaSys;
end;

procedure TfRepDetGest.BitMostrarClick(Sender: TObject);
var xSQL:String;
    xCount:Integer;
begin
Screen.Cursor := crHourglass;
xSQL:='SELECT OFDESID,OFDESNOM,COUNT(*) REGISTROS FROM ( SELECT B.UPROID,B.UPAGOID,B.USEID,G.USENOM,A.ASOID,B.ASOAPENOM,A.IDMET,C.DESCRIPCION, A.IDJUS,D.DESCRIPCION,A.IDSOL,E.DESCRIPCION,A.USUARIO,A.FREG,A.OFDESID,F.OFDESNOM  '+
      'FROM COB907 A,APO201 B,COB904 C,COB905 D,COB906 E,APO110 F,APO101 G WHERE A.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' AND A.ASOID=B.ASOID AND A.IDMET=C.ID AND A.IDJUS=D.ID AND A.IDSOL=E.ID AND A.OFDESID=F.OFDESID AND B.UPROID=G.UPROID AND B.UPAGOID=G.UPAGOID AND B.USEID=G.USEID '+
      'ORDER BY FREG,USENOM) GROUP BY OFDESID,OFDESNOM ';
      DM1.cdsDetRegCob.Close;
      DM1.cdsDetRegCob.DataRequest(xSQL);
      DM1.cdsDetRegCob.Open;
      DM1.cdsDetRegCob.First;  xCount:=0;
      While Not DM1.cdsDetRegCob.Eof Do
      Begin
          xCount:=xCount + DM1.cdsDetRegCob.FieldByName('REGISTROS').AsInteger;
          DM1.cdsDetRegCob.Next;
      End;
      dtgResGes.ColumnByName('OFDESNOM').FooterValue :='N° Encuestados : ';
      dtgResGes.ColumnByName('REGISTROS').FooterValue := FloatToStrF(xCount,ffNumber, 10, 0);

Screen.Cursor := crDefault;

end;

procedure TfRepDetGest.dtgResGesDblClick(Sender: TObject);
var xSQL:String;
Begin
  If dtgResGes.DataSource.DataSet.RecordCount=0 Then Exit;
  Try
    fDetGesUse := TfDetGesUse.Create(Self);
    xSQL:='SELECT OFDESID,OFDESNOM,UPROID,UPAGOID,USEID,USENOM,COUNT(*) REGISTROS FROM ( SELECT B.UPROID,B.UPAGOID,B.USEID,G.USENOM,A.ASOID,B.ASOAPENOM,A.IDMET,C.DESCRIPCION, A.IDJUS,D.DESCRIPCION,A.IDSOL,E.DESCRIPCION,A.USUARIO,A.FREG,A.OFDESID,F.OFDESNOM  '+
          'FROM COB907 A,APO201 B,COB904 C,COB905 D,COB906 E,APO110 F,APO101 G WHERE A.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' AND A.ASOID=B.ASOID AND A.IDMET=C.ID AND A.IDJUS=D.ID AND A.IDSOL=E.ID AND A.OFDESID=F.OFDESID AND A.OFDESID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('OFDESID').AsString)+' AND B.UPROID=G.UPROID AND B.UPAGOID=G.UPAGOID AND B.USEID=G.USEID '+
          'ORDER BY FREG,USENOM) GROUP BY OFDESID,OFDESNOM,UPROID,UPAGOID,USEID,USENOM ';
      DM1.cdsDetRegCob1.Close;
      DM1.cdsDetRegCob1.DataRequest(xSQL);
      DM1.cdsDetRegCob1.Open;
     fDetGesUse.lblDatos.Caption:=Trim(DM1.cdsDetRegCob.FieldByName('OFDESNOM').AsString)+'  Del  '+DateToStr(DtpFecIni.Date)+'  Al  '+DateToStr(DtpFecFin.Date)   ;
     fDetGesUse.ShowModal;
  Finally
    fDetGesUse.Free;
  end;




end;

procedure TfRepDetGest.limpiagrids;
var xSQL:String;
begin
xSQL:='SELECT OFDESID,OFDESNOM,COUNT(*) REGISTROS FROM ( SELECT B.UPROID,B.UPAGOID,B.USEID,G.USENOM,A.ASOID,B.ASOAPENOM,A.IDMET,C.DESCRIPCION, A.IDJUS,D.DESCRIPCION,A.IDSOL,E.DESCRIPCION,A.USUARIO,A.FREG,A.OFDESID,F.OFDESNOM  '+
      'FROM COB907 A,APO201 B,COB904 C,COB905 D,COB906 E,APO110 F,APO101 G WHERE A.FREG IS NULL AND A.ASOID=B.ASOID AND A.IDMET=C.ID AND A.IDJUS=D.ID AND A.IDSOL=E.ID AND A.OFDESID=F.OFDESID AND B.UPROID=G.UPROID AND B.UPAGOID=G.UPAGOID AND B.USEID=G.USEID '+
      'ORDER BY FREG,USENOM) GROUP BY OFDESID,OFDESNOM ';
      DM1.cdsDetRegCob.Close;
      DM1.cdsDetRegCob.DataRequest(xSQL);
      DM1.cdsDetRegCob.Open;

end;

procedure TfRepDetGest.BitPrintClick(Sender: TObject);
var xSQL:String;
begin
  If dtgResGes.DataSource.DataSet.RecordCount=0 Then Exit;
  If Chk01.Checked Then
     Begin
       ppLblTitulo.Caption:='ESTADISTICA DE GESTION DE COBRANZA DEL : '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
       ppRepEstPre.Print;
       ppRepEstPre.Cancel;     
     End
  Else
     Begin
        xSQL:='SELECT B.UPROID,B.UPAGOID,B.USEID,G.USENOM,B.ASOCODMOD,A.ASOID,B.ASOAPENOM,A.IDMET,C.DESCRIPCION DESCRIPCION01, A.IDJUS,D.DESCRIPCION DESCRIPCION02, '+
              'A.IDSOL,E.DESCRIPCION DESCRIPCION03,H.USERNOM USUARIO,A.FREG,A.OFDESID,F.OFDESNOM,A.OTMET,A.OTJUS,A.OTOSOL FROM COB907 A,APO201 B,COB904 C,COB905 D,COB906 E,APO110 F,APO101 G,TGE006 H '+
              'WHERE A.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+'AND A.ASOID=B.ASOID AND  A.IDMET=C.ID AND A.IDJUS=D.ID AND A.IDSOL=E.ID AND A.OFDESID=F.OFDESID AND B.UPROID=G.UPROID AND B.UPAGOID=G.UPAGOID AND B.USEID=G.USEID  AND A.USUARIO=H.USERID  ORDER BY A.FREG,F.OFDESNOM,G.USENOM';
        DM1.cdsAbonoCuotas.Close;
        DM1.cdsAbonoCuotas.DataRequest(xSQL);
        DM1.cdsAbonoCuotas.Open;
        If DM1.cdsAbonoCuotas.RecordCount>0 Then
           Begin
              lblTitulo.Caption:='DETALLE DE GESTION DE COBRANZA A NIVEL NACIONAL';
              lblTitulo01.Caption:='DEL '+DateToStr(DtpFecIni.Date)+' AL  '+DateToStr(DtpFecFin.Date)+' - POR OFICINAS DESCONCENTRADAS Y USES/UGEL';
              RepOfides.Print;
              RepOfides.Cancel;
           End;
           DM1.cdsAbonoCuotas.Close;
     End;
end;

procedure TfRepDetGest.BitExportaClick(Sender: TObject);
var xSQL:String;
begin
If dtgResGes.DataSource.DataSet.RecordCount=0 Then Exit;
xSQL:='SELECT A.FREG,A.OFDESID,F.OFDESNOM,B.USEID,G.USENOM,B.ASOCODMOD,A.ASOID,B.ASOAPENOM,A.IDMET, '+
      'C.DESCRIPCION DESCRIPCION01,A.OTMET,A.IDJUS,D.DESCRIPCION DESCRIPCION02,A.OTJUS, A.IDSOL, '+
      'E.DESCRIPCION DESCRIPCION03,A.OTOSOL,H.USERNOM USUARIO '+
      'FROM COB907 A,APO201 B,COB904 C,COB905 D,COB906 E,APO110 F,APO101 G,TGE006 H '+
      'WHERE A.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
      'AND A.ASOID=B.ASOID AND  A.IDMET=C.ID AND A.IDJUS=D.ID AND A.IDSOL=E.ID '+
      'AND A.OFDESID=F.OFDESID AND B.UPROID=G.UPROID AND B.UPAGOID=G.UPAGOID AND B.USEID=G.USEID '+
      'AND B.UPROID=G.UPROID AND B.UPAGOID=G.UPAGOID AND B.USEID=G.USEID AND A.USUARIO=H.USERID '+
      'ORDER BY A.FREG,F.OFDESNOM,G.USENOM';
      DM1.cdsTPension.Close;
      DM1.cdsTPension.DataRequest(xSQL);
      DM1.cdsTPension.Open;
      If DM1.cdsTPension.RecordCount>0 Then
         Begin
         	Screen.Cursor:= crHourGlass;
        	try
            DM1.HojaExcel('Detalle_General_De_Gestión',DM1.dsTPension, dtgData);
        	except
          on Ex: Exception do
      			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
        	end;
        	Screen.Cursor:= crDefault;
         End;
      DM1.cdsTPension.Close;   
end;

end.
