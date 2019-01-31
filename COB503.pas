unit COB503;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB503
// Formulario                    : fResBancos
// Fecha de Creación             : 15/04/2013
// Autor                         : Hugo Noriega
// Objetivo                      : Resumen de Pagos por Bancos

// Actualizaciones:
// HPC_201305_COB                : 15/04/2012 - Nuevo reporte de Cuotas Pagas en Banco
// SPP_201307_COB                : Se realiza el pase a producción a partir del HPC_201305_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, ppEndUsr, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppCache, ppParameter, Grids, DBGrids;

type
  TfResBancos = class(TForm)
    BitPrint: TBitBtn;
    BitBtn1: TBitBtn;
    BitSalir: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    ppd1: TppDesigner;
    ppParameterList1: TppParameterList;
    Panel1: TPanel;
    rdbFechaRegistro: TRadioButton;
    rdbFechaOperacion: TRadioButton;
    rgTipo: TRadioGroup;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel106: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppDBText12: TppDBText;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText13: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine1: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel9: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine8: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBText10: TppDBText;
    ppLabel1: TppLabel;
    ppLine7: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBText11: TppDBText;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    DBGrid: TDBGrid;
    procedure BitPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ConsultaData;
  public
    { Public declarations }
  end;

var
  fResBancos: TfResBancos;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfResBancos.BitPrintClick(Sender: TObject);
begin

   ConsultaData;

   If DM1.cdsCambios.RecordCount > 0 Then
   Begin
      ppdb1.DataSource:=DM1.dsCambios;
      ppr1.Print;
      //ppd1.ShowModal;
      ppr1.Cancel;
   End
   Else
      MessageDlg(' No Existe Información Para Este Rango ó El Criterio Seleccionado ', mtError,[mbOk],0);
end;


procedure TfResBancos.ConsultaData;
var
    xSQL, sDesTipo, sTitulo2 : String;
