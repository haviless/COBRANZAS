unit CRE944;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db, ppDB,
  ppDBPipe, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport;

type
  TfRegApor = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    lstAnoApot: TListBox;
    dtgAportes: TwwDBGrid;
    BitPrint: TBitBtn;
    DbAportes: TppDBPipeline;
    RepAportes: TppReport;
    ppHeaderBand31: TppHeaderBand;
    lblTitulo: TppLabel;
    ppLabel628: TppLabel;
    ppLabel629: TppLabel;
    ppLabel630: TppLabel;
    ppLabel631: TppLabel;
    ppLabel632: TppLabel;
    ppSystemVariable62: TppSystemVariable;
    ppSystemVariable63: TppSystemVariable;
    ppSystemVariable64: TppSystemVariable;
    ppLabel633: TppLabel;
    ppLabel634: TppLabel;
    ppLabel635: TppLabel;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppDBText260: TppDBText;
    ppDBText267: TppDBText;
    lblUse: TppLabel;
    lblProc: TppLabel;
    lblTipAso: TppLabel;
    ppLabel636: TppLabel;
    ppLabel637: TppLabel;
    ppLabel638: TppLabel;
    ppLabel639: TppLabel;
    ppLabel640: TppLabel;
    ppLabel641: TppLabel;
    ppLabel642: TppLabel;
    ppLabel643: TppLabel;
    ppLabel644: TppLabel;
    ppLabel645: TppLabel;
    ppDetailBand33: TppDetailBand;
    ppDBText268: TppDBText;
    ppDBText269: TppDBText;
    ppDBText270: TppDBText;
    ppDBText271: TppDBText;
    ppDBText272: TppDBText;
    ppDBText273: TppDBText;
    ppDBText274: TppDBText;
    ppFooterBand26: TppFooterBand;
    ppSummaryBand31: TppSummaryBand;
    ppLabel646: TppLabel;
    ppDBCalc218: TppDBCalc;
    ppDBCalc219: TppDBCalc;
    ppLabel647: TppLabel;
    ppLine158: TppLine;
    ppLine159: TppLine;
    lblUsuario: TppLabel;
    ppGroup40: TppGroup;
    ppGroupHeaderBand40: TppGroupHeaderBand;
    ppDBText275: TppDBText;
    ppLabel648: TppLabel;
    ppLabel649: TppLabel;
    ppLabel650: TppLabel;
    ppLabel651: TppLabel;
    ppLabel652: TppLabel;
    ppLabel653: TppLabel;
    ppLabel654: TppLabel;
    ppLabel655: TppLabel;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLabel656: TppLabel;
    ppLabel657: TppLabel;
    ppGroupFooterBand40: TppGroupFooterBand;
    ppDBCalc220: TppDBCalc;
    ppDBCalc221: TppDBCalc;
    ppLabel658: TppLabel;
    ppLabel659: TppLabel;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ImagAso: TppImage;
    ImaFirma: TppImage;
    ppShape1: TppShape;
    ppShape2: TppShape;
    RepFotoFirma: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImageAso: TppImage;
    ppImageFirma: TppImage;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    Use: TppLabel;
    Proc: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    lblAsotip: TppLabel;
    lbltitfot: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppShape5: TppShape;
    ppSummaryBand1: TppSummaryBand;
    lblUsrImp: TppLabel;
    lblCodMod: TppLabel;
    lblAsoApeNom: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppLabel10: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lstAnoApotClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
  private
    { Private declarations }
    procedure MstAportes(xAsoid,xAno:String);
  public
    { Public declarations }
  end;

var
  fRegApor: TfRegApor;

implementation

uses DateUtils, COBDM1, APO302, COB901;

{$R *.dfm}

procedure TfRegApor.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfRegApor.FormActivate(Sender: TObject);
var I:Integer;
begin
   For I:= YearOf(DM1.FechaSys) Downto 1997 Do
   Begin
      lstAnoApot.Items.Add(IntToStr(I)); lstAnoApot.ItemIndex:=0;
   End;
   MstAportes(DM1.cdsAso.fieldbyname('ASOID').AsString,lstAnoApot.Items.Strings[lstAnoApot.ItemIndex]);


end;

procedure TfRegApor.lstAnoApotClick(Sender: TObject);
begin
 MstAportes(DM1.cdsAso.fieldbyname('ASOID').AsString,lstAnoApot.Items.Strings[lstAnoApot.ItemIndex]);
end;

