unit COB413;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB413
// Formulario                    : FAnulaChequeEdit
// Fecha de Creación             : 
// Autor                         : Sistemas
// Objetivo                      : Herramientas de Descarga de Archivos

// Actualizaciones               :
// HPC_201310_COB    26/09/2013  : Cambiar el Color de los paneles
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201402_COB                : Cambio de DCOM a Socket	 
// SPP_201402_COB                : Se realiza el pase a producción a partir del HPC_201402_COB

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls, StrContainer, Spin, Mask, Mant, db,
  Grids, Wwdbigrd, Wwdbgrid, Wwdatsrc, DBTables, fcButton, fcImgBtn,
  fcShapeBtn, wwdblook, Wwdbdlg, FileCtrl, shellapi;//, AbZipOut;

type
  TFToolsDescarga = class(TForm)
  pnlTool: TPanel;
  scFile: TStrContainer;
  pnlBar: TPanel;
  Label2: TLabel;
  lblTReg: TLabel;
  pbData: TProgressBar;
  odLeer: TOpenDialog;
  tbOrigen: TTable;
  ds1: TwwDataSource;
  gbPorArchivo: TGroupBox;
  bbtnModifica: TBitBtn;
  bbtnPlantilla: TBitBtn;
  bbtnVerifica: TBitBtn;
  gbPorPeriodo: TGroupBox;
  bbtnVerificaPer: TBitBtn;
  bbtnModificaPer: TBitBtn;
  bbtnPlantillaPer: TBitBtn;
  odLeeZip: TOpenDialog;
  gbPorDataOk: TGroupBox;
  btnOk: TBitBtn;
  gbPorOpciones: TGroupBox;
  btnUnZip: TBitBtn;
  btnRenom: TBitBtn;
  gbPorRuta: TGroupBox;
  edtName: TEdit;
  gbPorTransferencia: TGroupBox;
  Label7: TLabel;
  Label6: TLabel;
  dblcdUPro: TwwDBLookupComboDlg;
  seAno: TSpinEdit;
  seMes: TSpinEdit;
  bbtnTranDBF: TBitBtn;
  bbtnTranTexto: TBitBtn;
  bbtnCopia: TBitBtn;
  Label1: TLabel;
  dbcTRecauda: TwwDBLookupCombo;
  bbtnVerDbf: TBitBtn;
  bbtnVerTxt: TBitBtn;
  Bevel3: TBevel;
  Label3: TLabel;
  dblcdUPago: TwwDBLookupComboDlg;
  bbtnUnir: TBitBtn;
  Panel1: TPanel;
  Label4: TLabel;
  Label5: TLabel;
  opdZip: TOpenDialog;
  btnseparc: TBitBtn;

  procedure bbtnTranTextoClick(Sender: TObject);
  procedure bbtnPlantillaClick(Sender: TObject);
  procedure bbtnModificaClick(Sender: TObject);
  procedure bbtnVerificaClick(Sender: TObject);
  procedure bbtnTranDBFClick(Sender: TObject);
  procedure bbtnVerificaPerClick(Sender: TObject);
  procedure bbtnModificaPerClick(Sender: TObject);
  procedure dblcdUProExit(Sender: TObject);
  procedure seMesExit(Sender: TObject);
  procedure FormCreate(Sender: TObject);
  procedure btnOkClick(Sender: TObject);
  procedure btnUnZipClick(Sender: TObject);
  procedure bbtnVerDbfClick(Sender: TObject);
  procedure btnRenomClick(Sender: TObject);
  procedure bbtnVerTxtClick(Sender: TObject);
  procedure bbtnCopiaClick(Sender: TObject);
  procedure bbtnUnirClick(Sender: TObject);
  procedure FormKeyPress(Sender: TObject; var Key: Char);
  procedure btnseparcClick(Sender: TObject);

  private
    { Private declarations }
    xFile,xFileOrigen,xFileDestino:String;

    procedure PegaPanelToolDesDet(Sender: TObject);
    procedure OnEditDescarga(Sender : TObject; MantFields: TFields);
    procedure PegaPanelToolConsist(Sender: TObject);
    procedure OnEditConsistencia(Sender : TObject; MantFields: TFields);
    function  BuscaEjecutable(Fichero: string): string;
  public
    { Public declarations }
    xSQL, xUSE, xUPRO, xUPAGO : String;
    xDirect : String;
  end;

var
  FToolsDescarga: TFToolsDescarga;

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

uses COBDM1, COB001, COB414, COB415, COB416, COB417, MsgDlgs, COB418, COB426,
  COB221;

{$R *.DFM}

Procedure TFToolsDescarga.bbtnTranTextoClick(Sender: TObject);
var
  i, xCont, xItem : Integer;
  xName, xAAMM, xSQL : String;
