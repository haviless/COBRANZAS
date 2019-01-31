// Actualizaciones
// HPC_201217_COB  Añade Columnas de FPD
// DPP_201212_COB: Pase a producción a partir del pase HPC_201217
// HPC_201722_COB: Modificar el Reporte de Excesos
//                 Nueva columna en reporte, nuevo opción para exportar a excel.
// HPC_201737_COB: Modificar el Reporte de Excesos
//                 Nueva columna en reporte y en archivo exportable a excel.

unit COB956B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, wwdbdatetimepicker, Buttons, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppCtrls,
  //Inicio HPC_201722_COB
  //Nueva columna en reporte, nuevo opción para exportar a excel.
  ppPrnabl, ppBands, ppCache, ppVar, DB, DBClient, 
  ppParameter, Grids,DBGrids, ExtCtrls;
  //Fin HPC_201722_COB
type
  TFRepExcesos = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    GroupBox2: TGroupBox;
    gbFiltro: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dblDptoid: TwwDBLookupCombo;
    edtDpto: TEdit;
    dblUpro: TwwDBLookupCombo;
    edtUpro: TEdit;
    dblUpago: TwwDBLookupCombo;
    edtUpag: TEdit;
    btnImprimir: TBitBtn;
    BtnCancelar: TBitBtn;
    bdeP: TppBDEPipeline;
    ppRexceso: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLMonto: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBMonto: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel22: TppLabel;
    pplRango1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    //Inicio HPC_201722_COB
    //se elimino etiqueta ppLabel23: TppLabel;
    //Fin HPC_201722_COB
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLSubtitulo: TppLabel;
    gbFiltroRep1: TGroupBox;
    chkTodos: TCheckBox;
    chkAplicados: TCheckBox;
    chkdevueltos: TCheckBox;
    chksinAplicar: TCheckBox;
    ppRAplicDev: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText19: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppLabel41: TppLabel;
    ppLabel45: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel49: TppLabel;
    ppLFecha2: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel32: TppLabel;
    ppDBText34: TppDBText;
    ppLine7: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel19: TppLabel;
    ppLine8: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine9: TppLine;
    ppLabel33: TppLabel;
    ppDBText35: TppDBText;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel42: TppLabel;
    ppDBText38: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText39: TppDBText;
    Label6: TLabel;
    dblFPag: TwwDBLookupCombo;
    edtFPago: TEdit;
    cdsRepExc: TClientDataSet;
    dsRepExc: TDataSource;
    ppLabel46: TppLabel;
    ppLabel50: TppLabel;
    ppDBText40: TppDBText;
    ppDBCalc10: TppDBCalc;
//Inicio: DPP_201212_COB
    ppLabel56: TppLabel;
    ppDBText41: TppDBText;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
//Fin: DPP_201212_COB

//Inicio HPC_201722_COB
    //Nueva columna en reporte, nuevo opción para exportar a excel.
    ppParameterList1: TppParameterList;
    ppDBText42: TppDBText;
    ppLabel57: TppLabel;
    ppRexcesoTodos: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel92: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText58: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppParameterList2: TppParameterList;
    ppDBText59: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine14: TppLine;
    ppLabel93: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine15: TppLine;
    DTGDATA: TDBGrid;
    chkExcel: TCheckBox;
    imgExcel: TImage;
    ppImage1: TppImage;
    ppImage2: TppImage;
//Fin HPC_201722_COB
    procedure FormActivate(Sender: TObject);
    procedure dblDptoidChange(Sender: TObject);
    procedure dblDptoidExit(Sender: TObject);
    procedure dblUproChange(Sender: TObject);
    procedure dblUproExit(Sender: TObject);
    procedure dblUpagoChange(Sender: TObject);
    procedure dblUpagoExit(Sender: TObject);
    procedure chkTodosClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure chkAplicadosClick(Sender: TObject);
    procedure chkdevueltosClick(Sender: TObject);
    procedure chksinAplicarClick(Sender: TObject);
    procedure dblFPagExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepExcesos: TFRepExcesos;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFRepExcesos.FormActivate(Sender: TObject);
