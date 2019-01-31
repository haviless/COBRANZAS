//** POR PJSV - 07/11/2002
//** 18/12/2002 - pjsv
//** PARA EL CORRELATIVO =>     1 = CREDID
//**                            2 = NOTA DE ABONO
//**                            3 = PAGARE
//**                            4 = COMPROBANTE DE CAJA
//**                            5 = CTA CTE
//**                            6 = OFICIO
//**                            7 = ASOID

unit COB310;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdblook, Wwdbspin, wwdbdatetimepicker,
  StdCtrls, ComCtrls, wwriched, Mask, wwdbedit, ExtCtrls, Wwdbdlg, Buttons,
  Wwdbigrd, Grids, Wwdbgrid, Wwdotdot, Wwdbcomb,wwClient,DB, CheckLst,Mant, Math,
  ppCtrls, ppBands, ppVar, ppClass, ppPrnabl, ppProd, ppReport, ppComm,
  ppRelatv, ppCache, ppDB, ppDBPipe, ppViewr, pptypes;

type
  TFCaptaCuotas = class(TForm)
    dbeApeNom: TwwDBEdit;
    pnlCrono: TPanel;
    lblTitu1: TLabel;
    lblTitu2: TLabel;
    lblTitu3: TLabel;
    clbCrono: TCheckListBox;
    clbCronoAux: TCheckListBox;
    lblNombre: TLabel;
    dbgCompromiso: TwwDBGrid;
    rgAccion: TRadioGroup;
    edtCuota: TEdit;
    lblcuota: TLabel;
    dbgCompromisoIButton: TwwIButton;
    Label1: TLabel;
    pnlDatos: TPanel;
    lblModulo: TLabel;
    lbldni: TLabel;
    lblCivil: TLabel;
    lblTel1: TLabel;
    lblTelf2: TLabel;
    dbeTelf2: TwwDBEdit;
    dbeTelf1: TwwDBEdit;
    dbeCivil: TwwDBEdit;
    dbeDni: TwwDBEdit;
    dbeModulo: TwwDBEdit;
    lblDirdom: TLabel;
    dbeDirDom: TwwDBEdit;
    lblDirCol: TLabel;
    dbeDirCol: TwwDBEdit;
    lblIngreso: TLabel;
    dbeMensual: TwwDBEdit;
    lblObser: TLabel;
    dbreObse: TwwDBRichEdit;
    Z2bbtnSigue: TfcShapeBtn;
    Z2bbtnAtras: TfcShapeBtn;
    Z2bbtnCalculo: TfcShapeBtn;
    Label2: TLabel;
    edtCapaci: TEdit;
    Label3: TLabel;
    edtMtoCuo: TEdit;
    dbseAnoTalon: TwwDBSpinEdit;
    dbseMesTalon: TwwDBSpinEdit;
    Z2bbtnGraba: TfcShapeBtn;
    lblSaldoCre: TLabel;
    edtSaldoCre: TEdit;
    Z2sbtnCapacidad: TfcShapeBtn;
    z2bbtnCrono: TfcShapeBtn;
    Z2bbtnImprime: TfcShapeBtn;
    ppDBCronograma: TppDBPipeline;
    Edit1: TEdit;
    dbdtpFechaSol: TwwDBDateTimePicker;
    dblcdOfDes: TwwDBLookupComboDlg;
    dbeDescOfDes: TwwDBEdit;
    rgConsi: TRadioGroup;
    Label4: TLabel;
    Label5: TLabel;
    edtCuoPen: TEdit;
    rgTope: TRadioGroup;
    fcShapeBtn1: TfcShapeBtn;
    ppRepCronograma: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel36: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
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
    ppDBCalc3: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    rgMes: TRadioGroup;
    procedure dbeApeNomExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dbgCompromisoIButtonClick(Sender: TObject);
    procedure dbreObseDblClick(Sender: TObject);
    procedure dbreObseCloseDialog(Form: TForm);
    procedure Z2bbtnAtrasClick(Sender: TObject);
    procedure Z2bbtnSigueClick(Sender: TObject);
    procedure clbCronoClickCheck(Sender: TObject);
    procedure rgAccionClick(Sender: TObject);
    procedure edtCuotaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMensualExit(Sender: TObject);
    procedure dbgCompromisoDblClick(Sender: TObject);
    procedure Z2bbtnGrabaClick(Sender: TObject);
    procedure Z2sbtnCapacidadClick(Sender: TObject);
    procedure z2bbtnCronoClick(Sender: TObject);
    procedure ppRepCronogramaPreviewFormCreate(Sender: TObject);
    procedure edtCuotaExit(Sender: TObject);
    procedure Z2bbtnCalculoClick(Sender: TObject);
    procedure Z2bbtnImprimeClick(Sender: TObject);
    procedure dbdtpFechaSolExit(Sender: TObject);
    procedure dblcdOfDesExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fcShapeBtn1Click(Sender: TObject);
  private
    { Private declarations }
    xCapacidad : Double;
    xSysDate : TDate;
    xAsocodpago,xAsocodaux,xAsoapenom,xAsocodmod,xAsoid,xUseid,xUproid,xUpagoid,
    xAsodni,xAsodir,xCedDir,xEstcivid,xAsotelf1,xAsotelf2,xIngmensual,xObse,
    xEstidD,xEstadoD,xEstado0,xEstid0,xEstadoB,xEstidB,xEstado1,xEstid1,xEstadoC,xEstidC,xEstidA,xEstadoA,xEstidP,xEstadoP
    ,xEstid,xEstado,xCredidA,xFeccompro : String;
    xAnoact,xMesact,xDiaAct : word;
    xFlat,xMtoAcceso,xCRECAPPAG,DeudaApo,CtaInd,DeudaCre,xMTOAPXBEN,xCREMTOTAL,xCRESDOACT,xInteres : Double;
    Flat, vCredito, Capital, Amortizacion, vMonto, InteresM, FlatMto, xSaldoTotCre : Double;
    xCuentaD, xCuentaH, xTramite, xFPgoFin, xFPgoIni : String;
    xListaId,xTramiteAbr,xTipoCreid : String; //** Para Cargar el Tipo de Credito
    xCorre : String; //** para el correlativo del numero de crédito
    xCorrePagare : String; //** para el correlativo del numero de pagare
    xNroNotaAbono : String; //** para el correlativo del numero de Nota de Abono
    xPaso : Boolean; //** True = el correlativo es valido
    xTrue : boolean;
    xComision,CuotaMto,Interes,MtoCredito,NroCuotas,InteresE,InteresK,MtoCuota  : double;
    xTCambio, xCreMtoNabo, xSeguro, xGastosAdm, InteresMto, xSumaInt : Double;
    xTipdeseid, xTipdeseabr, xArea, xTabla, xCorreCampo, xSQL, gMes, gAno, xFecha : String;
    xNroCuota,xCeros : Integer;
    XAno,XMes : String;
    xCuotaporCobrar : Integer; //** para saber cuantas cuotas por cobrar tiene
    xCorreCred : String;
    xMesReg, xAnoReg, xDiaReg : Word;
    xCorreCadena : String; //**oficina+año+tipo de credito
    xTipocorre,xCorreWhere, xCorreWherex, xCorreWherey : String; //** Where solo para el correlativo del Crédito
    xConcredid,xCretcalabr,xCretcalid,xAsotipid,wDptoidUse,xForpagoT,xForpagoP,xTipoAsoA,xTipoAsoC : String;
    procedure cargabusqueda;  //** BUSCA AL ASOCIADO
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
    procedure limpiavar;   //** LIMPIA VARIABLES
    Function CalculoCuota : Boolean;  //** HOLLA EL MONTO DE LA CUOTA
    procedure CalculaFecha; //**  CALCULA LA FECHA DE INICIO Y FIN APARTIR DEL # DE CUOTAS
    procedure Graba303; //** GRABA EL NUEVO CREDITO EN CRE303
    procedure Graba301; //** GRABA EL NUEVO CREDITO EN CRE301

    procedure CorreCred(pCorre : String); //** para el correlativo
    Procedure BuscaCorre; //** para constatar que nop exista el numero DEL CORRELATIVO
    procedure Correlativo; //** llama a CorreCred y BuscaCorre
    procedure Calculo;  //** SOLO PARA EL CRONOGRAMA PREVIO
    procedure CalculoSaldo;  //** HALLA EL MONTO TOTAL QUE SE VA AMPLIAR O REDUCIR
    procedure ListaActiva;   //** CARGA LA LISTA ACTIVA
    procedure CronogramaEfectivo; //** GENERA EL CRONOGRAMA
    procedure Graba302;   //** GRABA EN CRE302
    procedure EjecutaNAbono;  //** MATA LAS CUOTAS DEL CREDITO ESCOGIDO,
                              //** ACTUALIZANDO CRE303,CRE301,CRE302 E INSERTANDO EN CRE310
    procedure cargaenblanco;  //** COB318
    procedure DeshaceDataSource;
    procedure CargaCrono(pSql : String);
    function RestaPeriodos(wPer1,wPer2:string):integer;
  public
    { Public declarations }
   wMtoCapRel, wTipoAso, wTipasoid, wTipoCuota, wTipCreAbr, wLista : String;
   wMas,wTipCre : String;
  end;

var
  FCaptaCuotas: TFCaptaCuotas;

implementation

uses COBDM1, CRE315,COB001;

{$R *.DFM}

procedure TFCaptaCuotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;


//** PASO 1
procedure TFCaptaCuotas.FormActivate(Sender: TObject);
var
   xFecha, xSQL : String;
