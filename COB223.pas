 //** POR PJSV - 07/11/2002
//** 18/12/2002 - pjsv
//** PARA EL CORRELATIVO =>     1 = CREDID
//**                            2 = NOTA DE ABONO
//**                            3 = PAGARE
//**                            4 = COMPROBANTE DE CAJA
//**                            5 = CTA CTE
//**                            6 = OFICIO
//**                            7 = ASOID

unit COB223;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdbdatetimepicker, Buttons, Wwdbigrd, Grids, Wwdbgrid, db,
  ComCtrls, wwriched, ExtCtrls, DBCtrls, fcButton, fcImgBtn, fcShapeBtn,
  Mask, wwdbedit, wwdblook, Wwdbspin, Wwdotdot, Wwdbdlg, ppBands, ppCtrls,
  jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,  ppReport,Math,
  ppTypes, ppStrtch, ppMemo, ppDB, ppDBPipe,ppViewr;

type
  TFReprCtaCte = class(TForm)
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    z2bbtnCrono: TfcShapeBtn;
    ppdbSolicitud: TppDBPipeline;
    ppSolicitud: TppReport;
    pnlPrin: TPanel;
    dbecodigo: TwwDBEdit;
    dbereprid: TwwDBEdit;
    dbereprapenom: TwwDBEdit;
    dblcconcid: TwwDBLookupCombo;
    edtconcdes: TEdit;
    dbemtoPrest: TwwDBEdit;
    dbeValInt: TwwDBEdit;
    dbeValFlat: TwwDBEdit;
    dbeNumcuo: TwwDBEdit;
    dbeobv: TwwDBEdit;
    dbemtocuota: TwwDBEdit;
    dbemtodeuda: TwwDBEdit;
    dbemtopagado: TwwDBEdit;
    dbemtosaldo: TwwDBEdit;
    dbeFecIni: TwwDBEdit;
    dbeFecfin: TwwDBEdit;
    lblMDeuda: TLabel;
    lblMCuota: TLabel;
    lblMPagado: TLabel;
    lblSDeuda: TLabel;
    lblFInicio: TLabel;
    lblFFin: TLabel;
    lblCodigo: TLabel;
    lblRecauda: TLabel;
    lblConcepto: TLabel;
    lblMPrest: TLabel;
    lblVinteres: TLabel;
    lblGAdminis: TLabel;
    lblNCuota: TLabel;
    lblObserva: TLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel43: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel107: TppLabel;
    ppLabel125: TppLabel;
    ppLabel128: TppLabel;
    ppLabel130: TppLabel;
    dbtAsoid: TppDBText;
    dbtAsoApe: TppDBText;
    dbtNroCre: TppDBText;
    dbtFecOto: TppDBText;
    dbtMoneda: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    dbtCuota: TppDBText;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel36: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel124: TppLabel;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbemtoPrestKeyPress(Sender: TObject; var Key: Char);
    procedure dblcconcidExit(Sender: TObject);
    procedure dblcconcidNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dbemtoPrestExit(Sender: TObject);
    procedure dbeValIntExit(Sender: TObject);
    procedure dbeValFlatExit(Sender: TObject);
    procedure dbeNumcuoExit(Sender: TObject);
    procedure z2bbtnCronoClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure ppSolicitudPreviewFormCreate(Sender: TObject);

  private
    { Private declarations }
    xEstid,xEstado,xano,xMes,xCorreCampo,xArea,xTabla : String;
    x,xCeros : Integer;
    xCorreCred,xCorre : String; //** para el correlativo del numero de crédito
    xPaso : Boolean; //** True = el correlativo es valido
    Flat ,Interes,MtoCredito,InteresM,NroCuotas,FlatMto,InteresE,InteresK,MtoCuota  : double;
    xSeguro,xGastosAdm,xComision,InteresMto,Capital,Amortizacion : Double;
    xCorreCadena,xCorreWhere,xCorreWherex,xCorreWherey,xTipocorre : String;
    procedure Mtocuotas;
    procedure CalculaFecha; //**  CALCULA LA FECHA DE INICIO Y FIN APARTIR DEL # DE CUOTAS
    procedure CronogramaEfectivo;
    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
    Procedure BuscaCorre; //** para constatar que nop exista el numero del crédito
    procedure Correlativo; //** llama a CorreCred y BuscaCorre
    procedure Graba302;
    procedure CargaCrono;
    procedure GrabaNuevo;
  public
    { Public declarations }
    wModoUPro : String;
  end;

