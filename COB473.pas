// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB473
// Formulario           : FInsAso
// Fecha de Creación    : 02/01/2017
// Autor                : Isaac Revilla Chávez
// Objetivo             : Inserción de asociados a reprogramar
// Actualizaciones      :
// HPC_201701           : Creación
// HPC_201727_COB       : Se añade despegables para seleccionar el motivo del diferimiento
unit COB473;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Grids, Wwdbigrd, Wwdbgrid, Buttons, FileCtrl, ComObj,
  // Inicio: HPC_201727_COB
  // Se añaden unidades de control de los despegables
  // DB, DBClient;
  DB, DBClient, wwdblook, Wwdbdlg;
  // Fin: HPC_201727_COB
type
  TFInsAso = class(TForm)
    gbporarchivo: TGroupBox;
    btncargaarchivo: TBitBtn;
    dbgimporta: TwwDBGrid;
    btnImporta: TBitBtn;
    dsImporta: TDataSource;
    cdsImporta: TClientDataSet;
    btnsalir: TBitBtn;
    gbcargaarchivo: TGroupBox;
    DriveComboBox: TDriveComboBox;
    DirectoryListBox: TDirectoryListBox;
    FileListBox: TFileListBox;
    // Inicio: HPC_201727_COB
    // Se modifica los nombres de los componentes
    // gbmotdif: TGroupBox;
    // memotdif: TMaskEdit;
    // Fin: HPC_201727_COB
    gbanomesdif: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    meanodif: TMaskEdit;
    memesdif: TMaskEdit;
    // Inicio: HPC_201727_COB
    // Se añaden componentes para selecionar el motivo de diferimiento
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    memotdif: TMaskEdit;
    edtdestipmotdifabr: TEdit;
    dblcdcodtipmot: TwwDBLookupComboDlg;
    dblcdcodsubtipmot: TwwDBLookupComboDlg;
    edtdesabrsubmot: TEdit;
    edtdesabrmot: TEdit;
    dblcdcodmot: TwwDBLookupComboDlg;
    // Fin: HPC_201727_COB
    procedure btncargaarchivoClick(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure meanodifKeyPress(Sender: TObject; var Key: Char);
    procedure memesdifKeyPress(Sender: TObject; var Key: Char);
    procedure meanodifExit(Sender: TObject);
    procedure memesdifExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    // Inicio: HPC_201727_COB
    // Se añaden componentes para selecionar el motivo de diferimiento
    procedure dblcdcodtipmotExit(Sender: TObject);
    procedure edtdestipmotdifabrChange(Sender: TObject);
    procedure dblcdcodsubtipmotExit(Sender: TObject);
    procedure edtdesabrsubmotChange(Sender: TObject);
    procedure dblcdcodmotExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    // Fin: HPC_201727_COB
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInsAso: TFInsAso;

implementation

uses COBDM1, COB449;

{$R *.dfm}

procedure TFInsAso.btncargaarchivoClick(Sender: TObject);
const
  xlCellTypeLastCell = $0000000B;
var f: TextFile;
    lineaactual, xarchivo, xasoapenom:  string;
    xSql, xasocodmod:String;
    Excel, Sheet: OLEVariant;
    CantRow, CantCol, i, j : Integer;
    RangoMatriz: Variant;
begin
   If Trim(FileListBox.FileName) = '' Then
   Begin
      MessageDlg('Debe seleccionar el archivo a importar', mtError, [mbOk], 0);
      Exit;
   End;
  xarchivo := FileListBox.FileName;
  Excel := CreateOleObject('Excel.Application');
  Excel.Workbooks.Open(xarchivo);
  Sheet := Excel.Workbooks[ExtractFileName(xarchivo)].WorkSheets[1];
  Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
  CantRow := Excel.ActiveCell.Row;
  CantCol := Excel.ActiveCell.Column;
  RangoMatriz := Excel.Range['A1', Excel.Cells.Item[CantRow,CantCol]].Value;
  Screen.Cursor := crHourGlass;
  For i:=1 To CantRow Do
  Begin
     For j:=1 To CantCol Do
     Begin
        If j = 1 Then xasocodmod := RangoMatriz[i,j]
        Else xasoapenom := Copy(RangoMatriz[i,j],1,5);
     End;
     xSql := 'SELECT ASOID, ASOCODMOD, ASOAPENOMDNI, ASODNI, UPROID, UPAGOID, USEID, ASOTIPID FROM APO201 WHERE ASOCODMOD = '+QuotedStr(xasocodmod)
     +' AND SUBSTR(ASOAPENOM,1,5) = '+QuotedStr(xasoapenom);
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSql);
     DM1.cdsQry.Open;
     If Trim(DM1.cdsQry.FieldByName('ASOID').AsString) <> '' Then
     Begin
       cdsImporta.Insert;
       cdsImporta.Edit;
       cdsImporta.FieldByName('ASODNI').AsString       := DM1.cdsQry.FieldByName('ASODNI').AsString;
       cdsImporta.FieldByName('ASOAPENOMDNI').AsString := DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString;
       cdsImporta.FieldByName('ASOCODMOD').AsString    := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
       cdsImporta.FieldByName('ASOID').AsString        := DM1.cdsQry.FieldByName('ASOID').AsString;
       cdsImporta.FieldByName('ASOTIPID').AsString     := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
       cdsImporta.FieldByName('UPROID').AsString       := DM1.cdsQry.FieldByName('UPROID').AsString;
       cdsImporta.FieldByName('UPAGOID').AsString      := DM1.cdsQry.FieldByName('UPAGOID').AsString;
       cdsImporta.FieldByName('USEID').AsString        := DM1.cdsQry.FieldByName('USEID').AsString;
       cdsImporta.Post;
     End;
  End;
  Excel.Quit;
  Screen.Cursor := crDefault;
  If cdsImporta.RecordCount = 0 Then
  Begin
     btnImporta.Enabled := False;
     MessageDlg('No se ha encontrado registros de asociados.', mtError, [mbOk], 0);
     Exit;
  End
  Else
  Begin
     btnImporta.Enabled := True;
     MessageDlg('La carga ha conluido.', mtInformation, [mbOk], 0);
  End;
  btncargaarchivo.Enabled := False;
