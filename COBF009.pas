// Inicio Uso Estándares: 07/01/2015
// Unidad               : COBF009
// Formulario           : FExistCredFSC
// Fecha de Creación    : 07/01/2015
// Autor                : Area de desarrollo de sistemas RMZ.
// Objetivo             : Generar un listado de las créditos cancelados con FSC para verificar su existencia en el Archivo Central
// HPC_201502_COB       : Creación de Formulario
// HPC_201508_COB       : Se adiciona un filtro para que no tome encuenta en la tabla de detalle de cancelación con el FSC los anulados ni extornados}
//                        tambien se adicona un order by
//HPC_201510_COB        : Se adiciona condicion para el FSC 
//Inicio HPC_201502_COB
unit COBF009;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdbedit, Wwdbspin, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, wwdblook, wwdbdatetimepicker,DateUtils, DBGrids,
  ppDB, ppDBPipe, ppDBBDE, ppEndUsr, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppBands, ppCtrls, jpeg, ppVar, ppPrnabl, ppCache, ppParameter;

type
  TFExistCredFSC = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dbgCanceladoFSC: TwwDBGrid;
    Panel2: TPanel;
    fano: TwwDBSpinEdit;
    fmes: TwwDBSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    edtMemo: TEdit;
    Label3: TLabel;
    Panel3: TPanel;
    edtdescrip: TEdit;
    Label4: TLabel;
    btnGenera: TBitBtn;
    btnExcel: TBitBtn;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    btnFiltrar: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    dtpFecIni: TwwDBDateTimePicker;
    dtpFecFin: TwwDBDateTimePicker;
    Label8: TLabel;
    dblcForPago: TwwDBLookupCombo;
    Label9: TLabel;
    EdtTipDes: TEdit;
    dtgData: TDBGrid;
    btnNuevo: TBitBtn;
    btnPint: TBitBtn;
    ppRepExistencia: TppReport;
    ppD1: TppDesigner;
    ppeline1: TppBDEPipeline;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
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
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppImage1: TppImage;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel14: TppLabel;
    ppDBText12: TppDBText;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    procedure FormCreate(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcForPagoChange(Sender: TObject);
    procedure btnGeneraClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnPintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure paraPrintExcel();
  end;

var
  FExistCredFSC: TFExistCredFSC;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFExistCredFSC.FormCreate(Sender: TObject);
var xsql,xDiaIni,xDiaFin:String;

begin
 btnExcel.Enabled := False;
 btnPint.Enabled  := False;
 xDiaIni := '01/'+copy(DateToStr(DM1.FechaSys),4,2)+'/'+copy(DateToStr(DM1.FechaSys),7,4);
 xDiaFin := copy(DateToStr(DaysInMonth(DM1.FechaSys)+1),1,2)+'/'+copy(DateToStr(DM1.FechaSys),4,2)+'/'+copy(DateToStr(DM1.FechaSys),7,4);
 dtpFecIni.date := StrToDate(xDiaIni);
 dtpFecFin.date := StrToDate(xDiaFin);

 XSQL := 'SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGOABR=''FSC'' ';
 DM1.cdsFormaPago.Close;
 DM1.cdsFormaPago.DataRequest(XSQL);
 DM1.cdsFormaPago.Open;


 XSQL := 'Select '' ''linea,'' ''ASOID,'' ''ASOCODMOD,'' ''ASODNI,'' ''ASOAPENOM,'' ''OFDESID,'' '' FEC_OTORG, '' ''CREDID, '' ''OFDESNOM From dual ';
 DM1.cdsQry6.Close;
 DM1.cdsQry6.DataRequest(XSQL);
 DM1.cdsQry6.Open;
 dbgCanceladoFSC.Selected.clear;
 //dbgCanceladoFSC.ControlType.Add('FLAG;CheckBox;S;N');
 //dbgCanceladoFSC.Selected.Add('FLAG'#9'2'#9' ');
// dbgCanceladoFSC.Selected.Add('LINEA'#9'03'#9'Reg'#9#9);
//Inicio HPC_201508_COB
 dbgCanceladoFSC.Selected.Add('LINEA'#9'06'#9'Reg'#9#9);
//Final HPC_201508_COB
 dbgCanceladoFSC.Selected.Add('ASOID'#9'10'#9'Cod.~Derrama'#9#9);
 dbgCanceladoFSC.Selected.Add('ASOCODMOD'#9'10'#9'Cod.~Modular'#9#9);
 dbgCanceladoFSC.Selected.Add('ASODNI'#9'08'#9'Num.~DNI'#9#9);
 dbgCanceladoFSC.Selected.Add('ASOAPENOM'#9'40'#9'Apellidos y Nombres'#9#9);
 dbgCanceladoFSC.Selected.Add('OFDESID'#9'02'#9'Cod.~Ofi.'#9#9);
 dbgCanceladoFSC.Selected.Add('OFDESNOM'#9'10'#9'Desc.~Oficina'#9#9);
 dbgCanceladoFSC.Selected.Add('CREDID'#9'20'#9'Numero~Crédito'#9#9);
 dbgCanceladoFSC.Selected.Add('FEC_OTORG'#9'10'#9'Fecha~Otorga.'#9#9);
 dbgCanceladoFSC.DataSource := Dm1.dsQry6;

end;

procedure TFExistCredFSC.btnFiltrarClick(Sender: TObject);
VAR Xsql:STRING;

begin

 btnExcel.Enabled := False;
 btnPint.Enabled  := False;

 If Length(Trim(dblcForPago.Text))=0 then
 Begin
   ShowMessage('Debe ingresar la Forma de Pago');
   screen.Cursor := crdefault;
   Exit;
 End;


 screen.Cursor := crhourglass;
 Xsql:='Select rownum linea,a.* '+
       'From (Select A.ASOID,D.ASOCODMOD,D.ASODNI,D.ASOAPENOM,C.OFDESID,B.FEC_OTORG,C.CREDID, E.OFDESNOM '+
       'From COB_FSC_DEUDA_FSC_CAB A,COB_FSC_DEUDA_FSC_DET B,CRE301 C,APO201 D,APO110 E '+
       'Where '+
       'A.FORPAGID='''+dblcForPago.Text+''' AND '+
       'A.FEC_APL_FSC>='''+dtpFecIni.Text+''' AND A.FEC_APL_FSC<='''+dtpFecFin.Text+''' AND '+
       //Inicio HPC_201510_COB
       'A.ID_EST_FSC NOT IN (''13'',''04'')  AND '+
       //Final HPC_201510_COB
       //Inicio HPC_201508_COB
       //'B.NUM_DEU=A.NUM_DEU AND B.NRO_REF_FSC=A.NRO_REF_FSC AND '+
       'B.NUM_DEU=A.NUM_DEU AND B.NRO_REF_FSC=A.NRO_REF_FSC AND NVL(B.FLG_ANU_EXT,''X'') NOT IN (''A'',''E'') AND '+
       //Final HPC_201508_COB
       'C.ASOID=B.ASOID AND C.CREDID=B.CRE_APL_FSC AND C.CREESTID NOT IN (''13'',''04'') AND '+
       'D.ASOID=C.ASOID  AND '+
       'E.OFDESID=C.OFDESID  AND '+
       'NOT EXISTS (SELECT CREDID FROM COB_EXP_CAN_FSC_DET F WHERE F.ASOID=B.ASOID AND F.CREDID=B.CRE_APL_FSC) '+
       'Order by D.ASOAPENOM,B.FEC_OTORG)A ';
  DM1.cdsQry6.Close;
  DM1.cdsQry6.DataRequest(Xsql);
  DM1.cdsQry6.Open;
  //Inicio HPC_201508_COB
  DM1.cdsQry6.IndexFieldNames := 'linea';
  //Final HPC_201508_COB
  dbgCanceladoFSC.DataSource := DM1.dsQry6;

  If DM1.cdsQry6.RecordCount=0 then
  Begin
    ShowMessage('No existe Información para Mostrar');
    btnGenera.Enabled := False;
    screen.Cursor := crdefault;
    Exit;
  End;

  screen.Cursor := crdefault;
  btnGenera.Enabled := True;
end;

procedure TFExistCredFSC.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
end;

procedure TFExistCredFSC.dblcForPagoChange(Sender: TObject);
begin
  if dm1.cdsFormaPago.Locate('FORPAGOID',VarArrayOf([dblCForPago.Text]),[]) then
     EdtTipDes.Text := dm1.cdsFormaPago.fieldbyname('FORPAGODES').AsString
  else  EdtTipDes.Text := '' ;
end;

procedure TFExistCredFSC.btnGeneraClick(Sender: TObject);
var Xsql,xNumexp:string;
begin

   If  Dm1.cdsQry6.RecordCount=0 then
   Begin
     ShowMessage('no existe datos para procesar');
     exit;
   End;

   fmes.Text := DM1.StrZero(fmes.Text, 2);
   If (dm1.Valores(fAno.Text) = 0) Or (dm1.Valores(fmes.Text) = 0) Then
   Begin
      ShowMessage('Parametros incorrectos..?');
      screen.Cursor := crdefault;
      exit;
   End;

   If MessageDlg('GENERA información de CRÉDITOS CANCELADOS con FSC? ',
       mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
     screen.Cursor := crdefault;
     Exit;
   End;

   If Length(Trim(edtMemo.Text))=0 Then
   Begin
     ShowMessage('Debe ingresar numero de Memorandum');
     screen.Cursor := crdefault;
     exit;
   End;

   If Length(Trim(edtdescrip.Text))=0 Then
   Begin
     ShowMessage('Debe ingresar una descripción breve');
     screen.Cursor := crdefault;
     exit;
   End;

   DM1.cdsQry6.DisableControls;
   DM1.cdsQry6.First;
   xNumexp:='';

   //Adiciona Detalle
   screen.Cursor := crdefault;
   While not DM1.cdsQry6.Eof Do
   Begin
     Xsql:='Insert into COB_EXP_CAN_FSC_DET(PERANO,PERMES,NUMMEMO,IDCORR,ASOID,ASOCODMOD,DNI,ASOAPENOM,OFDESID,CREFOTORG,CREDID,FREG,USUARIO) '+
           'Values( '+
           ''''+fano.Text+''','+
           ''''+fmes.Text+''','+
           ''''+trim(edtMemo.Text)+''','+
           ''''+DM1.cdsQry6.FieldByname('linea').AsString+''','+
           ''''+DM1.cdsQry6.FieldByname('asoid').AsString+''','+
           ''''+DM1.cdsQry6.FieldByname('asocodmod').AsString+''','+
           ''''+DM1.cdsQry6.FieldByname('asodni').AsString+''','+
           ''''+DM1.cdsQry6.FieldByname('asoapenom').AsString+''','+
           ''''+DM1.cdsQry6.FieldByname('ofdesid').AsString+''','+
           ''''+DM1.cdsQry6.FieldByname('FEC_OTORG').AsString+''','+
           ''''+DM1.cdsQry6.FieldByname('credid').AsString+''',SYSDATE,'+
           ''''+DM1.wUsuario+''')';
      Dm1.DCOM1.AppServer.EjecutaSQL(xSQL);
      xNumexp:=DM1.cdsQry6.FieldByname('linea').AsString;
      Dm1.cdsQry6.Next;
   End;

   //Adiciona Cabecera
   Xsql:='Insert Into  COB_EXP_CAN_FSC_CAB(PERANO,PERMES,NUMMEMO,DESMEMO,NUMEXP,FECINI,FECFIN,FORPAGID,FREG,USUARIO) Values('+
         ''''+fano.Text+''','+
         ''''+fmes.Text+''','+
         ''''+trim(edtMemo.Text)+''','+
         ''''+trim(edtdescrip.Text)+''','+
         ''''+xNumexp+''','+
         ''''+dtpFecIni.Text+''','+
         ''''+dtpFecFin.Text+''','+
         ''''+dblcForPago.Text+''',SYSDATE,'+
          ''''+DM1.wUsuario+''')';
   Dm1.DCOM1.AppServer.EjecutaSQL(xSQL);

   DM1.cdsQry6.EnableControls;

   ShowMessage('Generación Exitosa');
   btnExcel.Enabled  := true;
   btnPint.Enabled   := true;   
   btnNuevo.Enabled  := true;
   btnGenera.Enabled := False;
   screen.Cursor := crdefault;
end;

procedure TFExistCredFSC.btnExcelClick(Sender: TObject);

begin
   paraPrintExcel;
   dtgData.DataSource:=DM1.dsQry5;
   DM1.HojaExcel('Creditos Cancelado FSC',dtgData.DataSource,dtgData);
end;

procedure TFExistCredFSC.BitBtn3Click(Sender: TObject);
begin
 close
end;

procedure TFExistCredFSC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Inicio HPC_201508_COB
// Dm1.cdsQry6.Close;
// Dm1.cdsQry5.Close;
 DM1.cdsQry6.Close ;
 DM1.cdsQry6.IndexFieldNames := '';
 DM1.cdsQry5.Close ;
 DM1.cdsQry5.IndexFieldNames := '';
//Final HPC_201508_COB

end;

procedure TFExistCredFSC.btnNuevoClick(Sender: TObject);
begin
FormCreate(Self);
edtMemo.Text :='';
fano.Text := '2015';
fmes.Text := '01';
edtdescrip.Text :='';
btnExcel.Enabled  := False;
 btnPint.Enabled  := False;
btnNuevo.Enabled  := False;
btnGenera.Enabled := False;
//Inicio HPC_201508_COB
 DM1.cdsQry6.Close ;
 DM1.cdsQry6.IndexFieldNames := '';
 DM1.cdsQry5.Close ;
 DM1.cdsQry5.IndexFieldNames := '';
//Final HPC_201508_COB
end;

procedure TFExistCredFSC.btnPintClick(Sender: TObject);
begin
  paraPrintExcel;
  ppeline1.DataSource := DM1.dsqry5;
  ppRepExistencia.DataPipeline := ppeline1;
  ppD1.Report := ppRepExistencia;
  ppRepExistencia.Print;
  ppRepExistencia.Stop;
  //ppd1.ShowModal;
end;

procedure TFExistCredFSC.paraPrintExcel;
var xsql:String;
begin
  xsql:= 'Select A.perano, A.permes, A.nummemo, A.idcorr, A.asoid, A.asocodmod, A.dni, A.asoapenom, A.ofdesid, A.crefotorg, A.credid, A.flgfisico, A.freg, A.usuario, '
        +'       B.fecini,B.fecfin,B.FORPAGID,D.forpagodes,C.ofdesnom '
        +'From  COB_EXP_CAN_FSC_CAB B,COB_EXP_CAN_FSC_DET A,APO110 C,COB101 D  '
        +'Where B.perano='''+fano.Text+''' And B.permes='''+fmes.Text+''' And B.nummemo='''+Trim(edtMemo.Text)+''' '
        +' And  A.perano=b.perano And A.permes=B.permes And A.nummemo=b.nummemo '
        +' And C.OFDESID=A.OFDESID(+) And D.FORPAGOID=B.FORPAGID(+) '
        +'Order By A.perano, A.permes, A.nummemo,TO_NUMBER(A.idcorr) ';
  Dm1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xsql);
  DM1.cdsQry5.Open;
  If DM1.cdsQry5.RecordCount=0 Then
  Begin
    ShowMessage('No existe información para exportar a Excel');
    Exit;
  End;
end;

end.
//Final HPC_201502_COB
