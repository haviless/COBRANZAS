unit COB426;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, wwdblook, Wwdbdlg, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  FileCtrl, Mask, wwdbedit, Db, DBClient, wwclient, Wwdatsrc, Outline,
  DirOutln;

type
  TFUnirDBF = class(TForm)
    pnlOrigen: TPanel;
    Label3: TLabel;
    dblcdUSE: TwwDBLookupComboDlg;
    btnAnadir: TBitBtn;
    BitBtn1: TBitBtn;
    bbtnVerDbf: TBitBtn;
    Label1: TLabel;
    pnlDestino: TPanel;
    Label4: TLabel;
    dbgPrevio: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    odLeer: TOpenDialog;
    dbeReg1: TwwDBEdit;
    dbeReg2: TwwDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    edtName: TEdit;
    edtNewFile: TEdit;
    btnTransf: TBitBtn;
    Bevel2: TBevel;
    cdsDestino: TwwClientDataSet;
    cdsEjec: TwwClientDataSet;
    dsDestino: TwwDataSource;
    odDest: TOpenDialog;
    BitBtn2: TBitBtn;
    Bevel5: TBevel;
    Label6: TLabel;
    pnlDirec: TPanel;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    cdsSubReg: TwwClientDataSet;
    edtRutaNewFile: TEdit;
    doDestino: TDirectoryListBox;
    spdSubRegion: TSpeedButton;
    rgdTipFile: TRadioGroup;
    cb1: TComboBox;
    Label8: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbtnVerDbfClick(Sender: TObject);
    procedure btnTransfClick(Sender: TObject);
    procedure btnAnadirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure spdSubRegionClick(Sender: TObject);
  private
    { Private declarations }
    xNomArch : String;
  public
    { Public declarations }
  end;

var
  FUnirDBF: TFUnirDBF;

implementation

uses COBDM1, COB413, MsgDlgs;

{$R *.DFM}

procedure TFUnirDBF.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFUnirDBF.bbtnVerDbfClick(Sender: TObject);
var
  xSQl, xRuta : String;
  xPos1,I,xPos : Integer;
