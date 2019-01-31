unit COB921;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, Db, FileCtrl, ExtCtrls, DBClient,
  wwclient, Grids, Wwdbigrd, Wwdbgrid, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ComCtrls;

type
  TfGnrVerTel = class(TForm)
    grpVerTel: TGroupBox;
    BitGnrTel: TBitBtn;
    BitSumTel: TBitBtn;
    Label1: TLabel;
    rdbSeleccion: TRadioGroup;
    cdsProTel: TClientDataSet;
    dsProTel: TDataSource;
    dtgProTel: TwwDBGrid;
    lblArchivo: TLabel;
    BitSalir: TBitBtn;
    BitTelNew: TBitBtn;
    rdbGen: TRadioButton;
    rdbNew: TRadioButton;
    BitResumen: TBitBtn;
    ppDBEstPre: TppDBPipeline;
    ppResumen: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLblTitulo01: TppLabel;
    pnlPeriodo: TPanel;
    seAno: TSpinEdit;
    seMes: TSpinEdit;
    procedure BitGnrTelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitSumTelClick(Sender: TObject);
    procedure rdbSeleccionClick(Sender: TObject);
    procedure dtgProTelDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgProTelDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure seAnoExit(Sender: TObject);
    procedure seMesExit(Sender: TObject);
    procedure dtgProTelDblClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure BitTelNewClick(Sender: TObject);
    procedure BitResumenClick(Sender: TObject);
  private
    { Private declarations }
    InCons:String;
    procedure GrabaTexto( Datos:TDatasource; Fichero: string; Delimitador:char);
    procedure VerificaTexto(Origen, Cadena: String);
    procedure SumaTexto(Origen, Cadena: String);
  public
    { Public declarations }
  end;

var
  fGnrVerTel: TfGnrVerTel;

implementation

uses COBDM1, COB001;

{$R *.dfm}

{ TfGnrVerTel }

procedure TfGnrVerTel.GrabaTexto(Datos: TDatasource; Fichero: String; Delimitador: Char);
 var
     f      : textfile;
     n , i  : integer;
     Linea,Entero,Decimal,Cuenta,Codigo,Importe,Punto  : string;
begin
    AssignFile(f,Fichero);
    Rewrite(f);
    with Datos.DataSet do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        Linea:=''; 
        Cuenta:=Trim(Datos.DataSet.FieldByName('ASONCTA').AsString);
        Codigo:=Trim(Datos.DataSet.FieldByName('PROVBCOID').AsString);
        Importe:=FormatFloat('######.#0',Datos.DataSet.FieldByName('CRESALDO').AsCurrency);
        Entero:=Copy(DM1.StrZero(Importe,16),1,13);
        Decimal:=Copy(DM1.StrZero(Importe,16),15,2);
        Linea:=Cuenta+Codigo+Entero+Decimal;
        writeln(f,Linea);
        Next;
      end;
      EnableControls;
    end;
    CloseFile(f);
    MessageDlg(' Archivo De Texto Se Grabo Con Exito En C:\TEL> ', mtInformation,[mbOk],0);

end;

procedure TfGnrVerTel.BitGnrTelClick(Sender: TObject);
var xSQL:String;
begin

Screen.Cursor := crHourGlass;
If rdbGen.Checked Then
   Begin
      lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.Txt'
   End
Else
   Begin
      lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.New';
   End;

