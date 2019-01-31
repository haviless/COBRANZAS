unit COB709;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls, StrContainer, Spin, Mask, Mant, db,
  Grids, Wwdbigrd, Wwdbgrid, Wwdatsrc, DBTables, fcButton, fcImgBtn,
  fcShapeBtn, wwdblook, Wwdbdlg, wwriched, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDB,
  ppTypes, ppDBPipe, ppViewr, ppStrtch, ppRichTx, ppDBBDE, wwdbedit;

type
  TFToolsCarga = class(TForm)
    odLeer: TOpenDialog;
    ppdbRepDcto: TppDBPipeline;
    pprRepDetalle: TppReport;
    pprRepResNTel: TppReport;
    ppHeaderBand2: TppHeaderBand;
    pplblcia1: TppLabel;
    pplblareapersonal1: TppLabel;
    pplbltitulo1: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel16: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel17: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLine3: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine4: TppLine;
    ppLabel21: TppLabel;
    pplblsubtitulo1: TppLabel;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel23: TppLabel;
    ppLine7: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    pprRepResTel: TppReport;
    pnlTool: TPanel;
    bbtnPlantilla: TfcShapeBtn;
    bbtnImportar: TfcShapeBtn;
    bbtnDocumento: TfcShapeBtn;
    bbtnPrevio: TfcShapeBtn;
    wwDBRichEdit2: TwwDBRichEdit;
    wwDBRichEdit1: TwwDBRichEdit;
    ppHeaderBand1: TppHeaderBand;
    pplblCia: TppLabel;
    pplblAreaPersonal: TppLabel;
    pplbltitulo: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine5: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLabel10: TppLabel;
    pplblsubtitulo: TppLabel;
    ppDBText6: TppDBText;
    ppLabel22: TppLabel;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText1: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppHeaderBand3: TppHeaderBand;
    pplblcia2: TppLabel;
    pplblareapersonal2: TppLabel;
    pplbltitulo2: TppLabel;
    ppLabel28: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel29: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel30: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLine9: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine10: TppLine;
    ppLabel34: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText3: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel36: TppLabel;
    ppLine11: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel27: TppLabel;
    ppLabel37: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText19: TppDBText;
    ppLabel24: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc7: TppDBCalc;
    ppLine8: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel13: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLabel26: TppLabel;
    ppLabel35: TppLabel;
    bdeppOficio: TppBDEPipeline;
    rptOficio: TppReport;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDetailBand5: TppDetailBand;
    dbtMontoTot: TppDBText;
    ppHeaderBand4: TppHeaderBand;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine2: TppLine;
    ppLine12: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    plblTitTel: TppLabel;
    rchtPagina: TppRichText;
    ppDetailBand4: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText24: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel52: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppLine13: TppLine;
    ppReport2: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel43: TppLabel;
    ppLabel46: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel47: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppDBText30: TppDBText;
    ppDetailBand6: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText29: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLabel53: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppLine16: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine19: TppLine;
    ppLabel60: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    procedure bbtnPlantillaClick(Sender: TObject);
    procedure bbtnModificaClick(Sender: TObject);
    procedure bbtnVerificaClick(Sender: TObject);
    procedure bbtnVerificaPerClick(Sender: TObject);
    procedure bbtnModificaPerClick(Sender: TObject);
    procedure edtNameExit(Sender: TObject);
    procedure bbtnImportarClick(Sender: TObject);
   // procedure bbtnDocumentoClick(Sender: TObject);
    procedure bbtnPrevioClick(Sender: TObject);
    procedure pprRepDetallePreviewFormCreate(Sender: TObject);
    procedure pprRepResTelPreviewFormCreate(Sender: TObject);
    procedure pprRepResNTelPreviewFormCreate(Sender: TObject);
    procedure bbtnDocumentoClick(Sender: TObject);
    procedure rptOficioPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
    xGlosa : String;
    xMonto : Double;
    procedure PegaPanelToolDesDet(Sender: TObject);
    procedure OnEditDescarga(Sender : TObject; MantFields: TFields);
    procedure PegaPanelToolConsist(Sender: TObject);
    procedure OnEditConsistencia(Sender : TObject; MantFields: TFields);
    //procedure Set_UnZipOptions(var O: TDCL);
  public
    { Public declarations }
    xSQL,xUSE,xUPRO,xUPAGO : String;
  end;

var
  FToolsCarga: TFToolsCarga;
  wano, wmes, wbcoid, wfpagoid, wuproid : string;

  //procedure Set_UserFunctions(var Z: TUserFunctions);

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

uses COBDM1, COB001, COB421, COB415, COB416, COB417, COB420;

{$R *.DFM}

procedure TFToolsCarga.bbtnPlantillaClick(Sender: TObject);
begin
  DM1.cdsPlanDet.Close;
  DM1.cdsPlantilla.Close;
  Try
    FPlantManEnv:=TFPlantManEnv.Create( Self );
    FPlantManEnv.ShowModal;
  finally
    FPlantManEnv.Free;
  end
end;

