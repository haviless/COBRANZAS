// Inicio Uso Estándares: 07/01/2015
// Unidad               : COBF010
// Formulario           : FMarcaCredFSC
// Fecha de Creación    : 07/01/2015
// Autor                : Area de desarrollo de sistemas RMZ.
// Objetivo             : Marca los Expedientes encontrados en Archivo Central
// HPC_201502_COB       : Creación de Formulario
//Inicio HPC_201502_COB
unit COBF010;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Mask, wwdbedit,
  Wwdbspin, Buttons,DB, DBGrids, Wwkeycb;

type
  TFMarcaCredFSC = class(TForm)
    Label5: TLabel;
    GroupBox1: TGroupBox;
    btnFiltrar: TBitBtn;
    Panel2: TPanel;
    fano: TwwDBSpinEdit;
    fmes: TwwDBSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    edtMemo: TEdit;
    pnlMemo: TPanel;
    Shape1: TShape;
    Label4: TLabel;
    dbgMemos: TwwDBGrid;
    GroupBox2: TGroupBox;
    Button1: TButton;
    dbgCanceladoFSC: TwwDBGrid;
    GroupBox3: TGroupBox;
    rdEncontrados: TRadioButton;
    rdNoencontrados: TRadioButton;
    rdTodos: TRadioButton;
    btnGrabar: TBitBtn;
    btnExcel: TBitBtn;
    BitBtn3: TBitBtn;
    dtgData: TDBGrid;
    Panel3: TPanel;
    Label6: TLabel;
    edtBusca: TwwIncrementalSearch;
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgMemosDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGrabarClick(Sender: TObject);
    procedure dbgCanceladoFSCCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure fmesExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pormemo();
  end;

var
  FMarcaCredFSC: TFMarcaCredFSC;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFMarcaCredFSC.btnFiltrarClick(Sender: TObject);
