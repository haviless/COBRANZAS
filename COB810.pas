unit COB810;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Wwdbdlg, StdCtrls, Buttons, Spin, ComCtrls, ExtCtrls, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport;

type
  TFToolIncosistencias = class(TForm)
    pnlTool: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    gbPorTransferencia: TGroupBox;
    Label7: TLabel;
    seAno: TSpinEdit;
    seMes: TSpinEdit;
    gbPorArchivo: TGroupBox;
    bbtnModifica: TBitBtn;
    dblcdUPro: TwwDBLookupComboDlg;
    dbcTRecauda: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    pnlEstado: TPanel;
    lbEstado: TLabel;
    pbEstado: TProgressBar;
    ppDbDatos: TppDBPipeline;
    BitBtn2: TBitBtn;
    ppRepInc: TppReport;
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
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppTitleBand1: TppTitleBand;
    ppTitulo: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbtnModificaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolIncosistencias: TFToolIncosistencias;

implementation

uses COBDM1, COB001;

{$R *.DFM}

procedure TFToolIncosistencias.BitBtn1Click(Sender: TObject);
var
  xSQL : string;
  xPeriodo : string;
begin
   xPeriodo := seAno.Text+ DM1.strZero(seMes.text,2);
   xSQL := 'SELECT * FROM COB340 '+
           'WHERE APOSEC='+Quotedstr(xPeriodo);
   FPrincipal.MtxD.UsuarioSQL.Clear;
   FPrincipal.MtxD.UsuarioSQL.Add(XSQL);
   FPrincipal.MtxD.NewQuery;

end;

procedure TFToolIncosistencias.bbtnModificaClick(Sender: TObject);
var
   xSQL : string;
   iAno,iMEs : integer;