procedure TFToolsCarga.bbtnModificaClick(Sender: TObject);
begin
  FToolDetalle:=TFToolDetalle.create(self);
  MtxD := TMant.Create(Self);
  try
	 MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB306';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    mtxD.Filter         := 'ARCHIVO='''+DM1.cdsQry5.FieldByname('ARCHIVO').AsString+''' and '
                         + 'PERIODO='''+DM1.cdsQry5.FieldByname('PERIODO').AsString+'''';
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := dm1.wModulo;
    MtxD.Module         := dm1.wModulo;
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
  Finally
  	MtxD.Free;
    FToolDetalle.Free;
  end;
end;

procedure TFToolsCarga.PegaPanelToolDesDet(Sender: TObject);
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


procedure TFToolsCarga.OnEditDescarga(Sender : TObject; MantFields: TFields);
begin
   DM1.cdsEjecuta.Edit;
   if ( DM1.cdsEjecuta.FieldByname('FLAG').AsString='N') OR
      ( DM1.cdsEjecuta.FieldByname('FLAG').AsString='' ) then
   begin
      DM1.cdsEjecuta.FieldByname('FLAG').AsString:='S';
      DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado
      Exit;
   end;
   if DM1.cdsEjecuta.FieldByname('FLAG').AsString='S' then begin
      DM1.cdsEjecuta.FieldByname('FLAG').AsString:='N';
      DM1.AplicaDatos( DM1.cdsEjecuta, '' ); // Adiciona Traslado
      Exit;
   end;

end;



procedure TFToolsCarga.bbtnVerificaClick(Sender: TObject);
begin
  FToolConsistencia:=TFToolConsistencia.create(self);
  MtxD := TMant.Create(Self);
  Try
		MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB310';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    mtxD.Filter         := 'ARCHIVO='''+DM1.cdsQry5.FieldByname('ARCHIVO').AsString+''' and '
                         + 'APOSEC=''' +DM1.cdsQry5.FieldByname('PERIODO').AsString+'''';
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := dm1.wModulo;
    MtxD.Titulo 				:= 'Consistenciar Datos';
    MtxD.OnCreateMant   := PegaPanelToolConsist;
    MtxD.OnInsert 			:= nil;
    MtxD.OnEdit 				:= OnEditConsistencia;
    MtxD.OnDelete 			:= Nil;
    MtxD.OnShow 				:= nil;
    MtxD.ControlGridDisp:= FPrincipal.cgdAutDisk;
    MtxD.SectionName		:='COBConsistencia';
    MtxD.FileNameIni    := '\SOLCOB.INI';
    MtxD.UserCheckB.Add('FLAG');
    MtxD.Execute;
  Finally
  	MtxD.Free;
    FToolConsistencia.Free;
  End;
end;

procedure TFToolsCarga.OnEditConsistencia(Sender : TObject; MantFields: TFields);
begin
   if DM1.cdsEjecuta.FieldByName('ASOID').AsString<>'' then begin
      ShowMessage('Error : Asociado ya fue Encontrado');
      Exit;
   end;

   FElegirAso := TFElegirAso.Create( Self );
   try
     FElegirAso.ShowModal;
   finally
     FElegirAso.Free;
   end;
end;

procedure TFToolsCarga.PegaPanelToolConsist(Sender: TObject);
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
end;


procedure TFToolsCarga.bbtnVerificaPerClick(Sender: TObject);
begin
  FToolConsistencia:=TFToolConsistencia.create(self);

  MtxD := TMant.Create(Self);
  try
		MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB310';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    mtxD.Filter         := 'APOSEC=''' +DM1.cdsQry5.FieldByname('PERIODO').AsString+'''';
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := dm1.wModulo;
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

procedure TFToolsCarga.bbtnModificaPerClick(Sender: TObject);
begin
  FToolDetalle:=TFToolDetalle.create(self);
  MtxD := TMant.Create(Self);
  try
		MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB306';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    mtxD.Filter         := 'PERIODO='''+DM1.cdsQry5.FieldByname('PERIODO').AsString+'''';
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := dm1.wModulo;
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


{ user functions for use with the TUserFunctions structure }
{----------------------------------------------------------------------------------}
function DllPrnt(Buffer: PChar; Size: ULONG): integer;
begin
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


procedure TFToolsCarga.edtNameExit(Sender: TObject);
begin
   bbtnPlantilla.setfocus;
end;

procedure TFToolsCarga.bbtnImportarClick(Sender: TObject);
var
   xSQL, xcampo, xWhere, xRegistro, xNomArch : string;
   xRegTxt : tstringlist;
   xstr, xcoma, xname, xindices, xestid, xestdes, xestidc, xgrupos, xxx : string;
   xflgexi : boolean;
   xi : integer;
   xRegDbf : ttable;
   xRegDb : tdatabase;
begin
   if DM1.cdsQry5.recordcount=0 then exit;

   wano:=copy(Dm1.cdsQry5.fieldbyname('PERIODO').AsString,1,4);
   wmes:=copy(Dm1.cdsQry5.fieldbyname('PERIODO').AsString,5,2);
   wbcoid:=Dm1.cdsQry5.fieldbyname('BANCOID').AsString;
   wfpagoid:=Dm1.cdsQry5.fieldbyname('FORPAGOID').AsString;
   wuproid:=Dm1.cdsQry5.fieldbyname('UPROID').AsString;

   // Plantilla a Usar
   DM1.cdsModelo.Close;
   DM1.cdsModelo.DataRequest('SELECT * FROM COB321');
   DM1.cdsModelo.indexfieldnames:='ITEM';
   DM1.cdsModelo.Open;

   //
   Dm1.cdsformapago.setkey;
   Dm1.cdsformapago.fieldbyname('FORPAGOID').AsString:=wfpagoid;
   Dm1.cdsformapago.gotokey;

   Screen.Cursor:=crHourGlass;

   //
   if DM1.cdsModelo.recordcount=0 then exit;

   // Obtiene estado del crédito
   xestid:=' ';
   xestdes:=' ';
   xWhere:='FLGNABO='+quotedstr('*');
   DM1.cdsqry.indexfieldnames:='';
   DM1.DisplayDescrip('prvSQL','CRE113','ESTID,ESTDES',xWhere,'ESTID');
   if DM1.cdsqry.recordcount>0 then
   begin
      xestid:=DM1.cdsqry.fieldbyname('ESTID').AsString;
      xestdes:=DM1.cdsqry.fieldbyname('ESTDES').AsString;
   end;

   xestidc:=' ';
   xWhere:='FLGNABO='+quotedstr('S');
   DM1.cdsqry.indexfieldnames:='';
   DM1.DisplayDescrip('prvSQL','CRE113','ESTID',xWhere,'ESTID');
   if DM1.cdsqry.recordcount>0 then
   begin
      xestidc:=DM1.cdsqry.fieldbyname('ESTID').AsString;
   end;

   // Verifica la existencia del archivo
   xflgexi:=false;

   if DM1.cdsformapago.fieldbyname('FORPAGFAPO').AsString='SDB' then // TeleAhorro
      xWhere:='PERIODO='+quotedstr(wAno+wMes)+
              ' AND BANCOID='+quotedstr('04')+
              ' AND FORPAGOID='+quotedstr(wFpagoId)
   else
      xWhere:='PERIODO='+quotedstr(wAno+wMes)+
              ' AND UPROID='+quotedstr(wUproId)+
              ' AND FORPAGOID='+quotedstr(wFpagoId);

   Dm1.cdsqry.indexfieldnames:='';
   DM1.DisplayDescrip('prvSQL','COB322','ITEM',xWhere,'ITEM');
   if DM1.cdsqry.recordcount>0 then
   begin
      Screen.Cursor:=crDefault;
      xflgexi:=true;
      if MessageDlg('El archivo ya fué importado'+chr(13)+
                    '¿Esta Ud. seguro de continuar con la transferencia?', mtconfirmation,[mbYes,MbNo],0)=mrNo then
         Exit;
   end;

   Screen.Cursor:=crHourGlass;

   xSQL:='';
   if DM1.cdsModelo.recordcount>0 then
   begin
      //
      xSQL:='SELECT ';
      xcoma:='';
      xgrupos:='';

      DM1.cdsModelo.first;
      while not DM1.cdsModelo.eof do
      begin
         if DM1.cdsModelo.fieldbyname('FLGGRP').AsString='N' then
         begin
            if DM1.cdsModelo.fieldbyname('OPERAC').AsString='SUMATORIA' then
               xSQL:=xSQL+xcoma+'SUM('+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                                       DM1.cdsModelo.fieldbyname('CAMPO').AsString+
                                       ') '+
                                       DM1.cdsModelo.fieldbyname('CAMPO').AsString
            else
               xSQL:=xSQL+xcoma+'COUNT(DISTINCT '+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                                                  DM1.cdsModelo.fieldbyname('CAMPO').AsString+
                                                  ') '+
                                                  DM1.cdsModelo.fieldbyname('CAMPO').AsString;
         end
         else
         begin
            //
            if DM1.cdsModelo.fieldbyname('TIPODET').AsString='S' then
               xSQL:=xSQL+xcoma+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                                DM1.cdsModelo.fieldbyname('CAMPO').AsString
            else
               xSQL:=xSQL+xcoma+quotedstr(DM1.cdsModelo.fieldbyname('VALOR').AsString)+' '+
                                DM1.cdsModelo.fieldbyname('NOMBRE').AsString;

            if DM1.cdsModelo.fieldbyname('FLGGRP').AsString='S' then
            begin
               if DM1.cdsModelo.fieldbyname('TIPODET').AsString='S' then
               begin
                  if xgrupos='' then
                     xgrupos:='GROUP BY '+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                                          DM1.cdsModelo.fieldbyname('CAMPO').AsString
                  else
                     xgrupos:=xgrupos+', '+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                                           DM1.cdsModelo.fieldbyname('CAMPO').AsString;
               end;
            end;
         end;

         xcoma:=', ';

         DM1.cdsModelo.next;
      end;
      //

      DM1.cdsModelo.filter:='FLDASC='+quotedstr('S');
      DM1.cdsModelo.filtered:=true;
      DM1.cdsModelo.indexfieldnames:='ORDASC';

      xindices:='';
      DM1.cdsModelo.first;
      while not DM1.cdsModelo.eof do
      begin
         if xindices='' then
            xindices:=DM1.cdsModelo.fieldbyname('CAMPO').AsString
         else
            xindices:=xindices+';'+DM1.cdsModelo.fieldbyname('CAMPO').AsString;

         DM1.cdsModelo.next;
      end;

      DM1.cdsModelo.filter:='';
      DM1.cdsModelo.filtered:=false;
      DM1.cdsModelo.indexfieldnames:='ITEM';

      if DM1.cdsformapago.fieldbyname('FORPAGFAPO').AsString='SDB' then // TeleAhorro
      begin
         xSQL:=xSQL+' FROM CRE302, APO201, APO102'
                   +' WHERE'
                   +' APO201.ASOID=CRE302.ASOID'
                   +' AND APO102.UPROID=APO201.UPROID'
                   +' AND CRE302.CREANO='+quotedstr(wAno)
                   +' AND CRE302.CREMES='+quotedstr(wMes)
                   +' AND CRE302.BANCOID='+quotedstr('04')
                   +' AND CRE302.FORPAGOID='+quotedstr(wFpagoId)
                   +' AND CRE302.CREESTID='+quotedstr(xestidc)
                   +' AND (CRE302.CREBLOQ<>'+quotedstr('S')+' OR CRE302.CREBLOQ IS NULL)';
      end
      else
      begin
         xSQL:=xSQL+' FROM CRE302, APO201, APO102'
                   +' WHERE'
                   +' APO201.ASOID=CRE302.ASOID'
                   +' AND APO102.UPROID=APO201.UPROID'
                   +' AND CRE302.CREANO='+quotedstr(wAno)
                   +' AND CRE302.CREMES='+quotedstr(wMes)
                   +' AND CRE302.UPROID='+quotedstr(wUproId)
                   +' AND CRE302.FORPAGOID='+quotedstr(wFpagoId)
                   +' AND CRE302.CREESTID='+quotedstr(xestidc)
                   +' AND (CRE302.CREBLOQ<>'+quotedstr('S')+' OR CRE302.CREBLOQ IS NULL)';
      end;

      xSQL:=xSQL+' '+xgrupos;

      DM1.cdsejecuta.Close;
      DM1.cdsejecuta.indexfieldnames:=xindices;
      DM1.cdsejecuta.datarequest(xSQL);
      DM1.cdsejecuta.open;

      if DM1.cdsejecuta.recordcount>0 then
      begin
         //
         odLeer.DefaultExt:='*.TXT';
         odLeer.Filter:='Archivos TXT|*.TXT|Archivos LIS|*.LIS|Archivos DBF|*.DBF';
         if DM1.cdsformapago.fieldbyname('FORPAGFAPO').AsString='SDB' then
            odLeer.FileName:='DCT'+wano+wmes+'B'+'04'+wFpagoId
         else
            odLeer.FileName:='DCT'+wano+wmes+'U'+wUProid+wFpagoId;

         if not odLeer.Execute then Exit;

         xNomArch:=odLeer.FileName;

         // Archivo texto
         xRegTxt := TStringList.Create;
         try
            DM1.cdsejecuta.First;
            xRegTxt.BeginUpdate;
            while not DM1.cdsejecuta.EOF do
            begin
               xRegistro:='';

               DM1.cdsModelo.first;
               while not DM1.cdsModelo.EOF do
               begin
                  if (DM1.cdsModelo.FieldByName('TIPODET').AsString='S') then
                     xcampo:=DM1.cdsModelo.fieldbyname('CAMPO').AsString
                  else
                     xcampo:=DM1.cdsModelo.Fieldbyname('NOMBRE').AsString+
                             DM1.cdsModelo.Fieldbyname('ITEM').AsString;

                  xstr:=DM1.cdsejecuta.Fieldbyname(xcampo).Asstring;

                  if (DM1.cdsModelo.FieldByName('TIPO').AsString='NUMBER') or
                     (DM1.cdsModelo.FieldByName('TIPO').AsString='INTEGER') then
                  begin
                     if DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' then
                        xstr:=DM1.strzero(xstr,DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger);

                     if DM1.cdsModelo.FieldByName('SEPDEC').AsString<>'S' then
                     begin
                        xi:=pos('.',xstr);
                        if xi>0 then
                        begin
                           if xi=1 then
                              xstr:=copy(xstr,xi+1,length(xstr)-xi)
                           else
                              xstr:=copy(xstr,1,xi-1)+copy(xstr,xi+1,length(xstr)-xi);
                        end;
                     end;
                  end
                  else
                  begin
                     if (DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger>length(xstr)) then
                     begin
                        while (DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger>length(xstr)) do
                        begin
                           xstr:=xstr+' ';
                        end;
                     end
                     else
                     begin
                        xstr:=copy(xstr,1,DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger);
                     end;
                  end;

                  xRegistro:=xRegistro+xstr;

                  DM1.cdsModelo.next;
               end;

               xRegTxt.Add(xRegistro+chr(13));

               DM1.cdsejecuta.Next;
            end;
            xRegTxt.EndUpdate;

            xRegTxt.SaveToFile(xNomArch);
         finally
            xRegTxt.Free;
         end;

         //
         if DM1.cdsformapago.fieldbyname('FORPAGFAPO').AsString='SDB' then
            xNomArch:='DCT'+wano+wmes+'B'+'04'+wFpagoId
         else
            xNomArch:='DCT'+wano+wmes+'U'+wUProid+wFpagoId;

         // Archivo DBF
         xRegDB := Tdatabase.Create(self);
         xRegDBF := Ttable.Create(self);
         try
            xRegDB.connected:=false;
            xRegDB.AliasName:='DESCUENTOS';
            xRegDB.Databasename:='xDESCUENTOS';
            xRegDB.loginprompt:=false;
            xRegDB.connected:=true;

            xstr:=copy(odLeer.FileName,1,pos('\',odLeer.FileName)-1);            
            xRegDB.Directory:=xstr;

            xRegDBF.name := 'xTablaDBF';
            xRegDBF.databasename := 'xDESCUENTOS';
            xRegDBF.tablename := xNomArch;
            xRegDBF.TableType := ttFoxPro;
            xRegDBF.Active := False;

            if xRegDBF.Exists then
            begin
               xxx:='000';
//               xRegDBF.DeleteTable;
            end;

            with xRegDBF do
            begin
               with FieldDefs do
               begin
                  Clear;
                  for xi:=0 to DM1.cdsEjecuta.FieldCount-1 do
                  begin
                     with AddFieldDef do
                     begin
                        Name := DM1.cdsEjecuta.Fields[xi].FieldName;
                        DataType := DM1.cdsEjecuta.Fields[xi].datatype;
                        Size := DM1.cdsEjecuta.Fields[xi].size;
                     end;
                     DM1.cdsEjecuta.next;
                  end;
               end;
               CreateTable;
            end;

            xRegDBF.Open;

            DM1.cdsejecuta.First;
            while not DM1.cdsejecuta.EOF do
            begin
               xRegistro:='';
               xRegDBF.Insert;
               for xi:=0 to DM1.cdsEjecuta.FieldCount-1 do
               begin
                  xname:=DM1.cdsEjecuta.Fields[xi].Fieldname;
                  xRegDBF.fieldbyname(xname).Value:=DM1.cdsEjecuta.fieldbyname(xname).Value;
               end;
               DM1.cdsejecuta.Next;
            end;

            try
               xRegDBF.ApplyUpdates
            except
            end;
         finally
            xRegDBF.Free;
            xRegDB.Free;
         end;
      end
      else
      begin
         ShowMessage('No existe información a transferir !');
         Screen.Cursor:=crDefault;
         exit;
      end;

      // Actualiza estado de credito
      if DM1.cdsformapago.fieldbyname('FORPAGFAPO').AsString='SDB' then // TeleAhorro
      begin
         xSQL:='UPDATE CRE302'
              +' SET CREESTID='+quotedstr(xestid)+', CREESTADO='+quotedstr(xestdes)
              +' WHERE'
              +' CREANO='+quotedstr(wAno)
              +' AND CREMES='+quotedstr(wMes)
              +' AND BANCOID='+quotedstr('04')
              +' AND FORPAGOID='+quotedstr(wFpagoId)
              +' AND CREESTID='+quotedstr(xestidc)
              +' AND (CREBLOQ<>'+quotedstr('S')+' OR CREBLOQ IS NULL)';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         //
         if xflgexi=false then
         begin
            xSQL:='INSERT INTO COB322(PERIODO, FORPAGOID, BANCOID, USUARIO, FREG, HREG)'
                 +' VALUES('+quotedstr(wAno+wMes)+','
                            +quotedstr(wFpagoId)+','
                            +quotedstr('04')+','
                            +quotedstr(Dm1.wUsuario)+', SYSDATE, SYSDATE)';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         end
         else
         begin
            xSQL:='UPDATE COB322'
                 +' SET HREG=SYSDATE,'
                 +' FREG=SYSDATE,'
                 +' USUARIO='+quotedstr(Dm1.wUsuario)
                 +' WHERE PERIODO='+quotedstr(wAno+wMes)
                 +' AND BANCOID='+quotedstr('04')
                 +' AND FORPAGOID='+quotedstr(wFpagoId);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         end;
         FPrincipal.Mtx.RefreshFilter;
      end
      else
      begin
         xSQL:='UPDATE CRE302'
              +' SET CREESTID='+quotedstr(xestid)+', CREESTADO='+quotedstr(xestdes)
              +' WHERE'
              +' CREANO='+quotedstr(wAno)
              +' AND CREMES='+quotedstr(wMes)
              +' AND UPROID='+quotedstr(wUproId)
              +' AND FORPAGOID='+quotedstr(wFpagoId)
              +' AND CREESTID='+quotedstr(xestidc)
              +' AND (CREBLOQ<>'+quotedstr('S')+' OR CREBLOQ IS NULL)';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         //
         if xflgexi=false then
         begin
            xSQL:='INSERT INTO COB322(PERIODO, FORPAGOID, UPROID, USUARIO, FREG, HREG)'
                 +' VALUES('+quotedstr(wAno+wMes)+','
                            +quotedstr(wFpagoId)+','
                            +quotedstr(wUproId)+','
                            +quotedstr(Dm1.wUsuario)+', SYSDATE, SYSDATE)';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         end
         else
         begin
            xSQL:='UPDATE COB322'
                 +' SET HREG=SYSDATE,'
                 +' FREG=SYSDATE,'
                 +' USUARIO='+quotedstr(Dm1.wUsuario)
                 +' WHERE PERIODO='+quotedstr(wAno+wMes)
                 +' AND UPROID='+quotedstr(wUproId)
                 +' AND FORPAGOID='+quotedstr(wFpagoId);

            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         end;
         FPrincipal.Mtx.RefreshFilter;
      end;

      ShowMessage('Transferencia Ok');
   end
   else
      ShowMessage('No existe plantilla a usar !');

   Screen.Cursor:=crDefault;
end;

procedure TFToolsCarga.bbtnPrevioClick(Sender: TObject);
var
  xSQL, xRegistro, xcampo, xWhere : string;
  xindices, xgrupos, xstr, xestidc : string;
  xlon, xi : word;
begin
  if DM1.cdsQry5.recordcount = 0 then
    exit;

  //
  xestidc:=' ';
  xWhere:='FLGNABO='+quotedstr('*');
  DM1.cdsqry.indexfieldnames:='';
  DM1.DisplayDescrip('prvSQL','CRE113','ESTID',xWhere,'ESTID');
  if DM1.cdsqry.recordcount>0 then
  begin
    xestidc:=DM1.cdsqry.fieldbyname('ESTID').AsString;
  end;

  wano:=copy(Dm1.cdsQry5.fieldbyname('PERIODO').AsString,1,4);
  wmes:=copy(Dm1.cdsQry5.fieldbyname('PERIODO').AsString,5,2);
  wbcoid:=Dm1.cdsQry5.fieldbyname('BANCOID').AsString;
  wfpagoid:=Dm1.cdsQry5.fieldbyname('FPAGOID').AsString;
  wuproid:=Dm1.cdsQry5.fieldbyname('UPROID').AsString;

  // Plantilla a Usar
  DM1.cdsModelo.Close;
  DM1.cdsModelo.DataRequest('SELECT * FROM COB321');
  DM1.cdsModelo.indexfieldnames:='ITEM';
  DM1.cdsModelo.Open;

  //
  Dm1.cdsformapago.setkey;
  Dm1.cdsformapago.fieldbyname('FORPAGOID').AsString:=wfpagoid;
  Dm1.cdsformapago.gotokey;

  Screen.Cursor:=crHourGlass;
  // Determinar un espacio para el contenido de la información a transferir
  xlon:=0;
  DM1.cdsModelo.First;
  while not DM1.cdsModelo.Eof do
  begin
     if (Dm1.cdsModelo.fieldbyname('SEPDEC').AsString='S') then
        xlon:=xlon+DM1.cdsModelo.fieldbyname('LONGITUD').AsInteger+1
     else
        xlon:=xlon+DM1.cdsModelo.fieldbyname('LONGITUD').AsInteger;

     DM1.cdsModelo.next;
  end;

  // Prepara información
  xSQL:='';
  if (DM1.cdsModelo.recordcount>0) and
     (xlon>0) then
  begin
     xstr:='';
     for xi:=1 to xlon do
     begin
        xstr:=xstr+' ';
     end;

     xSQL:='SELECT '+quotedstr(xstr)+' TEXTO';
     xgrupos:='';

     DM1.cdsModelo.first;
     while not DM1.cdsModelo.eof do
     begin
        if DM1.cdsModelo.fieldbyname('FLGGRP').AsString='N' then
        begin
           if DM1.cdsModelo.fieldbyname('OPERAC').AsString='SUMATORIA' then
              xSQL:=xSQL+', SUM('+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                                  DM1.cdsModelo.fieldbyname('CAMPO').AsString+
                                  ') '+
                                  DM1.cdsModelo.fieldbyname('CAMPO').AsString
           else
              xSQL:=xSQL+', COUNT(DISTINCT '+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                                             DM1.cdsModelo.fieldbyname('CAMPO').AsString+
                                             ') '+
                                             DM1.cdsModelo.fieldbyname('CAMPO').AsString;
        end
        else
        begin
           if DM1.cdsModelo.fieldbyname('TIPODET').AsString='S' then
              xSQL:=xSQL+', '+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                              DM1.cdsModelo.fieldbyname('CAMPO').AsString
           else
              xSQL:=xSQL+', '+quotedstr(DM1.cdsModelo.fieldbyname('VALOR').AsString)+' '+
                              DM1.cdsModelo.fieldbyname('NOMBRE').AsString;

           if DM1.cdsModelo.fieldbyname('FLGGRP').AsString='S' then
           begin
              if DM1.cdsModelo.fieldbyname('TIPODET').AsString='S' then
              begin
                 if xgrupos='' then
                    xgrupos:='GROUP BY '+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                                         DM1.cdsModelo.fieldbyname('CAMPO').AsString
                 else
                    xgrupos:=xgrupos+', '+DM1.cdsModelo.fieldbyname('ARCHIVO').AsString+'.'+
                                          DM1.cdsModelo.fieldbyname('CAMPO').AsString;
              end;
           end;
        end;

        DM1.cdsModelo.next;
     end;

     DM1.cdsModelo.filter:='FLDASC='+quotedstr('S');
     DM1.cdsModelo.filtered:=true;
     DM1.cdsModelo.indexfieldnames:='ORDASC';

     DM1.cdsModelo.first;
     while not DM1.cdsModelo.eof do
     begin
        if xindices='' then
           xindices:=DM1.cdsModelo.fieldbyname('CAMPO').AsString
        else
           xindices:=xindices+';'+DM1.cdsModelo.fieldbyname('CAMPO').AsString;

        DM1.cdsModelo.next;
     end;

     DM1.cdsModelo.filter:='';
     DM1.cdsModelo.filtered:=false;
     DM1.cdsModelo.indexfieldnames:='ITEM';

     if DM1.cdsformapago.fieldbyname('FORPAGFAPO').AsString='SDB' then // TeleAhorro
     begin
        xSQL:=xSQL+' FROM CRE302, APO201, APO102, APO117'
                  +' WHERE'
                  +' APO201.ASOID=CRE302.ASOID'
                  +' AND APO102.UPROID=CRE302.UPROID'
                  +' AND APO117.APOANO=CRE302.CREANO'
                  +' AND APO117.APOMES=CRE302.CREMES'
                  +' AND CRE302.CREANO='+quotedstr(wAno)
                  +' AND CRE302.CREMES='+quotedstr(wMes)
                  +' AND CRE302.BANCOID='+quotedstr('04')
                  +' AND CRE302.FORPAGOID='+quotedstr(wFpagoId)
                  +' AND CRE302.CREESTID='+quotedstr(xestidc)
                  +' AND (CRE302.CREBLOQ<>'+quotedstr('S')+' OR CRE302.CREBLOQ IS NULL)';
     end
     else
     begin
        xSQL:=xSQL+' FROM CRE302, APO201, APO102, APO117'
                  +' WHERE'
                  +' APO201.ASOID=CRE302.ASOID'
                  +' AND APO102.UPROID=CRE302.UPROID'
                  +' AND APO117.APOANO=CRE302.CREANO'
                  +' AND APO117.APOMES=CRE302.CREMES'
                  +' AND CRE302.CREANO='+quotedstr(wAno)
                  +' AND CRE302.CREMES='+quotedstr(wMes)
                  +' AND CRE302.UPROID='+quotedstr(wUproId)
                  +' AND CRE302.FORPAGOID='+quotedstr(wFpagoId)
                  +' AND CRE302.CREESTID='+quotedstr(xestidc)
                  +' AND (CRE302.CREBLOQ<>'+quotedstr('S')+' OR CRE302.CREBLOQ IS NULL)';
     end;
     xSQL:=xSQL+' '+xgrupos;
     DM1.cdsqry.Close;
     DM1.cdsqry.indexfieldnames:=xindices;
     DM1.cdsqry.datarequest(xSQL);
     DM1.cdsqry.open;

     if DM1.cdsqry.recordcount>0 then
     begin
        while not DM1.cdsQry.EOF do
        begin
           xRegistro:='';
           DM1.cdsModelo.first;
           while not DM1.cdsModelo.EOF do
           begin
              if (DM1.cdsModelo.FieldByName('TIPODET').AsString='S') then
                 xcampo:=DM1.cdsModelo.fieldbyname('CAMPO').AsString
              else
                 xcampo:=DM1.cdsModelo.Fieldbyname('NOMBRE').AsString+
                         DM1.cdsModelo.Fieldbyname('ITEM').AsString;

              xstr:=DM1.cdsqry.Fieldbyname(xcampo).Asstring;

              if (DM1.cdsModelo.FieldByName('TIPO').AsString='NUMBER') or
                 (DM1.cdsModelo.FieldByName('TIPO').AsString='INTEGER') then
              begin
                 if DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' then
                    xstr:=DM1.strzero(xstr,DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger);

                 if DM1.cdsModelo.FieldByName('SEPDEC').AsString<>'S' then
                 begin
                    xi:=pos('.',xstr);
                    if xi>0 then
                    begin
                       if xi=1 then
                          xstr:=copy(xstr,xi+1,length(xstr)-xi)
                       else
                          xstr:=copy(xstr,1,xi-1)+copy(xstr,xi+1,length(xstr)-xi);
                    end;
                 end;
              end
              else
              begin
                 if (DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger>length(xstr)) then
                 begin
                    while (DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger>length(xstr)) do
                    begin
                       xstr:=xstr+' ';
                    end;
                 end
                 else
                 begin
                    xstr:=copy(xstr,1,DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger);
                 end;
              end;

              xRegistro:=xRegistro+xstr;

              DM1.cdsModelo.next;
           end;

           DM1.cdsQry.edit;
           DM1.cdsQry.fieldbyname('TEXTO').AsString:=xRegistro;
           DM1.cdsQry.post;

           DM1.cdsQry.Next;
        end;

        Try
           FVisualData:=TFVisualData.Create(Self);
           FVisualData.ShowModal;
        finally
           FVisualData.Free;
        end;
     end
     else
        ShowMessage('No Existe Información !');
  end
  else
     ShowMessage('No Existe Plantilla a Usar !');

  Screen.Cursor:=crDefault;
end;

procedure TFToolsCarga.pprRepDetallePreviewFormCreate(Sender: TObject);
begin
   pprRepDetalle.PreviewForm.WindowState:=WsMaximized;
   TppViewer(pprRepDetalle.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFToolsCarga.pprRepResTelPreviewFormCreate(Sender: TObject);
begin
   pprRepResTel.PreviewForm.WindowState:=WsMaximized;
   TppViewer(pprRepResTel.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFToolsCarga.pprRepResNTelPreviewFormCreate(Sender: TObject);
begin
   pprRepResNTel.PreviewForm.WindowState:=WsMaximized;
   TppViewer(pprRepResNTel.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFToolsCarga.bbtnDocumentoClick(Sender: TObject);
//////// Para sustituir tipo CTRL + R del DELPHI
  Function Sustituir(pCadena,pEsto,pPor : String) : STring;
  var
    xPos : Integer;
  begin
    xPos := Pos(pEsto,pCadena);
    Result := '';
    while (xPos <> 0 ) do
    begin
      Result := Result + copy(pCadena,1,xPos-1)+pPor;
      Delete(pCadena,1,xPos+Length(pEsto)-1);
      xPos := Pos(pEsto,pCadena);
    end;
    Result := Result + pCadena;
  end;

  const
    cMeses : Array[1..12] of String = ('Enero','Febrero','Marzo','Abril','Mayo','Junio',
                                  'Julio','Agosto','Setiembre','Octubre','Noviembre','Diciembre');
var
  xMeses, xCampo1, xCampo2, xCampo3, xCampo4, xCampo5, xCampo6, xCampo7, xCampo8,
  xCiudad, xLinea, xTmonAbr, xTmondes, xCampo9, xCampo10, xCampo11, xCampo12, xCampo13, xCampo14, xCampo15, xSql : String;
  xAno, xMes, xDia : Word;
  xTotalCount, xFalta, xI : Integer;
  xTotal : double;
  xHola, xBanconom, xCtaDerra, xUpronom, xCia, xAgen, xDpto, xNuevoCampo1, xNuevoCampo, xAgencias, xRutaWord : String;
  xMtox : Double;
begin
 Try
  FPrincipal.Mtx.FMant.cds2.DisableControls;
//  DecodeDate(Date,xANo,xMes,xDia);
  xMes := FPrincipal.Mtx.FMant.cds2.fieldbyname('CREMES').AsInteger;
  xAno := FPrincipal.Mtx.FMant.cds2.fieldbyname('CREANO').AsInteger;
  //** MES
  dm1.cdsReporte.DisableControls;
  Case xMes of
   1 : xMeses := cMeses[xMes];
   2 : xMeses := cMeses[xMes];
   3 : xMeses := cMeses[xMes];
   4 : xMeses := cMeses[xMes];
   5 : xMeses := cMeses[xMes];
   6 : xMeses := cMeses[xMes];
   7 : xMeses := cMeses[xMes];
   8 : xMeses := cMeses[xMes];
   9 : xMeses := cMeses[xMes];
   10 : xMeses := cMeses[xMes];
   11 : xMeses := cMeses[xMes];
   12 : xMeses := cMeses[xMes];
  end;

  If FPrincipal.Mtx.FMant.dbgFiltro.SelectedList.Count > 0 then
   Begin
    //** DATOS DEL EMCABEZADO
    Screen.cursor := crHourglass;
    xSql := 'SELECT CIADES CAMPO01, '+quotedstr('Sistema de Seguridad y Bienestar')+' '+
            'CAMPO02, '+quotedstr('SOCIAL del Magisterio')+' CAMPO03, CIALUGAR||'+
            quotedstr(', '+FloatToStr(xDiaSys)+' de '+xMeses+' del '+FloatToStr(xAnoSys)) +' '+
            'CAMPO04 FROM TGE101 WHERE CNTCONSOL='+quotedstr('S');
    Dm1.cdsQry.Close;
    Dm1.cdsQry.DataRequest(xSQL);
    Dm1.cdsQry.Open;

    xCampo1 := Dm1.cdsQry.FieldByName('CAMPO01').AsString;
    xCampo2 := Dm1.cdsQry.FieldByName('CAMPO02').AsString;
    xCampo3 := Dm1.cdsQry.FieldByName('CAMPO03').AsString;
    xCampo4 := Dm1.cdsQry.FieldByName('CAMPO04').AsString;

    for xI:= 0 to FPrincipal.Mtx.FMant.dbgFiltro.SelectedList.Count-1 do
    begin
        xCampo5 := Copy(FPrincipal.Mtx.FMant.cds2.fieldbyname('NOFID').AsString,1,4)+'-'+
                   FPrincipal.Mtx.FMant.cds2.fieldbyname('CREANO').AsString+'-'+
                   Copy(FPrincipal.Mtx.FMant.cds2.fieldbyname('NOFID').AsString,5,5);
        xGlosa := 'OFICIO N° '+ xCampo5+' -DM-COB';

        xSql := 'TMONID='+quotedstr(FPrincipal.Mtx.FMant.cds2.FieldByName('TMONID').AsString);
        xTMonAbr := Dm1.DisplayDescrip('prvSQL','TGE103','TMONDES,TMONABR',xSql,'TMONABR');
        xTmondes := Dm1.cdsQry.FieldByName('TMONDES').AsString;

        //** Para saber si en planilla o teleahorro
        If FPrincipal.Mtx.FMant.cds2.fieldbyname('FPAGOID').AsString = '01' Then
         begin
          //** PLANILLA
          //** 03/01/2003 PJSV
          DM1.cdsUPro.Open;
          DM1.cdsUPro.setkey;
          DM1.cdsUPro.fieldbyname('UPROID').AsString:= FPrincipal.Mtx.FMant.cds2.fieldbyname('UPROID').AsString;
          xUpronom :=DM1.cdsUPro.fieldbyname('UPRONOM').AsString;
          xCampo6 := 'DIRECTOR DE LA '+ xUpronom;//**dbedescri.Text;
          //**
          xCAmpo7 := xMeses;
          xCAmpo8 := FloatToStr(xAno);
          xCampo9 := xTmonAbr;
          xCampo10 := FloatToStrF(FPrincipal.Mtx.FMant.cds2.fieldbyname('MONTOTOT').AsFloat,ffFixed,15,2);
          xSql := 'FLGCAR='+quotedstr('SC');
          xCampo11 :=  Dm1.DisplayDescrip('prvSQL','CRE107','REPCAR,REPNOM',xSql,'REPNOM');
          xCampo12 := dm1.cdsQry.FieldByName('REPCAR').AsString;

          //** para la carta
          rptOficio.Template.FileName := wRutaRpt+'\Oficios.rtm';
          rptOficio.Template.LoadFromFile ;

          wwDBRichEdit1.Width := 800;
          wwDBRichEdit2.Width := 800;
          wwDBRichEdit1.Lines.LoadFromFile(wRutaRpt+'\Plantilla0_Oficio.RTF');
          wwDBRichEdit2.Lines.Clear;
          wwDBRichEdit1.Font.Name := 'Courier New';
          wwDBRichEdit2.Font.Name := 'Courier New';
          wwDBRichEdit1.Font.Size := 9;
          wwDBRichEdit2.Font.Size := 9;
          //**

          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit1.Lines.Text,'CAMPO01',xCampo1);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO02',xCampo2);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO03',xCampo3);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO04',xCampo4);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO05',xCampo5);

          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO06',xCampo6);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO07',xCampo7);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO08',xCampo8);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO09',xCampo9);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO10',xCampo10);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO11',xCampo11);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO12',xCampo12);

          wwDBRichEdit2.Lines.SaveToFile(wRutaRpt+'\Oficio0_'+Trim(xCampo5)+'.RTF');
//          rchtPagina.LoadFromFile(wRutaRpt+'\Oficio0_'+Trim(xCampo5)+'.RTF');
          xRutaWord := ExtractFilePath('C:\Archivos de programa\Microsoft Office\Office\Winword.exe') ;
          xHola := xRutaWord+'Winword.exe ' +wRutaRpt+'\Oficio0_'+Trim(xCampo5)+'.RTF';
          WinExecAndWait32(xHola,1);
          Screen.cursor := crDefault;
          //rptOficio.Print;
          //rptOficio.stop;

          //** Para la Plantilla0_1_oficio, sustento
          Screen.cursor := crHourglass;
          xSql :='SELECT C.USENOM, COB319.USEID, COB319.ASONCTA, SUM(CREMTOCUO) CREMTOCUO, D.ASOAPENOM, '+
                 'COB319.ASOCODMOD, COB319.ASOCODAUX, COB319.ASOCODPAGO, SUM(CREMTOCUO + CREMTOAPO) TOTAL, COB319.UPROID, '+
                 'SUM(CREMTOAPO) CREMTOAPO, '+
                 ' CASE WHEN COBMES = ''01'' THEN ''DESCUENTOS DEL MES DE ENERO DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''02'' THEN ''DESCUENTOS DEL MES DE FEBRERO DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''03'' THEN ''DESCUENTOS DEL MES DE MARZO DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''04'' THEN ''DESCUENTOS DEL MES DE ABRIL DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''05'' THEN ''DESCUENTOS DEL MES DE MAYO DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''06'' THEN ''DESCUENTOS DEL MES DE JUNIO DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''07'' THEN ''DESCUENTOS DEL MES DE JULIO DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''08'' THEN ''DESCUENTOS DEL MES DE AGOSTO DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''09'' THEN ''DESCUENTOS DEL MES DE SETIEMBRE DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''10'' THEN ''DESCUENTOS DEL MES DE OCTUBRE DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''11'' THEN ''DESCUENTOS DEL MES DE NOVIEMBRE DE''||''  ''||COBANO ELSE'+
                 ' CASE WHEN COBMES = ''12'' THEN ''DESCUENTOS DEL MES DE DICIEMBRE DE''||''  ''||COBANO'+
                 ' END END END END END END END END END END END END TITULO, APO102.UPRONOM '+
                 ' FROM COB319, APO102, APO101 C , APO201 D '+
                 ' WHERE NROFICIO ='+quotedstr(FPrincipal.Mtx.FMant.cds2.fieldbyname('NOFID').AsString)+
                 ' AND COB319.UPROID=APO102.UPROID '+
                 ' AND COB319.UPROID=C.UPROID(+) '+
                 ' AND COB319.UPAGOID=C.UPAGOID(+) '+
                 ' AND COB319.USEID=C.USEID(+) '+
                 ' AND COB319.ASOID=D.ASOID '+
                 ' GROUP BY C.USENOM, COB319.USEID, COB319.ASONCTA, D.ASOAPENOM, COB319.ASOCODMOD, COB319.ASOCODAUX, '+
                 ' COB319.ASOCODPAGO, COB319.UPROID, COB319.COBMES, COB319.COBANO, APO102.UPRONOM';
          Dm1.cdsReporte1.close;
          Dm1.cdsReporte1.DataRequest(xSql);
          Dm1.cdsReporte1.open;
          bdeppOficio.DataSource := Dm1.dsReporte1;
          rptOficio.Template.FileName := wRutaRpt+'\Oficios_SUS.rtm';
          rptOficio.Template.LoadFromFile ;
          Screen.cursor := crDefault;
          rptOficio.Print;
          rptOficio.stop;
        end
        else  /// TELEAHORRO
        begin
          xSql := 'SELECT BANCONOM FROM TGE105 WHERE BANCOID='+
                  quotedstr(FPrincipal.Mtx.FMant.cds2.fieldbyname('BANCOID').AsString);
          Dm1.cdsQry2.Close;
          Dm1.cdsQry2.DataRequest(xSql);
          Dm1.cdsQry2.Open;
          xBanconom := Dm1.cdsQry2.FieldByName('BANCONOM').AsString;

          xSql := 'SELECT CCBCOID FROM TGE106 WHERE BANCOID='+
                  quotedstr(FPrincipal.Mtx.FMant.cds2.fieldbyname('BANCOID').AsString)+
                  'AND CIAID=''02''';
          Dm1.cdsQry2.Close;
          Dm1.cdsQry2.DataRequest(xSql);
          Dm1.cdsQry2.Open;
          xCtaDerra := Dm1.cdsQry2.FieldByName('CCBCOID').AsString;

          xSql:='SELECT TGE105.BANCOID'+
                ', CASE WHEN FLGCAR=''GOL'' THEN REPNOM ELSE NULL END RGOL '+
                ', CASE WHEN FLGCAR=''GOL'' THEN REPCAR ELSE NULL END CGOL '+
                ', TGE105.BANCONOM '+
                'FROM CRE107 G, TGE105 '+
                'WHERE G.BANCOID='+
               quotedstr(FPrincipal.Mtx.FMant.cds2.fieldbyname('BANCOID').AsString)+
               ' AND G.FLGCAR=''GOL'' AND ' +
               'G.BANCOID=TGE105.BANCOID';
          Dm1.cdsQry2.Close;
          Dm1.cdsQry2.DataRequest(xSql);
          Dm1.cdsQry2.Open;

          //** Para el sustento
          //** 06/01/2003 - PJSV, esto es para el reporte del sustento del teleahorro
          xSql := 'SELECT XX.*, APO213.PROVBCODES UPRONOM FROM( '+