begin
  //FToolsDescarga.xDirect:=wRutaFTP+'AutDisk\';// ExtractFilePath( application.ExeName )+'AutDisk';
  xRuta:=FToolsDescarga.xDirect;

  if not DirectoryExists( xRuta ) then
    if not ForceDirectories( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  xRuta:=xRuta+DM1.wUsuario;

  if not DirectoryExists( xRuta ) then
    if not ForceDirectories( xRuta ) then
    //if not ForceDirectory CreateDir( xDirect ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  {xDirect:=ExtractFilePath( application.ExeName )+'AutDisk\'+DM1.wUsuario+'\Temporal';

  if not DirectoryExists( xDirect ) then
    if not CreateDir( xDirect ) then
      raise Exception.Create('Error al Crear Directorio '+xDirect );}

  odLeer.Title:='Leer DBF para Vista Previa';
  odLeer.DefaultExt:='*.DBF';
  odLeer.Filter:='Archivos DBFs|*.DBF';
  odLeer.FileName:='';
  odLeer.InitialDir:=xRuta;

  if not odLeer.Execute then Exit;

  Screen.Cursor:=crHourGlass;

  edtName.Text:=odLeer.FileName;

   //** 03/01/2003 - PJSV PARA CAPTURAR SOLO EL NOMBRE SIN LA RUTA
   xPos := Pos('.',odLeer.FileName);
   I := xPos;
   xPos1 := 0;
   Repeat
     If copy(odLeer.FileName,I-1,1) <> '\' then
      begin
       xPos1 := xPos1 +1;
       I := I -1;
      end
     else
      I := 0;
   until I = 0;
   xNomArch :=  copy(odLeer.FileName,xPos-xPos1,xPos1);
   //**

  if ( Copy( odLeer.FileName,1,2)='A:' ) or
     ( Copy( odLeer.FileName,1,2)='C:' ) or
     ( Copy( odLeer.FileName,1,2)='D:' ) then
  begin
     Showmessage( 'Error : Debe Copiar su Archivo al Disco T ' );
     Screen.Cursor:=crDefault;
     Exit;
  end;

  DM1.tbOrigen.Close;
  xSQL:='SELECT * FROM '''+odLeer.FileName+'''';
  DM1.tbOrigen.DataRequest(xSQL);

  try
     DM1.tbOrigen.Open;
  Except
     Screen.Cursor:=crDefault;
     Exit;
  end;

  //CIM 02/05/2003
  cb1.Items.Clear;
  for i:=0 to DM1.tbOrigen.FieldCount-1 do
  begin
     cb1.Items.Add(DM1.tbOrigen.Fields[i].FieldName);
     //=;
  end;
  //*

  dbeReg1.Text:=IntToStr( DM1.tbOrigen.RecordCount );

  Screen.Cursor:=crDefault;
end;

procedure TFUnirDBF.btnTransfClick(Sender: TObject);
var
  xFileDestino, xSQL, xRuta : String;
begin
  if edtNewFile.Text='' then
  begin
    ShowMessage('Debe Ingresar Nombre de Archivo Destino');
    Exit;
  end;
  Screen.Cursor:=crHourGlass;

  xRuta:=FToolsDescarga.xDirect;

  if not DirectoryExists( xRuta ) then
    if not ForceDirectories( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  xRuta:=xRuta+DM1.wUsuario;

  if not DirectoryExists( xRuta ) then
    if not ForceDirectories( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  xRuta:=xRuta+'\Temporal';

  if not DirectoryExists( xRuta ) then
    if not ForceDirectories( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  xFileDestino:=xRuta+'\'+edtNewFile.Text+'.dbf';
  edtRutaNewFile.Text:=xFileDestino;

  if not FileExists( xFileDestino ) then
    CopyFile((PChar( odLeer.FileName )),(PChar(xFileDestino)),False)
  else
  begin
    cdsEjec.Close;
    xSQL:='INSERT INTO '''+xFileDestino+''' '+
          'SELECT * FROM '''+odLeer.FileName+'''';
    cdsEjec.DataRequest(xSQL);
    try
      cdsEjec.Execute;
    Except
      Screen.Cursor:=crDefault;
      ErrorMsg(Caption, 'No se Podido Realizar la Transferencia, Podria no Coincidir los Campos');
      Exit;
    end;
  end;

  cdsDestino.Close;
  xSQL:='SELECT * FROM '''+xFileDestino+''' ';
  try
    cdsDestino.DataRequest(xSQL);
    cdsDestino.Open;
    dbeReg2.Text:=IntToStr( cdsDestino.RecordCount );
  Except
    Screen.Cursor:=crDefault;
    Exit;
  end;
  ShowMessage('transferencia Finalizada');
  Screen.Cursor:=crDefault;
end;

procedure TFUnirDBF.btnAnadirClick(Sender: TObject);
var
  xSQL, xName : String;
begin
  xName:=edtName.Text;
  if Length(Trim(xName)) = 0 then
  begin
    ErrorMsg(Caption, 'No Existe Información del Archivo Origen');
    Exit;
  end;

  if Length(Trim(dblcdUSE.Text)) = 0 then
  begin
    ErrorMsg(Caption, 'Codigo de USE es Incorrecto');  
    Exit;
  end;

  Screen.Cursor:=crHourGlass;

  xSQL:='ALTER TABLE '''+xName+''' ADD USEID VARCHAR(3)';

  cdsEjec.Close;
  cdsEjec.DataRequest(xSQL);
  try
    cdsEjec.Execute;
  Except
    Screen.Cursor:=crDefault;
    ShowMessage('Error al Ejecutar, Campo USE ya Existe');
    Exit;
  end;

  xSQL:='UPDATE '''+xName+''' SET USEID='''+dblcdUSE.Text+'''';
  cdsEjec.Close;
  cdsEjec.DataRequest(xSQL);
  try
    cdsEjec.Execute;
  Except
    Screen.Cursor:=crDefault;
    ShowMessage('Error al Ejecutar');
    Exit;
  end;

  DM1.tbOrigen.Close;
  xSQL:='SELECT * FROM '''+xName+'''';
  DM1.tbOrigen.DataRequest(xSQL);
  try
    DM1.tbOrigen.Open;
  Except
    Screen.Cursor:=crDefault;
    Exit;
  end;

  Screen.Cursor:=crDefault;
  ShowMessage('Se Añadio la Use Correctamente');
end;

procedure TFUnirDBF.BitBtn2Click(Sender: TObject);
var
  xRuta, xFileDestino, xSQL : String;
begin
  //xDirect:=ExtractFilePath( application.ExeName )+'AutDisk';
  //if not odLeer.Execute then Exit;
  //edtNewFile.Text:=odLeer.FileName;

  if edtNewFile.Text='' then
  begin
    ShowMessage('Debe Ingresar Nobre de Archivo Destino');
    Exit;
  end;

  xRuta:=FToolsDescarga.xDirect;

  if not DirectoryExists( xRuta ) then
    if not CreateDir( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  xRuta:=xRuta + DM1.wUsuario;

  if not DirectoryExists( xRuta ) then
    if not CreateDir( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  xRuta:=xRuta+'\Temporal';

  if not DirectoryExists( xRuta ) then
    if not CreateDir( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  xFileDestino:=xRuta+'\'+edtNewFile.Text+'.dbf';
  //edtNewFile.Text:=xFileDestino;
  
  cdsDestino.Close;
  xSQL:='SELECT * FROM '''+xFileDestino+''' ';
  try
    cdsDestino.DataRequest(xSQL);
    cdsDestino.Open;
    dbeReg2.Text:=IntToStr( cdsDestino.RecordCount );
  Except
    Screen.Cursor:=crDefault;
    Exit;
  end;
end;

procedure TFUnirDBF.BitBtn6Click(Sender: TObject);
begin
  pnlDestino.Enabled:=True;
  pnlOrigen.Enabled :=True;
  pnlDirec.Visible  :=False;
end;

procedure TFUnirDBF.BitBtn7Click(Sender: TObject);
var
  xSQL, xFileDestino, xCampo, xDescr : String;
begin
{  if rgdTipFile.ItemIndex = 0 then
  begin
    xCampo:='SUBREG';
    xDescr:='Sub-Regiones';
  end
  else
  if rgdTipFile.ItemIndex = 1 then
  begin
    xCampo:='REGION';
    xDescr:='Regiones';
  end;}

  xCampo:=cb1.Text;
  xDescr:=cb1.Text;
  if Length(Trim(cb1.Text))= 0 then
    raise exception.create('Ingrese columna para dividir el archivo');
    
  pnlDestino.Enabled:=True;
  pnlOrigen.Enabled :=True;
  pnlDirec.Visible  :=False;

  if not Question('Dividir Archivo', 'Dividir Archivo en Archivos por '+xDescr+#13+#13+'     ¿ Esta Seguro ?    ') then
    Exit;

  Screen.Cursor:=crHourGlass;
//** 12/02/2003 - PJSV
//  xSQL:='SELECT '+xCampo+' FROM '''+odLeer.FileName+''' '+
 xSQL:='SELECT '+xCampo+' FROM '''+odLeer.FileName+''' '+
// xSQL:='SELECT '+xCampo+' FROM '+xNomArch+
        ' GROUP BY '+xCampo;

  cdsSubReg.Close;
  cdsSubReg.DataRequest( xSQL );
  Try
    cdsSubReg.Open;
  Except
    Screen.Cursor:=crDefault;
    ShowMessage('Error al Generar Archivos - No Existe Campo de '+xDescr);
    Exit;
  end;

  cdsSubReg.First;
  while not cdsSubReg.Eof do
  begin
    if (UpperCase(cdsSubReg.FieldByName(xCampo).AsString)='CON') or
       (UpperCase(cdsSubReg.FieldByName(xCampo).AsString)='DEL') then
       xFileDestino:=doDestino.Directory+'\F_'+cdsSubReg.FieldByName(xCampo).AsString+'.dbf'
    else
       xFileDestino:=doDestino.Directory+'\'+cdsSubReg.FieldByName(xCampo).AsString+'.dbf';

    if not FileExists( xFileDestino ) then
    begin
      CopyFile((PChar( odLeer.FileName )),(PChar(xFileDestino)),False);
    end;

    xSQL:='DELETE FROM '''+xFileDestino+''' '+
          'WHERE '+xCampo+'<>'''+cdsSubReg.FieldByName(xCampo).AsString+'''';

    cdsEjec.Close;
    cdsEjec.dataRequest( xSQL );
    cdsEjec.Execute;

    cdsSubReg.Next;
  end;

  Screen.Cursor:=crDefault;
  ShowMessage('Archivo Dividido Correctamente');
end;

procedure TFUnirDBF.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
    //if Self.ActiveControl Is TDBMemo then Exit;
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFUnirDBF.spdSubRegionClick(Sender: TObject);
var
  xRuta : String;
begin
  if Length(Trim(edtName.Text)) = 0 then
  begin
    Information(Caption, 'Ingrese el Archivo a Dividir');
    Exit;
  end;
  pnlDestino.Enabled:=False;
  pnlOrigen.Enabled :=False;

  xRuta:=FToolsDescarga.xDirect;

  if not DirectoryExists( xRuta ) then
    if not CreateDir( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  xRuta:=xRuta+DM1.wUsuario;

  if not DirectoryExists( xRuta ) then
    if not CreateDir( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  xRuta:=xRuta+'\Temporal';

  if not DirectoryExists( xRuta ) then
    if not CreateDir( xRuta ) then
      raise Exception.Create('Error al Crear Directorio '+xRuta );

  doDestino.Directory:=xRuta;
  pnlDirec.Visible  :=True;
end;

end.
