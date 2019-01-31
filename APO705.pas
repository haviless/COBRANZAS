//** 13/01/2003 - PJSV
unit APO705;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Buttons, Mant, Db, Wwdatsrc, DBClient, wwclient, ppDB,
  ppDBPipe, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, fcButton,
  fcImgBtn, fcShapeBtn, ppStrtch, ppMemo, ppVar, ppDBBDE, Spin;

type
  TFToolBloquo = class(TForm)
    pnlBot: TPanel;
    rptBloqueo: TppReport;
    bdeppBloqueo: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    pplblTitulo: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppdbtOfc: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    ppLine3: TppLine;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    pplblRango: TppLabel;
    pnlImpre: TPanel;
    Label1: TLabel;
    spRAI: TSpinEdit;
    seRMI: TSpinEdit;
    Label2: TLabel;
    seRAF: TSpinEdit;
    seRMF: TSpinEdit;
    rgEstado: TRadioGroup;
    bbtnPrin: TfcShapeBtn;
    bbtnBloqueo: TfcShapeBtn;
    procedure edtAsociadoExit(Sender: TObject);
    procedure bbtnBloqueoClick(Sender: TObject);
    procedure bbtnPrinClick(Sender: TObject);
  private
    { Private declarations }
    xAsoid : STring;
    Mtx : TMant;
    xEstado,xEstid : String;
    procedure cargabusqueda;  //** BUSCA AL ASOCIADO
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
  public
    { Public declarations }
  end;

var
  FToolBloquo: TFToolBloquo;

implementation

uses COBDM1,COB307;

{$R *.DFM}

procedure TFToolBloquo.edtAsociadoExit(Sender: TObject);
var
 xSQL : String;
begin
   //** 2 Me indica cuotas por cobrar
   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** SI HAY UN NOMBRE SE BUSCA
  If edtAsociado.Text <> '' Then
   begin
    xAsoid := '';
    xSQL := 'Select DISTINCT ASOAPENOM From CRE303'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
           +' and creestid = '+quotedstr(xEstid);
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSQL);
    DM1.cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If DM1.cdsQry1.RecordCount = 1 Then
     CargaBusqueda
    Else
     begin
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%')));
      If xAsoid <> '' then
       cargabusqueda;
     end;
   end;
end;

procedure TFToolBloquo.LevantaFiltro(xCampo : String);
begin
   DM1.cdsQry2.close;
   Mtx  := TMant.Create(Self);
   Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.TableName       := 'CRE303';
    Mtx.ClientDataSet   := DM1.cdsQry2;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.Module          := DM1.wModulo;
    Mtx.Titulo 	        := 'Créditos';
    Mtx.SectionName     := 'Bloqueo';
    Mtx.FileNameIni     := '\SOLAPO.INI';
    Mtx.Filter          := xCampo;
    Mtx.OnEdit          := OnEditAso;
    Mtx. Execute;
   Finally
    DM1.cdsQry2.Close;
    Mtx.Free;
   end;
   DM1.cdsQry2.Close;
end;

//** AL HACER DOBLE CLICK EN ALGUNA FILA DEL MANT
procedure TFToolBloquo.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL : String;
begin
   xSQL := 'Select * From CRE303 '+
           ' Where ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+
           ' and credid = '+quotedstr(DM1.cdsQry2.FieldByName('CREDID').AsString)+ 
           ' AND CREESTID ='+quotedstr(xEstid) ;
   DM1.FiltraCDS(DM1.cdsQry1,xSQL);

   xAsoid := DM1.cdsQry1.FieldByName('ASOID').AsString;
   mtx.FMant.Close;
end;

procedure TFToolBloquo.cargabusqueda;
begin
   xSQL := 'Select * From CRE303'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
           +' and creestid = '+quotedstr(xEstid);
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   edtAsociado.text := DM1.cdsQry1.FieldByName('ASOAPENOM').AsString;
   FBloqueoCuotas := TFBloqueoCuotas.Create(Self);
   FBloqueoCuotas.Showmodal;
   FBloqueoCuotas.Free;
end;

procedure TFToolBloquo.bbtnBloqueoClick(Sender: TObject);
var
 xRI,xRF,xTitulo,xSql : String;