//                  'SELECT C.PROVBCOID, SUM(A.CREMTOCUO) CREMTO, COUNT(C.PROVBCOID) MOVIMIENTO '+
                  'SELECT C.PROVBCOID, SUM(A.CREMTOCUO) CREMTO, COUNT(C.PROVBCOID) MOVIMIENTO '+
//                  ',C.UPRONOM FROM COB319 A, APO102 C '+
                  ' FROM COB319 A, APO102 C '+
                  'WHERE A.NROFICIO='+quotedstr(FPrincipal.Mtx.FMant.cds2.fieldbyname('NOFID').AsString)+
                  'AND A.UPROID=C.UPROID(+)'+
                  'GROUP BY C.PROVBCOID '+
                  ')XX, APO213 WHERE XX.PROVBCOID=APO213.PROVBCOID(+)';
                    //** 28/01/2003 - PJSV, no se valida
                    //**' having count(C.PROVBCOID) > 0 ';
                    //**
          Dm1.cdsReporte1.close;
          Dm1.cdsReporte1.DataRequest(xSql);
          Dm1.cdsReporte1.open;

          xCampo6  := Dm1.cdsQry2.FieldByName('RGOL').AsString;
          //           xCampo7  := Dm1.cdsQry2.FieldByName('CGOL').AsString;
          xCampo8  := Dm1.cdsQry2.FieldByName('CGOL').AsString + ' - OF. PRINCIPAL';
          xCampo9  := xMeses;
          xCampo10 := FPrincipal.Mtx.FMant.cds2.fieldbyname('CREANO').AsString;
          xCampo11 := xTmonAbr;
          xCampo12 :=  dbtMontoTot.text; // DM1.cdsQry5.fieldbyname('MONTOTOT').AsString;
          xCampo13 := FPrincipal.Mtx.FMant.cds2.fieldbyname('TOTREG').AsString;
          xCAmpo14 := IntToStr(Dm1.cdsReporte1.RecordCount);
          xCampo15 := xCtaDerra;

          //** para la carta
          rptOficio.Template.FileName := wRutaRpt+'\Oficios.rtm';
          rptOficio.Template.LoadFromFile ;
          wwDBRichEdit1.Width := 800;
          wwDBRichEdit2.Width := 800;
          wwDBRichEdit1.Lines.LoadFromFile(wRutaRpt+'\Plantilla0_2_Oficio.RTF');
          wwDBRichEdit2.Lines.Clear;
          wwDBRichEdit1.Font.Name := 'Courier New';
          wwDBRichEdit2.Font.Name := 'Courier New';
          wwDBRichEdit1.Font.Size := 9;
          wwDBRichEdit2.Font.Size := 9;
          //**
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit1.Lines.Text,'CAMPO01',xCampo1);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO02',xCampo2);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO03',xCampo3);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO04',xCampo4);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO05',xCampo5);

          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO06',xCampo6);
          //wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO07',xCampo7);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO08',xCampo8);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO09',xCampo9);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO10',xCampo10);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO11',xCampo11);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO12',xCampo12);

          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO13',xCampo13);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO14',xCampo14);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO15',xCampo15);

          wwDBRichEdit2.Lines.SaveToFile(wRutaRpt+'\Oficio0_2_'+Trim(xCampo5)+'.RTF');
          //rchtPagina.LoadFromFile(wRutaRpt+'\Oficio0_2_'+Trim(xCampo5)+'.RTF');
          Screen.cursor := crDefault;
          xRutaWord := ExtractFilePath('C:\Archivos de programa\Microsoft Office\Office\Winword.exe') ;
          xHola := xRutaWord+'Winword.exe ' +wRutaRpt+'\Oficio0_2_'+Trim(xCampo5)+'.RTF';
          WinExecAndWait32(xHola,1);
          //rptOficio.Print;
          //rptOficio.stop;
          bdeppOficio.DataSource := Dm1.dsReporte1;
          rptOficio.Template.FileName := wRutaRpt+'\Oficios_TELE.rtm';
          rptOficio.Template.LoadFromFile ;
          plblTitTel.caption := 'COBRANZA POR ENCARGO - '+xBanconom+' - MES DE '+xMeses+' DE '+xCampo10;
          rptOficio.Print;
          rptOficio.stop;
         end;

         DM1.cdsQry5.Edit;
         DM1.cdsQry5.FieldByName('OFIESTADO').AsString:='IMPRESO';
         DM1.cdsQry5.FieldByName('OFIGLOSA').AsString:=xGlosa;
         DM1.cdsQry5.Post;

         DM1.cdsQry5.ApplyUpdates(0);

         {xSql := 'UPDATE COB204 SET OFIESTADO='+quotedstr('IMPRESO')+', '+
                 'OFIGLOSA='+quotedstr(xGlosa)+
                 'WHERE NOFID='+quotedstr(Trim(xCampo5));
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);}

         //FPrincipal.Mtx.RefreshFilter;
     end;
   end
  else
   Showmessage('No Hay Oficio(s) seleccionado(s)');
 Finally
  FPrincipal.Mtx.FMant.cds2.EnableControls;
 end;
end;

procedure TFToolsCarga.rptOficioPreviewFormCreate(Sender: TObject);
begin
	rptOficio.PreviewForm.ClientHeight := 500;
	rptOficio.PreviewForm.ClientWidth  := 650;
	TppViewer(rptOficio.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;

end.

