unit COB610;
// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB610
// Formulario           : fContIngresos
// Fecha de Creación    : 06/02/2015
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Control de Ingresos Mensuales
//
// Actualizaciones      :
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, db;

type
  TfContIngresos = class(TForm)
    BitSalir: TBitBtn;
    btnAExcel: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    BitMostrar: TBitBtn;
    gbAgrupado: TGroupBox;
    chkClasificacion: TCheckBox;
    chkDepartamento: TCheckBox;
    chkUgel: TCheckBox;
    gbFrmPag: TGroupBox;
    chkPla: TCheckBox;
    chkEfe: TCheckBox;
    chkBan: TCheckBox;
    chkOtr: TCheckBox;
    chkFdg: TCheckBox;
    chkAmp: TCheckBox;
    chkFsc: TCheckBox;
    chkRef: TCheckBox;
    chkOnp: TCheckBox;
    chkBen: TCheckBox;
    chkAbn: TCheckBox;
    dtgCtrlPagos: TwwDBGrid;
    lblUniverso: TLabel;
    lblPeriodo: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure chkClasificacionClick(Sender: TObject);
    procedure chkDepartamentoClick(Sender: TObject);
    procedure chkUgelClick(Sender: TObject);
    procedure DtpFecIniChange(Sender: TObject);
    procedure DtpFecFinChange(Sender: TObject);
    procedure chkPlaClick(Sender: TObject);
    procedure chkEfeClick(Sender: TObject);
    procedure chkBanClick(Sender: TObject);
    procedure chkAbnClick(Sender: TObject);
    procedure chkBenClick(Sender: TObject);
    procedure chkOnpClick(Sender: TObject);
    procedure chkRefClick(Sender: TObject);
    procedure chkFscClick(Sender: TObject);
    procedure chkAmpClick(Sender: TObject);
    procedure chkFdgClick(Sender: TObject);
    procedure chkOtrClick(Sender: TObject);
  private
    { Private declarations }
    procedure FormatColumns;
    procedure LimpiaGrid;
  public
    { Public declarations }
  end;

var
  fContIngresos: TfContIngresos;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfContIngresos.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfContIngresos.FormActivate(Sender: TObject);
var xSQL:String;
begin
  DtpFecIni.Date:=DM1.Fechasys; DtpFecFin.Date:=DM1.Fechasys;
  DM1.cdsQry26.Close;
  xSQL:='SELECT MAX(PERIODO) PERIODO FROM GES000';
  DM1.cdsQry26.DataRequest(xSQL);
  DM1.cdsQry26.Open;
  lblUniverso.Caption:='Deudores Priorizados a : '+DM1.DesMes(StrToInt(Copy(DM1.cdsQry26.FieldByName('PERIODO').asString,5,2)),'N')+'-'+Copy(DM1.cdsQry26.FieldByName('PERIODO').asString,1,4);
  lblPeriodo.Caption:=DM1.cdsQry26.FieldByName('PERIODO').asString;
  DM1.cdsQry26.Close;
  BitMostrar.OnClick(BitMostrar);
end;

procedure TfContIngresos.BitMostrarClick(Sender: TObject);
var xSQL,xClasif,xDpto,xUgel:String;
    xPla,xEfe,xBan,xBen,xRef,xAbn,xFsc,xAmp,xFdg,xOnp,xOtr:String;
    xSaldosFt,xSaldosFv,xSalTot,xSalVen,xDeudores:Currency;
    xAmoPen,xIntPen,xGasPen,xDesPen:Currency;
    xMonPag,xAmoPag,xIntPag,xGasPag,xDesPag,xExcPag:Currency;
    xNumPla,xMonPla,xNumEfe,xMonEfe,xNumBan,xMonBan,xNumBen,xMonBen,xNumRef,xMonRef:Currency;
    xNumAbn,xMonAbn,xNumFsc,xMonFsc,xNumAmp,xMonAmp,xNumFdg,xMonFdg,xNumOnp,xMonOnp,xNumOtr,xMonOtr:Currency;
    xPlaWhere,xEfeWhere,xBanWhere,xBenWhere,xAbnWhere,xOnpWhere,xRefWhere,xFscWhere,xAmpWhere,xFdgWhere,xOtrWhere:String;
begin

If lblPeriodo.Caption>=(Copy(DateToStr(DtpFecIni.Date),7,4)+Copy(DateToStr(DtpFecIni.Date),4,2)) Then
   Begin
       MessageDlg('FECHA DE INICIO DEBE SER MAYOR AL PERIODO DE PRIORIZACIÓN !!!', mtError, [mbOk], 0);
       Exit;
   End;

If lblPeriodo.Caption>=(Copy(DateToStr(DtpFecFin.Date),7,4)+Copy(DateToStr(DtpFecFin.Date),4,2)) Then
   Begin
       MessageDlg('FECHA DE FIN DEBE SER MAYOR AL PERIODO DE PRIORIZACIÓN !!!', mtError, [mbOk], 0);
       Exit;
   End;


If (Not chkClasificacion.Checked) And (Not chkDepartamento.Checked) And (Not chkUgel.Checked) Then
   Begin
       MessageDlg('DEBE SELECCIONAR AL MENOS UN CRITERIO DE AGRUPACIÓN !!!', mtError, [mbOk], 0);
       Exit;
   End;

If (Not chkPla.Checked) And (Not chkEfe.Checked) And (Not chkBan.Checked) And
   (Not chkBen.Checked) And (Not chkRef.Checked) And (Not chkAbn.Checked) And
   (Not chkFsc.Checked) And (Not chkAmp.Checked) And (Not chkFdg.Checked) And
   (Not chkOnp.Checked) And (Not chkOtr.Checked) Then
   Begin
       MessageDlg('DEBE SELECCIONAR AL MENOS UNA FORMA DE PAGO !!!', mtError, [mbOk], 0);
       Exit;
   End;

Screen.Cursor := crHourGlass;
If chkClasificacion.Checked Then xClasif:='CFCCOD,CFCDES,' Else xClasif:='';
If chkDepartamento.Checked Then xDpto:='DPTOID,DPTODES,' Else xDpto:='';
If chkUgel.Checked Then xUgel:='USEID,USENOM,' Else xUgel:='';

If chkPla.Checked Then
   Begin
     xPla:='SUM(NVL(MONPLA,0)) MONPLA,SUM(NVL(NUMPLA,0)) NUMPLA,'; xPlaWhere:=' ''PLA'', ';
   End