begin
  pbEstado.Position:=0;
  if DM1.cdsQry5.recordcount=0 then
  begin
    ShowMessage('No Existen Registros ');
    exit;
  end;

  iMes:= strtoint(seMes.text);
  if (iMes<1) or (iMes>12) then
     raise exception.Create('Mes inválido');
     
  pnlEstado.Visible:=True;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption :=' Verificando Datos ...';
  lbEstado.Refresh;
  pbEstado.Max:=8;
  pbEstado.Min:=0;
  pbEstado.Position:=pbEstado.Position+1;

  xSQL:=' UPDATE COB340 SET FL_CTACTE=''N'' '+
        ' WHERE TRANSANO='+Quotedstr(seAno.Text)+
        ' AND TRANSMES='+Quotedstr(DM1.strZero(seMes.text,2)) +
        ' AND NVL(FL_CTACTE,''D'')=''D'' '+
        ' AND NVL(FLGTA,''D'')=''S'' ';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption :=' Marcando Incosistencias ...';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  xSQL:=' UPDATE COB340 SET FL_NASOID=''S'' '+
        ' WHERE TRANSANO='+Quotedstr(seAno.Text)+
        ' AND TRANSMES='+Quotedstr(DM1.strZero(seMes.text,2)) +
        ' AND NVL(ASOID,''D'')=''D'' '+
        ' AND NVL(FL_CTACTE,''D'')<>''S'' '+
        ' AND NVL(FLGTA,''D'')=''S'' ';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Codigo de Derrama';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  xSQL:=' UPDATE COB340 A SET A.FL_CUOTPAG=''S'' '+
        ' WHERE A.TRANSANO='+Quotedstr(seAno.Text)+
        ' AND A.TRANSMES='+Quotedstr(DM1.strZero(seMes.text,2)) +
        ' AND NVL(A.FL_CUOTPAG,''D'')<>''S'' '+
        ' AND NVL(A.FL_CTACTE,''D'')<>''S'' '+
        ' AND NVL(A.FLGTA,''D'')=''S'' '+
        ' AND A.ASOID= (SELECT B.ASOID FROM CRE302 B '+
                     'WHERE B.CREANO=A.TRANSANO AND '+
                     'B.CREMES=A.TRANSMES AND '+
                     'B.ASOID=A.ASOID AND '+
                     'B.FORPAGOID=''18'' AND '+
                     'B.CREINFO=''S'' AND '+
                     '(B.CREESTID=''21'' OR B.CREESTID=''23'') AND '+
                     'B.CREESTID<>''14'' '+
                     'GROUP BY B.ASOID) ';

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando si la Cuota está cancelada';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  xSQL:=' UPDATE COB340 A SET A.FL_MTODIF=''S'' '+
        ' WHERE A.TRANSANO='+Quotedstr(seAno.Text)+
        ' AND A.TRANSMES='+Quotedstr(DM1.strZero(seMes.text,2)) +
        ' AND NVL(A.FL_MTODIF,''D'')<>''S'' '+
        ' AND NVL(A.FL_CTACTE,''D'')<>''S'' '+
        ' AND NVL(A.FLGTA,''D'')=''S'' '+
        ' AND A.IMPORTE<> (SELECT SUM(B.CREMTO-B.CREMTOCOB) IMPORTE FROM CRE302 B '+
                     'WHERE B.CREANO=A.TRANSANO AND '+
                     'B.CREMES=A.TRANSMES AND '+
                     'B.ASOID=A.ASOID AND '+
                     'B.FORPAGOID=''18'' AND '+
                     'B.CREINFO=''S'' AND '+
                     'B.CREESTID=''14'' '+
                     'GROUP BY B.ASOID '+
                     'HAVING COUNT(CREANO)>=1) ';

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando montos Diferentes';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  xSQL:=' UPDATE COB340 A SET A.FL_NOCREDI=''S'' '+
        ' WHERE A.TRANSANO='+Quotedstr(seAno.Text)+
        ' AND A.TRANSMES='+Quotedstr(DM1.strZero(seMes.text,2)) +
        ' AND NVL(A.FL_NOCREDI,''D'')<>''S'' '+
        ' AND NVL(A.FL_CTACTE,''D'')<>''S'' '+
        ' AND NVL(A.FLGTA,''D'')=''S'' '+
        ' AND A.ASOID IS NOT NULL '+
        ' AND NOT EXISTS (SELECT B.ASOID FROM CRE302 B '+
                     'WHERE B.CREANO=A.TRANSANO AND '+
                     'B.CREMES=A.TRANSMES AND '+
                     'B.ASOID=A.ASOID AND '+
                     'B.FORPAGOID=''18'' AND '+
                     'B.CREINFO=''S'' ) ';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando si no tiene Créditos';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;


  xSQL:=' UPDATE COB340 A SET A.FL_CUOTPAG=''S'' '+
        ' WHERE A.TRANSANO='+Quotedstr(seAno.Text)+
        ' AND A.TRANSMES='+Quotedstr(DM1.strZero(seMes.text,2)) +
        ' AND NVL(A.FL_CUOTPAG,''D'')<>''S'' '+
        ' AND NVL(A.FL_CTACTE,''D'')<>''S'' '+
        ' AND NVL(A.FLGTA,''D'')=''S'' '+
        ' AND A.ASOID IS NOT NULL '+        
        ' AND A.ASOID= (SELECT B.ASOID FROM CRE302 B '+
                     'WHERE B.CREANO=A.TRANSANO AND '+
                     'B.CREMES=A.TRANSMES AND '+
                     'B.ASOID=A.ASOID AND '+
                     'B.FORPAGOID=''18'' AND '+
                     'B.CREINFO=''S'' AND '+
                     '(B.CREESTID=''04'' OR B.CREESTID=''07'') AND '+
                     'B.CREESTID<>''14'' '+
                     'GROUP BY B.ASOID) ';

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando si tiene Créditos Extornados o Anulados';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  xSQL:=' UPDATE COB340 A SET A.FL_NENVIA=''S'' '+
        ' WHERE A.TRANSANO='+Quotedstr(seAno.Text)+
        ' AND A.TRANSMES='+Quotedstr(DM1.strZero(seMes.text,2)) +
        ' AND NVL(A.FL_NENVIA,''D'')<>''S'' '+
        ' AND NVL(A.FL_CTACTE,''D'')<>''S'' '+
        ' AND NVL(A.FLGTA,''D'')=''S'' '+
        ' AND NVL(A.FL_NOCREDI,''D'')<>''S'' '+        
        ' AND A.ASOID= (SELECT B.ASOID FROM CRE302 B '+
                     'WHERE B.CREANO=A.TRANSANO AND '+
                     'B.CREMES=A.TRANSMES AND '+
                     'B.ASOID=A.ASOID AND '+
                     'B.FORPAGOID=''18'' AND '+
                     '(NVL(B.CREINFO,''D'')<>''S'' ) AND '+
                     '(B.CREESTID=''02'' OR B.CREESTID=''14'' OR B.CREESTID=''27'' )  '+
                     'GROUP BY B.ASOID) ';

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando si tiene Créditos no enviados';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  xSQL:=' UPDATE COB340 A SET A.FL_OK=''S'' '+
        ' WHERE A.TRANSANO='+Quotedstr(seAno.Text)+
        ' AND A.TRANSMES='+Quotedstr(DM1.strZero(seMes.text,2)) +
        ' AND NVL(A.FL_OK,''D'')<>''S'' '+
        ' AND NVL(A.FL_CTACTE,''D'')<>''S'' '+
        ' AND NVL(A.FLGTA,''D'')=''S'' '+
        ' AND A.IMPORTE= (SELECT SUM(B.CREMTO-B.CREMTOCOB) IMPORTE FROM CRE302 B '+
                     'WHERE B.CREANO=A.TRANSANO AND '+
                     'B.CREMES=A.TRANSMES AND '+
                     'B.ASOID=A.ASOID AND '+
                     'B.FORPAGOID=''18'' AND '+
                     'B.CREINFO=''S'' AND '+
                     'B.CREESTID=''14'' '+
                     'GROUP BY B.ASOID) ';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);                     


  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Finalizando ...';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;
  pnlEstado.visible := False;




end;

procedure TFToolIncosistencias.BitBtn2Click(Sender: TObject);
var xSQL:String;
begin
xSQL:='SELECT ROWNUM,ASOID,ASOCODMOD,ASOAPENOM,ASONCTA,IMPORTE,FOPERACTMP,NROOPETMP,APOSEC FROM COB340 WHERE APOSEC='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2) )+' ORDER BY FOPERACTMP,NROOPETMP';
DM1.cdsCambios.Close;
DM1.cdsCambios.DataRequest(xSQL);
DM1.cdsCambios.Open;
If DM1.cdsCambios.RecordCount > 0 Then
   Begin
      ppTitulo.Caption := 'INCONSISTENCIA DE DESCARGO DE TELEAHORRO : '+DM1.DesMes(seMes.Value,'S')+'-'+IntToStr(seAno.Value);
      ppRepInc.Print;
      ppRepInc.Cancel;
   End;
DM1.cdsCambios.Close;
end;

end.
