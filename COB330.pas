unit COB330;
// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB330
// Formulario           : FDescargoAJUSTE
// Fecha de Creación    : 24/11/2015
// Autor                : Ricardo Medina.
// Objetivo             : Cancelación del Crédito por concepto de AJUSTE
// Actualizaciones      :
// HPC_201523_COB       : Creacion de Opción
// HPC_201524_COB		: Regularización - Se debe obtener el valor máximo del periodo de cartera
// HPC_201721_COB   : Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
// HPC_201733_COB   : Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)


//Inicio  HPC_201523_COB
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, DB, DBClient, StdCtrls,
  Buttons, DBGrids, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, ppEndUsr,
  ppDB, ppDBPipe, ppParameter, ppBands, ppClass, ppReport, ppStrtch,
  ppSubRpt, ppCtrls, jpeg, ppPrnabl, ppVar, ppCache, ppComm, ppRelatv,
  ppProd;

type
  TFDescargoAJUSTE = class(TForm)
    DSAJUSTE: TDataSource;
    Label1: TLabel;
    grbfiltro: TGroupBox;
    grbDetalle: TGroupBox;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DBGAJUSTE: TwwDBGrid;
    BitBtn5: TBitBtn;
    btnProcesa: TBitBtn;
    fcShapeBtn3: TfcShapeBtn;
    dtgData: TDBGrid;
    edtSaldo: TEdit;
    SpeedButton1: TSpeedButton;
    edtAno: TEdit;
    edtMes: TEdit;
    btnFiltrar: TBitBtn;
    edtNUMAJU: TEdit;
    pnlEstatus: TPanel;
    Shape1: TShape;
    CDSAJUSTE: TClientDataSet;
    Shape3: TShape;
    Shape4: TShape;
    Shape2: TShape;
    Shape6: TShape;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblUSUAPRCOB: TLabel;
    lblUSUAPRCON: TLabel;
    lblUSUPRO: TLabel;
    lblFECAPRCOB: TLabel;
    lblFECAPRCON: TLabel;
    lblFECPRO: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    edtMarca: TEdit;
    btnAnula: TSpeedButton;
    btnImprime: TSpeedButton;
    ppREstCta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel21: TppLabel;
    ppLblCodMod: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    pplblTipCre: TppLabel;
    pplblNomGen: TppLabel;
    pplblNumPre: TppLabel;
    ppLabel25: TppLabel;
    pplblFecPre: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    pplblUse: TppLabel;
    pplblMonto: TppLabel;
    ppLabel28: TppLabel;
    pplblNumCuo: TppLabel;
    ppLabel29: TppLabel;
    pplblTipCli: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppShpImg: TppShape;
    ppImage1: TppImage;
    ppLabel20: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLblInt: TppLabel;
    ppLblFlat: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLblCuenta: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLblOriOto: TppLabel;
    pplblRotulo: TppLabel;
    pplblRot02: TppLabel;
    ppLblTipDes: TppLabel;
    ppLblEstado: TppLabel;
    ppLblCuotas: TppLabel;
    ppLabel76: TppLabel;
    ppLabel71: TppLabel;
    ppLabel70: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    pplblTipCliOtorg: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLblRegimen: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLblDirDom: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLblTelefono: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLblDiasAtraso: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLblFirmoAutorizacion: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLblProvision: TppLabel;
    ppLabel102: TppLabel;
    ppLabel136: TppLabel;
    ppLblDesgravamen: TppLabel;
    lblGasRef: TppLabel;
    lblMonGasRef: TppLabel;
    ppLabel12: TppLabel;
    ppLabel166: TppLabel;
    ppImage2: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    lblSalTot: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLblCuoVen: TppLabel;
    pplblCuoPen: TppLabel;
    ppLabel32: TppLabel;
    pplblMonPag: TppLabel;
    ppLNota1: TppLabel;
    ppLine7: TppLine;
    ppLabel43: TppLabel;
    ppLabel46: TppLabel;
    ppLabel45: TppLabel;
    ppLabel44: TppLabel;
    ppLblUser: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLblApro: TppLabel;
    ppLNota2: TppLabel;
    ppLabel33: TppLabel;
    lblVen: TppLabel;
    lblPen: TppLabel;
    lblTot: TppLabel;
    ppLabel69: TppLabel;
    ppLabel75: TppLabel;
    ppLabel74: TppLabel;
    ppLabel73: TppLabel;
    ppLabel72: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLblCuoDif: TppLabel;
    lblDif: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppRepCCI: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape5: TppShape;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel176: TppLabel;
    ppLabel180: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel181: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine22: TppLine;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel182: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
// Inicio HPC_201733_COB   
  //Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
    //ppLabel10: TppLabel;