Else
   Begin
     xPla:=''; xPlaWhere:='';
   End;

If chkEfe.Checked Then
   Begin
     xEfe:='SUM(NVL(MONEFE,0)) MONEFE,SUM(NVL(NUMEFE,0)) NUMEFE,'; xEfeWhere:=' ''EFE'', ';
   End
Else
   Begin
     xEfe:=''; xEfeWhere:='';
   End;
If chkBan.Checked Then
   Begin
     xBan:='SUM(NVL(MONBAN,0)) MONBAN,SUM(NVL(NUMBAN,0)) NUMBAN,'; xBanWhere:=' ''BAN'', ';
   End
Else
   Begin
     xBan:=''; xBanWhere:='';
   End;
If chkBen.Checked Then
   Begin
     xBen:='SUM(NVL(MONBEN,0)) MONBEN,SUM(NVL(NUMBEN,0)) NUMBEN,'; xBenWhere:=' ''BEN'', ';
   End
Else
   Begin
     xBen:=''; xBenWhere:='';
   End;
If chkAbn.Checked Then
   Begin
      xAbn:='SUM(NVL(MONABN,0)) MONABN,SUM(NVL(NUMABN,0)) NUMABN,'; xAbnWhere:=' ''ABN'', ';
   End
Else
   Begin
      xAbn:=''; xAbnWhere:='';
   End;
If chkOnp.Checked Then
   Begin
       xOnp:='SUM(NVL(MONONP,0)) MONONP,SUM(NVL(NUMONP,0)) NUMONP,'; xOnpWhere:=' ''ONP'', ';
   End
Else
   Begin
       xOnp:=''; xOnpWhere:='';
   End;
If chkRef.Checked Then
   Begin
       xRef:='SUM(NVL(MONREF,0)) MONREF,SUM(NVL(NUMREF,0)) NUMREF,'; xRefWhere:=' ''REF'', ';
   End
Else
   Begin
       xRef:=''; xRefWhere:='';
   End;
If chkFsc.Checked Then
   Begin
       xFsc:='SUM(NVL(MONFSC,0)) MONFSC,SUM(NVL(NUMFSC,0)) NUMFSC,'; xFscWhere:=' ''FSC'', ';
   End
Else
   Begin
       xFsc:=''; xFscWhere:='';
   End;
If chkAmp.Checked Then
   Begin
       xAmp:='SUM(NVL(MONAMP,0)) MONAMP,SUM(NVL(NUMAMP,0)) NUMAMP,'; xAmpWhere:=' ''AMP'', ';
   End
Else
   Begin
       xAmp:=''; xAmpWhere:='';
   End;

If chkFdg.Checked Then
   Begin
       xFdg:='SUM(NVL(MONFDG,0)) MONFDG,SUM(NVL(NUMFDG,0)) NUMFDG,'; xFdgWhere:=' ''FDG'', ';
   End
Else
   Begin
       xFdg:=''; xFdgWhere:='';
   End;

If chkOtr.Checked Then
   Begin
       xOtr:='SUM(NVL(MONOTR,0)) MONOTR,SUM(NVL(NUMOTR,0)) NUMOTR,'; xOtrWhere:=' ''OTR'', ';
   End
Else
   Begin
       xOtr:=''; xOtrWhere:='';
   End;