var Xsql,xWhere:string;
begin

   fmes.Text := DM1.StrZero(fmes.Text, 2);
   If Length(Trim(edtMemo.Text))=0 then
   Begin
     pormemo;
     exit;
   End;

   If rdEncontrados.Checked   Then xWhere:=' And flgfisico=''S'' ';
   If rdNoencontrados.Checked Then xWhere:=' And nvl(flgfisico,''N'')=''N'' ';
   If rdTodos.Checked         Then xWhere:=' ';


   Xsql:= 'Select ''N'' FLAG,perano, permes, nummemo, idcorr, asoid, asocodmod, dni, asoapenom, ofdesid,flgfisico, crefotorg, credid, freg, usuario '
         +'From  COB_EXP_CAN_FSC_DET '
         +'Where perano='''+fano.Text+''' And permes='''+fmes.Text+''' And nummemo='''+Trim(edtMemo.Text)+''' '+xWhere;
   Dm1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xsql);
   DM1.cdsQry6.Open;

   If DM1.cdsQry6.RecordCount=0 then
   Begin
      ShowMessage('No existe Información para Mostrar');
      Exit;
   End;

end;

procedure TFMarcaCredFSC.FormCreate(Sender: TObject);
VAR XSQL:STRING;
begin

 XSQL := 'Select ''N''FLAG,'' ''perano, '' ''permes, '' ''nummemo, '' ''idcorr, '' ''asoid, '' ''asocodmod, '' ''dni, '' ''asoapenom, '' ''ofdesid,'' '' flgfisico, '' ''crefotorg, '' ''credid,'' ''freg, '' ''usuario From dual ';
 DM1.cdsQry6.Close;
 DM1.cdsQry6.DataRequest(XSQL);
 DM1.cdsQry6.Open;
 rdNoencontrados.Checked := True;

 dbgCanceladoFSC.Selected.clear;
 dbgCanceladoFSC.ControlType.Add('FLAG;CheckBox;S;N');
 dbgCanceladoFSC.Selected.Add('FLAG'#9'2'#9' ');;
 dbgCanceladoFSC.Selected.Add('IDCORR'#9'03'#9'Reg'#9#9);
 dbgCanceladoFSC.Selected.Add('ASOID'#9'10'#9'Cod.~Derrama'#9#9);
 dbgCanceladoFSC.Selected.Add('ASOCODMOD'#9'10'#9'Cod.~Modular'#9#9);
 dbgCanceladoFSC.Selected.Add('DNI'#9'08'#9'Num.~DNI'#9#9);
 dbgCanceladoFSC.Selected.Add('ASOAPENOM'#9'40'#9'Apellidos y Nombres'#9#9);
 dbgCanceladoFSC.Selected.Add('OFDESID'#9'02'#9'Cod.~Ofi.'#9#9);
 dbgCanceladoFSC.Selected.Add('CREDID'#9'20'#9'Numero~Crédito'#9#9);
 dbgCanceladoFSC.Selected.Add('CREFOTORG'#9'10'#9'Fecha~Otorga.'#9#9);
 dbgCanceladoFSC.DataSource := Dm1.dsQry6;

end;


procedure TFMarcaCredFSC.pormemo;
var xsql:string;
begin
 dbgMemos.Selected.clear;
 dbgMemos.Selected.Add('nummemo'#9'15'#9'Numero~Memo'#9#9);
 dbgMemos.Selected.Add('desmemo'#9'40'#9'Descripción'#9#9);
 dbgMemos.Selected.Add('fecini'#9'10'#9'Fecha~Inicio'#9#9);
 dbgMemos.Selected.Add('fecfin'#9'10'#9'Fecha~Final'#9#9);
 dbgMemos.Selected.Add('forpagid'#9'02'#9'Forma~Pago'#9#9);
 dbgMemos.Selected.Add('freg'#9'10'#9'Fecha~Registro.'#9#9);
 dbgMemos.Selected.Add('usuario'#9'15'#9'Usuario~Registró'#9#9);
 dbgMemos.DataSource := Dm1.dsQry4;

 xsql:='select perano, permes, fecini, fecfin, nummemo, desmemo, forpagid, numexp, freg, usuario '+
       'from cob_exp_can_fsc_cab '+
       'Where perano='''+fano.Text+''' and permes='''+fmes.Text+''' ';
 DM1.cdsQry4.Close;
 DM1.cdsQry4.DataRequest(xsql);
 DM1.cdsQry4.Open;
 edtBusca.Text := '';
 DM1.cdsQry4.IndexFieldNames := 'nummemo';
 edtBusca.SearchField := 'nummemo';
 pnlMemo.Left := 35;
 pnlMemo.Top  := 104;
 pnlMemo.Visible := True;
 edtBusca.SetFocus;
end;


procedure TFMarcaCredFSC.Button1Click(Sender: TObject);
begin
 pnlMemo.Visible := False;
end;

procedure TFMarcaCredFSC.dbgMemosDblClick(Sender: TObject);
begin
 edtMemo.Text:= DM1.cdsQry4.Fieldbyname('nummemo').AsString;
 pnlMemo.Visible := False;
end;

procedure TFMarcaCredFSC.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
end;

procedure TFMarcaCredFSC.btnGrabarClick(Sender: TObject);
var xsql,xWhere2:string;
begin
   DM1.cdsQry6.DisableControls;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
     If DM1.cdsQry6.FieldByName('FLAG').AsString='S' Then
     Begin
       xWhere2 :=  'AND IDCORR='''+DM1.cdsQry6.FieldByName('IDCORR').AsString+''' ';
       xsql    :=  'Update COB_EXP_CAN_FSC_DET SET FLGFISICO=''S''  '+
                   'Where perano='''+fano.Text+''' And permes='''+fmes.Text+''' And nummemo='''+Trim(edtMemo.Text)+''' '+xWhere2;
       Dm1.DCOM1.AppServer.EjecutaSQL(xSQL);
     End;
     DM1.cdsQry6.Next;
   End;

   rdNoencontrados.Checked := True;
   ShowMessage('Grabación Exitosa');
   DM1.cdsQry6.EnableControls;
   btnFiltrarClick(Self);

end;

procedure TFMarcaCredFSC.dbgCanceladoFSCCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

 If DM1.cdsQry6.FieldByName('FLGFISICO').AsString='S' Then
  Begin
    AFont.Color :=  clBlack;
    ABrush.Color := $00C1FFFF;
  End;
end;

procedure TFMarcaCredFSC.fmesExit(Sender: TObject);
begin
   fmes.Text := DM1.StrZero(fmes.Text, 2);
end;

procedure TFMarcaCredFSC.BitBtn3Click(Sender: TObject);
begin
 close
end;

procedure TFMarcaCredFSC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm1.cdsQry6.Close;
  dm1.cdsQry5.Close;
  dm1.cdsQry4.Close;
end;

procedure TFMarcaCredFSC.btnExcelClick(Sender: TObject);
var xsql,xWhere:String;
begin

   fmes.Text := DM1.StrZero(fmes.Text, 2);
   If rdEncontrados.Checked   Then xWhere:=' And flgfisico=''S'' ';
   If rdNoencontrados.Checked Then xWhere:=' And nvl(flgfisico,''N'')=''N'' ';
   If rdTodos.Checked         Then xWhere:=' ';

   Xsql:= 'Select perano, permes, nummemo, idcorr, asoid, asocodmod, dni, asoapenom, ofdesid,flgfisico, crefotorg, credid, freg, usuario '
         +'From  COB_EXP_CAN_FSC_DET '
         +'Where perano='''+fano.Text+''' And permes='''+fmes.Text+''' And nummemo='''+Trim(edtMemo.Text)+''' '+xWhere;
  Dm1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xsql);
  DM1.cdsQry5.Open;
  If DM1.cdsQry5.RecordCount=0 Then
  Begin
    ShowMessage('No existe información para exportar a Excel');
    Exit;
  End;

   dtgData.DataSource:=DM1.dsQry5;
   DM1.HojaExcel('Creditos Cancelado FSC',dtgData.DataSource,dtgData);
end;

end.
//Final HPC_201502_COB
