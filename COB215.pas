unit COB215;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, StdCtrls, Mask, wwdbedit, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,DB,
  Mant, fcButton, fcImgBtn, fcShapeBtn, ComCtrls, wwriched;

type
  TFAnuRef = class(TForm)
    pnlcabe: TPanel;
    lblApeNom: TLabel;
    lblCModular: TLabel;
    lblCPago: TLabel;
    lblDIden: TLabel;
    lblSit: TLabel;
    dbeAsoNom: TwwDBEdit;
    dbeCodigoModular: TwwDBEdit;
    dbeCodigoPago: TwwDBEdit;
    dbeTipDoc: TwwDBEdit;
    dbeDocIdNum: TwwDBEdit;
    dbeSit: TwwDBEdit;
    dbgCreditos: TwwDBGrid;
    pnlDeta: TPanel;
    dbgDeta: TwwDBGrid;
    StaticText1: TStaticText;
    Label1: TLabel;
    db2Cred: TwwDBEdit;
    Label2: TLabel;
    dbeMto: TwwDBEdit;
    Label3: TLabel;
    dbeCuota: TwwDBEdit;
    z2bbtnCerrar: TfcShapeBtn;
    Label5: TLabel;
    db2Fecha: TwwDBEdit;
    Label6: TLabel;
    dbeestado: TwwDBEdit;
    dbgDeta1: TwwDBGrid;
    Label4: TLabel;
    Label7: TLabel;
    Z2bbtnCarga: TfcShapeBtn;
    pnlObse: TPanel;
    wwDBRichEdit1: TwwDBRichEdit;
    StaticText2: TStaticText;
    Z2bbtnCierra1: TfcShapeBtn;
    Z2bbtnProcesa: TfcShapeBtn;
    procedure dbeAsoNomExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnCierraClick(Sender: TObject);
    procedure dbgCreditosDblClick(Sender: TObject);
    procedure z2bbtnCerrarClick(Sender: TObject);
    procedure Z2bbtnCargaClick(Sender: TObject);
    procedure Z2bbtnCierra1Click(Sender: TObject);
  private
    { Private declarations }
   xEstid,xEstado,xAsoid : String;
   procedure cargabusqueda;  //** BUSCA AL ASOCIADO
   procedure CredPend;
   procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
   procedure OnEditAso(Sender: TObject; MantFields: TFields);
  public
    { Public declarations }
  end;

var
  FAnuRef: TFAnuRef;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFAnuRef.cargabusqueda;
var
 xSql : String;
begin
  dbeAsoNom.text := DM1.cdsPadre.FieldByName('ASOAPENOM').AsString;
  dbeCodigoModular.text := DM1.cdsPadre.FieldByName('ASOCODMOD').AsString;
  xAsoid := DM1.cdsPadre.FieldByName('ASOID').AsString;
  dbeCodigoPago.text := DM1.cdsPadre.FieldByName('ASOCODPAGO').AsString;
  Dm1.Displaydescrip('prvSQL','TGE159','TIPDOCABR','TIPDOCCOD='+quotedstr(DM1.cdsPadre.FieldByName('TIPDOCCOD').AsString),'TIPDOCABR');
  dbeTipDoc.Text := Dm1.cdsQry.FieldByName('TIPDOCABR').AsString;
  dbeDocIdNum.text := Dm1.cdsPadre.FieldByName('ASODNI').AsString;
  dbeSit.text := Dm1.cdsPadre.FieldByName('ASOTIPID').AsString;
  CredPend;
  Z2bbtnCarga.Enabled := True;
end;

procedure TFAnuRef.CredPend;
var
 xtipcreid,xTipdeseid,xSql : String;