var
  FReprCtaCte : TFReprCtaCte;
  xCrea : boolean;
  sWhere : String;
  wfuente,wmodo1:string;

implementation

USES COBDM1,Cob001, COB704;
{$R *.DFM}

procedure TFReprCtaCte.FormActivate(Sender: TObject);
begin
  dblcconcid.Selected.Add('CONCID'#9'2'#9'Id');
  dblcconcid.Selected.Add('CONCDES'#9'20'#9'Descripcion');
  dbereprid.text := DM1.cdsRepresentante.FieldByName('REPRID').AsString;
  dbereprapenom.Text := DM1.cdsRepresentante.FieldByName('REPRAPENOM').AsString;
  if DM1.wModo = 'A' then
  begin
    pnlPrin.Enabled := True;
    dbeValFlat.text := '0.00';
  end
  else
  begin
    DM1.FiltraCds(dm1.cdsCob336,'SELECT * FROM COB336 WHERE REPRID='+
                           quotedstr(DM1.cdsRepresentante.fieldbyname('REPRID').asstring)+
                           ' AND CTANRO='+quotedstr(DM1.cdsReprCtaCte.FieldByName('CTANRO').AsString));
    xCorreCred := DM1.cdsReprCtaCte.FieldByName('CTANRO').AsString;
    pnlPrin.Enabled := False;
    dbecodigo.text := DM1.cdsReprCtaCte.FieldByName('CTANRO').AsString;
    dbereprid.text := DM1.cdsReprCtaCte.FieldByName('REPRID').AsString;
    dbereprapenom.text := DM1.cdsReprCtaCte.FieldByName('REPNOM').AsString;
    dblcconcid.text := DM1.cdsReprCtaCte.FieldByName('CONCID').AsString;
    dblcconcid.OnExit(dblcconcid);
    dbemtoPrest.text := DM1.cdsCOB336.FieldByName('MTOBAS').AsString;
    dbeValInt.text := DM1.cdsCob336.FieldByName('INTVALOR').AsString;
    dbeValFlat.text := DM1.cdsCob336.FieldByName('FLATVALOR').AsString;
    dbeNumcuo.text := DM1.cdsCob336.FieldByName('NUMCUO').AsString;
    dbeobv.text := DM1.cdsCob336.FieldByName('REFER').AsString;
    dbemtocuota.text := DM1.cdsCob336.FieldByName('MTOCUO').AsString;
    dbemtodeuda.text := DM1.cdsCob336.FieldByName('MTONET').AsString;
    dbemtopagado.text := DM1.cdsCob336.FieldByName('MTOPAG').AsString;
    dbemtosaldo.text := DM1.cdsCob336.FieldByName('MTOSLD').AsString;
    dbeFecIni.text := DM1.cdsCob336.FieldByName('FECINI').AsString;
    dbeFecfin.text := DM1.cdsCob336.FieldByName('FECFIN').AsString;
    z2bbtnCrono.enabled := True;
  end;
end;

procedure TFReprCtaCte.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFReprCtaCte.dbemtoPrestKeyPress(Sender: TObject; var Key: Char);
begin
  if Key In [' ','A'..'Z','a'..'z',
            '°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@',
            '¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''',
            '-','_'] Then
    Key :=#0;
end;

procedure TFReprCtaCte.dblcconcidExit(Sender: TObject);
begin
  edtconcdes.text := dm1.cdsconcepto.FieldByName('CONCDES').AsString;
end;

procedure TFReprCtaCte.dblcconcidNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFReprCtaCte.dbemtoPrestExit(Sender: TObject);
begin
  If length(dbemtoPrest.text) > 0 then
    If StrTofloat(dbemtoPrest.text) < 0 then
      Showmessage('No puede ser menor que cero')
    else
    begin
    If (length(dbeValInt.text) > 0) and
       (length(dbeNumcuo.text) > 0) then
      Mtocuotas;
    end;
end;

procedure TFReprCtaCte.dbeValIntExit(Sender: TObject);
begin
  if length(dbeValInt.text) > 0 then
    If StrTofloat(dbeValInt.text) < 0 then
      Showmessage('No puede ser menor que cero')
    else
    begin
    If (length(dbemtoPrest.text) > 0) and
       (length(dbeNumcuo.text) > 0) then
      Mtocuotas;
    end;
end;

procedure TFReprCtaCte.dbeValFlatExit(Sender: TObject);
begin
  if length(dbeValFlat.text) > 0 then
    if StrTofloat(dbeValFlat.text) < 0 then
      Showmessage('No puede ser menor que cero');
end;

procedure TFReprCtaCte.dbeNumcuoExit(Sender: TObject);
begin
  if length(dbeNumcuo.text) > 0 then
    if StrTofloat(dbeNumcuo.text) < 0 then
      Showmessage('No puede ser menor que cero')
    else
    begin
      dbeNumcuo.text := IntToStr(round(StrToInt(dbeNumcuo.text)));
      if (length(dbemtoPrest.text) > 0) and
         (length(dbeValInt.text) > 0) then
        Mtocuotas;
    end;
end;

procedure TFReprCtaCte.Mtocuotas;
var
  gMes,gAno,xFecha,zFecha:String;
begin
  // Monto Otorgado - Monto crédito
  MtoCredito:= Dm1.FRound(StrToFloat(dbemtoPrest.text),15,2);
  // Interes
  Interes:= StrToFloat(dbeValInt.text) /100;
  // Interes + 1 para la fórmula
  InteresM:=Interes+1;
  // Flat
  if StrToFloat(dbeValFlat.text) > 0 then
    Flat := StrToFloat(dbeValFlat.text) /100
  else
    Flat := 0;
  //Número de Cuotas
  NroCuotas:= Round(StrToFloat(dbeNumcuo.Text));
  // Calculando el Monto del Flat
  FlatMto:= Flat*MtoCredito/NroCuotas; //FRound((Flat*MtoCredito)/NroCuotas,15,3);
  // Elevando a la potencia n para: (1+I)
  InteresE:= Power(InteresM,NroCuotas); //FRound(Power(InteresM,NroCuotas),15,3);
  //                   n
  // Calculando : [(1+I )]-1
  InteresK:= InteresE-1;//FRound(InteresE-1,15,3);
  // Calculando el Monto de la Cuota
  MtoCuota:= Dm1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),15,2);
  //** Este campo no variara durante el pago de las cuotas
  dbemtodeuda.text := FloatToStr(Dm1.FRound(MtoCuota * NroCuotas,15,2));
  //** este campo es el que se dbe de variar al pagar alguna cuota
  dbemtosaldo.text := FloatToStr(Dm1.FRound(MtoCuota * NroCuotas,15,2));
  //** monto cuota
  dbemtocuota.text := FloatToStrF(Mtocuota,ffFixed,15,2);
  //** Monto Pagado
  dbemtopagado.text := '0.00';

  //***** FIN DEL MONTO DE LA CUOTA

  //** Calcula las Fechas de Inicio y Fin
  CalculaFecha;
  Z2bbtnAceptar.enabled := true;
