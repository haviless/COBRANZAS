/////////////////////////////////////////////////
// RECLTIPO := '1' :DEVOLUCION DE CUOTAS PAGADAS EN EFECTIVO
/////////////////////////////////////////////////

unit COB225;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdbedit, wwdblook,db,mant, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn;

type
  TFDevCuoDepo = class(TForm)
    lblApeNom: TLabel;
    dbeAsoNom: TwwDBEdit;
    lblCModular: TLabel;
    dbeCodigoModular: TwwDBEdit;
    lblCPago: TLabel;
    dbeCodigoPago: TwwDBEdit;
    lblDIden: TLabel;
    dbeTipDoc: TwwDBEdit;
    dbeDocIdNum: TwwDBEdit;
    lblSit: TLabel;
    dbeSit: TwwDBEdit;
    dblcBanco: TwwDBLookupCombo;
    dbgDocumen: TwwDBGrid;
    dbgCuatasAso: TwwDBGrid;
    lblFPago: TLabel;
    dblcFormaPago: TwwDBLookupCombo;
    edtFormaPago: TEdit;
    PnlReclamo: TPanel;
    lblMon: TLabel;
    lblObserv: TLabel;
    lblFOpe: TLabel;
    lblBco: TLabel;
    lblNCta: TLabel;
    lblNDoc: TLabel;
    StaticText2: TStaticText;
    dblctmoneda: TwwDBLookupCombo;
    dbemoneda: TwwDBEdit;
    dblcChqBanco: TwwDBLookupCombo;
    edtChqBanco: TEdit;
    dbeChqNum: TwwDBEdit;
    dbeChqCuenta: TwwDBLookupCombo;
    dbeFOperacion: TwwDBDateTimePicker;
    mmObse: TMemo;
    Label1: TLabel;
    edtMonto: TEdit;
    Z2bbtnBorrar: TfcShapeBtn;
    lblMtoAPagar: TLabel;
    Image1: TImage;
    bbtnSigue: TfcShapeBtn;
    dbeDevolucion: TwwDBEdit;
    dbeAsoId: TwwDBEdit;
    lblAsoid: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeAsoNomExit(Sender: TObject);
    procedure dbeCodigoModularExit(Sender: TObject);
    procedure dblcBancoExit(Sender: TObject);
    procedure dbgDocumenDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcFormaPagoExit(Sender: TObject);
    procedure dblctmonedaExit(Sender: TObject);
    procedure dblcChqBancoExit(Sender: TObject);
    procedure dbeFOperacionExit(Sender: TObject);
    procedure dbeChqNumExit(Sender: TObject);
    procedure dbgCuatasAsoFieldChanged(Sender: TObject; Field: TField);
    procedure Z2bbtnBorrarClick(Sender: TObject);
    procedure bbtnSigueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgCuatasAsoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
    xAsoid,xCuentaid,xCredId,xCptoid,xVouch,xTmonid,xCcBcoid,xClauxid,xBancoid  : String;
    xmoneda,xFPagoid,xCiaid : String;
    xAnos,xMesS,xDiaS : Word;
    xMto : Double;
    xaddMeses : Array[1..60] of String;
    xCorreWhere, xCorreWherex, xCorreWherey : String; //** Where solo para el correlativ del Crédito
    xCorre : String;                                  //** para el correlativ del numero de crédito
    xPaso  : Boolean;                                 //** True = el correlativ es valido
    xCorreCadena, xTipocorre, xCorreASOID, xCorreCampo, xArea, xTabla, xEstid, xEstado, xCreano, xCremes : String;
    xEstado0,xEstado1,xEstado2,xEstado4,xEstid0,xEstid1,xEstid2,xEstado3,xEstid3,xEstid4 : String;
    xCeros : Integer;
    xEstid5,xEstid6,xEstid7,xEstid8 : String;
    xEstado5,xEstado6,xEstado7,xEstado8 : String;
    procedure CargaBusqueda;
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
    procedure LevantaFiltro(xCampo: String);
    procedure cargadocumentos;
    procedure addMeses;
    procedure Correlativo;                //** llama a CorreCred y BuscaCorre
    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
    Procedure BuscaCorre;                 //** para constatar que nop exista el numero del crédito
  public
    { Public declarations }
  end;

var
  FDevCuoDepo: TFDevCuoDepo;

implementation

uses COBDM1,COB001;

{$R *.DFM}

procedure TFDevCuoDepo.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFDevCuoDepo.dbeAsoNomExit(Sender: TObject);
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
end;

procedure TFDevCuoDepo.dbeCodigoModularExit(Sender: TObject);
var
 xSql : String;
begin
  If Length(trim(dbeCodigoModular.Text)) > 0 then
   xSQL:='SELECT * FROM APO201 WHERE ASOCODMOD='+QuotedStr(Trim(dbeCodigoModular.Text))
  else
   exit;
  DM1.cdsPadre.Close;
  DM1.cdsPadre.DataRequest(xSQL);
  DM1.cdsPadre.Open;
end;

procedure TFDevCuoDepo.dblcBancoExit(Sender: TObject);
var
 xSql,xWhere : String;
begin
   xBancoid := dblcBanco.text;
   xClauxid := 'AS'; //dm1.cdsBcos.fieldByName('CLAUXID').AsString;
   DM1.FiltraCDS(DM1.cdsCBcos, 'SELECT * FROM TGE106 WHERE BANCOID='+
                 quotedstr(dblcBanco.text)+' AND CIAID='+quotedstr(dm1.cdsCia.FieldByName('CIAID').AsString));
   xCcBcoid := DM1.cdsCBcos.FieldByName('CCBCOID').AsString;
   xTmonid := DM1.cdsCBcos.FieldByName('TMONID').AsString;
   xVouch  := DM1.cdsCBcos.FieldByName('CCBCOVOUCH').AsString;

   xSql := 'select cptoid,cuentaid from caja201 where CPTOEQUI ='+quotedstr('DEVCRECUO');
   dm1.cdsqry.close;
   dm1.cdsqry.datarequest(xSql);
   dm1.cdsqry.open;
   xCptoid := dm1.cdsqry.FieldByName('CPTOID').AsString; //DM1.cdsCBcos.FieldByName('CPTOID').AsString;
   xCuentaid := dm1.cdsqry.FieldByName('CUENTAID').AsString; //DM1.cdsCBcos.FieldByName('CTAPRINC').AsString;
end;

procedure TFDevCuoDepo.cargabusqueda;
var
 xSql : String;
begin
  dbeAsoNom.text := DM1.cdsPadre.FieldByName('ASOAPENOM').AsString;
  dbeAsoid.Text  := DM1.cdsPadre.FieldByName('ASOID').AsString;
  dbeCodigoModular.text := DM1.cdsPadre.FieldByName('ASOCODMOD').AsString;
  xAsoid := DM1.cdsPadre.FieldByName('ASOID').AsString;
  dbeCodigoPago.text := DM1.cdsPadre.FieldByName('ASOCODPAGO').AsString;
  Dm1.Displaydescrip('prvSQL','TGE159','TIPDOCABR','TIPDOCCOD='+quotedstr(DM1.cdsPadre.FieldByName('TIPDOCCOD').AsString),'TIPDOCABR');
  dbeTipDoc.Text := Dm1.cdsQry.FieldByName('TIPDOCABR').AsString;
  dbeDocIdNum.text := Dm1.cdsPadre.FieldByName('ASODNI').AsString;
  dbeSit.text := Dm1.cdsPadre.FieldByName('ASOTIPID').AsString;
  cargadocumentos;