begin
  //** 18/02/2003 - PJSV
   xSQL:='SELECT * FROM CRE303 '+
        ' WHERE ASOID='+ QuotedStr(DM1.cdsPadre.FieldByName('ASOID').AsString)+
        ' AND NVL(NROREFINAN,''N'') <>'+quotedstr('N');
  DM1.Filtracds(DM1.cdsReporte,xSQL);
  //**
  dbgCreditos.Datasource:=DM1.dsReporte;
  dbgCreditos.Selected.Clear;
  dbgCreditos.Selected.Add('CREDID'#9'15'#9'N°~Crédito');
  //dbgCreditos.Selected.Add('TIPCREID'#9'3'#9'Id~Tipo');
  //dbgCreditos.Selected.Add('TIPCREDES'#9'20'#9'Tipo~Credito');
  dbgCreditos.Selected.Add('CREFOTORG'#9'10'#9'Fecha~Otorga.');
  dbgCreditos.Selected.Add('CRENUMCUO'#9'5'#9'N°~Cuotas');
  dbgCreditos.Selected.Add('TMONABR'#9'4'#9'Mon.');
  dbgCreditos.Selected.Add('CREMTOSOL'#9'8'#9'Monto~Refinanc.');
  //dbgCreditos.Selected.Add('CREMTOGIR'#9'8'#9'Monto~Girado');
  dbgCreditos.Selected.Add('CREMTOTAL'#9'8'#9'Monto~Total');
  dbgCreditos.Selected.Add('CREMTOPAG'#9'8'#9'Monto~Pagado');
  dbgCreditos.Selected.Add('CRESDOACT'#9'8'#9'Monto~Saldo');
  dbgCreditos.Selected.Add('CREESTADO'#9'15'#9'Estado');
  dbgCreditos.RefreshDisplay;
  TNumericField(DM1.cdsReporte.FieldByName('CREMTOTAL')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsReporte.FieldByName('CREMTOPAG')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsReporte.FieldByName('CRESDOACT')).DisplayFormat:='###,###,##0.00';
end;

procedure TFAnuRef.dbeAsoNomExit(Sender: TObject);
var
 xSQL : String;
begin
  //** SI HAY UN NOMBRE SE BUSCA
  If Length(trim(dbeAsoNom.text)) > 0 then
   begin
    xSQL := 'Select * From APO201'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(dbeAsoNom.Text+'%'));
    DM1.cdsPadre.Close;
    DM1.cdsPadre.DataRequest(xSQL);
    DM1.cdsPadre.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If DM1.cdsPadre.RecordCount = 1 Then
     CargaBusqueda
    Else
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeAsoNom.Text+'%')));
   end;
   dbgCreditos.enabled := true;
   dbgCreditos.SetFocus;
end;

procedure TFAnuRef.LevantaFiltro(xCampo: String);
var
   Mtx : TMant;
begin
   DM1.cdsAsoX.Close;
   Mtx  := TMant.Create(Self);
   Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.TableName       := 'APO201';
    Mtx.ClientDataSet   := DM1.cdsAsoX;
    Mtx.Filter          := xCampo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.Module          := DM1.wModulo;
    Mtx.Titulo 	        := 'Asociados';
    Mtx.SectionName     := 'AsociaX';
    Mtx.Registros       := 30;
    Mtx.FileNameIni     := '\SOLAPO.INI';
    Mtx.OnEdit          := OnEditAso;
    Mtx. Execute;
   Finally
    DM1.cdsAsoX.Close;
    Mtx.Free;
   end;
   DM1.cdsAsoX.Filter   := '';
   DM1.cdsAsoX.Filtered := False;
   DM1.cdsAsoX.IndexFieldNames := '';
   DM1.cdsAsoX.Close;
end;

procedure TFAnuRef.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL : String;
begin
   xSQL := 'Select * From APO201'
          +' Where ASOID ='+QuotedStr(DM1.cdsAsoX.FieldByName('ASOID').AsString);
   DM1.FiltraCDS(DM1.cdsPadre,xSQL);
   cargabusqueda;
   TMant(Sender).FMant.Close;
end;

procedure TFAnuRef.FormActivate(Sender: TObject);
begin
 FAnuRef.Height := 169;
 //** POR COBRAR
 xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
 xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
end;

procedure TFAnuRef.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFAnuRef.bbtnCierraClick(Sender: TObject);
begin
  pnlDeta.Visible := False;
end;

procedure TFAnuRef.dbgCreditosDblClick(Sender: TObject);
var
 xSql : String;
begin
 FAnuRef.Height := 465;
 xSql := 'SELECT CREDID,CREFOTORG,CREMTOOTOR,CRENUMCUO,CREESTADO FROM CRE303 WHERE ASOID = '+quotedstr(DM1.cdsReporte.FieldByName('ASOID').AsString)+
         ' AND CREDID ='+quotedstr(DM1.cdsReporte.FieldByName('NROREFINAN').AsString);
 dm1.cdsQry1.close;
 dm1.cdsQry1.DataRequest(xSql);
 dm1.cdsQry1.open;

 xSql := 'SELECT CREDID,CREANO,CREMES,CRECUOTA,CREMTO,CREINTERES,CREFLAT,CREMTOCOB,CRECAPITAL,CREMTOINT,CREMTOFLAT,'+
         ' CREESTADO FROM CRE302 WHERE ASOID = '+quotedstr(DM1.cdsReporte.FieldByName('ASOID').AsString)+
         ' AND CREDID ='+quotedstr(DM1.cdsReporte.FieldByName('NROREFINAN').AsString)+
         ' ORDER BY CREDID,CREANO,CREMES';
 dm1.cdsQry2.close;
 dm1.cdsQry2.DataRequest(xSql);
 dm1.cdsQry2.open;

 xSql := 'SELECT CREDID,CREANO,CREMES,CRECUOTA,CREMTO,CREINTERES,CREFLAT,CREMTOCOB,CRECAPITAL,CREMTOINT,CREMTOFLAT,'+
         ' CREESTADO FROM CRE302 WHERE ASOID = '+quotedstr(DM1.cdsReporte.FieldByName('ASOID').AsString)+
         ' AND CREDID ='+quotedstr(DM1.cdsReporte.FieldByName('CREDID').AsString)+
         ' ORDER BY CREDID,CREANO,CREMES';
 dm1.cdsQry3.close;
 dm1.cdsQry3.DataRequest(xSql);
 dm1.cdsQry3.open;

 db2Cred.DataSource := dm1.dsQry1;
 db2Fecha.DataSource := dm1.dsQry1;
 dbeMto.DataSource := dm1.dsQry1;
 dbeCuota.DataSource := dm1.dsQry1;
 dbeestado.DataSource := dm1.dsQry1;

 db2Cred.DataField := 'CREDID';
 db2Fecha.DataField := 'CREFOTORG';
 dbeMto.DataField := 'CREMTOOTOR';
 dbeCuota.DataField := 'CRENUMCUO';
 dbeestado.DataField := 'CREESTADO';

 dbgDeta.Selected.Add('CREANO'#9'4'#9'Año');
 dbgDeta.Selected.Add('CREMES'#9'2'#9'Mes');
 dbgDeta.Selected.Add('CRECUOTA'#9'2'#9'Cuota');
 dbgDeta.Selected.Add('CREMTO'#9'8'#9'Monto');
 dbgDeta.Selected.Add('CREINTERES'#9'5'#9'Int. Pact.');
 dbgDeta.Selected.Add('CREFLAT'#9'5'#9'Flat Pact.');
 dbgDeta.Selected.Add('CREESTADO'#9'12'#9'Estado');
 dbgDeta.DataSource := dm1.dsQry2;

 dbgDeta1.Selected.Add('CREANO'#9'4'#9'Año');
 dbgDeta1.Selected.Add('CREMES'#9'2'#9'Mes');
 dbgDeta1.Selected.Add('CRECUOTA'#9'2'#9'Cuota');
 dbgDeta1.Selected.Add('CREMTO'#9'8'#9'Monto');
 dbgDeta1.Selected.Add('CREINTERES'#9'5'#9'Int. Pact.');
 dbgDeta1.Selected.Add('CREFLAT'#9'5'#9'Flat Pact.');
 dbgDeta1.Selected.Add('CREESTADO'#9'12'#9'Estado');
 dbgDeta1.DataSource := dm1.dsQry3;

end;

procedure TFAnuRef.z2bbtnCerrarClick(Sender: TObject);
begin
 FAnuRef.Height := 169;
 dbgDeta.DataSource := NIL;
 dbgDeta.Selected.Clear;
 dbgDeta1.DataSource := NIL;
 dbgDeta1.Selected.Clear;

end;

procedure TFAnuRef.Z2bbtnCargaClick(Sender: TObject);
begin
  pnlObse.Visible := True;
end;

procedure TFAnuRef.Z2bbtnCierra1Click(Sender: TObject);
begin
   pnlObse.Visible := False;
end;

end.