begin
   xSQL := 'Select OFDESID, OFDESNOM, OFDESABR '+
          'From APO110 ORDER BY OFDESID';

   DM1.cdsOfDes.Close;
   DM1.cdsOfDes.DataRequest(xSQL);
   DM1.cdsOfDes.Open;

   dbdtpFechaSol.Date := Date;
   dbdtpFechaSolExit(Sender);

   //** busco el tipo de desembolso
   xSQL := 'Select TIPDESEID, TIPDESEABR From CRE104 Where TIPDEV ='+QuotedStr('A');

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xTipdeseid := DM1.cdsQry.FieldByName('TIPDESEID').AsString;
   xTipdeseabr:= DM1.cdsQry.FieldByName('TIPDESEABR').AsString;

   //** carga las tablas a usar
   xSQL := 'Select * From CRE119 ';

   DM1.cdsRelCapCuo.Close;
   DM1.cdsRelCapCuo.DataRequest(xSQL);
   DM1.cdsRelCapCuo.Open;

   xSQL := 'Select * From CRE109';

   DM1.cdsListaCreA.Close;
   DM1.cdsListaCreA.DataRequest(xSQL);
   DM1.cdsListaCreA.Open;

   //** CARGO LOS ESTADOS QUE PUEDEN INTERBENIR EN LA AMPLIACION O REDUCCION
   xEstadoD := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('D'), 'ESTDES');
   xEstidD  := DM1.cdsQry.FieldByName('ESTID').AsString;


   xEstadoA := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('N'), 'ESTDES');
   xEstidA  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xEstadoP := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('V'), 'ESTDES');
   xEstidP  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xEstadoC := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('2'), 'ESTDES');
   xEstidC  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xEstado1 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('3'), 'ESTDES');
   xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xEstado0 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('1'), 'ESTDES');
   xEstid0  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xEstadoB := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('C'), 'ESTDES');
   xEstidB  := DM1.cdsQry.FieldByName('ESTID').AsString;

    //** B me indica que son ampliados o reducidos
    xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('B'),'ESTDES');
    xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;


   //** CARGO LA FECHA DEL SISTEMA
   xSQL := 'Select '+wRepFecServi+' FECHA From TGE901 '; //Where DUME = '+QuotedStr('PER');

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xFecha := copy(DM1.cdsQry.FieldByName('FECHA').AsString, 1, 10);
   xSysDate := StrToDate(xFecha);
   DecodeDate(xSysDate, xAnoact, xMesact, xDiaAct);

   //** carga los compromisos anteriores si tuviera
   cargaenblanco;

   dblcdOfDes.Text := '01';
   dblcdOfDes.OnExit(dblcdOfDes);

   //** SETEO EL GRID
   dbgCompromiso.enabled := False;
   dbgCompromiso.selected.Add('FECCOMPRO'#9'10'#9'Fecha de~Compromiso');
   dbgCompromiso.selected.Add('CREDIDA'#9'15'#9'Crédito ~Anterior');
   dbgCompromiso.selected.Add('CREDIDN'#9'15'#9'Crédito ~Nuevo');
   dbgCompromiso.selected.Add('CRCLSITDES'#9'10'#9'Estado');
   dbgCompromiso.selected.Add('OBSER'#9'30'#9'Observación');
   dbgCompromiso.DataSource := DM1.dsCompromiso;
   dbreObse.clear;
end;

//** PASO 2
procedure TFCaptaCuotas.dbeApeNomExit(Sender: TObject);
var
 xSQL : String;
begin
  //** SI HAY UN NOMBRE SE BUSCA
  If dbeApeNom.Text <> '' Then
   begin
    DeshaceDataSource;
    xSQL := 'Select * From APO201'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(dbeApeNom.Text+'%'));
    DM1.cdsAso.Close;
    DM1.cdsAso.DataRequest(xSQL);
    DM1.cdsAso.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If DM1.cdsAso.RecordCount = 1 Then
     CargaBusqueda
    Else
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeApeNom.Text+'%')));


    If Length(xAsoid) > 0 Then
    begin
      xTipoAsoA := DM1.DisplayDescrip('prvSQL','APO107','ASOTIPID','ASOTIPO='+quotedstr('A'),'ASOTIPID');
      xTipoAsoC := DM1.DisplayDescrip('prvSQL','APO107','ASOTIPID','ASOTIPO='+quotedstr('C'),'ASOTIPID');
      xForpagoT := DM1.DisplayDescrip('prvSQL','COB101','FORPAGOID','FORPAGFAPO='+quotedstr('SDB'),'FORPAGOID');
      xForpagoP := DM1.DisplayDescrip('prvSQL','COB101','FORPAGOID','FORPAGFAPO='+quotedstr('SD'),'FORPAGOID');

       //** busco los creditos que no tengan ni una cuota en proceso de cobranza ni bloqueada
       //** pero si por cobrar, no pagadas o parciales vencidas
       xSQL := 'Select B.CREDID,B.CREESTADO, B.CREMTOOTOR,B.CRENUMCUO'+
               ' From CRE303 B,(Select A.CREDID,A.ASOID'+
               ' From CRE302 A Where  A.ASOID ='+QuotedStr(xAsoid);
     If rgConsi.ItemIndex = 1 then
       xSQL:=xSQL+' AND NOT EXISTS (SELECT B.ASOID,B.CREDID FROM CRE302 B WHERE'+
               ' B.ASOID ='+QuotedStr(xAsoid)+' AND B.CREESTID = '+quotedstr(xEstidD)+' ) ';
       xSQL:=xSQL+' AND (A.CREESTID = '+QuotedStr(xEstidA);

     If rgConsi.ItemIndex = 0 then
       xSQL:=xSQL+' OR A.CREESTID = '+QuotedStr(xEstidD);
      xSQL:=xSQL+' OR (A.CREESTID = '+QuotedStr(xEstidP)+
               ' AND A.CREANO <= '+QuotedStr(IntToStr(xAnoSys))+
               ' AND cast(A.CREMES as integer) < '+IntToStr(xMesSys)+')'+' OR'+
               ' A.CREESTID = '+QuotedStr(xEstidC)+') '+
               ' GROUP BY A.CREDID, A.CREESTADO, A.ASOID) A, '+
                ' (SELECT B.ASOID,B.CREDID'+
                ' FROM CRE302 B ,'+
                ' (SELECT C.CRENUMCUO,credid'+
                ' FROM CRE303 C'+
                ' Where C.ASOID='+QuotedStr(xAsoid)+') C'+
                ' WHERE B.ASOID='+QuotedStr(xAsoid)+' AND C.CREDID = B.CREDID AND'+
                ' CAST(C.CRENUMCUO AS INTEGER) = CAST(B.CRECUOTA AS INTEGER) and'+
                ' ((B.CREANO = '+QuotedStr(IntToStr(xAnoSys))+
                ' AND cast(B.CREMES as integer) > '+IntToStr(xMesSys)+
                ' ) OR '+
                ' (B.CREANO = '+QuotedStr(IntToStr(xAnoSys))+
                ' AND cast(B.CREMES as integer) < '+IntToStr(xMesSys)+
                ' )'+
               ' OR (B.CREANO > '+QuotedStr(IntToStr(xAnoSys))+')) GROUP BY  B.ASOID,B.CREDID) C,'+
               ' (SELECT D.ASOID,E.CREDID FROM APO201 D, CRE303 E'+
               ' WHERE D.ASOID ='+QuotedStr(xAsoid)+' AND E.ASOID ='+QuotedStr(xAsoid)+' AND'+
               ' ((D.ASOTIPID='+quotedstr(xTipoAsoA)+') OR (D.ASOTIPID='+
                quotedstr(xTipoAsoC)+' '+
               ' AND D.REGPENID=''01''))  AND ( (E.FORPAGOID = '+quotedstr(xForpagoT)+
               ' AND  (D.SITCTA=''A'' or D.SITCTA=''V'' ))  OR'+
               ' (E.FORPAGOID = '+quotedstr(xForpagoP)+
               '))) D Where B.ASOID ='+QuotedStr(xAsoid)+' AND'+
               ' B.ASOID = A.ASOID AND  B.CREDID = A.CREDID AND'+
               ' B.ASOID = C.ASOID AND  B.CREDID = C.CREDID AND'+
               ' B.ASOID = D.ASOID AND  B.CREDID = D.CREDID'+
               ' GROUP BY B.CREDID, B.CREESTADO, B.CREMTOOTOR,B.CRENUMCUO';
      DM1.cdsSolicitudes.Close;
      DM1.cdsSolicitudes.DataRequest(xSQL);
      DM1.cdsSolicitudes.Open;
      If DM1.cdsSolicitudes.Recordcount <= 0 Then
       begin
        ShowMessage('No tiene Créditos que cumplan con las condiciones para Ampliar o Reducir');
        Exit;
       end;

      //** carga el nombre del colegio
      xSQL := 'Select CEDDIR'
             +' From APO202 Where ASOID='+QuotedStr(xAsoid);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xCedDir     := DM1.cdsQry.FieldByName('CEDDIR').AsString;

      //** carga los compromisos anteriores si tuviera
      xSQL := 'SELECT * FROM COB318 '
             +'WHERE ASOID='+QuotedStr(xAsoid);
      DM1.cdsCompromiso.Close;
      DM1.cdsCompromiso.DataRequest(xSQL);
      DM1.cdsCompromiso.Open;
      dbgCompromiso.Enabled := True;
     end;
   end;
end;

procedure TFCaptaCuotas.cargabusqueda;
var
 xWhere : String;
begin
   dbeApeNom.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   //** cargo el tipo de asociado
   xWhere      := 'ASOTIPID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString);
   wTipoAso    := DM1.DisplayDescrip('prvSQL', 'APO107', 'ASOTIPDES, ASOTIPID', xWhere, 'ASOTIPDES');
   wTipasoid   := DM1.cdsQry.fieldByName('ASOTIPID').AsString;
   //** asigno las demás variables
   xAsocodpago := DM1.cdsAso.FieldByName('ASOCODPAGO').AsString;
   xAsocodaux  := DM1.cdsAso.FieldByName('ASOCODAUX').AsString;
   xAsoapenom  := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   xAsocodmod  := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   xAsoid      := DM1.cdsAso.FieldByName('ASOID').AsString;
   xUseid      := DM1.cdsAso.FieldByName('USEID').AsString;
   xUproid     := DM1.cdsAso.FieldByName('UPROID').AsString;
   xUpagoid    := DM1.cdsAso.FieldByName('UPAGOID').AsString;
   xAsodni     := DM1.cdsAso.FieldByName('ASODNI').AsString;
   xAsodir     := DM1.cdsAso.FieldByName('ASODIR').AsString;
   xEstcivid   := DM1.cdsAso.FieldByName('ESTCIVID').AsString;
   xAsotelf1   := DM1.cdsAso.FieldByName('ASOTELF1').AsString;
   xAsotelf2   := DM1.cdsAso.FieldByName('ASOTELF2').AsString;
   xIngmensual := '0.00';
   xObse       := '';
   xCredidA := '';
   xFeccompro := '';
   xWhere      := 'USEID ='+QuotedStr(xUseid);
   wDptoidUse := DM1.DisplayDescrip('prvSQL', 'APO101', 'DPTOID', xWhere, 'DPTOID');
end;

procedure TFCaptaCuotas.LevantaFiltro(xCampo : String);
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
procedure TFCaptaCuotas.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL : String;
begin
   xSQL := 'Select * From APO201'
          +' Where ASOID ='+QuotedStr(DM1.cdsAsoX.FieldByName('ASOID').AsString);
   DM1.FiltraCDS(DM1.cdsAso,xSQL);
   cargabusqueda;
   TMant(Sender).FMant.Close;
end;

//** PASO 3
//** EDITO O INSERTO
procedure TFCaptaCuotas.dbgCompromisoDblClick(Sender: TObject);
begin;
  if DM1.cdsCompromiso.RecordCount>0 then
  begin
   DM1.wModo := 'M';
   dbeModulo.DataSource    := DM1.dsCompromiso;
   dbeDni.DataSource       := DM1.dsCompromiso;
   dbeCivil.DataSource     := DM1.dsCompromiso;
   dbeTelf1.DataSource     := DM1.dsCompromiso;
   dbeTelf2.DataSource     := DM1.dsCompromiso;
   dbeDirDom.DataSource    := DM1.dsCompromiso;
   dbeDirCol.DataSource    := DM1.dsCompromiso;
   dbseAnoTalon.DataSource := DM1.dsCompromiso;
   dbseMesTalon.DataSource := DM1.dsCompromiso;
   dbeMensual.DataSource   := DM1.dsCompromiso;
   dbreObse.Text := DM1.cdsCompromiso.FieldByName('OBSER').AsString;
   pnlDatos.Enabled := DM1.cdsCompromiso.FieldByName('RECLSITDES').AsString <> 'PROCEDE TRAMITE';
  end;
end;

//** INSERTO UN NUEVO COMPROMISO
procedure TFCaptaCuotas.dbgCompromisoIButtonClick(Sender: TObject);
begin
  //** Situacion inicial 'EN TRAMITE'
  DM1.wModo := 'A';
  dbeModulo.DataSource := DM1.dsCompromiso;
  dbeDni.DataSource := DM1.dsCompromiso;
  dbeCivil.DataSource := DM1.dsCompromiso;
  dbeTelf1.DataSource := DM1.dsCompromiso;
  dbeTelf2.DataSource := DM1.dsCompromiso;
  dbeDirDom.DataSource := DM1.dsCompromiso;
  dbeDirCol.DataSource := DM1.dsCompromiso;
  dbseAnoTalon.DataSource := DM1.dsCompromiso;
  dbseMesTalon.DataSource := DM1.dsCompromiso;
  dbeMensual.DataSource := DM1.dsCompromiso;

  xTramiteAbr := DM1.DisplayDescrip('prvSQL','APO113','RECLSITDES,RECLSITID','TIPO='+QuotedStr('R'),'RECLSITDES');
  xTramite := DM1.cdsQry.FieldByName('RECLSITID').AsString;

  dbgCompromiso.Enabled := False;
  DM1.cdsCompromiso.Insert;
  DM1.cdsCompromiso.FieldByName('ASOCODPAGO').AsString := xAsocodpago;
  DM1.cdsCompromiso.FieldByName('ASOCODAUX').AsString  := xAsocodaux;
  DM1.cdsCompromiso.FieldByName('ASOAPENOM').AsString  := xAsoapenom;
  DM1.cdsCompromiso.FieldByName('ASOCODMOD').AsString  := xAsocodmod;
  DM1.cdsCompromiso.FieldByName('ASOID').AsString      := xAsoid;
  DM1.cdsCompromiso.FieldByName('USEID').AsString      := xUseid;
  DM1.cdsCompromiso.FieldByName('UPROID').AsString     := xUproid;
  DM1.cdsCompromiso.FieldByName('UPAGOID').AsString    := xUpagoid;
  DM1.cdsCompromiso.FieldByName('ASODNI').AsString     := xAsodni;
  DM1.cdsCompromiso.FieldByName('ASODIR').AsString     := xAsodir;
  DM1.cdsCompromiso.FieldByName('CEDDIR').AsString     := xCedDir;
  DM1.cdsCompromiso.FieldByName('ESTCIVID').AsString   := xEstcivid;
  DM1.cdsCompromiso.FieldByName('ASOTELF1').AsString   := xAsotelf1;
  DM1.cdsCompromiso.FieldByName('ASOTELF2').AsString   := xAsotelf2;
  DM1.cdsCompromiso.FieldByName('INGMENSUAL').AsString := xIngmensual;
  DM1.cdsCompromiso.FieldByName('OBSER').AsString      := xObse;
  DM1.cdsCompromiso.FieldByName('FREG').AsdateTime     := xSysDate;
  DM1.cdsCompromiso.FieldByName('USUARIO').AsString    := DM1.wUsuario;
  DM1.cdsCompromiso.FieldByName('HREG').AsdateTime     := time;
  DM1.cdsCompromiso.FieldByName('RECLSITID').AsString  := xTramite;
  DM1.cdsCompromiso.FieldByName('RECLSITDES').AsString := xTramiteAbr;
  DM1.cdsCompromiso.FieldByName('CREDIDA').AsString    := xCredidA;
  DM1.cdsCompromiso.FieldByName('CREDIDN').AsString    := xCorreCred;
  DM1.cdsCompromiso.FieldByName('FECCOMPRO').AsDateTime:= xSysDate;
  DM1.cdsCompromiso.FieldByName('COBTALOANO').AsString := IntToStr(xAnoact);
  DM1.cdsCompromiso.FieldByName('COBTALOMES').AsString := IntToStr(xMesact);
  pnlDatos.Enabled := True;
  dbseAnoTalon.SetFocus;
end;


procedure TFCaptaCuotas.dbeMensualExit(Sender: TObject);
begin
    DM1.cdsCompromiso.edit;
    xIngmensual := dbeMensual.TEXT;
    TNumericField(DM1.cdsCompromiso.FieldByName('INGMENSUAL')).DisplayFormat:='';
    DM1.cdsCompromiso.FieldByName('INGMENSUAL').AsString := xIngmensual;
    TNumericField(DM1.cdsCompromiso.FieldByName('INGMENSUAL')).DisplayFormat:='###,###,##0.00';
end;

//** doble click en el memo
procedure TFCaptaCuotas.dbreObseDblClick(Sender: TObject);
begin
    dbreObse.Execute
end;

//** al cerrar el memo
procedure TFCaptaCuotas.dbreObseCloseDialog(Form: TForm);
begin
    DM1.cdsCompromiso.Edit;
    DM1.cdsCompromiso.FieldByname('OBSER').AsString := dbreObse.Lines.Text;
end;

//** CANCELA 
procedure TFCaptaCuotas.Z2bbtnAtrasClick(Sender: TObject);
begin
  DM1.cdsCompromiso.Cancel;
  DM1.cdsCompromiso.CancelUpdates;
  dbgCompromiso.Enabled := True;
  pnlCrono.Enabled := False;
  limpiavar;
  dbeModulo.DataSource    := nil;
  dbeDni.DataSource       := nil;
  dbeCivil.DataSource     := nil;
  dbeTelf1.DataSource     := nil;
  dbeTelf2.DataSource     := nil;
  dbeDirDom.DataSource    := nil;
  dbeDirCol.DataSource    := nil;
  dbseAnoTalon.DataSource := nil;
  dbseMesTalon.DataSource := nil;
  dbeMensual.DataSource   := nil;
end;

//** limpia las variables
procedure TFCaptaCuotas.limpiavar;
begin
  dbreObse.Clear;
  xAsocodpago := '';
  xAsocodaux := '';
  xAsoapenom := '';
  xAsocodmod := '';
  xAsoid := '';
  xUseid := '';
  xUproid := '';
  xUpagoid := '';
  xAsodni := '';
  xAsodir := '';
  xCedDir := '';
  xEstcivid := '';
  xAsotelf1 := '';
  xAsotelf2 := '';
  xIngmensual := '';
  xObse := '';
  xCredidA := '';
  xCorreCred := '';
end;

//** PASO 4
procedure TFCaptaCuotas.Z2bbtnSigueClick(Sender: TObject);
begin
   If Length(dbeMensual.text) <= 0 Then
    begin
     Showmessage('Falta el Monto del Mes');
     exit;
    end;
   If Length(dbreObse.Text) <= 0 Then
    begin
     Showmessage('Falta la Observación');
     exit;
    end;
   pnlDatos.enabled := False;
    //** GRABAR EN COB318 por medio de APLICADATOS, se debe de crear en el servidor el
    //** cuando es primera vez, se pasa el nombre del campo del cual se sacara el correlativo
    If DM1.wModo = 'A' Then
     begin
    //** para el correlativo de credid, sucede lo mismo que para el pagare
      xTipocorre := '4';
      xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''003''','MODULOID');
      xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' AND CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                      ' TIPO ='+quotedstr(xTipocorre)+' and ';
      xCorreWherex := ' x.CREAREA = '+quotedstr(xArea)+' AND x.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                      ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
      xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' AND y.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                      ' y.TIPO ='+quotedstr(xTipocorre);
      xTabla := 'COB216';
      xCeros := 6;
      xCorreCampo  :=  'CRENUMCOMP';
      //** Busca el correlativo para el numero de compromiso
      Correlativo;
      DM1.cdsCompromiso.FieldByName('COMPROMID').AsString := xCorre;
      DM1.cdsCompromiso.FieldByname('OBSER').AsString := dbreObse.Lines.Text;
    end
    Else
     begin
      DM1.cdsCompromiso.Edit;
      DM1.cdsCompromiso.FieldByName('FREG').AsdateTime     := xSysDate;
      DM1.cdsCompromiso.FieldByName('USUARIO').AsString    := DM1.wUsuario;
      DM1.cdsCompromiso.FieldByName('HREG').AsdateTime     := time;
     end;
    DM1.AplicaDatos(DM1.cdsCompromiso,'COMPROMISO');

   pnlCrono.Enabled := True;
   DM1.cdsSolicitudes.first;
   //** cargo el listbox con los créditos aptos para ampliación o disminución
   clbCrono.clear;
   while not DM1.cdsSolicitudes.eof do
   begin
     clbCrono.Items.Add(DM1.cdsSolicitudes.FieldByName('CREDID').AsString+' -- '+
                        FloatToStrF(DM1.cdsSolicitudes.FieldByName('CREMTOOTOR').AsFloat,ffFixed,15,2)+' -- '+
                        FloatToStrF(DM1.cdsSolicitudes.FieldByName('CRENUMCUO').AsFloat,ffFixed,2,0)+' -- '+
                        DM1.cdsSolicitudes.FieldByName('CREESTADO').AsString);
     clbCronoAux.Items.Add(DM1.cdsSolicitudes.FieldByName('CREDID').AsString);
     DM1.cdsSolicitudes.next;
   end;
   dbeApeNom.enabled := False;
   Z2bbtnCalculo.enabled := True;
end;

//** PASO 5
procedure TFCaptaCuotas.clbCronoClickCheck(Sender: TObject);
var
   xCheck, I : Integer;
   xSQL : String;
begin
   //** Desmarco
   xCheck := clbCrono.ItemIndex;
   For I := 0 to (clbCrono.Items.Count - 1) Do
    begin
     If clbCrono.Checked[I] Then
      begin
       If xCheck<>I Then
        begin
         clbCrono.Checked[I]:=False;
        end;
      end;
    end;

   //** Si el Item seleccionado esta marcado
   If clbCrono.Itemindex >= 0 Then
    begin
     xTrue := clbCrono.Checked[clbCrono.Itemindex];
     //** MARCO EL LISTBOX INTERNO
     clbCronoAux.ItemIndex := clbCrono.ItemIndex;
    end
   Else xTrue := False;

   //** habilito los controles del calculo
   rgAccion.Enabled := xTrue;

   //** cargo el credito a matar
   xCredidA := clbCronoAux.Items.Strings[clbCronoAux.ItemIndex];
   xSQL := 'Select * From CRE303 Where ASOID ='+
           QuotedStr(xAsoid)+' AND CREDID='+QuotedStr(xCredidA);
   DM1.cdsSolicitudA.Close;
   DM1.cdsSolicitudA.DataRequest(xSQL);
   DM1.cdsSolicitudA.Open;
   xAsotipid := DM1.cdsSolicitudA.FieldByName('ASOTIPID').AsString;
   //** 25/02/2003 - PJSV
   xSQL := 'Select count(asoid) TOTAL From CRE302 A'
          +' Where A.ASOID ='+QuotedStr(xAsoid)
          +' AND A.CREDID='+QuotedStr(xCredidA)
          +' AND A.ASOAPENOM LIKE ('+QuotedStr(trim(dbeApeNom.text)+'%')+')'
          +' AND (A.CREESTID='+QuotedStr(xEstidC)+' OR A.CREESTID='+QuotedStr(xEstidA)
          +' OR A.CREESTID='+QuotedStr(xEstidP);
   If rgConsi.ItemIndex = 0 then
    xSql := xSql + ' OR A.CREESTID='+QuotedStr(xEstidD);
   xSql := xsql +')';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
   edtCuoPen.text := DM1.cdsQry5.FieldByName('TOTAL').Asstring;
   //**
end;

//** PASO 6
procedure TFCaptaCuotas.rgAccionClick(Sender: TObject);
begin
  rgTope.enabled := rgAccion.ItemIndex = 0;
  edtCuota.Enabled := xTrue;
  Z2bbtnCalculo.Enabled := xTrue;
  rgMes.Enabled := xTrue;
end;

//** PASO 7
procedure TFCaptaCuotas.edtCuotaKeyPress(Sender: TObject; var Key: Char);
begin
   If Key In [' ', 'A'..'Z', 'a'..'z',
              '°','|', '!', '"', '#','$','%','&','/','(',')','=','?','\','¡','¿','@',
              '¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''',
              '-','_'] Then
    Key := #0;
