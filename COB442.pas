unit COB442;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, db, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppVar, ppCtrls,
  ppPrnabl, ppBands, ppCache;

type
  TFvalincdesnac = class(TForm)
    dbgincbannac: TwwDBGrid;
    btnCerrar: TBitBtn;
    btnActualizar: TBitBtn;
    BitBtn1: TBitBtn;
    ppdbpreporte: TppDBPipeline;
    pprreporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape44: TppShape;
    ppShape39: TppShape;
    ppShape38: TppShape;
    ppShape37: TppShape;
    ppLabel39: TppLabel;
    ppLabel60: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel71: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel81: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppShape2: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppShape3: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    pplImpresopor: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    procedure FormActivate(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnActualizarClick(Sender: TObject);
    procedure dbgincbannacDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fvalincdesnac: TFvalincdesnac;

implementation

uses COBDM1, COB902;

{$R *.dfm}

procedure TFvalincdesnac.FormActivate(Sender: TObject);
begin
  Fvalincdesnac.Caption := 'Registros descargados con inconsistencia del '+DM1.cdsCuentas.FieldByname('FECPRO').AsString;
  dbgincbannac.Selected.Clear;
  dbgincbannac.Selected.Add('ASOID'#9'12'#9'Identificación~del asociado'#9#9);
  dbgincbannac.Selected.Add('APENOMCLI'#9'36'#9'Apellidos y nombre(s)~del asociado'#9#9);
  dbgincbannac.Selected.Add('NUMDOCCOB'#9'10'#9'DNI del~asociado'#9#9);
  dbgincbannac.Selected.Add('MONPAG'#9'10'#9'Monto~pagado'#9#9);
  dbgincbannac.Selected.Add('FECPAG'#9'12'#9'Fecha de~pago'#9#9);
  dbgincbannac.Selected.Add('HORPAG'#9'8'#9'Hora de~pago'#9#9);
  dbgincbannac.Selected.Add('IDEPER'#9'12'#9'Número de~operación'#9#9);
  dbgincbannac.Selected.Add('DESOFI'#9'25'#9'Oficina de~pago'#9#9);
  dbgincbannac.ApplySelected;
  TNumericField(DM1.cdsQry5.FieldByName('MONPAG')).DisplayFormat := '###,###,##0.00';
end;

procedure TFvalincdesnac.btnCerrarClick(Sender: TObject);
begin
  Fvalincdesnac.Close;
end;

procedure TFvalincdesnac.btnActualizarClick(Sender: TObject);
Var xSql, xfecpro:String;
begin
  // Actualizar
  If MessageDlg('¿ Seguro de actualizar estos registros ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    DM1.cdsQry5.First;
    While Not DM1.cdsQry5.Eof Do
    Begin
      If DM1.cdsQry5.FieldByName('ASOID').AsString <> '' Then
      Begin
        xSql := 'UPDATE COB_CUE_REC_BAN_NAC_DET SET ASOID = '+QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString)+', NUMDOCCOB = '+QuotedStr(DM1.cdsQry5.FieldByName('NUMDOCCOB').AsString)+' WHERE FECPAG = '+QuotedStr(DM1.cdsQry5.FieldByName('FECPAG').AsString)
        +' AND APENOMCLI = '+QuotedStr(DM1.cdsQry5.FieldByName('APENOMCLI').AsString)+' AND IDEPER = '+QuotedStr(DM1.cdsQry5.FieldByName('IDEPER').AsString);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      DM1.cdsQry5.Next;
    End;
  End;
  xfecpro := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  xSql := 'SELECT A.APENOMCLI, SUBSTR(A.NUMDOCCOB,3,8) DNICLI, A.MONDELPAG, A.FECPAG, A.HORPAG, A.IDEPER, B.DESOFI, A.ASOID'
  +' FROM COB_CUE_REC_BAN_NAC_DET A, COB_OFI_BAN_NAC B WHERE FECPAG = '+QuotedStr(xfecpro)
  +' AND A.CODOFI = B.CODOFI AND A.ASOID IS NULL';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  dbgincbannac.Refresh;
End;

procedure TFvalincdesnac.dbgincbannacDblClick(Sender: TObject);
begin
  DM1.xSgr := '9';
  Try
    fSeleccion := TfSeleccion.create(Self);
    fSeleccion.gbbuscar.Width:=430; fSeleccion.gbbuscar.Height :=40;
    fSeleccion.edtBuscar.Width:=407; fSeleccion.edtBuscar.Height := 28;
    fSeleccion.ShowModal;
  Finally
    fSeleccion.Free;
  End;
end;

procedure TFvalincdesnac.BitBtn1Click(Sender: TObject);
begin
  ppLabel81.Caption := 'DEL : '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  pplImpresopor.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  pprreporte.Print;
end;

end.
