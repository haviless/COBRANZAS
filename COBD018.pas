unit COBD018;
// Inicio Uso Estándares: 01/08/2011
// Unidad               : COBD018
// Formulario           : fProcReversion100Diferidos
// Fecha de Creación    : 03/03/2017
// Autor                : Ricardo Medina Z.
// Objetivo             : Reversión de los diferimientos de créditos 100% diferidos
// Actualizaciones      :
//HPC_201706_COB        : Creación del Formulario
//HPC_201709_COB        : Uso de CARTERA NO OFICIAL
//HPC_201714_COB        : Mejora en el proceso de generación de cartera de 100% diferidos
//Inicio HPC_201706_COB
//Reversión de los diferimientos de créditos 100% diferidos
//HPC_201801_COB     : Correción de error detectado al ingresar al formulario
//                     caso nuevo periodo y no existe ningun proceso generado para el nuevo periodo

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, Grids, Wwdbigrd, Wwdbgrid,
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
  Mask, wwdbedit, Wwdbspin, DBGrids;
//Final HPC_201714_COB
type
  TfProcReversion100Diferidos = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtPeriodoCartera: TEdit;
    DB100DIFERIDOS: TwwDBGrid;
    CDSINTERINO: TClientDataSet;
    DSINTERINO: TDataSource;
    BtnFiltaInterinos: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox3: TGroupBox;
    dbseAno: TwwDBSpinEdit;
    BitBtn2: TBitBtn;
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
    chkDatNoOfi: TCheckBox;
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
    lblFecUltimoProc: TLabel;
    GroupBox4: TGroupBox;
    rbRevertidos: TRadioButton;
    rbNoRevertidos: TRadioButton;
    btnConsolidadoExcel: TSpeedButton;
    dtgData: TDBGrid;
//Final HPC_201714_COB
//Final HPC_201709_COB 
    procedure FormCreate(Sender: TObject);
    procedure BtnFiltaInterinosClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DB100DIFERIDOSDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DB100DIFERIDOSCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbseAnoChange(Sender: TObject);
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
    procedure chkDatNoOfiClick(Sender: TObject);
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
    procedure btnConsolidadoExcelClick(Sender: TObject);
//Final HPC_201714_COB
//Final HPC_201709_COB
  private
    { Private declarations }
  public
    { Public declarations }
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
    XCAROFI : String;
//Final HPC_201709_COB
    procedure cargacabecera();
  end;

var
  fProcReversion100Diferidos: TfProcReversion100Diferidos;

implementation

uses COBDM1, COBD019;

{$R *.dfm}

procedure TfProcReversion100Diferidos.FormCreate(Sender: TObject);
VAR XSQL:STRING;
begin
  dm1.wModo:='I';
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
  XCAROFI  :='S';
//Final HPC_201709_COB
  XSQL:='Select max(periodo) PERIODO, to_char(sysdate,''YYYY'') ANOGENERA  From CFC000 WHERE periodo is not null ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(XSQL);
  DM1.cdsQry.Open;
  edtPeriodoCartera.Text := DM1.cdsQry.FIELDBYNAME('PERIODO').AsString;
  dbseAno.Text           := DM1.cdsQry.FIELDBYNAME('ANOGENERA').AsString;
  cargacabecera;
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
  XSQL:='Select max(fecgendat) fecgendat  From DB2ADMIN.COB_REV_DIFERIDOS_CAB';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(XSQL);
  DM1.cdsQry.Open;
  lblFecUltimoProc.Caption :='Fecha de Último Proceso: '+DateTimeToStr(Dm1.cdsQry.Fieldbyname('fecgendat').AsDateTime);
//Final HPC_201714_COB
end;

procedure TfProcReversion100Diferidos.BtnFiltaInterinosClick(
  Sender: TObject);
  VAR XSQL:String;