end;

function TFCaptaCuotas.CalculoCuota : Boolean;
begin
   // Monto Otorgado - Monto crédito
   MtoCredito := DM1.FRound(StrToFloat(edtSaldoCre.Text), 15, 2);

  // Interes
  Interes:= xInteres/100;

  // Interes + 1 para la fórmula
  InteresM:=Interes+1;

  // Flat
  Flat:= xFlat/100;

  //Número de Cuotas
  NroCuotas:= Round(StrToFloat(edtCuota.Text));

  // Calculando el Monto del Flat
  FlatMto:= Flat*MtoCredito/NroCuotas;

  // Elevando a la potencia n para: (1+I)
  InteresE:= Power(InteresM,NroCuotas);

  //                   n
  // Calculando : [(1+I )]-1
  InteresK:= InteresE-1;

  // Calculando el Monto de la Cuota
  MtoCuota:= DM1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),15,2);
  CuotaMto:= MtoCuota;

  //** Este campo no variara durante el pago de las cuotas
  xCREMTOTAL := DM1.FRound(MtoCuota * NroCuotas,15,2);
  xCRESDOACT := DM1.FRound(MtoCuota * NroCuotas,15,2);


 //***** FIN DEL MONTO DE LA CUOTA

{ 23/12/2002 - PJSV , habilitarlo luego de las pruebas

 // Consulta de aportes no pagados, Deuda de Aportes
 xSQL:='Select TRANSID,ASOID,SUM(TRANSMTO) AS APODEUDA'+
       ' From APO301 Where ASOID='+QuotedStr(xAsoid)+' AND '+
       ' TRANSINTID='+QuotedStr('NPG')+' GROUP BY ASOID,TRANSID';
  DM1.cdsConsulta.IndexFieldNames := '';
  DM1.cdsConsulta.Filter := '';
  DM1.cdsConsulta.Filtered := False;
  DM1.cdsConsulta.Close;
  DM1.cdsConsulta.DataRequest(xSQL);
  DM1.cdsConsulta.Open;

   If (DM1.cdsConsulta.RecordCount>0) And (Length(TRIM(DM1.cdsConsulta.FieldByName('APODEUDA').AsString))>0) Then
    DeudaCre := DM1.cdsConsulta.FieldByName('APODEUDA').AsFloat
   Else
    DeudaCre := 0;

   xSQL := ' Select TRANSID, ASOID, SALDO, TRANSANO, TRANSMES From APO301'
          +' Where ASOID ='+QuotedStr(xAsoid)
          +' AND TRANSINTID ='+QuotedStr('NPG')
          +' AND TRANSMES IN (Select MAX(TRANSMES) From APO301'
          +' Where ASOID ='+QuotedStr(xAsoid)
          +' AND TRANSINTID ='+QuotedStr('NPG')+')'
          +' AND TRANSANO IN (Select MAX(TRANSANO) From APO301'
          +' Where ASOID ='+QuotedStr(xAsoid)
          +' AND TRANSINTID ='+QuotedStr('NPG')+')';

   DM1.cdsConsulta.Close;
   DM1.cdsConsulta.DataRequest(xSQL);
   DM1.cdsConsulta.Open;

   //** Cta individual
   If (DM1.cdsConsulta.RecordCount>0) And (Length(Trim(DM1.cdsConsulta.FieldByName('SALDO').AsString))>0) Then
    CtaInd := DM1.cdsConsulta.FieldByName('SALDO').AsFloat
   Else
    CtaInd := 0;
}
//** 23/12/2002 - PJSV, Borrar si se activa lo de arriba
    CtaInd := 0;
    DeudaCre := 0;
//**

   // Asigna Monto Aproximado del beneficio
   xMTOAPXBEN := CtaInd-(DeudaApo+DeudaCre);

   //** Calcula las Fechas de Inicio y Fin
   CalculaFecha;

   // Asigna Capacidad de Pago
   xFecha := DateTimeToStr(xSysDate);
   gMes   := IntToStr(xMesact);
   gAno   := IntToStr(xAnoact);

   If StrToInt(gMes)=12 Then
    begin
     gMes := '01';
     gAno := IntToStr(StrToInt(gAno)+1);
    end
   Else
    gMes := DM1.StrZero(IntToStr(StrToInt(gMes)+1),2);

  //** capacidad de pago
  xCRECAPPAG := StrToFloat(dbeMensual.text);
  xSQL:='SELECT ASOID,SUM(CREMTO) AS MONTO,CREMES,CREANO,CREESTADO FROM CRE302 '+
        ' WHERE ASOID='+QuotedStr(xAsoid)+' AND '+
        ' CREESTID='+QuotedStr('02')+ ' AND (CREANO='+
        QuotedStr(IntToStr(xAnoSys))+' AND cast(CREMES as integer)='+IntToStr(xMesSys +1)+') '+
        ' GROUP BY ASOID,CREMES,CREANO,CREESTADO';
  DM1.cdsqry5.Close;
  DM1.cdsqry5.DataRequest(xSQL);
  DM1.cdsqry5.Open;
  If (DM1.cdsqry5.RecordCount>0) And (Length(TRIM(DM1.cdsqry5.FieldByName('MONTO').AsString))<>0)
     And (Length(dbeMensual.Text)>0) Then
   Begin
    xCapacidad := StrToFloat(dbeMensual.Text)-DM1.cdsqry5.FieldByName('MONTO').AsFloat;
    //DeudaApo:=DM1.cdsConsulta.FieldByName('MONTO').AsFloat;
    // dbeCapPagoReal.Text:=DM1.cdsSolicitud.FieldByName('CRECAPPAG').AsString;
    edtCapaci.Text := FloatToStrF(xCapacidad,ffFixed,15,2);
   End
  Else
   begin
    xCapacidad := StrToFloat(dbeMensual.text);
    edtCapaci.Text := FloatToStrF(xCapacidad,ffFixed,15,2);
    //dbeCapPagoReal.Text:=DM1.cdsSolicitud.FieldByName('CRECAPPAG').AsString;
   end;
  xMtoAcceso := Round((MtoCuota / StrToFloat(edtCapaci.Text)) * 100);

  //xMtoAcceso := Round((MtoCuota / xCRECAPPAG) * 100);

   //edtCapaci.Text := FloatToStrF(xCRECAPPAG, ffFixed, 15, 2);
   edtMtoCuo.Text := FloatToStrF(MtoCuota, ffFixed, 15, 2);

   If (rgAccion.itemIndex = 0) and (rgTope.ItemIndex = 0) then
    If xMtoAcceso >  DM1.cdsParam.FieldByName('PMTOLIQ').AsFloat   Then
     begin
      ShowMessage('La capacidad de Pago no permite esta cantidad de cuotas');
      Result := False;
      Exit;
     end;
   Result := True;
end;

procedure TFCaptaCuotas.CalculaFecha;
var
 xAnios,xMeses,xI : Integer;
begin
    //** para la fecha de inicio
    xMeses := 0;
    If xMesact + 1 <=12 Then
     begin
      xFPgoIni := DM1.StrZero(FloatToStr((xMesact + 1)),2)+FloatToStr(xAnoact);
     end
    Else
     begin
      xFPgoIni := '01'+FloatToStr(xAnoact+1);
     end;

    //** para la fecha de Fin
    xAnios :=  round(StrToFloat(edtCuota.text) / 12);
    If (StrToFloat(edtCuota.text) / 12) - round(StrToFloat(edtCuota.text) / 12) > 0 Then
     xAnios := xAnios + 1;
    xI := 1;
    For xI := xI to StrToInt(edtCuota.text) do
     begin
      If xI + xMesact <= 12 Then
       xMeses := xMesact + xI
      Else
       begin
        xMeses := xMeses + 1;
        If xMeses > 12 Then
         xMeses := 1;
       end;
     end;
    xFPgoFin := DM1.StrZero(FloatToStr(xMeses),2)+FloatToStr(xAnoact+xAnios) ;
end;

Procedure TFCaptaCuotas.Correlativo;
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
procedure TFCaptaCuotas.CorreCred(pCorre : String);
var
 xCadena,xSql : String;
begin
 //** dependiendo del pCorre, lleno xCadena para el Sql
 If pCorre = 'CREDID' then
   xCadena := 'substr(CREDID,9,7)'
 else
   xCadena := pCorre;

   xSql := 'select '+xCadena+' +1 NUMCRED from CRE206 '+
           'where '+ xCorreWhere +
           xCorreCampo+' IN (select x.'+xCorreCampo+' from CRE206 x, CRE206 y '+
          ' where '+ xCorreWherex + xCorreWherey +')';
   Dm1.cdsQry.Close;
   Dm1.cdsQry.DataRequest(xSql);
   Dm1.cdsQry.Open;
   //** asigno el nuevo correlativo
   xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger),xCeros);
end;

//** 19/12/2002 - PJSV
Procedure TFCaptaCuotas.BuscaCorre;
var
 xSql : String;
begin
  //** por defecto
  xPaso := True;
  //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
  //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
  //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
  //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
  xSql := 'SELECT count(NUMERO) TOTAL FROM '+xTabla+' WHERE NUMERO='+quotedstr(xCorre);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  //** False = para que siga repitiendo la busqueda
  If Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 then
    xPaso := False
  else
   //** sino graba en la tabla auxiliar (cre201)
    begin
     xSql := 'INSERT INTO '+xTabla+' (NUMERO) VALUES (';
     If xCorreCampo = 'CREDID' then
      xSql := xSql + quotedstr(xCorreCadena+xCorre)+')'
     else
      xSql := xSql + quotedstr(xCorre)+')';
     try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     except
       ShowMessage('Error en 1');
     end;

     If StrtoInt(xCorre) = 1 then
      begin
       If xCorreCampo = 'CREDID' then
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,CORREANO,TIPO) VALUES ('+quotedstr(xCorreCadena+xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(FloatToStr(xAnoReg))+','+quotedstr(xTipocorre)+')'
       else
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,CORREANO,TIPO) VALUES ('+quotedstr(xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(FloatToStr(xAnoReg))+','+quotedstr(xTipocorre)+')';
      end
     else
      begin
       If xCorreCampo = 'CREDID' then
        xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorreCadena+xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+' AND CORREANO='+quotedstr(FloatToStr(xAnoReg))+
                ' AND SUBSTR(CREDID,1,2)='+quotedstr(copy(xCorreCadena,1,2))+
                ' AND SUBSTR(CREDID,3,4)='+quotedstr(copy(xCorreCadena,3,4))+
                ' AND SUBSTR(CREDID,7,2)='+quotedstr(copy(xCorreCadena,7,2))+
                ' AND TIPO ='+quotedstr(xTipocorre)
       else
        xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+' AND CORREANO='+quotedstr(FloatToStr(xAnoReg))+
                ' AND TIPO ='+quotedstr(xTipocorre);