// Fin HPC_201733_COB   
    ppLabel11: TppLabel;
    lblGas02: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel58: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppParameterList1: TppParameterList;
    ppDBEstCta: TppDBPipeline;
    ppDesigner1: TppDesigner;
    ppDBCCI: TppDBPipeline;
    SpeedButton3: TSpeedButton;
    BitBtn18: TBitBtn;
    pnlMetodo: TPanel;
    Image1: TImage;
    Shape5: TShape;
    BitBtn1: TBitBtn;
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGAJUSTEDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edtMesKeyPress(Sender: TObject; var Key: Char);
    procedure edtSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure btnFiltrarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnProcesaClick(Sender: TObject);
    procedure btnAnulaClick(Sender: TObject);
    procedure edtMesExit(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGAJUSTECalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
    procedure sumafooterAJUSTE;
    procedure sumamarcador;
    procedure cargadatos(VNUMAJUSTE: String);
    function  VerAjuExit():Boolean;
    procedure controles();
  public
    { Public declarations }
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
    vsuma,vsuma_sal :double;
// Fin HPC_201733_COB   
    vmarcadesmarva:String;
    Function CalculaProvision(xAsoID: String): Currency;
  end;

var
  FDescargoAJUSTE: TFDescargoAJUSTE;

implementation
Uses COBDM1, Math, COB331;

{$R *.dfm}

procedure TFDescargoAJUSTE.sumafooterAJUSTE;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
var TIMPCARAJU,TIMPAJU,TIMPAPL, SAL_INT,SAL_CAP,SAL_FLAT,SAL_FDD : double;
// Fin HPC_201733_COB   
begin
  DBGAJUSTE.Columns[0].ReadOnly  := True;  
  DBGAJUSTE.Columns[1].ReadOnly  := True;
  DBGAJUSTE.Columns[2].ReadOnly  := True;
  DBGAJUSTE.Columns[3].ReadOnly  := True;
  DBGAJUSTE.Columns[4].ReadOnly  := True;
  DBGAJUSTE.Columns[5].ReadOnly  := True;
  DBGAJUSTE.Columns[6].ReadOnly  := True;
  DBGAJUSTE.Columns[7].ReadOnly  := True;
  DBGAJUSTE.Columns[8].ReadOnly  := True;
  DBGAJUSTE.Columns[9].ReadOnly  := True;
  DBGAJUSTE.Columns[10].ReadOnly  := True;
  DBGAJUSTE.Columns[11].ReadOnly  := True;
  DBGAJUSTE.Columns[12].ReadOnly  := True;

  CDSAJUSTE.DisableControls;
  CDSAJUSTE.First;
  TIMPCARAJU:=0;
  TIMPAJU:=0;
  TIMPAPL:=0;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
  SAL_INT:=0;
  SAL_CAP:=0;
  SAL_FLAT:=0;
  SAL_FDD:=0;
// Fin HPC_201733_COB   
  While Not CDSAJUSTE.Eof do
  Begin
    TIMPAJU    := TIMPAJU+CDSAJUSTE.FieldByname('IMPAJU').AsFloat;
    TIMPCARAJU := TIMPCARAJU+CDSAJUSTE.FieldByname('IMPCARAJU').AsFloat;
    TIMPAPL    := TIMPAPL+CDSAJUSTE.FieldByname('IMPAPL').AsFloat;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
    SAL_INT    := SAL_INT+CDSAJUSTE.FieldByname('SAL_INT').AsFloat;
    SAL_CAP    := SAL_CAP+CDSAJUSTE.FieldByname('SAL_CAP').AsFloat;
    SAL_FLAT    := SAL_FLAT+CDSAJUSTE.FieldByname('SAL_FLAT').AsFloat;
    SAL_FDD    := SAL_FDD+CDSAJUSTE.FieldByname('SAL_FDD').AsFloat;
// Fin HPC_201733_COB   
    CDSAJUSTE.Next;
  End;
  DBGAJUSTE.ColumnByName('ASOAPENOM').FooterValue := 'Totales';
  DBGAJUSTE.ColumnByName('IMPAJU').FooterValue := FormatFloat('###,###,##0.00', TIMPAJU);
  DBGAJUSTE.ColumnByName('IMPCARAJU').FooterValue := FormatFloat('###,###,##0.00', TIMPCARAJU);
  DBGAJUSTE.ColumnByName('IMPAPL').FooterValue := FormatFloat('###,###,##0.00', TIMPAPL);
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
  DBGAJUSTE.ColumnByName('SAL_INT').FooterValue := FormatFloat('###,###,##0.00', SAL_INT);
  DBGAJUSTE.ColumnByName('SAL_CAP').FooterValue := FormatFloat('###,###,##0.00', SAL_CAP);
  DBGAJUSTE.ColumnByName('SAL_FLAT').FooterValue := FormatFloat('###,###,##0.00', SAL_FLAT);
  DBGAJUSTE.ColumnByName('SAL_FDD').FooterValue := FormatFloat('###,###,##0.00', SAL_FDD);
// Fin HPC_201733_COB   
  CDSAJUSTE.EnableControls;
end;


procedure TFDescargoAJUSTE.fcShapeBtn3Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFDescargoAJUSTE.BitBtn6Click(Sender: TObject);
begin
   dtgData.DataSource:=DM1.dsQry2 ;
   DM1.HojaExcel('CANDIDATOS MAYORES DE 65',dtgData.DataSource,dtgData);
end;

procedure TFDescargoAJUSTE.FormCreate(Sender: TObject);
begin
  DBGAJUSTE.Selected.Clear;
  DBGAJUSTE.Selected.Add('FLAG'#9'2'#9'  '#9#9);
  DBGAJUSTE.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Modular'#9#9);
  DBGAJUSTE.Selected.Add('ASOAPENOM'#9'20'#9'Apellidos y Nombres'#9#9);
  DBGAJUSTE.Selected.Add('CREDID'#9'15'#9'Crédito'#9#9);
  DBGAJUSTE.Selected.Add('IMPCARAJU'#9'10'#9'Imp. Cartera ~ Ajustar'#9#9);
  DBGAJUSTE.Selected.Add('IMPAJU'#9'10'#9'Importe ~ Ajustar'#9#9);
  DBGAJUSTE.Selected.Add('MTOOTORG'#9'10'#9'Importe ~ Otorgado'#9#9);
  DBGAJUSTE.Selected.Add('CALIFICACION'#9'15'#9'Calificación'#9#9);
  edtAno.Text := copy(DateToStr(dm1.FechaSys),7,4);
  edtMes.Text := copy(DateToStr(dm1.FechaSys),4,2);

end;

procedure TFDescargoAJUSTE.DBGAJUSTEDblClick(Sender: TObject);
begin

 If ( (CDSAJUSTE.FieldByName('impaju').AsFloat>0) and (CDSAJUSTE.FieldByName('impaju').AsFloat <= dm1.Valores(edtSaldo.Text))) and  (Length(trim(edtNUMAJU.Text))=0) then
 Begin
 If vmarcadesmarva='S' Then
 Begin
   If CDSAJUSTE.FieldByName('FLAG').AsString = '1' Then
   Begin
      CDSAJUSTE.Edit;
      CDSAJUSTE.FieldByName('FLAG').AsString := '0';
      If  CDSAJUSTE.FieldByName('FLAG').AsString='0' Then   vsuma:= DM1.FRound(vsuma-CDSAJUSTE.FieldByName('impaju').AsFloat,15,2);
   End
   Else
   Begin
      CDSAJUSTE.Edit;
      CDSAJUSTE.FieldByName('FLAG').AsString := '1' ;
      If  CDSAJUSTE.FieldByName('FLAG').AsString='1' Then   vsuma:=DM1.FRound(vsuma+CDSAJUSTE.FieldByName('impaju').AsFloat,15,2);
   End;
   edtMarca.Text := FloatToStr(vsuma);
 End;
 End
 Else
 Begin
  If Length(trim(edtNUMAJU.Text))=0 Then
     ShowMessage('El registro que quiere seleccionar no cumple la condición de saldo <= 5 Nuevos soles, verifique la columna [Importe Ajustar]' );
 End;
end;

procedure TFDescargoAJUSTE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DM1.cdsQry1.Close;
 DM1.cdsQry1.IndexFieldNames:='';
 DM1.cdsQry2.Close;
 DM1.cdsQry2.IndexFieldNames:='';
end;

procedure TFDescargoAJUSTE.edtAnoKeyPress(Sender: TObject; var Key: Char);
begin
   If key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
   Begin
      Key := #0;
   End;
end;

procedure TFDescargoAJUSTE.edtMesKeyPress(Sender: TObject; var Key: Char);
begin
   If key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
   Begin
      Key := #0;
   End;
end;

procedure TFDescargoAJUSTE.edtSaldoKeyPress(Sender: TObject;
  var Key: Char);
begin
   If key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
   Begin
      Key := #0;
   End;
end;

procedure TFDescargoAJUSTE.btnFiltrarClick(Sender: TObject);
VAR XSQL,xperiodo:String;
    xcuenta:integer;
begin
  CDSAJUSTE.EmptyDataSet;
  pnlEstatus.Visible:= False;
  edtNUMAJU.Text:='';
  If Length(Trim(edtSaldo.Text))=0 then
  Begin
   ShowMessage('Debe ingresar sobre que saldo quiere filtrar..');
   exit;
  End;

  If (Length(Trim(edtAno.Text))=0) or (Length(Trim(edtMes.Text))=0) then
  Begin
   ShowMessage('Debe ingresar sobre qué periodo de cartera quiere verificar los saldos');
   exit;
  End;

  xperiodo:=trim(edtAno.Text)+trim(edtMes.Text);
  CDSAJUSTE.EmptyDataSet;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
  {XSQL:='SELECT ASOID,ASOCODMOD,PERIODO,CALIFICACION,ASOAPENOM,SALTOT, CREDIDT,CREFOTORG,CREMTOOTOR,(NVL(TOT_VEN,0)+NVL(TOT_DIF,0)+NVL(TOT_PEN,0)) TOT_AJU '+
        'FROM  (SELECT  A.ASOID,A.ASOCODMOD,A.PERIODO,MAX(A.CFCDES_F)CALIFICACION,A.ASOAPENOM,SUM(NVL(A.SALTOT,0))SALTOT,B.Credid CredidT,'+
        '       MAX(D.CREMTOOTOR)CREMTOOTOR,substr(B.Credid,9,7)Credid,B.Tipcreid,D.Tipcredes,'+
        '       D.Crefotorg,MIN(B.Crefven) FEC_VEN_ANT, max(B.Crecuota)NUM_CUOTA,'+
        '       max(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'')) '+
        '           THEN TO_DATE(SYSDATE)-TO_DATE(B.CREFVEN) END) DIAS_ATRA,'+
        '       sum(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'')) '+
        '           AND (B.CREFVEN=B.CREFVENINI OR B.CREFVENINI IS NULL) THEN 1 END) CUO_VEN,'+
        '       sum(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'')) '+
        '           AND (B.CREFVEN=B.CREFVENINI OR B.CREFVENINI IS NULL) THEN NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0)  END) TOT_VEN,'+
        '       sum(CASE WHEN (B.CREFVENINI IS NOT NULL) AND (B.CREFVEN<>B.CREFVENINI)  THEN 1 END) CUO_DIF,'+
        '       sum(CASE WHEN (B.CREFVENINI IS NOT NULL) AND (B.CREFVEN<>CREFVENINI)    THEN NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0)  END) TOT_DIF,'+
        '       sum(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) AND (B.CREFVEN=B.CREFVENINI OR B.CREFVENINI IS NULL) THEN 1 END) CUO_PEN,'+
        '       sum(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) AND (B.CREFVEN=B.CREFVENINI OR B.CREFVENINI IS NULL) '+
        '          THEN (NVL(B.CREAMORT,0)+NVL(B.CREFLAT,0)+NVL(B.MONPACDESGRAV,0))-NVL(B.CREMTOCOB,0) END) TOT_PEN '+
        'FROM CFC000 A ,CRE302 B,CRE301 D '+
        'WHERE A.PERIODO='''+xperiodo+''' AND A.SALTOT<='+trim(edtSaldo.Text)+' AND  A.ASOID=B.ASOID(+)  AND B.CREESTID  IN (''14'',''02'',''27'',''11'') AND '+
        '     (D.ASOID(+)=B.ASOID  AND D.CREDID(+)=B.CREDID) '+
        'GROUP BY A.ASOID,A.ASOCODMOD,A.PERIODO,A.ASOAPENOM,B.Credid,B.Tipcreid,D.Crefotorg,D.Tipcredes) '+
        ' UNION ALL '+
        'SELECT  ASOID,ASOCODMOD,PERIODO,CFCDES_F CALIFICACION, ASOAPENOM, SALTOT,'''' CREDIDT, NULL CREFOTORG,0CREMTOOTOR,0 TOT_CAS '+
        'FROM CFC000 A  WHERE A.PERIODO='''+xperiodo+''' AND A.SALTOT<='+trim(edtSaldo.Text) +
        ' ORDER BY ASOAPENOM ';}
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
   XSQL:='WITH CONSALDOS AS '
         +'(SELECT /* + RULE */ ASOID,CREDID  FROM CRE301 A '
         +' WHERE CREESTID=''02'' AND '
         +' NOT EXISTS(Select ASOID,CREDID,SALTOT '
         +'            From SAL000 B '
         +'            Where B.PERIODO='''+xperiodo+''''
         +'              AND SALTOT>=10 AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID)) '
         +' SELECT ASOID,ASOCODMOD,'+xperiodo+' PERIODO,CALIFICACION,ASOAPENOM,CredidT,CREFOTORG,CREMTOOTOR,TOT_AJU,SAL_INT,SAL_CAP,SAL_FLAT,SAL_FDD '
         +' FROM ( '
         +' SELECT  /* + RULE */ A.ASOID,B.ASOCODMOD,B.ASOAPENOM,NVL(TOT_VEN,0),NVL(TOT_DIF,0),NVL(TOT_PEN,0), '
         +' NVL(TOT_VEN,0)+NVL(TOT_DIF,0)+NVL(TOT_PEN,0) TOT_AJU,NVL(SAL_INT, 0) SAL_INT,NVL(SAL_CAP, 0) SAL_CAP,NVL(SAL_FLAT, 0) SAL_FLAT,NVL(SAL_FDD, 0) SAL_FDD, '
         +' A.CredidT,A.Tipcreid,A.FEC_VEN_ANT,A.NUM_CUOTA,A.DIAS_ATRA, '
         +' C.CREFOTORG,C.CREMTOOTOR, '
         +' (Select CFCDES_F from cfc000 where asoid=a.asoid and periodo='''+xperiodo+''') CALIFICACION '
         +' From( '
         +' SELECT  B.ASOID, '
         +' C.Credid CredidT, '
         +' substr(C.Credid, 9, 7) Credid, '
         +' C.Tipcreid, '
         +' MIN(C.Crefven) FEC_VEN_ANT, '
         +' max(C.Crecuota) NUM_CUOTA, '
         +' max(CASE WHEN (TO_CHAR(C.CREFVEN, ''YYYYMM'') <= TO_CHAR(SYSDATE, ''YYYYMM'')) THEN TO_DATE(SYSDATE) - TO_DATE(C.CREFVEN)  END) DIAS_ATRA, '
         +' sum(CASE WHEN (TO_CHAR(C.CREFVEN, ''YYYYMM'') <= TO_CHAR(SYSDATE, ''YYYYMM'')) AND (C.CREFVEN = C.CREFVENINI OR  C.CREFVENINI IS NULL) THEN  1 END) CUO_VEN, '
         +' sum(CASE WHEN (TO_CHAR(C.CREFVEN, ''YYYYMM'') <= TO_CHAR(SYSDATE, ''YYYYMM'')) AND (C.CREFVEN = C.CREFVENINI OR  C.CREFVENINI IS NULL) THEN NVL(C.CREMTO, 0) - NVL(C.CREMTOCOB, 0) END) TOT_VEN, '
         +' sum(CASE WHEN (C.CREFVENINI IS NOT NULL) AND (C.CREFVEN <> C.CREFVENINI) THEN 1 END) CUO_DIF, '
         +' sum(CASE WHEN (C.CREFVENINI IS NOT NULL) AND (C.CREFVEN <> C.CREFVENINI) THEN NVL(C.CREMTO, 0) - NVL(C.CREMTOCOB, 0) END) TOT_DIF, '
         +' sum(CASE WHEN (TO_CHAR(C.CREFVEN, ''YYYYMM'') <= TO_CHAR(SYSDATE, ''YYYYMM'')) OR ((C.CREFVEN <> C.CREFVENINI) AND (C.CREFVENINI IS NULL)) '
         +'          THEN NVL(C.CREINTERES, 0) - NVL(C.CREMTOINT, 0) END) SAL_INT,SUM( NVL(C.CREAMORT, 0) - NVL(C.CRECAPITAL, 0) ) SAL_CAP, '
         +'               SUM( NVL(C.CREFLAT, 0) - NVL(C.CREMTOFLAT, 0) ) SAL_FLAT, SUM( NVL(C.MONPACDESGRAV, 0) - NVL(C.MONCOBDESGRAV, 0) ) SAL_FDD, '
         +' sum(CASE WHEN (TO_CHAR(C.CREFVEN, ''YYYYMM'') > TO_CHAR(SYSDATE, ''YYYYMM'')) AND (C.CREFVEN = C.CREFVENINI OR C.CREFVENINI IS NULL) THEN 1 END) CUO_PEN, '
         +' sum(CASE WHEN (TO_CHAR(C.CREFVEN, ''YYYYMM'') > TO_CHAR(SYSDATE, ''YYYYMM'')) AND (C.CREFVEN = C.CREFVENINI OR C.CREFVENINI IS NULL) THEN '
         +' (NVL(C.CREAMORT, 0) + NVL(C.CREFLAT, 0) +  NVL(C.CREINTERES, 0) + NVL(C.MONPACDESGRAV, 0)) - NVL(C.CREMTOCOB, 0) END) TOT_PEN '
         +' FROM CONSALDOS B, '
         +' CRE302 C '
         +' WHERE '
         +' C.ASOID = B.ASOID '
         +' AND C.CREDID = B.CREDID '
         +' AND C.CREESTID IN (''14'', ''02'', ''27'', ''11'') '
         +' GROUP BY  B.ASOID,C.Credid,C.Credid,C.Tipcreid) A, '
         +' APO201 B, '
         +' CRE301 C '
         +' WHERE B.ASOID=A.ASOID '
         +' AND C.ASOID=A.ASOID AND C.CREDID=A.CredidT AND C.CREESTID=''02'') '
         +' WHERE TOT_AJU<='+trim(edtSaldo.Text);
// Fin HPC_201733_COB
// Fin HPC_201721_COB
   Screen.Cursor := crHourGlass;
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(XSQL);
   DM1.cdsQry1.Open;
   If Dm1.cdsQry1.RecordCount=0 then
   Begin
     ShowMessage('No existe información para mostrar, verifique los parámetros del filtro e inténtelo nuevamente..');
     DBGAJUSTE.ColumnByName('IMPAJU').FooterValue := FormatFloat('###,###,##0.00', 0);
     DBGAJUSTE.ColumnByName('IMPCARAJU').FooterValue := FormatFloat('###,###,##0.00', 0);
     DBGAJUSTE.ColumnByName('IMPAPL').FooterValue := FormatFloat('###,###,##0.00', 0);
     Screen.Cursor := crDefault;
     Exit;
   End;

  CDSAJUSTE.EmptyDataSet;
  TNumericField(CDSAJUSTE.fieldbyname('IMPAJU')).DisplayFormat    := '###,###,##0.#0';
  TNumericField(CDSAJUSTE.fieldbyname('IMPCARAJU')).DisplayFormat := '###,###,##0.#0';
  TNumericField(CDSAJUSTE.fieldbyname('MTOOTORG')).DisplayFormat  := '###,###,##0.#0';
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
  TNumericField(CDSAJUSTE.fieldbyname('SAL_INT')).DisplayFormat  := '###,###,##0.#0';
  TNumericField(CDSAJUSTE.fieldbyname('SAL_CAP')).DisplayFormat  := '###,###,##0.#0';
  TNumericField(CDSAJUSTE.fieldbyname('SAL_FLAT')).DisplayFormat  := '###,###,##0.#0';
  TNumericField(CDSAJUSTE.fieldbyname('SAL_FDD')).DisplayFormat  := '###,###,##0.#0';
// Fin HPC_201733_COB
  CDSAJUSTE.IndexFieldNames :='IMPAJU';
   xcuenta:=0;
   If DM1.cdsQry1.RecordCount>0 Then
   Begin
     DM1.cdsQry1.First;
     While not DM1.cdsQry1.Eof do
     Begin
       CDSAJUSTE.Append;
       If (DM1.cdsQry1.Fieldbyname('TOT_AJU').AsFloat <= StrToInt(edtSaldo.Text)) AND
          (DM1.cdsQry1.Fieldbyname('TOT_AJU').AsFloat>0) Then
       Begin
          CDSAJUSTE.FieldByName('FLAG').AsString   := '1';
          xcuenta:=xcuenta+1;
       End;
       CDSAJUSTE.FieldByName('ASOID').AsString       := DM1.cdsQry1.Fieldbyname('ASOID').AsString;
       CDSAJUSTE.FieldByName('ASOCODMOD').AsString   := DM1.cdsQry1.Fieldbyname('ASOCODMOD').AsString;
       CDSAJUSTE.FieldByName('ASOAPENOM').AsString   := DM1.cdsQry1.Fieldbyname('ASOAPENOM').AsString;
       CDSAJUSTE.FieldByName('CREDID').AsString      := DM1.cdsQry1.Fieldbyname('CREDIDT').AsString;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
       //CDSAJUSTE.FieldByName('IMPCARAJU').AsFloat    := DM1.cdsQry1.Fieldbyname('SALTOT').AsFloat;
// Fin HPC_201721_COB
       CDSAJUSTE.FieldByName('IMPAJU').AsFloat       := DM1.cdsQry1.Fieldbyname('TOT_AJU').AsFloat;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
       CDSAJUSTE.FieldByName('SAL_INT').AsFloat   := DM1.cdsQry1.Fieldbyname('SAL_INT').AsFloat;
       CDSAJUSTE.FieldByName('SAL_CAP').AsFloat   := DM1.cdsQry1.Fieldbyname('SAL_CAP').AsFloat;
       CDSAJUSTE.FieldByName('SAL_FLAT').AsFloat   := DM1.cdsQry1.Fieldbyname('SAL_FLAT').AsFloat;
       CDSAJUSTE.FieldByName('SAL_FDD').AsFloat   := DM1.cdsQry1.Fieldbyname('SAL_FDD').AsFloat;
// Fin HPC_201733_COB
       CDSAJUSTE.FieldByName('IMPAPL').AsFloat       := 0;
       CDSAJUSTE.FieldByName('CALIFICACION').AsString:= DM1.cdsQry1.Fieldbyname('CALIFICACION').AsString;
       CDSAJUSTE.FieldByName('MTOOTORG').AsFloat     := DM1.cdsQry1.Fieldbyname('CREMTOOTOR').AsFloat;
       If  CDSAJUSTE.FieldByName('CREFOTORG').AsString <> '30/12/1899' Then
       CDSAJUSTE.FieldByName('CREFOTORG').AsString   := DM1.cdsQry1.Fieldbyname('CREFOTORG').AsString;
       DM1.cdsQry1.Next;
     End;
   End;
   sumamarcador;
   sumafooterAJUSTE;
   CDSAJUSTE.First;
   Screen.Cursor := crDefault;

   //Primero verifica que esta información no este para aprobación de ajuste
   If not VerAjuExit Then
   Begin
     ShowMessage('El asociado '+DM1.cdsQry2.fieldbyname('ASOAPENOM').AsString+'-'+DM1.cdsQry2.fieldbyname('CREDID').AsString +' Se encuentra pendiente de ajuste, verifique antes de continuar..');
     cargadatos(DM1.cdsQry2.FieldByname('NUMAJU').AsString);
     controles;
     exit;
   End; 

    controles;
   If xcuenta>0 then
         ShowMessage('Segun los criterios hay '+IntToStr(xcuenta)+' cronogramas para AJUSTAR..')
   Else  ShowMessage('Segun los criterios No hay cronogramas para AJUSTAR...');
end;

procedure TFDescargoAJUSTE.SpeedButton1Click(Sender: TObject);
VAR XSQL:STRING;
    XNUMAJU:STRING;
    XPERIODO:STRING;
    XIMPAJU,XIMPCARAJU: Double;
begin
   If  CDSAJUSTE.RecordCount=0 Then
   Begin
    ShowMessage('No existe información para envío a aprobación');
    Exit;
   End;
    pnlEstatus.Visible:= False;
   If MessageDlg('¿Está Seguro(a) de Pasar para su APROBACIÓN? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
   
     //Primero verifica que esta información no este para aprobación de ajuste
     If not VerAjuExit Then
     Begin
       ShowMessage('El asociado '+DM1.cdsQry2.fieldbyname('ASOAPENOM').AsString+'-'+DM1.cdsQry2.fieldbyname('CREDID').AsString +' Se encuentra pendiente de ajuste, verifique antes de continuar..');
       cargadatos(DM1.cdsQry2.FieldByname('NUMAJU').AsString);
       controles;
       exit;
     End;

     //busco numero de AJUSTE
     XPERIODO:=  COPY(DateToStr(DM1.FechaSys),7,4)+COPY(DateToStr(DM1.FechaSys),4,2);
     XSQL:='SELECT MAX(NUMAJU)+1 NUEVOAJU FROM COB_APL_AJUSTE_CAB WHERE SUBSTR(NUMAJU,1,6)='''+XPERIODO+''' ';
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest(XSQL);
     DM1.cdsQry2.Open;
     If (DM1.cdsQry2.RecordCount=0) or (Length(trim(DM1.cdsQry2.FieldByname('NUEVOAJU').AsString))=0) Then
          XNUMAJU:=XPERIODO+'000000001'
     else XNUMAJU:=DM1.cdsQry2.FieldByname('NUEVOAJU').AsString;

      CDSAJUSTE.First;
      XIMPAJU:=0;
      While NOT CDSAJUSTE.Eof Do
      Begin
         If CDSAJUSTE.FieldByName('FLAG').AsString = '1' Then
            XIMPAJU    := XIMPAJU+CDSAJUSTE.FieldByName('IMPAJU').AsFloat;
        CDSAJUSTE.Next;
      End;
      If  XIMPAJU=0 Then
      Begin
       ShowMessage('No existe cuotas para aplicar, verifique...');
       exit;
      End;
    //Adiciono detalle
      CDSAJUSTE.First;
      XIMPAJU   := 0;
      XIMPCARAJU:=0;
      While NOT CDSAJUSTE.Eof Do
      Begin
        If CDSAJUSTE.FieldByName('FLAG').AsString = '1' Then
        Begin
         XIMPAJU    := XIMPAJU+CDSAJUSTE.FieldByName('IMPAJU').AsFloat;
         XIMPCARAJU := XIMPCARAJU+CDSAJUSTE.FieldByName('IMPCARAJU').AsFloat;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
         Xsql:='Insert Into COB_APL_AJUSTE_DET(numaju,asoid,asocodmod,asoapenom,credid,calificacion,cremtootor,crefotorg,impcaraju,impaju,sal_int,sal_cap,sal_flat,sal_fdd,usucre,feccre) values('''+
                XNUMAJU+''','''+
                CDSAJUSTE.FieldByName('ASOID').AsString+''','''+
                CDSAJUSTE.FieldByName('ASOCODMOD').AsString+''','''+
                CDSAJUSTE.FieldByName('ASOAPENOM').AsString+''','''+
                CDSAJUSTE.FieldByName('CREDID').AsString+''','''+
                CDSAJUSTE.FieldByName('CALIFICACION').AsString+''','+
                FloatToStr(CDSAJUSTE.FieldByName('MTOOTORG').AsFloat)+','''+
                CDSAJUSTE.FieldByName('CREFOTORG').AsString+''','+
                FloatToStr(CDSAJUSTE.FieldByName('IMPCARAJU').AsFloat)+','+
                FloatToStr(CDSAJUSTE.FieldByName('IMPAJU').AsFloat)+','+
                FloatToStr(CDSAJUSTE.FieldByName('SAL_INT').AsFloat)+','+
                FloatToStr(CDSAJUSTE.FieldByName('SAL_CAP').AsFloat)+','+
                FloatToStr(CDSAJUSTE.FieldByName('SAL_FLAT').AsFloat)+','+
                FloatToStr(CDSAJUSTE.FieldByName('SAL_FDD').AsFloat)+','''+
// Fin HPC_201733_COB
                DM1.wUsuario+''',trunc(SYSDATE)) ';
         Try
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
          ShowMessage('ERROR AL GRABAR DETALLE DE AJUSTE...');
          EXIT;
         End;

        End;
        CDSAJUSTE.Next;
      End;

      XSQL:='Insert Into COB_APL_AJUSTE_CAB(numaju,fecaju,impcaraju,impaju,percar,refsal,usucre,feccre) Values('''+
             XNUMAJU+''',sysdate,'+
             FloatToStr(XIMPCARAJU)+','+
             FloatToStr(XIMPAJU)+','''+
             trim(edtAno.Text)+trim(edtMes.Text)+''','+
             trim(edtSaldo.Text)+','''+
             dm1.wUsuario+''',trunc(sysdate))';
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         ShowMessage('ERROR AL GRABAR CABECERA DE AJUSTE...');
         XSQL:='DELETE COB_APL_AJUSTE_DET WHERE NUMAJU='''+XNUMAJU+''' ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);  
         EXIT;
      End;

      edtNUMAJU.Text:= XNUMAJU;
      ShowMessage('SE GRABO CON EXITO');
      cargadatos(edtNUMAJU.Text);
      controles;
   end;
end;

procedure TFDescargoAJUSTE.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
end;


Procedure TFDescargoAJUSTE.cargadatos(VNUMAJUSTE: String);
VAR XSQL:STRING;
begin

  XSQL:='Select numaju, fecaju, impcaraju, impaju,impapl,codest, usuaprcon, fecaprcon, usuaprcob, fecaprcob, usupro, fecpro, percar, refsal, usucre, feccre '+
       'From COB_APL_AJUSTE_CAB '+
       'Where numaju='''+VNUMAJUSTE+''' and usupro is null ';
  Dm1.cdsQry1.Close;
  Dm1.cdsQry1.DataRequest(XSQL);
  Dm1.cdsQry1.Open;
  If Dm1.cdsQry1.RecordCount>0 Then
  Begin
      edtAno.Text    := copy(Dm1.cdsQry1.FieldByname('percar').AsString,1,4);
      edtmes.Text    := copy(Dm1.cdsQry1.FieldByname('percar').AsString,5,2);
      edtSaldo.Text  := Dm1.cdsQry1.FieldByname('refsal').AsString;
      edtNUMAJU.Text := Dm1.cdsQry1.FieldByname('numaju').AsString;
      If  Length(Trim(Dm1.cdsQry1.FieldByName('usuaprcob').AsString))>0 Then
      Begin
       lblUSUAPRCOB.Caption :=Dm1.cdsQry1.FieldByName('usuaprcob').AsString;
       lblFECAPRCOB.Caption :=copy(Dm1.cdsQry1.FieldByName('fecaprcob').AsString,1,10);
      End
      ELSE
      Begin
       lblUSUAPRCOB.Caption :='SIN APROBAR';
       lblFECAPRCOB.Caption :='';
      End;

      If  Length(Trim(Dm1.cdsQry1.FieldByName('usuaprcon').AsString))>0 Then
      Begin
       lblUSUAPRCON.Caption :=Dm1.cdsQry1.FieldByName('usuaprcon').AsString;
       lblFECAPRCON.Caption :=copy(Dm1.cdsQry1.FieldByName('fecaprcon').AsString,1,10);
      End
      ELSE
      Begin
       lblUSUAPRCON.Caption :='SIN APROBAR';
       lblFECAPRCON.Caption :='';
      End;

      If  Length(Trim(Dm1.cdsQry1.FieldByName('usupro').AsString))>0 Then
      Begin
       lblUSUPRO.Caption :=Dm1.cdsQry1.FieldByName('usupro').AsString;
       lblFECPRO.Caption :=Copy(Dm1.cdsQry1.FieldByName('fecpro').AsString,1,10);
      End
      ELSE
      Begin
       lblUSUPRO.Caption :='SIN PROCESAR';
       lblFECPRO.Caption :='';
      End;

      pnlEstatus.Visible:= True;

      CDSAJUSTE.EmptyDataSet;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
      XSQL:='Select numaju, asoid, asocodmod, asoapenom, credid, impcaraju, impaju,impapl,codest, calificacion, cremtootor, crefotorg, usupro, fecpro, usucre, feccre, sal_int, sal_cap, sal_flat, sal_fdd '+
// Fin HPC_201733_COB
            'From COB_APL_AJUSTE_DET '+
            'Where numaju='''+VNUMAJUSTE+''' ';
      Dm1.cdsQry1.Close;
      Dm1.cdsQry1.DataRequest(XSQL);
      Dm1.cdsQry1.Open;

      While not Dm1.cdsQry1.Eof Do
      Begin
        CDSAJUSTE.Append;
        CDSAJUSTE.FieldByName('FLAG').AsString        := '1';
        CDSAJUSTE.FieldByName('ASOID').AsString       := DM1.cdsQry1.Fieldbyname('ASOID').AsString;
        CDSAJUSTE.FieldByName('ASOCODMOD').AsString   := DM1.cdsQry1.Fieldbyname('ASOCODMOD').AsString;
        CDSAJUSTE.FieldByName('ASOAPENOM').AsString   := DM1.cdsQry1.Fieldbyname('ASOAPENOM').AsString;
        CDSAJUSTE.FieldByName('CREDID').AsString      := DM1.cdsQry1.Fieldbyname('CREDID').AsString;
        CDSAJUSTE.FieldByName('IMPCARAJU').AsFloat    := DM1.cdsQry1.Fieldbyname('IMPCARAJU').AsFloat;
        CDSAJUSTE.FieldByName('IMPAJU').AsFloat       := DM1.cdsQry1.Fieldbyname('IMPAJU').AsFloat;
        CDSAJUSTE.FieldByName('IMPAPL').AsFloat       := DM1.cdsQry1.Fieldbyname('IMPAPL').AsFloat;
        CDSAJUSTE.FieldByName('CALIFICACION').AsString:= DM1.cdsQry1.Fieldbyname('CALIFICACION').AsString;
        CDSAJUSTE.FieldByName('MTOOTORG').AsFloat     := DM1.cdsQry1.Fieldbyname('CREMTOOTOR').AsFloat;
        CDSAJUSTE.FieldByName('CREFOTORG').AsString   := DM1.cdsQry1.Fieldbyname('CREFOTORG').AsString;
        CDSAJUSTE.FieldByName('USUPRO').AsString      := DM1.cdsQry1.Fieldbyname('USUPRO').AsString;
        CDSAJUSTE.FieldByName('CODEST').AsString      := DM1.cdsQry1.Fieldbyname('CODEST').AsString;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
        CDSAJUSTE.FieldByName('SAL_INT').AsString      := DM1.cdsQry1.Fieldbyname('SAL_INT').AsString;
        CDSAJUSTE.FieldByName('SAL_CAP').AsString      := DM1.cdsQry1.Fieldbyname('SAL_CAP').AsString;
        CDSAJUSTE.FieldByName('SAL_FLAT').AsString      := DM1.cdsQry1.Fieldbyname('SAL_FLAT').AsString;
        CDSAJUSTE.FieldByName('SAL_FDD').AsString      := DM1.cdsQry1.Fieldbyname('SAL_FDD').AsString;
// Fin HPC_201733_COB 
        DM1.cdsQry1.Next;
      End;
  End
  Else
  Begin
     CDSAJUSTE.EmptyDataSet;
     pnlEstatus.Visible:=  False;
     edtAno.Text       := FormatDateTime('YYYY',Dm1.FechaSys);
     edtmes.Text       := FormatDateTime('MM',Dm1.FechaSys);
     edtSaldo.Text     := '5';
     edtNUMAJU.Text    := '';
  End;
   sumafooterAJUSTE;
   sumamarcador;
   CDSAJUSTE.First;
end;

procedure TFDescargoAJUSTE.BitBtn5Click(Sender: TObject);
begin
   dtgData.DataSource:=DSAJUSTE ;
   CDSAJUSTE.Filter := 'FLAG=''1'' ';
   CDSAJUSTE.Filtered := True;
   If CDSAJUSTE.RecordCount=0 Then
   Begin
    ShowMessage('No existe registro para exportar o no marco ningún registro, verifique' );
    CDSAJUSTE.Filter   := '';
    CDSAJUSTE.Filtered := False;;
    exit;
   End;
   DM1.HojaExcel('CANCELACION POR AJUSTE',dtgData.DataSource,dtgData);
   CDSAJUSTE.Filter := '';
   CDSAJUSTE.Filtered := False;
end;

procedure TFDescargoAJUSTE.btnProcesaClick(Sender: TObject);
VAR XNUMOPERACION,XSQL : STRING;

begin
 If CDSAJUSTE.RecordCount=0 Then
 Begin
  ShowMessage('No existe Información para procesar AJUSTE');
  exit;
 End;

 If MessageDlg('¿Está Seguro(a) de Procesar el AJUSTE? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
 Begin
   If ((Length(trim(lblUSUAPRCOB.Caption))<>0) and (trim(lblUSUAPRCOB.Caption)<>'SIN APROBAR')) AND
      ((Length(trim(lblUSUAPRCON.Caption))<>0) and (trim(lblUSUAPRCON.Caption)<>'SIN APROBAR')) Then
   Begin
     CDSAJUSTE.First;
     While not CDSAJUSTE.Eof Do
     Begin
        XNUMOPERACION := 'CDO-'+edtAno.Text+edtMes.Text+COPY(TRIM(edtNUMAJU.Text),11,5);
        XSQL := 'Begin SP_COB_APLI_AJU('''+edtNUMAJU.Text+''','''+
                                     CDSAJUSTE.FieldByName('ASOID').AsString+''','''+
                                     CDSAJUSTE.FieldByName('CREDID').AsString+''','''+
                                     XNUMOPERACION+''','+
                                     '''26'',''APLICACION POR CONCEPTO DE AJUSTE'','''+DM1.wUsuario+''','+
                                     CDSAJUSTE.FieldByName('IMPAJU').AsString+'); End;';
       Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       Except
         ShowMessage('ERROR AL APLICAR AJUSTE, VERIFIQUE...');
         EXIT;
       End;
       CDSAJUSTE.Next;
     End;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
     DM1.cdsQry1.close;
     XSQL := ' Select SUM(NVL(CREMTOCOB,0)) APLICADO From cre310 where  forpagabr=''CDO'' AND  NROOPE='''+XNUMOPERACION+''' AND FOPERAC=TRUNC(SYSDATE)';
     DM1.cdsQry1.DataRequest(XSQL);
     DM1.cdsQry1.Open;
// Fin HPC_201721_COB
     //Actualiza tabla de cabecera de AJUSTE
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
     XSQL:='Update COB_APL_AJUSTE_CAB SET IMPAPL='+DM1.cdsQry1.FieldByName('APLICADO').AsString+' ,USUPRO='''+DM1.wUsuario+''',FECPRO=TRUNC(SYSDATE)  WHERE NUMAJU='''+trim(edtNUMAJU.Text)+''' ';
// Fin HPC_201721_COB
     Try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     Except
       ShowMessage('ERROR AL ACTUALIZAR LA TABLA COB_APL_AJUSTE_CAB...');
       EXIT;
     End;

     cargadatos(trim(edtNUMAJU.Text));
     controles;
     ShowMessage('Se Aplicó con éxito..');
     btnProcesa.Enabled := False;
   End
   Else
   Begin
     ShowMessage('Falta APROBAR AJUSTE');
   End;
 End;
end;

function TFDescargoAJUSTE.VerAjuExit: Boolean;
var xsql:string;
begin

 CDSAJUSTE.First;
 While NOT CDSAJUSTE.Eof Do
 Begin
   If CDSAJUSTE.FieldByName('FLAG').AsString = '1' Then
   Begin
      xsql:='Select NUMAJU,ASOID,ASOCODMOD,ASOAPENOM,CREDID '+
            'FROM COB_APL_AJUSTE_DET '+
            'WHERE ASOID='''+CDSAJUSTE.FieldByname('ASOID').AsString+''' AND CREDID='''+CDSAJUSTE.FieldByname('CREDID').AsString+''' AND NVL(CODEST,''02'')<>''13'' AND USUPRO IS NULL ';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xsql);
      DM1.cdsQry2.Open;
      If DM1.cdsQry2.RecordCount>0 then
      Begin
        Result := False;
        exit;
     End;
   End;
  CDSAJUSTE.Next;
 End;
 Result := True;
end;

procedure TFDescargoAJUSTE.sumamarcador;
var b:TBookmark;
begin
  CDSAJUSTE.DisableControls;
  b:= CDSAJUSTE.GetBookmark;
  CDSAJUSTE.First;
  vsuma:=0.00;
  While Not CDSAJUSTE.Eof do
  Begin
   If CDSAJUSTE.FieldByName('FLAG').AsString='1' Then
   Begin
    vsuma    := vsuma+ CDSAJUSTE.FieldByname('IMPAJU').AsFloat;
   End;
    CDSAJUSTE.Next;
  End;
  edtMarca.Text := FloatToStr(vsuma);
  edtMarca.Text := FormatFloat('###,###.00', DM1.Valores(edtMarca.Text));

  CDSAJUSTE.GotoBookmark(b);
  CDSAJUSTE.EnableControls;
  CDSAJUSTE.FreeBookmark(b);
end;


procedure TFDescargoAJUSTE.controles;
begin

 vmarcadesmarva := 'S';
 btnProcesa.Enabled := False;
 btnAnula.Enabled   := False;
 
 //Aprobado
   If ((Length(trim(lblUSUAPRCOB.Caption))<>0) and (trim(lblUSUAPRCOB.Caption)<>'SIN APROBAR')) AND
      ((Length(trim(lblUSUAPRCON.Caption))<>0) and (trim(lblUSUAPRCON.Caption)<>'SIN APROBAR')) Then
   Begin
    vmarcadesmarva := 'N';
    btnAnula.Enabled := False;
    If (Length(Trim(lblUSUPRO.Caption))<>0) and (trim(lblUSUPRO.Caption)<>'SIN PROCESAR') Then   //Descargado
         btnProcesa.Enabled := False
    else btnProcesa.Enabled := True;           //No Descargado
   End;

   If pnlEstatus.Visible  Then
   Begin
      If ((Length(trim(lblUSUAPRCOB.Caption))<>0) and (trim(lblUSUAPRCOB.Caption)<>'SIN APROBAR')) or
         ((Length(trim(lblUSUAPRCON.Caption))<>0) and (trim(lblUSUAPRCON.Caption)<>'SIN APROBAR')) Then
      Begin
         btnAnula.Enabled := False;
         vmarcadesmarva   := 'N';
      End
      Else
      Begin
        btnAnula.Enabled := True;
        vmarcadesmarva   := 'S';
      End;
   End;
end;

procedure TFDescargoAJUSTE.btnAnulaClick(Sender: TObject);
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
var Xsql,xinstancia: String;
// Fin HPC_201733_COB
begin
// Inicio HPC_201733_COB
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO) 
//   If MessageDlg('¿Está Seguro(a) de Anular? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   If MessageDlg('¿Está Seguro(a) de Rechazar? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then 
   Begin
     Xsql:='SELECT CARGO,INSTANCIA FROM USERTABLE WHERE USERID=' + QuotedStr(DM1.wUsuario);
     DM1.cdsQry1.Close;
     DM1.cdsQry1.DataRequest(XSQL);
     DM1.cdsQry1.Open;
     If (Length(trim(DM1.cdsQry1.FieldByname('CARGO').AsString))=0) Then
     Begin
       ShowMessage('El Usuario no cuenta con Cargo registrado, verifique...');
       exit;
     End;
     xinstancia:= DM1.cdsQry1.FieldByName('INSTANCIA').AsString;

     xsql:='Update COB_APL_AJUSTE_CAB Set CODEST=''13'', USURECHAZA ='+QuotedStr(DM1.wUsuario)+', FECRECHAZA=SYSDATE, INSRECHAZA='+xinstancia+' Where NUMAJU='''+TRIM(edtNUMAJU.Text)+''' ';
// Fin HPC_201733_COB
     Try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     Except
       ShowMessage('ERROR AL ACTUALIZAR CABECERA COB_APL_AJUSTE_CAB...');
       EXIT;
     End;

     xsql:='Update COB_APL_AJUSTE_DET Set CODEST=''13'' Where NUMAJU='''+TRIM(edtNUMAJU.Text)+''' ';
     Try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     Except
       ShowMessage('ERROR AL ACTUALIZAR DETALLE COB_APL_AJUSTE_DET...');
       EXIT;
     End;

     btnFiltrarClick(Self);
     edtNUMAJU.Text := '';
   End;
end;

procedure TFDescargoAJUSTE.edtMesExit(Sender: TObject);
begin
 edtMes.Text:= dm1.StrZero(trim(edtMes.Text),2);
end;

procedure TFDescargoAJUSTE.btnImprimeClick(Sender: TObject);
Var
   xSql, xAsoId, xCredId, xfVenc, xfCalc: String;
   xSalAnt, xSalVen, xSalDif, xCuoProCob: Currency;
   xCuoPen, xCuoVen, xCuoDif: Integer;
   xRegistro: TBookmark;
   xProvision: Currency;
   xGasRef:Currency;
   xsDescripcionTipo,xCondicion : string;
   xInterno,xFoto : string;
Begin


   DM1.xHis :='N';
   xInterno :='N';
   xFoto    :='N';

   xAsoId  := CDSAJUSTE.FieldByName('ASOID').AsString;
   xCredId := CDSAJUSTE.FieldByName('CREDID').AsString;

   If Length(Trim(xCredId))=0 Then
   Begin
    ShowMessage('El registro seleccionado no tiene número de crédito para mostrar');
    exit;
   End;

   XSQL:='SELECT asoid, asocodmod, asocodpago, tipcreid, tmonid, creano, cremes, cresaldo, crecuota, cremto, creamort, '+
         'creinteres, creflat, crefven, crefpag, useid, uproid, dptoid, upagoid, bancoid, ccbcoid, nroope, foperac, tcambio,'+
		 'cremtocob, cremonloc, cremonext, usuario, freg, hreg, forpagoid, crefdev, crefrecl, asoapenom, agenbcoid, crecapital,'+
		 'cremtoint, cremtoflat, crenewid, fnabono, credid, cretcalid, tipdeseid, tmonabr, cretcalabr, tipdesabr, tipcreabr,'+
		 'forpagoabr, listaabr, ciaid, creestid, creestado, crecom, creseg, crepor, cregadm, crecomp, cremora, cremtocom,'+
		 'cremtoseg, cremtopor, cremtogadm, cremtocomp, cremtomora, listaid, asocodaux, nronabo, ciudid, flgpag, archivoftp,'+
		 'crebloq, crebloqfec, crebloqobs, credidnabo, creinfo, cremtoexc, areaid, credocpag, flagvar, crecapcron, creintcron,'+
		 'creflacron, cremtoan, creamortan, creinteresan, creflatan, flagnvint, desblofec, usubloq, usudesbloq, nrorefinan,'+
		 'creflgexc, crefecexc, flgint, nroopetmp, foperactmp, flgdesmar, usudesmar, fecdesmar, obsdesmar, cremtodev, crecapcon,'+
		 'flginconsis, creaplexc, tipnabo, perproc, fecproc, flgproc, percob, creestidant, saldosbs, creanoini, cremesini, '+
		 'crecuotaini, crefvenini, crecuotaini2, crefvenini2, crecuotaini3, crefvenini3, flarep, monpacdesgrav, moncobdesgrav,'+
		 'fecvenori, numcuoori '+
         'FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid));
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(XSQL);
   DM1.cdsCuotas.Open;

   XSQL:='SELECT asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid, upagoid, asoresnom, asofresnom,'+ 
         'resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto, asodpto, zonaid, zonanomb, ubigeoid, dptoid,'+ 
         'paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil, asoruc, estcivid, asosexo, asoemail, bancoid, asoncta,'+ 
         'sitcta, asodni, graacid, grainsid, profid, asofmov, asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid,'+
         'asorescese, asofrescese, fgarante, zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea,'+ 
         'usr_ben, fec_ben, ctaser, cargo, variascuot, crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni,'+ 
         'asonomdni, asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid,'+ 
         'zonalabid, fecact, indicador, ccosid, password, codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant,'+ 
         'actarcren, reingreso, autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, gencodbar, envautdes, corenvautdes,'+
         'codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio,'+ 
         'codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg,'+ 
         'mdfusrmod, mdffecmod, emicarta, desmanviv, codmotdestcuo, fecactpad, ceneduid, fallecido, tipo_fall_id, en_actualiz, codtiptel1, codreftel1, codtiptel2,'+ 
         'codreftel2, codpension, fecregautdesapo, codleypen, numautonp, codblocharen, numblocharen, coddepintren, desdepintren, asoapecasdni, invalidez,'+ 
         'tipo_inva_id, fecautonp, asoaptser, fecactsit, codreglab, usuautonp, oriopeonp '+
         'FROM APO201 WHERE   ASOID=' + QuotedStr(Trim(xAsoId));
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(XSQL);
   DM1.cdsAso.Open;

   XSQL:='SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES, '+
         'a.tipcreid, a.asoid, a.asocodmod, a.asocodpago, a.asoapenom, a.useid, a.crefotorg, a.crefecini, a.cremtosol, a.cremtootor, a.cremtogir, '+
         'a.creinteres, a.credflat, a.crecuota, a.crenumcuo,a.creluggiro,a.bancoid, a.crenumcta, a.cremtopag, a.cresdoact, a.crepergra, a.crecuopag,'+
         'a.crecuoenv, a.creperiodi, a.cremtotal, a.crecappgo, a.crenewid, a.cresaldot, a.usuario, a.freg, a.hreg, a.ofdesid, a.calificaid, a.apruebaid,'+ 
         'a.creestado, a.tmonid, a.cuotaini, a.upagoid, a.uproid, a.dptoid, a.listaid, a.credid, a.crecom, a.creseg, a.crepor, a.cregadm, a.crecomp, a.cremora,'+  
         'a.forpagoid, a.cretcalid, a.tmonabr, a.cretcalabr, a.listaabr, a.forpagoabr, a.ciaid, a.crefrecl, a.creestid, a.creanomes, a.nropagare, a.nroautdes, '+ 
         'a.tipcredes, a.garapenom, a.garasoid, a.asocodaux, a.nronabo, a.numref, a.fecref, a.tiporef, a.nroficio, a.ciudid, a.archivoftp, a.agenbancoid, a.dptogiro, '+ 
         'a.useidgar, a.tipdeseid, a.bcogiro, a.cremtonabo, a.creffinpag, a.crefinipag, a.crebloqfec, a.usubloq, a.crebloq, a.flgcaja, a.fechacaja, a.crenumcomp,'+  
         'a.ccosid, a.cuentah, a.cuentad, a.cregencob, a.flgautoma, a.refanomes, a.nrorefinan, a.cajausu, a.horacaja, a.asotipid, a.asodni, a.anulacaja, a.men_anu,'+  
         'a.mot_pre, a.numrefi, a.flgrefi, a.crefcan, a.flginconsis, a.perconta, a.c_abn, a.cntanomm, a.fec_rcp, a.crecapliq, a.crefdes, a.cremenobs, a.tipocont,'+  
         'a.cntflag, a.cremtodep, a.crefanul, a.useranul, a.cresumcuo, a.cremotext, a.nroficio_bck, a.migrado, a.usuautcre, a.fecautcre, a.estautcre, a.comautcre,'+  
         'a.usuanusup, a.fecanusup, a.motanusup, a.estanusup, a.docid, a.ccserie, a.ccnodoc, a.ciaser, a.cremonins, a.impcon, a.dniruc, a.fecimpcon, a.codarchivo,'+  
         'a.cremtoapo, a.autdescre, a.fecautdes, a.usuautdes, a.impcaraut, a.nrocaraut, a.diasproc, a.descenv, a.autdesges, a.usudesges, a.fechordesges, a.usumodcuo,'+  
         'a.fecmodcuo, a.motmodcuo, a.tasfondes, a.nroautonp, a.fecenvbcp, a.estenvbcp, a.feccobbcp, a.codagebcp, a.impcaronp, a.monintpro, a.mespergra '+ 
        'FROM CRE301 a,CRE110 b '+
         'Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId)) + ' AND a.Credid='+QuotedStr(Trim(xCreDid))+' Order By a.CREFOTORG ';
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest(XSQL);
   DM1.cdsSolicitud.Open;


   xRegistro := DM1.cdsCuotas.GetBookmark;
   DM1.xSgr := 'REP';

      xsql:='Select Asoid,Credid,Crecuota,Nroope,Foperac,Creamort,Creinteres,Creflat,Moncobdesgrav,Cremtocob ' +
            ' From CRE310 where Asoid='''+xAsoid+''' And Credid='''+xCredid+''' And Forpagid=''99'' And Creestid not in (''13'',''04'',''99'') '+
            'Order by crecuota,Foperac';
      DM1.cdsCuentas.Close;
      DM1.cdsCuentas.DataRequest(xsql);
      DM1.cdsCuentas.Open;
      ppDBCCI.DataSource := DM1.dsCuentas;
   Begin
      lblSalTot.Caption := FormatFloat('###,###.00', DM1.SaldoActual(xAsoId, xCreDid, '1'));
      ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      If Length(Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)) > 0 Then
      BEGIN
        if ((Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) = '10') AND (Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 9, 1) = 'A')) then
           xsDescripcionTipo := 'AMPLIACIÓN DE PLAZO'
        else
           xsDescripcionTipo := DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');
        pplblTipCre.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    ['+xsDescripcionTipo+']'
      END
      Else
         pplblTipCre.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    [NORMAL]';
      ppLblEstado.Caption := DM1.cdsSolicitud.FieldByName('CREESTADO').AsString;
      pplblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
      ppLblCuenta.Caption := DM1.cdsAso.FieldByName('ASONCTA').AsString + ' - [' + DM1.cdsAso.FieldByName('SITCTA').AsString + ']';
      pplblNumPre.Caption := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
      pplblFecPre.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
      ppLblOriOto.Caption := Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2) + ' -  ' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2))), 'APO110', 'OFDESNOM');
      xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
      pplblUse.Caption  := DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');
      pplblMonto.Caption := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
      pplblNumCuo.Caption := FormatFloat('###,###', DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsFloat);
      ppLblInt.Caption := FormatFloat('##0.#0', DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat);
      ppLblFlat.Caption := FormatFloat('##0.#0', DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat);
      ppLblDesgravamen.Caption := FormatFloat('##0.000', DM1.cdsSolicitud.FieldByName('TASFONDES').AsFloat);
      // Muestra la situación (Tipo de Asociado) con el cual se generó el crédito
      pplblTipCliOtorg.Caption := DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString, 'ASOTIPDES');
      pplblTipCli.Caption := DM1.cdsAso.fieldbyname('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsAso.fieldbyname('ASOTIPID').AsString, 'ASOTIPDES');
      if ((Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) = '10') AND (Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 9, 1) = 'A')) then
         ppLblTipDes.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) + '- AMPLIACIÓN DE PLAZO'
      else
         ppLblTipDes.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) + '-' + DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');
   End;
   DM1.cdsCuotas.First;
   xSalAnt := 0;
   xSalVen := 0;
   xSalDif := 0;
   xCuoProCob := 0;
   xCuoVen := 0;
   xCuoPen := 0;
   xCuoDif := 0;
   xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   xGasRef := 0;
   While Not DM1.cdsCuotas.Eof Do
   Begin
      If DM1.xHis <> 'S' Then
      Begin
        If (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString <> DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) And ((DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27')) Then
        Begin
           xCuoDif := xCuoDif + 1;
           xSalDif := xSalDif + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
        End;
      end;

      If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '14') Then
         xCuoProCob := xCuoProCob + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);

      If DM1.xHis <> 'S' Then
      Begin
         If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27') Then
         Begin
            xfVenc := Trim(DM1.cdsCuotas.fieldbyname('CREANO').AsString + DM1.cdsCuotas.fieldbyname('CREMES').AsString);
            If (xfVenc > xfCalc) And (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) Then
            Begin
               xSalAnt := xSalAnt + (DM1.cdsCuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency + DM1.cdsCuotas.fieldbyname('MONPACDESGRAV').AsCurrency) - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency;
               xCuoPen := xCuoPen + 1;
            End
            Else
               If DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString Then
               Begin
                  xSalVen := xSalVen + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
                  xCuoVen := xCuoVen + 1;
               End;
         End;
      end;

      xGasRef := xGasRef + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency ;
      DM1.cdsCuotas.Next;
   End;
   lblDif.Caption := '(' + FormatFloat('###,##0', xCuoDif) + ')';
   lblVen.Caption := '(' + FormatFloat('###,##0', xCuoVen) + ')';
   lblPen.Caption := '(' + FormatFloat('###,##0', xCuoPen) + ')';
   lblTot.Caption := '(' + FormatFloat('###,##0', xCuoVen + xCuoPen + xCuoDif) + ')';

   If Copy(xCredId,9,1)='R' Then
      Begin
        lblMonGasRef.Caption:=FormatFloat('##,###,##0.#0', xGasRef);
        lblGas02.Caption:='REF(S/.)';
        lblGasRef.Visible:=True;
        lblMonGasRef.Visible:=True;
      End;

   Begin
      If DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString = '18' Then
         ppLNota2.Caption := 'POR EL "BANCO DE LA NACION"'
      Else
         ppLNota2.Caption := 'POR "PLANILLA DE HABERES"';
   End;
   ppLblCuoDif.Caption := FormatFloat('###,###.00', xSalDif);
   ppLblCuoVen.Caption := FormatFloat('###,###.00', xSalVen);
   pplblCuoPen.Caption := FormatFloat('###,###.00', xSalAnt);
   pplblMonPag.Caption := FormatFloat('###,###.00', xSalVen + xSalAnt + xSalDif);
   DM1.cdsAbonoCuotas.Close;
   xSQL := 'SELECT COUNT(ASOID) AS CUOPEN '
      + 'FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(Trim(xAsoId))
      + '  AND CREDID=' + QuotedStr(Trim(xCreDid))
      + '  AND CREESTID IN (''02'',''11'',''27'') ';
   DM1.cdsAbonoCuotas.DataRequest(xSQL);
   DM1.cdsAbonoCuotas.Open;
   ppLblCuotas.Caption := '( ' + lblTot.Caption + '-Cuotas Por Pagar )';
   DM1.cdsAbonoCuotas.Close;
   DM1.cdsAsoX.Close;

   If DM1.xHis = 'N' Then
      xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CREMTO, '
         + '       CASE WHEN CREFVEN<>CREFVENINI THEN ''(D)'' ELSE NULL END AS REPRO ,  '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREAMORT,0) ELSE NVL(CRECAPITAL,0) END AS AMORT, '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREINTERES,0) ELSE NVL(CREMTOINT,0) END AS INTER, '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREFLAT,0) ELSE NVL(CREMTOFLAT,0) END AS GASTO, '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(MONPACDESGRAV,0) ELSE NVL(MONCOBDESGRAV,0) END AS DESGRAVAMEN, '
         + '       NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) CREMTOEXC,CREESTADO '
         + '  FROM CRE302 '
         + ' WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid))
         + ' ORDER BY CREDID,CRECUOTA'
   Else

      xSQL := 'SELECT A.ASOID, A.CREDID, SUBSTR(FEC_VEN,1,4) CREANO, '
         + '       SUBSTR(FEC_VEN,5,2) CREMES,TO_DATE(FEC_VEN,''YYYY-MM-DD'') CREFVEN, '
         + '       AMO_PAG AMORT, INT_PAG INTER,GAS_PAG GASTO, NVL(DESGRAV_PAG,0) DESGRAVAMEN, NVL(MON_PAG,0) AS CREMTOCOB, '
         + '       NVL(MON_CUO,0) AS CREMTO, '' '' REPRO, TO_NUMBER(ITE_CUO) CRECUOTA, '
         + '       CASE WHEN A.CREESTADO IS NOT NULL THEN A.CREESTADO ELSE B.CREESTADO END CREESTADO, '
         + '       CASE WHEN A.CREESTID IS NOT NULL THEN A.CREESTID ELSE B.CREESTID END CREESTADO, '
         + '       AMO_ACT CREAMORT,GAS_ACT CREFLAT,'' '' FLAGVAR,NVL(EXC_PAG,0) CREMTOEXC '
         + ' FROM PAGO A, PREST B '
         + ' Where A.ASOID =' + QuotedStr(Trim(xAsoId)) + ' And A.CREDID=' + QuotedStr(Trim(xCreDid))
         + '   and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) '
         + ' Order By CREDID, CRECUOTA ';

   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   ppLblTitulo.Caption := 'CRONOGRAMA DE PAGOS N°: ' + pplblNumPre.Caption + '    al: ' + DateToStr(DM1.FechaSys);
   If xFoto = 'S' Then
   Begin
      ppShpImg.Visible := True;
      ppImage1.Visible := True;
      DM1.CargaImagenesDNI(trim(DM1.cdsAso.FieldByName('ASODNI').AsString), 'FotoCronog');
   End
   Else
   Begin
      ppShpImg.Visible := False;
      ppImage1.Visible := False;
   End;
   ppLblUser.Caption := 'Impreso por   : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
   ppLblApro.Caption := 'Otorgado por  : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('USUARIO').AsString)), 'TGE006', 'USERNOM');

   If xInterno = 'S' Then
   Begin
      ppLabel81.Visible := true;
      ppLabel82.Visible := true;
      ppLblRegimen.Visible := true;
      ppLblRegimen.Caption := DM1.CrgDescrip('REGPENID=' + DM1.cdsAso.FieldByName('REGPENID').AsString, 'APO105', 'REGPENDES');
      ppLabel83.Visible := true;
      ppLabel84.Visible := true;
      ppLblDirDom.Visible := true;
      ppLblDirDom.Caption := Copy(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASODIR'), 1, 47);
      ppLabel85.Visible := true;
      ppLabel86.Visible := true;
      ppLblTelefono.Visible := true;
      ppLblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTELF1');
      ppLabel87.Visible := true;
      ppLabel88.Visible := true;
      ppLblDiasAtraso.Visible := true;
      xSQL := 'SELECT MAX(TRUNC(SYSDATE) - CREFVEN) DIASATRASO'
         + ' FROM CRE302 '
         + ' Where ASOID = ' + QuotedStr(Trim(xAsoId)) + ' And CREDID = ' + QuotedStr(Trim(xCreDid))
         + '    AND CREESTID IN (''02'', ''11'', ''14'', ''27'')'
         + '    AND (NVL(CREMTO,0) - NVL(CREMTOCOB,0)) > 0'
         + ' Order By CREDID,CRECUOTA ';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;

      If (DM1.cdsQry6.RecordCount > 0) And (DM1.cdsQry6.FieldByName('DIASATRASO').AsInteger > 0) Then
      Begin
         ppLblDiasAtraso.Caption := DM1.cdsQry6.FieldByName('DIASATRASO').AsString;
      End
      Else
      Begin
         ppLblDiasAtraso.Caption := '0';
      End;
      DM1.cdsQry6.Close;

      If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO' Then
      Begin
         ppLabel89.Visible := true;
         ppLabel90.Visible := true;
         ppLblFirmoAutorizacion.Visible := true;
         If DM1.cdsAso.FieldByName('AUTDESAPO').AsString = 'S' Then
            ppLblFirmoAutorizacion.Caption := 'Si'
         Else
            ppLblFirmoAutorizacion.Caption := 'No';
      End
      Else
      Begin
         ppLabel89.Visible := false;
         ppLabel90.Visible := false;
         ppLblFirmoAutorizacion.Visible := false;
      End;

      ppLabel91.Visible := true;
      ppLabel92.Visible := true;
      ppLblProvision.Visible := true;
      xProvision := CalculaProvision(xAsoId);
      ppLblProvision.Caption := FormatFloat('###,##0.00', xProvision);
   End
   Else
   Begin
      ppLabel81.Visible := false;
      ppLabel82.Visible := false;
      ppLblRegimen.Visible := false;
      ppLabel83.Visible := false;
      ppLabel84.Visible := false;
      ppLblDirDom.Visible := false;
      ppLabel85.Visible := false;
      ppLabel86.Visible := false;
      ppLblTelefono.Visible := false;
      ppLabel87.Visible := false;
      ppLabel88.Visible := false;
      ppLblDiasAtraso.Visible := false;
      ppLabel89.Visible := false;
      ppLabel90.Visible := false;
      ppLblFirmoAutorizacion.Visible := false;
      ppLabel91.Visible := false;
      ppLabel92.Visible := false;
      ppLblProvision.Visible := false;
   End;

   ppREstCta.Print;
   ppREstCta.Cancel;
   DM1.cdsAsoX.Close;
   DM1.cdsFormaPago.Close;
   DM1.cdsCuotas.GotoBookmark(xRegistro);

End;


function TFDescargoAJUSTE.CalculaProvision(xAsoID: String): Currency;
Var
   xProvision: Currency;
   xPeriodo, xSql: String;
Begin

   xProvision := 0;
  //obtiene el ultimo periodo de saldos internos
  // Inicio HPC_201524_COB
  // Se debe obtener el valor máximo del periodo de cartera, si se coloca el ASOID trae el periodo del asociado
  //xSql := 'SELECT MAX(PERIODO) PERIODO FROM CFC000 WHERE A.ASOID = ' + QuotedStr(xAsoID);
   xSql := 'SELECT MAX(PERIODO) PERIODO FROM CFC000 WHERE 1 = 1';
  // Fin HPC_201524_COB 
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSql);
   DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      xPeriodo := DM1.cdsQry2.FieldByName('PERIODO').AsString;
   End;

  //calcula la provision
   xSql := 'SELECT (NVL(SALDO_CB,0)*B.P_CB)/ 100 + (NVL(SALDO_NC,0)*B.P_NC)/ 100 PROVISION '
      + ' FROM CFC000 A, COB113 B'
      + ' WHERE A.ASOID = ' + QuotedStr(xAsoID) + ' AND A.PERIODO = ' + QuotedStr(xPeriodo)
      + ' AND A.CFC_F = B.RESUMEID';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSql);
   DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      xProvision := DM1.cdsQry2.FieldByName('PROVISION').AsVariant;
   End;
   Result := xProvision;

End;

procedure TFDescargoAJUSTE.SpeedButton3Click(Sender: TObject);
begin
 Try
    FApruebaAjuste := TFApruebaAjuste.Create(Self);
    FApruebaAjuste.xconsulta := 'S';
    FApruebaAjuste.chkNoAprobador.Checked  := False;
    FApruebaAjuste.btnFiltrarClick(self);
    FApruebaAjuste.grbArea.Visible := False;
    FApruebaAjuste.Caption := 'Consulta de Historico de AJUSTES';
    FApruebaAjuste.lblTituloAJUSTE.Caption := 'Consulta';
    FApruebaAjuste.btnAprobar.Visible := False;
    FApruebaAjuste.btnImprime.Left    := 620;
    FApruebaAjuste.ShowModal;
 Finally
  FApruebaAjuste.xconsulta := 'S';
  FApruebaAjuste.Free;
 End;
end;

procedure TFDescargoAJUSTE.BitBtn18Click(Sender: TObject);
begin
pnlMetodo.Top  := 48;
pnlMetodo.Left := 81;
pnlMetodo.Visible := True;
end;

procedure TFDescargoAJUSTE.BitBtn1Click(Sender: TObject);
begin
pnlMetodo.Visible := False;
end;

procedure TFDescargoAJUSTE.DBGAJUSTECalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

  if (Field.FieldName = 'IMPAJU') then
  Begin
     ABrush.Color := $00B6F2F3;
     AFont.Color  := clBlack;
  End;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
  if ((Field.FieldName = 'SAL_INT') Or (Field.FieldName = 'SAL_CAP') Or (Field.FieldName = 'SAL_FLAT') Or (Field.FieldName = 'SAL_FDD'))then
  Begin
       if (Field.Value > 0)then
       Begin
          ABrush.Color := $00B6F2F3;
          AFont.Color  := clBlack;
       End;
  End;     
// Fin HPC_201733_COB
end;

end.
//Final  HPC_201523_COB

