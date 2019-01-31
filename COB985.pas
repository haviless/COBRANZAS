Unit COB985;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppDBPipe, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, Grids, DBGrids, ExtCtrls,
  wwdbdatetimepicker, StdCtrls, wwdblook, Buttons;

type
  TfRepAutDescuento = class(TForm)
    grbRepfPago: TGroupBox;
    LblUsuarios: TLabel;
    Label1: TLabel;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    DBLUsuarios: TwwDBLookupCombo;
    Panel1: TPanel;
    EdtUser: TEdit;
    rdbDetalle: TRadioButton;
    rdbResumen: TRadioButton;
    PnFecGen: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DtpFecIni: TwwDBDateTimePicker;
    DtpFecFin: TwwDBDateTimePicker;
    Panel2: TPanel;
    EdtOfiDes: TEdit;
    DBLkOfiDes: TwwDBLookupCombo;
    rdgGrupo: TRadioGroup;
    BitExporta: TBitBtn;
    dtgData: TDBGrid;
    rpResumen: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel118: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppSystemVariable21: TppSystemVariable;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLine34: TppLine;
    ppLabel127: TppLabel;
    Tit02: TppLabel;
    ppLine33: TppLine;
    Cab02: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText46: TppDBText;
    ppDBText42: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppLine35: TppLine;
    ppLine36: TppLine;
    RepDeta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    Tit01: TppLabel;
    Cab01: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText6: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine37: TppLine;
    ppLabel126: TppLabel;
    ppLabel139: TppLabel;
    ppDBCalc38: TppDBCalc;
    ppLine45: TppLine;
    DataDet: TppDBPipeline;
    dbResumen: TppDBPipeline;
    dbResumenppField1: TppField;
    dbResumenppField2: TppField;
    dbResumenppField3: TppField;
    procedure BitPrintClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLkOfiDesChange(Sender: TObject);
    procedure EdtOfiDesChange(Sender: TObject);
    procedure DBLUsuariosChange(Sender: TObject);
    procedure rdbDetalleClick(Sender: TObject);
    procedure rdbResumenClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepAutDescuento: TfRepAutDescuento;

implementation

uses COBDM1;



{$R *.dfm}

procedure TfRepAutDescuento.BitPrintClick(Sender: TObject);
var xSQL,xUser,xOficina,xModulo:String;
begin
  If UpperCase(Copy(rdgGrupo.Items.Strings[rdgGrupo.ItemIndex],1,3))='TOD' Then xModulo:=' ' Else xModulo:=' AND CODMODAUTDESAPO='+QuotedStr(UpperCase(Copy(rdgGrupo.Items.Strings[rdgGrupo.ItemIndex],1,3)));
  dbResumen.DataSource:=DM1.dsQry;   DataDet.DataSource:=DM1.dsQry;
  If rdbDetalle.Checked Then
     Begin
        If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<>'03' Then
           Begin
             xSQL:='SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM,CODMODAUTDESAPO  '+
                   'FROM APO201 A,APO110 B WHERE TO_CHAR(FECAUTDESAPO,''DD/MM/YYYY'') BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND AUTDESAPO=''S'' AND USUREGAUTDESAPO='+QuotedStr(DBLUsuarios.Text)+' AND A.OFIREGAUTDESAPO=B.OFDESID ORDER BY FECAUTDESAPO,ASOAPENOM ';
           End
        Else
           Begin
             xUser:='';
             If Length(Trim(EdtUser.Text)) > 0 Then
             xUser:=' AND USUREGAUTDESAPO='+QuotedStr(DBLUsuarios.Text);
             xOficina:=' ';
             If Length(Trim(EdtOfiDes.Text)) > 0 Then
             xOficina:=' AND A.OFIREGAUTDESAPO='+QuotedStr(DBLkOfiDes.Text);
             xSQL:='SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM,CODMODAUTDESAPO  '+
                   'FROM APO201 A,APO110 B WHERE TO_CHAR(FECAUTDESAPO,''DD/MM/YYYY'') BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND AUTDESAPO=''S''  AND A.OFIREGAUTDESAPO=B.OFDESID '+xUser+xOficina+xModulo+' ORDER BY OFIREGAUTDESAPO,FECAUTDESAPO,ASOAPENOM ';
           End;
       Screen.Cursor:= crHourGlass;
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Open; Screen.Cursor:= crDefault;
       If DM1.cdsQry.RecordCount > 0 Then
          Begin
             Cab01.Caption:='MODULO : '+UPPERCASE(rdgGrupo.Items.Strings[rdgGrupo.ItemIndex]);
             Tit01.Caption:='REGISTRADOS DEL '+DtpFecIni.Text+' AL '+DtpFecFin.Text;
             RepDeta.Print;
             RepDeta.Cancel;
          End
       Else
          Begin
              MessageDlg('NO EXISTE INFORMACION PARA ESE CRITERIO ', mtError,[mbOk],0);
              Exit;
          End;
     End;

  If rdbResumen.Checked Then
     Begin
       Screen.Cursor:= crHourGlass;
       xSQL:='SELECT OFIREGAUTDESAPO OFDESID,OFDESNOM,COUNT(*) REGISTROS FROM (SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM '+
             'FROM APO201 A,APO110 B WHERE TO_CHAR(FECAUTDESAPO,''DD/MM/YYYY'') BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND AUTDESAPO=''S''  AND A.OFIREGAUTDESAPO=B.OFDESID '+xModulo+' ORDER BY ASOAPENOM ) '+
             'GROUP BY OFIREGAUTDESAPO,OFDESNOM ';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Open; Screen.Cursor:= crDefault;
       If DM1.cdsQry.RecordCount > 0 Then
          Begin
             Cab02.Caption:='MODULO : '+UPPERCASE(rdgGrupo.Items.Strings[rdgGrupo.ItemIndex]);
             Tit02.Caption:='REGISTRADOS DEL '+DtpFecIni.Text+' AL '+DtpFecFin.Text;
             rpResumen.Print;
             rpResumen.Cancel;
          End
       Else
          Begin
              MessageDlg('NO EXISTE INFORMACION PARA ESE CRITERIO ', mtError,[mbOk],0);
              Exit;
          End;

     End;

