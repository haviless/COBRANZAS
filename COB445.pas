unit COB445;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid;

type
  TFinfgenbancre = class(TForm)
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
  Finfgenbancre: TFinfgenbancre;

implementation

uses COBDM1, COB428, COB444;

{$R *.dfm}

procedure TFinfgenbancre.btngenerarClick(Sender: TObject);
Var fichero, xSql, xfecha, linea, xcorrelativo:String;
registros:Integer;
f: textfile;
xMax, xDiv, xAct:Integer;
Begin
  If MessageDlg('Se va a generar información para el banco.  Seguro?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    screen.Cursor := crHourGlass;
    xSql := 'SELECT LPAD(MAX(CORPRO)+1,5, ''0'') CORPRO FROM COB_INF_GEN_BAN_CRE_CAB';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    If Trim(DM1.cdsQry.FieldByName('CORPRO').AsString) = '' Then
      xcorrelativo := '00001'
    Else
      xcorrelativo := DM1.cdsQry.FieldByName('CORPRO').AsString;

  {  xSql := 'SELECT ''DD19301405628''||LPAD(TRIM(ASODNI),14, ''0'')||RPAD(TRIM(ASOAPENOMDNI),40,'' '')|| LPAD(TRIM(ASOID),30, ''0'') TEXTO'
    +' FROM APO201 WHERE ASODNI IS NOT NULL AND LENGTH(TRIM(ASODNI)) = 8 ';}

 //SE CAMBIA SEGUN MEMO 571-2008-DM-COB LOS CARACTERES  Ñ=N, Ü=U,`=ESPACIO EN BLANCO....04/09/2008 RMZ
   xSql := 'SELECT ''DD19301405628''||LPAD(TRIM(ASODNI),14, ''0'')||RPAD(TRIM(TRANSLATE(ASOAPENOMDNI,''ÑÜ'''''',''NU '')),40,'' '')|| LPAD(TRIM(ASOID),30, ''0'') TEXTO'
        +' FROM APO201 WHERE ASODNI IS NOT NULL AND LENGTH(TRIM(ASODNI)) = 8 ';

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    registros := DM1.cdsQry.RecordCount;
    xfecha := copy(DateToStr(DM1.FechaSys),7,4)+copy(DateToStr(DM1.FechaSys),4,2)+copy(DateToStr(DM1.FechaSys),1,2);
    xSql := 'SELECT ''CC19301405628P''||RPAD(''DERRAMA MAGISTERIAL'',40)||'
            +QuotedStr(xfecha)+'||'+QuotedStr(DM1.StrZero(IntToStr(registros),9))
            +' TEXTO FROM DUAL';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    fichero := 'D:\CDPG.TXT';
    AssignFile(f,fichero);
    Rewrite(f);
    linea := DM1.cdsQry2.FieldByName('TEXTO').AsString;
    Memo1.Lines.Add(linea);
    writeln(f,linea);
    DM1.cdsQry.First;
    xMax := DM1.cdsQry.RecordCount;
    xDiv := xMax Div 100;
    While not DM1.cdsQry.Eof do
    Begin
      xAct := dm1.cdsQry.RecNo;
      If xAct Mod xDiv = 0 Then FCtaRecBcoCre.Refresh;
      linea := DM1.cdsQry.FieldByName('TEXTO').AsString;
      Memo1.Lines.Add(linea);
      writeln(f,linea);
      DM1.cdsQry.Next;
    End;
    CloseFile(f);
     xSql := 'INSERT INTO COB_INF_GEN_BAN_CRE_CAB(USUGEN, FECHORGEN, CANREGGEN, FECHORPRO, CORPRO)'
    +' VALUES ('+QuotedStr(DM1.wUsuario)+', SYSDATE,'+IntToStr(registros)+', SYSDATE, '+QuotedStr(xcorrelativo)+')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    Screen.Cursor := crDefault;
    actualiza;
    screen.Cursor := crDefault;
    MessageDlg(' Diskette Se Grabo Con Exito ', mtInformation,[mbOk],0);
  End;
End;


procedure TFinfgenbancre.FormActivate(Sender: TObject);
begin
  actualiza;
end;

procedure TFinfgenbancre.actualiza;
Var xSql:String;
begin
  xSql := 'SELECT * FROM COB_INF_GEN_BAN_CRE_CAB ORDER BY CORPRO DESC';
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

procedure TFinfgenbancre.BtnCerrarClick(Sender: TObject);
begin
  Finfgenbancre.Close;
end;

end.