begin


  If MessageDlg('¿Desea generar data de 100% Diferidos?',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
  Begin
   exit;
  End;

  XSQL:='Select CODREVDIF,ESTPRO From cob_rev_diferidos_cab WHERE ESTPRO=''INICIAL'' ';
  Dm1.cdsTDoc.Close;
  Dm1.cdsTDoc.DataRequest(XSQL);
  Dm1.cdsTDoc.Open;

  If Dm1.cdsTDoc.RecordCount>0 Then
  Begin
    ShowMessage('Existe un proceso de reversión en estado INICIAL, no puede generar otro');
    exit;
  End;


//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
  XSQL:='Begin SP_COB_DATA_REVERSION_DIFER('''+edtPeriodoCartera.Text+''','''+DM1.wUsuario+''',null,null,''P0'','''+XCAROFI+'''); End;';
//Final HPC_201709_COB
  Screen.Cursor := crHourGlass;
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  XSQL:='Select '' '' flag, correvdif regid, asoid, asocodmod, calcar, intmay65, asoapenom, asotipid, credid,'
       +'       creestado, monprovision, numcuoblo, monsalcap, monsaltot, diaatrantrev, mondifantrev, monvenantrev,'
       +'       monpenantrev, diaatrdesrev, mondifdesrev, monvendesrev, monpendesrev, usugendat, fecgendat, usudepdat,'
       +'       fecdupdat, userevdat, fecrevdat '
       +'From db2admin.cob_rev_diferidos_gtt Where correvdif>0';
  Dm1.cdsTDoc.Close;
  Dm1.cdsTDoc.DataRequest(XSQL);
  Dm1.cdsTDoc.Open;

  If Dm1.cdsTDoc.RecordCount=0 Then
  Begin
    ShowMessage('Este proceso no generó información');
    Screen.Cursor := crDefault;
    exit;
  End;  
  Screen.Cursor := crDefault;
 Try
  fProcReversion100DiferidosDet := TfProcReversion100DiferidosDet.Create(Self);
  fProcReversion100DiferidosDet.ShowModal;
 Finally
  cargacabecera;
  fProcReversion100DiferidosDet.Free;
 End;

end;

procedure TfProcReversion100Diferidos.BitBtn14Click(Sender: TObject);
begin
close;
end;

procedure TfProcReversion100Diferidos.cargacabecera;
var XSQL:String;
begin
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
// XSQL:='Select codrevdif, numregpro, estpro, desbre, faspro, usugendat, fecgendat, usudep, fecdep, usurev, fecrev '
   XSQL:='Select codrevdif, numregpro, estpro,nvl(carofi,''S'') carofi, desbre, faspro, usugendat, fecgendat, usudep, fecdep, usurev, fecrev '
//Final HPC_201709_COB
       +' From  db2admin.cob_rev_diferidos_cab '
       +' Where to_char(fecgendat,''YYYY'')='''+dbseAno.Text+''' order by codrevdif desc';
  DM1.cdsModelo.Close;
  DM1.cdsModelo.DataRequest(XSQL);
  DM1.cdsModelo.Open;
  DB100DIFERIDOS.DataSource := DM1.dsModelo;
  If (DM1.cdsModelo.RecordCount=0) and (dm1.wModo<>'I') Then
  Begin
    ShowMessage('No existe información para mostrar');
    exit;
  End;
  dm1.wModo:='M';
end;

procedure TfProcReversion100Diferidos.BitBtn2Click(Sender: TObject);
begin
  cargacabecera;
end;

procedure TfProcReversion100Diferidos.DB100DIFERIDOSDblClick(
  Sender: TObject);
var  XSQL:String;
begin
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
  XCAROFI:=DM1.cdsModelo.FieldByname('CAROFI').AsString;
  XSQL:='Begin SP_COB_DATA_REVERSION_DIFER('''+edtPeriodoCartera.Text+''','''+DM1.wUsuario+''','''+DM1.cdsModelo.FieldByname('CODREVDIF').AsString+''',null,''PD'','''+XCAROFI+'''); End;';
//Final HPC_201709_COB
  Screen.Cursor := crHourGlass;
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  Screen.Cursor := crDefault;

  fProcReversion100DiferidosDet := TfProcReversion100DiferidosDet.Create(Self);
  If fProcReversion100DiferidosDet.CDSDETREV100DIF.RecordCount=0 Then
  Begin
    ShowMessage('No existe información a mostrar');
    Screen.Cursor := crDefault;
    exit;
  End;
 Try
   fProcReversion100DiferidosDet.ShowModal;
 Finally
  cargacabecera;
  fProcReversion100DiferidosDet.Free;
 End;

end;

procedure TfProcReversion100Diferidos.BitBtn1Click(Sender: TObject);
var XSQL:String;
begin
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
// If DM1.cdsModelo.FieldByName('estpro').AsString ='CERRADO'  Then
If DM1.cdsModelo.FieldByName('numregpro').AsInteger >0 Then
//Final HPC_201714_COB
  Begin
    ShowMessage('El proceso ya fue ejecutado, no puede ANULAR');
    Exit;
  End;
  If Dm1.cdsModelo.RecordCount=0 Then
  Begin
    ShowMessage('No existe información para anular');
    Exit;
  End;
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
  XSQL:='Begin SP_COB_DATA_REVERSION_DIFER('''+edtPeriodoCartera.Text+''','''+DM1.wUsuario+''','''+DM1.cdsModelo.FieldByname('CODREVDIF').AsString+''',null,''PA'','''+XCAROFI+'''); End;';
//Final HPC_201709_COB
  Screen.Cursor := crHourGlass;
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  ShowMessage('Se anuló con éxito');
  cargacabecera;
  Screen.Cursor := crDefault;
end;

procedure TfProcReversion100Diferidos.DB100DIFERIDOSCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  If DM1.cdsModelo.FieldByName('ESTPRO').AsString='PROCESADO' Then
  Begin
     if (Field.FieldName = 'ESTPRO') then  AFont.Color :=  clRED;
  End
  Else
   If (Field.FieldName = 'ESTPRO') Then   AFont.Color :=  clGreen;
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
  If DM1.cdsModelo.FieldByName('CAROFI').AsString='N' Then
  Begin
    if (Field.FieldName = 'CAROFI') then  AFont.Color :=  clRED;
  End
  Else
    if (Field.FieldName = 'CAROFI') then  AFont.Color :=  clBlack;
//Final HPC_201709_COB

End;

procedure TfProcReversion100Diferidos.dbseAnoChange(Sender: TObject);
begin
 //Inicio HPC_201801_COB: Correción por error detectado
 //                       se daba el error al ingresar al formulario y el dataset no esta creado
 If Dm1.cdsModelo.Active Then
    Dm1.cdsModelo.EmptyDataSet;
 //Fin HPC_201801_COB
end;

//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
procedure TfProcReversion100Diferidos.chkDatNoOfiClick(Sender: TObject);
var XSQL:String;
begin

 If chkDatNoOfi.Checked Then
 Begin
   XCAROFI:='N';
   XSQL:='Select max(periodo) PERIODO, to_char(sysdate,''YYYY'') ANOGENERA  From CFC000_TMP WHERE periodo is not null ';
 End
 else
 Begin
   XCAROFI:='S';
   XSQL:='Select max(periodo) PERIODO, to_char(sysdate,''YYYY'') ANOGENERA  From CFC000 WHERE periodo is not null ';
 End;

 DM1.cdsQry.Close;
 DM1.cdsQry.DataRequest(XSQL);
 DM1.cdsQry.Open;
 edtPeriodoCartera.Text := DM1.cdsQry.FIELDBYNAME('PERIODO').AsString;
 dbseAno.Text           := DM1.cdsQry.FIELDBYNAME('ANOGENERA').AsString;

end;
//Final HPC_201709_COB
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
procedure TfProcReversion100Diferidos.btnConsolidadoExcelClick(
  Sender: TObject);
var Xsql:String;
begin
  If rbRevertidos.Checked Then
  Begin
     Xsql:='Select codrevdif, correvdif, flag, asoid, asocodmod, calcar, intmay65, asoapenom, asotipid, credid, creestado,'
          +' monprovision, numcuoblo, monsalcap, monsaltot, diaatrantrev, monvenantrev, monpenantrev, diaatrdesrev, monvendesrev,'
          +' monpendesrev, usugendat, fecgendat, usudepdat, fecdupdat, userevdat, fecrevdat,carofi '
          +' From DB2ADMIN.cob_rev_diferidos_det '
          +' Where FLAG=''1'' AND USEREVDAT IS NOT NULL ';
     End;

  If rbNoRevertidos.Checked Then
  Begin
     Xsql:='Select codrevdif, correvdif, flag, asoid, asocodmod, calcar, intmay65, asoapenom, asotipid, credid, creestado,'
          +' monprovision, numcuoblo, monsalcap, monsaltot, diaatrantrev, monvenantrev, monpenantrev,  diaatrdesrev,  monvendesrev,'
          +'  monpendesrev, usugendat, fecgendat, usudepdat, fecdupdat, userevdat, fecrevdat,carofi '
          +' From DB2ADMIN.cob_rev_diferidos_det '
          +' Where FLAG IS NULL AND USEREVDAT IS NULL ';
     End;
  Dm1.cdsQry6.Close;
  Dm1.cdsQry6.DataRequest(Xsql);
  Dm1.cdsQry6.Open;
  dtgData.DataSource := Dm1.dsQry6;
  If Dm1.cdsQry6.RecordCount=0 Then
  Begin
    ShowMessage('No existe información para exportar');
    exit;
  End;
  DM1.HojaExcel('Consolidado 100% diferidos',dtgData.DataSource,dtgData);
end;
//Final HPC_201714_COB

end.
//Final HPC_201706_COB