end;

procedure TFReprCtaCte.CalculaFecha;
var
  xAnios,xMeses,xI : Integer;
begin
  //** para la fecha de inicio
  xMeses := 0;

  if xMesSys + 1 <=12 then
  begin
    dbeFecIni.text := Dm1.StrZero(FloatToStr((xMessys + 1)),2)+FloatToStr(xAnoSys);
  end
  else
  begin
    dbeFecIni.text := '01'+FloatToStr(xAnoSys+1);
  end;

  //** para la fecha de Fin
  xAnios :=  round(StrToFloat(dbeNumcuo.text) / 12);
  if (StrToFloat(dbeNumcuo.text) / 12) - round(StrToFloat(dbeNumcuo.text) / 12) > 0 then
    xAnios := xAnios + 1;

  xI := 1;
  For xI := xI to StrToInt(dbeNumcuo.text) do
  begin
    If xI + xMesSys <= 12 then
      xMeses := xMesSys + xI
    else
    begin
      xMeses := xMeses + 1;
      If xMeses > 12 then
        xMeses := 1;
    end;
  end;
  dbeFecfin.Text := Dm1.StrZero(FloatToStr(xMeses),2)+FloatToStr(xAnoSys+xAnios) ;
end;

procedure TFReprCtaCte.z2bbtnCronoClick(Sender: TObject);
var
  xCredid : String;
  x10:Integer;