xSQL:='SELECT '+
       xClasif+xDpto+xUgel+' '+
      'SUM(NVL(SALDOS_FT,0)) SALDOS_FT,SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALTOT,0)) SALTOT,SUM(NVL(SALVEN,0)) SALVEN,COUNT(*) DEUDORES, '+
      'SUM(NVL(AMOPEN,0)) AMOPEN,SUM(NVL(INTPEN,0)) INTPEN,SUM(NVL(GASPEN,0)) GASPEN,SUM(NVL(DESPEN,0)) DESPEN, '+
      'SUM(NVL(MONPAG,0)) MONPAG,SUM(NVL(AMOPAG,0)) AMOPAG,SUM(NVL(INTPAG,0)) INTPAG,SUM(NVL(GASPAG,0)) GASPAG,SUM(NVL(DESPAG,0)) DESPAG,SUM(NVL(EXCPAG,0)) EXCPAG, '+Copy(Trim(xPla+xEfe+xBan+xBen+xRef+xAbn+xFsc+xAmp+xFdg+xOnp+xOtr),1,Length(Trim(xPla+xEfe+xBan+xBen+xRef+xAbn+xFsc+xAmp+xFdg+xOnp+xOtr))-1)+' '+
      'FROM '+
      '(SELECT '+
      'A.ASOID,CFCCOD,CFCDES,A.DPTOID,C.DPTODES,A.USEID,D.USENOM,SALDOS_FT,SALDOS_FV,SALTOT,SALVEN, '+
      'NVL(AMOPEN,0) AMOPEN,NVL(INTPEN,0) INTPEN,NVL(GASPEN,0) GASPEN,NVL(DESPEN,0) DESPEN, '+
      'NVL(MONPAG,0) MONPAG,NVL(AMOPAG,0) AMOPAG,NVL(INTPAG,0) INTPAG,NVL(GASPAG,0) GASPAG,NVL(DESPAG,0) DESPAG,NVL(EXCPAG,0) EXCPAG, '+
      'NVL(MONPLA,0) MONPLA,NVL(NUMPLA,0) NUMPLA,NVL(MONEFE,0) MONEFE,NVL(NUMEFE,0) NUMEFE,NVL(MONBAN,0) MONBAN,NVL(NUMBAN,0) NUMBAN, '+
      'NVL(MONBEN,0) MONBEN,NVL(NUMBEN,0) NUMBEN,NVL(MONREF,0) MONREF,NVL(NUMREF,0) NUMREF,NVL(MONABN,0) MONABN,NVL(NUMABN,0) NUMABN, '+
      'NVL(MONFSC,0) MONFSC,NVL(NUMFSC,0) NUMFSC,NVL(MONAMP,0) MONAMP,NVL(NUMAMP,0) NUMAMP,NVL(MONFDG,0) MONFDG,NVL(NUMFDG,0) NUMFDG, '+
      'NVL(MONONP,0) MONONP,NVL(NUMONP,0) NUMONP,NVL(MONOTR,0) MONOTR,NVL(NUMOTR,0) NUMOTR FROM '+
      '(SELECT ASOID,DPTOID,USEID,UPAGOID,UPROID, '+
      'CASE WHEN CFC_F=''0'' THEN ''NOR'' '+
      '     WHEN CFC_F=''A'' THEN ''CPP'' '+
      '     WHEN CFC_F=''B'' THEN ''DEF'' '+
      '     WHEN CFC_F=''C'' THEN ''DUD'' '+
      '     WHEN CFC_F=''D'' THEN ''PER'' '+
      'END CFCDES, '+
      'CASE WHEN CFC_F=''0'' THEN ''01'' '+
      '     WHEN CFC_F=''A'' THEN ''02'' '+
      '     WHEN CFC_F=''B'' THEN ''03'' '+
      '     WHEN CFC_F=''C'' THEN ''04'' '+
      '     WHEN CFC_F=''D'' THEN ''05'' '+
      'END CFCCOD, '+
      'SALDOS_FT, '+
      'SALDOS_FV,SALTOT,NVL(SALVEN,0) SALVEN, '+
      'NVL(AMOPEN,0) AMOPEN,NVL(INTPEN,0) INTPEN,NVL(GASPEN,0) GASPEN,NVL(DESPEN,0) DESPEN '+
      'FROM GES000 '+
      'WHERE PERIODO=(SELECT MAX(PERIODO) FROM GES000)) A, '+
      '(SELECT ASOID, '+
      'SUM(NVL(MONPAG,0)) MONPAG, '+
      'SUM(NVL(AMOPAG,0)) AMOPAG, '+
      'SUM(NVL(INTPAG,0)) INTPAG, '+
      'SUM(NVL(GASPAG,0)) GASPAG, '+
      'SUM(NVL(DESPAG,0)) DESPAG, '+
      'SUM(NVL(EXCPAG,0)) EXCPAG, '+
      'SUM(NVL(MONPLA,0)) MONPLA, '+
      'SUM(NVL(NUMPLA,0)) NUMPLA, '+
      'SUM(NVL(MONEFE,0)) MONEFE, '+
      'SUM(NVL(NUMEFE,0)) NUMEFE, '+
      'SUM(NVL(MONBAN,0)) MONBAN, '+
      'SUM(NVL(NUMBAN,0)) NUMBAN, '+
      'SUM(NVL(MONBEN,0)) MONBEN, '+
      'SUM(NVL(NUMBEN,0)) NUMBEN, '+
      'SUM(NVL(MONREF,0)) MONREF, '+
      'SUM(NVL(NUMREF,0)) NUMREF, '+
      'SUM(NVL(MONABN,0)) MONABN, '+
      'SUM(NVL(NUMABN,0)) NUMABN, '+
      'SUM(NVL(MONFSC,0)) MONFSC, '+
      'SUM(NVL(NUMFSC,0)) NUMFSC, '+
      'SUM(NVL(MONAMP,0)) MONAMP, '+
      'SUM(NVL(NUMAMP,0)) NUMAMP, '+
      'SUM(NVL(MONFDG,0)) MONFDG, '+
      'SUM(NVL(NUMFDG,0)) NUMFDG, '+
      'SUM(NVL(MONONP,0)) MONONP, '+
      'SUM(NVL(NUMONP,0)) NUMONP, '+
      'SUM(NVL(MONOTR,0)) MONOTR, '+
      'SUM(NVL(NUMOTR,0)) NUMOTR '+
      'FROM '+
      '(SELECT ASOID, '+
      'SUM(NVL(MONPAG,0)) MONPAG, '+
      'SUM(NVL(AMOPAG,0)) AMOPAG, '+
      'SUM(NVL(INTPAG,0)) INTPAG, '+
      'SUM(NVL(GASPAG,0)) GASPAG, '+
      'SUM(NVL(DESPAG,0)) DESPAG, '+
      'SUM(NVL(EXCPAG,0)) EXCPAG, '+
      'CASE WHEN FORPAG=''PLA'' THEN SUM(NVL(MONPAG,0)) END MONPLA, '+
      'CASE WHEN FORPAG=''PLA'' THEN COUNT(*) END NUMPLA, '+
      'CASE WHEN FORPAG=''EFE'' THEN SUM(NVL(MONPAG,0)) END MONEFE, '+
      'CASE WHEN FORPAG=''EFE'' THEN COUNT(*) END NUMEFE, '+
      'CASE WHEN FORPAG=''BAN'' THEN SUM(NVL(MONPAG,0)) END MONBAN, '+
      'CASE WHEN FORPAG=''BAN'' THEN COUNT(*) END NUMBAN, '+
      'CASE WHEN FORPAG=''BEN'' THEN SUM(NVL(MONPAG,0)) END MONBEN, '+
      'CASE WHEN FORPAG=''BEN'' THEN COUNT(*) END NUMBEN, '+
      'CASE WHEN FORPAG=''REF'' THEN SUM(NVL(MONPAG,0)) END MONREF, '+
      'CASE WHEN FORPAG=''REF'' THEN COUNT(*) END NUMREF, '+
      'CASE WHEN FORPAG=''ABN'' THEN SUM(NVL(MONPAG,0)) END MONABN, '+
      'CASE WHEN FORPAG=''ABN'' THEN COUNT(*) END NUMABN, '+
      'CASE WHEN FORPAG=''FSC'' THEN SUM(NVL(MONPAG,0)) END MONFSC, '+
      'CASE WHEN FORPAG=''FSC'' THEN COUNT(*) END NUMFSC, '+
      'CASE WHEN FORPAG=''AMP'' THEN SUM(NVL(MONPAG,0)) END MONAMP, '+
      'CASE WHEN FORPAG=''AMP'' THEN COUNT(*) END NUMAMP, '+
      'CASE WHEN FORPAG=''FDG'' THEN SUM(NVL(MONPAG,0)) END MONFDG, '+
      'CASE WHEN FORPAG=''FDG'' THEN COUNT(*) END NUMFDG, '+
      'CASE WHEN FORPAG=''ONP'' THEN SUM(NVL(MONPAG,0)) END MONONP, '+
      'CASE WHEN FORPAG=''ONP'' THEN COUNT(*) END NUMONP, '+
      'CASE WHEN FORPAG=''OTR'' THEN SUM(NVL(MONPAG,0)) END MONOTR, '+
      'CASE WHEN FORPAG=''OTR'' THEN COUNT(*) END NUMOTR '+
      'FROM '+
      '(SELECT ASOID,FORPAGID, '+
      'CASE WHEN FORPAGID IN (''01'',''09'',''22'') THEN ''PLA'' '+
      '     WHEN FORPAGID=''02'' THEN ''EFE'' '+
      '     WHEN FORPAGID=''03'' THEN ''BAN'' '+
      '     WHEN FORPAGID=''05'' THEN ''BEN'' '+
      '     WHEN FORPAGID=''12'' THEN ''REF'' '+
      '     WHEN FORPAGID=''15'' THEN ''ABN'' '+
      '     WHEN FORPAGID IN (''23'',''24'',''44'') THEN ''FSC'' '+
      '     WHEN FORPAGID=''27'' THEN ''AMP'' '+
      '     WHEN FORPAGID IN (''40'',''41'') THEN ''FDG'' '+
      '     WHEN FORPAGID=''43'' THEN ''ONP'' '+
      '     WHEN FORPAGID=''99'' THEN ''OTR'' END FORPAG, '+
      'SUM(NVL(CREMTOCOB,0)) MONPAG, '+
      'SUM(NVL(CREAMORT,0)) AMOPAG, '+
      'SUM(NVL(CREINTERES,0)) INTPAG, '+
      'SUM(NVL(CREFLAT,0)) GASPAG, '+
      'SUM(NVL(CREMTOEXC,0)) EXCPAG, '+
      'SUM(NVL(MONCOBDESGRAV,0)) DESPAG,MAX(HREG) FECMAX '+
      'FROM CRE310 WHERE '+
      'FREG>='+QuotedStr(DateToStr(DtpFecIni.Date))+' AND FREG<='+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
      'AND CREESTID NOT IN (''04'',''13'',''99'')  '+
      'GROUP BY ASOID,FORPAGID) WHERE FORPAG IN ('+Copy(Trim(xPlaWhere+xEfeWhere+xBanWhere+xBenWhere+xAbnWhere+xOnpWhere+xRefWhere+xFscWhere+xAmpWhere+xFdgWhere+xOtrWhere),1,Length(Trim(xPlaWhere+xEfeWhere+xBanWhere+xBenWhere+xAbnWhere+xOnpWhere+xRefWhere+xFscWhere+xAmpWhere+xFdgWhere+xOtrWhere))-1)+') '+
      'GROUP BY ASOID,FORPAG) '+
      'GROUP BY ASOID) B, APO158 C,APO101 D '+
      'WHERE A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) '+
      'AND A.UPROID=D.UPROID(+) '+
      'AND A.UPAGOID=D.UPAGOID(+) '+
      'AND A.USEID=D.USEID(+)) '+
      'GROUP BY '+ Copy(Trim(xClasif+xDpto+xUgel),1,Length(Trim(xClasif+xDpto+xUgel))-1)+' '+
      'ORDER BY  '+ Copy(Trim(xClasif+xDpto+xUgel),1,Length(Trim(xClasif+xDpto+xUgel))-1);