end;

procedure TfRepAutDescuento.BitExportaClick(Sender: TObject);
var xSQL,xUser,xOficina,xModulo:String;
begin
  If UpperCase(Copy(rdgGrupo.Items.Strings[rdgGrupo.ItemIndex],1,3))='TOD' Then xModulo:=' ' Else xModulo:=' AND CODMODAUTDESAPO='+QuotedStr(UpperCase(Copy(rdgGrupo.Items.Strings[rdgGrupo.ItemIndex],1,3)));
  dtgData.DataSource:=DM1.dsQry;
  If rdbDetalle.Checked Then
     Begin
        If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<>'03' Then
           Begin
             xSQL:='SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM,CODMODAUTDESAPO  '+
                   'FROM APO201 A,APO110 B WHERE TO_CHAR(FECAUTDESAPO,''DD/MM/YYYY'') BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND AUTDESAPO=''S'' AND USUREGAUTDESAPO='+QuotedStr(DBLUsuarios.Text)+' AND A.OFIREGAUTDESAPO=B.OFDESID ORDER BY FECAUTDESAPO,ASOAPENOM ';
           End
        Else
           Begin
             xUser:='';
             If Length(Trim(EdtUser.Text)) > 0 Then
             xUser:=' AND USUREGAUTDESAPO='+QuotedStr(DBLUsuarios.Text);
             xOficina:=' ';
             If Length(Trim(EdtOfiDes.Text)) > 0 Then
             xOficina:=' AND A.OFIREGAUTDESAPO='+QuotedStr(DBLkOfiDes.Text);
             xSQL:='SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM,CODMODAUTDESAPO  '+
                   'FROM APO201 A,APO110 B WHERE TO_CHAR(FECAUTDESAPO,''DD/MM/YYYY'') BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND AUTDESAPO=''S''  AND A.OFIREGAUTDESAPO=B.OFDESID '+xUser+xOficina+xModulo+' ORDER BY OFIREGAUTDESAPO,FECAUTDESAPO,ASOAPENOM ';
           End;
       Screen.Cursor:= crHourGlass;
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Open; Screen.Cursor:= crDefault;
       If DM1.cdsQry.RecordCount > 0 Then
          Begin
              Try
                DM1.HojaExcel('Detalles',DM1.dsQry, dtgData);
              Except
              On Ex: Exception do
                Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
              End;
          End
       Else
          Begin
              MessageDlg('NO EXISTE INFORMACION PARA ESE CRITERIO ', mtError,[mbOk],0);
              Exit;
          End;
     End;

  If rdbResumen.Checked Then
     Begin
       Screen.Cursor:= crHourGlass;
       xSQL:='SELECT OFIREGAUTDESAPO OFDESID,OFDESNOM,COUNT(*) REGISTROS FROM (SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM '+
             'FROM APO201 A,APO110 B WHERE TO_CHAR(FECAUTDESAPO,''DD/MM/YYYY'') BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND AUTDESAPO=''S''  AND A.OFIREGAUTDESAPO=B.OFDESID '+xModulo+' ORDER BY ASOAPENOM ) '+
             'GROUP BY OFIREGAUTDESAPO,OFDESNOM ';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Open; Screen.Cursor:= crDefault;
       If DM1.cdsQry.RecordCount > 0 Then
          Begin
              Try
                DM1.HojaExcel('Resumen',DM1.dsQry, dtgData);
              Except
              On Ex: Exception do
                Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
              End;

          End
       Else
          Begin
              MessageDlg('NO EXISTE INFORMACION PARA ESE CRITERIO ', mtError,[mbOk],0);
              Exit;
          End;

     End;