begin
  if Dm1.wModo = 'M' then
    CargaCrono;

  dm1.cdsQry1.first;
  xCredid := '';
  while not dm1.cdsQry1.eof do
  begin
    If xCredid = '' then
      xCredid := ' A.CTANRO='+QuotedStr(DM1.cdsQry1.FieldByName('CTANRO').AsString)
    else
      xCredid := xCredid + 'OR A.CTANRO='+QuotedStr(DM1.cdsQry1.FieldByName('CTANRO').AsString);

    dm1.cdsQry1.next;
  end;

  if xCredid <> '' then
  begin
    DM1.cdsConsulta.Close;
    xSql := 'SELECT A.REPRID, A.CREMES, A.CREANO, A.NUMCUOTA, A.CREAMORT, A.CREMTO, A.CREINTERES, '+
            'A.CREFLAT, A.CRECAPCRON, A.CTANRO, '+
            'DECODE(CREMES,'+QuotedStr('01')+','+QuotedStr('Ene -')+','+QuotedStr('02')+','+
            ' '+QuotedStr('Feb -')+','+QuotedStr('03')+','+QuotedStr('Mar -')+','+
            ' '+QuotedStr('04')+','+QuotedStr('Abr -')+','+
            ' '+QuotedStr('05')+','+QuotedStr('May -')+','+QuotedStr('06')+','+
            ' '+Quotedstr('Jun -')+','+QuotedStr('07')+','+QuotedStr('Jul -')+','+
            ' '+QuotedStr('08')+','+QuotedStr('Ago -')+','+QuotedStr('09')+','+
            ' '+Quotedstr('Set -')+','+
            ' '+QuotedStr('10')+','+QuotedStr('Oct -')+','+QuotedStr('11')+','+
            ' '+QuotedStr('Nov -')+','+QuotedStr('12')+','+QuotedStr('Dic -')+',NULL) AS PERIODO, '+
            'B.FECOTOR, B.MTOBAS, B.REPNOM, B.TMONID, B.NUMCUO, B.INTVALOR, B.FLATVALOR, '+
            'D.TMONDES FROM (SELECT '+
            'A.REPRID, A.CREMES, A.CREANO, A.NUMCUOTA, A.CREAMORT, A.CREMTO, A.CREINTERES, '+
            'A.CREFLAT, A.CRECAPCRON, A.CTANRO '+
            'FROM COB337 A WHERE A.REPRID='+quotedstr(dbereprid.text)+' '+
            'AND A.CTANRO='+quotedstr(TRIM(dbecodigo.text))+') A, '+
            '(SELECT B.INTVALOR, FLATVALOR, B.CTANRO, B.FECOTOR, B.MTOBAS, B.REPNOM, B.TMONID, '+
            'B.NUMCUO FROM COB336 B WHERE '+
            'B.REPRID='+quotedstr(dbereprid.text)+' '+
            'AND B.CTANRO='+quotedstr(TRIM(dbecodigo.text))+') B, '+
            'TGE103 D WHERE A.CTANRO=B.CTANRO '+
            'AND B.TMONID=D.TMONID '+
            'ORDER BY A.REPRID, A.NUMCUOTA, A.CREANO, A.CREMES';
  end
  else
    exit;

  DM1.cdsConsulta.close;
  DM1.cdsConsulta.DataRequest(xSQL);
  DM1.cdsConsulta.Open;
  if   DM1.cdsConsulta.RecordCount = 0 Then
  Begin
     ShowMessage ('No existe Cronograma a mostrar');
     exit;
  End;
  //** seteo la nueva ruta para el reporte
  ppdbSolicitud.DataSource := dm1.dsConsulta;
  ppSolicitud.Template.FileName := wRutaRpt+'\CronogramaCTACTE.rtm';
  ppSolicitud.Template.LoadFromFile ;
  ppSolicitud.Print;
  ppSolicitud.Stop;

  x10:=Self.ComponentCount-1;
  while x10>=0 Do
  begin
    If Self.Components[x10].ClassName='TppGroup' Then
    begin
      Self.Components[x10].Free;
    end;
    x10:=x10-1;
  end;