end;

procedure TFDevCuoDepo.LevantaFiltro(xCampo: String);
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
    Mtx.Registros       := 30;
    Mtx.SectionName     := 'AsociaX';
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

//** AL HACER DOBLE CLICK EN ALGUNA FILA DEL MANT
procedure TFDevCuoDepo.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL : String;
begin
   xSQL := 'Select * From APO201'
          +' Where ASOID ='+QuotedStr(DM1.cdsAsoX.FieldByName('ASOID').AsString);
   DM1.FiltraCDS(DM1.cdsPadre,xSQL);
   cargabusqueda;
   TMant(Sender).FMant.Close;
end;

procedure TFDevCuoDepo.cargadocumentos;
var
 xsql, sWhere, xFP : String;
begin
  //xSql := 'select * from cre310 where asoid = '+quotedstr(xAsoid)+
  //        ' and credocpag is not null order by credocpag,credid,creano,cremes';

  sWhere:=' ( FLGCANC='+quotedstr('S')+' AND TIPO='+quotedstr('D')+' ) '
         +   'OR ( TIPO='+quotedstr('M')+' ) '
         +   'OR ( TIPO='+quotedstr('R')+' ) ';

  dm1.DisplayDescrip('prvTGE','COB101','FORPAGOID, TIPO',sWhere,'FORPAGOID');

  DM1.cdsQry.First;
  xFP:=''''+DM1.cdsQry.FieldbYNAME('FORPAGOID').AsString+'''';
  DM1.cdsQry.Next;
  while not dm1.cdsqry.Eof do begin
     xFP:=xFP+', '''+DM1.cdsQry.FieldbYNAME('FORPAGOID').AsString+'''';
     DM1.cdsQry.Next;
  end;

  xSql := 'select distinct credocpag, credid, TO_DATE(foperac,''DD/MM/YYY'') FECHA'+
          ' from CRE310 where asoid = '+quotedstr(xAsoid)+
          ' and credocpag is not null'+
          ' and forpagid IN ( '+ xFP + ' ) ';
  dm1.cdsQry1.close;
  dm1.cdsQry1.datarequest(xSql);
  dm1.cdsQry1.open;

  dbgDocumen.Selected.Clear;
  dbgDocumen.Selected.Add('CREDID'#9'15'#9'CREDITO');
  dbgDocumen.Selected.Add('CREDOCPAG'#9'10'#9'DOCUMENTO');
  dbgDocumen.Selected.Add('FECHA'#9'10'#9'FECHA');
  dbgDocumen.DataSource := dm1.dsQry1;

end;

procedure TFDevCuoDepo.dbgDocumenDblClick(Sender: TObject);
var
 xSql : String;
begin
  xSQL:='SELECT '' '' SUMA, ASOID, CREANO, CREMES, CREMTOCOB, CREAMORT, CREINTERES, CREFLAT, NROOPE, '
       +  'FORPAGABR, TIPCREID, CREDID, CRECUOTA, FORPAGOID, FORPAGOABR, 0.00 MTODEV, '
       +  'CREESTID, CREESTADO '
       +'FROM CRE310 '
       +'WHERE ASOID='+QuotedStr(xAsoid)+' '
       +  'AND CREDOCPAG='+QuotedStr(DM1.cdsQry1.FieldByName('CREDOCPAG').AsString)+' '
       +  'AND NVL(CREFLAGDEV,''XX'')<>''S'' '
       +'ORDER BY CREANO,CREMES';
  dm1.cdsAso.close;
  dm1.cdsAso.datarequest(xSQL);
  dm1.cdsAso.open;

  dm1.cdsAso.FieldByName('SUMA').ReadOnly      := False;
  dm1.cdsAso.FieldByName('CREANO').ReadOnly    := True;
  dm1.cdsAso.FieldByName('CREMES').ReadOnly    := True;
  dm1.cdsAso.FieldByName('CREMTOCOB').ReadOnly := True;
  dm1.cdsAso.FieldByName('CREAMORT').ReadOnly  := True;
  dm1.cdsAso.FieldByName('CREINTERES').ReadOnly:= True;
  dm1.cdsAso.FieldByName('CREFLAT').ReadOnly   := True;
  dm1.cdsAso.FieldByName('FORPAGABR').ReadOnly := True;
  dm1.cdsAso.FieldByName('NROOPE').ReadOnly    := True;
  dm1.cdsAso.FieldByName('CRECUOTA').ReadOnly  := True;

  dbgCuatasAso.Selected.Clear;
  dbgCuatasAso.Selected.add('SUMA'#9'1'#9'+');
  dbgCuatasAso.Selected.add('CREANO'#9'4'#9'Año');
  dbgCuatasAso.Selected.add('CREMES'#9'2'#9'Mes');
  dbgCuatasAso.Selected.add('CREMTOCOB'#9'10'#9'Mto~Cobrado');
  dbgCuatasAso.Selected.add('CREAMORT'#9'10'#9'Mto~Amortizado');
  dbgCuatasAso.Selected.add('CREINTERES'#9'10'#9'Mto~Interes');
  dbgCuatasAso.Selected.add('CREFLAT'#9'10'#9'Mto~Comisión');
  dbgCuatasAso.Selected.add('NROOPE'#9'11'#9'Nro.~Operación');
  dbgCuatasAso.Selected.add('FORPAGABR'#9'15'#9'Forma~Pago');
  dbgCuatasAso.Selected.add('CRECUOTA'#9'5'#9'Cuota');
  dbgCuatasAso.Selected.add('MTODEV'#9'10'#9'Monto~Devolución');

  dbgCuatasAso.DataSource := dm1.dsAso;
  dbgCuatasAso.SetControlType('SUMA',fctCheckBox, 'S;N');
  TNumericField(DM1.cdsAso.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsAso.FieldByName('CREAMORT')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsAso.FieldByName('CREFLAT')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsAso.FieldByName('CREINTERES')).DisplayFormat:='###,###,##0.00';
  dblcFormaPago.TEXT := DM1.cdsFormaPago.FieldByName('FORPAGOID').AsString; //'02';
  dblcFormaPago.Onexit(dblcFormaPago);
  dm1.cdsAso.First;
  while not dm1.cdsAso.eof do
   begin
    dm1.cdsAso.Edit;
    dm1.cdsAso.FieldByName('SUMA').AsString := 'S';
    dm1.cdsAso.next;
   end;
   dm1.cdsAso.FieldByName('SUMA').ReadOnly      := True;
end;

procedure TFDevCuoDepo.FormActivate(Sender: TObject);
var
 xWhere,xSQL : string;
begin
  //** PARA ACTUALIZAR CAJA STANDAR
  dm1.cdsCia.Close;
  dm1.cdsCia.DataRequest('SELECT * FROM TGE101 WHERE CIARETIGV=''N''');
  dm1.cdsCia.Open;
  xCiaid := dm1.cdsCia.FieldByName('CIAID').AsString;
  DM1.FiltraTabla(DM1.cdsBcos,'TGE105','BANCOID' );
  DM1.cdsBcos.Filter := 'BCOTIPCTA = ''C''';
  DM1.cdsBcos.Filtered := True;
  dblcBanco.text := Dm1.cdsBcos.FieldByName('BANCOID').AsString;
  dblcBanco.OnExit(dblcBanco);
  xWhere := 'FLGOFICIO = '+quotedstr('N');
  xFPagoid := DM1.DisplayDescrip('prvSQL','CRE104','FPAGOID',xWhere,'FPAGOID');

  dbgCuatasAso.Enabled := True;

  //** DEVOLUCION
  xEstado8 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('F'),'ESTDES');
  xEstid8  := DM1.cdsQry.FieldByName('ESTID').AsString;

  //** EN PROCESO DE COBRANZA
  xEstado7 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('3'),'ESTDES');
  xEstid7  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** NO PAGADO
  xEstado5 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
  xEstid5  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** CANCELADO
  xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Y'),'ESTDES');
  xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** CANCELADO A
  xEstado6 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
  xEstid6  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** POR COBRAR
  xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
  xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** PARCIAL
  xEstado4 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
  xEstid4  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** PAGADO
  xEstado3 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('C'),'ESTDES');
  xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;


   //** CANCELADO
   xEstado0 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Y'),'ESTDES');
   xEstid0  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** CANCELADO A
   xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Z'),'ESTDES');
   xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** PARCIAL
   xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
   xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;

   //** DEVOLUCION
   xEstado3 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('F'),'ESTDES');
   xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;

  //** POR COBRAR
  xEstado4 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
  xEstid4  := DM1.cdsQry.FieldByName('ESTID').AsString;


  if DM1.wModo='A' then
  begin
     dbeAsoNom.enabled:=(DM1.wModo='A');
     //edtMonto.enabled:=(DM1.wModo='A');
     dbgDocumen.enabled:=(DM1.wModo='A');
     dbgCuatasAso.enabled:=(DM1.wModo='A');
     dbeFOperacion.enabled:=(DM1.wModo='A');

     dbeAsoId.text        := '';
     xAsoid               := '';
     dbeAsoNom.text       := '';
     dbeCodigoModular.text:= '';
     edtMonto.text        := '0.00';
     lblMtoAPagar.caption := '0.00';

     dbeCodigoPago.text := '';
     dbeTipDoc.Text := '';
     dbeDocIdNum.text := '';
     dbeSit.text := '';

     DM1.cdsDevolucion.Insert;
     xSQL := 'SELECT MAX(CAST(DEVID AS INTEGER)) NUEVODEV '
           + 'FROM COB316 WHERE MODO=''CORRECCION''';
     DM1.FiltraCds(DM1.cdsQry, xSQL);
     If DM1.cdsQry.FieldByName('NUEVODEV').AsString <> '' Then
      DM1.cdsDevolucion.FieldByName('DEVID').AsString :=
      DM1.StrZero( IntToStr(StrToInt(DM1.cdsQry.FieldByName('NUEVODEV').AsString)+1), DM1.cdsDevolucion.FieldByName('DEVID').Size)
     Else
       DM1.cdsDevolucion.FieldByName('DEVID').AsString :=
       DM1.StrZero('1', DM1.cdsDevolucion.FieldByName('DEVID').Size);

     xSql := 'select distinct credocpag,credid,TO_DATE(foperac,''DD/MM/YYY'') FECHA'+
             ' from cre310 where asoid = '+quotedstr('XX')+
             ' and forpagid ='+Quotedstr('XX')+
             ' AND CREDOCPAG='+QuotedStr('XX')+
             ' AND CREDID='+QuotedStr('XX');

     dm1.cdsQry1.close;
     dm1.cdsQry1.datarequest(xSql);
     dm1.cdsQry1.open;

     dbgDocumen.Selected.Clear;
     dbgDocumen.Selected.Add('CREDID'#9'15'#9'CREDITO');
     dbgDocumen.Selected.Add('CREDOCPAG'#9'10'#9'DOCUMENTO');
     dbgDocumen.Selected.Add('FECHA'#9'10'#9'FECHA');
     dbgDocumen.DataSource := dm1.dsQry1;


     xSQL:='SELECT ''S'' SUMA,ASOID,CREANO,CREMES,CREMTOCOB,CREAMORT,CREINTERES,CREFLAT,NROOPE,FORPAGABR,TIPCREID, '+
           ' CREDID,CRECUOTA,CREMTOCOB,FORPAGOID,FORPAGOABR '+
           ' FROM CRE310'+
           ' WHERE ASOID='+QuotedStr('XX')+' '+
           ' AND CREDOCPAG='+QuotedStr('XX')+
           ' AND CREDID='+QuotedStr('XX')+
           ' AND NVL(CREFLAGDEV,''XX'')=''S'' '+
           ' ORDER BY CREANO,CREMES';
     dm1.cdsAso.close;
     dm1.cdsAso.datarequest(xSQL);
     dm1.cdsAso.open;

     dm1.cdsAso.FieldByName('CREANO').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREMES').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREMTOCOB').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREAMORT').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREINTERES').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREFLAT').ReadOnly := True;
     dm1.cdsAso.FieldByName('FORPAGABR').ReadOnly := True;
     dm1.cdsAso.FieldByName('NROOPE').ReadOnly := True;

     dbgCuatasAso.Selected.Clear;
     dbgCuatasAso.Selected.add('SUMA'#9'1'#9'+');
     dbgCuatasAso.Selected.add('CREANO'#9'4'#9'Año');
     dbgCuatasAso.Selected.add('CREMES'#9'2'#9'Mes');
     dbgCuatasAso.Selected.add('CREMTOCOB'#9'10'#9'Mto~Cobrado');
     dbgCuatasAso.Selected.add('CREAMORT'#9'10'#9'Mto~Amortizado');
     dbgCuatasAso.Selected.add('CREINTERES'#9'10'#9'Mto~Interes');
     dbgCuatasAso.Selected.add('CREFLAT'#9'10'#9'Mto~Comisión');
     dbgCuatasAso.Selected.add('NROOPE'#9'11'#9'Nro.~Operación');
     dbgCuatasAso.Selected.add('FORPAGABR'#9'10'#9'Forma~Pago');
     dbgCuatasAso.Selected.add('CRECUOTA'#9'5'#9'Cuota');

     dbgCuatasAso.DataSource := dm1.dsAso;
     dbgCuatasAso.SetControlType('SUMA',fctCheckBox, 'S;N');
     TNumericField(DM1.cdsAso.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,##0.00';
     TNumericField(DM1.cdsAso.FieldByName('CREAMORT')).DisplayFormat:='###,###,##0.00';
     TNumericField(DM1.cdsAso.FieldByName('CREFLAT')).DisplayFormat:='###,###,##0.00';
     TNumericField(DM1.cdsAso.FieldByName('CREINTERES')).DisplayFormat:='###,###,##0.00';

     dbeAsoNom.SetFocus;
  end;

  if DM1.wModo='M' then
  begin
     dbeAsoId.text        := DM1.cdsDevolucion.fieldbyname('ASOID').AsString;
     xAsoid               := dbeAsoId.text;
     dbeAsoNom.text       := DM1.DisplayDescrip('prvSQL','APO201','ASOAPENOM,ASOCODPAGO,TIPDOCCOD,ASODNI,ASOTIPID','ASOID='+QuotedStr(dbeAsoId.text),'ASOAPENOM');
     dbeCodigoModular.text:= DM1.cdsDevolucion.fieldbyname('ASOCODMOD').AsString;
     dbeFOperacion.date   := DM1.cdsDevolucion.FieldByName('RECLFMOV').AsDateTime;
     edtMonto.text        := FloatToStr(DM1.cdsDevolucion.FieldByName('RECLTOTAL').AsFloat);
     lblMtoAPagar.caption := FloatToStr(DM1.cdsDevolucion.FieldByName('RECLTOTAL').AsFloat);
     dbeDocIdNum.text := Dm1.cdsQry.FieldByName('ASODNI').AsString;
     dbeSit.text := Dm1.cdsQry.FieldByName('ASOTIPID').AsString;
     dbeCodigoPago.text := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
     Dm1.Displaydescrip('prvSQL','TGE159','TIPDOCABR','TIPDOCCOD='+quotedstr(DM1.cdsQry.FieldByName('TIPDOCCOD').AsString),'TIPDOCABR');
     dbeTipDoc.Text := Dm1.cdsQry.FieldByName('TIPDOCABR').AsString;

     dbeFOperacion.enabled:=(DM1.wModo='A');
     dbeAsoNom.enabled:=(DM1.wModo='A');
     //edtMonto.enabled:=(DM1.wModo='A');
     dbgDocumen.enabled:=(DM1.wModo='A');
     dbgCuatasAso.enabled:=(DM1.wModo='A');

     xSQL:= ' FLGCANC='+quotedstr('S')+' AND TIPO ='+quotedstr('E');
     dm1.DisplayDescrip('prvTGE','COB101','FORPAGOID, TIPO',xSQL,'FORPAGOID');


     xSql := 'select distinct credocpag,credid,TO_DATE(foperac,''DD/MM/YYY'') FECHA'+
             ' from cre310 where asoid = '+quotedstr(xAsoid)+
             ' and forpagid ='+Quotedstr(DM1.cdsQry.Fieldbyname('FORPAGOID').AsString)+
             ' AND CREDOCPAG='+QuotedStr(DM1.cdsDevolucion.fieldbyname('CREDOCPAG').AsString)+
             ' AND CREDID='+QuotedStr(DM1.cdsDevolucion.fieldbyname('CREDID').AsString);

     dm1.cdsQry1.close;
     dm1.cdsQry1.datarequest(xSql);
     dm1.cdsQry1.open;

     dbgDocumen.Selected.Clear;
     dbgDocumen.Selected.Add('CREDID'#9'15'#9'CREDITO');
     dbgDocumen.Selected.Add('CREDOCPAG'#9'10'#9'DOCUMENTO');
     dbgDocumen.Selected.Add('FECHA'#9'10'#9'FECHA');
     dbgDocumen.DataSource := dm1.dsQry1;


     xSQL:='SELECT ''S'' SUMA,ASOID,CREANO,CREMES,CREMTOCOB,CREAMORT,CREINTERES,CREFLAT,NROOPE,FORPAGABR,TIPCREID, '+
           ' CREDID,CRECUOTA,CREMTOCOB,FORPAGOID,FORPAGOABR '+
           ' FROM CRE310'+
           ' WHERE ASOID='+QuotedStr(xAsoid)+' '+
           ' AND CREDOCPAG='+QuotedStr(DM1.cdsDevolucion.FieldByName('CREDOCPAG').AsString)+
           ' AND CREDID='+QuotedStr(DM1.cdsDevolucion.FieldByName('CREDID').AsString)+
           ' AND NVL(CREFLAGDEV,''XX'')=''S'' '+
           ' ORDER BY CREANO,CREMES';
     dm1.cdsAso.close;
     dm1.cdsAso.datarequest(xSQL);
     dm1.cdsAso.open;

     dm1.cdsAso.FieldByName('CREANO').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREMES').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREMTOCOB').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREAMORT').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREINTERES').ReadOnly := True;
     dm1.cdsAso.FieldByName('CREFLAT').ReadOnly := True;
     dm1.cdsAso.FieldByName('FORPAGABR').ReadOnly := True;
     dm1.cdsAso.FieldByName('NROOPE').ReadOnly := True;

     dbgCuatasAso.Selected.Clear;
     dbgCuatasAso.Selected.add('SUMA'#9'1'#9'+');
     dbgCuatasAso.Selected.add('CREANO'#9'4'#9'Año');
     dbgCuatasAso.Selected.add('CREMES'#9'2'#9'Mes');
     dbgCuatasAso.Selected.add('CREMTOCOB'#9'10'#9'Mto~Cobrado');
     dbgCuatasAso.Selected.add('CREAMORT'#9'10'#9'Mto~Amortizado');
     dbgCuatasAso.Selected.add('CREINTERES'#9'10'#9'Mto~Interes');
     dbgCuatasAso.Selected.add('CREFLAT'#9'10'#9'Mto~Comisión');
     dbgCuatasAso.Selected.add('NROOPE'#9'11'#9'Nro.~Operación');
     dbgCuatasAso.Selected.add('FORPAGABR'#9'10'#9'Forma~Pago');
     dbgCuatasAso.Selected.add('CRECUOTA'#9'5'#9'Cuota');

     dbgCuatasAso.DataSource := dm1.dsAso;
     dbgCuatasAso.SetControlType('SUMA',fctCheckBox, 'S;N');
     TNumericField(DM1.cdsAso.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,##0.00';
     TNumericField(DM1.cdsAso.FieldByName('CREAMORT')).DisplayFormat:='###,###,##0.00';
     TNumericField(DM1.cdsAso.FieldByName('CREFLAT')).DisplayFormat:='###,###,##0.00';
     TNumericField(DM1.cdsAso.FieldByName('CREINTERES')).DisplayFormat:='###,###,##0.00';


  end;


end;

procedure TFDevCuoDepo.dblcFormaPagoExit(Sender: TObject);
var
 sWhere : String;
begin
  If Length(dblcFormaPago.text) = 0 then exit;
  dblctmoneda.Text := 'N';
  dblctmoneda.OnExit(dblctmoneda);
  sWhere:= 'FORPAGOID = '+ quotedstr(dblcFormaPago.text) ;
  edtFormaPago.text:=dm1.DisplayDescrip('prvTGE','COB101','FORPAGODES, TIPO',sWhere,'FORPAGODES');
  PnlReclamo.enabled := True;
  dbeFOperacion.Date := xFechasys;
  if dm1.cdsQry.FieldbyName('TIPO').AsString <> 'D' then
   begin
    dblcChqBanco.Enabled:=False;
    dbeChqCuenta.Enabled:=False;
    edtChqBanco.Text:='';
    dbeChqNum.Enabled := False;
    dbeChqNum.OnExit(dbeChqNum);
    dbeFOperacion.setfocus;
   end
  else
   begin
    dblcChqBanco.text := '04';
    dblcChqBanco.Enabled:=True;
    dbeChqCuenta.Enabled:=True;
    dbeChqNum.Enabled := True;
    dblcChqBanco.Onexit(dblcChqBanco);
    dblcChqBanco.SetFocus;
   end;
end;

procedure TFDevCuoDepo.dblctmonedaExit(Sender: TObject);
var
 sWhere : String;
begin
  sWhere:= 'TMONID = '+ quotedstr(dblcTMoneda.text) ;
  dbeMoneda.text:=dm1.DisplayDescrip('prvTGE','TGE103','TMONABR,TMONDES',sWhere,'TMONABR');
  xmoneda := dm1.cdsqry.fieldbyname('TMONDES').AsString;
end;

procedure TFDevCuoDepo.dblcChqBancoExit(Sender: TObject);
var
 sWhere : String;
begin
 sWhere:= 'BANCOID = '+ quotedstr(dblcChqBanco.text);
 edtChqBanco.text:=dm1.DisplayDescrip('prvSQL','TGE105','BANCONOM, BANCOPRF',sWhere,'BANCONOM');
 if Length(Trim(edtChqBanco.text)) > 0 then
  DM1.FiltraCDS(DM1.cdsCuentas, 'SELECT DISTINCT CCBCOID FROM TGE106 WHERE BANCOID='+quotedStr(dblcChqBanco.text));
end;

procedure TFDevCuoDepo.dbeFOperacionExit(Sender: TObject);
begin
  DecodeDate(dbeFOperacion.Date,xAnos,xMesS,xDiaS);
end;

procedure TFDevCuoDepo.dbeChqNumExit(Sender: TObject);
begin
  //edtMonto.enabled := true;
  Z2bbtnBorrar.enabled := true;
  //dbgCronogVen.enabled := True;
end;

procedure TFDevCuoDepo.dbgCuatasAsoFieldChanged(Sender: TObject;
  Field: TField);
var
 xZ,xI : Integer;
 xBookMark : TBookMark;
 xEsta,xTrue : boolean;
begin
  //** pjsv - si el campo modificado es el correcto
  xTrue := False;
  xEsta := False;
  IF Field.DisplayName = 'SUMA' then
   begin
      xBookMark := (Sender as TwwDBGrid).DataSource.DataSet.GetBookmark;
      //xMto := 0;
      try
         (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
         (Sender as TwwDBGrid).DataSource.DataSet.First;
         {
         While not (Sender as TwwDBGrid).DataSource.DataSet.Eof do
          begin
            {
           //** pjsv - si el campo FLGSALDO = 'S' y CREFDEV = 'S' (con el Check)
           If (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SUMA').AsString = 'S' then
            begin
              xMto :=  xMto+(Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREAMORT').AsFloat +
                      (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREINTERES').AsFloat +
                      (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREFLAT').AsFloat;
            end;
            (Sender as TwwDBGrid).DataSource.DataSet.next;
          end;
          }
          {lblMtoAPagar.Caption := FloatToStrF(xMto,ffFixed,15,2);
          edtMonto.Text := FloatToStrF(xMto,ffFixed,15,2);
          if xMto>0 then
              bbtnSigue.enabled :=True
          else
              bbtnSigue.enabled :=False;
          }
      Finally
       (Sender as TwwDBGrid).DataSource.DataSet.GotoBookmark(xBookMark);
       (Sender as TwwDBGrid).DataSource.DataSet.FreeBookmark(xBookMark);
       (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
      end;
   end;

  IF Field.DisplayName = 'MTODEV' then
   begin
      xBookMark := (Sender as TwwDBGrid).DataSource.DataSet.GetBookmark;
      xMto := 0;
      try
         (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
         (Sender as TwwDBGrid).DataSource.DataSet.First;
         While not (Sender as TwwDBGrid).DataSource.DataSet.Eof do
          begin
           //** pjsv - si el campo FLGSALDO = 'S' y CREFDEV = 'S' (con el Check)
           If (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SUMA').AsString = 'S' then
            begin
              if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('MTODEV').AsFloat<0 then
              begin
                 ShowMessage('Error : Monto no puede ser Negativo');
                 (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('MTODEV').AsFloat:=0;
              end;
              xMto := xMto+(Sender as TwwDBGrid).DataSource.DataSet.FieldByName('MTODEV').AsFloat;
            end;
            (Sender as TwwDBGrid).DataSource.DataSet.next;
          end;
          lblMtoAPagar.Caption := FloatToStrF(xMto,ffFixed,15,2);
          edtMonto.Text := FloatToStrF(xMto,ffFixed,15,2);
          if xMto>0 then
              bbtnSigue.enabled :=True
          else
              bbtnSigue.enabled :=False;

      Finally
       (Sender as TwwDBGrid).DataSource.DataSet.GotoBookmark(xBookMark);
       (Sender as TwwDBGrid).DataSource.DataSet.FreeBookmark(xBookMark);
       (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
      end;
  END;

end;

procedure TFDevCuoDepo.Z2bbtnBorrarClick(Sender: TObject);
var
 xI : Integer;
begin
 try
    Screen.Cursor := crHourglass;
    DM1.cdsAso.DisableControls;
    xMto := 0;
    dm1.cdsAso.FieldByName('SUMA').ReadOnly := False;
    dm1.cdsAso.First;
    while not dm1.cdsAso.Eof do
     begin
      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByname('SUMA').AsString:='';
      dm1.cdsAso.Next;
     end;
     dm1.cdsAso.FieldByName('SUMA').ReadOnly:= True;
     edtMonto.text :='0.00';
     lblMtoAPagar.caption :='0.00';
     bbtnSigue.enabled := False;
 Finally
  dm1.cdsAso.First;
  DM1.cdsAso.EnableControls;
  Screen.Cursor := crDefault;
 end;
end;

procedure TFDevCuoDepo.bbtnSigueClick(Sender: TObject);
var
 xTipo,sWhere,xEstadoZ,xEstidZ,xSql,sSQL,xCuoPag : String;
 xTCambio,xCapital,xmtoint,xmtoflat,xMtoSal : Double;
 xcount : Integer;

begin

   If dm1.cdsAso.RecordCount = 0 Then
   begin
     Beep;
     MessageDlg('Falta Ingresar el Detalle de la Devolución!', mtInformation, [mbOk], 0);
     Exit;
   end;

   if dbeFOperacion.Date=0 then raise exception.create('Falta fecha de Operacion');

   if Length(Trim(edtMonto.Text))=0 then raise exception.Create('El  monto no puedes estar vacio');

   Screen.Cursor := crHourGlass;

   // tipo de cambio : Compra
   sWhere := 'TMONID ='+QuotedStr('D')+
           ' AND FECHA = '+QuotedStr(FormatDateTime(wFormatFecha,dbeFOperacion.Date));
   If Length(DM1.DisplayDescrip('prvTGE', 'TGE107',  'TCAMVPC', sWhere, 'TCAMVPC'))>0 Then
      xTCambio := DM1.cdsQry.FieldByName('TCAMVPC').AsFloat
   Else xTCambio := 0;

 try
  if MessageDlg('Esta Seguro(a) de Devolver',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   begin
    screen.cursor := crHourglass;

    DM1.cdsDevolucion.FieldByName('ASOID').AsString      := dbeAsoId.Text;
    DM1.cdsDevolucion.FieldByName('ASOCODMOD').AsString  := dbeCodigoModular.Text;
    DM1.cdsDevolucion.FieldByName('USUARIO').AsString    := DM1.wUsuario;
    DM1.cdsDevolucion.FieldByName('RECLFMOV').AsDateTime := dbeFOperacion.Date;
    DM1.cdsDevolucion.FieldByName('RECLTIPO').AsString   := '1';
    DM1.cdsDevolucion.FieldByName('FREG').AsDateTime     := Date;
    DM1.cdsDevolucion.FieldByName('HREG').AsDateTime     := Date+SysUtils.Time;
    DM1.cdsDevolucion.FieldByName('RECLTMONID').AsString := 'N';
    DM1.cdsDevolucion.FieldByName('RECLTOTAL').AsFloat   := strtoFloat(edtMonto.Text);
    DM1.cdsDevolucion.fieldbyname('CREDOCPAG').AsString  := DM1.cdsQry1.FieldByName('CREDOCPAG').AsString;
    DM1.cdsDevolucion.fieldbyname('CREDID').AsString     := DM1.cdsQry1.FieldByName('CREDID').AsString;
    DM1.cdsDevolucion.fieldbyname('MODO').AsString       := 'CORRECCION';
    DM1.AplicaDatos(DM1.cdsDevolucion, '');

    xMtoSal:=DM1.cdsDevolucion.FieldByName('RECLTOTAL').AsFloat;

    sWhere:= 'FORPAGOID = '+ quotedstr(dblcFormaPago.text) ;
    xTipo := dm1.DisplayDescrip('prvTGE','COB101','TIPO',sWhere,'TIPO');

    dblcChqBanco.Enabled:=False;
    dbeChqCuenta.Enabled:=False;
    edtChqBanco.Text:='';
    dbeChqNum.Enabled := False;

    //** ACTUALIZO NUEVO REGISTRO
    xAsoid  :='';
    xCredId :='';
    dm1.cdsAso.First;
    addMeses;
    while not dm1.cdsAso.eof do
     begin
       if ( dm1.cdsAso.FieldByName('SUMA').AsString='S') AND ( dm1.cdsAso.FieldByName('MTODEV').AsFloat>0 ) then
       begin

          xMtoSal:=dm1.cdsAso.FieldByName('MTODEV').AsFloat;

          if xMtoSal>DM1.cdsAso.FieldByName('CREFLAT').AsFloat then
          begin
             xMtoFlat:=(-1)*DM1.cdsAso.FieldByName('CREFLAT').AsFloat;
             xMtoSal :=xMtoSal-DM1.cdsAso.FieldByName('CREFLAT').AsFloat;
          end          else begin
             xMtoFlat:=(-1)*xMtoSal;
             xMtoSal :=0;
          end;

          if xMtoSal>DM1.cdsAso.FieldByName('CREINTERES').AsFloat then
          begin
             xMtoInt:=(-1)*DM1.cdsAso.FieldByName('CREINTERES').AsFloat;
             xMtoSal :=xMtoSal-DM1.cdsAso.FieldByName('CREINTERES').AsFloat;
          end
          else begin
             xMtoInt:=(-1)*xMtoSal;
             xMtoSal :=0;
          end;

          if xMtoSal>DM1.cdsAso.FieldByName('CREAMORT').AsFloat then
          begin
             xCapital:=(-1)*DM1.cdsAso.FieldByName('CREAMORT').AsFloat;
             xMtoSal    :=xMtoSal-DM1.cdsAso.FieldByName('CREAMORT').AsFloat;
          end
          else begin
             xCapital:=(-1)*xMtoSal;
             xMtoSal    :=0;
          end;

          //** se setea los estados dependiendo del saldo y el estado que tuvo
          If Dm1.FRound(DM1.cdsAso.FieldByName('CREMTOCOB').AsFloat-DM1.cdsAso.FieldByName('MTODEV').AsFloat,15,2)=0 then
          begin
             xEstadoZ := DM1.cdsAso.FieldByName('CREESTANTDES').AsString;
             xEstidZ  := DM1.cdsAso.FieldByName('CREESTANT').AsString;
          end
          else
          begin
             xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('V'),'ESTDES');
             xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
          end;

          xSQL:='INSERT INTO CRE310 (ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,'+
                  'CREDID,CRECUOTA,CREFPAG,CREINTERES,CREFLAT,CREAMORT,CREMTODEV,'+
                  'CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,CIAID,UPROID,DPTOID,UPAGOID,'+
                  'BANCOID,CCBCOID,ASOAPENOM,CIUDID,AREAID,TRANSINTID,FORPAGID,FORPAGABR,'+
                  'CREANO,CREMES,CREESTID,CREESTADO,CREMTOCUO,CREDOCPAG,CREOBS,FORPAGOID,FORPAGOABR,NROOPE,FOPERAC)'+
                  ' VALUES ('+
          quotedstr(DM1.cdsPadre.FieldByName('ASOID').AsString)+','+quotedstr(DM1.cdsPadre.FieldByName('ASOCODMOD').AsString)+','+
          quotedstr(DM1.cdsPadre.FieldByName('ASOCODAUX').AsString)+','+quotedstr(DM1.cdsPadre.FieldByName('USEID').AsString)+','+
          quotedstr(DM1.cdsPadre.FieldByName('ASOCODPAGO').AsString)+','+quotedstr(DM1.cdsAso.FieldByName('TIPCREID').AsString)+','+
          quotedstr(DM1.cdsAso.FieldByName('CREDID').AsString)+','+quotedstr(DM1.cdsAso.FieldByName('CRECUOTA').AsString)+','+
          quotedstr(dbeFOperacion.text)+' ,'+
          FloatToStr( xMtoInt  )+','+
          FloatToStr( xMtoFlat )+','+
          FloatToStr( xCapital )+','+
          FloatToStr( (-1)*( xMtoFlat+xMtoInt+xCapital) )+','+
          '0.00'+','+quotedstr(dblctmoneda.text)+','+FloatToStrF(xTCambio,ffFixed,15,2)+','+
          quotedstr(dm1.wusuario)+','+wRepFecServi+','+wRepTimeServi+','+
          quotedstr(dm1.cdsPadre.FieldByName('CIAID').AsString)+','+quotedstr(DM1.cdsPadre.FieldByName('UPROID').AsString)+','+
          quotedstr(DM1.cdsPadre.FieldByName('DPTOID').AsString)+','+quotedstr(DM1.cdsPadre.FieldByName('UPAGOID').AsString)+','+
          quotedstr(dblcChqBanco.text)+','+quotedstr(dbeChqCuenta.text)+','+quotedstr(DM1.cdsPadre.FieldByName('ASOAPENOM').AsString)+','+
          quotedstr(DM1.cdsPadre.FieldByName('CIUDID').AsString)+','+quotedstr('COB')+','+quotedstr('COR')+','+
          quotedstr(dblcFormaPago.text)+','+quotedstr(copy(edtFormaPago.text,1,15))+','+quotedstr(dm1.cdsAso.FieldByName('CREANO').AsString)+','+
          quotedstr(dm1.cdsAso.FieldByName('CREMES').AsString)+',';

          xSql := xSql + quotedstr(xEstidZ)+','+quotedstr(xEstadoZ)+',0 '+
                  ','+quotedstr(dbeChqNum.text)+
                  ','+quotedstr(mmObse.text)+
                  ','+quotedstr(dm1.cdsAso.FieldByName('FORPAGOID').AsString)+
                  ','+quotedstr(dm1.cdsAso.FieldByName('FORPAGOABR').AsString)+
                  ','+quotedstr(dbeChqNum.text)+','+quotedstr(dbeFOperacion.text)+')';
          DM1.DCOM1.AppServer.EjecutaSQL( xSQL );

             //** actualizo el cre302
          xSql := 'UPDATE CRE302 SET  CREMTOCOB= nvl(CREMTOCOB,0)-'+''+FLOATTOSTR( (-1)*(xMtoFlat + xMtoInt + xCapital) )+'';
          xSql := xSql + ' ,AREAID='+QuotedStr('COB');
//          xSql := xSql + ' ,CREMTO = CREMTO + '+FLOATTOSTR( xMtoFlat + xMtoInt + xCapital );
          xSql := xSql + ' ,CRESALDO = CRESALDO + '+FLOATTOSTR( (-1)*(xMtoFlat + xMtoInt + xCapital) );
          xSql := xSql + ' ,CREESTID='+QuotedStr(xEstidZ)+' ,CREESTADO='+QuotedStr(xEstadoZ);
          xSql := xSql + ' ,CRECAPITAL = CRECAPITAL -'+''+FloatToStr( (-1)*xCapital )+''+
                         ' ,CREMTOINT  = CREMTOINT  -'+''+FloatToStr( (-1)*xMtoInt  )+''+
                         ' ,CREMTOFLAT = CREMTOFLAT -'+''+FloatToStr( (-1)*xMtoFlat )+''+
                         ' ,CREDOCPAG ='+quotedstr(dbeChqNum.text)+
                         ' ,NROOPE ='+quotedstr(dbeChqNum.text)+
                         ' ,FOPERAC ='+wRepFecServi+
                         ' ,CREMTOEXC=0'+
                         ' Where ASOID=' +QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+
                         ' AND CREDID='  +QuotedStr(DM1.cdsAso.FieldByName('CREDID').AsString)+
                         ' AND TIPCREID='+QuotedStr(DM1.cdsAso.FieldByName('TIPCREID').AsString)+
                         ' AND CRECUOTA='+QuotedStr(DM1.cdsAso.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xAsoid  :=DM1.cdsAso.fieldbyname('ASOID').AsString ;
          xCredId :=DM1.cdsAso.fieldbyname('CREDID').AsString;
          {
          xSQL:=' UPDATE CRE310 SET CREFLAGDEV=''S'' '+
                ' WHERE ASOID='+QuotedStr(xAsoid)+' '+
                ' AND CREDID='+QuotedStr( DM1.cdsAso.FieldByName('CREDID').AsString)+' '+
                ' AND CRECUOTA='+QuotedStr( DM1.cdsAso.FieldByName('CRECUOTA').AsString)+' '+
                ' AND CREDOCPAG='+QuotedStr( DM1.cdsQry1.FieldByName('CREDOCPAG').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          }
       end;

       DM1.cdsAso.Next;
     end;

     xSql := 'SELECT count(asoid) TOTAL FROM CRE302 WHERE ASOID='+quotedstr(xAsoid)+
            ' AND CREDID = '+quotedstr(xCredId)+
            ' AND CREESTID = '+quotedstr(xEstid6);
     dm1.cdsqry1.close;
     dm1.cdsqry1.datarequest(xSql);
     dm1.cdsqry1.open;
     xCount := xCount + dm1.cdsQry1.FieldByName('TOTAL').AsInteger;

      sSQL:= ' SELECT COUNT(ASOID) TOT FROM CRE302 '+
             ' Where ASOID ='+QuotedStr(xAsoid)+
             ' AND CREDID='+Quotedstr(xCredId)+
             ' AND (CREESTID='+QuotedStr(xEstid0)+
             ' OR  CREESTID='+QuotedStr(xEstid1)+')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      xCuoPag:=DM1.cdsQry.FieldByName('TOT').AsString;


      sSQL:= ' SELECT SUM(CREMTOCOB) TOT FROM CRE302 '+
             ' Where ASOID ='+QuotedStr(xAsoid)+
             ' AND CREDID='+QuotedStr(xCredId)+
             ' AND CREESTID in ('+QuotedStr(xEstid1)+','+quotedstr(xEstid6)+','+quotedstr(xEstid4)+')';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(sSQL);
      DM1.cdsQry1.Open;


      xSQL := 'UPDATE CRE301 SET '+
               ' CRESDOACT =  CREMTOTAL - '+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ' ,CREMTOPAG = '+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ' ,CRECUOPAG='+IntToStr(xCount)+' ';
       xSql := xSql +  ' Where ASOID ='+QuotedStr(xAsoid)+
             ' AND CREDID='+QuotedStr(xCredId);
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


       xSQL := 'UPDATE CRE303 SET '+
               ' CRESDOACT =  CREMTOTAL - '+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ' ,CREMTOPAG = '+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ' ,CRECUOPAG='+IntToStr(xCount)+' ';
       xSql := xSql +' Where ASOID ='+QuotedStr(xAsoid)+
             ' AND CREDID='+QuotedStr(xCredId);
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      {
      sSQL:= ' SELECT SUM(CREMTOCOB) TOT FROM CRE302 '+
             ' Where ASOID ='+QuotedStr(xAsoid)+
             ' AND CREDID='+QuotedStr(xCredId)+
             ' AND CREESTID='+QuotedStr(xEstid0);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;

      xSQL := 'UPDATE CRE301 SET '+
               ' CREESTID='+QuotedStr(xEstid4)+
               ' ,CREESTADO='+QuotedStr(xEstado4)+
               ' ,CRESDOACT =  CREMTOTAL - '+FloatToStr(DM1.cdsQry.FieldByName('TOT').AsFloat)+
               ' ,CREMTOPAG = '+FloatToStr(DM1.cdsQry.FieldByName('TOT').AsFloat)+
               ' ,CRECUOPAG='+xCuoPag;
       xSql := xSql +  ' Where ASOID ='+QuotedStr(xAsoid)+
              ' AND CREDID='+QuotedStr(DM1.cdsAso.FieldByName('CREDID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

       xSQL := 'UPDATE CRE303 SET '+
               ' CREESTID='+QuotedStr(xEstid4)+
               ' ,CREESTADO='+QuotedStr(xEstado4)+
               ' ,CRESDOACT =  CREMTOTAL - '+FloatToStr(DM1.cdsQry.FieldByName('TOT').AsFloat)+
               ' ,CREMTOPAG = '+FloatToStr(DM1.cdsQry.FieldByName('TOT').AsFloat)+
               ' ,CRECUOPAG='+xCuoPag;
       xSql := xSql +  ' Where ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsAso.FieldByName('CREDID').AsString);

       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       }
     edtMonto.text := '0.00';
     lblMtoAPagar.caption := '0.00';
     bbtnSigue.Enabled := False;
     Z2bbtnBorrar.Enabled := False;
     dbgCuatasAso.Enabled := False;
     ShowMessage('Corrección Aceptada');
  end
  else
    bbtnSigue.Enabled := True;
 finally
    screen.cursor := crDefault;
 end;

end;

procedure TFDevCuoDepo.addMeses;
var
 xI : Integer;
 xCadena,xMesNom : String;
begin
{ For xI := 1 to 60 do
  xaddMeses[xI] := '';

 For xI := 1 to 60 do
  begin
   If xMeses[xI,1] <> '' then
    begin
     case StrToInt(xMeses[xI,2]) of
      1 : xMesNom := 'ENE';
      2 : xMesNom := 'FEB';
      3 : xMesNom := 'MAR';
      4 : xMesNom := 'ABR';
      5 : xMesNom := 'MAY';
      6 : xMesNom := 'JUN';
      7 : xMesNom := 'JUL';
      8 : xMesNom := 'AGO';
      9 : xMesNom := 'SET';
      10: xMesNom := 'OCT';
      11: xMesNom := 'NOV';
      12: xMesNom := 'DIC';
     end;
     xaddMeses[xI] := xMeses[xI,1]+ '-'+xMesNom;
    end;
  end;

 mmObse.text := Trim(mmObse.text) + '. Devoluciòn por los meses de : ';
 xCadena := '';
 For xI := 1 to 60 do
  begin
   If xaddMeses[xI] <> '' then
    If xCadena = '' then
     xCadena := xCadena + xaddMeses[xI]
    else
     xCadena := xCadena +','+ xaddMeses[xI];
  end;
  mmObse.text:= mmObse.text +xCadena;ç
}
end;


procedure TFDevCuoDepo.Correlativo;
begin
  //** cuando es primera vez, se pasa el nombre del campo del cual se sacara el correlativo
  xCorre := xCorreCampo;
  Repeat
    //** si esto se repitiera más de una vez, xCorre será igual al correlativo que se
    //** encontro más 1
    CorreCred(xcorre);
    //** verifica en la tabla auxiliar que el correlativo no este tomado por otro usuario
    BuscaCorre;
    //** esta busqueda se repitirá hasta que se encuentra un correlativo que no haya
    //** sido tomado
  until xPaso = True;
end;

procedure TFDevCuoDepo.CorreCred(pCorre: String);
var
  xCadena,xSql : String;
begin
  //** dependiendo del pCorre, lleno xCadena para el Sql
  if pCorre = 'CREDID' then
    xCadena := 'substr(CREDID,9,7)'
  else
    xCadena := pCorre;

    xSql := 'SELECT '+xCadena+' +1 NUMCRED FROM CRE206 '+
            'WHERE '+ xCorreWhere +
            xCorreCampo+' IN (SELECT X.'+xCorreCampo+' FROM CRE206 X, CRE206 Y '+
            'WHERE '+ xCorreWherex + xCorreWherey +')';
    Dm1.cdsQry.Close;
    Dm1.cdsQry.DataRequest(xSql);
    Dm1.cdsQry.Open;
    //** asigno el nuevo correlativo
   If Dm1.cdsQry.FieldByName('NUMCRED').AsInteger = 0 then
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger+1),xCeros)
   else
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger),xCeros);

end;


procedure TFDevCuoDepo.BuscaCorre;
var
  xSQL : String;
begin
  //** por defecto
  xPaso := True;
  //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
  //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
  //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
  //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
  xSQL := 'SELECT COUNT(NUMERO) TOTAL FROM '+xTabla+' WHERE NUMERO='+quotedstr(xCorre);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSQL);
  Dm1.cdsQry.Open;
  //** False = para que siga repitiendo la busqueda
  if Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 then
    xPaso := False
  else
  begin    //** sino graba en la tabla auxiliar (cre201)
    xSQL := 'INSERT INTO '+xTabla+' (NUMERO) VALUES (';
    if xCorreCampo = 'CREDID' then
      xSQL := xSQL + QuotedStr(xCorreCadena+xCorre)+')'
    else
      xSql := xSql + quotedstr(xCorre)+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    if StrtoInt(xCorre) = 1 then
    begin
      if xCorreCampo = 'CREDID' then
        xSQL := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,TIPO) VALUES ('+quotedstr(xCorreCadena+xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(xTipocorre)+')'
      else
        xSQL := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,TIPO) VALUES ('+quotedstr(xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(xTipocorre)+')';
    end
    else
    begin
      if xCorreCampo = 'CREDID' then
        xSQL := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorreCadena+xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+
                ' AND SUBSTR(CREDID,1,2)='+quotedstr(copy(xCorreCadena,1,2))+
                ' AND SUBSTR(CREDID,3,4)='+quotedstr(copy(xCorreCadena,3,4))+
                ' AND SUBSTR(CREDID,7,2)='+quotedstr(copy(xCorreCadena,7,2))+
                ' AND TIPO ='+quotedstr(xTipocorre)
      else
        xSQL := 'UPDATE CRE206 SET '+xCorreCampo+' ='+QuotedStr(xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+
                ' AND TIPO ='+quotedstr(xTipocorre);
    end;
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  end;
end;

procedure TFDevCuoDepo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DM1.cdsDevolucion.CancelUpdates;
end;

procedure TFDevCuoDepo.dbgCuatasAsoCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if (Field.FieldName = 'MTODEV') then
   begin
      AFont.Color  := clBlack;
      ABrush.Color := clWindow;
{      end;
   end;

      AFont.Color := clGreen;
      ABrush.
      if (Highlight) then ABrush.Color := clWindow;}
   end;
end;

end.