procedure TfRegApor.MstAportes(xAsoId, xAno: String);
var xSQL:String;
begin

  {
  xSQL := 'SELECT TRANSMES||''/''||TRANSANO PERIODO,FORPAGOABR FRMPAG,TRANSMTO MONTO, '+
  'TRANSFOPE,USUARIO,USEID||'' - ''||USEABR USES,HREG FROM APO301 '+
  'WHERE ASOID='+QuotedStr(xAsoId)+' AND TRANSANO='+QuotedStr(xAno)+' AND TRANSINTID=''APO'' ORDER BY TRANSANO,TRANSMES DESC ';
  }

  // Irc
  xSQL:='SELECT A.TRANSMES||''/''||A.TRANSANO PERIODO, A.FORPAGOABR FRMPAG, '
     +'       A.TRANSMTO MONTO, NVL(A.TRANSMTODEV,0) MONDEV, NVL(A.TRANSMTO,0) MONTOT, '
       +' A.TRANSFOPE,  A.USUARIO,'
  +' A.USEID||'' - ''||B.USEABRE USES, A.HREG FROM APO301 A, APO101 B'
  +' WHERE ASOID='+QuotedStr(xAsoId)+' AND TRANSANO='+QuotedStr(xAno)+' AND TRANSINTID=''APO'''
  +' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID ORDER BY TRANSANO,TRANSMES DESC';

  DM1.cdsCuotas.Close; DM1.cdsCuotas.DataRequest(xSQL); DM1.cdsCuotas.Open;
  TNumericField(DM1.cdsCuotas.fieldbyname('MONTO')).DisplayFormat:='###,###.#0';
  TNumericField(DM1.cdsCuotas.fieldbyname('MONDEV')).DisplayFormat:='###,###.#0';
  TNumericField(DM1.cdsCuotas.fieldbyname('MONTOT')).DisplayFormat:='###,###.#0';
  dtgAportes.ColumnByName('USES').FooterValue :='N° De Registros :   '+IntToStr(DM1.cdsCuotas.RecordCount) ;

end;

procedure TfRegApor.BitPrintClick(Sender: TObject);
var xSQL:String;
begin
  {
   xSQL:='SELECT '+QuotedStr(DM1.cdsAso.fieldbyname('ASOAPENOM').AsString)+' ASOAPENOM,ASOCODMOD,TRANSANO,TRANSMES||''/''||TRANSANO PERIODO,FORPAGOABR FRMPAG,TRANSMTO MONTO,TRANSFOPE,USUARIO,USEID||''- ''||USEABR USES, '+
   'HREG FROM APO301 WHERE ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' AND  TRANSINTID=''APO'' ORDER BY TRANSFOPE DESC ';
  }

  // Modificaco por IRC
  xSQL:=' SELECT '+QuotedStr(DM1.cdsAso.fieldbyname('ASOAPENOM').AsString)+' ASOAPENOM,ASOCODMOD,'
  +'             TRANSANO,TRANSMES||''/''||TRANSANO PERIODO,'
  +'             FORPAGOABR FRMPAG,'
  +'       TRANSMTO MONTO, NVL(TRANSMTODEV,0) MONDEV, NVL(TRANSMTO,0) MONTOT, '
  +'             TRANSFOPE,A.USUARIO, B.USEID||''- ''||B.USEABRE USES, A.HREG FROM APO301 A, APO101 B'
  +' WHERE ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' AND  TRANSINTID=''APO'' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+)'
  +' ORDER BY TRANSFOPE DESC';
  
  DM1.cdsReclamoDCob.Close;
  DM1.cdsReclamoDCob.DataRequest(xSQL);
  DM1.cdsReclamoDCob.Open;

  If DM1.cdsReclamoDCob.RecordCount > 0 Then
  Begin
    ImagAso.Picture:=fPagoCuotas.ImagAso.Picture; ImaFirma.Picture:=fPagoCuotas.ImaFirma.Picture;
    ppImageFirma.Picture := ImaFirma.Picture ;  ppImageAso.Picture := ImagAso.Picture ;
    lblUse.Caption:=Trim(fPagoCuotas.EdtDesUse.Text);
    lblProc.Caption:=Trim(fPagoCuotas.EdtCodLug.Text)+'-'+Trim(fPagoCuotas.EdtDesLug.Text);
    lblTipAso.Caption:=Trim(fPagoCuotas.EdtTipAso.Text)+'-'+Trim(fPagoCuotas.EdtDesAso.Text);
    lblAsoTip.Caption:= lblTipAso.Caption ;
    lblTitulo.Caption:='DETALLE DE APORTES REGISTRADOS  AL : '+DateToStr(DM1.FechaSys);
    lbltitfot.Caption:='FOTO Y FIRMA DE ASOCIADO  AL : '+DateToStr(DM1.FechaSys);
    lblUsuario.Caption:='Emitido Por : '+DM1.wUsuario;
    lblUsrImp.Caption:='Emitido Por : '+DM1.wUsuario;
    Use.Caption:=lblUse.Caption;  Proc.Caption:= lblProc.Caption ;
    lblCodMod.Caption:=DM1.cdsAso.fieldbyname('ASOCODMOD').AsString;
    lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOM').AsString;
    RepAportes.Print;
    RepAportes.Cancel;
    RepFotoFirma.Print;
    RepFotoFirma.Cancel;
   End;
   DM1.cdsReclamoDCob.Close;





end;

end.