begin
  Screen.Cursor := crHourglass;
  DM1.cdsCambios.IndexFieldNames :='';

  if rgTipo.ItemIndex=0 then sDesTipo:=' AND B.ASOTIPID IN (''DO'',''CE'',''CO'') ';
  if rgTipo.ItemIndex=1 then sDesTipo:=' AND B.ASOTIPID IN (''DO'') ';
  if rgTipo.ItemIndex=2 then sDesTipo:=' AND B.ASOTIPID IN (''CE'') ';
  if rgTipo.ItemIndex=3 then sDesTipo:=' AND B.ASOTIPID IN (''CO'') ';

  if rgTipo.ItemIndex=0 then sTitulo2:='TODOS';
  if rgTipo.ItemIndex=1 then sTitulo2:='SOLO ACTIVOS';
  if rgTipo.ItemIndex=2 then sTitulo2:='SOLO CESANTES';
  if rgTipo.ItemIndex=3 then sTitulo2:='SOLO CONTRATADOS';

  If rdbFechaRegistro.Checked Then
  Begin
    xSQL:='SELECT A.DPTOID, B.DPTODES, A.UPROID, C.UPRONOM, A.USEID, D.USENOM, SUM(NVL(A.CREMTOCOB, 0)) CREMTOCOB, COUNT(*) REGISTROS, '
         +  '''Del '+DateToStr(DtpFecIni.Date)+' al '+DateToStr(DtpFecFin.Date)+''' RANGO, '
         +  '''PAGOS EN BANCO POR FECHA DE REGISTRO'' TITULO, '
         +  '''ASOCIADOS : '+sTitulo2+''' TITULO2 '
         +' FROM '
         +  ' ( '
         +  'SELECT A.FREG, A.CREDOCPAG, A.ASOID, A.DPTOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOTIPID, SUM(NVL(CREMTOCOB, 0)) CREMTOCOB '
         +  '  FROM CRE310 A, APO201 B '
         +  ' WHERE FORPAGID = ''03'' '
         +  '   AND A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '
         +  '   AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '
         +  '   AND A.CREESTID NOT IN (''04'', ''13'') '
         +  '   AND A.ASOID=B.ASOID(+) '+sDesTipo
         +  ' GROUP BY A.FREG, CREDOCPAG, A.ASOID, A.DPTOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOTIPID '
         +  '  ) A, APO158 B, APO102 C, APO101 D '
         +  ' WHERE A.DPTOID=B.DPTOID(+) '
         +  '   AND A.DPTOID=C.DPTOID(+) AND A.UPROID=C.UPROID(+) '
         +  '   AND A.UPROID=D.UPROID AND A.UPAGOID=D.UPAGOID AND A.USEID=D.USEID(+) '
         +  ' GROUP BY A.DPTOID, B.DPTODES, A.UPROID, C.UPRONOM, A.USEID, D.USENOM '
         +  ' ORDER BY A.DPTOID, UPROID, USEID';
   End;

   If rdbFechaOperacion.Checked Then
   Begin
    xSQL:='SELECT A.DPTOID, B.DPTODES, A.UPROID, C.UPRONOM, A.USEID, D.USENOM, SUM(NVL(A.CREMTOCOB, 0)) CREMTOCOB, COUNT(*) REGISTROS, '
         +  '''Del '+DateToStr(DtpFecIni.Date)+' al '+DateToStr(DtpFecFin.Date)+''' RANGO, '
         +  '''PAGOS EN BANCO POR FECHA DE OPERACION'' TITULO, '
         +  '''ASOCIADOS : '+sTitulo2+''' TITULO2 '
         +' FROM '
         +  ' ( '
         +  'SELECT A.FOPERAC, A.CREDOCPAG, A.ASOID, A.DPTOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOTIPID, SUM(NVL(CREMTOCOB, 0)) CREMTOCOB '
         +  '  FROM CRE310 A, APO201 B '
         +  ' WHERE FORPAGID = ''03'' '
         +  '   AND FOPERAC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '
         +  '   AND  To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '
         +  '   AND A.CREESTID NOT IN (''04'', ''13'') '
         +  '   AND A.ASOID=B.ASOID(+) '+sDesTipo
         +  ' GROUP BY A.FOPERAC, CREDOCPAG, A.ASOID, A.DPTOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOTIPID '
         +  '  ) A, APO158 B, APO102 C, APO101 D '
         +  ' WHERE A.DPTOID=B.DPTOID(+) '
         +  '   AND A.DPTOID=C.DPTOID(+) AND A.UPROID=C.UPROID(+) '
         +  '   AND A.UPROID=D.UPROID(+) AND A.UPAGOID=D.UPAGOID(+) AND A.USEID=D.USEID(+) '
         +  ' GROUP BY A.DPTOID, B.DPTODES, A.UPROID, C.UPRONOM, A.USEID, D.USENOM '
         +  ' ORDER BY A.DPTOID, UPROID, USEID';
   End;

   DM1.cdsCambios.IndexFieldNames :='DPTOID;UPROID;USEID';

   ppdb1.DataSource:=NIL;
   DM1.cdsCambios.Close;
   DM1.cdsCambios.DataRequest(xSQL);
   DM1.cdsCambios.Open;
   Screen.Cursor := crDefault;
end;


procedure TfResBancos.FormActivate(Sender: TObject);
begin
  If DM1.cdsCambios.Active = True Then DM1.cdsCambios.Close;
  DtpFecIni.Date := DM1.FechaSys;
  DtpFecFin.Date := DM1.FechaSys;
end;

procedure TfResBancos.BitBtn1Click(Sender: TObject);
begin

  ConsultaData;

  If DM1.cdsCambios.RecordCount = 0 Then
  Begin
     MessageDlg(' No Existe Información Para Este Rango ó El Criterio Seleccionado ', mtError,[mbOk],0);
     Exit;
  End;

  DBGrid.DataSource := DM1.dsCambios;
  DM1.HojaExcel('REPORTE', DM1.dsCambios, DBGrid);
end;

procedure TfResBancos.BitSalirClick(Sender: TObject);
begin
  Close;
end;

end.