{   xSQL:='SELECT B.ASONCTA, C.PROVBCOID,SUM(A.CRESALDO) CRESALDO, A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, '+
         'SUM(A.CREMTO) TOTAL, A.UPROID, A.ASOTIPID, ASONCTA FROM CRE404 A, APO201 B, APO102 C '+
         'WHERE A.PERIODO='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2))+' AND A.BANCOID=''04'' '+
         'AND A.ASOID=B.ASOID AND B.UPROID=C.UPROID AND A.ASOTIPID='+QuotedStr(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+' '+
         'AND (B.SITCTA=''A'' OR B.SITCTA=''V'')  AND a.FORPAGOID ='+QuotedStr('18')+' GROUP BY B.ASONCTA, C.PROVBCOID, A.ASOID,    '+
         'A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, A.UPROID, A.ASOTIPID, ASONCTA  ';  }

    xSQL:='SELECT PROVBCOID,ASOID,ASOAPENOM,ASONCTA,SITCTA,PORENVIO,MONENVIO CRESALDO,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE PERCOB='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2))+' AND ASOTIPID='+QuotedStr(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+' AND SITCTA IN (''A'',''V'' )  AND NVL(MONENVIO,0)> 0 '  ;


DM1.cdsDetalle.Close;
DM1.cdsDetalle.DataRequest(xSQL);
DM1.cdsDetalle.Open;
Try
   If DM1.cdsDetalle.RecordCount > 0 Then
      GrabaTexto(DM1.dsDetalle,'C:\TEL\'+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.Txt',',')
   Else
      MessageDlg(' No Existe Información Generada Para Crear El Archivo De Texto(Total)  ', mtError,[mbOk],0);
Except
   Begin
   Screen.Cursor:=crDefault;
   MessageDlg(' No Existe Directorio C:\TEL>  ', mtError,[mbOk],0);
   End;
End;
Screen.Cursor:=crDefault;
DM1.cdsDetalle.Close;
end;

procedure TfGnrVerTel.FormActivate(Sender: TObject);
begin
  //seAno.Text:=Copy(DateTimeToStr(DM1.Fechasys),7,4); seMes.Text:=Copy(DateTimeToStr(DM1.Fechasys),4,2);
  rdbSeleccion.ItemIndex := 0;
end;


procedure TfGnrVerTel.VerificaTexto(Origen, Cadena: String);
 var Archivo: TextFile;
	   Linea,xChar : String;
     i , Donde,Movim : Integer;
     Total : Currency;
begin
  Movim:=0;Total:=0;
	assignfile(Archivo,Origen);
	Reset(Archivo);
	While Not EoF(Archivo) do
  Begin
    	ReadLN(Archivo,Linea);
      For i := 1 To Length(Linea) Do
        Begin
          xChar:=Copy(Linea,i,1);
          Donde:=Pos(xChar, Cadena);
          if Donde <> 0 then
          Else
             Begin
                 Movim:=Movim + 1;
                 cdsProTel.Append;
                 cdsProTel.FieldByName('CdsCuenta').AsString := Copy(Linea,1,10);
                 cdsProTel.FieldByName('CdsProv').AsString := Copy(Linea,11,4);
                 cdsProTel.FieldByName('CdsImporte').AsString := Copy(Linea,15,15);
                 Try
                    Begin
                       cdsProTel.FieldByName('CdsValor').AsFloat := DM1.Valores(Copy(Linea,15,15))/100;
                       Total:=Total+DM1.Valores(Copy(Linea,15,15))/100;
                    End;
                 Except
                       cdsProTel.FieldByName('CdsValor').AsFloat := 0.00;
                 End;
                 Break;

             End;
        End;
        dtgProTel.ColumnByName('cdsCuenta').FooterValue :='Total';
        dtgProTel.ColumnByName('cdsImporte').FooterValue :=DM1.StrSpace(Trim(FloatToStrF(Movim,ffNumber, 10, 0)),15);
        dtgProTel.ColumnByName('cdsValor').FooterValue := FloatToStrF(Total,ffNumber, 10, 2);
        dtgProTel.SetFocus;
	End;
	CloseFile(Archivo);
end;

procedure TfGnrVerTel.BitSumTelClick(Sender: TObject);
var Origen : String;
begin
If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
    Begin
      MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
      Exit;
    End;

  InCons:='N';
  cdsProTel.Close; cdsProTel.Open; cdsProTel.EmptyDataSet;
  TNumericField(cdsProTel.FieldByName('cdsValor')).DisplayFormat:='###,##0.#0';
  If rdbGen.Checked Then
     Begin
       lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.Txt';
       Origen:='C:\TEL\'+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.Txt';
     End
  Else
     Begin
       lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.New';
       Origen:='C:\TEL\'+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.New';
     End;
  If FileExists(Origen) Then
     Begin
       Screen.Cursor := crHourGlass;
       SumaTexto(Origen,'0123456789');
       Screen.Cursor:=crDefault;
     End
  Else
     MessageDlg('No Existe El Archivo : '+Origen, mtError, [mbOk], 0);
end;

procedure TfGnrVerTel.SumaTexto(Origen, Cadena: String);
 var Archivo: TextFile;
	   Linea,xChar : String;
     i , Donde, Movim: Integer;
     Total : Currency;
begin
  Movim:=0;Total:=0;
	assignfile(Archivo,Origen);
	Reset(Archivo);
	While Not EoF(Archivo) do
  Begin
    Movim:=Movim + 1;
    FPrincipal.Refresh;  fGnrVerTel.Refresh; grpVerTel.Refresh;dtgProTel.Refresh;
  	ReadLN(Archivo,Linea);
      For i := 1 To Length(Linea) Do
        Begin
          xChar:=Copy(Linea,i,1);
          Donde:=Pos(xChar, Cadena);
          If Donde <> 0 then
             Begin
               If i=Length(Linea) Then
                  Begin
                    cdsProTel.Append;
                    cdsProTel.FieldByName('CdsCuenta').AsString := Copy(Linea,1,10);
                    cdsProTel.FieldByName('CdsProv').AsString := Copy(Linea,11,4);
                    cdsProTel.FieldByName('CdsImporte').AsString := Copy(Linea,15,15);
                    cdsProTel.FieldByName('CdsValor').AsFloat := DM1.Valores(Copy(Linea,15,15))/100;
                    Total:=Total+DM1.Valores(Copy(Linea,15,15))/100;
                    Break;
                  End;
             End
          Else
             Begin
                InCons:='S';
                cdsProTel.Close; cdsProTel.Open; cdsProTel.EmptyDataSet;
                VerificaTexto(Origen, Cadena);
                Screen.Cursor:=crDefault;
                MessageDlg('Existen Inconsistencias, Verifique Archivo De Texto ..!', mtError, [mbOk], 0);
                Exit;
             End;
        End;
        dtgProTel.ColumnByName('cdsCuenta').FooterValue :='Total';
        dtgProTel.ColumnByName('cdsImporte').FooterValue :=DM1.StrSpace(Trim(FloatToStrF(Movim,ffNumber, 10, 0)),15);
        dtgProTel.ColumnByName('cdsValor').FooterValue := FloatToStrF(Total,ffNumber, 10, 2);
        dtgProTel.SetFocus;
	End;
	CloseFile(Archivo);

  MessageDlg('Sumatoria De Archivo De Texto a Finalizado ..!', mtInformation, [mbOk], 0);

end;

procedure TfGnrVerTel.rdbSeleccionClick(Sender: TObject);
begin
  cdsProTel.Close; cdsProTel.Open; cdsProTel.EmptyDataSet;
  dtgProTel.ColumnByName('cdsImporte').FooterValue :=DM1.StrSpace(Trim(FloatToStrF(0,ffNumber, 10, 0)),15);
  dtgProTel.ColumnByName('cdsValor').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
  If rdbGen.Checked Then
     lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.Txt'
  Else
     lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.New'
end;

procedure TfGnrVerTel.dtgProTelDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  If InCons='S' Then
    Begin
      dtgProTel.Canvas.Font.Color := clRed;
      dtgProTel.DefaultDrawDataCell(rect,Field,State);
    End ;
end;

procedure TfGnrVerTel.dtgProTelDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
begin
 If InCons='S' Then
    Begin
      dtgProTel.Canvas.Font.Color := clRed;
    End;
end;

procedure TfGnrVerTel.seAnoExit(Sender: TObject);
begin
cdsProTel.Close; cdsProTel.Open; cdsProTel.EmptyDataSet;
dtgProTel.ColumnByName('cdsImporte').FooterValue :=DM1.StrSpace(Trim(FloatToStrF(0,ffNumber, 10, 0)),15);
dtgProTel.ColumnByName('cdsValor').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.Txt';
end;

procedure TfGnrVerTel.seMesExit(Sender: TObject);
begin
seMes.Text:=DM1.StrZero(Trim(seMes.Text),2);
cdsProTel.Close; cdsProTel.Open; cdsProTel.EmptyDataSet;
dtgProTel.ColumnByName('cdsImporte').FooterValue :=DM1.StrSpace(Trim(FloatToStrF(0,ffNumber, 10, 0)),15);
dtgProTel.ColumnByName('cdsValor').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.Txt';
end;

procedure TfGnrVerTel.dtgProTelDblClick(Sender: TObject);
var xCuenta:String;
begin
xCuenta:=cdsProTel.FieldByName('CdsCuenta').AsString;
ShowMessage('Cod.Modular :  '+#13+DM1.RecuperaDatos('APO201','ASONCTA',Trim(xCuenta),'ASOCODMOD')+#13+#13+'Apellidos y Nombres  :  '+#13+DM1.RecuperaDatos('APO201','ASONCTA',Trim(xCuenta),'ASOAPENOM'));
end;

procedure TfGnrVerTel.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfGnrVerTel.BitTelNewClick(Sender: TObject);
begin
Exit;
Screen.Cursor := crHourGlass;
If rdbGen.Checked Then
   lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.Txt'
Else
   lblArchivo.Caption:='Archivo : '+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.New';

xSQL:='SELECT ASONCTA,ASOID,ASOCODMOD,PROVBCOID,CRESALDO,TOTAL,UPROID,ASOTIPID FROM (SELECT ASONCTA,ASOID,ASOCODMOD,PROVBCOID,CRESALDO,TOTAL,UPROID,ASOTIPID FROM '+
      '(SELECT B.ASONCTA, C.PROVBCOID,SUM(A.CRESALDO) CRESALDO, A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, '+
      'SUM(A.CREMTO) TOTAL, A.UPROID, A.ASOTIPID FROM CRE404 A, APO201 B, APO102 C '+
      'WHERE A.PERIODO='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2))+' AND A.CRECUOTA=1 AND A.BANCOID=''04'' '+
      'AND A.ASOID=B.ASOID AND B.UPROID=C.UPROID AND A.ASOTIPID='+QuotedStr(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+' '+
      'AND (B.SITCTA=''A'' OR B.SITCTA=''V'')  AND a.FORPAGOID ='+QuotedStr('18')+' GROUP BY B.ASONCTA, C.PROVBCOID, A.ASOID,    '+
      'A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, A.UPROID, A.ASOTIPID) A WHERE EXISTS (SELECT COUNT(*) FROM CRE301 WHERE A.ASOID=ASOID AND '+
      'CREESTID NOT IN (''04'',''13'') HAVING COUNT(*)=1 )) A WHERE EXISTS (SELECT ASOID FROM CRE302 WHERE A.ASOID=ASOID AND CREESTID NOT IN (''04'',''13'') AND TO_CHAR(CREFVEN,''YYYYMM'')='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2))+' AND CRECUOTA=1) ' ;