end;

procedure TfRepAutDescuento.FormActivate(Sender: TObject);
begin
   DtpFecIni.Date:=DM1.FechaSys;  DtpFecFin.Date:=DM1.FechaSys;  rdgGrupo.ItemIndex:=0;
end;

procedure TfRepAutDescuento.DBLkOfiDesChange(Sender: TObject);
begin
   If DM1.cdsOfdes.Locate('OFDESID',VarArrayof([DBLkOfiDes.Text]),[]) Then
      Begin
        EdtOfiDes.Text  := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString ;
      End
   Else
      Begin
        if Length(DBLkOfiDes.Text) <> 2 then
           Begin
              Beep;
              EdtOfiDes.Text  :='';
           End;
      End;

end;

procedure TfRepAutDescuento.EdtOfiDesChange(Sender: TObject);
var xSQL:String;
begin
     xSQL:='SELECT USUREGAUTDESAPO USUARIO_AUD,USERNOM,MODULOID FROM APO201 A,(SELECT USERID,USERNOM,A.GRUPOID,B.MODULOID FROM TGE007 A, '+
           '(SELECT A.GRUPOID,MODULOID FROM TGE007 A,TGE001 B WHERE A.GRUPOID=B.GRUPOID GROUP BY A.GRUPOID,MODULOID) B  WHERE A.GRUPOID=B.GRUPOID  ) B '+
           'WHERE TO_CHAR(FECAUTDESAPO,''DD/MM/YYYY'') BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND AUTDESAPO=''S'' AND OFIREGAUTDESAPO='+QuotedStr(DBLkOfiDes.Text)+' AND A.USUREGAUTDESAPO=B.USERID '+
           'AND MODULOID=''COB'' GROUP BY USUREGAUTDESAPO,USERNOM,MODULOID ';
     DM1.cdsCtasBco.Close;
     DM1.cdsCtasBco.DataRequest(xSQL);
     DM1.cdsCtasBco.Open; fRepAutDescuento.DBLUsuarios.LookupTable:=DM1.cdsCtasBco;
     If DM1.cdsCtasBco.RecordCount > 0 Then  DBLUsuarios.Enabled:=True;


end;

procedure TfRepAutDescuento.DBLUsuariosChange(Sender: TObject);
begin
   If DM1.cdsCtasBco.Locate('USUARIO_AUD',VarArrayof([DBLUsuarios.Text]),[]) Then
      Begin
        EdtUser.Text  := DM1.cdsCtasBco.fieldbyname('USERNOM').AsString ;
      End
   Else
      Begin
        if Length(DBLUsuarios.Text) <> 2 then
           Begin
              Beep;
              EdtUser.Text  := '';
           End;
      End;

end;

procedure TfRepAutDescuento.rdbDetalleClick(Sender: TObject);
begin
   DBLkOfiDes.Enabled:=True;  DBLUsuarios.Enabled := True;
end;

procedure TfRepAutDescuento.rdbResumenClick(Sender: TObject);
begin
   DBLkOfiDes.Text:=''; EdtOfiDes.Text:=''; DBLkOfiDes.Enabled:=False;
   DBLUsuarios.Text:=''; EdtUser.Text:=''; DBLUsuarios.Enabled := False;

end;

procedure TfRepAutDescuento.BitSalirClick(Sender: TObject);
begin
  Close;
end;

end.