//                ' WHERE CREAREA ='+quotedstr(xArea);
      end;
     try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     except
       ShowMessage('Error en 2');
     end;
    end;
end;

procedure TFCaptaCuotas.Graba303;
CONST  xCampos303 : String = ('OFDESID,CREDID,FREG,ASOAPENOM,ASOCODMOD,ASOID,'+
                        'UPROID,UPAGOID,USEID,LISTAID,TIPCREID,FULTPGOA,'+
                        'FULTPGOM,MTOULTPAGO,CREMTOSOL,CUOTAINI,CREPERGRA,CRENUMCUO,'+
                        'MTOAPXBEN,CRECAPPAG,CRECUOTA,CREMTOOTOR,FORPAGOID,CREMTOGIR,'+
                        'TIPDESEID,CREFINIPAG,CREFFINPAG,NROPAGARE,NROAUTDES,BANCOID,'+
                        'ASOCODPAGO,TMONID,TMONABR,CREINTERES,CREDFLAT,CRETCALID,'+
                        'CRETCALABR,LISTAABR,FORPAGOABR,CONDCREDID,CREMTONABO,TIPCREDES,'+
                        'USUARIO,CIAID,HREG,CALIFICAID,APRUEBAID,CREESTID,'+
                        'CREESTADO,CRESALDOT,CUENTAD,CUENTAH,CCOSID,CREFOTORG,'+
                        'CREFECINI,CRENUMCTA,CREMTOPAG,CRESDOACT,CRECUOPAG,CRECUOENV,'+
                        'CREPERIODI,CREMTOTAL,DPTOID,TIPDESEABR,ASOCODAUX,CREANOMES,CREGENCOB,'+
                        'REFANOMES,NUMREFI,FLGREFI,ASODNI,ASOTIPID,NRONABO');
var
 xEstado1,xEsta1,xesta,xSQL : String;
begin
  try
    xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('1'),'ESTDES');
    xEsta1  := DM1.cdsQry.FieldByName('ESTID').AsString;
    xSQL := 'INSERT INTO CRE303 ('+xCampos303+') VALUES ('+
          QuotedStr('01')+','+
          QuotedStr(xCorreCred)+','+
          QuotedStr(DateToStr(xSysdate))+','+
          QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString)+','+
          QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString)+','+
          QuotedStr(xAsoid)+','+
          QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)+','+
          QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString)+','+
          QuotedStr(xUseid)+','+
          QuotedStr(xListaId)+','+
          QuotedStr(xTipoCreid)+','+
          QuotedStr(dbseAnoTalon.text)+','+
          QuotedStr(dbseMesTalon.text)+','+
          dbeMensual.text+','+
          edtSaldoCre.text+','+
          '0.00,'+
          '0.00,'+
          edtCuota.text+','+
          FloatToStrF(xMTOAPXBEN,ffFixed,15,2)+','+
          edtCapaci.text+','+
          edtMtoCuo.text+','+
          edtSaldoCre.text+','+
          QuotedStr(DM1.cdsSolicitudA.FieldByName('FORPAGOID').AsString)+','+
          edtSaldoCre.text+','+
          QuotedStr(xTipdeseid)+','+
          QuotedStr(xFPgoIni)+','+
          QuotedStr(xFPgoFin)+','+
          QuotedStr(xCorrePagare)+','+
          QuotedStr(xCorreCred)+','+
          QuotedStr(DM1.cdsAso.FieldByName('BANCOID').AsString)+','+
          QuotedStr(DM1.cdsAso.FieldByName('ASOCODPAGO').AsString)+','+
          QuotedStr(DM1.cdsListaCred.FieldByName('TMONID').AsString)+','+
          QuotedStr(DM1.cdsListaCred.FieldByName('TMONABR').AsString)+','+
          floatTostrF(Interes,ffFixed,15,2)+','+
          floatTostrF(FlatMto,ffFixed,15,2)+','+
          QuotedStr(xCretcalid)+','+
          QuotedStr(xCretcalabr)+','+
          QuotedStr(wLista)+','+
          QuotedStr(DM1.cdsSolicitudA.FieldByName('FORPAGOABR').AsString)+','+
          QuotedStr(xConcredid)+','+
          FloatToStrf(xCreMtoNabo,ffFixed,15,2)+','+
          QuotedStr(wTipCreAbr)+','+
          QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
          QuotedStr('02')+','+
          wRepTimeServi+','+
          QuotedStr(DM1.wUsuario)+','+
          QuotedStr(DM1.wUsuario)+','+
          QuotedStr(xEstidC)+','+
          QuotedStr(xEstadoC)+','+
          edtSaldoCre.text+','+
          QuotedStr(xCuentaD)+','+
          QuotedStr(xCuentaH)+','+
          QuotedStr(DM1.cdsSolicitudA.FieldByName('CCOSID').AsString)+','+
          QuotedStr(DateToStr(xSysDate))+','+
          QuotedStr(DateToStr(xSysDate))+','+
          QuotedStr(DM1.cdsAso.FieldByName('ASONCTA').AsString)+','+
          '0.00,'+
          FloatToStrf(xCRESDOACT,ffFixed,15,2)+','+
          '0.00,'+
          '0.00,'+
          '0.00,'+
          FloatToStrf(xCREMTOTAL,ffFixed,15,2)+','+
          //** DPTOID
          //** 15/01/2003 - PJSV , SE cambia porque el DPTOID del maestro no es el DPTOID
          //** de la USE
          //QuotedStr(DM1.cdsAso.FieldByName('DPTOID').AsString)+','+
          QuotedStr(wDptoidUse)+','+
          //**
          QuotedStr(xTipdeseabr)+','+
          QuotedStr(DM1.StrZero(DM1.cdsAso.FieldByName('ASOCODAUX').AsString,2))+','+
          FloatToStr(xAnoact)+DM1.strZero(FloatToStr(xMesact),2)+','+
          quotedstr(xEstid)+','+
          QuotedStr(IntToStr(xAnoact))+'||'+
          QuotedStr(DM1.StrZero(IntToStr(xMesact), 2))+','+
          quotedstr(xCredidA)+','+
          quotedstr('A')+','+
          quotedstr(xAsodni)+','+
          quotedstr(xAsotipid)+','+
          quotedstr(xCorreCred)+')';
    try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    except
      showmessage('Error en Ultimo');
    end;
   except
    showmessage('No se pudo grabar el nuevo crédito');
   end;
end;

procedure TFCaptaCuotas.Z2bbtnGrabaClick(Sender: TObject);
var
 xFecha : String;
begin
  if MessageDlg('Esta Seguro que desea Ampliar y/o Reducir las cuotas del Crédito',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   begin
    try
      Screen.Cursor := crHourGlass;
      xFecha := DateToSTr(xSysDate);
      //** busca el tipo de cambio
      DM1.RecUltTipoCambio(xFEcha);
      xTCambio := DM1.cdsQry.FieldByName(wTipoCambio).AsFloat;

      //** CALCULO DE CORRELATIVO para el nro del pagare,  el # de pagare es el mismo
      //** que hay para crédito no se hace uno nuevo por area.
      //** por eso que aca se pasa como area 002 y no 003
      xTipocorre := '3';
      xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''002''','MODULOID');
      xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' AND CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                      ' TIPO ='+quotedstr(xTipocorre)+' and ';
      xCorreWherex := ' x.CREAREA = '+quotedstr(xArea)+' AND x.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                      ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
      xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' AND y.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                      ' y.TIPO ='+quotedstr(xTipocorre);
      xTabla := 'CRE207';
      xCeros := 20;
      xCorreCampo := 'NROPAGARE';
      Correlativo;
      xCorrePagare := xCorre;

      //** para el correlativo de credid, sucede lo mismo que para el pagare
      xTipocorre := '1';
      xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''002''','MODULOID');
      xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' AND CORREANO = '+quotedstr(FloatToStr(xAnoReg))+
                      ' and substr(credid,1,2) = '+quotedstr(DM1.cdsOfDes.FieldByName('OFDESID').AsString)+
                      ' and substr(credid,3,4) = '+quotedstr(FloatToStr(xAnoReg))+
                      ' and substr(credid,7,2) = '+quotedstr(copy(wTipCre,1,2))+' and '+
                      ' TIPO ='+quotedstr(xTipocorre)+' and ';
      xCorreWherex :=  ' x.CREAREA = '+quotedstr(xArea)+' AND x.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+
                      ' and substr(x.credid,1,2) = '+quotedstr(DM1.cdsOfDes.FieldByName('OFDESID').AsString)+
                      ' and substr(x.credid,3,4) = '+quotedstr(FloatToStr(xAnoReg))+
                      ' and substr(x.credid,7,2) = '+quotedstr(copy(wTipCre,1,2))+' and '+
                      ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
      xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' AND y.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+
                      ' and substr(y.credid,1,2) = '+quotedstr(DM1.cdsOfDes.FieldByName('OFDESID').AsString)+
                      ' and substr(y.credid,3,4) = '+quotedstr(FloatToStr(xAnoReg))+
                      ' and substr(y.credid,7,2) = '+quotedstr(copy(wTipCre,1,2))+' and '+
                      ' y.TIPO ='+quotedstr(xTipocorre);

      xTabla := 'CRE201';
      xCeros := 7;
      xCorreCampo := 'CREDID';
      xCorreCadena := DM1.cdsOfDes.FieldByName('OFDESID').AsString+FloatToStr(xAnoReg)+copy(wTipCre,1,2);
      Correlativo;
      xCorreCred := xCorreCadena+xcorre;


      //** Ejecuta nota de abono, mata el crdito anterior y actualiza cre302 y cre310,cre303,cre301
      EjecutaNAbono;

      //** proceso para grabar en cre303
      Graba303;
      //** proceso para grabar en cre301
      Graba301;

      xSQL := 'Select * From CRE303 Where ASOID ='+QuotedStr(xAsoid)+
              ' AND CREDID = '+QuotedStr(xCorreCred);
      DM1.cdsSolicitud.Close;
      DM1.cdsSolicitud.DataRequest(xSQL);
      DM1.cdsSolicitud.Open;

      //** Genera Cronograma y graba en CRE302
      CronogramaEfectivo;

      //** actualizo cob318
      DM1.cdsCompromiso.Edit;
      DM1.cdsCompromiso.FieldByName('CREDIDA').AsString := xCredidA;
      DM1.cdsCompromiso.FieldByName('CREDIDN').AsString := xCorreCred;
      xTramiteAbr := DM1.DisplayDescrip('prvSQL','APO113','RECLSITDES,RECLSITID','TIPO='+QuotedStr('U'),'RECLSITDES');
      xTramite := DM1.cdsQry.FieldByName('RECLSITID').AsString;
      DM1.cdsCompromiso.FieldByName('RECLSITID').AsString := xTramite;
      DM1.cdsCompromiso.FieldByName('RECLSITDES').AsString := xTramiteAbr;
      //**
      Z2bbtnGraba.Enabled := False;
      Z2bbtnImprime.Enabled := true;
   Finally
    Screen.Cursor := crDefault;
   end;
  end;
end;

procedure TFCaptaCuotas.Z2sbtnCapacidadClick(Sender: TObject);
begin
  If Length(edtCuota.text) > 0 Then
   begin
    FCapacidad := TFCapacidad.Create(self);
    DM1.cdsListaCreA.Open;
    DM1.cdsListaCreA.Filter := 'LISTAABR= '+QuotedStr('xxx');
    DM1.cdsListaCreA.Filtered := True;
    FCapacidad.wBiene := '2';
    wMtoCapRel := edtCapaci.TExt;
    FCapacidad.ShowModal;
    DM1.cdsListaCreA.Filter := '';
    DM1.cdsListaCreA.Filtered := False;
//    DM1.cdsListaCreA.Close;
   end;
end;

procedure TFCaptaCuotas.z2bbtnCronoClick(Sender: TObject);
begin
  If Length(edtCuota.text) > 0 Then
   begin
    //** Halla el saldo del crédito
//    CalculoSaldo;
    //** carga las variables de la lista activa
//    ListaActiva;
    //** CALCULO DEL MONTO DE LA CUOTA
    Calculo;

    ppRepCronograma.Template.FileName := wRutaRpt+'\CronogramaPagosPrevio.rtm';
    ppRepCronograma.Template.LoadFromFile ;
    ppLabel1.CAption := wTipCreAbr;
    ppLabel2.CAption := wTipoCuota;
    ppLabel3.CAption := FloatToStrF(StrToFloat(edtSaldoCre.text),ffFixed,15,2);
    ppLabel4.CAption := FloatToStrF(InteresM,ffFixed,15,3);
    ppLabel5.CAption := FloatToStrF(FlatMto,ffFixed,15,2);
    ppLabel6.CAption := edtCuota.text;

    ppDBCronograma.DataSource:=DM1.dsQry1;
    ppRepCronograma.Print;
    ppRepCronograma.Stop;
   end;
end;


procedure TFCaptaCuotas.Calculo;
var
 Present : TDate;
 x,z,xI,xZ : Integer;
 xSQL,xMes,xAno:String;
 Ano,Mes,Dia : Word;
 xFilas : Array[1..60,1..8] of String;
 xUltAmor,xFlatul,xUltimo : Double;
begin
     for xI := 1 to 60 do
      begin
       For xZ := 1 to 8 do
         xFilas[xI,xZ] := '';
      end;

     vMonto := 0;
     Amortizacion := 0;
     // Monto Otorgado - Monto crédito
     If Length(TRIM(edtSaldoCre.text))=0 Then
      begin
       MtoCredito:=0;
       Capital:=0;
       vCredito:= Capital;
      end
     Else
      begin
       MtoCredito:= DM1.FRound(StrToFloat(edtSaldoCre.text),15,2);
       Capital:= MtoCredito;
       vCredito:= Capital;
      end;

      // Interes
        Interes:= xInteres/100;

      // Interes + 1 para la fórmula
        InteresM:= Interes+1; //FRound(Interes+1,15,3);

      // Flat
      Flat:= xFlat/100;


      //Número de Cuotas
      NroCuotas:= Round(StrToFloat(edtCuota.Text));

      // Calculando el Monto del Flata
      FlatMto:= (Flat*MtoCredito)/NroCuotas; //FRound((Flat*MtoCredito)/NroCuotas,15,3);

      // Elevando a la potencia n para: (1+I)
      InteresE:= Power(InteresM,NroCuotas); ////FRound(Power(InteresM,NroCuotas),15,3);

      //                   n
      // Calculando : [(1+I )]-1
      InteresK:= InteresE-1; //FRound(InteresE-1,15,3);

      // Calculando el Monto de la Cuota
      MtoCuota:= DM1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),15,2);

      // Redondeando a 2 decimales

     z:=StrToInt(edtCuota.text);
     x:=1;

     Present := DATE;
     DecodeDate(Present,Ano,Mes,Dia);