Begin
  If (Length(seAno.Text) = 0 ) or ( Length(seMes.Text) = 0 ) Then
  Begin
    ShowMessage('Error : Falta Ingresar Periodo');
    Exit;
  End;
  If Length(Trim(dblcdUPro.Text))=0 Then
  Begin
    ShowMessage('Debe Seleccionar la Unidad de Proceso');
    dblcdUPro.SetFocus;
    exit;
  End;
  If dbcTRecauda.Text='' Then
  Begin
    ShowMessage('Error : Falta Ingresar Tipo Recaudación');
    Exit;
  End;
  odLeer.FileName:='';
  odLeer.Title  := 'Leer Texto a Tranferir';
  odLeer.DefaultExt := '*.TXT';
  odLeer.Filter := 'Archivos TXT|*.TXT|Archivos LIS|*.LIS';
  odLeer.InitialDir := xDirect+DM1.wUsuario+'\';
  If not odLeer.Execute Then Exit;
  Screen.Cursor := crHourGlass;
  edtName.Text  := odLeer.FileName;
  xFile := odLeer.FileName;
  xFileOrigen := odLeer.FileName;
  While Pos( '\', xFile )>0 do
  Begin
    xFile := Copy( xFile, Pos( '\', xFile )+1, Length( xFile ) );
  End;

  xFileDestino := xDirect+DM1.wUsuario+'\'+xFile;
  CopyFile((PChar(xFileOrigen)),(PChar(xFileDestino)),True);
  Screen.Cursor := crDefault;
  xSQL := 'SELECT COUNT(ARCHIVO) TOTAL FROM COB312 WHERE ARCHIVO ='+QuotedStr(xFile);

  DM1.cdsQry.Filter   := '';
  DM1.cdsQry.Filtered := False;
  DM1.cdsQry.IndexFieldNames := '';

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('TOTAL').AsFloat > 0 Then
  Begin
    ShowMessage('La Data ya fué Transferida');
    Exit;
  End;

  If Question('Transferencia de TXT','Seguro de Recuperar Data Texto'+#13+#13+'Desea Continuar') Then
  Begin
    xName :=odLeer.FileName;
    pnlBar.Refresh;
    While Pos( '\', xName )>0 do
    Begin
      xName:=Copy( xName, Pos( '\', xName )+1, Length( xName ) );
    End;
    xAAMM:=DM1.StrZero( IntToStr( seAno.Value ), 4 )+DM1.StrZero( IntToStr( seMes.Value ), 2 );
    xSQL := 'SELECT * FROM COB312 WHERE ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';

    DM1.cdsQry.Filter   := '';
    DM1.cdsQry.Filtered := False;
    DM1.cdsQry.IndexFieldNames := '';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    If DM1.cdsQry.Recordcount>0 Then
    Begin
      ShowMessage('Error : Archivo ya fué Transferido. Verifique');
      Exit;
    End;

    scFile.Lines.LoadFromFile( odLeer.FileName );
    lblTReg.Caption := IntToStr(scFile.Lines.Count);
    pbData.Max      := scFile.Lines.Count;
    pbData.Min := 0;
    pbData.Position := 0;
    pnlBar.Visible  := True;
    pnlBar.Refresh;

    xSQL := 'SELECT * FROM COB306 WHERE ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';
    DM1.cdsEjecuta.Filter   := '';
    DM1.cdsEjecuta.Filtered := False;
    DM1.cdsEjecuta.Close;
    DM1.cdsEjecuta.Close;
    DM1.cdsEjecuta.DataRequest(xSQL);
    DM1.cdsEjecuta.Open;

    xCont := 0;

    For i := 0 to scFile.Lines.Count-1 Do
    Begin
      Application.ProcessMessages;
      DM1.cdsEjecuta.Insert;
      DM1.cdsEjecuta.FieldByName('FLAG').Value      := 'N';
      DM1.cdsEjecuta.FieldByName('ITEM').Value      := i+1;
      DM1.cdsEjecuta.FieldByName('LINEA').Value     := scFile.Lines[ i ];
      DM1.cdsEjecuta.FieldByName('ARCHIVO').Value   := xName;
      DM1.cdsEjecuta.FieldByName('PERIODO').Value   := xAAMM;
      DM1.cdsEjecuta.FieldByname('UPROID').AsString := DM1.cdsUPro.FieldByName('UPROID').AsString;

      //DM1.cdsEjecuta.FieldByname('UPAGOID').AsString:=DM1.cdsUPago.FieldByName('UPAGOID').AsString;
      //DM1.cdsEjecuta.FieldByname('USEID').AsString  :=DM1.cdsUSes.FieldByName('USEID').AsString;

      If Length( Trim( Copy( scFile.Lines[ i ], 178, 10 ) ) )>= 8 Then
         DM1.cdsQry.FieldByName('FECHA').Value := StrToDate( Copy( scFile.Lines[ i ], 178, 10) );

      If Length( Trim( Copy( scFile.Lines[ i ], 188, 08 ) ) )>= 6 Then
       DM1.cdsQry.FieldByName('HORA').Value := StrToTime( Copy( scFile.Lines[ i ], 188, 08) );

      pbData.Position := pbData.Position+1;
      pnlBar.Refresh;

      xCont := xCont+1;
      If xCont >= 200 Then
       begin
        DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado
         xCont := 0;
         pnlBar.Refresh;
       end
     end;
    pnlBar.Refresh;

    If xCont > 0 Then
     DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado

    xSQL := 'SELECT MAX( ITEM ) ITEM FROM COB312';

    DM1.cdsQry.Filter   := '';
    DM1.cdsQry.Filtered := False;
    DM1.cdsQry.IndexFieldNames := '';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger+1;

    DM1.cdsDetalle.Insert;
    DM1.cdsDetalle.FieldByname('ITEM').AsInteger     := xItem;
    DM1.cdsDetalle.FieldByname('ARCHIVO').AsString   := xName;
    DM1.cdsDetalle.FieldByname('PERIODO').AsString   := xAAMM;
    DM1.cdsDetalle.FieldByname('USUARIO').AsString   := DM1.wUsuario;
    DM1.cdsDetalle.FieldByname('FREG').AsDateTime    := Date;
    DM1.cdsDetalle.FieldByname('FL_BAJADO').AsString := 'S';
    DM1.cdsDetalle.FieldByname('UPROID').AsString    := DM1.cdsUPro.FieldByName('UPROID').AsString;
    DM1.cdsDetalle.FieldByname('UPAGOID').AsString   := DM1.cdsUPago.FieldByName('UPAGOID').AsString;
    DM1.cdsDetalle.FieldByname('RECAUDA').AsString   := dbcTRecauda.Text;
    DM1.AplicaDatos( DM1.cdsDetalle, '' );

    pnlBar.Refresh;
    edtName.Text:='';
    seAno.Text:=Copy(DateTimeToStr(Date),7,4);
    seMes.Text:='0';//Copy(DateTimeToStr(Date),4,2);
    dblcdUPro.Text:='';
    dbcTRecauda.Text := '';
    pnlBar.Visible := False;
    ShowMessage( 'Data Transferida');
  end;
end;


procedure TFToolsDescarga.bbtnPlantillaClick(Sender: TObject);
begin
   Try
    FPlantMan := TFPlantMan.Create( Self );
    FPlantMan.ShowModal;
   finally
    FPlantMan.Free;
   end
end;


procedure TFToolsDescarga.bbtnModificaClick(Sender: TObject);
begin
  FToolDetalle:=TFToolDetalle.create(self);
  FToolDetalle.xArchivoT:='COB306';
  MtxD := TMant.Create(Self);
  try
		MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB306';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    mtxD.Filter         := 'ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' AND '
                         + 'PERIODO='''+DM1.cdsDetalle.FieldByname('PERIODO').AsString+'''';
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := DM1.wModulo;
    MtxD.Module         := DM1.wModulo;
    MtxD.Titulo 				:= 'Manipular Datos';
    MtxD.OnCreateMant   := PegaPanelToolDesDet;
    MtxD.OnInsert 			:= nil;
    MtxD.OnEdit 				:= OnEditDescarga;
   	MtxD.OnDelete 			:= Nil;
    MtxD.OnShow 				:= nil;
    MtxD.ControlGridDisp:= FPrincipal.cgdAutDisk;
    MtxD.SectionName		:='COBManipular';
    MtxD.FileNameIni    :='\SOLCOB.INI';
    MtxD.UserCheckB.Add('FLAG');
// Inicio: SPP_201402_COB  :   Cambio de DCOM a Socket
    MtxD.Tipo := 'NORMAL';
// Fin: SPP_201402_COB     : Cambio de DCOM a Socket
    MtxD.Execute;
  Finally
  	MtxD.Free;
    FToolDetalle.Free;
  end;
end;

procedure TFToolsDescarga.PegaPanelToolDesDet(Sender: TObject);
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

// Inicio: SPP_201312_COB    26/09/2013  : Cambiar el Color de los paneles
   Fprincipal.IniciaParametros(Sender);
// Fin: SPP_201312_COB       26/09/2013  : Cambiar el Color de los paneles

end;



procedure TFToolsDescarga.OnEditDescarga(Sender : TObject; MantFields: TFields);
begin
  DM1.cdsEjecuta.Edit;
  If ( DM1.cdsEjecuta.FieldByname('FLAG').AsString='N') or
     ( DM1.cdsEjecuta.FieldByname('FLAG').AsString='' ) Then
  begin
    DM1.cdsEjecuta.FieldByname('FLAG').AsString:='S';
    DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado
    Exit;
  end;
  If DM1.cdsEjecuta.FieldByname('FLAG').AsString='S' Then
  begin
    DM1.cdsEjecuta.FieldByname('FLAG').AsString:='N';
    DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado
    Exit;
  end;
end;


procedure TFToolsDescarga.bbtnVerificaClick(Sender: TObject);
var
   xArc, xCob, xDif : String;
begin
 //xSQL:='SELECT MAX(B.ARC) ARC, SUM(NVL(C.DOCMTO,0)) COB , MAX(NVL(B.ARC,0))-SUM(NVL(C.DOCMTO,0)) DIF FROM '
//  xSQL:='SELECT MAX(B.ARC) ARC, SUM(NVL(C.CPAGOMTO,0)) COB , MAX(NVL(B.ARC,0))-SUM(NVL(C.DOCMTO,0)) DIF FROM '
   xSQL := 'SELECT MAX(B.ARC) ARC FROM'
          +' ( SELECT A.ITEM, A.ARCHIVO, A.PERIODO, B.UPAGOID, B.UPROID, B.TRANSANO,'
          +' B.TRANSMES, SUM(NVL(B.TRANSMTO,0)) ARC'
          +' FROM COB312 A, COB310 B'
          +' WHERE A.ARCHIVO ='+QuotedStr(DM1.cdsDetalle.FieldByName('ARCHIVO').AsString)
          +' AND A.PERIODO ='+QuotedStr(DM1.cdsDetalle.FieldByName('PERIODO').AsString)
          +' AND A.ARCHIVO=B.ARCHIVO(+)'
          +' AND A.PERIODO=B.APOSEC(+)'
          +' GROUP BY A.ITEM, A.ARCHIVO, A.PERIODO, B.UPAGOID, B.UPROID, B.TRANSANO, B.TRANSMES ) B'
          +' Where B.UPROID = '+QuotedStr(DM1.cdsDetalle.FieldByName('UPROID').AsString)
          +' And B.TRANSANO = '+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString, 1, 4))
          +' And B.TRANSMES = '+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString, 5, 2));

   DM1.cdsQry.Filter   := '';
   DM1.cdsQry.Filtered := False;
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xArc := DM1.cdsQry.FieldByName('ARC').AsString;

   xSQL := 'Select SUM(CPAGOMTO) CPAGOMTO From COB302'

//          +' Where RCOBANO ='+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString, 1, 4))
          +' Where RCOBANOAPO ='+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString, 1, 4))
//          +' And RCOBMES = '+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString, 5, 2))
          +' And RCOBMESAPO = '+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString, 5, 2))
          +' And UPROID = '+QuotedStr(DM1.cdsDetalle.FieldByName('UPROID').AsString)
          +' And UPAGOID = '+QuotedStr(DM1.cdsDetalle.FieldByName('UPAGOID').AsString);

   DM1.cdsQry1.Filter   := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;

   If Length(DM1.cdsQry.FieldByName('ARC').AsString) = 0 Then
    xArc := '0';

   If Length(DM1.cdsQry1.FieldByName('CPAGOMTO').AsString) = 0 Then
    xCob := '0'
   Else
    xCob := DM1.cdsQry1.FieldByName('CPAGOMTO').AsString;

   xDif := FloatToStr(StrToFloat(xArc) - StrToFloat(xCob));

{  xSQL:='SELECT MAX(B.ARC) ARC, SUM(NVL(C.CPAGOMTO,0)) COB , MAX(NVL(B.ARC,0))-SUM(NVL(C.CPAGOMTO,0)) DIF FROM '

        +'( '
        +  'SELECT A.ITEM, A.ARCHIVO, A.PERIODO, B.UPAGOID, B.UPROID, B.TRANSANO, B.TRANSMES, '
        +    'SUM(NVL(B.TRANSMTO,0)) ARC '
        +  'FROM COB312 A, COB310 B '
        +  'WHERE A.ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' '
        +    'AND A.PERIODO='''+DM1.cdsDetalle.FieldByname('PERIODO').AsString+''' '
        +    'AND A.ARCHIVO=B.ARCHIVO(+) AND A.PERIODO=B.APOSEC(+) '
        +  'GROUP BY A.ITEM, A.ARCHIVO, A.PERIODO, B.UPAGOID, B.UPROID, B.TRANSANO, B.TRANSMES '
        +') B, COB302 C '
        +'WHERE B.UPAGOID=C.UPAGOID(+) AND B.UPROID=C.UPROID(+) '
        +'AND B.TRANSANO=C.RCOBANOAPO(+) AND B.TRANSMES=C.RCOBMESAPO(+)';

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;

  FToolConsistencia:=TFToolConsistencia.create(self);
  FToolConsistencia.meArc.Text:='****'+FloatToStrF( DM1.cdsQry.FieldByname('ARC').AsFloat, ffNumber, 15, 2);
  FToolConsistencia.meCob.Text:='****'+FloatToStrF( DM1.cdsQry.FieldByname('COB').AsFloat, ffNumber, 15, 2);
  FToolConsistencia.meDif.Text:='****'+FloatToStrF( DM1.cdsQry.FieldByname('DIF').AsFloat, ffNumber, 15, 2);

  }

   FToolConsistencia := TFToolConsistencia.Create(Self);
   FToolConsistencia.meArc.Text := '****'+FloatToStrF(StrToFloat(xArc), ffNumber, 15, 2);
   FToolConsistencia.meCob.Text := '****'+FloatToStrF(StrToFloat(xCob), ffNumber, 15, 2);
   FToolConsistencia.meDif.Text := '****'+FloatToStrF(StrTofloat(xDif), ffNumber, 15, 2);

  MtxD := TMant.Create(Self);
  Try
    MtxD.Admin           := DM1.wAdmin;
    MtxD.User            := DM1.wUsuario;
    MtxD.TableName       := 'COB310';
    MtxD.ClientDataSet   := DM1.cdsQry5;
    MtxD.Filter          := 'ARCHIVO ='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString
                         +''' AND APOSEC =''' +DM1.cdsDetalle.FieldByname('PERIODO').AsString+'''';
    MtxD.DComC           := DM1.DCOM1;
    MtxD.Module          := DM1.wModulo;
    MtxD.REGISTROS       := 30;
    MtxD.Titulo 	       := 'Consistenciar Datos';
    MtxD.OnCreateMant    := PegaPanelToolConsist;
    MtxD.OnInsert 	     := nil;
    MtxD.OnEdit 	       := OnEditConsistencia;
    MtxD.OnDelete 	     := Nil;
    MtxD.OnShow 	       := nil;
    MtxD.ControlGridDisp := FPrincipal.cgdAutDisk;
    MtxD.SectionName	   := 'COBConsis';
    MtxD.FileNameIni     := '\SOLCOB.INI';
    MtxD.UserCheckB.Add('FLAG');
// Inicio: SPP_201402_COB    : Cambio de DCOM a Socket
    MtxD.Tipo := 'NORMAL';
// Fin: SPP_201402_COB      : Cambio de DCOM a Socket
    MtxD.Execute;
  Finally
   MtxD.Free;
   FToolConsistencia.Free;
   DM1.cdsQry.Filter   := '';
   DM1.cdsQry.Filtered := False;
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.Close;
   DM1.cdsQry1.Filter   := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
  End;
end;

procedure TFToolsDescarga.OnEditConsistencia(Sender : TObject; MantFields: TFields);
begin
  If MtxD.FMant.dbgFiltro.GetActiveField.FieldName='FLAG' Then
  begin
    DM1.cdsQry5.Edit;
    If ( DM1.cdsQry5.FieldByname('FLAG').AsString='N') or
       ( DM1.cdsQry5.FieldByname('FLAG').AsString='' ) Then
    begin
      DM1.cdsQry5.FieldByname('FLAG').AsString:='S';
      DM1.AplicaDatos( DM1.cdsQry5, 'COB310' ); // Adiciona Traslado
      Exit;
    end;
    If DM1.cdsQry5.FieldByname('FLAG').AsString='S' Then
    begin
      DM1.cdsQry5.FieldByname('FLAG').AsString:='N';
      DM1.AplicaDatos(DM1.cdsQry5,'COB310' ); // Adiciona Traslado
      Exit;
    end;
  end;
  begin
    If DM1.cdsQry5.FieldByName('ASOID').AsString <> '' Then
      Information(Caption, 'Asociado ya fué Encontrado');

    FElegirAso := TFElegirAso.Create( Self );
    //** 04/02/2003 - PJSV
    FElegirAso.wViene := '2';
    //**
    FElegirAso.dbeCta.DataSource:= Nil;
    FElegirAso.dbeCta.DataField := '';
    FElegirAso.dbeCta.Visible   := False;
    FElegirAso.lblCta.Visible   := False;

    FElegirAso.dbeUse.DataSource:= DM1.dsQry5;
    FElegirAso.dbeUse.DataField := 'USEID';
    FElegirAso.dbeUse.Visible   := True;
    FElegirAso.lblUse.Visible   := True;

    FElegirAso.dbeCMod.DataSource:= DM1.dsQry5;
    FElegirAso.dbeCMod.DataField := 'ASOCODMOD';
    FElegirAso.dbeCMod.Visible   := True;
    FElegirAso.lblCMod.Visible   := True;

    FElegirAso.dbeCPag.DataSource:= DM1.dsQry5;
    FElegirAso.dbeCPag.DataField := 'ASOCODPAGO';
    FElegirAso.dbeCPag.Visible   := True;
    FElegirAso.lblCPag.Visible   := True;

    FElegirAso.dbeImp.DataSource:= DM1.dsQry5;
    FElegirAso.dbeImp.DataField := 'TRANSMTO';
    FElegirAso.dbeImp.Visible   := True;
    FElegirAso.lblImp.Visible   := True;

    FElegirAso.dbeDNI.DataSource:= DM1.dsqry5;
    FElegirAso.dbeDNI.DataField := 'ASODNI';
    FElegirAso.dbeDNI.Visible   := True;
    FElegirAso.dbeDNI.Visible   := True;

    FElegirAso.dbeNombre.DataSource := DM1.dsQry5;
    FElegirAso.dbeNombre.DataField  := 'ASOAPENOM';

    try
      FElegirAso.ShowModal;
    finally
      FElegirAso.Free;
    end;
  end;
end;

procedure TFToolsDescarga.PegaPanelToolConsist(Sender: TObject);
var
	pg : TPanel;
	pl : TPanel;
begin
   pg := FToolConsistencia.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pg.Align    := alClient;
   TMant(Sender).FMant.pnlBtns.Visible  := True;


// Inicio: SPP_201312_COB    26/09/2013  : Cambiar el Color de los paneles
   Fprincipal.IniciaParametros(Sender);
// Fin: SPP_201312_COB       26/09/2013  : Cambiar el Color de los paneles
end;

procedure TFToolsDescarga.bbtnTranDBFClick(Sender: TObject);
var
   i, xCont, xItem, xLen, xC : Integer;
   xLinea, xName, xAAMM, xAdic, xMonto : String;
begin
   If ( seAno.Value<=0 ) or ( seMes.Value<=0 ) Then
    begin
     ShowMessage('Error : Falta Ingresar Periodo');
     Exit;
    end;

   If ( seMes.Value<=0 ) or ( seMes.Value>12 ) Then
    begin
     ShowMessage('Error : Mes Inválido');
     Exit;
    end;

   If Length(Trim(dblcdUPro.Text))=0 Then
    begin
     ShowMessage('Debe Seleccionar la Unidad de Proceso');
     dblcdUPro.SetFocus;
     exit;
    end;

   If dbcTRecauda.Text = '' Then
    begin
     ShowMessage('Error : Falta Ingresar Tipo Recaudación');
     Exit;
    end;

   odLeer.Title := 'Leer DBF a Tranferir';
   odLeer.DefaultExt := '*.DBF';
   odLeer.Filter := 'Archivos DBFs|*.DBF';
   odLeer.FileName := '';
   odLeer.InitialDir := xDirect+DM1.wUsuario+'\';

   If not odLeer.Execute Then Exit;

   Screen.Cursor := crHourGlass;
   xFile := odLeer.FileName;
   xFileOrigen := odLeer.FileName;

   While Pos( '\', xFile ) > 0 do
    begin
     xFile := Copy( xFile, Pos( '\', xFile )+1, Length( xFile ) );
    end;

   xFileDestino := xDirect+DM1.wUsuario+'\'+xFile;

   If not DirectoryExists( xDirect+DM1.wUsuario+'\' ) Then
     If not CreateDir( xDirect+DM1.wUsuario+'\' ) Then
        raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\');

   CopyFile((PChar(xFileOrigen)),(PChar(xFileDestino)),False);

   edtName.Text  := odLeer.FileName;
   Screen.Cursor := crDefault;

   xSQL := 'SELECT COUNT(ARCHIVO) TOTAL FROM COB312 WHERE ARCHIVO='+quotedstr(xFile);

   DM1.cdsQry.Filter   := '';
   DM1.cdsQry.Filtered := False;
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('TOTAL').AsFloat > 0 Then
    begin
     ShowMessage('La Data ya fué Transferida');
     Exit;
    end;

  If not Question('Transferencia de DBF', 'Seguro de Recuperar Data DBF'+#13+#13+'Desea Continuar') Then
    Exit;

  xName := odLeer.FileName;
  xName := Trim(xName);

  pnlBar.Refresh;

   While Pos( '\', xName ) > 0 do
    begin
     xName := Copy( xName, Pos( '\', xName )+1, Length( xName ) );
    end;

   xAAMM := DM1.StrZero( IntToStr( seAno.Value ), 4 )+DM1.StrZero( IntToStr( seMes.Value ), 2 );

   xSQL := 'SELECT * FROM COB312'
          +' WHERE ARCHIVO ='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';

   DM1.cdsQry.Filter   := '';
   DM1.cdsQry.Filtered := False;
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.Recordcount > 0 Then
    begin
     ShowMessage('Error : Archivo ya fué Transferido. Verifique');
     Exit;
    end;

   xUPRO  := DM1.cdsUPro.FieldByName('UPROID').AsString;
   xUPAGO := DM1.cdsUPago.FieldByName('UPAGOID').AsString;
   xUSE   := DM1.cdsUSes.FieldByName('USEID').AsString;

   DM1.tbOrigen.Close;
   xSQL := 'SELECT * FROM ''C:\AUTDISK\DERRAMA1.DBF''';
   xSQL := 'SELECT * FROM '''+xDirect+DM1.wUsuario+'\'+xFile+'''';

   DM1.tbOrigen.DataRequest(xSQL);
   DM1.tbOrigen.Open;

   lblTReg.Caption := IntToStr( DM1.tbOrigen.RecordCount );
   pbData.Max      := DM1.tbOrigen.RecordCount;
   pbData.Position := 0;
   pbData.Min := 0;
   pnlBar.Visible  := True;
   pnlBar.Refresh;

   xSQL := 'SELECT * FROM COB306'
          +' WHERE ARCHIVO='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';

   DM1.cdsEjecuta.Filter   := '';
   DM1.cdsEjecuta.Filtered := False;
   DM1.cdsEjecuta.IndexFieldNames := '';
   DM1.cdsEjecuta.Close;
   DM1.cdsEjecuta.DataRequest(xSQL);
   DM1.cdsEjecuta.Open;

   xCont := 0;
   xC    := 0;
   DM1.tbOrigen.First;
   While not DM1.tbOrigen.Eof Do
    begin
     xC := xC+1;
     DM1.cdsEjecuta.Insert;
    DM1.cdsEjecuta.FieldByName('FLAG').Value   := 'N';
    DM1.cdsEjecuta.FieldByName('ITEM').Value   := xC;

    xLinea:='';
    For i:=0 to DM1.tbOrigen.FieldCount-1 Do
    begin
      xLen:=DM1.tbOrigen.Fields[ i ].Size;

      If xLen=0 Then
      begin
        If Pos( '/', DM1.tbOrigen.Fields[ i ].AsString )>0 Then
        begin
          xLen :=11;
          xLinea:=xLinea+Copy(DM1.tbOrigen.Fields[ i ].AsString
                    +'                                                  ', 1, xLen )+' ';
        end
        else
        begin
          If ( Pos( '0', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '1', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '2', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '3', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '4', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '5', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '6', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '7', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '8', DM1.tbOrigen.Fields[ i ].AsString )>0 ) or
             ( Pos( '9', DM1.tbOrigen.Fields[ i ].AsString )>0 ) Then
          begin
            xMonto:=FloatToStrF( DM1.tbOrigen.Fields[ i ].AsFloat, ffFixed, 15, 2);
            xLen:=Length( xMonto );
            xAdic:=Copy('        ', 1, 15-xLen );
            xLen :=15;
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
    //Label4.Caption:=xLinea; Label5.Caption:=InttoStr(Length(xLinea)); Panel1.Refresh;
    DM1.cdsEjecuta.FieldByName('LINEA').AsString   := xLinea;
    DM1.cdsEjecuta.FieldByName('ARCHIVO').AsString := xName;
    DM1.cdsEjecuta.FieldByName('PERIODO').AsString := xAAMM;
    DM1.cdsEjecuta.FieldByname('UPROID').AsString  := DM1.cdsUPro.FieldByName('UPROID').AsString;

    pbData.Position:=pbData.Position+1;
    pnlBar.Refresh;

    xCont:=xCont+1;
    If xCont >= 200 Then
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
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;

  xItem:=DM1.cdsQry.FieldByName('ITEM').AsInteger+1;

  DM1.cdsDetalle.Insert;
  DM1.cdsDetalle.FieldByname('ITEM').AsInteger    := xItem;
  DM1.cdsDetalle.FieldByname('ARCHIVO').AsString  := xName;
  DM1.cdsDetalle.FieldByname('PERIODO').AsString  := xAAMM;
  DM1.cdsDetalle.FieldByname('USUARIO').AsString  := DM1.wUsuario;
  DM1.cdsDetalle.FieldByname('FREG').AsDateTime   := DATE;
  DM1.cdsDetalle.FieldByname('FL_BAJADO').AsString:= 'S';
  DM1.cdsDetalle.FieldByname('UPROID').AsString   := DM1.cdsUPro.FieldByName('UPROID').AsString;
  DM1.cdsDetalle.FieldByname('UPAGOID').AsString  := DM1.cdsUPago.FieldByName('UPAGOID').AsString;
  DM1.cdsDetalle.FieldByname('RECAUDA').AsString  := dbcTRecauda.Text;

  DM1.AplicaDatos( DM1.cdsDetalle, '' );
  pnlBar.Refresh;
  edtName.Text:='';
  seAno.Text:=Copy(DateTimeToStr(Date),7,4);
  seMes.Text:=Copy(DateTimeToStr(Date),4,2);
  pnlBar.Visible :=False;

   If not DirectoryExists( xDirect+DM1.wUsuario+'\' ) Then
     If not CreateDir( xDirect+DM1.wUsuario+'\' ) Then
        raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\' );

   If not DirectoryExists( xDirect+DM1.wUsuario+'\'+xAAMM+'\' ) Then
     If not CreateDir( xDirect+DM1.wUsuario+'\'+xAAMM ) Then
        raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\'+xAAMM+'\' );

   If not DirectoryExists( xDirect+DM1.wUsuario+'\'+xAAMM+'\'+dblcdUPro.Text+'\' ) Then
     If not CreateDir( xDirect+DM1.wUsuario+'\'+xAAMM+'\'+dblcdUPro.Text+'\' ) Then
        raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\'+xAAMM+'\'+dblcdUPro.Text+'\' );

   xFileDestino:=xDirect+DM1.wUsuario+'\'+xAAMM+'\'+dblcdUPro.Text+'\'+xFile;

   CopyFile((PChar(xFileOrigen)),(PChar(xFileDestino)),False);

   DeleteFile( PChar(xFileOrigen) );

   pnlBar.Refresh;
   edtName.Text     := '';
   seAno.Text       := Copy(DateTimeToStr(Date),7,4);
   seMes.Text       := '0';//Copy(DateTimeToStr(Date),4,2);
   dblcdUPro.Text   := '';
   dbcTRecauda.Text := '';
   pnlBar.Visible   := False;
   ShowMessage( 'Data Transferida');
end;

procedure TFToolsDescarga.bbtnVerificaPerClick(Sender: TObject);
begin
   FToolConsistencia := TFToolConsistencia.create(self);

   MtxD := TMant.Create(Self);
   try
		MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB310';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    mtxD.Filter         := 'APOSEC=''' +DM1.cdsDetalle.FieldByname('PERIODO').AsString+'''';
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := DM1.wModulo;
    MtxD.Titulo 				:= 'Consistenciar Datos';
    MtxD.OnCreateMant   := PegaPanelToolConsist;
    MtxD.OnInsert 			:= nil; //OnInsertRegGlobalCob;
    MtxD.OnEdit 				:= OnEditConsistencia;
    MtxD.OnDelete 			:= Nil;
    MtxD.OnShow 				:= nil;
    MtxD.ControlGridDisp:= FPrincipal.cgdAutDisk;
    MtxD.SectionName		:='COBConsistencia';
    MtxD.FileNameIni    := '\SOLCOB.INI';
    MtxD.UserCheckB.Add('FLAG');
    MtxD.Execute;

   finally
  	MtxD.Free;
    FToolConsistencia.Free;
   end;
end;

procedure TFToolsDescarga.bbtnModificaPerClick(Sender: TObject);
begin
   FToolDetalle:=TFToolDetalle.create(self);
   MtxD := TMant.Create(Self);
   try
		MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB306';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    mtxD.Filter         := 'PERIODO='''+DM1.cdsDetalle.FieldByname('PERIODO').AsString+'''';
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := DM1.wModulo;
    MtxD.Titulo 				:= 'Manipular Datos';
    MtxD.OnCreateMant   := PegaPanelToolDesDet;
    MtxD.OnInsert 			:= nil;
    MtxD.OnEdit 				:= OnEditDescarga;
   	MtxD.OnDelete 			:= Nil;
    MtxD.OnShow 				:= nil;
    MtxD.ControlGridDisp:= FPrincipal.cgdAutDisk;
    MtxD.SectionName		:='COBManipular';
    MtxD.FileNameIni    := '\SOLCOB.INI';
    MtxD.UserCheckB.Add('FLAG');
    MtxD.Execute;

   finally
  	MtxD.Free;
    FToolDetalle.Free;
   end;
end;

procedure TFToolsDescarga.dblcdUProExit(Sender: TObject);
begin
   sSQL := 'SELECT * FROM APO103'
          +' WHERE UPROID ='+QuotedStr(dblcdUPro.Text);
   DM1.FiltraCDS(DM1.cdsUPago,sSQL);
   dblcdUPago.SetFocus;
end;

procedure TFToolsDescarga.seMesExit(Sender: TObject);
begin
   If LengtH(seMes.Text)=1 Then
    begin
     seMes.Text := '0'+seMes.Text;
    end;
end;

procedure TFToolsDescarga.FormCreate(Sender: TObject);
begin
   seAno.Text := Copy(DateTimeToStr(Date), 7, 4);
   seMes.Text := '0';//Copy(DateTimeToStr(Date),4,2);
   dblcdUPago.LookupTable  := DM1.cdsUPago;
   dblcdUPro.LookupTable   := DM1.cdsUPro;
   dbcTRecauda.LookupTable := DM1.cdsTRecauda;
   dbcTRecauda.Clear;
   dbcTRecauda.Selected.Add('RECAUDA'#9'22'#9'Recaudación');
   dbcTRecauda.Selected.Add('RECPREF'#9'5'#9'Prefijo');
   dbcTRecauda.RefreshDisplay;
end;

procedure TFToolsDescarga.btnOkClick(Sender: TObject);
begin
   If DM1.cdsDetalle.FieldByname('FL_TRANSF').AsString='S' Then
    begin
     Information(Caption, 'La Información ya ha Sido Transferida');
     Exit;
    end;

   If DM1.cdsDetalle.FieldByname('FL_BAJADO').AsString<>'S' Then
    begin
     ErrorMsg(Caption, 'Falta Bajar el Archivo');
     Exit;
    end;
   If DM1.cdsDetalle.FieldByname('FL_IMPORT').AsString<>'S' Then
    begin
     ErrorMsg(Caption,'Falta Importar el Archivo');
     Exit;
    end;

   xSQL := 'SELECT ASOID FROM COB310'
          +' WHERE ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' '
          +' AND APOSEC=''' +DM1.cdsDetalle.FieldByname('PERIODO').AsString+''' '
          +' GROUP BY ASOID'
          +' HAVING COUNT(*) > 1';

   DM1.cdsReporte.Filter   := '';
   DM1.cdsReporte.Filtered := False;
   DM1.cdsReporte.IndexFieldNames := '';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   If DM1.cdsReporte.RecordCount > 0 Then
    begin
     Screen.Cursor := crDefault;
     ErrorMsg(Caption, 'Existen Asociados Repetidos No Puede Continuar');
     Exit;
    end;

   If Question(Caption,'Marca Data Para que pueda ser transferida'+#13+#13+
                      ' ¿ Esta Seguro ? ') Then
    begin
     DM1.cdsDetalle.Edit;
     DM1.cdsDetalle.FieldByname('FL_VERIFI').AsString:='S';
     DM1.AplicaDatos( DM1.cdsDetalle, '' );
     ShowMessage('Data Marcada Ok.');
    end;
end;

procedure TFToolsDescarga.btnUnZipClick(Sender: TObject);
begin
   If opdZip.execute Then
    begin
     xFileDestino := xDirect+DM1.wUsuario+'\'+xFile;
     Winexec(Pchar(BuscaEjecutable(opdZip.FileName)+' -e "'+opdZip.filename+'" '+xFileDestino),1);
    end;

   Screen.Cursor := crDefault;
   ShowMessage('Archivo Desempaquetado');
end;

function TFToolsDescarga.BuscaEjecutable(Fichero: string): string;
var
   Ejecutable:Pchar;
begin
   GetMem(Ejecutable,200);
   FindExecutable(Pchar(Fichero),nil,Ejecutable);
   Result:=String(Ejecutable);
   FreeMem(Ejecutable,200);
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

  If (CompSize > UnCompSize) Then Sign := '-' else Sign := ' ';

  If (Factor = 100)
  Then sFactor := cFactor100
  else sFactor := Format(cFactor, [Sign, Factor]);

  S := Format(sFormat, [UnCompSize, CompSize, sFactor, Month, Day, Year, Hour, Minute, C, FileName]);

  //frmMain.Memo1.Lines.Add(S);

end;
{----------------------------------------------------------------------------------}


procedure TFToolsDescarga.bbtnVerDbfClick(Sender: TObject);
var
   sRutaFloopy : string;
begin
  odLeer.Title:='Leer DBF para Vista Previa';
  odLeer.DefaultExt:='*.DBF';
  odLeer.Filter:='Archivos DBFs|*.DBF';
  odLeer.FileName:='';
  odLeer.InitialDir:=xDirect+DM1.wUsuario+'\';

  If not odLeer.Execute Then Exit;

  Screen.Cursor:=crHourGlass;

  edtName.Text:=odLeer.FileName;
  sRutaFloopy := Copy(edtName.Text,1,2);
  If sRutaFloopy<>'A:' Then
  begin
     While Pos(':', odLeer.FileName ) > 0 do
     begin
       odLeer.FileName:=Copy( odLeer.FileName, Pos( ':', odLeer.FileName )+1, Length( odLeer.FileName ));
     end;
  end;

  If ( Copy( odLeer.FileName,1,2)='A:' ) or
     ( Copy( odLeer.FileName,1,2)='C:' ) or
     ( Copy( odLeer.FileName,1,2)='D:' ) Then
  begin
     Showmessage( 'Error : Debe Copiar su Archivo al Disco T ' );
     Screen.Cursor := crDefault;
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

  try

  	FVPrevia:=TFVPrevia.Create(Self);
    FVPrevia.dbgPrevio.DataSource:=DM1.ds1;
    Screen.Cursor:=crDefault;
    FVPrevia.ShowModal;
  finally
    FVPrevia.Free;
  end;
end;

procedure TFToolsDescarga.btnRenomClick(Sender: TObject);
begin
	If Length(Trim(seMes.Text)) = 0 Then seMes.Text:='0';
  If ( seAno.Value<=0 ) or ( seMes.Value<=0 ) Then
  begin
     ShowMessage('Error : Falta Ingresar Periodo');
     Exit;
  end;

  If Length(Trim(dblcdUPro.Text))=0 Then
  begin
    ShowMessage('Debe Seleccionar la Unidad de Proceso');
    dblcdUPro.SetFocus;
    exit;
  end;


  If Length(Trim(dblcdUPago.Text))=0 Then
  begin
    ShowMessage('Debe Seleccionar la Unidad de Pago');
    dblcdUPago.SetFocus;
    exit;
  end;

  If dbcTRecauda.Text='' Then
  begin
    ShowMessage('Error : Falta Ingresar Tipo Recaudación');
    Exit;
  end;

  //odLeer.Title:='Renombrar Seleccione Archivo, luego Función [F2] é indique el Nuevo Nombre';
  odLeer.Title:='Renombrar Archivo';
  odLeer.DefaultExt:='*.*';
  odLeer.Filter:='Archivos *.*|*.*';
  odLeer.FileName:='';
  odLeer.InitialDir:=xDirect+DM1.wUsuario+'\';

  If not odLeer.Execute Then Exit;

  Screen.Cursor:=crHourGlass;
  xFile:=odLeer.FileName;
  xFileOrigen:=odLeer.FileName;

  While Pos('.', xFile ) > 0 do
  begin
    xFile:=Copy( xFile, Pos( '.', xFile )+1, Length( xFile ));
  end;

  xFile:=DM1.cdsTRecauda.FieldByName('RECPREF').AsString+dblcdUPro.Text+dblcdUPago.Text+seAno.Text+seMes.Text+'.'+xFile;
  xFileDestino:=xDirect+DM1.wUsuario+'\'+xFile;

  If FileExists(xFileDestino) Then
  begin
    //If not Question(Caption, 'El Archivo  '+xFile+'  ya Existe '+#13+#13+'Desea Sobreescribir ') Then
    //begin
    Screen.Cursor:=crDefault;
  	Information(Caption, 'El Archivo  '+xFile+'  ya Existe '+#13+#13+' No Puede Continuar con la Operación ');
    Exit;
    //end;
  end;

  If not DirectoryExists( xDirect+DM1.wUsuario+'\' ) Then
    If not CreateDir( xDirect+DM1.wUsuario+'\' ) Then
      raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\' );


  RenameFile((PChar(xFileOrigen)),(PChar(xFileDestino)));
  //CopyFile((PChar(xFileOrigen)),(PChar(xFileDestino)),False);

  Screen.Cursor := crDefault;
  ShowMessage('Ok : Archivo Renombrado');
end;

procedure TFToolsDescarga.bbtnVerTxtClick(Sender: TObject);
var
  i : Integer;
  xName, xAAMM, xSQL : String;
begin
  odLeer.Title:='Leer Texto para Vista Previa';
  odLeer.DefaultExt:='*.TXT';
  odLeer.Filter:='Archivos TXT|*.TXT|Archivos LIS|*.LIS';
  odLeer.FileName:='';
  odLeer.InitialDir:=xDirect+DM1.wUsuario+'\';

  If not odLeer.Execute Then Exit;

  Screen.Cursor:=crHourGlass;
  edtName.Text:=odLeer.FileName;
  xFile:=odLeer.FileName;

  While Pos( '\', xFile ) > 0 do
  begin
    xFile:=Copy( xFile, Pos( '\', xFile )+1, Length( xFile ) );
  end;

  seAno.Text:=Copy(DateTimeToStr(Date),7,4);
  seMes.Text:='0';//Copy(DateTimeToStr(Date),4,2);

   xSQL := 'SELECT COUNT(ARCHIVO) TOTAL FROM COB312 WHERE ARCHIVO='+quotedstr(xFile);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('TOTAL').AsFloat > 0 Then
    begin
     ShowMessage('El Archivo ya fué Transferido');
    end;

   xName := odLeer.FileName;

   pnlBar.Refresh;

   While Pos( '\', xName )>0 do
    begin
     xName := Copy( xName, Pos( '\', xName )+1, Length( xName ) );
    end;

  xAAMM:=DM1.StrZero( IntToStr( seAno.Value ), 4 )+DM1.StrZero( IntToStr( seMes.Value ), 2 );

  scFile.Lines.LoadFromFile( odLeer.FileName );

  lblTReg.Caption:=IntToStr(scFile.Lines.Count);
  pbData.Max     :=scFile.Lines.Count;
  pbData.Min:=0;
  pbData.Position:=0;
  pnlBar.Visible :=True;
  pnlBar.Refresh;

   xSQL := 'SELECT * FROM COB306'
          +' WHERE ARCHIVO ='''+Trim( xName )+''' AND PERIODO='''+xAAMM+'''';
   DM1.cdsEjecuta.Close;
   DM1.cdsEjecuta.DataRequest(xSQL);
   DM1.cdsEjecuta.Open;

   For i:=0 to scFile.Lines.Count-1 Do
    begin
     Application.ProcessMessages;
     DM1.cdsEjecuta.Insert;
     DM1.cdsEjecuta.FieldByName('ITEM').Value   := i+1;
     DM1.cdsEjecuta.FieldByName('LINEA').Value  := scFile.Lines[ i ];

     pbData.Position := pbData.Position+1;
     pnlBar.Refresh;
    end;

  DM1.cdsEjecuta.FieldByName('ITEM').DisplayWidth := 5;
  DM1.cdsEjecuta.FieldByName('FLAG').Visible      := False;
  DM1.cdsEjecuta.FieldByName('ARCHIVO').Visible   := False;
  DM1.cdsEjecuta.FieldByName('FREG').Visible      := False;
  DM1.cdsEjecuta.FieldByName('PERIODO').Visible   := False;
  DM1.cdsEjecuta.FieldByName('UPROID').Visible    := False;
  DM1.cdsEjecuta.FieldByName('UPAGOID').Visible   := False;
  DM1.cdsEjecuta.FieldByName('USEID').Visible     := False;
  DM1.cdsEjecuta.FieldByName('LINEA2').Visible    := False;

  DM1.cdsEjecuta.First;

  pnlBar.Refresh;

   Try
    FVPrevia:=TFVPrevia.Create(Self);
    FVPrevia.dbgPrevio.DataSource:=DM1.dsEjecuta;
    Screen.Cursor:=crDefault;
    FVPrevia.ShowModal;
  finally
     pbData.Position:=0;
     DM1.cdsEjecuta.CancelUpdates;
     FVPrevia.Free;
  end;
end;

procedure TFToolsDescarga.bbtnCopiaClick(Sender: TObject);
begin
   odLeer.Title      := 'Copiar Desde .. Hasta';
   odLeer.DefaultExt := '*.*';
   odLeer.Filter     := 'Archivos|*.*';
   odLeer.InitialDir := 'C:\AutDisk\';

   If not odLeer.Execute Then Exit;

   Screen.Cursor := crHourGlass;
   xFile:=odLeer.FileName;
   xFileOrigen := odLeer.FileName;

  While Pos('\', xFile ) > 0 do
  begin
    xFile:=Copy( xFile, Pos( '\', xFile )+1, Length( xFile ));
  end;

  xFileDestino:=xDirect+DM1.wUsuario+'\'+xFile;

  If FileExists(xFileDestino) Then
  begin
    If not Question(Caption, 'El Archivo  '+xFile+'  ya Existe '+#13+#13+'Desea Sobreescribir ') Then
    begin
      Screen.Cursor:=crDefault;
      Exit;
    end;
  end;

  If not DirectoryExists( xDirect+DM1.wUsuario+'\' ) Then
    If not CreateDir( xDirect+DM1.wUsuario+'\' ) Then
      raise Exception.Create('Error al Crear Directorio '+xDirect+DM1.wUsuario+'\' );

  CopyFile((PChar(xFileOrigen)),(PChar(xFileDestino)),False);

  Screen.Cursor:=crDefault;
  ShowMessage('Ok : Archivo Copiado');
end;


procedure TFToolsDescarga.bbtnUnirClick(Sender: TObject);
begin
  try
    DM1.tbOrigen.Close;
    FUnirDBF := TFUnirDBF.Create( Self );
    FUnirDBF.ShowModal;
  finally
    FUnirDBF.Free;
  end
end;

procedure TFToolsDescarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    End;
end;

Procedure TFToolsDescarga.btnseparcClick(Sender: TObject);
Begin
  // Se encarga de separar los archivos
  // Verfificando información antes de la separación
  //Verificando si se encuentra información en la tabla COB319
  If Trim(DM1.cdsDetalle.FieldByName('RECAUDA').AsString) <> 'APORTE + CUOTA' Then
  Begin
    MessageDlg('No es un archivo combinado de APORTE + CUOTA', mtInformation,[mbOk],0);
    Exit;
  End;
  If Copy(Trim(DM1.cdsDetalle.FieldByName('ARCHIVO').AsString),1,1) <> 'D' Then
  Begin
    MessageDlg('No es un archivo combinado de APORTE + CUOTA', mtInformation,[mbOk],0);
    Exit;
  End;
  If Trim(DM1.cdsDetalle.FieldByName('FL_TRANSF').AsString) = 'S' Then
  Begin
    MessageDlg('Información de Autdisk ya fue transferido a Ingreso en Lote', mtInformation,[mbOk],0);
    Exit;
  End;
  Try
    FSepArc := TFSepArc.create(Self);
    FSepArc.ShowModal;
  Finally
    FSepArc.Free;
  End;
  FPrincipal.Mtx.RefreshFilter;
End;

end.