begin
   If rgEstado.ItemIndex = -1 then exit;
   pnlImpre.Visible := False;
   Screen.cursor := crHourGlass;
   xRI := spRAI.Text+Dm1.StrZero(seRMI.text,2);
   xRF := seRAF.text+Dm1.StrZero(seRMF.text,2);
   If rgEstado.ItemIndex = 0 then
    begin
     xSql := 'SELECT c.ofdesABR,b.crebloq,A.USEID,A.ASOCODMOD,A.OFDESID,A.ASOAPENOM, '+
             ' A.CREFOTORG,A.CREDID, B.CRECUOTA,B.CRECUOTA,B.CREBLOQFEC FECHA,'+
             ' B.USUBLOQ USUARIO, B.CREBLOQOBS,b.creano||''/''||b.cremes ANOMES'+
             ' FROM CRE303 A,CRE302 B, APO110 C WHERE (A.CREBLOQ = ''S'') AND'+
             ' (B.CREBLOQ = ''S'')  AND B.CREANO||B.CREMES>='+quotedstr(xRI)+
             ' AND B.CREANO||B.CREMES<='+quotedstr(xRF)+
             ' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID  and'+
             ' A.OFDESID = C.OFDESID';
     xTitulo := 'RELACION DE CUOTAS BLOQUEADAS';
    end
   else
    begin
     xSql := 'SELECT c.ofdesABR,b.crebloq,A.USEID,A.ASOCODMOD,A.OFDESID,A.ASOAPENOM, '+
             ' A.CREFOTORG,A.CREDID, B.CRECUOTA,B.CRECUOTA,B.DESBLOFEC FECHA,'+
             ' B.USUDESBLOQ USUARIO, B.CREBLOQOBS,b.creano||''/''||b.cremes ANOMES'+
             ' FROM CRE303 A,CRE302 B, APO110 C WHERE (A.CREBLOQ = ''N'' OR A.CREBLOQ = ''S'') AND'+
             ' (B.CREBLOQ = ''N'') AND B.CREANO||B.CREMES>='+quotedstr(xRI)+
             ' AND B.CREANO||B.CREMES<='+quotedstr(xRF)+
             ' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID  and'+
             ' A.OFDESID = C.OFDESID';
     xTitulo := 'RELACION DE CUOTAS DESBLOQUEADAS';
    end;
{    xSql := 'SELECT c.ofdesABR,b.crebloq,A.USEID,A.ASOCODMOD,A.OFDESID,A.ASOAPENOM,'+
            ' A.CREFOTORG,A.CREDID,'+
            ' B.CRECUOTA,case when b.CREBLOQ = ''S'' then ''SI'' else '+
            ' case when b.CREBLOQ = ''N'' then ''NO'' end end BLOQUEADA,'+
            ' B.CRECUOTA,case when b.CREBLOQ = ''S'' then B.CREBLOQFEC else'+
            ' case when b.CREBLOQ = ''N'' then B.DESBLOFEC end end FECHA,'+
            ' B.CRECUOTA,case when b.CREBLOQ = ''S'' then B.USUBLOQ else'+
            ' case when b.CREBLOQ = ''N'' then B.USUDESBLOQ end end USUARIO,'+
            ' B.CREBLOQOBS,b.creano||''/''||b.cremes ANOMES'+
            ' FROM CRE303 A,CRE302 B, APO110 C '+
            ' WHERE (A.CREBLOQ = ''S'' or A.CREBLOQ = ''N'') AND '+
            ' (B.CREBLOQ = ''S'' or B.CREBLOQ = ''N'')  AND'+
            ' A.ASOID = B.ASOID AND A.CREDID = B.CREDID  and A.OFDESID = C.OFDESID';
}
  DM1.cdsQry.close;
  DM1.cdsQry.datarequest(xSql);
  DM1.cdsQry.open;
  bdeppBloqueo.DataSource := DM1.dsQry;
  rptBloqueo.Template.FileName := wRutaRpt+'\BLOQUEO.rtm';
  rptBloqueo.Template.LoadFromFile ;
  pplblTitulo.Caption := xTitulo;
  pplblRango.Caption := ' DEL '+copy(xRI,1,4)+'/'+copy(xRI,5,2)+' AL '+copy(xRF,1,4)+'/'+copy(xRF,5,2);
  Screen.cursor := crDefault;  
  rptBloqueo.Print;
  rptBloqueo.Stop;

end;

procedure TFToolBloquo.bbtnPrinClick(Sender: TObject);
begin
   pnlImpre.visible := True;
end;

end.