//     xAno:=IntToStr(Ano);
//     xMes:= DM1.StrZero(IntToStr(Mes),2); //DM1.StrZero(IntToStr(Mes+1),2);

     xMes := IntToStr(xMesact);
     xAno := IntToStr(xAnoact);
     If rgMes.Itemindex = 0 then
      begin
       xMes := IntToStr(StrToInt(xMes) -1);
       If xMes <= '0' then
        begin
         xMes := '12';
         xAno := IntToStr(xAnoact -1 );
        end;
      end;



     xSumaInt := 0;
     While x <= z Do
      begin
         If Capital - CuotaMto < 0 Then
          InteresMto:= (Capital - (CuotaMto - FlatMto)) * -1
         Else
          InteresMto:= Capital*Interes;

         xSumaInt := round((xSumaInt + InteresMto)*100)/100;
         xFlatul  := round((xFlatul + FlatMto)*100)/100;

         Amortizacion:= CuotaMto-(FlatMto+InteresMto);

         // acumulo la amortizacion
         vMonto:= vMonto+ round((Amortizacion)*100)/100 ; //(CuotaMto-(FlatMto+InteresMto));

         If Capital - CuotaMto > 0 Then
           Capital:= vCredito - vMonto
         Else
          begin
            Capital:= 0;
            xUltimo := (CuotaMto * NroCuotas) - (vmonto + xSumaInt + xFlatul);
            xUltAmor := InteresMto + xUltimo; //Amortizacion + xUltimo;
            InteresMto := xUltAmor;
          end;

          If XMes = '12' Then
           begin
            XMes:='00';
            XAno:=IntToStr(StrToInt(XAno)+1);
           end;
           XMes:=DM1.StrZero(IntToStr(StrToInt(XMes)+1),2);

         xFilas[x,1] := IntToStr(x);
         case StrToInt(xMes) of
            1 : xFilas[x,2] := 'Ene - '+xAno;
            2 : xFilas[x,2] := 'Feb - '+xAno;
            3 : xFilas[x,2] := 'Mar - '+xAno;
            4 : xFilas[x,2] := 'Abr - '+xAno;
            5 : xFilas[x,2] := 'May - '+xAno;
            6 : xFilas[x,2] := 'Jun - '+xAno;
            7 : xFilas[x,2] := 'Jul - '+xAno;
            8 : xFilas[x,2] := 'Ago - '+xAno;
            9 : xFilas[x,2] := 'Set - '+xAno;
            10: xFilas[x,2] := 'Oct - '+xAno;
            11: xFilas[x,2] := 'Nov - '+xAno;
            12: xFilas[x,2] := 'Dic - '+xAno;
           end;
           xFilas[x,3] := FloatToStr(Capital);
           xFilas[x,4] := FloatToStr(Amortizacion);
           xFilas[x,5] := FloatToStr(InteresMto);
           xFilas[x,6] := FloatToStr(FlatMto);
           xFilas[x,7] := FloatToStr(MtoCuota);
       x:=x+1;
      end;

  xSQL := 'Select 0 CRECUOTA,''                  '' PERIODO, 0.00 CRECAPCRON,'+
          ' 0.00 CREAMORT,0.00 CREINTERES,0.00 CREFLAT,0.00 CREMTO From CRE302 '+
          'Where ASOID='+QuotedStr('XX');
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSQL);
  DM1.cdsQry1.Open;
  for xI := 1 to 60 do
   begin
     If xFilas[xI,1] <> '' Then
      begin
        DM1.cdsQry1.Insert;
        DM1.cdsQry1.FieldByName('CRECUOTA').AsString  := xFilas[xI,1];
        DM1.cdsQry1.FieldByName('PERIODO').AsString   := xFilas[xI,2];
        DM1.cdsQry1.FieldByName('CRECAPCRON').AsFloat := Round(StrToFloat(xFilas[xI,3])*100)/100;
        DM1.cdsQry1.FieldByName('CREAMORT').AsFloat   := Round(StrToFloat(xFilas[xI,4])*100)/100;
        DM1.cdsQry1.FieldByName('CREINTERES').AsFloat  := Round(StrToFloat(xFilas[xI,5])*100)/100;
        DM1.cdsQry1.FieldByName('CREFLAT').AsFloat := Round(StrToFloat(xFilas[xI,6])*100)/100;
        DM1.cdsQry1.FieldByName('CREMTO').AsFloat     := Round(StrToFloat(xFilas[xI,7])*100)/100;
        DM1.cdsQry1.Post;
      end;
   end;
end;


procedure TFCaptaCuotas.CalculoSaldo;
var
 xPor,xPar,xNop,xBlo : double;
 xSQL : String;
begin
  xCuotaporCobrar := 0;
  xSaldoTotCre := 0;
  //** CARGO LOS SALDOS DE LAS CUOTAS POR COBRAR,NO PAGADAS Y PARCIALES
  xSQL:= 'SELECT * FROM CRE302 WHERE ASOID='+
         QuotedStr(xAsoid)+' AND CREDID='+QuotedStr(xCredidA)+' '+
         'AND CREESTID IN ('+QuotedStr(xEstidC)+','+QuotedStr(xEstidA)+','+QuotedStr(xEstidP);
  If rgConsi.ItemIndex = 0 then
    xSql := xSql + ','+QuotedStr(xEstidD);
  xSql := xsql +')';
  DM1.cdsqry.close;
  DM1.cdsqry.datarequest(xSQL);
  DM1.cdsqry.open;
  DM1.cdsqry.First;

  //** hallo los saldos de las cuotas pendientes
  xPor := 0;
  xPar := 0;
  xNop := 0;
  xBlo := 0;
  while not DM1.cdsqry.eof do
  begin
    xCuotaporCobrar := xCuotaporCobrar + 1;
    //** por cobrar
    If DM1.cdsqry.FieldByName('CREESTID').AsString = xEstidC Then
    begin
      xPor := xPor + (DM1.cdsqry.FieldByName('CREAMORT').AsFloat-DM1.cdsqry.FieldByName('CRECAPITAL').AsFloat);

    end;

    //** no pagados
    If DM1.cdsqry.FieldByName('CREESTID').AsString = xEstidA Then
    begin
      xNop := xNop +  (DM1.cdsqry.FieldByName('CREAMORT').AsFloat-DM1.cdsqry.FieldByName('CRECAPITAL').AsFloat)+
                      (DM1.cdsqry.FieldByName('CREINTERES').AsFloat-DM1.cdsqry.FieldByName('CREMTOINT').AsFloat)+
                      (DM1.cdsqry.FieldByName('CREFLAT').AsFloat-DM1.cdsqry.FieldByName('CREMTOFLAT').AsFloat);
    end;
    //** PARCIAL
    If DM1.cdsqry.FieldByName('CREESTID').AsString = xEstidP Then
    begin
      xPar := xPar +  (DM1.cdsqry.FieldByName('CREAMORT').AsFloat-DM1.cdsqry.FieldByName('CRECAPITAL').AsFloat)+
                      (DM1.cdsqry.FieldByName('CREINTERES').AsFloat-DM1.cdsqry.FieldByName('CREMTOINT').AsFloat)+
                      (DM1.cdsqry.FieldByName('CREFLAT').AsFloat-DM1.cdsqry.FieldByName('CREMTOFLAT').AsFloat);
    end;

    //** BLOQUEO
    If DM1.cdsqry.FieldByName('CREESTID').AsString = xEstidD Then
    begin
      if RestaPeriodos(DM1.cdsqry.FieldByName('CREANO').AsString+DM1.cdsqry.FieldByName('CREMES').AsString,
                       DM1.StrZero(IntToStr(xAnoAct),4)+DM1.StrZero(IntToStr(xMesAct),2))>=0 then  //vencidos
      begin
        xBlo := xBlo +  (DM1.cdsqry.FieldByName('CREAMORT').AsFloat-DM1.cdsqry.FieldByName('CRECAPITAL').AsFloat)+
                        (DM1.cdsqry.FieldByName('CREINTERES').AsFloat-DM1.cdsqry.FieldByName('CREMTOINT').AsFloat)+
                        (DM1.cdsqry.FieldByName('CREFLAT').AsFloat-DM1.cdsqry.FieldByName('CREMTOFLAT').AsFloat);
      end
      else
      begin
        xBlo := xBlo +  (DM1.cdsqry.FieldByName('CREAMORT').AsFloat-DM1.cdsqry.FieldByName('CRECAPITAL').AsFloat);
      end;
    end;

{    //** parciales
    If DM1.cdsqry.FieldByName('CREESTID').AsString = xEstidP Then
    begin
      //** Parcial pero fuera de fecha de pago
      If DM1.cdsqry.FieldByName('CREANO').AsInteger < xAnoAct Then
        xPar := xPar + (DM1.cdsqry.FieldByName('CREAMORT').AsFloat+
                       DM1.cdsqry.FieldByName('CREINTERES').AsFloat+
                       DM1.cdsqry.FieldByName('CREFLAT').AsFloat) -
                       (DM1.cdsqry.FieldByName('CRECAPITAL').AsFloat+
                       DM1.cdsqry.FieldByName('CREMTOINT').AsFloat+
                       DM1.cdsqry.FieldByName('CREMTOFLA').AsFloat)
    Else
    begin
      If (DM1.cdsqry.FieldByName('CREANO').AsInteger = xAnoAct) and
         (DM1.cdsqry.FieldByName('CREMES').AsInteger < xMesAct) Then
          //** Parcial pero fuera de fecha de pago
        xPar := xPar + (DM1.cdsqry.FieldByName('CREAMORT').AsFloat+
                         DM1.cdsqry.FieldByName('CREINTERES').AsFloat+
                         DM1.cdsqry.FieldByName('CREFLAT').AsFloat) -
                        (DM1.cdsqry.FieldByName('CRECAPITAL').AsFloat+
                         DM1.cdsqry.FieldByName('CREMTOINT').AsFloat+
                         DM1.cdsqry.FieldByName('CREMTOFLA').AsFloat)
        else
          //** Parcial dentro del plazo
        If (DM1.cdsqry.FieldByName('CREANO').AsInteger > xAnoAct) Then
          xPar := xPar + (DM1.cdsqry.FieldByName('CREAMORT').AsFloat+
                           DM1.cdsqry.FieldByName('CREFLAT').AsFloat) -
                          (DM1.cdsqry.FieldByName('CRECAPITAL').AsFloat+
                           DM1.cdsqry.FieldByName('CREMTOFLA').AsFloat);
      end;
    end;}

    DM1.cdsqry.next;
  end;
  xSaldoTotCre := xPor + xNop + xPar + xBlo;
  edtSaldoCre.text := FloatToStrf(xSaldoTotCre,ffFixed,15,2);
end;

procedure TFCaptaCuotas.ListaActiva;
var
 xSQL : String;
begin
  //** CARGO LA LISTA ACTIVA PARA TOMAR EL INTERES y el tipo de crédito
{  xSQL:= 'SELECT * FROM CRE101 A, CRE109 B '+
         'WHERE A.LISTACLIE LIKE '+QuotedStr('%'+trim(wTipoAso)+'%')+' '+
         'AND A.LISTAID=B.LISTAID AND B.FLGVIGENTE=''S'' ORDER BY CONDCREDID';
  DM1.cdsConcre.Close;
  DM1.cdsConcre.DataRequest(xSQL);
  DM1.cdsConcre.Open;
  xInteres := DM1.cdsConcre.FieldByName('TIPCREINT').AsFloat;
  xFlat := DM1.cdsConcre.FieldByName('TIPCREFLAT').AsFloat;
  xTipoCreid := Copy(DM1.cdsConcre.FieldByName('LISTACREID').AsString,2,2);
  wTipCre := xTipoCreid;
  wTipCreAbr := copy(DM1.cdsConcre.FieldByName('LISTACRED').AsString,2,Length(DM1.cdsConcre.FieldByName('LISTACRED').AsString)-1);
  wTipoCuota := DM1.cdsConcre.FieldByName('CRETCALABR').AsString;
  xListaId := DM1.cdsConcre.FieldByName('LISTAID').AsString;
  wLista  := DM1.cdsConcre.FieldByName('LISTAABR').AsString;
}
  xInteres   := dm1.cdsSolicitudA.fieldByName('CREINTERES').Asfloat;
  xFlat      := dm1.cdsSolicitudA.fieldByName('CREDFLAT').AsFloat;
  xTipoCreid := dm1.cdsSolicitudA.fieldByName('TIPCREID').AsString;
  wTipCre    := dm1.cdsSolicitudA.fieldByName('TIPCREID').AsString;
  wTipCreAbr := dm1.cdsSolicitudA.fieldByName('TIPCREDES').AsString;
  wTipoCuota := dm1.cdsSolicitudA.fieldByName('CRETCALABR').AsString;
  xListaId   := dm1.cdsSolicitudA.fieldByName('LISTAID').AsString;
  wLista     := dm1.cdsSolicitudA.fieldByName('LISTAABR').AsString;
  xCretcalid := dm1.cdsSolicitudA.fieldByName('CRETCALID').AsString;
  xCretcalabr:= dm1.cdsSolicitudA.fieldByName('CRETCALABR').AsString;
  xConcredid := dm1.cdsSolicitudA.fieldByName('CONDCREDID').AsString;

  //** Tipo de Credito
  xSQL := 'SELECT CUENTAID, CUENTAH FROM CRE110 WHERE TIPCREID='+QuotedStr(xTipoCreid);
  DM1.cdsTipCreA.Close;
  DM1.cdsTipCreA.DataRequest(xSQL);
  DM1.cdsTipCreA.Open;
  xCuentaD := DM1.cdsTipCreA.FieldByName('CUENTAID').AsString;
  xCuentaH := DM1.cdsTipCreA.FieldByName('CUENTAH').AsString;

  // Selecciona Parámetros Vigente
  xSQL:='SELECT * FROM CRE103 WHERE FVIGENTE='+QuotedStr('S')+' '+
        'AND TIPCREID='+QuotedStr(xTipoCreid);
  DM1.cdsParam.Close;
  DM1.cdsParam.DataRequest(xSQL);
  DM1.cdsParam.Open;

  //** selecciona lista
  xSQL:= 'SELECT * FROM CRE109 '+
         'WHERE LISTAID='+QuotedStr(xListaId);
  DM1.cdsListaCred.Close;
  DM1.cdsListaCred.DataRequest(xSQL);
  DM1.cdsListaCred.Open;
end;

