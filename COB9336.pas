unit COB9336;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, wwdbdatetimepicker, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppPrnabl,
  ppCtrls, ppBands, ppCache, ppVar, DBGrids, Grids, Wwdbigrd, Wwdbgrid, DB;

type
  TFRepBloqueados = class(TForm)
    ppbdepCuoBlo: TppBDEPipeline;
    pprCuoBlo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape5: TppShape;
    ppLabel8: TppLabel;
    ppShape6: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape7: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    pplTitulo1: TppLabel;
    pplTitulo2: TppLabel;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel18: TppLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    BitPrint: TBitBtn;
    DataSource1: TDataSource;
    dbgPrevio: TwwDBGrid;
    DBGrid: TDBGrid;
    Btnimprimir: TBitBtn;
    BtnaExcel: TBitBtn;
    BtnSalir: TBitBtn;
    procedure BitPrintClick(Sender: TObject);
    procedure BtnSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BtnimprimirClick(Sender: TObject);
    procedure BtnaExcelClick(Sender: TObject);
    procedure dbdtpInicioChange(Sender: TObject);
    procedure dbdtpFinalChange(Sender: TObject);
  private
    procedure inicializa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepBloqueados: TFRepBloqueados;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFRepBloqueados.BitPrintClick(Sender: TObject);
var
  xSql:String;
begin

  If Trim(dbdtpInicio.Text) = '' Then
  Begin
    MessageDlg('Ingrese fecha inicial', mtInformation, [mbOk], 0);
    dbdtpInicio.SetFocus;
    Exit;
  End;
  
  If Trim(dbdtpFinal.Text) = '' Then
  Begin
    MessageDlg('Ingrese fecha final', mtInformation, [mbOk], 0);
    dbdtpFinal.SetFocus;
    Exit;
  End;
  If dbdtpInicio.Date > dbdtpFinal.Date Then
  Begin
    MessageDlg('Fecha inicial mayor a la fecha final', mtInformation, [mbOk], 0);
    dbdtpInicio.SetFocus;
    Exit;
  End;

  xSQL  :=  ' SELECT SUBSTR(A.CREDID,3,4) ANO, C.ASOCODMOD, C.ASOAPENOM, SUBSTR(B.CREDID,9,7) CREDID, SUBSTR(A.CREBLOQOBS,1,70) CREBLOQOBS,  TO_DATE(A.CREBLOQFEC) CREBLOQFEC,  A.USUBLOQ'
  +' FROM CRE302 A, CRE301 B, APO201 C'
  +' WHERE  A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.ASOID = C.ASOID AND A.CREESTID = ''19'' '
  +' AND A.CREFVEN >= '+QuotedStr(dbdtpInicio.Text)
  +' AND A.CREFVEN <= '+QuotedStr(dbdtpFinal.Text);
  
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  If DM1.cdsReporte.RecordCount = 0 Then
  Begin
    MessageDlg('No existe información para imprimir', mtInformation, [mbOk], 0);
    dbdtpInicio.SetFocus;
    inicializa;
    Exit;
  End;
  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add('ANO'#9'4'#9'Año del~Crédito'#9#9);
  dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbgPrevio.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos y~nombres'#9#9);
  dbgPrevio.Selected.Add('CREDID'#9'7'#9'Número de~credito'#9#9);
  dbgPrevio.Selected.Add('CREBLOQOBS'#9'70'#9'Observación del bloqueo'#9#9);
  dbgPrevio.Selected.Add('CREBLOQFEC'#9'10'#9'Fecha de~bloqueo'#9#9);
  dbgPrevio.Selected.Add('USUBLOQ'#9'15'#9'Usuario que~bloquea'#9#9);
  dbgPrevio.ApplySelected;

  Btnimprimir.Enabled := True;
  BtnaExcel.Enabled   := True;

end;

procedure TFRepBloqueados.BtnSalirClick(Sender: TObject);
begin
Close;
end;

procedure TFRepBloqueados.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFRepBloqueados.FormActivate(Sender: TObject);
begin
  inicializa;
  dbdtpInicio.SetFocus;
  dbdtpInicio.Date := Date;
  dbdtpFinal.Date  := Date;
end;

procedure TFRepBloqueados.inicializa;
begin
  Btnimprimir.Enabled := False;
  BtnaExcel.Enabled   := False;
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
end;

procedure TFRepBloqueados.BtnimprimirClick(Sender: TObject);
begin
  pplTitulo2.Caption := 'DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
  pprCuoBlo.Print;

end;

procedure TFRepBloqueados.BtnaExcelClick(Sender: TObject);
begin
  DBGrid.DataSource := DM1.dsReporte;
  DM1.HojaExcel('REPORTE', DM1.dsReporte, DBGrid);
end;

procedure TFRepBloqueados.dbdtpInicioChange(Sender: TObject);
begin
  inicializa;
end;

procedure TFRepBloqueados.dbdtpFinalChange(Sender: TObject);
begin
  inicializa;
end;

end.
