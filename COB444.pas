unit COB444;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid;

type
  TFinfgenbannac = class(TForm)
    btngenerar: TBitBtn;
    Memo1: TMemo;
    dbgCabecera: TwwDBGrid;
    BtnCerrar: TBitBtn;
    procedure btngenerarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure actualiza;
    { Public declarations }
  end;

var
  Finfgenbannac: TFinfgenbannac;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFinfgenbannac.btngenerarClick(Sender: TObject);
Var fichero, xSql, xfecha,xfechas, linea, xcorrelativo, xfecpro, xhora: String;
f: textfile;
canreg:Integer;
begin
  If MessageDlg('Se va a generar información para el banco.  Seguro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    Screen.Cursor := crHourGlass;
    xSql := 'SELECT LPAD(MAX(CORPRO)+1,5, ''0'') CORPRO FROM COB_INF_GEN_BAN_NAC_CAB';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    If Trim(DM1.cdsQry.FieldByName('CORPRO').AsString) = '' Then
      xcorrelativo := '00001'
    Else
      xcorrelativo := DM1.cdsQry.FieldByName('CORPRO').AsString;
    xSql := 'SELECT MAX(FECPRO) FECPRO FROM COB_ENV_BAN_NAC';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    xfecpro := DM1.cdsQry.FieldByName('FECPRO').AsString;
    xSql := 'SELECT * FROM COB_ENV_BAN_NAC';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    xfecha := DateToStr(DM1.FechaSys);
    xhora  := Copy(TimeToStr(time),1,2)+Copy(TimeToStr(time),4,2)+Copy(TimeToStr(time),7,2)+Copy(TimeToStr(time),10,1)+Copy(TimeToStr(time),12,1);
    xfechas := Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2)+Copy(DateToStr(DM1.FechaSys),1,2)+'_'+xhora;
    fichero := 'D:\BN_'+xfechas+'.TXT';
    AssignFile(f,fichero);
    Rewrite(f);
    DM1.cdsQry.First;
    canreg := 0;
    While Not DM1.cdsQry.Eof Do
    Begin
      xSql := 'SELECT RPAD(TRIM(SUBSTR(ASOAPENOMDNI,1,32)),32,'' '') ASOAPENOMDNI FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString);
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSql);
      DM1.cdsQry2.Open;
      If DM1.cdsQry2.RecordCount > 0 Then
      Begin
        linea := '0054';
        linea := linea + xfecha;
        linea := linea + DM1.cdsQry.FieldByName('ASOID').AsString;
        linea := linea + '0000000054';
        linea := linea + DM1.cdsQry.FieldByName('NUMCRE').AsString;
        linea := linea + DM1.cdsQry2.FieldByName('ASOAPENOMDNI').AsString;
        linea := linea + DM1.cdsQry.FieldByName('ASODNI').AsString;
        linea := linea + 'PEN';
        linea := linea +Copy(DM1.cdsQry.FieldByName('SALDEU').AsString,1,13)+Copy(DM1.cdsQry.FieldByName('SALDEU').AsString,15,2);
        linea := linea +xfecha;
        linea := linea +'00000000';
        Memo1.Lines.Add(linea);
        writeln(f,linea);
      End;
      canreg := canreg + 1;
      DM1.cdsQry.Next;
    End;
    CloseFile(f);
    xSql := 'INSERT INTO COB_INF_GEN_BAN_NAC_CAB(USUGEN, FECHORGEN, CANREGGEN, FECHORPRO, CORPRO)'
    +' VALUES ('+QuotedStr(DM1.wUsuario)+', SYSDATE,'+IntToStr(canreg)+', to_date('+QuotedStr(copy(xfecpro,1,19))+',''dd/mm/yyyy hh24:mi:ss'')'
    +','+QuotedStr(xcorrelativo)+')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    Screen.Cursor := crDefault;
    actualiza;
    MessageDlg('Archivo fue grabado con exito', mtInformation,[mbOk],0);
  End;
end;

procedure TFinfgenbannac.FormActivate(Sender: TObject);
begin
  actualiza;
end;

procedure TFinfgenbannac.actualiza;
Var xSql:String;
begin
  xSql := 'SELECT * FROM COB_INF_GEN_BAN_NAC_CAB ORDER BY CORPRO DESC';
  DM1.cdsDLabo.Close;
  DM1.cdsDLabo.DataRequest(xSql);
  DM1.cdsDLabo.Open;
  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('CORPRO'#9'5'#9'Código de~registro'#9#9);
  dbgCabecera.Selected.Add('USUGEN'#9'15'#9'Usuario que~genera'#9#9);
  dbgCabecera.Selected.Add('FECHORGEN'#9'25'#9'Fecha y hora~de generación'#9#9);
  dbgCabecera.Selected.Add('CANREGGEN'#9'12'#9'Cantidad de~registros generados'#9#9);
  dbgCabecera.Selected.Add('FECHORPRO'#9'25'#9'Fecha y hora~de proceso'#9#9);
  dbgCabecera.ApplySelected;
  dbgCabecera.Refresh;
end;

procedure TFinfgenbannac.BtnCerrarClick(Sender: TObject);
begin
  Finfgenbannac.Close;
end;

end.