DM1.cdsAbonoCuotas.Close;
DM1.cdsAbonoCuotas.DataRequest(xSQL);
DM1.cdsAbonoCuotas.Open;
FormatColumns;
xSaldosFt:=0;xSaldosFv:=0;xSalTot:=0;xSalVen:=0;xDeudores:=0;
xAmoPen:=0;xIntPen:=0;xGasPen:=0;xDesPen:=0;xMonPag:=0;xAmoPag:=0;
xIntPag:=0;xGasPag:=0;xDesPag:=0; xExcPag:=0;
DM1.cdsAbonoCuotas.First;
While Not DM1.cdsAbonoCuotas.Eof Do
Begin
    xSaldosFt:= xSaldosFt + DM1.cdsAbonoCuotas.FieldByName('SALDOS_FT').AsCurrency;
    xSaldosFv:= xSaldosFv + DM1.cdsAbonoCuotas.FieldByName('SALDOS_FT').AsCurrency;
    xSalTot:= xSalTot + DM1.cdsAbonoCuotas.FieldByName('SALTOT').AsCurrency;
    xSalVen:= xSalVen + DM1.cdsAbonoCuotas.FieldByName('SALVEN').AsCurrency;
    xDeudores:= xDeudores + DM1.cdsAbonoCuotas.FieldByName('DEUDORES').AsCurrency;
    xAmoPen:= xAmoPen + DM1.cdsAbonoCuotas.FieldByName('AMOPEN').AsCurrency;
    xIntPen:= xIntPen + DM1.cdsAbonoCuotas.FieldByName('INTPEN').AsCurrency;
    xGasPen:= xGasPen + DM1.cdsAbonoCuotas.FieldByName('GASPEN').AsCurrency;
    xDesPen:= xDesPen + DM1.cdsAbonoCuotas.FieldByName('DESPEN').AsCurrency;
    xMonPag:= xMonPag + DM1.cdsAbonoCuotas.FieldByName('MONPAG').AsCurrency;
    xAmoPag:= xAmoPag + DM1.cdsAbonoCuotas.FieldByName('AMOPAG').AsCurrency;
    xIntPag:= xIntPag + DM1.cdsAbonoCuotas.FieldByName('INTPAG').AsCurrency;
    xGasPag:= xGasPag + DM1.cdsAbonoCuotas.FieldByName('GASPAG').AsCurrency;
    xDesPag:= xDesPag + DM1.cdsAbonoCuotas.FieldByName('DESPAG').AsCurrency;
    xExcPag:= xExcPag + DM1.cdsAbonoCuotas.FieldByName('EXCPAG').AsCurrency;
    If chkPla.Checked Then
    Begin
    xNumPla:= xNumPla + DM1.cdsAbonoCuotas.FieldByName('NUMPLA').AsCurrency;
    xMonPla:= xMonPla + DM1.cdsAbonoCuotas.FieldByName('MONPLA').AsCurrency;
    End;
    If chkEfe.Checked Then
    Begin
    xNumEfe:= xNumEfe + DM1.cdsAbonoCuotas.FieldByName('NUMEFE').AsCurrency;
    xMonEfe:= xMonEfe + DM1.cdsAbonoCuotas.FieldByName('MONEFE').AsCurrency;
    End;
    If chkBan.Checked Then
    Begin
    xNumBan:= xNumBan + DM1.cdsAbonoCuotas.FieldByName('NUMBAN').AsCurrency;
    xMonBan:= xMonBan + DM1.cdsAbonoCuotas.FieldByName('MONBAN').AsCurrency;
    End;
    If chkBen.Checked Then
    Begin
    xNumBen:= xNumBen + DM1.cdsAbonoCuotas.FieldByName('NUMBEN').AsCurrency;
    xMonBen:= xMonBen + DM1.cdsAbonoCuotas.FieldByName('MONBEN').AsCurrency;
    End;
    If chkRef.Checked Then
    Begin
    xNumRef:= xNumRef + DM1.cdsAbonoCuotas.FieldByName('NUMREF').AsCurrency;
    xMonRef:= xMonRef + DM1.cdsAbonoCuotas.FieldByName('MONREF').AsCurrency;
    End;
    If chkAbn.Checked Then
    Begin
    xNumAbn:= xNumAbn + DM1.cdsAbonoCuotas.FieldByName('NUMABN').AsCurrency;
    xMonAbn:= xMonAbn + DM1.cdsAbonoCuotas.FieldByName('MONABN').AsCurrency;
    End;
    If chkFsc.Checked Then
    Begin
    xNumFsc:= xNumFsc + DM1.cdsAbonoCuotas.FieldByName('NUMFSC').AsCurrency;
    xMonFsc:= xMonFsc + DM1.cdsAbonoCuotas.FieldByName('MONFSC').AsCurrency;
    End;
    If chkAmp.Checked Then
    Begin
    xNumAmp:= xNumAmp + DM1.cdsAbonoCuotas.FieldByName('NUMAMP').AsCurrency;
    xMonAmp:= xMonAmp + DM1.cdsAbonoCuotas.FieldByName('MONAMP').AsCurrency;
    End;
    If chkFdg.Checked Then
    Begin
    xNumFdg:= xNumFdg + DM1.cdsAbonoCuotas.FieldByName('NUMFDG').AsCurrency;
    xMonFdg:= xMonFdg + DM1.cdsAbonoCuotas.FieldByName('MONFDG').AsCurrency;
    End;
    If chkOnp.Checked Then
    Begin
    xNumOnp:= xNumOnp + DM1.cdsAbonoCuotas.FieldByName('NUMONP').AsCurrency;
    xMonOnp:= xMonOnp + DM1.cdsAbonoCuotas.FieldByName('MONONP').AsCurrency;
    End;
    If chkOtr.Checked Then
    Begin
    xNumOtr:= xNumOtr + DM1.cdsAbonoCuotas.FieldByName('NUMOTR').AsCurrency;
    xMonOtr:= xMonOtr + DM1.cdsAbonoCuotas.FieldByName('MONOTR').AsCurrency;
    End;
    DM1.cdsAbonoCuotas.Next;