xSQL:='SELECT PROVBCOID,ASOID,ASOAPENOM,ASONCTA,SITCTA,PORENVIO,MONENVIO CRESALDO,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE PERCOB='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2))+' AND ASOTIPID='+QuotedStr(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+' AND SITCTA IN (''A'',''V'' ) '  ;

DM1.cdsDetalle.Close;
DM1.cdsDetalle.DataRequest(xSQL);
DM1.cdsDetalle.Open;
Try
   If DM1.cdsDetalle.RecordCount > 0 Then
      GrabaTexto(DM1.dsDetalle,'C:\TEL\'+Trim(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+DM1.StrZero(IntToStr(seMes.Value),2)+IntToStr(seAno.Value)+'.New',',')
   Else
      MessageDlg(' No Existe Información Generada Para Crear El Archivo De Texto(Nuevos) ', mtError,[mbOk],0);
Except
   Begin
   Screen.Cursor:=crDefault;
   MessageDlg(' No Existe Directorio C:\TEL>  ', mtError,[mbOk],0);
   End;
End;
Screen.Cursor:=crDefault;
DM1.cdsDetalle.Close;
end;

procedure TfGnrVerTel.BitResumenClick(Sender: TObject);
var xSQL:String;
begin
    Screen.Cursor := crHourGlass;
   { xSQL:='SELECT PROVBCOID,PROVBCODES,COUNT(*) REGISTROS,SUM(CRESALDO) SALDO FROM (SELECT A.ASOID,C.PROVBCOID PROVBCOID,D.PROVBCODES PROVBCODES,SUM(A.CRESALDO) CRESALDO FROM CRE404 A, APO201 B, APO102 C,APO213 D '+
          'WHERE A.PERIODO='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2))+' AND A.BANCOID=''04'' AND A.ASOID=B.ASOID  AND C.PROVBCOID=D.PROVBCOID(+)  '+
          'AND B.UPROID=C.UPROID AND A.ASOTIPID='+QuotedStr(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+' AND (B.SITCTA=''A'' OR B.SITCTA=''V'')  AND A.FORPAGOID =''18''   '+
          'GROUP BY A.ASOID,C.PROVBCOID,D.PROVBCODES) GROUP BY PROVBCOID,PROVBCODES ORDER BY PROVBCOID'; }

    If Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2)='GE' Then
       Begin
          xSQL:='SELECT A.PROVBCOID,B.PROVBCODES,COUNT(*) REGISTROS,SUM(MONENVIO) SALDO FROM COB402 A, APO213 B '+
                'WHERE A.PERCOB='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2))+' AND A.PROVBCOID=B.PROVBCOID(+) AND  '+
                'A.ASOTIPID IN (''CE'',''DO'') AND A.SITCTA IN (''A'',''V'') AND NVL(A.MONENVIO,0)> 0   '+
                'GROUP BY A.PROVBCOID,B.PROVBCODES ORDER BY A.PROVBCOID';
       End
    Else
       Begin
          xSQL:='SELECT A.PROVBCOID,B.PROVBCODES,COUNT(*) REGISTROS,SUM(MONENVIO) SALDO FROM COB402 A, APO213 B '+
                'WHERE A.PERCOB='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2))+' AND A.PROVBCOID=B.PROVBCOID(+) AND  '+
                'A.ASOTIPID='+QuotedStr(Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2))+' AND A.SITCTA IN (''A'',''V'') AND NVL(A.MONENVIO,0)> 0  '+
                'GROUP BY A.PROVBCOID,B.PROVBCODES ORDER BY A.PROVBCOID';
       End;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount > 0 Then
       Begin
           ppLblTitulo.Caption:='COBRANZA POR TELEAHORROS - BANCO DE LA NACION';
           If Copy(Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]),1,2)='GE' Then
              ppLblTitulo01.Caption :=DM1.DesMes(StrToInt(seMes.Text),'N')+' - '+seAno.Text+'   (GENERAL)'
           Else
              ppLblTitulo01.Caption :=DM1.DesMes(StrToInt(seMes.Text),'N')+' - '+seAno.Text+'   ('+Trim(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex])+')';
           ppResumen.Print;
           ppResumen.Cancel;
       End;
       DM1.cdsQry.Close;
    Screen.Cursor := crDefault;
end;

end.
