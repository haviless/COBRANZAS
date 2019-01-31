unit COB704;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, Mant, db, ppEndUsr,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppProd, ppReport, ppComm,
  ppTypes, ppRelatv, ppCache, ppDB, ppDBPipe, ppViewr;

type
  TFToolRepresentante = class(TForm)
    pnlTool: TPanel;
    lblApeMat: TLabel;
    bbtnAceptar: TfcShapeBtn;
    edtRep: TEdit;
    bbtnBoletas: TfcShapeBtn;
    bbtnCtaCte: TfcShapeBtn;
    bbtnReporte: TfcShapeBtn;
    ppData: TppDBPipeline;
    ppRepres: TppReport;
    ppDiseno: TppDesigner;
    rgReporte: TRadioGroup;
    bbtnReportes: TfcShapeBtn;
    ppDBPSup: TppDBPipeline;
    ppRepSup: TppReport;
    ppRepRepre: TppReport;
    ppDBPRepre: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppLabel17: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel27: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppHeaderBand3: TppHeaderBand;
    ppLabel28: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel39: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel38: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel3: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppLine3: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnBoletasClick(Sender: TObject);
    procedure bbtnCtaCteClick(Sender: TObject);
    procedure bbtnReporteClick(Sender: TObject);
    procedure ppRepresPreviewFormCreate(Sender: TObject);
    procedure bbtnReportesClick(Sender: TObject);
    procedure ppRepSupPreviewFormCreate(Sender: TObject);
    procedure ppRepReprePreviewFormCreate(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
     procedure OnDeleteBoletaCob (Sender : TObject; MantFields: TFields);
     procedure OnInsertBoletaCob (Sender: TObject);
     procedure OnEditBoletaCob (Sender : TObject; MantFields: TFields);
     procedure OnDeleteReprCtaCte (Sender : TObject; MantFields: TFields);
     procedure OnInsertReprCtaCte (Sender: TObject);
     procedure OnEditReprCtaCte (Sender : TObject; MantFields: TFields);
  public
     Mtx : TMant;
     procedure ToolBoleta(Sender: TObject);
    { Public declarations }
  end;

var
  FToolRepresentante: TFToolRepresentante;

implementation

uses COBDM1, COB222, COB001, COB223, COB716, MsgDlgs;

{$R *.DFM}

procedure TFToolRepresentante.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
   begin
  	   key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFToolRepresentante.bbtnBoletasClick(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;

  DM1.FiltraCds(DM1.cdsTipBoleta,'SELECT TIPBID, TIPBDES FROM COB210');
  DM1.cdsTipBoleta.indexfieldnames:='TIPBID'; // prvAbonoCreditos
  DM1.FiltraCds(DM1.cdsConcepto,'SELECT * FROM COB212');
  DM1.cdsConcepto.indexfieldnames:='CONCID'; // prvAbonoCuotas

  FToolsBol := TFToolsBol.Create(Self);
  Mtx := TMant.Create(Self);
  Try
    Mtx.User            := DM1.wUsuario;
	  Mtx.Admin           := DM1.wAdmin;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := FPrincipal.cgdPrincipal;
    Mtx.OnCreateMant    := ToolBoleta;
    Mtx.TableName       := 'COB208';
    Mtx.ClientDataSet   := DM1.cdsBoletaCob; // prvCuotas
    Mtx.Filter          := 'REPRID='+quotedstr(DM1.cdsRepresentante.fieldbyname('REPRID').asstring);
    Mtx.Titulo 			    := 'Boleta de Pago - Rep.: '+DM1.cdsRepresentante.fieldbyname('REPRAPENOM').asstring;
    Mtx.OnInsert 		    := OnInsertBoletaCob;
    Mtx.OnEdit 			    := OnEditBoletaCob;
    Mtx.OnDelete 		    := OnDeleteBoletaCob;
    Mtx.SectionName	    := 'BoletaCob';
    Mtx.FileNameIni	    := '\SolCobranzas.ini';

    Screen.Cursor:=crDefault;

    Mtx.Execute;
  Finally
    Screen.Cursor:=crDefault;
    Mtx.Free;
    FToolsBol.Free;

    DM1.cdsTipBoleta.Close;
    DM1.cdsConcepto.Close;
  end;
end;

procedure TFToolRepresentante.OnDeleteBoletaCob (Sender : TObject; MantFields: TFields);
begin
  if DM1.cdsBoletaCob.RecordCount = 0 then Exit;

  if Question(Caption,'Esta Seguro de Eliminar el Registro Actual y su Detalle? '+#13+#13+
                      'Desea Continuar') then
  begin
    Screen.Cursor:=crHourGlass;

    xSQL:='DELETE FROM COB209 '+
          'WHERE BOLRNUMB='+QuotedStr(DM1.cdsBoletaCob.FieldByName('BOLRNUMB').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    DM1.cdsBoletaCob.Delete;
    DM1.cdsBoletaCob.ApplyUpdates(-1);

    Screen.Cursor:=crDefault;
  end;
end;

procedure TFToolRepresentante.OnEditBoletaCob(Sender: TObject; MantFields: TFields);
begin
  if DM1.cdsBoletaCob.RecordCount = 0 then
  begin
    ShowMessage('No Existen Registros a Editar');
    exit;
  end;

  DM1.wModo:= 'M';
  FBoletaCob := TFBoletaCob.Create(Self);
  try
    FBoletaCob.ShowModal
  finally
    FBoletaCob.free
  end;
end;

procedure TFToolRepresentante.OnInsertBoletaCob(Sender: TObject);
begin
  DM1.wModo := 'A';

  FBoletaCob := TFBoletaCob.Create(Self);
  try
    FBoletaCob.ShowModal
  finally
    FBoletaCob.free
  end;
end;

procedure TFToolRepresentante.bbtnCtaCteClick(Sender: TObject);
begin
   Screen.Cursor:=crHourGlass;
   DM1.FiltraCds(DM1.cdsConcepto,'SELECT * FROM COB212 WHERE TIPCID='+quotedstr('C'));
   DM1.cdsConcepto.indexfieldnames:='CONCID';
   Mtx := TMant.Create(Self);
   Try
      Mtx.User            := DM1.wUsuario;
      Mtx.Admin           := DM1.wAdmin;
      Mtx.Module          := DM1.wModulo;
      Mtx.DComC           := DM1.DCOM1;
      Mtx.ControlGridDisp := FPrincipal.cgdPrincipal;
      Mtx.TableName       := 'COB335';
      Mtx.ClientDataSet   := DM1.cdsReprCtaCte;
      Mtx.Filter          := 'REPRID='+quotedstr(DM1.cdsRepresentante.fieldbyname('REPRID').asstring);
      Mtx.Titulo 	        := 'Cuenta Corriente - Rep.: '+DM1.cdsRepresentante.fieldbyname('REPRAPENOM').asstring;
      Mtx.OnInsert 	      := OnInsertReprCtaCte;
      Mtx.OnEdit 	        := OnEditReprCtaCte;
      Mtx.SectionName	    := 'ReprCtaCte';
      Mtx.FileNameIni	    := '\SolCobranzas.ini';
      Screen.Cursor:=crDefault;
      Mtx.Execute;
   Finally
      Screen.Cursor:=crDefault;
      Mtx.Free;

      DM1.cdsConcepto.Close;
   end;
end;

procedure TFToolRepresentante.OnDeleteReprCtaCte (Sender : TObject; MantFields: TFields);
var
   xwhere : string;
begin
   If MessageDlg('¿Esta Seguro de Eliminar el Registro Actual ?',
      mtConfirmation,[mbYes,mbNo],0)=mrYes Then
   Begin
      Screen.Cursor:=crHourGlass;

      // Verifica si la cuenta corriente está referenciada en algún detalle de Boleta
      xWhere:='CTANRO='+quotedstr(DM1.cdsReprCtaCte.fieldbyname('CTANRO').AsString);
      if (length(DM1.DisplayDescrip('prvSQL','COB209','CTANRO',xWhere,'CTANRO'))>0) then
      begin
         ShowMessage('La Cuenta Corriente tiene movimientos asociados en Boleta !');
         exit;
      end;

      DM1.cdsReprCtaCte.Delete;
      DM1.cdsReprCtaCte.ApplyUpdates(-1);

      Screen.Cursor:=crDefault;
   End;
end;

procedure TFToolRepresentante.OnEditReprCtaCte(Sender: TObject; MantFields: TFields);
begin
   if DM1.cdsReprCtaCte.RecordCount = 0 then
   begin
      ShowMessage('No existen registros a editar');
      exit;
   end;

   DM1.wModo:= 'M';
   FReprCtaCte := TFReprCtaCte.Create(Self);
   try
      FReprCtaCte.ShowModal
   finally
      FReprCtaCte.free
   end;
end;

procedure TFToolRepresentante.OnInsertReprCtaCte(Sender: TObject);
begin
   DM1.wModo := 'A';
   FReprCtaCte := TFReprCtaCte.Create(Self);
   try
      FReprCtaCte.ShowModal
   finally
      FReprCtaCte.free
   end;
end;

procedure TFToolRepresentante.ToolBoleta(Sender: TObject);
var
	pg : TPanel;
	pl : TPanel;
begin
	pg := FToolsBol.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pg.Align    := alClient;
	TMant(Sender).FMant.pnlBtns.Visible  := True;
   //Inicio: HPP_201007_COB por JCARBONEL
   TMant(Sender).FMant.ppdFiltro.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

procedure TFToolRepresentante.bbtnReporteClick(Sender: TObject);
var
  //sDesde, sHasta: String;
  x10 : Integer ;
begin
	//sDesde   :=quotedStr(formatdatetime(wFormatFecha,dtpDesde.DateTime));
	//sHasta   :=quotedStr(formatdatetime(wFormatFecha,dtpHasta.DateTime));
  ppData.DataSource:=Nil;
  dm1.cdsReporte.Close;
  dm1.cdsReporte.IndexFieldNames;
  dm1.cdsReporte.Filter:='';

  Screen.Cursor:=CrHourglass;
  xSQL:='SELECT COB201.*, B.UPROID, C.UPRONOM, D.FORREPRDES, E.DPTODES, F.CIUDDES, G.ZIPDES '+
        'FROM COB201, COB203 B, APO102 C, COB105 D, APO158 E, APO123 F, APO122 G '+
        'WHERE COB201.REPRID=B.REPRID '+
        'AND B.UPROID=C.UPROID(+) '+
        'AND D.FORREPRID=COB201.FORREPRID '+
        'AND E.DPTOID(+)=COB201.DPTOID '+
        'AND F.DPTOID(+)=COB201.DPTOID '+
        'AND F.CIUDID(+)=COB201.CIUDID '+
        'AND G.DPTOID(+)=COB201.DPTOID '+
        'AND G.CIUDID(+)=COB201.CIUDID '+
        'AND G.ZIPID(+)=COB201.ZIPID ';
  if Length(Trim(FPrincipal.Mtx.FMant.SQL_WHERE)) > 0 then
    xSQL:=xSQL+' AND '+FPrincipal.Mtx.FMant.SQL_WHERE;
  xSQL:=xSQL+' ORDER BY COB201.REPRAPENOM';

  dm1.cdsReporte.Close;
  dm1.cdsReporte.DataRequest(xSQL);
  dm1.cdsReporte.Open;

  if dm1.cdsReporte.RecordCount = 0 then
  begin
    Showmessage ('No Existe Información a Mostrar');
    Screen.Cursor:=CrDefault;
  	 Exit;
  end;

  ppData.DataSource:=DM1.dsreporte;
  ppRepres.Template.FileName := wRutaRpt+'\RepRepre.rtm' ;
	ppRepres.Template.LoadFromFile;

  Screen.Cursor:=CrDefault;
	//ppDiseno.ShowModal;
	ppRepres.Print;
	ppRepres.Stop;

	x10:=Self.ComponentCount-1;
	while x10>=0 do
	begin
		if Self.Components[ x10 ].ClassName='TppGroup' then
		begin
			Self.Components[ x10 ].Free ;
		end;
		x10:=x10-1;
	end;
  ppData.DataSource:=nil;
end;

procedure TFToolRepresentante.ppRepresPreviewFormCreate(Sender: TObject);
begin
	ppRepres.PreviewForm.ClientHeight := 500;
	ppRepres.PreviewForm.ClientWidth  := 650;
	TppViewer(ppRepres.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;

procedure TFToolRepresentante.bbtnReportesClick(Sender: TObject);
var
  xSQL, xFlag : String;
  x10 : Integer;
begin
  if rgReporte.ItemIndex = 0 Then
  begin
    xSQL := 'SELECT REC.REPRID CODREP, REC.REPRAPENOM REPRESENTANTE, SUB.REPRID CODAUX, SUB.REPRAPENOM AUXILIAR, '+
            'OFI.OFDESNOM, REC.REPRFAX, REC.REPRTELF, REC.REPRDIR '+
            'FROM COB201 REC, COB205 REL, COB201 SUB, APO110 OFI, COB105 TBL '+
            'WHERE REL.REPRID=REC.REPRID '+
            'AND SUB.REPRID=REL.REPRIDP '+
            'AND REC.OFDESID=OFI.OFDESID(+) '+
            'AND REC.REPRFLGACT=''A'' '+
            'AND REC.FORREPRID=TBL.FORREPRID '+
            'AND TBL.FORREPFLAG='+QuotedStr('S')+' '+
            'ORDER BY OFI.OFDESNOM, REC.REPRID, REC.REPRAPENOM, SUB.REPRID';

    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSQL);
    DM1.cdsReporte.Open;

    if DM1.cdsReporte.RecordCount = 0 Then
    begin
      Beep;
      Information(Caption,'No Existen Datos a Imprimir');
      Screen.Cursor := crDefault;
      Exit;
    end;

    ppRepSup.Template.FileName := (wRutaRpt +'\Supervisor.rtm');
    ppRepSup.Template.LoadFromFile ;
    ppRepSup.Print;
    ppRepSup.Stop;
  end
  else
  if rgReporte.ItemIndex = 1 Then
  begin
    //xwhere:='BANCOID='+quotedstr(dblcbanco.Text);
    //xFlag:=DM1.DisplayDescrip('prvSQL','COB105','FORREPRID','FORREPFLAG=''R''','FORREPRID'))>0 then

    xSQL := 'SELECT B.BANCONOM, A.REPRID, A.UPROID, A.REPRAPENOM REPRAPENOM, A.REPRDIR, '+
            'A.REPRNCTA, A.REPRTELF '+
            'FROM COB201 A, TGE105 B, COB105 C '+
            'WHERE C.FORREPRID=A.FORREPRID '+
            'AND C.FORREPFLAG='+QuotedStr('R')+' '+
            'AND A.BANCOID=B.BANCOID '+
            'AND A.REPRFLGACT=''A'' '+
            'ORDER BY A.REPRAPENOM ASC';

    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xsql);
    DM1.cdsReporte.Open;

    if DM1.cdsReporte.RecordCount = 0 Then
    begin
      Beep;
      Information(Caption,'No Existen Datos a Imprimir');
      Screen.Cursor := crDefault;
      Exit;
    end;

    ppRepRepre.Template.FileName := (wRutaRpt +'\Representante.rtm');
    ppRepRepre.Template.LoadFromFile ;
    ppRepRepre.Print;
    ppRepRepre.Stop;
  end;

  x10 := Self.ComponentCount - 1;
  While x10 > 0 do
  begin
    If Self.Components[x10].ClassName = 'TppGroup' Then
    begin
      Self.Components[x10].Free;
    end;
    x10 := x10 - 1;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFToolRepresentante.ppRepSupPreviewFormCreate(Sender: TObject);
begin
	ppRepSup.PreviewForm.ClientHeight := 500;
	ppRepSup.PreviewForm.ClientWidth  := 650;
	TppViewer(ppRepSup.PreviewForm.Viewer).ZoomSetting := zsPagewidth;

  //ppRepSup.PreviewForm.WindowState := wsMaximized;
  //TppViewer(ppRepSup.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolRepresentante.ppRepReprePreviewFormCreate(Sender: TObject);
begin
	ppRepRepre.PreviewForm.ClientHeight := 500;
	ppRepRepre.PreviewForm.ClientWidth  := 650;
	TppViewer(ppRepRepre.PreviewForm.Viewer).ZoomSetting := zsPagewidth;

  //ppRepRepre.PreviewForm.WindowState := wsMaximized;
  //TppViewer(ppRepRepre.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolRepresentante.bbtnAceptarClick(Sender: TObject);
begin
  If Length(Trim(edtRep.Text)) > 0 Then
    xSQL:='SELECT * FROM COB201 WHERE REPRAPENOM LIKE '+QuotedStr(Trim(edtRep.Text+'%'))
  else
    xSQL:='SELECT * FROM COB201';

  Screen.Cursor:=crHourGlass;
  FPrincipal.Mtx.UsuarioSQL.Clear;
  FPrincipal.Mtx.FMant.wTabla:='COB201';
  FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
  FPrincipal.Mtx.NewQuery;
  Screen.Cursor:=crDefault;
end;

procedure TFToolRepresentante.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDiseno.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

end.