End;
If DM1.cdsAbonoCuotas.RecordCount > 0 Then DM1.cdsAbonoCuotas.First;
TNumericField(DM1.cdsAbonoCuotas.FieldByName('SALDOS_FT')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('SALDOS_FV')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('DEUDORES')).DisplayFormat := '###,###,##0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('AMOPEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('INTPEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('GASPEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('DESPEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONPAG')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('AMOPAG')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('INTPAG')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('GASPAG')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('DESPAG')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('EXCPAG')).DisplayFormat := '###,###,##0.#0';
If chkPla.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONPLA')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMPLA')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONPLA').FooterValue :=  FloatToStrF(xMonPla,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMPLA').FooterValue :=  FloatToStrF(xNumPla,ffNumber,13,0);
End;
If chkEfe.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONEFE')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMEFE')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONEFE').FooterValue :=  FloatToStrF(xMonEfe,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMEFE').FooterValue :=  FloatToStrF(xNumEfe,ffNumber,13,0);
End;
If chkBan.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONBAN')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMBAN')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONBAN').FooterValue :=  FloatToStrF(xMonBan,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMBAN').FooterValue :=  FloatToStrF(xNumBan,ffNumber,13,0);
End;
If chkBen.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONBEN')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMBEN')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONBEN').FooterValue :=  FloatToStrF(xMonBen,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMBEN').FooterValue :=  FloatToStrF(xNumBen,ffNumber,13,0);
End;
If chkRef.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONREF')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMREF')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONREF').FooterValue :=  FloatToStrF(xMonRef,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMREF').FooterValue :=  FloatToStrF(xNumRef,ffNumber,13,0);
End;
If chkAbn.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONABN')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMABN')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONABN').FooterValue :=  FloatToStrF(xMonAbn,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMABN').FooterValue :=  FloatToStrF(xNumAbn,ffNumber,13,0);
End;
If chkFsc.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONFSC')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMFSC')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONFSC').FooterValue :=  FloatToStrF(xMonFsc,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMFSC').FooterValue :=  FloatToStrF(xNumFsc,ffNumber,13,0);
End;
If chkAmp.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONAMP')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMAMP')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONAMP').FooterValue :=  FloatToStrF(xMonAmp,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMAMP').FooterValue :=  FloatToStrF(xNumAmp,ffNumber,13,0);
End;
If chkFdg.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONFDG')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMFDG')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONFDG').FooterValue :=  FloatToStrF(xMonFdg,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMFDG').FooterValue :=  FloatToStrF(xNumFdg,ffNumber,13,0);
End;
If chkOnp.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONONP')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMONP')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONONP').FooterValue :=  FloatToStrF(xMonOnp,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMONP').FooterValue :=  FloatToStrF(xNumOnp,ffNumber,13,0);
End;
If chkOtr.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONOTR')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMOTR')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONOTR').FooterValue :=  FloatToStrF(xMonOtr,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMOTR').FooterValue :=  FloatToStrF(xNumOtr,ffNumber,13,0);
End;