procedure TFCaptaCuotas.ppRepCronogramaPreviewFormCreate(Sender: TObject);
begin
  ppRepCronograma.PreviewForm.WindowState:=WsMaximized;
  TppViewer(ppRepCronograma.PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

procedure TFCaptaCuotas.edtCuotaExit(Sender: TObject);
var
 xResult,xTrue : Boolean;
begin
  xTrue := False;
  IF (Length(edtCuota.text) > 0) Then
   begin
    If (rgAccion.ItemIndex = 0) and (StrToInt(edtCuoPen.text) <= StrToInt(edtCuota.text)) then
      xTrue := True
    else
     If (rgAccion.ItemIndex = 1) and (StrToInt(edtCuoPen.text) > StrToInt(edtCuota.text)) then
       xTrue := True;

    If xTrue then
     begin
      //** Halla el saldo del crédito
      CalculoSaldo;
      //** carga las variables de la lista activa
      ListaActiva;
      //** CALCULO DEL MONTO DE LA CUOTA
      xResult := CalculoCuota;
      Z2bbtnGraba.Enabled := xResult;
     end
    else
     showmessage('El # de cuotas no concuerda con la acción');
   end;
end;

procedure TFCaptaCuotas.Z2bbtnCalculoClick(Sender: TObject);
begin
   cargaenblanco;
   DeshaceDataSource;
   limpiavar;
   clbCrono.Items.Clear;
   clbCronoAux.Items.Clear;
   rgAccion.ItemIndex := -1;
   dbgCompromiso.Enabled := False;
   Z2bbtnCalculo.Enabled := False;
   edtCuota.Text := '';
   edtSaldoCre.Text := '';
   edtCapaci.Text := '';
   edtMtoCuo.Text := '';
   dbreObse.Lines.clear;
   dbeApeNom.Text := '';
   dbeApeNom.enabled := True;
   dbeModulo.DataSource    := nil;
   dbeDni.DataSource       := nil;
   dbeCivil.DataSource     := nil;
   dbeTelf1.DataSource     := nil;
   dbeTelf2.DataSource     := nil;
   dbeDirDom.DataSource    := nil;
   dbeDirCol.DataSource    := nil;
   dbseAnoTalon.DataSource := nil;
   dbseMesTalon.DataSource := nil;
   dbeMensual.DataSource   := nil;
   rgTope.Enabled := False;
end;

procedure TFCaptaCuotas.Graba301;
var
   xSQL1, xSQL : String;
begin
//   try
//    DM1.DCOM1.AppServer.SolStartTransaction;
    // Inserta la Cabecera del Crédito
    xSQL:=' INSERT INTO CRE301( '+
    'CRE301.CREDID    , CRE301.ASOID      , CRE301.ASOCODMOD  , CRE301.ASOCODPAGO  ,'+
    'CRE301.ASOAPENOM , CRE301.USEID      , CRE301.UPAGOID    , CRE301.UPROID      ,'+
    'CRE301.DPTOID    , CRE301.TIPCREID   , CRE301.CREFOTORG  ,'+
    'CRE301.CREMTOOTOR, CRE301.CREMTOSOL  , CRE301.CREMTOGIR  , CRE301.CRECUOTA    ,'+
    'CRE301.CREINTERES, CRE301.CREDFLAT   , CRE301.CRENUMCUO  , CRE301.CRELUGGIRO  , '+
    'CRE301.BANCOID   , CRE301.TMONID     , CRE301.TMONABR    , CRE301.CRENUMCTA   ,'+
    'CRE301.CREMTOPAG , CRE301.CRESDOACT  , CRE301.CREFINIPAG , CRE301.CREFFINPAG,'+
    'CRE301.CREESTADO , CRE301.CREESTID   , CRE301.LISTAID    , CRE301.LISTAABR    ,'+
    'CRE301.CRETCALID , CRE301.CRETCALABR , CRE301.FORPAGOID  , CRE301.FORPAGOABR  ,'+
    'CRE301.CREPERGRA , CRE301.CRECUOPAG  , CRE301.CRECUOENV  , CRE301.CREPERIODI  ,'+
    'CRE301.CREMTOTAL , CRE301.CRECAPPGO  , CRE301.CRENEWID   , CRE301.NROPAGARE   ,'+
    'CRE301.NROAUTDES , CRE301.CRESALDOT  , CRE301.OFDESID    , CRE301.CALIFICAID  ,'+
    'CRE301.APRUEBAID , CRE301.CUOTAINI   , CRE301.TIPCREDES  ,'+
    'CRE301.GARAPENOM , CRE301.GARASOID   , CRE301.CREANOMES,CRE301.CREMTONABO,'+
    'CRE301.CRECOM    , CRE301.CRESEG     , CRE301.CREPOR     , CRE301.CREGADM,'+
    'CRE301.CRECOMP   , CRE301.CREMORA    , CRE301.CIAID      , CRE301.USUARIO,'+
    'CRE301.FREG      , CRE301.HREG       ,CRE301.USEIDGAR    ,CRE301.TIPDESEID,'+
    'CRE301.AGENBANCOID,CRE301.DPTOGIRO   ,CRE301.BCOGIRO,CRE301.ASOCODAUX,'+
    'CRE301.CUENTAD,CRE301.CUENTAH,CRE301.CCOSID,CRE301.CREGENCOB ) '+


    'Select '+
    'CRE303.CREDID    ,CRE303.ASOID      , CRE303.ASOCODMOD  , CRE303.ASOCODPAGO  ,'+
    'CRE303.ASOAPENOM ,CRE303.USEID      , CRE303.UPAGOID    ,   CRE303.UPROID    ,'+
    'CRE303.DPTOID    ,CRE303.TIPCREID   , CRE303.CREFOTORG  ,'+
    'CRE303.CREMTOOTOR,CRE303.CREMTOSOL  , CRE303.CREMTOGIR  , CRE303.CRECUOTA    ,'+
    'CRE303.CREINTERES,CRE303.CREDFLAT   , CRE303.CRENUMCUO  , CRE303.CRELUGGIRO  ,'+
    'CRE303.BANCOID   ,CRE303.TMONID     , CRE303.TMONABR    ,  CRE303.CRENUMCTA  ,'+
    '0.00 , CRE303.CRESDOACT , CRE303.CREFINIPAG ,CRE303.CREFFINPAG,'+
    'CRE303.CREESTADO ,CRE303.CREESTID   , CRE303.LISTAID    ,   CRE303.LISTAABR  ,'+
    'CRE303.CRETCALID ,CRE303.CRETCALABR , CRE303.FORPAGOID  , CRE303.FORPAGOABR  ,'+
    'CRE303.CREPERGRA ,CRE303.CRECUOPAG  , CRE303.CRECUOENV  , CRE303.CREPERIODI  ,'+
    'CRE303.CREMTOTAL ,CRE303.CRECAPPAG  , CRE303.CRENEWID   , CRE303.NROPAGARE   ,'+
    'CRE303.NROAUTDES ,CRE303.CRESALDOT  , CRE303.OFDESID    , CRE303.CALIFICAID  ,'+
    'CRE303.APRUEBAID ,CRE303.CUOTAINI    , CRE303.TIPCREDES  ,'+
    'CRE303.GARAPENOM ,CRE303.GARASOID   , CRE303.CREANOMES,CRE303.CREMTONABO,'+
    'CRE303.CRECOM    ,CRE303.CRESEG     , CRE303.CREPOR     , CRE303.CREGADM,    CRE303.CRECOMP  ,'+
    'CRE303.CREMORA   ,CRE303.CIAID      ,'+QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
    'CRE303.FREG      ,CRE303.HREG       ,CRE303.USEIDGAR    ,CRE303.TIPDESEID,'+
    'CRE303.AGENBANCOID,CRE303.DPTOGIRO  ,CRE303.BCOGIRO,CRE303.ASOCODAUX,'+
    'CRE303.CUENTAD,CRE303.CUENTAH,CRE303.CCOSID,CRE303.CREGENCOB '+
    'From CRE303 '+
    'Where ASOID = '+QuotedStr(xAsoid)+
    ' AND CRE303.CREDID='+QuotedStr(xCorreCred);
     try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     except
       ShowMessage('Error en 3');
     end;

    // Inserta Siatcion del Crédito
    xSQL := 'INSERT INTO CRE304 ('+
             'CREDID,TSITCREID,FSITCRE,USUARIO,USUARIONOM,FREG,HREG) VALUES ('+
             QuotedStr(xCorreCred)+','+QuotedStr(xEstid0)+','+
             QuotedStr(DateToStr(xSysDate))+','+
             QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
             //QuotedStr(DM1.cdsUsuarios.FieldByName('USERNOM').AsString)+','+
             QuotedStr(DM1.wUsuario)+','+
             QuotedStr(DateToStr(xSysDate))+','+wRepTimeServi+')';
    xSQL1 := xSQL;
     try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     except
       ShowMessage('Error en 4');
     end;

//    DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
//   Except
//     DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
//   end;
end;

procedure TFCaptaCuotas.CronogramaEfectivo;
var
   z :Integer;
   xFlatMto : Real;
   iComision, iGastosAdm, iSeguro:Real;
   xMescopia : String;
   xSumaInt, xUltAmor, xFlatul, xUltimo : Double;
begin
   Try
  //** hABILITAR LUEGO
  //** DM1.DCOM1.AppServer.SolStartTransaction;
     vMonto := 0;
     Amortizacion := 0;
     // Monto Otorgado - Monto crédito
     If Length(Trim(edtSaldoCre.Text)) = 0 Then
      begin
       MtoCredito := 0;
       Capital    := 0;
       vCredito   := Capital;
      end
     Else
      begin
       MtoCredito := DM1.FRound(StrToFloat(edtSaldoCre.Text), 15, 2);
       Capital    := MtoCredito;
       vCredito   := Capital;
      end;

     // Interes
     Interes := xInteres/100;

     // Interes + 1 para la fórmula
     InteresM := Interes+1; //FRound(Interes+1,15,3);

     // Flat
     Flat := xFlat/100;

     //Número de Cuotas
     NroCuotas := Round(StrToFloat(edtCuota.Text));

     // Calculando el Monto del Flata
     FlatMto := (Flat*MtoCredito)/NroCuotas; //FRound((Flat*MtoCredito)/NroCuotas,15,3);

     // Elevando a la potencia n para: (1+I)
     InteresE := Power(InteresM, NroCuotas); ////FRound(Power(InteresM,NroCuotas),15,3);

     //                   n
     // Calculando : [(1+I )]-1
     InteresK := InteresE-1; //FRound(InteresE-1,15,3);

     // Calculando el Monto de la Cuota
     MtoCuota := DM1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto), 15, 2);

     // Redondeando a 2 decimales

     z := StrToInt(edtCuota.Text);
     xNroCuota:=1;

     xMes := IntToStr(xMesact);
     xAno := IntToStr(xAnoact);
     If rgMes.Itemindex = 0 then
      begin
       XMes := IntToStr(sTRtOiNT(XMes) -1);
       If xMes <= '0' then
        begin
         xMes := '12';
         xAno := IntToStr(xAnoact -1 );
        end;
      end;
      
     While xNroCuota <= z Do
      begin
       If xNroCuota = 0 Then
        begin
         xMescopia := xMes;
         xMes := '0';
         InteresMto:= 0;
         xFlatMto := FlatMto;
         FlatMto := 0;
         xMes := xMesCopia;
         FlatMto := xFlatMto;
        end
       Else
        begin
         If Capital - CuotaMto < 0 Then
          InteresMto:= (Capital - (CuotaMto - FlatMto)) * -1
         Else
          InteresMto:= Capital*Interes;

         xSumaInt := round((xSumaInt + InteresMto)*100)/100;
         xFlatul  := round((xFlatul + FlatMto)*100)/100;

         Amortizacion:= CuotaMto-(FlatMto+InteresMto);

         // acumulo la amortizacion
         vMonto:= vMonto+ round((Amortizacion)*100)/100 ; //vMonto:= vMonto+ (CuotaMto-(FlatMto+InteresMto));

         If Capital - CuotaMto > 0 Then
           Capital:= vCredito - vMonto
         Else
          begin
            Capital:= 0;
            xUltimo := (CuotaMto * NroCuotas) - (vmonto + xSumaInt + xFlatul);
            xUltAmor := InteresMto + xUltimo; //Amortizacion + xUltimo;
            InteresMto := xUltAmor;
          end;

         xComision := Capital*iComision;
         xGastosAdm:= Capital*iGastosAdm;
         xSeguro   := Capital*iSeguro;

          If XMes = '12' Then
           begin
            XMes:='00';
            XAno:=IntToStr(StrToInt(XAno)+1);
           end;
          XMes:=DM1.StrZero(IntToStr(StrToInt(XMes)+1),2);

         Graba302;
        end;
       xNroCuota:=xNroCuota+1;
      end;
  //** hABILITAR LUEGO
  //** DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
 Except
  //** hABILITAR LUEGO
  //** DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
 end;
end;

procedure TFCaptaCuotas.Graba302;
CONST
 xCAMPO302 : String = ('ASOID,ASOCODMOD,ASOCODPAGO,CREDID,TIPCREID,TMONID,CRECUOTA,CREMTO,'+
                       'ASOAPENOM,USEID,UPROID,UPAGOID,DPTOID,CREESTID,CREESTADO,FORPAGOID,'+
                       'BANCOID,CREANO,CREMES,USUARIO,FREG,HREG,CREAMORT,'+
                       'CREINTERES,CREFLAT,CRECAPCRON,CRECAPITAL,CREMTOINT,CREMTOFLAT,'+
                       'CRETCALID,LISTAID,LISTAABR,CIAID,FORPAGOABR,TMONABR,CRETCALABR,TIPCREABR,'+
                       'CRECOM,CRESEG,CREPOR,CREGADM,CRECOMP,CREMORA,CREMTOCOM,CREMTOSEG,CREMTOGADM,'+
                       'AGENBCOID,CRESALDO,ASOCODAUX,AREAID');
var
 xDatos,xSQL : String;
