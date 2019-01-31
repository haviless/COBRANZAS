// Inicio Uso Estándares     : 01/08/2011
// Unidad                    : ASO939
// Formulario                : fCtrAcceso
// Fecha de Creación         :
// Autor                     : Equipo de Sistemas
// Objetivo                  : Control de accesos al sistema
// Equipo Solicitante        : Cobranzas
// COB_201823_HPC            : Se añade boton para exportar a Excel los accesos vigentes
unit ASO939;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
  jpeg,IniFiles,DateUtils, DBGrids, ppVar;
  
type
  TfCtrAcceso = class(TForm)
    grpAccesos: TGroupBox;
    Panel1: TPanel;
    edtDesEqpUsr: TEdit;
    grpDatos: TGroupBox;
    dtgUsuarios: TwwDBGrid;
    pUsuario: TPanel;
    lblUsuario: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblOrigen: TLabel;
    Label3: TLabel;
    lblNivel: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    dtgAccesos: TwwDBGrid;
    BitSalir: TBitBtn;
    BitIzq: TBitBtn;
    BitDer: TBitBtn;
    dtgOpciones: TwwDBGrid;
    Label7: TLabel;
    dtgCompo: TwwDBGrid;
    Label8: TLabel;
    dbPeflies: TwwDBLookupCombo;
    Label9: TLabel;
    BitAplica: TBitBtn;
    BitPrint: TBitBtn;
    dblEqUsr: TwwDBLookupCombo;
    ppDBEstCta: TppDBPipeline;
    ppREstCta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLine5: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    lblUser: TppLabel;
    lblOrig: TppLabel;
    lblNiv: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppLine6: TppLine;
    EdtBuscar: TEdit;
    Label10: TLabel;
    BitAccesoGen: TBitBtn;
    RepAccUsu: TppReport;
    ppHeaderBand17: TppHeaderBand;
    TitRep: TppLabel;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel343: TppLabel;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppSystemVariable25: TppSystemVariable;
    ppLabel344: TppLabel;
    ppLabel345: TppLabel;
    ppLabel346: TppLabel;
    ppDetailBand19: TppDetailBand;
    ppDBText174: TppDBText;
    ppDBText173: TppDBText;
    ppFooterBand14: TppFooterBand;
    ppSummaryBand17: TppSummaryBand;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppLine85: TppLine;
    ppLine227: TppLine;
    ppDBCalc153: TppDBCalc;
    ppGroup57: TppGroup;
    ppGroupHeaderBand57: TppGroupHeaderBand;
    ppDBText373: TppDBText;
    ppGroupFooterBand57: TppGroupFooterBand;
    ppLine84: TppLine;
    ppLabel351: TppLabel;
    ppLabel352: TppLabel;
    ppDBCalc156: TppDBCalc;
    ppGroup25: TppGroup;
    ppGroupHeaderBand25: TppGroupHeaderBand;
    ppDBText374: TppDBText;
    ppLabel338: TppLabel;
    ppLabel347: TppLabel;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppGroupFooterBand25: TppGroupFooterBand;
    ppDBCalc154: TppDBCalc;
    ppLine81: TppLine;
    ppLabel348: TppLabel;
    ppLabel349: TppLabel;
    DbAccUsu: TppDBPipeline;
    DbAteObsppField1: TppField;
    DbAteObsppField2: TppField;
    DbAteObsppField3: TppField;
    DbAteObsppField4: TppField;
    DbAteObsppField5: TppField;
    DbAteObsppField6: TppField;
    DbAteObsppField7: TppField;
    // Inicio: COB_201823_HPC
    // Se añade boton para exportar listado de accesos a excel
    btnExcel: TBitBtn;
    dbgreporte: TwwDBGrid;
    // Fin: COB_201823_HPC
    procedure dblEqUsrChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgUsuariosDblClick(Sender: TObject);
    procedure dtgUsuariosRowChanged(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure BitIzqClick(Sender: TObject);
    procedure BitDerClick(Sender: TObject);
    procedure dtgOpcionesDblClick(Sender: TObject);
    procedure dtgOpcionesDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgOpcionesRowChanged(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitPrintClick(Sender: TObject);
    procedure EdtBuscarChange(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure BitAccesoGenClick(Sender: TObject);
    // Inicio: COB_201823_HPC
    // Cabecera de procedimiento que exporta a excel los accesos al sistema
    procedure btnExcelClick(Sender: TObject);
    // Fin: COB_201823_HPC
  private
    { Private declarations }
    procedure LimpiaGrids;
    procedure CargaUser;
    procedure CargaAccesos(xUsuario:String);
    procedure CargaUsrAccesos;

  public
    { Public declarations }
  end;

var
  fCtrAcceso: TfCtrAcceso;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfCtrAcceso.dblEqUsrChange(Sender: TObject);
var xSQL:String;
begin
 If DM1.cdsConsulta.Locate('MODULOID',VarArrayof([dblEqUsr.Text]),[]) Then
      Begin
        edtDesEqpUsr.Text  := DM1.cdsConsulta.Fieldbyname('AREADES').AsString ;
        xSQL:='SELECT A.USERID,A.USERNOM,AREA,ORIGEN,OFDESNOM,NIVEL FROM USERTABLE A ,APO110 B,TGE006 C WHERE  '+
              'A.ORIGEN=B.OFDESID AND EXISTS (SELECT USERID,GRUPOID FROM TGE007 WHERE A.USERID=USERID AND GRUPOID=''GRPCOB'') AND  '+
              'A.NIVEL IS NOT NULL  AND A.USERID=C.USERID  AND C.FECEXP IS NULL  ORDER BY USERID ';
        DM1.cdsUSES.Close;
        DM1.cdsUses.DataRequest(xSQL);
        DM1.cdsUses.Open;
        If DM1.cdsUses.RecordCount > 0 Then CargaUser;
      End
   Else
      Begin
        If Length(dblEqUsr.Text) <> 3 then
           Begin
              Beep;
              edtDesEqpUsr.Text  :='';   LimpiaGrids;
           End;
      End;

end;

procedure TfCtrAcceso.LimpiaGrids;
var xSQL:String;
begin
  xSQL:='SELECT USERID,USERNOM,AREA,ORIGEN,OFDESNOM,NIVEL FROM USERTABLE A ,APO110 B WHERE AREA='+QuotedStr('@#$')+' '+
        'AND A.ORIGEN=B.OFDESID AND A.NIVEL IS NOT NULL ORDER BY USERID ';
  DM1.cdsUses.Close;  DM1.cdsUses.DataRequest(xSQL); DM1.cdsUses.Open;

  xSQL:='SELECT A.CAMPO CAMPO,A.COMPONENTE COMPONENTE,CAMPODES FROM '+
        'SIS000 A,SIS001 B WHERE A.COMPONENTE=B.COMPONENTE AND A.USERID='+QuotedStr('@#%^!@*');
  DM1.cdsTCredito.Close;   DM1.cdsTCredito.DataRequest(xSQL);   DM1.cdsTCredito.Open;


end;

procedure TfCtrAcceso.FormActivate(Sender: TObject);
begin
   LimpiaGrids;
   dblEqUsr.OnChange(dblEqUsr);
end;

procedure TfCtrAcceso.dtgUsuariosDblClick(Sender: TObject);
begin
   CargaUser;
end;

procedure TfCtrAcceso.CargaUser;
begin
lblUsuario.Caption:=DM1.cdsUses.Fieldbyname('USERID').AsString+' - '+DM1.cdsUses.Fieldbyname('USERNOM').AsString;
lblOrigen.Caption:=DM1.cdsUses.Fieldbyname('OFDESNOM').AsString;
lblNivel.Caption := DM1.RecuperaDatos('CRE800','NIVELID',DM1.cdsUses.Fieldbyname('NIVEL').AsString,'NIVELDES') ;
CargaAccesos(DM1.cdsUses.Fieldbyname('USERID').AsString);
end;

procedure TfCtrAcceso.dtgUsuariosRowChanged(Sender: TObject);
begin
CargaUser;
end;

procedure TfCtrAcceso.CargaAccesos(xUsuario: String);
var xSQL:String;
begin
xSQL:='SELECT A.USERID,A.CAMPO CAMPO,A.COMPONENTE COMPONENTE,CAMPODES FROM '+
      'SIS000 A,SIS001 B WHERE A.COMPONENTE=B.COMPONENTE AND A.USERID='+QuotedStr(xUsuario)+' AND B.MODULOID=''COB'' AND A.MODULOID=''COB'' ORDER BY CAMPODES';
DM1.cdsTCredito.Close; DM1.cdsTCredito.DataRequest(xSQL); DM1.cdsTCredito.Open;

xSQL:='SELECT A.TABLA,A.CAMPO,A.COMPONENTE,A.CAMPODES,A.GRUPO FROM SIS001 A WHERE A.COMPONENTE IS NOT NULL AND SUBSTR(GRUPO,1,1)='+QuotedStr(Copy(Trim(DM1.cdsPadre.FieldByName('GRUPO').AsString),1,1))+' AND TABLA='+QuotedStr(DM1.cdsPadre.FieldByName('TABLA').AsString)+'  AND MODULOID=''COB'' AND '+
      'NOT EXISTS (SELECT USERID,COMPONENTE FROM SIS000 WHERE USERID='+QuotedStr(DM1.cdsTCredito.Fieldbyname('USERID').AsString)+' AND A.COMPONENTE=COMPONENTE  AND MODULOID=''COB'') ORDER BY A.GRUPO';
DM1.cdsEquiv.Close; DM1.cdsEquiv.DataRequest(xSQL);  DM1.cdsEquiv.Open;
end;

procedure TfCtrAcceso.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfCtrAcceso.BitIzqClick(Sender: TObject);
var xSQL,xGrupo:String;
begin
  If dtgAccesos.DataSource.DataSet.RecordCount=0 Then Exit;
     xSQL:='INSERT INTO SIS004(USERID, TABLA, CAMPO, COMPONENTE, USRAUT, FREG, FRET, USRRET, MODULOID) SELECT USERID, TABLA, CAMPO, COMPONENTE, USRAUT, FREG, SYSDATE,'+QuotedStr(DM1.wUsuario)+',''COB'' FROM SIS000 WHERE USERID='+QuotedStr(DM1.cdsTCredito.FieldByName('USERID').AsString)+' AND CAMPO='+QuotedStr(DM1.cdsTCredito.FieldByName('CAMPO').AsString)+' AND COMPONENTE='+QuotedStr(DM1.cdsTCredito.FieldByName('COMPONENTE').AsString)+' AND MODULOID=''COB'' ';
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     xGrupo:=Copy(DM1.RecuperaDatos('SIS001','COMPONENTE',DM1.cdsTCredito.FieldByName('COMPONENTE').AsString,'GRUPO'),1,1)+'000' ;  DM1.cdsPadre.Locate('GRUPO', VarArrayOf([Trim(xGrupo)]), [loPartialKey]);
     xSQL:='DELETE FROM SIS000 WHERE USERID='+QuotedStr(DM1.cdsTCredito.FieldByName('USERID').AsString)+' AND CAMPO='+QuotedStr(DM1.cdsTCredito.FieldByName('CAMPO').AsString)+' AND COMPONENTE='+QuotedStr(DM1.cdsTCredito.FieldByName('COMPONENTE').AsString)+' AND MODULOID=''COB'' ';
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     CargaAccesos(DM1.cdsUses.Fieldbyname('USERID').AsString);

end;

procedure TfCtrAcceso.BitDerClick(Sender: TObject);
var xSQL:String;
begin
If dtgCompo.DataSource.DataSet.RecordCount=0 Then Exit;
If dtgUsuarios.DataSource.DataSet.RecordCount=0 Then Exit;

xSQL:='INSERT INTO SIS000(USERID,TABLA,CAMPO,COMPONENTE,USRAUT,FREG,MODULOID) VALUES ('+QuotedStr(DM1.cdsUses.Fieldbyname('USERID').AsString)+','+QuotedStr(DM1.cdsEquiv.Fieldbyname('TABLA').AsString)+','+QuotedStr(DM1.cdsEquiv.Fieldbyname('CAMPO').AsString)+','+QuotedStr(DM1.cdsEquiv.Fieldbyname('COMPONENTE').AsString)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''COB'')';
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
CargaAccesos(DM1.cdsUses.Fieldbyname('USERID').AsString);
end;

procedure TfCtrAcceso.dtgOpcionesDblClick(Sender: TObject);
begin
CargaUsrAccesos;
end;

procedure TfCtrAcceso.dtgOpcionesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 if Field.FieldName = 'TABLA' then
    Begin
      dtgOpciones.Canvas.Font.Color := clRed;
      dtgOpciones.DefaultDrawDataCell(rect,Field,State);
    End;

end;

procedure TfCtrAcceso.CargaUsrAccesos;
var xSQL:String;
begin

If dtgAccesos.DataSource.DataSet.Active Then
   xSQL:='SELECT TABLA,GRUPO,CAMPO,COMPONENTE,CAMPODES FROM SIS001 A WHERE COMPONENTE IS NOT NULL AND SUBSTR(GRUPO,1,1)='+QuotedStr(Copy(Trim(DM1.cdsPadre.FieldByName('GRUPO').AsString),1,1))+' AND TABLA='+QuotedStr(DM1.cdsPadre.FieldByName('TABLA').AsString)+' AND MODULOID=''COB'' '+
         'AND NOT EXISTS (SELECT USERID,TABLA,COMPONENTE FROM SIS000 WHERE USERID='+QuotedStr(DM1.cdsUses.FieldByName('USERID').AsString)+' AND A.TABLA=TABLA AND A.COMPONENTE=COMPONENTE) ORDER BY GRUPO '
Else
    xSQL:='SELECT TABLA,GRUPO,CAMPO,COMPONENTE,CAMPODES FROM SIS001 WHERE COMPONENTE IS NOT NULL AND SUBSTR(GRUPO,1,1)='+QuotedStr(Copy(Trim(DM1.cdsPadre.FieldByName('GRUPO').AsString),1,1))+' AND TABLA='+QuotedStr(DM1.cdsPadre.FieldByName('TABLA').AsString)+' AND MODULOID=''COB'' '+
          'ORDER BY GRUPO';



DM1.cdsEquiv.Close; DM1.cdsEquiv.DataRequest(xSQL);  DM1.cdsEquiv.Open;

end;

procedure TfCtrAcceso.dtgOpcionesRowChanged(Sender: TObject);
begin
CargaUsrAccesos;
end;

procedure TfCtrAcceso.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

procedure TfCtrAcceso.BitPrintClick(Sender: TObject);
var xSQL:String;
begin
   If dtgAccesos.DataSource.DataSet.RecordCount=0 Then Exit;
   xSQL:='SELECT A.USERID,A.TABLA,B.CAMPODES,A.USRAUT,FREG FROM SIS000 A,SIS001 B WHERE A.USERID='+QuotedStr(DM1.cdsUses.FieldByName('USERID').AsString)+' AND A.TABLA=B.TABLA AND A.CAMPO=B.CAMPO  AND A.COMPONENTE=B.COMPONENTE AND A.MODULOID=''COB'' ORDER BY TABLA';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(xSQL);
   DM1.cdsCEdu.Open;
   If DM1.cdsCEdu.RecordCount > 0 Then
      Begin
          ppLblTitulo.Caption:='DETALLE DE AUTORIZACION DE ACCESO AL : '+DateToStr(DM1.FechaSys);
          lbluser.Caption:= lblUsuario.Caption;
          lblorig.Caption:= lblOrigen.Caption;
          lblniv.Caption:=  lblNivel.Caption;
          ppREstCta.Print;
          ppREstCta.Cancel;
      End;
      DM1.cdsCEdu.Close;
end;

procedure TfCtrAcceso.EdtBuscarChange(Sender: TObject);
begin
//DM1.cdsUSES
If Length(Trim(EdtBuscar.Text))>0 Then
  DM1.cdsUSES.Locate('USERID', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);

end;

procedure TfCtrAcceso.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
    Begin
      If Length(Trim(EdtBuscar.Text))>0 Then
         Begin
           EdtBuscar.Text:='';
           dtgUsuarios.SetFocus;
         End
       Else
         Begin
           MessageDlg('Debe Digitar El Nombre Del USUARIO, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
           EdtBuscar.SetFocus;
         End;
    End;

end;

procedure TfCtrAcceso.BitAccesoGenClick(Sender: TObject);
var xSQL:String;
begin
xSQL:='SELECT A.USERID,A.USERNOM,A.GRUPO,B.CAMPODES DESGRUPO, A.CAMPODES,A.USRAUT,A.FREG FROM '+
      '(SELECT B.GRUPO,A.USERID,C.USERNOM,B.CAMPODES,USRAUT,FREG FROM SIS000 A,SIS001 B,TGE006 C '+
      'WHERE A.COMPONENTE=B.COMPONENTE AND A.MODULOID=''COB'' AND B.MODULOID=''COB'' AND A.USERID=C.USERID) A, '+
      '(SELECT GRUPO,CAMPODES FROM SIS001 WHERE MODULOID=''COB'' AND SUBSTR(GRUPO,4,1)=''0'' AND CAMPO=''TITULO'') B '+
      'WHERE  SUBSTR(A.GRUPO,1,1)=SUBSTR(B.GRUPO,1,1) ORDER BY USERID,GRUPO ';
DM1.cdsUPro.Close;
DM1.cdsUPro.DataRequest(xSQL);
DM1.cdsUPro.Open;
If DM1.cdsUPro.RecordCount > 0 Then
   Begin
       TitRep.Caption:='ACCESOS AL SISTEMA DE COBRANZAS AL : '+DateToStr(DM1.FechaSys);
       RepAccUsu.Print;
       RepAccUsu.Cancel;
   End;
   DM1.cdsUPro.Close;
end;

// Inicio: COB_201823_HPC
// Cuerpo del procedimiento que exporta a Excel los accesos al sistema
procedure TfCtrAcceso.btnExcelClick(Sender: TObject);
   Var xSql, xArchivo: String;
begin
   xSql := 'SELECT CASE WHEN E.CCOSDES IS NULL THEN ''NO IDENTIFICADO'' ELSE E.CCOSDES END DESC_AREA,'
   +' A.USERID CODIGO_USUARIO, A.USERNOM NOMBRE_USUARIO, A.NIVEL, B.OFDESNOM DESC_OFICINA, A.AREA, C.FECINI_PWD INICIO_VIGENCIA, C.FECFIN_PWD FIN_VIGENCIA'
   +' FROM USERTABLE A, APO110 B, TGE006 C, PLANI201 D, TGE203 E'
   +' WHERE  A.ORIGEN=B.OFDESID AND EXISTS'
   +' (SELECT USERID,GRUPOID FROM TGE007 WHERE A.USERID=USERID AND GRUPOID = ''GRPCOB'')'
   +' AND  A.NIVEL IS NOT NULL  AND A.USERID=C.USERID  AND C.FECEXP IS NULL'
   +' AND C.TRABID = D.TRABID(+) AND D.CCOSID = E.CCOSID(+) ORDER BY CODIGO_USUARIO';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xArchivo := 'Control_Acceso';
   If FileExists(xArchivo+'.slk') Then
      DeleteFile(xArchivo+'.slk');
   DM1.ExportaGridExcel(dbgreporte,xArchivo);
end;
// Fin: COB_201823_HPC

end.