end;

procedure TFInsAso.btnImportaClick(Sender: TObject);
Var xcorrelativo, xSql, xencontrado:String;
begin
   // Inicio: HPC_201727_COB
   // Se valida que existe información en los campos antes de grabar
   // If Trim(memotdif.Text) = '' Then
   // Begin
   //   MessageDlg('Debe ingresar un motivo del diferimento.', mtError, [mbOk], 0);
   //   memotdif.SetFocus;
   //   Exit;
   // End;
   If Trim(dblcdcodtipmot.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar Tipo de motivo del diferimento.', mtError, [mbOk], 0);
      dblcdcodtipmot.SetFocus;
      Exit;
   End;
   If Trim(dblcdcodsubtipmot.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar Sub tipo de motivo del diferimento.', mtError, [mbOk], 0);
      dblcdcodsubtipmot.SetFocus;
      Exit;
   End;
   If Trim(dblcdcodmot.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar Detalle del motivo del diferimento.', mtError, [mbOk], 0);
      dblcdcodmot.SetFocus;
      Exit;
   End;
   // Fin: HPC_201727_COB

   If Trim(meAnoDif.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar año del diferimento.', mtError, [mbOk], 0);
      meAnoDif.SetFocus;
      Exit;
   End;
   If Trim(meMesDif.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar mes del diferimento.', mtError, [mbOk], 0);
      meMesDif.SetFocus;
      Exit;
   End;
   If MessageDlg('¿Esta Seguro que desea importar estos registros para la reprogramación de cuotas?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   Begin
      xencontrado := 'N';
      cdsImporta.First;
      While Not cdsImporta.Eof Do
      Begin
         xSql := 'SELECT ASOID FROM COB_REP_CUO_DET_ASO WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
         +' AND ASOID = '+QuotedStr(cdsImporta.FieldByName('ASOID').AsString)+' AND ANOMESREP = '+QuotedStr(meAnoDif.Text+meMesDif.Text);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         If Trim(DM1.cdsQry.FieldByName('ASOID').AsString) <> '' Then xencontrado := 'S';
         cdsImporta.Next;
      End;
      If xencontrado = 'N' Then
      Begin
         cdsImporta.First;
         Screen.Cursor := crHourGlass;
         While Not cdsImporta.Eof Do
         Begin
            // Inicio: HPC_201727_COB
            // Se añade la actualización del campo CODMOTDIF (código de motivo de diferimiento)
            // xSql := 'INSERT INTO COB_REP_CUO_DET_ASO (IDEREP, ASOTIPID, UPROID, UPAGOID, USEID, ANOMESREP, ASOID, ASODNI, ASOCODMOD, ASOAPENOMDNI, MOTREP, USUREG, FECREG) VALUES '
            xSql := 'INSERT INTO COB_REP_CUO_DET_ASO (IDEREP, ASOTIPID, UPROID, UPAGOID, USEID, ANOMESREP, ASOID, ASODNI, ASOCODMOD, ASOAPENOMDNI, MOTREP, CODMOTDIF, USUREG, FECREG) VALUES '
            +'('+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)+','+QuotedStr(cdsImporta.FieldByName('ASOTIPID').AsString)
            +','+QuotedStr(cdsImporta.FieldByName('UPROID').AsString)+','+QuotedStr(cdsImporta.FieldByName('UPAGOID').AsString)
            +','+QuotedStr(cdsImporta.FieldByName('USEID').AsString)+','+QuotedStr(meAnoDif.Text+meMesDif.Text)+','+QuotedStr(cdsImporta.FieldByName('ASOID').AsString)
            +','+QuotedStr(cdsImporta.FieldByName('ASODNI').AsString)+','+QuotedStr(cdsImporta.FieldByName('ASOCODMOD').AsString)+','+QuotedStr(cdsImporta.FieldByName('ASOAPENOMDNI').AsString)
            // +','+QuotedStr(memotdif.Text)+','+QuotedStr(DM1.wUsuario)+', SYSDATE)';
            +','+QuotedStr(memotdif.Text)+','+QuotedStr(dblcdcodmot.Text)+','+QuotedStr(DM1.wUsuario)+', SYSDATE)';
            // Fin: HPC_201727_COB
             DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            cdsImporta.Next;
         End;
         Screen.Cursor := crDefault;
         MessageDlg('Proceso de importación ha concluido.', mtInformation, [mbOk], 0);
      End
      Else
        MessageDlg('La información no fue añadido, porque el archivo ya fue cargado.', mtInformation, [mbOk], 0);

      FRepCuotas.MueDetArchivo;
   End;
   Close;
end;

procedure TFInsAso.btnsalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFInsAso.meanodifKeyPress(Sender: TObject; var Key: Char);
begin
   If Not (Key In ['0'..'9','.',#8]) Then
   Begin
      key:=#0;
      MessageDlg('Debe ingresar solo números.', mtError, [mbOk], 0);
   End;
end;

procedure TFInsAso.memesdifKeyPress(Sender: TObject; var Key: Char);
begin
   If Not (Key In ['0'..'9','.',#8]) Then
   Begin
      key:=#0;
      MessageDlg('Debe ingresar solo números.', mtError, [mbOk], 0);
   End;
end;

procedure TFInsAso.meanodifExit(Sender: TObject);
begin
   If Trim(meAnoDif.Text) = '' Then
   Begin
      Exit;
   End;
   If Length(Trim(meAnoDif.Text)) <> 4 Then
   Begin
     MessageDlg('El año debe contener 4 digitos.', mtError, [mbOk], 0);
     meAnoDif.SetFocus;
     Exit;
   End;
   If meAnoDif.Text > Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,1,4) Then
   Begin
     MessageDlg('El año a reprogramar no puede ser mayor al año de proceso.', mtError, [mbOk], 0);
     meAnoDif.SetFocus;
     Exit;
   End;
end;

procedure TFInsAso.memesdifExit(Sender: TObject);
begin
   If Trim(meMesDif.Text) = '' Then
   Begin
      Exit;
   End;
   If (StrToInt(meMesDif.Text) < 1) or (StrToInt(meMesDif.Text) > 12) Then
   Begin
      MessageDlg('Número de mes no permitido.', mtError, [mbOk], 0);
      meMesDif.SetFocus;
      Exit;
   End;
   If     (StrToInt(meAnoDif.Text) = StrToInt(Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,1,4)))
      And (StrToInt(meMesDif.Text) > StrToInt(Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,5,2))) Then
   Begin
      MessageDlg('Mes a reprogramar no puede ser mayor a la actual.', mtError, [mbOk], 0);
      meMesDif.SetFocus;
      Exit;
   End;
end;

procedure TFInsAso.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
end;

// Inicio: HPC_201727_COB
// Nuevos procedimientos para el control de los nuevos despegables
procedure TFInsAso.dblcdcodtipmotExit(Sender: TObject);
begin
   If trim(dblcdcodtipmot.Text) = '' Then
   Begin
      dblcdcodtipmot.Text := '';
      edtdestipmotdifabr.Text := '';
      dblcdcodsubtipmot.Text := '';
      edtdesabrsubmot.Text := '';
      dblcdcodmot.Text := '';
      edtdesabrmot.Text := '';
      Exit;
   End;
   edtdestipmotdifabr.Text := DM1.RecuperaDatos('COB_MOT_DIF_MAE', 'CODMOTDIF', dblcdcodtipmot.Text,'DESMOTABRDIF');
   If Trim(edtdestipmotdifabr.Text) = '' Then
   Begin
     MessageDlg('Código tipo motivo de diferimiento no valido.', mtError, [mbOk], 0);
     dblcdcodtipmot.Text  := '';
     edtdestipmotdifabr.Text := '';
     dblcdcodtipmot.SetFocus;
     Exit;
   End;
end;

procedure TFInsAso.edtdestipmotdifabrChange(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT SUBSTR(CODMOTDIF,1,4) CODSUBMOTDIF, DESMOTABRDIF  FROM COB_MOT_DIF_MAE'
   +' WHERE SUBSTR(CODMOTDIF,1,2) = '+QuotedStr(dblcdcodtipmot.Text)+' AND LENGTH(TRIM(CODMOTDIF)) = 4  ORDER BY SUBSTR(CODMOTDIF,1,4)';
   DM1.cdsDFam.Close;
   DM1.cdsDFam.DataRequest(xSql);
   DM1.cdsDFam.Open;
   dblcdcodsubtipmot.Selected.Clear;
   dblcdcodsubtipmot.Selected.Add('CODSUBMOTDIF'#9'4'#9'Codigo~sub tipo motivo'#9'F');
   dblcdcodsubtipmot.Selected.Add('DESMOTABRDIF'#9'25'#9'Descripción~sub tipo motivo'#9'F');
   dblcdcodsubtipmot.Text  := '';
   edtdesabrsubmot.Text := '';
   dblcdcodmot.Text  := '';
   edtdesabrmot.Text := '';
end;

procedure TFInsAso.dblcdcodsubtipmotExit(Sender: TObject);
begin
   If trim(dblcdcodsubtipmot.Text) = '' Then
   Begin
      dblcdcodsubtipmot.Text := '';
      edtdesabrsubmot.Text := '';
      dblcdcodmot.Text := '';
      edtdesabrmot.Text := '';
      Exit;
   End;
   edtdesabrsubmot.Text := DM1.RecuperaDatos('COB_MOT_DIF_MAE', 'CODMOTDIF', dblcdcodsubtipmot.Text,'DESMOTABRDIF');
   If Trim(edtdesabrsubmot.Text) = '' Then
   Begin
     MessageDlg('Código sub tipo motivo de diferimiento no valido.', mtError, [mbOk], 0);
     dblcdcodsubtipmot.Text  := '';
     edtdesabrsubmot.Text := '';
     dblcdcodsubtipmot.SetFocus;
     Exit;
   End;
end;

procedure TFInsAso.edtdesabrsubmotChange(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT CODMOTDIF, DESMOTABRDIF FROM COB_MOT_DIF_MAE'
   +' WHERE SUBSTR(CODMOTDIF,1,4) = '+QuotedStr(dblcdcodsubtipmot.Text)+' AND LENGTH(TRIM(CODMOTDIF)) = 6  ORDER BY CODMOTDIF';
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSql);
   DM1.cdsDSocioE.Open;
   dblcdcodmot.Selected.Clear;
   dblcdcodmot.Selected.Add('CODMOTDIF'#9'4'#9'Codigo~motivo diferimiento'#9'F');
   dblcdcodmot.Selected.Add('DESMOTABRDIF'#9'25'#9'Descripción~motivo diferimiento'#9'F');
   dblcdcodmot.Text  := '';
   edtdesabrmot.Text := '';
end;

procedure TFInsAso.dblcdcodmotExit(Sender: TObject);
begin
   If trim(dblcdcodmot.Text) = '' Then
   Begin
      dblcdcodmot.Text := '';
      edtdesabrmot.Text := '';
      Exit;
   End;
   edtdesabrmot.Text := DM1.RecuperaDatos('COB_MOT_DIF_MAE', 'CODMOTDIF', dblcdcodmot.Text,'DESMOTABRDIF');   
   If Trim(edtdesabrmot.Text) = '' Then
   Begin
     MessageDlg('Código tipo motivo de diferimiento no valido.', mtError, [mbOk], 0);
     dblcdcodmot.Text  := '';
     edtdesabrmot.Text := '';
     dblcdcodmot.SetFocus;
     Exit;
   End;
   memotdif.Text := Copy(Trim(edtdestipmotdifabr.Text)+'/'+Trim(edtdesabrsubmot.Text)+'/'+Trim(edtdesabrmot.Text),1,80);
end;

procedure TFInsAso.FormCreate(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT SUBSTR(CODMOTDIF,1,2) CODMOTDIF, DESMOTABRDIF  FROM COB_MOT_DIF_MAE WHERE LENGTH(TRIM(CODMOTDIF)) = 2 ORDER BY SUBSTR(CODMOTDIF,1,2)';
  DM1.cdsDLabo.Close;
  DM1.cdsDLabo.DataRequest(xSql);
  DM1.cdsDLabo.Open;
  dblcdcodtipmot.Selected.Clear;
  dblcdcodtipmot.Selected.Add('CODMOTDIF'#9'2'#9'Codigo~tipo de motivo'#9'F');
  dblcdcodtipmot.Selected.Add('DESMOTABRDIF'#9'25'#9'Descripción~tipo de motivo'#9'F');
end;
// Fin: HPC_201727_COB

end.