begin
  xDatos := QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+','+
            QuotedStr(DM1.cdsSolicitud.FieldByName('ASOCODMOD').AsString)+','+
            QuotedStr(DM1.cdsSolicitud.FieldByName('ASOCODPAGO').AsString)+','+
            QuotedStr(DM1.cdsSolicitud.FieldByName('CREDID').AsString)+','+
            QuotedStr(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)+','+
            QuotedStr(DM1.cdsSolicitud.FieldByName('TMONID').AsString)+','+
            DM1.StrZero(IntToStr(xNroCuota),2)+',';

  If xMes <> '0' Then
  xDatos := xDatos + DM1.cdsSolicitud.FieldByName('CRECUOTA').AsString+','
  Else
  xDatos := xDatos + '0.00,';

  xDatos := xDatos + QuotedStr(DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('USEID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('UPROID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('UPAGOID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('DPTOID').AsString)+',';
  xDatos := xDatos + QuotedStr(xEstidC)+','+
                     QuotedStr(xEstadoC)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('BANCOID').AsString)+','+
                     QuotedStr(xAno)+','+
                     QuotedStr(xMes)+','+
                     QuotedStr(DM1.wUsuario)+','+
                     QuotedStr(DateToStr(xSysdate))+','+
                     wRepTimeServi+','+
                     FloatToStrF(Amortizacion,ffFixed,15,2)+','+
                     FloatToStrF(InteresMto,ffFixed,15,2)+','+
                     FloatToStrF(FlatMto,ffFixed,15,2)+','+
                     FloatToStrF(Capital,ffFixed,15,2)+','+
                     '0.00,'+
                     '0.00,'+
                     '0.00,'+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('CRETCALID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('LISTAID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('LISTAABR').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('CIAID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('FORPAGOABR').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('TMONABR').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('CRETCALABR').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('TIPCREDES').AsString)+','+
                     FloatToStrF(DM1.cdsSolicitud.FieldByName('CRECOM').AsFloat,ffFixed,15,2)+','+
                     FloatToStrF(DM1.cdsSolicitud.FieldByName('CRESEG').AsFloat,ffFixed,15,2)+','+
                     FloatToStrF(DM1.cdsSolicitud.FieldByName('CREPOR').AsFloat,ffFixed,15,2)+','+
                     FloatToStrF(DM1.cdsSolicitud.FieldByName('CREGADM').AsFloat,ffFixed,15,2)+','+
                     FloatToStrF(DM1.cdsSolicitud.FieldByName('CRECOMP').AsFloat,ffFixed,15,2)+','+
                     FloatToStrF(DM1.cdsSolicitud.FieldByName('CREMORA').AsFloat,ffFixed,15,2)+','+
                     FloatToStrF(xComision,ffFixed,15,2)+','+
                     FloatToStrF(xSeguro,ffFixed,15,2)+','+
                     FloatToStrF(xGastosAdm,ffFixed,15,2)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('AGENBANCOID').AsString)+',';
//** 25/04/2003 - PJSV, se cambia por el monto de cada cuota y ya no el global
   xDatos := xDatos + FloatToStrF(Amortizacion + InteresMto + FlatMto,ffFixed,15,2);
  {If x = 1 then
   dm1.cdsCuotas.FieldByName('CRESALDO').AsString   := dm1.cdsSolicitud.FieldByName('CRESDOACT').AsString
  else
   dm1.cdsCuotas.FieldByName('CRESALDO').AsString   := '';
  }
  //**
   xDatos := xDatos +','+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOCODAUX').AsString)+','+
                      QuotedStr(xArea);

  xSQL := 'INSERT INTO CRE302 ('+xCAMPO302+') VALUES ('+ xDatos +')';

     try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     except
       ShowMessage('Error en 5');
     end;
end;

procedure TFCaptaCuotas.EjecutaNAbono;
var
   xInteres1 : double;
   xCuota : Integer;
   xForpagodesZ,xForpagoidZ,xEstadoZ,xEstidZ : String;
begin
   //** la 'S' me indica que los montos de las cuotas deben de acumularse para descontarse
   //** al monto solicitado
   //** paso 1
   xSQL := 'Select A.*, C.CUENTAD, C.CUENTAH From CRE302 A, CRE303 C'
          +' Where A.ASOID ='+QuotedStr(xAsoid)
          +' AND A.CREDID='+QuotedStr(xCredidA)
          +' AND A.ASOAPENOM LIKE ('+QuotedStr(trim(dbeApeNom.text)+'%')+')'
          +' AND (A.CREESTID='+QuotedStr(xEstidC)+' OR A.CREESTID='+QuotedStr(xEstidA)
          +' OR A.CREESTID='+QuotedStr(xEstidP);
   If rgConsi.ItemIndex = 0 then
    xSql := xSql + ' OR A.CREESTID='+QuotedStr(xEstidD);
   xSql := xsql +') AND A.ASOID = C.ASOID and a.credid = c.credid';
     DM1.cdsConsulta.Close;
     DM1.cdsConsulta.DataRequest(xSQL);
     DM1.cdsConsulta.Open;
     DM1.cdsConsulta.First;


     xTipocorre := '2';
     xArea   :=  DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''002''','MODULOID');
     xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' AND CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                     ' TIPO ='+quotedstr(xTipocorre)+' and ';
     xCorreWherex := ' x.CREAREA = '+quotedstr(xArea)+' AND x.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                     ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
     xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' AND y.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                     ' y.TIPO ='+quotedstr(xTipocorre);
     xTabla := 'CRE208';
     xCeros := 10;
     xCorreCampo := 'NRONABO';
     Correlativo;
     xNroNotaAbono := xCorre;
     DM1.cdsConsulta.Filter := 'CREESTID='+QuotedStr(xEstidC)+
                               ' OR CREESTID='+QuotedStr(xEstidA)+
                               ' OR CREESTID='+QuotedStr(xEstidP)+
                               ' OR CREESTID='+QuotedStr(xEstidD);

     DM1.cdsConsulta.Filtered := true;
     DM1.cdsConsulta.First;
     xCreMtoNabo := 0;
     xCuota  := 0;
     while not DM1.cdsConsulta.Eof do
     begin
       {xInteres1 := 0;
       //** SI ESTA POR COBRAR
       If DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidC then
       begin
         xCreMtoNabo :=  xCreMtoNabo + DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                       DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat;
         xInteres1 := 0;
       end;

       // SI ES BLOQUEO
       If DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidD then
       begin
          //si vencida
          if RestaPeriodos(DM1.cdsConsulta.FieldByName('CREANO').AsString+DM1.Consulta.FieldByName('CREMES').AsString,
                           DM1.StrZero(IntToStr(xAnoAct),4)+DM1.StrZero(IntToStr(xMesAct),2))>=0 then  //vencidos
          begin
            xCreMtoNabo :=  xCreMtoNabo+0;
            xInteres1 := 0;
          end
          else
          begin
            xCreMtoNabo :=  xCreMtoNabo+0;
            xInteres1 := 0;
          end;
       end;

       // SI ES NO PAGADA
       If DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidD then
       begin
          xCreMtoNabo :=  xCreMtoNabo+0;
          xInteres1 := 0;
       end;

       //** SI ES PARCIAL PENDIENTE
       if (DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidP) then
       begin
         if (DM1.cdsConsulta.FieldByName('CREANO').Asfloat = xAnoact) and
           (DM1.cdsConsulta.FieldByName('CREMES').Asfloat > xMesact) then
         begin
           xCreMtoNabo :=  xCreMtoNabo + DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                      DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat;
           xInteres1 := 0;
         end
         else //** si es vencida
         begin
           xCreMtoNabo :=  xCreMtoNabo + DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                      DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat+
                                      DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat;
           xInteres1 := DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat;
         end;
       end;

       xSQL := 'UPDATE CRE302 SET CREMTOCOB=';
       //** SI ESTA POR COBRAR
       If DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidC then
         xSql := xSql + FloatToStr(DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                   DM1.cdsConsulta.FieldByName('CREFLAT').Asfloat)
       else
       begin
          //** SI ES PARCIAL PENDIENTE
          if (DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidP) and
            ((DM1.cdsConsulta.FieldByName('CREANO').Asfloat = xAnoact) and
             (DM1.cdsConsulta.FieldByName('CREMES').Asfloat > xMesact)) then
           xSql := xSql + FloatToStr(DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                     DM1.cdsConsulta.FieldByName('CREFLAT').Asfloat)
          else //** si es vencida
           xSql := xSql + FloatToStr(DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                     DM1.cdsConsulta.FieldByName('CREINTERES').Asfloat+
                                     DM1.cdsConsulta.FieldByName('CREFLAT').Asfloat);
       end;

        //** SI ESTA POR COBRAR
       If DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidC then
       begin
          xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Z'),'ESTDES');
          xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
       end
       else
       begin
          //** SI ES PARCIAL PENDIENTE
          if (DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidP) and
            ((DM1.cdsConsulta.FieldByName('CREANO').Asfloat = xAnoact) and
             (DM1.cdsConsulta.FieldByName('CREMES').Asfloat > xMesact)) then
          begin
            xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Z'),'ESTDES');
            xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
          end
          else //** si es vencida
          begin
            xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Y'),'ESTDES');
            xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
          end;
       end;}
       //

       xCreMtoNabo:=xCreMtoNabo+(DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat-DM1.cdsConsulta.FieldByName('CRECAPITAL').AsFloat)+
                    (DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat-DM1.cdsConsulta.FieldByName('CREMTOINT').AsFloat)+
                    (DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat-DM1.cdsConsulta.FieldByName('CREMTOFLAT').AsFloat);

       // CANCELADO A
       If (DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidC) then
       begin
          xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Z'),'ESTDES');
          xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
       end;

       // CANCELADO
       If (DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidA) OR
          (DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidP) then
       begin
          xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Y'),'ESTDES');
          xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
       end;

       // BLOQUEO
       If (DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidD) then
       begin
         //VENCIDOS
         if RestaPeriodos(DM1.cdsConsulta.FieldByName('CREANO').AsString+DM1.cdsConsulta.FieldByName('CREMES').AsString,
                           DM1.StrZero(IntToStr(xAnoAct),4)+DM1.StrZero(IntToStr(xMesAct),2))>=0 then  //vencidos
         begin
           xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Y'),'ESTDES');
           xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
         end
         else
         begin
           xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Z'),'ESTDES');
           xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
         end;
       end;

       xSQL := 'UPDATE CRE302 SET CREMTOCOB=';
       xSql := xSql + FloatToStr(DM1.cdsConsulta.FieldByName('CREMTO').AsFloat);


        xSql := xSql +' ,AREAID='+QuotedStr(xArea)+
                  ' ,CRESALDO = 0.00'+
                  ' ,CREESTID='+QuotedStr(xEstidZ)+
                  ' ,CREESTADO='+QuotedStr(xEstadoZ)+
                  ' ,FNABONO='+QuotedStr('S')+
                  ' ,NRONABO='+QuotedStr(xNroNotaAbono)+
                  ' ,CRECAPITAL ='+DM1.cdsConsulta.FieldByName('CREAMORT').AsString+
                  ' ,CREMTOINT  = '+FloatToStrF(DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat,ffFixed,15,2)+
                  ' ,CREMTOFLAT ='+DM1.cdsConsulta.FieldByName('CREFLAT').AsString+
                  ' ,CREDIDNABO='+QuotedStr(xCorreCred)+
                  ' Where ASOID = '+QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+
                  ' AND CREDID='+QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+
                  ' AND CREANO='+QuotedStr(DM1.cdsConsulta.FieldByName('CREANO').AsString)+
                  ' AND CREMES='+QuotedStr(DM1.cdsConsulta.FieldByName('CREMES').AsString)+
                  ' AND CRECUOTA='+QuotedStr(DM1.cdsConsulta.FieldByName('CRECUOTA').AsString);
         try
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         except
           ShowMessage('Error en 6');
         end;

         xForpagodesZ := DM1.DisplayDescrip('prvSQL','COB101','FORPAGOID,FORPAGOABR','TIPO='+QuotedStr('Z'),'FORPAGOABR');
         xForpagoidZ  := DM1.cdsQry.FieldByName('FORPAGOID').AsString;

         xSQL := 'INSERT INTO CRE310 (ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,'+
                 'CREDID,CRECUOTA,CREMONLOC,CREMONEXT,CREFPAG,CREAMORT,CREINTERES,CREFLAT,'+
                 'CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,CIAID,UPROID,DPTOID,UPAGOID,'+
                 'BANCOID,CCBCOID,ASOAPENOM,CIUDID,AREAID,NRONABO,TRANSINTID,FORPAGID,FORPAGABR,'+
                 'CREANO,CREMES,CREESTID,CREESTADO,CREMTOCUO,CREDOCPAG)'+
                 ' VALUES ('+
                 QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+','+
                 QuotedStr(DM1.cdsConsulta.FieldByName('ASOCODMOD').AsString)+',';
         If Length(DM1.cdsConsulta.FieldByName('ASOCODAUX').AsString) > 0 Then
          xSQL := xSQL + DM1.cdsConsulta.FieldByName('ASOCODAUX').AsString+','
         Else
          xSQL := xSQL + 'null,';
        xSQL := xSQL +  QuotedStr(DM1.cdsConsulta.FieldByName('USEID').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('ASOCODPAGO').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('TIPCREID').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+','+
                        DM1.cdsConsulta.FieldByName('CRECUOTA').AsString+',';
         If Length(DM1.cdsConsulta.FieldByName('CREMONLOC').AsString) > 0 Then
          xSQL := xSQL + DM1.cdsConsulta.FieldByName('CREMONLOC').AsString+','
         Else
          xSQL := xSQL + '0.00,';
         If Length(DM1.cdsConsulta.FieldByName('CREMONEXT').AsString) > 0 Then
          xSQL := xSQL + DM1.cdsConsulta.FieldByName('CREMONEXT').AsString+','
         Else
          xSQL := xSQL + '0.00,';
         xSQL := xSQL + wRepFecServi+','+
                        DM1.cdsConsulta.FieldByName('CREAMORT').AsString+','+
                        DM1.cdsConsulta.FieldByName('CREINTERES').AsString+','+
                        DM1.cdsConsulta.FieldByName('CREFLAT').AsString+','+
                        FloatToStr(DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                        DM1.cdsConsulta.FieldByName('CREFLAT').Asfloat)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('TMONID').AsString)+',';
         If Length(FloatToStr(xTCambio)) > 0 Then
          xSQL := xSQL + FloatToStrF(xTCambio,ffFixed,15,2) +','
         Else
          xSQL := xSQL + '0.00,';

         xSQL := xSQL + QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
                        wRepFecServi+','+
                        wRepTimeServi+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('CIAID').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('UPROID').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('DPTOID').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('UPAGOID').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('BANCOID').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('CCBCOID').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('CIUDID').AsString)+','+
                        QuotedStr(xArea)+','+
                        QuotedStr(xNroNotaAbono)+','+
                        '''CNP'','+
                        QuotedStr(xForpagoidZ)+','+
                        QuotedStr(xForpagodesZ)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('CREANO').AsString)+','+
                        QuotedStr(DM1.cdsConsulta.FieldByName('CREMES').AsString)+',';

         xSQL := xSQL + QuotedStr(xEstidZ)+','+
                        QuotedStr(xEstadoZ)+','+
                        DM1.cdsConsulta.FieldByName('CREMTO').AsString+','+
                        //** 20/12/2002 - PJSV , cuando se amplie el campo a 15 quitar los copy
                        QuotedStr(COPY(xCorreCred,1,2)+COPY(xCorreCred,7,2)+COPY(xCorreCred,10,6) )+')';
         try
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         except
           ShowMessage('Error en 7');
         end;

       xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('B'),'ESTDES');
       xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
       xSQL := 'UPDATE CRE301 SET CREESTID='+QuotedStr(xEstidZ)+
                  ' ,CREESTADO='+QuotedStr(xEstadoZ)+
                  ' ,NRONABO='+QuotedStr(xNroNotaAbono)+
                  ' ,CRESDOACT = 0.00, CREMTOPAG = CREMTOTAL '+
                  ' ,CRECUOPAG='+QuotedStr(IntToStr(xCuotaporCobrar))+
                  ' ,CRENEWID ='+QuotedStr(xCorreCred)+
                  ' Where ASOID ='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+
                  ' AND CREDID='+QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+
                  ' AND ASOAPENOM='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString);//+
     try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     except
       ShowMessage('Error en 8');
     end;

       xSQL := 'UPDATE CRE303 SET CREESTID='+QuotedStr(xEstidZ)+
                  ' ,CREESTADO='+QuotedStr(xEstadoZ)+
                  ' ,CRESDOACT = 0.00, CREMTOPAG = CREMTOTAL ' +
                  ' ,CRECUOPAG='+QuotedStr(IntToStr(xCuotaporCobrar))+
                  ' ,CRENEWID ='+QuotedStr(xCorreCred)+
                  ' Where ASOID='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+
                  ' AND CREDID='+QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+
                  ' AND ASOAPENOM='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString);
     try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     except
       ShowMessage('Error en 9');
     end;
       xCuota := xCuota  + 1;
       DM1.cdsConsulta.next;
      end;

      //** paso 3, GRABA EN LA TABLE DE NOTAS DE ABONO
      xSQL := 'INSERT INTO CRE313 (CIAID,NRONABO,CREDID,ASOID,ASOCODMOD,ASOCODAUX,'+
              'ASOAPENOM,USEID,TMONID,MTOABONO,CRENUMCUO,CUENTAD,CUENTAH,USUARIO,'+
              'FREG,HREG) VALUES ('+QuotedStr(DM1.cdsConsulta.FieldByName('CIAID').AsString)+','+
              QuotedStr(xNroNotaAbono)+','+
              QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+','+
              QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+','+
              QuotedStr(DM1.cdsConsulta.FieldByName('ASOCODMOD').AsString)+','+
              QuotedStr(DM1.cdsConsulta.FieldByName('ASOCODAUX').AsString)+','+
              QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString)+','+
              QuotedStr(DM1.cdsConsulta.FieldByName('USEID').AsString)+','+
              QuotedStr(DM1.cdsConsulta.FieldByName('TMONID').AsString)+','+
              FloatToStr(xCreMtoNabo)+','+IntToStr(xCuota)+','+
              QuotedStr(DM1.cdsConsulta.FieldByName('CUENTAD').AsString)+','+
              QuotedStr(DM1.cdsConsulta.FieldByName('CUENTAH').AsString)+','+
              QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
              wRepFecServi+','+wRepTimeServi+')';
     try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     except
       ShowMessage('Error en 10');
     end;

     DM1.cdsConsulta.Filter := '';
     DM1.cdsConsulta.Filtered := false;
