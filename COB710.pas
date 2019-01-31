unit COB710;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Spin, Wwdbdlg, StdCtrls, ExtCtrls, Buttons, ComCtrls, FileCtrl,
  StrContainer, Mask, Mant, db, shellapi,
  Grids, Wwdbigrd, Wwdbgrid, Wwdatsrc, DBTables, fcButton, fcImgBtn,
  fcShapeBtn;


type
  TFToolTAhorro = class(TForm)
    pnlTool: TPanel;
    pnlBar: TPanel;
    Label2: TLabel;
    lblTReg: TLabel;
    pbData: TProgressBar;
    gbPorOpciones: TGroupBox;
    Bevel3: TBevel;
    Label3: TLabel;
    btnUnZip: TBitBtn;
    BitBtn4: TBitBtn;
    bbtnCopia: TBitBtn;
    bbtnVerDbf: TBitBtn;
    bbtnVerTxt: TBitBtn;
    gbPorRuta: TGroupBox;
    edtName: TEdit;
    gbPorTransferencia: TGroupBox;
    Label7: TLabel;
    seAno: TSpinEdit;
    seMes: TSpinEdit;
    bbtnTranDBF: TBitBtn;
    bbtnTranTexto: TBitBtn;
    gbPorArchivo: TGroupBox;
    bbtnModifica: TBitBtn;
    bbtnVerifica: TBitBtn;
    odLeeZip: TOpenDialog;
    odLeer: TOpenDialog;
    scFile: TStrContainer;
    ds1: TwwDataSource;
    tbOrigen: TTable;
    opdZip: TOpenDialog;
    dblcdUPro: TwwDBLookupComboDlg;
    Label6: TLabel;
    Label1: TLabel;
    dbcTRecauda: TwwDBLookupCombo;
    dblcNAbono: TwwDBLookupComboDlg;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    IniFecTemporal: TDateTimePicker;
    FinFecTemporal: TDateTimePicker;
    Label9: TLabel;
    mTotal: TEdit;
    SpeedButton2: TSpeedButton;
    bbtnPlantilla: TBitBtn;
    procedure btnUnZipClick(Sender: TObject);
    procedure bbtnCopiaClick(Sender: TObject);
    procedure bbtnVerDbfClick(Sender: TObject);
    procedure bbtnVerTxtClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure seMesExit(Sender: TObject);
    procedure dblcdUProExit(Sender: TObject);
    procedure bbtnTranDBFClick(Sender: TObject);
    procedure bbtnTranTextoClick(Sender: TObject);
    procedure bbtnModificaClick(Sender: TObject);
    procedure bbtnPlantillaClick(Sender: TObject);
    procedure bbtnVerificaClick(Sender: TObject);
    procedure seAnoExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    xFile,xFileOrigen,xFileDestino:String;
    procedure PegaPanelToolDesDet(Sender: TObject);
    procedure OnEditDescarga(Sender : TObject; MantFields: TFields);
    procedure PegaPanelToolConsist(Sender: TObject);
    procedure OnEditConsistencia(Sender : TObject; MantFields: TFields);

  public
    { Public declarations }
    xSQL, xUSE, xUPRO, xUPAGO : String;
    xDirect : String;
    function  BuscaEjecutable(Fichero: string): string;    
  end;

var
  FToolTAhorro: TFToolTAhorro;

{ user functions for use with the TUserFunctions structure }
function DllPrnt(Buffer: PChar; Size: ULONG): integer; stdcall;
function DllPassword(P: PChar; N: Integer; M, Name: PChar): integer; stdcall;
function DllService(CurFile: PChar; Size: ULONG): integer; stdcall;
function DllReplace(FileName: PChar): integer; stdcall;
procedure DllMessage(UnCompSize : ULONG;
                     CompSize   : ULONG;
                     Factor     : UINT;
                     Month      : UINT;
                     Day        : UINT;
                     Year       : UINT;
                     Hour       : UINT;
                     Minute     : UINT;
                     C          : Char;
                     FileName   : PChar;
                     MethBuf    : PChar;
                     CRC        : ULONG;
                     Crypt      : Char); stdcall;

implementation

uses COBDM1, MsgDlgs, COB415, COB001, COB418, COB422, COB417, COB423;


{$R *.DFM}

procedure TFToolTAhorro.btnUnZipClick(Sender: TObject);
begin
  if opdZip.execute then
  begin
    xFileDestino:=xDirect+DM1.wUsuario+'\'+xFile;
    Winexec(Pchar(BuscaEjecutable(opdZip.filename)+' -e "'+opdZip.filename+'" '+xFileDestino),1);
  end;

  Screen.Cursor:=crDefault;
  ShowMessage('Archivo Desempaquetado');
  Exit;
end;

function TFToolTAhorro.BuscaEjecutable(Fichero: string): string;
var
   Ejecutable:Pchar;
begin
   GetMem(Ejecutable,200);
   FindExecutable(Pchar(Fichero),nil,Ejecutable);
   Result:=String(Ejecutable);
   FreeMem(Ejecutable,200);