end;

procedure TFReprCtaCte.Z2bbtnAceptarClick(Sender: TObject);
begin
   //** Paso 2 para grabar
  pnlPrin.Enabled := False;
  Z2bbtnAceptar.enabled := False;

  xTipocorre := '5';
  xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''003''','MODULOID');
  xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' AND CORREANO = '+quotedstr(FloatToStr(xAnoSys))+
                  ' and TIPO ='+quotedstr(xTipocorre)+' AND ';
  xCorreWherex :=  ' X.CREAREA = '+quotedstr(xArea)+' AND X.CORREANO = '+quotedstr(FloatToStr(xAnoSys))+
                  ' AND X.TIPO ='+quotedstr(xTipocorre)+' AND ';
  xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' AND y.CORREANO = '+quotedstr(FloatToStr(xAnoSys))+
                  ' AND Y.TIPO ='+quotedstr(xTipocorre)+' AND ';

  xTabla := 'COB217';
  xCeros := 8;
  xArea := 'COB';
  xCorreCampo := 'CTACTE';
  Correlativo;
  xCorreCred := xCorre;

  dbecodigo.text := xCorreCred;
  GrabaNuevo;
  CargaCrono;
  CronogramaEfectivo;
  z2bbtnCrono.enabled := true;
end;

procedure TFReprCtaCte.Z2bbtnCancelClick(Sender: TObject);
var
  xSQL : String;
begin
  Z2bbtnAceptar.enabled := False;
  z2bbtnCrono.enabled := False;

  xSQL:='SELECT * FROM COB335 WHERE REPRID='+quotedstr(DM1.cdsRepresentante.fieldbyname('REPRID').asstring);

  FToolRepresentante.Mtx.UsuarioSQL.Clear;
  FToolRepresentante.Mtx.UsuarioSQL.Add(xSQL);
  FToolRepresentante.Mtx.NewQuery;

  Close;
end;

Procedure TFReprCtaCte.Correlativo;
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

//** 19/12/2002 - PJSV
procedure TFReprCtaCte.CorreCred(pCorre : String);
var
  xCadena,xSql : String;
begin
  //** dependiendo del pCorre, lleno xCadena para el Sql
  if pCorre = 'CREDID' then
    xCadena := 'SUBSTR(CREDID,9,7)'
  else
    xCadena := pCorre;

  //** busco el minimo y le agrego uno para que no hayan huecos, OJO por el día activo
  xSql := 'SELECT MIN('+xCadena+' +1) NUMCRED FROM CRE206 '+
          'WHERE '+ xCorreWhere +
          xCorreCampo+' NOT IN (SELECT X.'+xCorreCampo+' FROM CRE206 X, CRE206 Y '+
          'WHERE '+ xCorreWherex + xCorreWherey +
          'X.'+xCorreCampo+'=Y.'+xCorreCampo+' + 1)';
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  //** si devuelve vacio, busco el ultimo correlativo que hubiera, no interesa el día
  if Dm1.cdsQry.FieldByName('NUMCRED').AsString = '' then
  begin
    xSql := 'SELECT MAX('+xCadena+' +1) NUMCRED FROM CRE206 '+
            'WHERE '+ xCorreWhere +
            xCorreCampo+' IN (SELECT X.'+xCorreCampo+' FROM CRE206 X, CRE206 Y '+
            'WHERE '+ xCorreWherex + xCorreWherey +
            'X.'+xCorreCampo+'=Y.'+xCorreCampo+' + 1)';
    //           'where x.'+xCorreCampo+' = y.'+xCorreCampo+' +1) AND CREAREA = '+quotedstr(xArea);
    Dm1.cdsQry.Close;
    Dm1.cdsQry.DataRequest(xSql);
    Dm1.cdsQry.Open;
    //** asigno el nuevo correlativo
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger + 1),xCeros);
  end
  else
    //** asigno el nuevo correlativo
    xCorre := dm1.StrZero(Dm1.cdsQry.FieldByName('NUMCRED').AsString,xCeros);
end;

//** 19/12/2002 - PJSV
Procedure TFReprCtaCte.BuscaCorre;
var
  xSql : String;
begin
  //** por defecto
  xPaso := True;
  //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
  //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
  //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
  //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
  xSql := 'SELECT COUNT(NUMERO) TOTAL FROM '+xTabla+' WHERE NUMERO='+quotedstr(xCorre);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  //** False = para que siga repitiendo la busqueda
  if Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 then
    xPaso := False
  else
  //** sino graba en la tabla auxiliar (cre201)
  begin
    xSql := 'INSERT INTO '+xTabla+' (NUMERO) VALUES (';
    if xCorreCampo = 'CREDID' then
      xSql := xSql + quotedstr(FloatToStr(xAnoSys)+xCorre)+')'
    else
      xSql := xSql + quotedstr(xCorre)+')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    if StrtoInt(xCorre) = 1 then
    begin
      if xCorreCampo = 'CREDID' then
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA, CORREANO, TIPO) VALUES ('+quotedstr(xCorreCadena+xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(FloatToStr(xAnosys))+','+quotedstr(xTipocorre)+')'
      else
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA, CORREANO, TIPO) VALUES ('+quotedstr(xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(FloatToStr(xAnoSys))+','+quotedstr(xTipocorre)+')';
    end
    else
    begin
      if xCorreCampo = 'CREDID' then
        xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorreCadena+xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+' AND CORREANO='+quotedstr(FloatToStr(xAnoSys))+
                ' AND SUBSTR(CREDID,1,2)='+quotedstr(copy(xCorreCadena,1,2))+
                ' AND SUBSTR(CREDID,3,4)='+quotedstr(copy(xCorreCadena,3,4))+
                ' AND SUBSTR(CREDID,7,2)='+quotedstr(copy(xCorreCadena,7,2))+
                ' AND TIPO ='+quotedstr(xTipocorre)
      else
        xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+' AND CORREANO='+quotedstr(FloatToStr(xAnoSys))+
                ' AND TIPO ='+quotedstr(xTipocorre);
    end;
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  end;
end;

procedure TFReprCtaCte.GrabaNuevo;
var
  xSql : string;
begin
  xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('1'),'ESTDES');
  xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;

  //** GRaba la cabecera COB335
  xSql := 'INSERT INTO COB335 (CTANRO, REPRID, REPNOM, FECOTOR, CTAEST, CREESTADO, USUARIO, FREG, '+
          'HREG, TMONID, CONCID) VALUES ('+
          quotedstr(xCorreCred)+','+
          quotedstr(dbereprid.text)+','+
          quotedstr(dbereprapenom.text)+','+
          quotedstr(DateToStr(xFechasys))+','+
          quotedstr(xEstid)+','+
          quotedstr(xEstado)+','+
          quotedstr(Dm1.wUsuario)+','+
          quotedstr(DateToStr(xFechasys))+','+
          wRepTimeServi+','+
          quotedstr(Dm1.wTMonLoc)+','+
          quotedstr(dblcconcid.text)+')';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  //** Graba el Detalle COB336
  xSql := 'INSERT INTO COB336 (CTANRO, REPRID, REPNOM, FECOTOR, CTAEST, CREESTADO, USUARIO, FREG, '+
          'HREG, TMONID, CONCID, FECINI, FECFIN, MTOBAS, INTVALOR, FLATVALOR, MTOCUO, NUMCUO, '+
          'MTONET, REFER, MTOPAG, MTOSLD) VALUES ('+
          quotedstr(xCorreCred)+','+
          quotedstr(dbereprid.text)+','+
          quotedstr(dbereprapenom.text)+','+
          quotedstr(DateToStr(xFechasys))+','+
          quotedstr(xEstid)+','+
          quotedstr(xEstado)+','+
          quotedstr(Dm1.wUsuario)+','+
          quotedstr(DateToStr(xFechasys))+','+
          wRepTimeServi+','+
          quotedstr(Dm1.wTMonLoc)+','+
          quotedstr(dblcconcid.text)+','+
          quotedstr(dbeFecIni.text)+','+
          quotedstr(dbeFecfin.text)+','+
          dbemtoPrest.text+','+
          dbeValInt.text+','+
          dbeValFlat.text+','+
          dbemtocuota.text+','+
          dbeNumcuo.text+','+
          dbemtodeuda.text+','+
          quotedstr(dbeobv.text)+','+
          dbemtopagado.text+','+
          dbemtosaldo.text+')';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
end;

procedure TFReprCtaCte.CargaCrono;
var
  xSql : String;
begin
  xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('1'),'ESTDES');
  xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
  xSql := 'SELECT A.REPRID, A.REPNOM, A.FECOTOR, A.MTOBAS, '+
          'A.CTANRO, A.INTVALOR, A.FLATVALOR, A.NUMCUO, A.MTOCUO, '+
          'A.FECINI, A.TMONID FROM COB336 A '+
          'WHERE A.REPRID='+quotedstr(dbereprid.text)+' '+
          'AND A.CTANRO = '+quotedstr(xCorreCred)+' '+
          'AND (A.CTAEST='+quotedstr(xEstid);
  xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
  xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
  xSql := xSql + ' OR A.CTAEST='+quotedstr(xEstid)+')';
  Dm1.cdsQry1.Close;
  Dm1.cdsQry1.DataRequest(xSql);
  Dm1.cdsQry1.Open;
end;

procedure TFReprCtaCte.CronogramaEfectivo;
var
  z,wMes:Integer;
  xFlatMto,Interes,Flat,CuotaMto,NroCuotas,vMonto,vCredito:Real;
  iComision,iGastosAdm,iSeguro:Real;
  xMescopia : String;
  xSumaInt,xUltAmor,xFlatul,xUltimo : Double;
begin
  //*****************************************
  // Inicio GENERACION DE CUOTAS DE PAGO
  //*****************************************
  try
    //** hABILITAR LUEGO
    //** DM1.DCOM1.AppServer.SolStartTransaction;
    //  If dm1.wmodo = 'M' then
    //   CargaCrono; // carga cdsQry1

    dm1.cdsQry1.First;
    while not dm1.cdsQry1.Eof do
    begin
      vMonto := 0;
      Amortizacion := 0;
      // Asigna Capital
      if Length(DM1.cdsQry1.FieldByName('MTOBAS').AsString)<>0 Then
        Capital:= DM1.cdsQry1.FieldByName('MTOBAS').AsFloat
      else
        Capital:=0;
      // Asigna Interes
      Interes:= DM1.cdsQry1.FieldByName('INTVALOR').AsFloat/100;

      //Asigan Flat
      Flat:= DM1.cdsQry1.FieldByName('FLATVALOR').AsFloat/100;
      // Asigna Número de Cuotas
      NroCuotas:= DM1.cdsQry1.FieldByName('NUMCUO').AsFloat;
      // Calcula Monto Flat
      FlatMto:= Dm1.FRound((Capital*Flat)/NroCuotas,15,3);
      // Asigna el Monto de la Cuota
      if Length(DM1.cdsQry1.FieldByName('MTOCUO').AsString)<>0 Then
        CuotaMto:= Dm1.FRound(DM1.cdsQry1.FieldByName('MTOCUO').AsFloat,15,2)
      else
        CuotaMto:=0;
      if Length(DM1.cdsQry1.FieldByName('MTOBAS').AsString)<>0 Then
        vCredito:= Dm1.FRound(DM1.cdsQry1.FieldByName('MTOBAS').AsFloat,15,2)
      else
        vCredito :=0;
      // Asigna Comision
      //     iComision:= Dm1.FRound(DM1.cdsQry1.FieldByName('CRECOM').AsFloat/100,15,2);
      // Asigna Gastos Administrativos
      //     iGastosAdm:= Dm1.FRound(DM1.cdsQry1.FieldByName('CREGADM').AsFloat/100,15,2);
      // Asigna Seguro
      //     iSeguro:= Dm1.FRound(DM1.cdsQry1.FieldByName('CRESEG').AsFloat/100,15,2);

      z:=StrToInt(DM1.cdsQry1.FieldByName('NUMCUO').AsString);
      x:=0;

      //Present:= dbdtpFechar.DATE; //DM1.cdsQry1.FieldByName('CREFINIPAG').AsDateTime;
      //DecodeDate(Present,Ano,Mes,Dia);

      XAno:= copy(dbeFecIni.Text,3,4); //IntToStr(Ano);
      XMes:= copy(dbeFecIni.text,1,2); //DM1.StrZero(IntToStr(Mes+1),2);

      xSumaInt := 0;
      xFlatul := 0;
      while x <= z Do
      begin
        if x = 0 then
        begin
          xMescopia := xMes;
          xMes := '0';
          InteresMto:= 0;
          xFlatMto := FlatMto;
          FlatMto := 0;
          //Graba302;
          //DM1.DCOM1.AppServer.EjecutaSQL(xSQLs);
          xMes := xMesCopia;
          FlatMto := xFlatMto;
        end
        else
        begin
          if Capital - CuotaMto < 0 then
            InteresMto:= (Capital - (CuotaMto - FlatMto)) * -1
          else
            InteresMto:= Capital*Interes;

          xSumaInt := round((xSumaInt + InteresMto)*100)/100;
          xFlatul  := round((xFlatul + FlatMto)*100)/100;

          Amortizacion:= CuotaMto-(FlatMto+InteresMto);

          // acumulo la amortizacion
          vMonto:= vMonto+ round((Amortizacion)*100)/100 ; //vMonto:= vMonto+ (CuotaMto-(FlatMto+InteresMto));

          if Capital - CuotaMto > 0 then
            Capital:= vCredito - vMonto
          else
          begin
            Capital:= 0;
            xUltimo := (CuotaMto * NroCuotas) - (vmonto + xSumaInt + xFlatul);
            xUltAmor := InteresMto + xUltimo;
            InteresMto := xUltAmor;
          end;

          xComision := Capital*iComision;
          xGastosAdm:= Capital*iGastosAdm;
          xSeguro   := Capital*iSeguro;

          if XMes = '12' Then
          begin
            XMes:='00';
            XAno:=IntToStr(StrToInt(XAno)+1);
          end;
          XMes:=DM1.StrZero(IntToStr(StrToInt(XMes)+1),2);
          Graba302;
        end;
        x:=x+1;
      end;
      DM1.cdsQry1.next;
    end;
    //** hABILITAR LUEGO
    //** DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
    Showmessage('Termino la Generación del Cronograma');
    //  z2bbtnImprime.Enabled := True;
  Except
    //** hABILITAR LUEGO
    //** DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
    Showmessage('Repita la Generación del Cronograma');
  end;
  // FIN GENERACION DE CUOTAS DE PAGO
end;

procedure TFReprCtaCte.Graba302;
var
  xSql : String;
begin
  xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
  xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
  xSql := 'INSERT INTO COB337 (CTANRO, REPRID, USUARIO, FREG, HREG, TMONID, CREANO, CREMES, CRESALDO, '+
          'NUMCUOTA, CREMTO, CREAMORT, CREINTERES, CREFLAT, CREMTOCOB, '+
          'CRECAPITAL, CREMTOINT, CREMTOFLAT, CIAID, CREESTID, AREAID, CRECAPCRON) VALUES ('+
           quotedstr(xCorreCred)+','+quotedstr(dbereprid.text)+','+quotedstr(Dm1.wUsuario)+','+
           quotedstr(DateToStr(xFechasys))+','+wRepTimeServi+','+
           quotedstr(Dm1.wTMonLoc)+','+quotedstr(xAno)+','+quotedstr(xMes)+',';
  if x = 1 then
    xSql := xSql + dbemtosaldo.text+','
  else
    xSql := xSql + 'NULL, ';

  xSql := xSql + quotedstr(Dm1.StrZero(IntToStr(x),2))+', ';
  if xMes <> '0' then
    xsql := xSql + dbemtocuota.text+', '
  else
    xsql := xSql + '0.00, ';
  xSql := xSql +FloatToStr(Amortizacion)+', '+FloatToStr(InteresMto)+', '+FloatToStr(FlatMto)+
          ', 0.00, 0.00, 0.00, 0.00, '+
          quotedstr('02')+', '+quotedstr(xEstid)+', '+quotedstr('COB')+', '+FloatToStr(Capital)+')';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
end;

procedure TFReprCtaCte.ppSolicitudPreviewFormCreate(Sender: TObject);
begin
	ppSolicitud.PreviewForm.ClientHeight := 500;
	ppSolicitud.PreviewForm.ClientWidth  := 650;
	TppViewer(ppSolicitud.PreviewForm.Viewer).ZoomSetting := zsPagewidth;

  //ppSolicitud.PreviewForm.WindowState:=WsMaximized;
  //TppViewer(ppSolicitud.PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

end.