VAR xsql:string;
begin
 if DM1.xopc1='2' Then gbFiltroRep1.Visible := False Else Begin gbFiltroRep1.Visible := True; chkTodos.Checked:=True;  End;

 Xsql:='Select Dptoid,Dptodes From Apo158';
 DM1.cdsQry2.Close;
 DM1.cdsQry2.DataRequest(Xsql);
 DM1.cdsQry2.Open;
 dblDptoid.LookupTable :=  DM1.Cdsqry2;
 dblDptoid.LookupField := 'DPTOID';

 xsql:='SELECT * FROM COB101 where substr(forpagFAPO,1,1)=''S'' ';
 DM1.cdsFPago.Close;
 DM1.cdsFPago.DataRequest(Xsql);
 DM1.cdsFPago.Open;
 dblFPag.LookupTable :=  DM1.cdsFPago;
 dblFPag.LookupField := 'FORPAGOID';

end;

procedure TFRepExcesos.dblDptoidChange(Sender: TObject);
begin
  EdtDpto.Text := DM1.cdsQry2.FieldByName('DPTODES').AsString ;
  dblUpro.Text:=''; edtUpro.Text:=''; dblUpago.Text:=''; edtUpag.Text:='';
  if Length(trim(dblUpago.Text))=0  Then dblUpago.Enabled := False ;
  if Length(trim(dblUpro.Text))=0  Then dblUpro.Enabled := False ;
  dblUpro.Enabled  := False ;
  dblUpago.Enabled := False ;
end;