dtgCtrlPagos.ColumnByName('SALDOS_FT').FooterValue := FloatToStrF(xSaldosFt,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('SALDOS_FV').FooterValue := FloatToStrF(xSaldosFv,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('SALTOT').FooterValue :=  FloatToStrF(xSalTot,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('SALVEN').FooterValue :=  FloatToStrF(xSalVen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('DEUDORES').FooterValue :=  FloatToStrF(xDeudores,ffNumber,8,0);
dtgCtrlPagos.ColumnByName('AMOPEN').FooterValue :=  FloatToStrF(xAmoPen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('INTPEN').FooterValue :=  FloatToStrF(xIntPen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('GASPEN').FooterValue :=  FloatToStrF(xGasPen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('DESPEN').FooterValue :=  FloatToStrF(xDesPen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('MONPAG').FooterValue :=  FloatToStrF(xMonPag,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('AMOPAG').FooterValue :=  FloatToStrF(xAmoPag,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('INTPAG').FooterValue :=  FloatToStrF(xIntPag,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('GASPAG').FooterValue :=  FloatToStrF(xGasPag,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('DESPAG').FooterValue :=  FloatToStrF(xDesPag,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('EXCPAG').FooterValue :=  FloatToStrF(xExcPag,ffNumber,13,2);
Screen.Cursor := crDefault;

end;


procedure TfContIngresos.btnAExcelClick(Sender: TObject);
var xArchivo:String;
begin
      If DM1.cdsAbonoCuotas.RecordCount <= 0 Then  Exit;
      xArchivo := 'CTRLPAG' + Copy(DateToStr(DtpFecFin.Date),7,4)+Copy(DateToStr(DtpFecFin.Date),4,2)+Copy(DateToStr(DtpFecFin.Date),1,2);
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dtgCtrlPagos, xArchivo);
end;

procedure TfContIngresos.FormatColumns;
begin
dtgCtrlPagos.Selected.Clear;
dtgCtrlPagos.Selected.Add('CFCDES'#9'5'#9'Clasificación'#9#9);
dtgCtrlPagos.Selected.Add('DPTODES'#9'15'#9'Departamento'#9#9);
dtgCtrlPagos.Selected.Add('USENOM'#9'30'#9'Ugel'#9#9);
dtgCtrlPagos.Selected.Add('SALDOS_FT'#9'15'#9'SalTot~Cartera'#9#9);
dtgCtrlPagos.Selected.Add('SALDOS_FV'#9'15'#9'SalVen~Cartera'#9#9);
dtgCtrlPagos.Selected.Add('SALTOT'#9'15'#9'SalTot~Cuotas'#9#9);
dtgCtrlPagos.Selected.Add('SALVEN'#9'15'#9'SalVen~Cuotas'#9#9);
dtgCtrlPagos.Selected.Add('DEUDORES'#9'8'#9'Número~Deudores'#9#9);
dtgCtrlPagos.Selected.Add('AMOPEN'#9'15'#9'Amort.~Pendiente'#9#9);
dtgCtrlPagos.Selected.Add('INTPEN'#9'15'#9'Inter.~Pendiente'#9#9);
dtgCtrlPagos.Selected.Add('GASPEN'#9'15'#9'Gasto.~Pendiente'#9#9);
dtgCtrlPagos.Selected.Add('DESPEN'#9'15'#9'Desgr.~Pendiente'#9#9);
dtgCtrlPagos.Selected.Add('MONPAG'#9'15'#9'Monto~Pagado'#9#9);
dtgCtrlPagos.Selected.Add('AMOPAG'#9'15'#9'Amort.~Pagada'#9#9);
dtgCtrlPagos.Selected.Add('INTPAG'#9'15'#9'Inter.~Pagado'#9#9);
dtgCtrlPagos.Selected.Add('GASPAG'#9'15'#9'Gasto.~Pagado'#9#9);
dtgCtrlPagos.Selected.Add('DESPAG'#9'15'#9'Desgr.~Pagado'#9#9);
dtgCtrlPagos.Selected.Add('EXCPAG'#9'15'#9'Exceso~Pagado'#9#9);
dtgCtrlPagos.Selected.Add('MONPLA'#9'15'#9'Monto~Planilla'#9#9);
dtgCtrlPagos.Selected.Add('NUMPLA'#9'8'#9'Cant.~Planilla'#9#9);
dtgCtrlPagos.Selected.Add('MONEFE'#9'15'#9'Monto~Efectivo'#9#9);
dtgCtrlPagos.Selected.Add('NUMEFE'#9'8'#9'Cant.~Efectivo'#9#9);
dtgCtrlPagos.Selected.Add('MONBAN'#9'15'#9'Monto~Banco'#9#9);
dtgCtrlPagos.Selected.Add('NUMBAN'#9'8'#9'Cant.~Banco'#9#9);
dtgCtrlPagos.Selected.Add('MONBEN'#9'15'#9'Monto~Beneficio'#9#9);
dtgCtrlPagos.Selected.Add('NUMBEN'#9'8'#9'Cant.~Beneficio'#9#9);
dtgCtrlPagos.Selected.Add('MONONP'#9'15'#9'Monto~ONP'#9#9);
dtgCtrlPagos.Selected.Add('NUMONP'#9'8'#9'Cant.~ONP'#9#9);
dtgCtrlPagos.Selected.Add('MONREF'#9'15'#9'Monto~Refinanciado'#9#9);
dtgCtrlPagos.Selected.Add('NUMREF'#9'8'#9'Cant.~Refinanciado'#9#9);
dtgCtrlPagos.Selected.Add('MONABN'#9'15'#9'Monto~Abono'#9#9);
dtgCtrlPagos.Selected.Add('NUMABN'#9'8'#9'Cant.~Abono'#9#9);
dtgCtrlPagos.Selected.Add('MONFSC'#9'15'#9'Monto~FSC'#9#9);
dtgCtrlPagos.Selected.Add('NUMFSC'#9'8'#9'Cant.~FSC'#9#9);
dtgCtrlPagos.Selected.Add('MONAMP'#9'15'#9'Monto~AMP'#9#9);
dtgCtrlPagos.Selected.Add('NUMAMP'#9'8'#9'Cant.~AMP'#9#9);
dtgCtrlPagos.Selected.Add('MONFDG'#9'15'#9'Monto~FDG'#9#9);
dtgCtrlPagos.Selected.Add('NUMFDG'#9'8'#9'Cant.~FDG'#9#9);
dtgCtrlPagos.Selected.Add('MONOTR'#9'15'#9'Monto~Otro'#9#9);
dtgCtrlPagos.Selected.Add('NUMOTR'#9'8'#9'Cant.~Otro'#9#9);
dtgCtrlPagos.ApplySelected;
end;

procedure TfContIngresos.LimpiaGrid;
var xSQL,xClasif,xDpto,xUgel:String;
    xPla,xEfe,xBan,xBen,xRef,xAbn,xFsc,xAmp,xFdg,xOnp,xOtr:String;
    xSaldosFt,xSaldosFv,xSalTot,xSalVen,xDeudores:Currency;
    xAmoPen,xIntPen,xGasPen,xDesPen:Currency;
    xMonPag,xAmoPag,xIntPag,xGasPag,xDesPag:Currency;
    xNumPla,xMonPla,xNumEfe,xMonEfe,xNumBan,xMonBan,xNumBen,xMonBen,xNumRef,xMonRef:Currency;
    xNumAbn,xMonAbn,xNumFsc,xMonFsc,xNumAmp,xMonAmp,xNumFdg,xMonFdg,xNumOnp,xMonOnp,xNumOtr,xMonOtr:Currency;
begin
Screen.Cursor := crHourGlass;
xSQL:='SELECT NULL CFCCOD,NULL CFCDES,NULL DPTOID,NULL DPTODES,NULL USEID,NULL USENOM, '+
      '0 SALDOS_FT,0 SALDOS_FV,0 SALTOT,0 SALVEN,0 DEUDORES,0 AMOPEN,0 INTPEN,0 GASPEN,0 DESPEN,  '+
      '0 MONPAG,0 AMOPAG,0 INTPAG,0 GASPAG,0 DESPAG,0 MONPLA,0 NUMPLA,0 MONEFE,0 NUMEFE,0 MONBAN, '+
      '0 NUMBAN,0 MONBEN,0 NUMBEN,0 MONREF,0 NUMREF,0 MONABN,0 NUMABN,0 MONFSC,0 NUMFSC,0 MONAMP, '+
      '0 NUMAMP,0 MONFDG,0 NUMFDG,0 MONONP,0 NUMONP,0 MONOTR,0 NUMOTR FROM DUAL WHERE 1=2';
DM1.cdsAbonoCuotas.Close;
DM1.cdsAbonoCuotas.DataRequest(xSQL);
DM1.cdsAbonoCuotas.Open;
FormatColumns;
xSaldosFt:=0;xSaldosFv:=0;xSalTot:=0;xSalVen:=0;xDeudores:=0;
xAmoPen:=0;xIntPen:=0;xGasPen:=0;xDesPen:=0;xMonPag:=0;xAmoPag:=0;
xIntPag:=0;xGasPag:=0;xDesPag:=0;
DM1.cdsAbonoCuotas.First;
While Not DM1.cdsAbonoCuotas.Eof Do
Begin
    xSaldosFt:= xSaldosFt + DM1.cdsAbonoCuotas.FieldByName('SALDOS_FT').AsCurrency;
    xSaldosFv:= xSaldosFv + DM1.cdsAbonoCuotas.FieldByName('SALDOS_FT').AsCurrency;
    xSalTot:= xSalTot + DM1.cdsAbonoCuotas.FieldByName('SALTOT').AsCurrency;
    xSalVen:= xSalVen + DM1.cdsAbonoCuotas.FieldByName('SALVEN').AsCurrency;
    xDeudores:= xDeudores + DM1.cdsAbonoCuotas.FieldByName('DEUDORES').AsCurrency;
    xAmoPen:= xAmoPen + DM1.cdsAbonoCuotas.FieldByName('AMOPEN').AsCurrency;
    xIntPen:= xIntPen + DM1.cdsAbonoCuotas.FieldByName('INTPEN').AsCurrency;
    xGasPen:= xGasPen + DM1.cdsAbonoCuotas.FieldByName('GASPEN').AsCurrency;
    xDesPen:= xDesPen + DM1.cdsAbonoCuotas.FieldByName('DESPEN').AsCurrency;
    xMonPag:= xMonPag + DM1.cdsAbonoCuotas.FieldByName('MONPAG').AsCurrency;
    xAmoPag:= xAmoPag + DM1.cdsAbonoCuotas.FieldByName('AMOPAG').AsCurrency;
    xIntPag:= xIntPag + DM1.cdsAbonoCuotas.FieldByName('INTPAG').AsCurrency;
    xGasPag:= xGasPag + DM1.cdsAbonoCuotas.FieldByName('GASPAG').AsCurrency;
    xDesPag:= xDesPag + DM1.cdsAbonoCuotas.FieldByName('DESPAG').AsCurrency;
    If chkPla.Checked Then
    Begin
    xNumPla:= xNumPla + DM1.cdsAbonoCuotas.FieldByName('NUMPLA').AsCurrency;
    xMonPla:= xMonPla + DM1.cdsAbonoCuotas.FieldByName('MONPLA').AsCurrency;
    End;
    If chkEfe.Checked Then
    Begin
    xNumEfe:= xNumEfe + DM1.cdsAbonoCuotas.FieldByName('NUMEFE').AsCurrency;
    xMonEfe:= xMonEfe + DM1.cdsAbonoCuotas.FieldByName('MONEFE').AsCurrency;
    End;
    If chkBan.Checked Then
    Begin
    xNumBan:= xNumBan + DM1.cdsAbonoCuotas.FieldByName('NUMBAN').AsCurrency;
    xMonBan:= xMonBan + DM1.cdsAbonoCuotas.FieldByName('MONBAN').AsCurrency;
    End;
    If chkBen.Checked Then
    Begin
    xNumBen:= xNumBen + DM1.cdsAbonoCuotas.FieldByName('NUMBEN').AsCurrency;
    xMonBen:= xMonBen + DM1.cdsAbonoCuotas.FieldByName('MONBEN').AsCurrency;
    End;
    If chkRef.Checked Then
    Begin
    xNumRef:= xNumRef + DM1.cdsAbonoCuotas.FieldByName('NUMREF').AsCurrency;
    xMonRef:= xMonRef + DM1.cdsAbonoCuotas.FieldByName('MONREF').AsCurrency;
    End;
    If chkAbn.Checked Then
    Begin
    xNumAbn:= xNumAbn + DM1.cdsAbonoCuotas.FieldByName('NUMABN').AsCurrency;
    xMonAbn:= xMonAbn + DM1.cdsAbonoCuotas.FieldByName('MONABN').AsCurrency;
    End;
    If chkFsc.Checked Then
    Begin
    xNumFsc:= xNumFsc + DM1.cdsAbonoCuotas.FieldByName('NUMFSC').AsCurrency;
    xMonFsc:= xMonFsc + DM1.cdsAbonoCuotas.FieldByName('MONFSC').AsCurrency;
    End;
    If chkAmp.Checked Then
    Begin
    xNumAmp:= xNumAmp + DM1.cdsAbonoCuotas.FieldByName('NUMAMP').AsCurrency;
    xMonAmp:= xMonAmp + DM1.cdsAbonoCuotas.FieldByName('MONAMP').AsCurrency;
    End;
    If chkFdg.Checked Then
    Begin
    xNumFdg:= xNumFdg + DM1.cdsAbonoCuotas.FieldByName('NUMFDG').AsCurrency;
    xMonFdg:= xMonFdg + DM1.cdsAbonoCuotas.FieldByName('MONFDG').AsCurrency;
    End;
    If chkOnp.Checked Then
    Begin
    xNumOnp:= xNumOnp + DM1.cdsAbonoCuotas.FieldByName('NUMONP').AsCurrency;
    xMonOnp:= xMonOnp + DM1.cdsAbonoCuotas.FieldByName('MONONP').AsCurrency;
    End;
    If chkOtr.Checked Then
    Begin
    xNumOtr:= xNumOtr + DM1.cdsAbonoCuotas.FieldByName('NUMOTR').AsCurrency;
    xMonOtr:= xMonOtr + DM1.cdsAbonoCuotas.FieldByName('MONOTR').AsCurrency;
    End;
    DM1.cdsAbonoCuotas.Next;
End;
If DM1.cdsAbonoCuotas.RecordCount > 0 Then DM1.cdsAbonoCuotas.First;
TNumericField(DM1.cdsAbonoCuotas.FieldByName('SALDOS_FT')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('SALDOS_FV')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('DEUDORES')).DisplayFormat := '###,###,##0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('AMOPEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('INTPEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('GASPEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('DESPEN')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONPAG')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('AMOPAG')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('INTPAG')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('GASPAG')).DisplayFormat := '###,###,##0.#0';
TNumericField(DM1.cdsAbonoCuotas.FieldByName('DESPAG')).DisplayFormat := '###,###,##0.#0';
If chkPla.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONPLA')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMPLA')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONPLA').FooterValue :=  FloatToStrF(xMonPla,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMPLA').FooterValue :=  FloatToStrF(xNumPla,ffNumber,13,0);
End;
If chkEfe.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONEFE')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMEFE')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONEFE').FooterValue :=  FloatToStrF(xMonEfe,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMEFE').FooterValue :=  FloatToStrF(xNumEfe,ffNumber,13,0);
End;
If chkBan.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONBAN')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMBAN')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONBAN').FooterValue :=  FloatToStrF(xMonBan,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMBAN').FooterValue :=  FloatToStrF(xNumBan,ffNumber,13,0);
End;
If chkBen.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONBEN')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMBEN')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONBEN').FooterValue :=  FloatToStrF(xMonBen,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMBEN').FooterValue :=  FloatToStrF(xNumBen,ffNumber,13,0);
End;
If chkRef.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONREF')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMREF')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONREF').FooterValue :=  FloatToStrF(xMonRef,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMREF').FooterValue :=  FloatToStrF(xNumRef,ffNumber,13,0);
End;
If chkAbn.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONABN')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMABN')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONABN').FooterValue :=  FloatToStrF(xMonAbn,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMABN').FooterValue :=  FloatToStrF(xNumAbn,ffNumber,13,0);
End;
If chkFsc.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONFSC')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMFSC')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONFSC').FooterValue :=  FloatToStrF(xMonFsc,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMFSC').FooterValue :=  FloatToStrF(xNumFsc,ffNumber,13,0);
End;
If chkAmp.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONAMP')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMAMP')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONAMP').FooterValue :=  FloatToStrF(xMonAmp,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMAMP').FooterValue :=  FloatToStrF(xNumAmp,ffNumber,13,0);
End;
If chkFdg.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONFDG')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMFDG')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONFDG').FooterValue :=  FloatToStrF(xMonFdg,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMFDG').FooterValue :=  FloatToStrF(xNumFdg,ffNumber,13,0);
End;
If chkOnp.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONONP')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMONP')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONONP').FooterValue :=  FloatToStrF(xMonOnp,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMONP').FooterValue :=  FloatToStrF(xNumOnp,ffNumber,13,0);
End;
If chkOtr.Checked Then
Begin
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('MONOTR')).DisplayFormat := '###,###,##0.#0';
  TNumericField(DM1.cdsAbonoCuotas.FieldByName('NUMOTR')).DisplayFormat := '###,###,##0';
  dtgCtrlPagos.ColumnByName('MONOTR').FooterValue :=  FloatToStrF(xMonOtr,ffNumber,13,2);
  dtgCtrlPagos.ColumnByName('NUMOTR').FooterValue :=  FloatToStrF(xNumOtr,ffNumber,13,0);
End;

dtgCtrlPagos.ColumnByName('SALDOS_FT').FooterValue := FloatToStrF(xSaldosFt,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('SALDOS_FV').FooterValue := FloatToStrF(xSaldosFv,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('SALTOT').FooterValue :=  FloatToStrF(xSalTot,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('SALVEN').FooterValue :=  FloatToStrF(xSalVen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('DEUDORES').FooterValue :=  FloatToStrF(xDeudores,ffNumber,8,0);
dtgCtrlPagos.ColumnByName('AMOPEN').FooterValue :=  FloatToStrF(xAmoPen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('INTPEN').FooterValue :=  FloatToStrF(xIntPen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('GASPEN').FooterValue :=  FloatToStrF(xGasPen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('DESPEN').FooterValue :=  FloatToStrF(xDesPen,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('MONPAG').FooterValue :=  FloatToStrF(xMonPag,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('AMOPAG').FooterValue :=  FloatToStrF(xAmoPag,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('INTPAG').FooterValue :=  FloatToStrF(xIntPag,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('GASPAG').FooterValue :=  FloatToStrF(xGasPag,ffNumber,13,2);
dtgCtrlPagos.ColumnByName('DESPAG').FooterValue :=  FloatToStrF(xDesPag,ffNumber,13,2);
Screen.Cursor := crDefault;

end;

procedure TfContIngresos.chkClasificacionClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkDepartamentoClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkUgelClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.DtpFecIniChange(Sender: TObject);
begin
LimpiaGrid
end;

procedure TfContIngresos.DtpFecFinChange(Sender: TObject);
begin
LimpiaGrid
end;

procedure TfContIngresos.chkPlaClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkEfeClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkBanClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkAbnClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkBenClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkOnpClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkRefClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkFscClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkAmpClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkFdgClick(Sender: TObject);
begin
LimpiaGrid;
end;

procedure TfContIngresos.chkOtrClick(Sender: TObject);
begin
LimpiaGrid;
end;

end.