end;

procedure TFToolTAhorro.bbtnCopiaClick(Sender: TObject);
begin
  odLeer.Title:='Copiar Desde .. Hasta';
  odLeer.DefaultExt:='*.*';
  odLeer.Filter:='Archivos|*.*';
  odLeer.InitialDir:='C:\TeleAhorro\';

  if not odLeer.Execute then Exit;

  Screen.Cursor:=crHourGlass;
  xFile:=odLeer.FileName;
  xFileOrigen:=odLeer.FileName;

  while Pos( '\', xFile )>0 do
  begin
    xFile:=Copy( xFile, Pos( '\', xFile )+1, Length( xFile ) );
  end;

  xFileDestino:=xDirect+DM1.wUsuario+'\'+xFile;

  if FileExists(xFileDestino) then
  begin
    if not Question(Caption, 'El Archivo  '+xFile+'  ya Existe '+#13+#13+'Desea Sobreescribir ') then
    begin
      Screen.Cursor:=crDefault;
      Exit;
    end;

  end;

  if not DirectoryExists( xDirect+DM1.wUsuario+'\' ) then
    if not CreateDir( xDirect+DM1.wUsuario+'\' ) then
      raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\' );

  CopyFile((PChar(xFileOrigen)),(PChar(xFileDestino)),False);

  Screen.Cursor:=crDefault;
  ShowMessage('Ok : Archivo Copiado');
end;
{ user functions for use with the TUserFunctions structure }
{----------------------------------------------------------------------------------}
function DllPrnt(Buffer: PChar; Size: ULONG): integer;
begin

//  frmMain.Memo2.Lines.Add(Buffer);
  Result := Size;

end;
{----------------------------------------------------------------------------------}
function DllPassword(P: PChar; N: Integer; M, Name: PChar): integer;
begin
  Result := 1;
end;
{----------------------------------------------------------------------------------}
function DllService(CurFile: PChar; Size: ULONG): integer;
begin
  Result := 0;
end;
{----------------------------------------------------------------------------------}
function DllReplace(FileName: PChar): integer;
begin
  Result := 1;
end;
{----------------------------------------------------------------------------------}
procedure DllMessage(UnCompSize : ULONG;
                     CompSize   : ULONG;
                     Factor     : UINT;
                     Month      : UINT;
                     Day        : UINT;
                     Year       : UINT;
                     Hour       : UINT;
                     Minute     : UINT;
                     C          : Char;
                     FileName   : PChar;
                     MethBuf    : PChar;
                     CRC        : ULONG;
                     Crypt      : Char);
const
  sFormat = '%7u  %7u %4s  %02u-%02u-%02u  %02u:%02u  %s%s';
  cFactor = '%s%d%%';
  cFactor100 = '100%%';
var
  S       : string;
  sFactor : string;
  Sign    : Char;
begin

  if (CompSize > UnCompSize) then Sign := '-' else Sign := ' ';

  if (Factor = 100)
  then sFactor := cFactor100
  else sFactor := Format(cFactor, [Sign, Factor]);

  S := Format(sFormat, [UnCompSize, CompSize, sFactor, Month, Day, Year, Hour, Minute, C, FileName]);

  //frmMain.Memo1.Lines.Add(S);

end;
{----------------------------------------------------------------------------------}


procedure TFToolTAhorro.bbtnVerDbfClick(Sender: TObject);
begin
  odLeer.Title:='Leer DBF para Vista Previa';
  odLeer.DefaultExt:='*.DBF';
  odLeer.Filter:='Archivos DBFs|*.DBF';
  odLeer.InitialDir:=xDirect+DM1.wUsuario+'\';

  if not odLeer.Execute then Exit;

  Screen.Cursor:=crHourGlass;

  edtName.Text:=odLeer.FileName;

  DM1.tbOrigen.Close;
  xSQL:=' SELECT * FROM '+odLeer.FileName;
  DM1.tbOrigen.DataRequest(xSQL);
  DM1.tbOrigen.Open;

  try
     //FVPrevia:=TFVPrevia.Create(Self);
     //FVPrevia.dbgPrevio.DataSource:=DM1.ds1;
     Screen.Cursor:=crDefault;
     //FVPrevia.ShowModal;
  finally
     //FVPrevia.Free;
  end;
end;

procedure TFToolTAhorro.bbtnVerTxtClick(Sender: TObject);
var
  i : Integer;
  xName, xAAMM, xSQL : String;
begin
  odLeer.Title:='Leer Texto para Vista Previa';
  odLeer.DefaultExt:='*.TXT';
  odLeer.Filter:='Archivos TXT|*.TXT|Archivos LIS|*.LIS';
  odLeer.InitialDir:=xDirect+DM1.wUsuario+'\';

  if not odLeer.Execute then Exit;

  Screen.Cursor:=crHourGlass;
  edtName.Text:=odLeer.FileName;

  xFile:=odLeer.FileName;

  while Pos( '\', xFile )>0 do begin
    xFile:=Copy( xFile, Pos( '\', xFile )+1, Length( xFile ) );
  end;

  seAno.Text:=Copy(DateTimeToStr(Date),7,4);
  seMes.Text:='';//Copy(DateTimeToStr(Date),4,2);

  xSql := 'SELECT COUNT(ARCHIVO) TOTAL FROM COB312 WHERE ARCHIVO='+quotedstr(xFile);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  If Dm1.cdsQry.FieldByName('TOTAL').AsFloat > 0 then
  begin
     ShowMessage('La Archivo ya fue Transferido');
  end;

  xName:=odLeer.FileName;

  pnlBar.Refresh;

  while Pos( '\', xName )>0 do
  begin
     xName:=Copy( xName, Pos( '\', xName )+1, Length( xName ) );
  end;

  xAAMM:=DM1.StrZero( IntToStr( seAno.Value ), 4 )+DM1.StrZero( IntToStr( seMes.Value ), 2 );

  scFile.Lines.LoadFromFile( odLeer.FileName );

  lblTReg.Caption:=IntToStr(scFile.Lines.Count);
  pbData.Max     :=scFile.Lines.Count;
  pbData.Min:=0;
  pbData.Position:=0;
  pnlBar.Visible :=True;
  pnlBar.Refresh;

  xSQL:='SELECT * FROM COB306 '
       +'WHERE ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';
  DM1.cdsEjecuta.Close;
  DM1.cdsEjecuta.DataRequest(xSQL);
  DM1.cdsEjecuta.Open;

  For i:=0 to scFile.Lines.Count-1 Do
  Begin
      Application.ProcessMessages;
      DM1.cdsEjecuta.Insert;
      DM1.cdsEjecuta.FieldByName('ITEM').Value   := i+1;
      DM1.cdsEjecuta.FieldByName('LINEA').Value  := scFile.Lines[ i ];

      pbData.Position:=pbData.Position+1;
      pnlBar.Refresh;
  end;

  DM1.cdsEjecuta.FieldByName('ITEM').DisplayWidth:=5;
  DM1.cdsEjecuta.FieldByName('FLAG').Visible     :=False;
  DM1.cdsEjecuta.FieldByName('ARCHIVO').Visible  :=False;
  DM1.cdsEjecuta.FieldByName('FREG').Visible     :=False;
  DM1.cdsEjecuta.FieldByName('PERIODO').Visible  :=False;
  DM1.cdsEjecuta.FieldByName('UPROID').Visible   :=False;
  DM1.cdsEjecuta.FieldByName('UPAGOID').Visible  :=False;
  DM1.cdsEjecuta.FieldByName('USEID').Visible    :=False;
  DM1.cdsEjecuta.FieldByName('LINEA2').Visible   :=False;

  DM1.cdsEjecuta.First;

  pnlBar.Refresh;

  try
     FVPrevia:=TFVPrevia.Create(Self);
     FVPrevia.dbgPrevio.DataSource:=DM1.dsEjecuta;
     Screen.Cursor:=crDefault;
     FVPrevia.ShowModal;
  finally
     pbData.Position:=0;
     DM1.cdsEjecuta.Close;
     //DM1.cdsEjecuta.CancelUpdates;
     FVPrevia.Free;
  end;
end;

procedure TFToolTAhorro.BitBtn4Click(Sender: TObject);
begin
  odLeezip.Title:='Seleccione Archivo, luego Función [F2] é indique el Nuevo Nombre';
  odLeeZip.DefaultExt:='*.*';
  odLeeZip.Filter:='Archivos *.*|*.*';
  odLeeZip.InitialDir:=xDirect+DM1.wUsuario+'\';

  Screen.Cursor:=crHourGlass;

  if not odLeeZip.Execute then
  begin
    Screen.Cursor:=crDefault;
    Exit;
  end;
  Screen.Cursor:=crDefault;

end;

procedure TFToolTAhorro.seMesExit(Sender: TObject);
var
   sSQL : string;
begin
  If LengtH(seMes.Text)=1 Then
  Begin
    seMes.tEXT:='0'+seMes.Text;
  End;
  dblcNAbono.text := '';
  DM1.cdsRegCob.close;
  sSQL:= ' SELECT * FROM COB325'+
         ' WHERE NAANO='+Quotedstr(seAno.text)+
         ' and NAMES='+Quotedstr(seMes.text);
  DM1.cdsRegCob.DataRequest(sSQL);
  DM1.cdsRegCob.Open;
  dblcNAbono.LookupTable :=DM1.cdsRegCob;
  dblcNAbono.LookupField := 'NANRO';
  dblcNAbono.Selected.Clear;
  dblcNAbono.Selected.Add('NANRO'#9'10'#9'Nota Abono'#9'F');
  dblcNAbono.Selected.Add('NAFDOC'#9'10'#9'Fecha NA'#9'F');

  


end;

procedure TFToolTAhorro.dblcdUProExit(Sender: TObject);
begin
  sSQL := 'SELECT * '+
          'FROM APO103 WHERE UPROID='+QuotedStr(dblcdUPro.Text);
  DM1.FiltraCDS(DM1.cdsUPago,sSQL);
  dbcTRecauda.SetFocus;
end;

procedure TFToolTAhorro.bbtnTranDBFClick(Sender: TObject);
var
  i, xCont, xItem, xLen, xC : Integer;
  xLinea, xName, xAAMM, xAdic, xMonto : String;
begin
  if ( seAno.Value<=0 ) or ( seMes.Value<=0 ) then
  begin
     ShowMessage('Error : Falta Ingresar Periodo');
     Exit;
  end;

  {if Length(Trim(dblcdUPro.Text))=0 Then
  begin
    ShowMessage('Debe Seleccionar la Unidad de Proceso');
    dblcdUPro.SetFocus;
    exit;
  end;

  if dbcTRecauda.Text='' then
  begin
    ShowMessage('Error : Falta Ingresar Tipo Recaudación');
    Exit;
  end;}

  odLeer.Title:='Leer DBF a Tranferir';
  odLeer.DefaultExt:='*.DBF';
  odLeer.Filter:='Archivos DBFs|*.DBF';
  odLeer.InitialDir:=xDirect+DM1.wUsuario+'\';

  if not odLeer.Execute then Exit;

  Screen.Cursor:=crHourGlass;
  xFile:=odLeer.FileName;
  xFileOrigen:=odLeer.FileName;

  while Pos( '\', xFile )>0 do
  begin
    xFile:=Copy( xFile, Pos( '\', xFile )+1, Length( xFile ) );
  end;

  xFileDestino:=xDirect+DM1.wUsuario+'\'+xFile;

  if not DirectoryExists( xDirect+DM1.wUsuario+'\' ) then
     if not CreateDir( xDirect+DM1.wUsuario+'\' ) then
        raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\' );

  CopyFile((PChar(xFileOrigen)),(PChar(xFileDestino)),False);

  edtName.Text:=odLeer.FileName;
  Screen.Cursor:=crDefault;

  xSql := 'SELECT COUNT(ARCHIVO) TOTAL FROM COB312 WHERE ARCHIVO='+quotedstr(xFile);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  If Dm1.cdsQry.FieldByName('TOTAL').AsFloat > 0 then
  begin
    ShowMessage('La Data ya fue Transferida');
    Exit;
  end;

  if not Question('Transferencia de DBF', 'Seguro de Recuperar Data DBF'+#13+#13+'Desea Continuar') then
    Exit;

  xName:=odLeer.FileName;
  xName:=Trim(xName);

  pnlBar.Refresh;

  while Pos( '\', xName ) > 0 do
  begin
    xName:=Copy( xName, Pos( '\', xName )+1, Length( xName ) );
  end;

  xAAMM:=DM1.StrZero( IntToStr( seAno.Value ), 4 )+DM1.StrZero( IntToStr( seMes.Value ), 2 );

  xSQL:='SELECT * FROM COB312 '
       +'WHERE ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;

  if DM1.cdsQry.Recordcount>0 then
  begin
    ShowMessage('Error : Archivo ya fue Transferido. Verifique');
    Exit;
  end;

  xUPRO :=DM1.cdsUPro.FieldByName('UPROID').AsString;
  xUPAGO:=DM1.cdsUPago.FieldByName('UPAGOID').AsString;
  xUSE  :=DM1.cdsUSes.FieldByName('USEID').AsString;

  DM1.tbOrigen.Close;
  xSQL:=' SELECT * FROM '''+xDirect+DM1.wUsuario+'\'+xFile+'''';

  DM1.tbOrigen.DataRequest(xSQL);
  DM1.tbOrigen.Open;

  lblTReg.Caption:=IntToStr( DM1.tbOrigen.RecordCount );
  pbData.Max     :=DM1.tbOrigen.RecordCount;
  pbData.Position:=0;
  pbData.Min:=0;
  pnlBar.Visible :=True;
  pnlBar.Refresh;

  xSQL:='SELECT * FROM COB306 '
       +'WHERE ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';

  DM1.cdsEjecuta.Close;
  DM1.cdsEjecuta.DataRequest(xSQL);
  DM1.cdsEjecuta.Open;

  xCont:=0;
  xC:=0;
  DM1.tbOrigen.First;
  While not DM1.tbOrigen.Eof Do
  Begin
    xC:=xC+1;
    DM1.cdsEjecuta.Insert;
    DM1.cdsEjecuta.FieldByName('FLAG').Value   := 'N';
    DM1.cdsEjecuta.FieldByName('ITEM').Value   := xC;

    xLinea:='';
    For i:=0 to DM1.tbOrigen.FieldCount-1 Do
    Begin
      xLen:=DM1.tbOrigen.Fields[ i ].Size;

      if xLen=0 then
      begin
        if Pos( '/', DM1.tbOrigen.Fields[ i ].AsString )>0 then
        begin
          xLen :=11;
          xLinea:=xLinea+Copy(DM1.tbOrigen.Fields[ i ].AsString
                    +'                                                  ', 1, xLen )+' ';
        end
        else
        begin
          if ( Pos( '0', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '1', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '2', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '3', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '4', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '5', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '6', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '7', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '8', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '9', DM1.tbOrigen.Fields[ i ].AsString )>0 ) then
          begin
            xMonto:=FloatToStrF( DM1.tbOrigen.Fields[ i ].AsFloat, ffFixed, 5, 2);
            xLen:=Length( xMonto );
            xAdic:=Copy('        ', 1, 8-xLen );
            xLen :=8;
            xLinea:=xLinea+Copy(xAdic+xMonto
                   +'                                                  ', 1, xLen )+' ';
          end
          else
          begin
            xLen:=Length( DM1.tbOrigen.Fields[ i ].AsString );
            xAdic:=Copy('      ', 1, 6-xLen );
            xLen :=6;
            xLinea:=xLinea+Copy(xAdic+DM1.tbOrigen.Fields[ i ].AsString
                   +'                                                  ', 1, xLen )+' ';
          end;
        end;
      end
      else
      begin
        xLinea:=xLinea+ Copy(DM1.tbOrigen.Fields[ i ].AsString
                    +'                                                  ', 1, xLen )+' ';
      end;
    end;

    DM1.cdsEjecuta.FieldByName('LINEA').AsString  := xLinea;
    DM1.cdsEjecuta.FieldByName('ARCHIVO').AsString:= xName;
    DM1.cdsEjecuta.FieldByName('PERIODO').AsString:= xAAMM;
    DM1.cdsEjecuta.FieldByname('UPROID').AsString := DM1.cdsUPro.FieldByName('UPROID').AsString;

    pbData.Position:=pbData.Position+1;
    pnlBar.Refresh;

    xCont:=xCont+1;
    if xCont >= 200 then
    begin
       DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado
       xCont:=0;
       pnlBar.Refresh;
    end;
    DM1.tbOrigen.Next;
  end;
  pnlBar.Refresh;

  DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado

  xSQL:='SELECT MAX(ITEM) ITEM FROM COB312 ';
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;

  xItem:=DM1.cdsQry.FieldByName('ITEM').AsInteger+1;

  DM1.cdsDetalle.Insert;
  DM1.cdsDetalle.FieldByname('ITEM').AsInteger    := xItem;
  DM1.cdsDetalle.FieldByname('ARCHIVO').AsString  := xName;
  DM1.cdsDetalle.FieldByname('PERIODO').AsString  := xAAMM;
  DM1.cdsDetalle.FieldByname('USUARIO').AsString  := dm1.wUsuario;
  DM1.cdsDetalle.FieldByname('FREG').AsDateTime   := DATE;
  DM1.cdsDetalle.FieldByname('FL_BAJADO').AsString:= 'S';
  DM1.cdsDetalle.FieldByname('UPROID').AsString   := DM1.cdsUPro.FieldByName('UPROID').AsString;
  DM1.cdsDetalle.FieldByname('RECAUDA').AsString  := dbcTRecauda.Text;

  DM1.AplicaDatos( DM1.cdsDetalle, '' );
  pnlBar.Refresh;
  edtName.Text:='';
  seAno.Text:=Copy(DateTimeToStr(Date),7,4);
  seMes.Text:=Copy(DateTimeToStr(Date),4,2);
  pnlBar.Visible :=False;

  if not DirectoryExists( xDirect+DM1.wUsuario+'\' ) then
     if not CreateDir( xDirect+DM1.wUsuario+'\' ) then
        raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\' );

  if not DirectoryExists( xDirect+DM1.wUsuario+'\'+xAAMM+'\' ) then
     if not CreateDir( xDirect+DM1.wUsuario+'\'+xAAMM ) then
        raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\'+xAAMM+'\' );

  if not DirectoryExists( xDirect+DM1.wUsuario+'\'+xAAMM+'\'+dblcdUPro.Text+'\' ) then
     if not CreateDir( xDirect+DM1.wUsuario+'\'+xAAMM+'\'+dblcdUPro.Text+'\' ) then
        raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\'+xAAMM+'\'+dblcdUPro.Text+'\' );

  xFileDestino:=xDirect+DM1.wUsuario+'\'+xAAMM+'\'+dblcdUPro.Text+'\'+xFile;

  CopyFile((PChar(xFileOrigen)),(PChar(xFileDestino)),False);

  DeleteFile( PChar(xFileOrigen) );

  pnlBar.Refresh;
  edtName.Text:='';
  seAno.Text:=Copy(DateTimeToStr(Date),7,4);
  seMes.Text:='';//Copy(DateTimeToStr(Date),4,2);
  dblcdUPro.Text:='';
  dbcTRecauda.Text:='';
  pnlBar.Visible :=False;
  ShowMessage( 'Data Transferida');
end;

procedure TFToolTAhorro.bbtnTranTextoClick(Sender: TObject);
var
  xx,i, xCont, xItem : Integer;
  xName, xAAMM, xSQL : String;
//  xITEM : integer;
//  xLINEA,xARCHIVO,xPERIODO : string;
//  xFECHA,xHORA : TDatetime;
begin
  if (Length(seAno.Text) = 0 ) or ( Length(seMes.Text) = 0 ) then
  begin
    ShowMessage('Error : Falta Ingresar Periodo');
    Exit;
  end;

  if Length(dblcNAbono.text)=0 then
  begin
    ShowMessage('Error : Falta Seleccionar Nota.Abono');
    Exit;
  end;

  odLeer.FileName:='';
  odLeer.Title:='Leer Texto a Tranferir';
  odLeer.DefaultExt:='*.TXT';
  odLeer.Filter:='Archivos TXT|*.TXT|Archivos LIS|*.LIS';
  odLeer.InitialDir:=xDirect+DM1.wUsuario+'\';

  if not odLeer.Execute then Exit;

  Screen.Cursor:=crHourGlass;
  edtName.Text:=odLeer.FileName;

  xFile:=odLeer.FileName;
  xFileOrigen:=odLeer.FileName;

  while Pos( '\', xFile )>0 do
  begin
    xFile:=Copy( xFile, Pos( '\', xFile )+1, Length( xFile ) );
  end;

  xFileDestino:=xDirect+DM1.wUsuario+'\'+xFile;

  CopyFile((PChar(xFileOrigen)),(PChar(xFileDestino)),True);

  Screen.Cursor:=crDefault;

  xSql := 'SELECT COUNT(ARCHIVO) TOTAL FROM COB328 WHERE ARCHIVO='+quotedstr(xFile);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  If Dm1.cdsQry.FieldByName('TOTAL').AsFloat > 0 then
   begin
    ShowMessage('La Data ya fue Transferida');
    Exit;
   end;

  if Question('Transferencia de TXT','Seguro de Recuperar Data Texto'+#13+#13+
                      'Desea Continuar') then
  begin
    xName       :=odLeer.FileName;

    pnlBar.Refresh;

    while Pos( '\', xName )>0 do
    begin
       xName:=Copy( xName, Pos( '\', xName )+1, Length( xName ) );
    end;

    xAAMM:=DM1.StrZero( IntToStr( seAno.Value ), 4 )+DM1.StrZero( IntToStr( seMes.Value ), 2 );

    xSQL:='SELECT * FROM COB328 '
         +'WHERE ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    if DM1.cdsQry.Recordcount>0 then
    begin
      ShowMessage('Error : Archivo ya fue Transferido. Verifique');
      Exit;
    end;

    scFile.Lines.LoadFromFile( odLeer.FileName );

    lblTReg.Caption:=IntToStr(scFile.Lines.Count);
    pbData.Max     :=scFile.Lines.Count;
    pbData.Min:=0;
    pbData.Position:=0;
    pnlBar.Visible :=True;
    pnlBar.Refresh;

    xSQL:='SELECT * FROM COB328 '
         +'WHERE ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';
    DM1.cdsEjecuta.Close;
    DM1.cdsEjecuta.DataRequest(xSQL);
    DM1.cdsEjecuta.Open;

    xCont:=0;
    xx := 0;

    For i:=0 to scFile.Lines.Count-1 Do
    Begin
//       xItem    := i+1;
//       xLINEA   := scFile.Lines[ i ];
//       xARCHIVO := xName;
//       xPERIODO := xAAMM;

//       xSQL := 'INSERT INTO COB308(FLAG,ITEM,LINEA,ARCHIVO,PERIODO)'
//              +'VALUES ''N'','+inttostr(xItem)+','+xLinea+','+xArchivo+','+xPeriodo;
//       pbData.Position:=pbData.Position+1;
//    end;

       DM1.cdsEjecuta.Append;
       DM1.cdsEjecuta.FieldByName('FLAG').AsString   := 'N';
       DM1.cdsEjecuta.FieldByName('ITEM').Value      := i+1;
       DM1.cdsEjecuta.FieldByName('LINEA').AsString  := scFile.Lines[ i ];
       DM1.cdsEjecuta.FieldByName('ARCHIVO').AsString:= xName;
       DM1.cdsEjecuta.FieldByName('PERIODO').AsString:= xAAMM;

  //    pbData.Position:=pbData.Position+1;
  //    pnlBar.Refresh;

       xCont:=xCont+1;

       if xCont>=500 then
       begin
//        Application.ProcessMessages;
          pbData.Position:=pbData.Position+xCont;
          DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado

          xSQL:='SELECT * FROM COB328 '
               +'WHERE 1<>1'; // ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';
          DM1.cdsEjecuta.Close;
          DM1.cdsEjecuta.DataRequest(xSQL);
          DM1.cdsEjecuta.Open;

          xCont:=0;
    //     pnlBar.Refresh;
          pbData.Refresh;
      end
    end;


{    xSQL:='SELECT * FROM COB328 '
         +'WHERE ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';
    DM1.cdsEjecuta.Close;
    DM1.cdsEjecuta.DataRequest(xSQL);
    DM1.cdsEjecuta.Open;}


    pbData.Position:=pbData.Position+xCont;
    pnlBar.Refresh;

    DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado
    ShowMessage('YYYYYYYYYYYYYYYYYYYYY');

    xSQL:='SELECT MAX( ITEM ) ITEM FROM COB327';
    Dm1.cdsQry.Close;
    Dm1.cdsQry.DataRequest(xSql);
    Dm1.cdsQry.Open;

    xItem:=DM1.cdsQry.FieldByName('ITEM').AsInteger+1;

    DM1.cdsDetalle.Insert;
    DM1.cdsDetalle.FieldByname('ITEM').AsInteger    :=xItem;
    DM1.cdsDetalle.FieldByname('ARCHIVO').AsString  :=xName;
    DM1.cdsDetalle.FieldByname('PERIODO').AsString  :=xAAMM;
    DM1.cdsDetalle.FieldByname('USUARIO').AsString  :=DM1.wUsuario;
    DM1.cdsDetalle.FieldByname('FREG').AsDateTime   :=DATE;
    DM1.cdsDetalle.FieldByname('FL_BAJADO').AsString:='S';
    DM1.cdsDetalle.FieldByName('NANRO').AsString:= dblcNAbono.Text;
    //DM1.cdsDetalle.FieldByname('RECAUDA').AsString:=dbcTRecauda.Text;
    DM1.AplicaDatos( DM1.cdsDetalle, '' );

    pnlBar.Refresh;
    edtName.Text:='';
    seAno.Text:=Copy(DateTimeToStr(Date),7,4);
    seMes.Text:='';//Copy(DateTimeToStr(Date),4,2);
    dblcdUPro.Text:='';
    dbcTRecauda.Text:='';
    pnlBar.Visible :=False;
    DM1.cdsEjecuta.Close;
//    DM1.cdsEjecuta.Free;
    ShowMessage( 'Data Transferida');
  end;
end;

procedure TFToolTAhorro.bbtnModificaClick(Sender: TObject);
begin
  dm1.cdsEjecuta.Close;
  //dm1.cdsEjecuta.DataRequest('SELECT * FROM COB208');

  FToolDetalle:=TFToolDetalle.create(self);
  FToolDetalle.xArchivoT:='COB328';
  MtxD := TMant.Create(Self);
  try
    MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB328';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    mtxD.Filter         := 'ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' AND '
                         + 'PERIODO='''+DM1.cdsDetalle.FieldByname('PERIODO').AsString+'''';
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := dm1.wModulo;
    MtxD.Module         := dm1.wModulo;
    MtxD.Titulo 	:= 'Manipular Datos';
    MtxD.OnCreateMant   := PegaPanelToolDesDet;
    MtxD.OnInsert 	:= nil;
    MtxD.OnEdit 	:= OnEditDescarga;
    MtxD.OnDelete 	:= Nil;
    MtxD.OnShow 	:= nil;
    MtxD.ControlGridDisp:= FPrincipal.cgdAutDisk;
    MtxD.SectionName	:='COBManipularTA';
    MtxD.FileNameIni    := '\SOLCOB.INI';
    MtxD.UserCheckB.Add('FLAG');
    MtxD.Execute;
  Finally
  	MtxD.Free;
    FToolDetalle.Free;
  end;
end;

procedure TFToolTAhorro.OnEditDescarga(Sender: TObject; MantFields: TFields);
begin
  DM1.cdsEjecuta.Edit;
  if ( DM1.cdsEjecuta.FieldByname('FLAG').AsString='N') or
     ( DM1.cdsEjecuta.FieldByname('FLAG').AsString='' ) then
  begin
    DM1.cdsEjecuta.FieldByname('FLAG').AsString:='S';
    DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado
    Exit;
  end;
  if DM1.cdsEjecuta.FieldByname('FLAG').AsString='S' then
  begin
    DM1.cdsEjecuta.FieldByname('FLAG').AsString:='N';
    DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado
    Exit;
  end;
end;

procedure TFToolTAhorro.PegaPanelToolDesDet(Sender: TObject);
var
	pg : TPanel;
	pl : TPanel;
begin
	pg := FToolDetalle.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
	TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFToolTAhorro.bbtnPlantillaClick(Sender: TObject);
begin
  Try
    FPlantMan2:=TFPlantMan2.Create( Self );
    FPlantMan2.ShowModal;
  finally
    FPlantMan2.Free;
  end
end;

procedure TFToolTAhorro.bbtnVerificaClick(Sender: TObject);
begin
  FToolConsistenciaTA:=TFToolConsistenciaTA.create(self);
  MtxD := TMant.Create(Self);
  Try
    MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB332';
    MtxD.ClientDataSet  := DM1.cdsQry5;
    mtxD.Filter         :='ARCHIVO='+quotedstr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' AND '
                         +'APOSEC='+quotedstr(DM1.cdsDetalle.FieldByname('PERIODO').AsString);//+' AND '
//                         +'nvl(FL_CTACTE,''N'') <>'+quotedstr('S');
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := dm1.wModulo;
    MtxD.Titulo 	:= 'Consistenciar Datos Tele-Ahorro';
    MtxD.OnCreateMant   := PegaPanelToolConsist;
    MtxD.OnInsert 	:= nil;
    MtxD.OnEdit 	:= OnEditConsistencia;
    MtxD.OnDelete 	:= Nil;
    MtxD.OnShow 	:= nil;
    MtxD.ControlGridDisp:= FPrincipal.cgdAutDisk;
    MtxD.SectionName	 :='COBConsistenciaTA';
    MtxD.FileNameIni    := '\SOLCOB.INI';
    MtxD.UserCheckB.Add('FLAG');
    MtxD.Execute;
  Finally
    MtxD.Free;
    FToolConsistenciaTA.Free;
  End;
end;

procedure TFToolTAhorro.OnEditConsistencia(Sender: TObject; MantFields: TFields);
begin
    if DM1.cdsQry5.FieldByName('ASOID').AsString<>'' then
    begin
      ShowMessage('Error : Asociado ya fue Encontrado');
      Exit;
    end;

    FElegirAso := TFElegirAso.Create( Self );
    //** 04/02/2003 - PJSV
    FElegirAso.wViene := '1';
    //**
    FElegirAso.dbeCta.DataSource:=DM1.dsQry5;
    FElegirAso.dbeCta.DataField :='ASONCTA';
    FElegirAso.dbeCta.Visible   :=True;
    FElegirAso.lblCta.Visible   :=True;

    FElegirAso.dbeUse.DataSource:=nil;
    FElegirAso.dbeUse.DataField :='';
    FElegirAso.dbeUse.Visible   :=False;
    FElegirAso.lblUse.Visible   :=False;

    FElegirAso.dbeCMod.DataSource:=nil;
    FElegirAso.dbeCMod.DataField :='';
    FElegirAso.dbeCMod.Visible   :=False;
    FElegirAso.lblCMod.Visible   :=False;

    FElegirAso.dbeCPag.DataSource:=nil;
    FElegirAso.dbeCPag.DataField :='';
    FElegirAso.dbeCPag.Visible   :=False;
    FElegirAso.lblCPag.Visible   :=False;

    FElegirAso.dbeCPag.DataSource:=nil;
    FElegirAso.dbeCPag.DataField :='';
    FElegirAso.dbeCPag.Visible   :=False;
    FElegirAso.lblCPag.Visible   :=False;

    FElegirAso.dbeImp.DataSource:=DM1.dsQry5;
    FElegirAso.dbeImp.DataField :='IMPORTE';
    FElegirAso.dbeImp.Visible   :=True;
    FElegirAso.lblImp.Visible   :=True;

    FElegirAso.dbeNombre.DataSource:= DM1.dsQry5;
    FElegirAso.dbeNombre.DataField :='ASOAPENOM';

    try
      FElegirAso.ShowModal;
    finally
      FElegirAso.Free;
    end;
  //end;
end;

procedure TFToolTAhorro.PegaPanelToolConsist(Sender: TObject);
var
	pg : TPanel;
	pl : TPanel;
begin
	pg := FToolConsistenciaTA.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
	TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFToolTAhorro.seAnoExit(Sender: TObject);
var
   sSQL : string;
begin
  dblcNAbono.text := '';
  DM1.cdsRegCob.close;
  sSQL:= ' SELECT * FROM COB325'+
         ' WHERE NAANO='+Quotedstr(seAno.text)+
         ' and NAMES='+Quotedstr(seMes.text);
  DM1.cdsRegCob.DataRequest(sSQL);
  DM1.cdsRegCob.Open;
  dblcNAbono.LookupTable :=DM1.cdsRegCob;
  dblcNAbono.LookupField := 'NANRO';
  dblcNAbono.Selected.Clear;
  dblcNAbono.Selected.Add('NANRO'#9'10'#9'Nota Abono'#9'F');
  dblcNAbono.Selected.Add('NAFDOC'#9'10'#9'Fecha NA'#9'F');
  

end;

procedure TFToolTAhorro.SpeedButton2Click(Sender: TObject);
var xSql:string;
begin
xSql := 'SELECT SUM(CREMTOCOB) CREMTOCOB FROM CRE310 A WHERE FOPERACTMP >='''+DateToStr(IniFecTemporal.Date)+''' '
        +' AND CREESTID NOT IN (''04'',''13'') AND FOPERACTMP <= '''+ DateToStr(FinFecTemporal.Date)+'''';
DM1.cdsQry.Close;
DM1.cdsQry.DataRequest(xSql);
DM1.cdsQry.Open;
mTotal.Text:= FormatFloat( '###,###,###.00',DM1.cdsQry.FieldByname('CREMTOCOB').AsFloat);
end;

end.