procedure TFRepExcesos.dblDptoidExit(Sender: TObject);
var xsql:string;
begin
  if Length(Trim(dblDptoid.Text))=0 Then edtDpto.Text:='' Else
  EdtDpto.Text := DM1.cdsQry2.FieldByName('DPTODES').AsString ;
  Xsql:='SELECT UPROID,UPRONOM FROM APO102 WHERE DPTOID='''+dblDptoid.Text+''' ';
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(Xsql);
  DM1.cdsQry3.Open;
  dblUpro.LookupTable := DM1.cdsQry3;
  dblUpro.LookupField := 'UPROID';
  if DM1.cdsQry3.RecordCount > 0 then  dblUpro.Enabled:= True else dblUpro.Enabled:=False;
end;

procedure TFRepExcesos.dblUproChange(Sender: TObject);
begin
  edtUpro.Text := DM1.cdsQry3.FieldByName('UPRONOM').AsString;
  dblUpago.Text:=''; edtUpag.Text:='';
  if Length(trim(dblUpago.Text))=0  Then dblUpago.Enabled := False ;
end;

procedure TFRepExcesos.dblUproExit(Sender: TObject);
VAR XSQL:STRING;
begin
  if Length(Trim(dblUpro.Text))=0 Then edtUpro.Text:='' Else
  edtUpro.Text := DM1.cdsQry3.FieldByName('UPRONOM').AsString;
  XSQL:='SELECT UPAGOID,UPAGONOM FROM APO103 WHERE UPROID='''+dblUpro.Text +''' ';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(XSQL);
  DM1.cdsQry4.Open;
  if DM1.cdsQry4.RecordCount > 0 then  dblUpago.Enabled:= True else dblUpago.Enabled:=False;
  dblUpago.LookupTable := DM1.cdsQry4;
  dblUpago.LookupField := 'UPAGOID';
end;

procedure TFRepExcesos.dblUpagoChange(Sender: TObject);
begin
  edtUpag.Text := DM1.cdsQry4.FieldByName('UPAGONOM').AsString;
end;

procedure TFRepExcesos.dblUpagoExit(Sender: TObject);
begin
  if Length(Trim(dblUpago.Text))=0 Then edtUpag.Text:='' Else
  edtUpag.Text := DM1.cdsQry4.FieldByName('UPAGONOM').AsString;
end;

procedure TFRepExcesos.chkTodosClick(Sender: TObject);
begin

 {if chkTodos.Checked = True Then
 Begin
   dblDptoid.Text :='';dblUpro.Text:='';dblUpago.Text:='';
   edtDpto.Text   :='';edtUpro.Text:='';edtUpag.Text :='';
   gbFiltro.Enabled := False
 End
 else gbFiltro.Enabled := True;}

 If chkTodos.Checked = True Then
  Begin
    chkAplicados.Checked := False;
    chksinAplicar.Checked:= False;
    chkdevueltos.Checked := False;
  End;

end;

procedure TFRepExcesos.BtnCancelarClick(Sender: TObject);
begin
 FRepExcesos.Close;
 DM1.cdsQry.Close;
end;

procedure TFRepExcesos.btnImprimirClick(Sender: TObject);
Var XSQL,xWhere1,xWhere2,xWhere3,xWhere4,xWhere5:string;
begin
Screen.Cursor := crHourglass;

 If Length(Trim(dblDptoid.Text))= 2 Then xWhere2:='And D.DPTOID='''+Trim(dblDptoid.Text)+''' ' Else xWhere2:='' ;
 If Length(Trim(dblUpro.Text))  = 3 Then xWhere3:='And A.UPROID='''+Trim(dblUpro.Text)+''' '   Else xWhere3:='' ;
 If Length(Trim(dblUpago.Text)) = 2 Then xWhere4:='And A.UPAGOID='''+Trim(dblUpago.Text)+''' ' Else xWhere4:='' ;
 If Length(Trim(dblFPag.Text))  = 2 Then xWhere5:='And A.FORPAGID='''+Trim(dblFPag.Text)+''' ' Else xWhere5:='' ;

 If DM1.xopc1='1'  Then //Reporte de Exceso
    Begin
      If chkTodos.Checked      Then
        Begin
         xWhere1:= ' ';
         //Inicio HPC_201722_COB
         //Nueva columna en reporte, nuevo opción para exportar a excel.
         //pplSubtitulo.Text   := '(Todos los Excesos)';
         //pplMonto.Text       := 'Exceso';
         //ppDBMonto.DataField := 'Cremtoexc';
         pplabel86.Text   := '(Todos los Excesos)';
         pplabel76.Text    := 'Exceso';
         ppDBText49.DataField := 'Cremtoexc';
         //Fin HPC_201722_COB
        End;
      If chkAplicados.Checked  Then
        Begin
         //Inicio HPC_201722_COB
         //Nueva columna en reporte, nuevo opción para exportar a excel.
         //xWhere1:= 'And a.cremtoexc-a.creaplexc = 0 And a.cremtodev = 0 ';
         xWhere1:= 'And NVL(A.CREMTODEV,0) = 0 And NVL(A.CREAPLEXC,0) > 0 ';
         //Fin HPC_201722_COB
         ppLSubtitulo.Text   := '(Excesos Aplicado)';
         pplMonto.Text       := 'Aplicado';
         ppDBMonto.DataField := 'Creaplexc';
        End;
      If chkDevueltos.Checked  Then
        Begin
         //Inicio HPC_201722_COB
         //Nueva columna en reporte, nuevo opción para exportar a excel.
         //xWhere1:= 'And a.cremtodev>0 ';
         xWhere1:= 'And NVL(A.CREMTODEV,0) > 0 ';
         //Fin HPC_201722_COB
         ppLSubtitulo.Text   := '(Excesos Devueltos)';
         pplMonto.Text       := 'Devuelto';
         ppDBMonto.DataField := 'Cremtodev';
        End;
      If chksinAplicar.Checked Then
        Begin
         //Inicio HPC_201722_COB
         //Nueva columna en reporte, nuevo opción para exportar a excel.
         //xWhere1:= 'And a.cremtoexc-a.creaplexc > 0';
         xWhere1:= 'And NVL(A.CREMTODEV,0) = 0 And NVL(A.CREAPLEXC,0) = 0 ';
         //Fin HPC_201722_COB
         ppLSubtitulo.Text   := '(Excesos sin Aplicar)';
         pplMonto.Text       := 'Sin Aplicar';
         ppDBMonto.DataField := 'Cresinapl';
        End;

       XSQL:='SELECT A.ASOID,A.ASOCODMOD,A.ASOAPENOM,D.DPTOID,F.DPTODES,A.UPROID,D.UPRONOM,A.USEID,A.UPAGOID,A.FORPAGABR,E.UPAGONOM,TO_DATE(A.FREG)FREG,TO_DATE(A.CREFPAG)CREFPAG,A.NROOPE,A.CCBCOID,SUBSTR(A.CREDID,9) credid,A.CREDID CREDIDT,'+
             'A.CRECUOTA,A.CREMTOEXC,A.CREMTODEV,A.CREAPLEXC,a.cremtoexc-a.creaplexc CRESINAPL,TO_DATE(B.CREFOTORG)CREFOTORG '+
             //Inicio HPC_201722_COB
             //Nueva columna en reporte, nuevo opción para exportar a excel.
             ',A.USUARIO ' +
             ',(CASE WHEN NVL(A.CREMTODEV,0)>0 THEN ''DEVUELTO'' ' +
             ' WHEN (NVL(A.CREMTODEV,0)=0) AND (NVL(A.CREAPLEXC,0)>0) THEN ''APLICADO'' ' +
             ' WHEN (NVL(A.CREMTODEV,0)=0) AND (NVL(A.CREAPLEXC,0)=0) THEN ''SIN APLICAR'' ' +
             ' END ) TIPOEXCESO ' +
             //Fin HPC_201722_COB
             //Inicio HPC_201737_COB
             //Nueva columna en reporte, y en archivo para exportar a excel.
             ',(SELECT MAX(x.FREG) FROM CRE310 x WHERE x.ASOID = A.ASOID AND x.CREDID = A.CREDID ' +
             'AND x.CRECUOTA = A.CRECUOTA AND x.NUMDEV = A.NUMDEV AND x.CREESTID = ''99'') FECDEV ' +
             //Fin HPC_201737_COB
             'FROM CRE310 A,CRE301 B,APO102 D,APO103 E,APO158 F '+
             'WHERE A.FREG>='''+dbdtpInicio.Text+''' AND A.FREG<='''+dbdtpFinal.Text+''' AND A.CREMTOEXC>0 AND A.CREESTID NOT IN (''13'',''04'',''99'')AND  '+
             'A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND '+
             'A.UPROID=D.UPROID(+) AND (A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+)) AND D.DPTOID=F.DPTOID(+) '+xWhere1+xWhere2+xWhere3+xWhere4+xWhere5;
       DM1.cdsCEdu.Close;
       DM1.cdsCEdu.DataRequest(xSQL);
       DM1.cdsCEdu.Open;
       If DM1.cdsCEdu.RecordCount > 0 Then
          Begin
             //LLena archivo de trabajo
               cdsRepExc.EmptyDataSet;
               While not DM1.cdsCEdu.eof do
                 Begin
                   cdsRepExc.Insert;
                   cdsRepExc.FieldByName('ASOCODMOD').AsString   := DM1.cdsCEdu.FieldByName('ASOCODMOD').AsString;
                   cdsRepExc.FieldByName('ASOAPENOM').AsString   := DM1.cdsCEdu.FieldByName('ASOAPENOM').AsString;
                   cdsRepExc.FieldByName('DPTOID').AsString      := DM1.cdsCEdu.FieldByName('DPTOID').AsString;
                   cdsRepExc.FieldByName('DPTODES').AsString     := DM1.cdsCEdu.FieldByName('DPTODES').AsString;
                   cdsRepExc.FieldByName('UPROID').AsString      := DM1.cdsCEdu.FieldByName('UPROID').AsString;
                   cdsRepExc.FieldByName('UPRONOM').AsString     := DM1.cdsCEdu.FieldByName('UPRONOM').AsString;
                   cdsRepExc.FieldByName('USEID').AsString       := DM1.cdsCEdu.FieldByName('USEID').AsString;
                   cdsRepExc.FieldByName('UPAGOID').AsString     := DM1.cdsCEdu.FieldByName('UPAGOID').AsString;
                   cdsRepExc.FieldByName('FORPAGABR').AsString   := DM1.cdsCEdu.FieldByName('FORPAGABR').AsString;
                   cdsRepExc.FieldByName('UPAGONOM').AsString    := DM1.cdsCEdu.FieldByName('UPAGONOM').AsString;
                   cdsRepExc.FieldByName('FREG').AsDateTime      := DM1.cdsCEdu.FieldByName('FREG').AsDateTime;
                   cdsRepExc.FieldByName('CREFPAG').AsDateTime   := DM1.cdsCEdu.FieldByName('CREFPAG').AsDateTime;
                   cdsRepExc.FieldByName('NROOPE').AsString      := DM1.cdsCEdu.FieldByName('NROOPE').AsString;
                   cdsRepExc.FieldByName('CCBCOID').AsString     := DM1.cdsCEdu.FieldByName('CCBCOID').AsString;
                   cdsRepExc.FieldByName('CREDID').AsString      := DM1.cdsCEdu.FieldByName('CREDID').AsString;
                   cdsRepExc.FieldByName('CRECUOTA').AsString    := DM1.cdsCEdu.FieldByName('CRECUOTA').AsString;
                   cdsRepExc.FieldByName('CREMTOEXC').AsCurrency := DM1.cdsCEdu.FieldByName('CREMTOEXC').AsCurrency;
                   cdsRepExc.FieldByName('CREMTODEV').AsCurrency := DM1.cdsCEdu.FieldByName('CREMTODEV').AsCurrency;
                   cdsRepExc.FieldByName('CREAPLEXC').AsCurrency := DM1.cdsCEdu.FieldByName('CREAPLEXC').AsCurrency;
                   cdsRepExc.FieldByName('CRESINAPL').AsCurrency := DM1.cdsCEdu.FieldByName('CRESINAPL').AsCurrency;
                   cdsRepExc.FieldByName('CREFOTORG').AsDateTime := DM1.cdsCEdu.FieldByName('CREFOTORG').AsDateTime;
                   cdsRepExc.FieldByName('CRESALD').AsCurrency   := Dm1.SaldoActual(DM1.cdsCEdu.FieldByName('ASOID').AsString,DM1.cdsCEdu.FieldByName('CREDIDT').AsString,'1');
                   //Inicio HPC_201722_COB
                   //Nueva columna en reporte, nuevo opción para exportar a excel.
                   cdsRepExc.FieldByName('USUARIO').AsString     := DM1.cdsCEdu.FieldByName('USUARIO').AsString;
                   cdsRepExc.FieldByName('TIPOEXCESO').AsString     := DM1.cdsCEdu.FieldByName('TIPOEXCESO').AsString;
                   //Fin HPC_201722_COB
                   //Inicio HPC_201737_COB
                   //Nueva columna en reporte, y en archivo para exportar a excel.
                   If Not DM1.cdsCEdu.FieldByName('FECDEV').IsNull Then
                      cdsRepExc.FieldByName('FECDEV').AsDateTime    := DM1.cdsCEdu.FieldByName('FECDEV').AsDateTime;
                   //Fin HPC_201737_COB
                   DM1.cdsCEdu.Next;
                 end;

             //Inicio HPC_201722_COB
             //Nueva columna en reporte, nuevo opción para exportar a excel.
             If chkExcel.Checked Then
             Begin
                try
                  DTGDATA.DataSource := DM1.dsCEdu;
                  Screen.Cursor := crHourGlass;
                  DM1.HojaExcel('EXCESOS.'+FormatDateTime('dd-mm-yyyy',dbdtpInicio.Date)+'.'+FormatDateTime('dd-mm-yyyy',dbdtpFinal.Date),DM1.dsCEdu, DTGDATA);
                  Screen.Cursor := crDefault;
   	            except
   	              on Ex: Exception do
   	  	            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
 	                end;

             End
             Else
             Begin
                bdep.DataSource := dsRepExc;

                If chkTodos.Checked Then
                Begin
                    cdsRepExc.IndexFieldNames   := 'TIPOEXCESO;DPTODES;ASOAPENOM';

                    ppLabel80.Text := 'Fecha de Registro de Exceso del '+dbdtpInicio.Text+ ' al '+dbdtpFinal.Text;
                    ppRexcesoTodos.Print;
                    ppRexcesoTodos.Stop;
                End
                Else
                Begin
                    cdsRepExc.IndexFieldNames   := 'DPTODES;ASOAPENOM';

                    pplRango1.Text := 'Fecha de Registro de Exceso del '+dbdtpInicio.Text+ ' al '+dbdtpFinal.Text;
                    ppRexceso.Print;
                    ppRexceso.Stop;
                End
             End
             //Fin HPC_201722_COB
          End
       Else
          Begin
            Screen.Cursor := crDefault;
            MessageDlg('NO EXISTE INFORMACION PARA ESE RANGO !!!', mtError,[mbOk],0);
          End;
       Screen.Cursor := crDefault;
       DM1.cdsCEdu.Close;
       DM1.cdsCEdu.IndexFieldNames   := '';
    End

 else if DM1.xopc1='2' Then //Reporte de Aplicaciones y Devoluciones
    Begin
      XSQL:=
       'SELECT A.NUMDEV||A.ORINUMOPE||A.ORICREDID||A.ORICUO KEY,D.DPTOID,E.DPTODES,FORPAGID,'+
       'CASE WHEN NROOPE IS NULL THEN ''EFE:''||NUMDEV ELSE NROOPE END DOCUMENTO,A.* FROM '+
       '(SELECT ''APL'' TIP,A.USUARIO,A.UPROID,A.USEID,A.UPAGOID,A.CREFPAG,A.NROOPE,A.FREG,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,SUBSTR(A.CREDID,9,7) CREDID,A.CRECUOTA, '+
//Inicio: DPP_201212_COB
//     'A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CREMTOCOB,SUBSTR(A.ORICREDID,9,7)ORICREDID,TO_NUMBER(A.ORICUO)ORICUO,A.ORINUMOPE,'+
       'A.CREAMORT,A.CREINTERES,A.MONCOBDESGRAV,A.CREFLAT,A.CREMTOCOB,SUBSTR(A.ORICREDID,9,7)ORICREDID,TO_NUMBER(A.ORICUO)ORICUO,A.ORINUMOPE,'+
//Fin: DPP_201212_COB
       'B.CREMTODEV CREEXT,B.NUMDEV,C.CREFPAG ORIFEGPAG,C.CCBCOID ORICTABCO,C.FORPAGID ,C.FORPAGABR ORIFORPAG,C.FREG ORIFREG  FROM  '+
//Inicio: DPP_201212_COB
//     '(SELECT USUARIO,UPROID,USEID,UPAGOID,CREFPAG,NROOPE,FREG,ASOID,ASOCODMOD,ASOAPENOM,CREDID,CRECUOTA,CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,SUBSTR(CREOBS,17,15) ORICREDID,SUBSTR(CREOBS,33,3) ORICUO,SUBSTR(CREOBS,37,10) ORINUMOPE '+
       '(SELECT USUARIO,UPROID,USEID,UPAGOID,CREFPAG,NROOPE,FREG,ASOID,ASOCODMOD,ASOAPENOM,CREDID,CRECUOTA,CREAMORT,CREINTERES,MONCOBDESGRAV,CREFLAT,CREMTOCOB,SUBSTR(CREOBS,17,15) ORICREDID,SUBSTR(CREOBS,33,3) ORICUO,SUBSTR(CREOBS,37,10) ORINUMOPE '+
//Fin: DPP_201212_COB
       'FROM CRE310 WHERE FREG>='''+dbdtpInicio.Text+''' AND FREG<='''+dbdtpFinal.Text+''' AND FORPAGOABR=''APL'' AND TRANSINTID=''APL'' AND CREESTID NOT IN (''13'',''04'',''99'')  ORDER BY CREDID,CRECUOTA) A,'+
       '(SELECT * FROM CRE310 WHERE  FREG>='''+dbdtpInicio.Text+''' AND FREG<='''+dbdtpFinal.Text+''' AND FORPAGOABR=''DEV'' AND TRANSINTID=''DEV'' AND NUMDEV IS NOT NULL AND CREESTID <>''13''  ORDER BY CREDID,CRECUOTA)B,CRE310 C '+
       'WHERE A.ASOID=B.ASOID(+) AND A.ORICREDID=B.CREDID(+) AND  A.ORICUO=B.CRECUOTA(+) AND  A.ORINUMOPE=B.NROOPE(+) AND '+
       'C.ASOID=A.ASOID  AND C.CREDID=A.ORICREDID AND C.CRECUOTA=A.ORICUO AND C.NROOPE=A.ORINUMOPE AND C.CREESTID NOT IN (''13'',''04'',''99'') AND C.NUMDEV IS NOT NULL '+
       ' UNION ALL '+
       'SELECT ''DEV'' TIP,A.USUARIO,A.UPROID,A.USEID,A.UPAGOID,A.CREFPAG,C.DOCOFI NROOPE,A.FREG,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,SUBSTR(A.CREDID,9,7) CREDID,A.CRECUOTA, '+
//Inicio: DPP_201212_COB
//     '0 CREAMORT,0 CREINTERES,0 CREFLAT,B.CREMTODEV CREMTOCOB,SUBSTR(B.CREDID,9,7) ORICREDID,B.CRECUOTA ORICUO,B.NROOPE ORINUMOPE, '+
       '0 CREAMORT,0 CREINTERES,0 MONCOBDESGRAV,0 CREFLAT,B.CREMTODEV CREMTOCOB,SUBSTR(B.CREDID,9,7) ORICREDID,B.CRECUOTA ORICUO,B.NROOPE ORINUMOPE, '+
//Fin: DPP_201212_COB
       'B.CREMTOCOB CREEXT,B.NUMDEV,B.CREFPAG ORIFEGPAG,B.CCBCOID ORICTABCO,B.FORPAGID,B.FORPAGABR ORIFORPAG,B.FREG ORIFREG  FROM '+
       '(SELECT USUARIO,UPROID,USEID,UPAGOID,CREFPAG,FREG,ASOID,ASOCODMOD,ASOAPENOM,CREDID,CRECUOTA,CREMTODEV,NUMDEV,NROOPE FROM CRE310 WHERE  FREG>='''+dbdtpInicio.Text+''' AND FREG<='''+dbdtpFinal.Text+''' AND FORPAGOABR=''DEV'' AND TRANSINTID=''DEV'' '+
       ' AND NUMDEV IS NOT NULL AND CREESTID <>''13''  ORDER BY CREDID,CRECUOTA)A,CRE310 B,MDEVCAB C '+
       'WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND  A.CRECUOTA=B.CRECUOTA AND  A.NROOPE=B.NROOPE AND B.CREESTID NOT IN (''13'',''04'',''99'') AND B.CREMTODEV>0 AND B.NUMDEV IS NOT NULL AND B.NUMDEV=C.ASONUMDEV(+) AND TO_CHAR(B.FREG,''YYYY'')=C.ASOANODEV(+) )A,' +
        'APO102 D,APO158 E WHERE A.UPROID=D.UPROID(+) AND D.DPTOID=E.DPTOID(+) '+ xWhere2+xWhere2+xWhere4+xWhere5+ 'ORDER BY A.NUMDEV,A.ORINUMOPE,A.ORICREDID,A.ORICUO ';
       DM1.cdsCEdu.Close;
       DM1.cdsCEdu.DataRequest(XSQL);
       DM1.cdsCEdu.Open;
       DM1.cdsCEdu.IndexFieldNames   := 'KEY';
       ppLFecha2.Text := 'Fechas de Registro Del '+dbdtpInicio.Text+ ' al '+dbdtpFinal.Text;
       If DM1.cdsCEdu.RecordCount > 0 Then
          Begin
             bdep.DataSource := DM1.dsCEdu;
             ppRAplicDev.Print;
             ppRAplicDev.Stop;
          End
       Else
          Begin
             Screen.Cursor := crDefault;
             MessageDlg('NO EXISTE INFORMACION PARA ESE RANGO !!!', mtError,[mbOk],0);
          End;
       Screen.Cursor := crDefault;
       DM1.cdsCEdu.Close;
       DM1.cdsCEdu.IndexFieldNames   := '';
    End;

end;

procedure TFRepExcesos.chkAplicadosClick(Sender: TObject);
begin

 If  chkAplicados.Checked = True Then
  Begin
    chkTodos.Checked     := False;
    chksinAplicar.Checked:= False;
    chkdevueltos.Checked := False;
  End;

end;

procedure TFRepExcesos.chkdevueltosClick(Sender: TObject);
begin
 If chkdevueltos.Checked = True Then
  Begin
    chkTodos.Checked     := False;
    chksinAplicar.Checked:= False;
    chkAplicados.Checked := False;
  End;

end;

procedure TFRepExcesos.chksinAplicarClick(Sender: TObject);
begin
 If chksinAplicar.Checked = True Then
  Begin
    chkTodos.Checked     := False;
    chkdevueltos.Checked := False;
    chkAplicados.Checked := False;
  End;

end;

procedure TFRepExcesos.dblFPagExit(Sender: TObject);
begin
if Length(Trim(dblFPag.Text))=0 Then edtFPago.Text:='' Else 
edtFPago.Text := DM1.cdsFPago.FieldByName('FORPAGODES').AsString ;
end;

procedure TFRepExcesos.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

end.