end;

procedure TFCaptaCuotas.Z2bbtnImprimeClick(Sender: TObject);
var
  x10:Integer;
begin
    DM1.cdsConsulta.Close;
    xSQL := 'Select A.ASOID,A.CREMES,A.CREANO,A.CRECUOTA,A.CREAMORT,A.CREMTO,A.CREINTERES,'+
            'A.CREFLAT,A.CRECAPCRON, A.CREDID ,'+
            ' DECODE(CREMES,'+QuotedStr('01')+','+QuotedStr('Ene -')+','+QuotedStr('02')+','+
            ' '+QuotedStr('Feb -')+','+QuotedStr('03')+','+QuotedStr('Mar -')+','+
            ' '+QuotedStr('04')+','+QuotedStr('Abr -')+','+
            ' '+QuotedStr('05')+','+QuotedStr('May -')+','+QuotedStr('06')+','+
            ' '+Quotedstr('Jun -')+','+QuotedStr('07')+','+QuotedStr('Jul -')+','+
            ' '+QuotedStr('08')+','+QuotedStr('Ago -')+','+QuotedStr('09')+','+
            ' '+Quotedstr('Set -')+','+
            ' '+QuotedStr('10')+','+QuotedStr('Oct -')+','+QuotedStr('11')+','+
            ' '+QuotedStr('Nov -')+','+QuotedStr('12')+','+QuotedStr('Dic -')+',NULL) AS PERIODO,'+
            ' B.CREFOTORG,B.CREMTOSOL, B.ASOAPENOM,B.TMONID,B.TIPCREDES,B.CRETCALID,B.CRENUMCUO,'+
            ' C.CRETCALDES,D.TMONDES From (Select '+
            ' A.ASOID,A.CREMES,A.CREANO,A.CRECUOTA,A.CREAMORT,A.CREMTO,A.CREINTERES,'+
            ' A.CREFLAT,A.CRECAPCRON, A.CREDID'+
            ' from cre302 A Where A.ASOID='+QuotedStr(xAsoid)+
            ' AND A.CREDID='+QuotedStr(TRIM(xCorreCred))+
            ' ) A,(Select  B.CREDID,B.CREFOTORG,B.CREMTOSOL, B.ASOAPENOM,B.TMONID,'+
            ' B.TIPCREDES,B.CRETCALID,B.CRENUMCUO from cre301 B Where '+
            ' B.ASOID='+QuotedStr(xAsoid)+
            ' AND B.CREDID='+QuotedStr(TRIM(xCorreCred))+') B,'+
            ' CRE102 C,TGE103 D Where A.CREDID=B.CREDID AND C.CRETCALID(+)=B.CRETCALID '+
            ' AND B.TMONID=D.TMONID ORDER BY A.ASOID,A.CRECUOTA,A.CREANO,A.CREMES';
  DM1.cdsConsulta.close;
  DM1.cdsConsulta.DataRequest(xSQL);
  DM1.cdsConsulta.Open;
  If   DM1.cdsConsulta.RecordCount = 0 Then
   begin
     ShowMessage ('No existe Cronograma a mostrar');
     exit;
   end;
  //** seteo la nueva ruta para el reporte
  ppDBCronograma.DataSource := DM1.dsConsulta;
  ppRepCronograma.Template.FileName := wRutaRpt+'\CronogramaPagos.rtm';
  ppRepCronograma.Template.LoadFromFile ;
  ppRepCronograma.Print;
  ppRepCronograma.Stop;

  x10:=Self.ComponentCount-1;
  While x10>=0 Do
  begin
    If Self.Components[x10].ClassName='TppGroup' Then
    begin
      Self.Components[x10].Free;
    end;
    x10:=x10-1;
  end;
end;

procedure TFCaptaCuotas.cargaenblanco;
begin
   xSQL := 'Select * '+
           ' From COB318 Where ASOID='+QuotedStr('aa');
   DM1.cdsCompromiso.Close;
   DM1.cdsCompromiso.DataRequest(xSQL);
   DM1.cdsCompromiso.Open;
end;

procedure TFCaptaCuotas.DeshaceDataSource;
begin
  dbeModulo.DataSource    := nil;
  dbeDni.DataSource       := nil;
  dbeCivil.DataSource     := nil;
  dbeTelf1.DataSource     := nil;
  dbeTelf2.DataSource     := nil;
  dbeDirDom.DataSource    := nil;
  dbeDirCol.DataSource    := nil;
  dbseAnoTalon.DataSource := nil;
  dbseMesTalon.DataSource := nil;
  dbeMensual.DataSource   := nil;
end;

procedure TFCaptaCuotas.dbdtpFechaSolExit(Sender: TObject);
begin
   DecodeDate(dbdtpFechaSol.Date, xAnoReg, xMesReg, xDiaReg);
end;

procedure TFCaptaCuotas.dblcdOfDesExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'OFDESID ='+QuotedStr(dblcdOfDes.Text);
   dbeDescOfDes.Text := DM1.DisplayDescrip('prvSQL', 'APO110', 'OFDESNOM', xWhere, 'OFDESNOM');
end;

procedure TFCaptaCuotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsQry.Filter   := '';
   DM1.cdsQry.Filtered := False;
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.Close;
   DM1.cdsOfDes.Filter   := '';
   DM1.cdsOfDes.Filtered := False;
   DM1.cdsOfDes.IndexFieldNames := '';
   DM1.cdsOfDes.Close;
   DM1.cdsRelCapCuo.Filter   := '';
   DM1.cdsRelCapCuo.Filtered := False;
   DM1.cdsRelCapCuo.IndexFieldNames := '';
   DM1.cdsRelCapCuo.Close;
   DM1.cdsListaCreA.Filter   := '';
   DM1.cdsListaCreA.Filtered := False;
   DM1.cdsListaCreA.IndexFieldNames := '';
   DM1.cdsListaCreA.Close;
   DM1.cdsAso.Filter   := '';
   DM1.cdsAso.Filtered := False;
   DM1.cdsAso.IndexFieldNames := '';
   DM1.cdsAso.Close;
   DM1.cdsSolicitudes.Filter   := '';
   DM1.cdsSolicitudes.Filtered := False;
   DM1.cdsSolicitudes.IndexFieldNames := '';
   DM1.cdsSolicitudes.Close;
   DM1.cdsCompromiso.Filter   := '';
   DM1.cdsCompromiso.Filtered := False;
   DM1.cdsCompromiso.IndexFieldNames := '';
   DM1.cdsCompromiso.Close;
end;

procedure TFCaptaCuotas.fcShapeBtn1Click(Sender: TObject);
var
  xSql: String;
begin
 xSql := 'SELECT * FROM CRE302 WHERE ASOID='+
          quotedstr(xAsoid)+
          ' AND CREDID='+quotedstr(xCredidA);
 CargaCrono(xSql);
end;

procedure TFCaptaCuotas.CargaCrono(pSql: String);
var
  xCodCre,xSql,xCredid,xCredidB : String;
  x10:Integer;
begin
  dm1.cdsQry2.Close;
  dm1.cdsQry2.DataRequest(pSql);
  dm1.cdsQry2.Open;

  dm1.cdsQry2.first;
  xCredid := '';
  If dm1.cdsQry2.Recordcount <= 0 then
   begin
    Showmessage('No contiene información');
    exit;
   end;

  dm1.cdsQry2.First;
  xCodCre := DM1.cdsQry2.FieldByName('CREDID').AsString;
  while not dm1.cdsQry2.eof do
   begin
    If xCodCre <> xCredid then
     begin
      If xCredid = '' then
       begin
        xCredid := ' A.CREDID='+QuotedStr(DM1.cdsQry2.FieldByName('CREDID').AsString);
        xCredidB := ' B.CREDID='+QuotedStr(DM1.cdsQry2.FieldByName('CREDID').AsString);
       end
      else
       begin
        xCredid := xCredid + ' OR A.CREDID='+QuotedStr(DM1.cdsQry2.FieldByName('CREDID').AsString);
        xCredidB := xCredid + ' OR B.CREDID='+QuotedStr(DM1.cdsQry2.FieldByName('CREDID').AsString);
       end;
     end;
    xCodCre := xCredid;
    dm1.cdsQry2.next;
   end;
  DM1.cdsQry3.Filter := '';
  DM1.cdsQry3.filtered := False;
  DM1.cdsQry3.IndexFieldNames := '';
  DM1.cdsQry3.Close;
//    xSql := 'SELECT A.ASOID,A.CREMES,A.CREANO,A.CRECUOTA,A.CREAMORT,A.CREMTO,A.CREINTERES,'+
//            'A.CREFLAT,A.CRECAPCRON, A.CREDID ,'+
    xSql := 'SELECT '+
            Dm1.cdsQry2.FieldByName('CREINTERES').AsString+' CREINT ,'+
            Dm1.cdsQry2.FieldByName('CREFLAT').AsString+' CREFLAT '+
            ',A.ASOID,A.CREMES,A.CREANO,A.CRECUOTA,A.CREAMORT,A.CREMTO,A.CREINTERES'+
            ',A.CREFLAT,A.CRECAPCRON, A.CREDID ,'+
            ' DECODE(CREMES,'+QuotedStr('01')+','+QuotedStr('Ene -')+','+QuotedStr('02')+','+
            ' '+QuotedStr('Feb -')+','+QuotedStr('03')+','+QuotedStr('Mar -')+','+
            ' '+QuotedStr('04')+','+QuotedStr('Abr -')+','+
            ' '+QuotedStr('05')+','+QuotedStr('May -')+','+QuotedStr('06')+','+
            ' '+Quotedstr('Jun -')+','+QuotedStr('07')+','+QuotedStr('Jul -')+','+
            ' '+QuotedStr('08')+','+QuotedStr('Ago -')+','+QuotedStr('09')+','+
            ' '+Quotedstr('Set -')+','+
            ' '+QuotedStr('10')+','+QuotedStr('Oct -')+','+QuotedStr('11')+','+
            ' '+QuotedStr('Nov -')+','+QuotedStr('12')+','+QuotedStr('Dic -')+',NULL) AS PERIODO,'+
            ' B.CREFOTORG,B.CREMTOSOL, B.ASOAPENOM,B.TMONID,B.TIPCREDES,B.CRETCALID,B.CRENUMCUO,'+
            ' C.CRETCALDES,D.TMONDES FROM (SELECT '+
            ' A.ASOID,A.CREMES,A.CREANO,A.CRECUOTA,A.CREAMORT,A.CREMTO,A.CREINTERES,'+
            ' A.CREFLAT,A.CRECAPCRON, A.CREDID'+
            ' from cre302 A WHERE A.ASOID='+quotedstr(xAsoid)+
            ' AND ('+xCredid+')'+
            ' ) A,(SELECT  B.CREDID,B.CREFOTORG,B.CREMTOSOL, B.ASOAPENOM,B.TMONID,'+
            ' B.TIPCREDES,B.CRETCALID,B.CRENUMCUO from cre303 B WHERE '+
            ' B.ASOID='+quotedstr(xAsoid)+
            ' AND ('+xCredidB+') ) B,'+
            ' CRE102 C,TGE103 D WHERE A.CREDID=B.CREDID AND C.CRETCALID(+)=B.CRETCALID '+
            ' AND B.TMONID=D.TMONID ORDER BY A.ASOID,A.CRECUOTA,A.CREANO,A.CREMES';

  DM1.cdsQry3.DataRequest(xSQL);
  DM1.cdsQry3.Open;
  if   DM1.cdsQry3.RecordCount = 0 Then
   Begin
     ShowMessage ('No existe Información a mostrar');
     exit;
   End;
  ppDBCronograma.DataSource:=DM1.dsQry3;
  ppRepCronograma.DataPipeline := ppDBCronograma;
  //ppRepCronograma.Template.FileName := wRutaRpt+'\CronogramaPagos1.rtm';
  ppRepCronograma.Template.FileName := wRutaRpt+'\CronogramaPagos.rtm';
  ppRepCronograma.Template.LoadFromFile ;

  ppRepCronograma.Print;
  ppRepCronograma.Stop;

  x10:=Self.ComponentCount-1;
  While x10>=0 Do
  Begin
    If Self.Components[x10].ClassName='TppGroup' Then
    Begin
      Self.Components[x10].Free;
    End;
    x10:=x10-1;
  End;
end;

function TFCaptaCuotas.RestaPeriodos(wPer1, wPer2: string): integer;
var wa1,wa2,wm1,wm2:word;
    sa1,sa2,sm1,sm2:string;
begin
   sa1:=copy(wPer1,1,4); sm1:=copy(wPer1,5,2);
   sa2:=copy(wPer2,1,4); sm2:=copy(wPer2,5,2);
   wa1:=StrToInt(sa1); wm1:=StrToInt(sm1);
   wa2:=StrToInt(sa2); wm2:=StrToInt(sm2);
   if wa1=wa2 then
     result:=wm2-wm1
   else
     result:=(wa2-wa1)*12-(wm1-wm2);
end;

end.


