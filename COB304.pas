//** 18/12/2002 - pjsv
//** PARA EL CORRELATIVO =>     1 = CREDID
//**                            2 = NOTA DE ABONO
//**                            3 = PAGARE
//**                            4 = COMPROBANTE DE CAJA
//**                            5 = CTA CTE
//**                            6 = OFICIO
//**                            7 = ASOID

{La recalendarizacion se realiza cuando hay cuotas vencidas
sobre el saldo del capital distribuyendose en el nuevo plazo,
no incluye intereses,
SOLO DOCENTES CESADOS CON LEY 20530
}
unit COB304;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, Wwdbspin, fcButton, fcImgBtn,
  fcShapeBtn, StdCtrls, Mask, wwdbedit, ExtCtrls, ComCtrls, Wwdotdot,
  wwdbdatetimepicker, wwdblook, ppCtrls, ppBands, ppVar, ppClass, ppPrnabl,
  ppTypes, ppViewr, db, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, Math,
  CheckLst, Mant, Wwdbdlg;

type
  TFRecalendarizacion = class(TForm)
    Label54: TLabel;
    dbeasonom: TwwDBEdit;
    lblTitu1: TLabel;
    lblTitu2: TLabel;
    lblTitu3: TLabel;
    clbCronoAux: TCheckListBox;
    clbCrono: TCheckListBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    clbCuotas: TListBox;
    dbecodigomodular: TwwDBEdit;
    dbeasoid: TwwDBEdit;
    Label2: TLabel;
    dbetipcre: TwwDBEdit;
    Label3: TLabel;
    dbenrocre: TwwDBEdit;
    pnlCabecera: TPanel;
    Label4: TLabel;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnNuevo: TfcShapeBtn;
    dbesaldo: TwwDBEdit;
    dbdtpfecrec: TwwDBDateTimePicker;
    z2bbtnCrono: TfcShapeBtn;
    Label10: TLabel;
    edtMtoCuo: TEdit;
    dbencuotas: TwwDBEdit;
    ppDBCronograma: TppDBPipeline;
    ppRepCronograma: TppReport;
    Z2bbtnImprime: TfcShapeBtn;
    dblcdOfDes: TwwDBLookupComboDlg;
    dbeDescOfDes: TwwDBEdit;
    dbdtpFechaSol: TwwDBDateTimePicker;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
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
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeasonomExit(Sender: TObject);
    procedure clbCronoClickCheck(Sender: TObject);
    procedure dbencuotasKeyPress(Sender: TObject; var Key: Char);
    procedure dbencuotasExit(Sender: TObject);
    procedure Z2bbtnNuevoClick(Sender: TObject);
    procedure z2bbtnCronoClick(Sender: TObject);
    procedure ppRepCronogramaPreviewFormCreate(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnImprimeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcdOfDesExit(Sender: TObject);
    procedure dbdtpFechaSolExit(Sender: TObject);
//    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
//    Procedure BuscaCorre; //** para constatar que nop exista el numero del crédito
//    procedure Correlativo; //** llama a CorreCred y BuscaCorre
  private
    { Private declarations }
    xReg20530,xForpago,xTipoAsoC,xTipoAsoA,xEstado,xEstid,xCorreCadena : String; //**oficina+año+tipo de credito
    //** VAriables que se cargan en CargaBusqueda
    xAsocodpago, xAsocodaux, xAsoapenom, xAsocodmod, xAsoid, xUseid, xUproid, xUpagoid, xAsodni,
    xAsodir, xEstcivid, xAsotelf1, xAsotelf2, xIngmensual, xCredidA, xCredidN, xFeccompro : String;
    //**
    xAsotipid, xRegpenid : String; //** Para el tipo de asociado y para el Regimen de Pensión
    xEstadoB, xEstidB, xEstado1, xEstid1, xEstadoP, xEstidP, xEstadoA, xEstidA, xEstadoC, xEstidC : String; //** Para los Estados
    xsaldo : Double; //** Saldo del Credito
    xTrue : Boolean; //** Para saber si hay algun crédito marcado
    xFlat,xInteres : Double; //** Para el interes y Flat del credito escogido
    xCapacidad : Double; //** Para la capacidad de pago
    xTipCreid : String; //** Tipo de Credito del credito a matar
    xNroCuota : Integer; //** Numero de cuota
    //** VARIABLES PARA EL CALCULO DE LA CUOTA
    CuotaMto, MtoCuota, InteresK, InteresE, FlatMto, NroCuotas, Flat, InteresM, Interes, MtoCredito : Double;
    xMtoAcceso, xCRECAPPAG, DeudaApo, xMTOAPXBEN, CtaInd, DeudaCre, xCREMTOTAL, xCRESDOACT : Double;
    gAno, gMes, xFecha : String;
    //**
    xFPgoFin, xFPgoIni : String;
    wTipoCuota, wTipCreAbr : String; //** Tipo de crédito, tipo de cuota
    //** parael cronograma previo
    InteresMto, xSumaInt, vCredito, Capital, vMonto, Amortizacion : Double;
    //**
    //** para la grabacion
    xTCambio : Double;
    xCeros : Integer;
    xCorreCampo, xArea, xTabla : String;
    xMesReg, xAnoReg, xDiaReg : Word;
    xCorreWhere, xCorreWherex, xCorreWherey : String; //** Where solo para el correlativo del Crédito
    //**
    //** para el correlativo
    xCorre : String; //** para el correlativo del numero de crédito
    xCorrePagare : String; //** para el correlativo del numero de pagare
    xNroNotaAbono : String; //** para el correlativo del numero de Nota de Abono
    xCorreCred : String; //** para el numero del credito
    xPaso : Boolean; //** True = el correlativo es valido
    //**
    //** Para la nota de abono
    xCreMtoNabo : Double;
    xCuotaporCobrar : Integer; //** para saber cuantas cuotas por cobrar tiene
    xTipocorre,xCiaid : String;
    xComision, xGastosAdm, xSeguro : Double;
    wDptoidUse : String;
    Procedure NuevoAso; //** Para limpiar los datos y digitar un nuevo asociado
    procedure CargaBusqueda; //** Carga la data del maestro
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields); //** Edicion de la busqueda
    procedure LlenarDatosCredito; //** llena los datos del credito
    procedure CalculoCuota;  //** HOLLA EL MONTO DE LA CUOTA
    procedure CalculaFecha; //**  CALCULA LA FECHA DE INICIO Y FIN APARTIR DEL # DE CUOTAS
    procedure Calculo;  //** SOLO PARA EL CRONOGRAMA PREVIO
    procedure EjecutaNAbono;  //** MATA LAS CUOTAS DEL CREDITO ESCOGIDO,
                              //** ACTUALIZANDO CRE303,CRE301,CRE302 E INSERTANDO EN CRE310
    procedure Correlativo; //** llama a CorreCred y BuscaCorre
    procedure CorreCred(pCorre : String); //** para el correlativo
    Procedure BuscaCorre; //** para constatar que nop exista el numero DEL CORRELATIVO
    procedure Graba303; //** GRABA EL NUEVO CREDITO EN CRE303
    procedure Graba301; //** GRABA EL NUEVO CREDITO EN CRE301
    procedure CronogramaEfectivo; //** GENERA EL CRONOGRAMA
    procedure Graba302;   //** GRABA EN CRE302
    function RestaPeriodos(wPer1,wPer2:string):integer;
  public
    { Public declarations }
    wTipCre : String;
  end;

var
  FRecalendarizacion: TFRecalendarizacion;

  implementation

uses COBDM1, COB001, MsgDlgs;

{$R *.DFM}

procedure TFRecalendarizacion.FormActivate(Sender: TObject);
var
   xSQL : String;
begin
   xSQL := 'SELECT OFDESID,OFDESNOM,OFDESABR '+
          'FROM APO110 ORDER BY OFDESID';

   DM1.cdsOfDes.Close;
   DM1.cdsOfDes.DataRequest(xSQL);
   DM1.cdsOfDes.Open;

   //** Compañia por defecto
   xSQL := 'SELECT CIAID FROM TGE101 WHERE CNTCONSOL='+QuotedStr('S');
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xCiaid := DM1.cdsQry.FieldByName('CIAID').AsString;

   //** Tipo de asociado
   xSQL := 'SELECT ASOTIPID FROM APO107 WHERE ASOTIPO = '+QuotedStr('C');
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xAsotipid := DM1.cdsQry.FieldByName('ASOTIPID').AsString;

   //** tipo de pension
   xSQL := 'SELECT REGPENID FROM APO105 WHERE REGPENABR = '+QuotedStr('20530');
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xRegpenid := DM1.cdsQry.FieldByName('REGPENID').AsString;

   //** Estados a Usarse
   xEstadoP := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('V'),'ESTDES');
   xEstidP  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xEstadoA := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('N'),'ESTDES');
   xEstidA  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xEstadoC := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('2'),'ESTDES');
   xEstidC  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('3'),'ESTDES');
   xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xEstadoB := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('C'),'ESTDES');
   xEstidB  := DM1.cdsQry.FieldByName('ESTID').AsString;

    //** T me indica que son recalendarizacion
   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('T'),'ESTDES');
   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;

   dbdtpFechaSol.Date := Date;
   dbdtpFechaSolExit(Sender);
end;

procedure TFRecalendarizacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFRecalendarizacion.NuevoAso;
begin
   dbeasonom.Text := '';
   dbecodigomodular.Text := '';
   dbeasoid.Text := '';
   dbetipcre.Text := '';
   dbenrocre.Text := '';
   dbesaldo.Text := '';
   dbdtpfecrec.text := '';
   dbencuotas.Text := '';
   edtMtoCuo.Text := '';
   clbCrono.Clear;
   clbCuotas.Clear;
end;

procedure TFRecalendarizacion.dbeasonomExit(Sender: TObject);
var
   xSQL : String;
   a,m,d:word;
begin
  //** SI HAY UN NOMBRE SE BUSCA
  DecodeDate(xFechasys,a,m,d);
  xTipoAsoC := DM1.DisplayDescrip('prvSQL','APO107','ASOTIPID','ASOTIPO='+quotedstr('C'),'ASOTIPID');
  xTipoAsoA := DM1.DisplayDescrip('prvSQL','APO107','ASOTIPID','ASOTIPO='+quotedstr('A'),'ASOTIPID');
  
  If Length(dbeasonom.Text) > 0 Then
  begin
    xSQL := 'SELECT * FROM APO201'
           +' WHERE ASOAPENOM LIKE '+QuotedStr(Trim(dbeasonom.Text+'%'))
           +' AND (ASOTIPID = '+QuotedStr(xAsotipid)+' OR ASOTIPID = '+QuotedStr(xTipoAsoA)+') AND SITCTA = '+QuotedStr('A')
           +' AND REGPENID = '+QuotedStr(xRegpenid);
    DM1.cdsAso.Close;
    DM1.cdsAso.DataRequest(xSQL);
    DM1.cdsAso.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If DM1.cdsAso.RecordCount = 1 Then
     CargaBusqueda
    Else
//     If DM1.cdsAso.RecordCount  > 1 THEN
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeasonom.Text+'%')));

    If Length(dbecodigomodular.Text) > 0 Then
    begin
       If DM1.cdsAso.FieldByName('ASOTIPID').AsString=xTipoAsoA then
       begin
         if DM1.cdsAso.FieldByName('VARIASCUOT').AsString='S' then
         begin
           xSQL:=' SELECT MAX(TRANSANO||TRANSMES) PER FROM APO301 B WHERE B.ASOID ='+QuotedStr(xAsoid);
           DM1.cdsQry.Close;
           DM1.cdsQry.DataRequest(xSQL);
           DM1.cdsQry.Open;
           if RestaPeriodos(DM1.cdsQry.FieldByName('PER').AsString,DM1.StrZero(IntToStr(a),4)+DM1.StrZero(IntToStr(m),2))>5 then
           begin
              Beep;
              if not Question('Aviso','El último aporte del asociado fue en '+DM1.cdsQry.FieldByName('PER').AsString+#13+#13+
                                  'Desea Continuar') then
              Exit;
           end;
         end
         else
         begin
           xSQL:=' SELECT MAX(TRANSANO||TRANSMES) PER FROM APO301 B WHERE B.ASOID ='+QuotedStr(xAsoid);
           DM1.cdsQry.Close;
           DM1.cdsQry.DataRequest(xSQL);
           DM1.cdsQry.Open;
           if RestaPeriodos(DM1.cdsQry.FieldByName('PER').AsString,DM1.StrZero(IntToStr(a),4)+DM1.StrZero(IntToStr(m),2))>2 then
           begin
             Beep;
             MessageDlg('El último aporte del asociado fue en '+DM1.cdsQry.FieldByName('PER').AsString, mtInformation, [mbOk], 0);
             Exit;
           end;
         end;
       end;

       //** LEVANTO LOS CREDITOS QUE TUVIESE Y QUE EL ESTADO LO PERMITA(02)
{       xSQL := 'SELECT B.CREDID, B.CREESTADO, B.CREMTOGIR FROM CRE303 B,(Select A.CREDID'+
               ' FROM CRE302 A WHERE  A.ASOID ='+QuotedStr(xAsoid)+
               ' AND (A.CREESTID = '+QuotedStr(xEstidA)+
               ' OR (A.CREESTID = '+QuotedStr(xEstidP)+
               ' AND A.CREANO <= '+QuotedStr(IntToStr(xAnoSys))+
               ' AND A.CREMES < '+QuotedStr(IntToStr(xMesSys))+')'+
               ' OR A.CREESTID = '+QuotedStr(xEstidC)+') AND'+
               ' NOT EXISTS (Select C.CREDID FROM CRE302 C WHERE '+
               ' C.ASOID ='+QuotedStr(xAsoid)+' AND '+
               ' (C.CREESTID = '+QuotedStr(xEstid1)+
               ' OR C.CREESTID = '+QuotedStr(xEstidB)+') AND A.CREDID = C.CREDID'+
               ' GROUP BY C.CREDID) GROUP BY A.CREDID,A.CREESTADO,A.ASOID) A'+
               ' WHERE B.ASOID ='+QuotedStr(xAsoid)+' AND B.CREDID = A.CREDID'+
               ' GROUP BY B.CREDID, B.CREESTADO, B.CREMTOGIR';
}
       xForpago := DM1.DisplayDescrip('prvSQL','COB101','FORPAGOID','FORPAGFAPO='+quotedstr('SDB'),'FORPAGOID');

       xReg20530 := DM1.DisplayDescrip('prvSQL','APO105','REGPENID','FLGREP='+quotedstr('2'),'REGPENID');

       xSQL := 'SELECT B.CREDID, B.CREESTADO, B.CREMTOGIR'+
               ' FROM CRE303 B, (Select A.CREDID FROM CRE302 A'+
               ' WHERE  A.ASOID ='+QuotedStr(xAsoid)+' AND (A.CREESTID = '+
               QuotedStr(xEstidA)+' OR A.CREESTID='+QuotedStr(xEstidC)+' OR '+
               ' (A.CREESTID = '+QuotedStr(xEstidP)+
               ' AND A.CREANO <= '+QuotedStr(IntToStr(xAnoSys))+
               ' AND A.CREMES < '+QuotedStr(IntToStr(xMesSys))+'))'+
               ' AND NOT EXISTS (Select C.CREDID FROM CRE302 C'+
               ' WHERE  C.ASOID ='+QuotedStr(xAsoid)+' AND '+
               ' (C.CREESTID = '+QuotedStr(xEstid1)+
               ') AND A.CREDID = C.CREDID'+
               '  GROUP BY C.CREDID) '+
               ' GROUP BY A.CREDID,A.CREESTADO,A.ASOID) A ,'+
               ' (SELECT D.ASOID,E.CREDID FROM APO201 D, CRE303 E '+
               ' WHERE D.ASOID ='+QuotedStr(xAsoid)+' AND E.ASOID ='+QuotedStr(xAsoid)+
               ' AND (((D.ASOTIPID='+quotedstr(xTipoAsoC)+'OR D.ASOTIPID='+quotedstr(xTipoAsoA)+') ';
        if DM1.cdsAso.FieldByName('ASOTIPID').AsString=xTipoAsoC then
          xSQL:=xSQL+
               ' AND D.REGPENID='+QuotedStr(xReg20530);
          xSQL:=xSQL+
               ' )) AND'+
               ' (E.FORPAGOID = '+quotedstr(xForpago)+' AND  D.SITCTA=''A'') ) D'+
               ' WHERE B.ASOID ='+QuotedStr(xAsoid)+' AND B.CREDID = A.CREDID '+
               ' GROUP BY B.CREDID, B.CREESTADO, B.CREMTOGIR';

       DM1.cdsSolicitudes.Close;
       DM1.cdsSolicitudes.DataRequest(xSQL);
       DM1.cdsSolicitudes.Open;

       If DM1.cdsSolicitudes.Recordcount <= 0 Then
       begin
         Beep;
         MessageDlg('No tiene Créditos para Recalendarizar', mtInformation, [mbOk], 0);
         Exit;
       end
       Else
        begin
         //** cargo el listbox con los créditos aptos para ampliación o disminución
         clbCrono.clear;
         While not DM1.cdsSolicitudes.eof do
          begin
           clbCrono.Items.Add(DM1.cdsSolicitudes.FieldByName('CREDID').AsString+' -- '+
                              DM1.cdsSolicitudes.FieldByName('CREMTOGIR').AsString+' -- '+
                              DM1.cdsSolicitudes.FieldByName('CREESTADO').AsString);
           clbCronoAux.Items.Add(DM1.cdsSolicitudes.FieldByName('CREDID').AsString);
           DM1.cdsSolicitudes.Next;
          end;
        end;
     end
    Else
     //ShowMessage('El Asociado no apto para la Recalendarización');
     begin
       dbeasonom.SetFocus;
       ShowMessage('Ingrese Apellidos y Nombres del Asociado');
     end;
   end;
end;

procedure TFRecalendarizacion.CargaBusqueda;
var
 xWhere : String;
begin
   dbeasonom.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
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
   xCredidA    := '';
   xCredidN    := '';
   xFeccompro  := '';
   xWhere      := 'USEID ='+QuotedStr(xUseid);
   wDptoidUse := DM1.DisplayDescrip('prvSQL', 'APO101', 'DPTOID', xWhere, 'DPTOID');
end;

procedure TFRecalendarizacion.LevantaFiltro(xCampo: String);
var
   Mtx : TMant;
begin
   DM1.cdsAsoX.Close;
   Mtx := TMant.Create(Self);
   try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.TableName       := 'APO201';
    Mtx.ClientDataSet   := DM1.cdsAsoX;
    Mtx.Filter          := xCampo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.Module          := DM1.wModulo;
    Mtx.Titulo 	        := 'Asociados';
    Mtx.Registros       := 30;
    Mtx.SectionName	:= 'AsociaX';
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

procedure TFRecalendarizacion.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL: String;
begin
   xSQL := 'SELECT * FROM APO201 WHERE ASOID ='+QuotedStr(DM1.cdsAsoX.FieldByName('ASOID').AsString);
   DM1.FiltraCDS(DM1.cdsAso, xSQL);
   CargaBusqueda;
   TMant(Sender).FMant.Close;
end;

procedure TFRecalendarizacion.clbCronoClickCheck(Sender: TObject);
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
   //  rgAccion.Enabled := xTrue;

   //** cargo el credito a matar
   xCredidA       := clbCronoAux.Items.Strings[clbCronoAux.ItemIndex];
   dbenrocre.Text := xCredidA;

   xSql := 'SELECT * FROM CRE303 '+
           ' WHERE ASOID ='+QuotedStr(xAsoid)+
           ' AND CREDID='+QuotedStr(xCredidA);
   DM1.cdsSolicitudes.Close;
   DM1.cdsSolicitudes.DataRequest(xSQL);
   DM1.cdsSolicitudes.Open;

   //** El valor del interes y flat son los mismos que del credito a matar
   xInteres       := DM1.cdsSolicitudes.FieldByName('CREINTERES').AsFloat;
   xFlat          := DM1.cdsSolicitudes.FieldByName('CREDFLAT').AsFloat;
   xTipCreid      := DM1.cdsSolicitudes.FieldByName('TIPCREID').AsString;
   xCapacidad     := DM1.cdsSolicitudes.FieldByName('MTOULTPAGO').AsFloat;
   dbetipcre.Text := xTipCreid;
   xNroCuota      := DM1.cdsSolicitudes.FieldByName('CRENUMCUO').AsInteger;
   wTipCreAbr     := DM1.cdsSolicitudes.FieldByName('TIPCREDES').AsString;
   wTipoCuota     := DM1.cdsSolicitudes.FieldByName('CRETCALABR').AsString;
   wTipCre        := DM1.cdsSolicitudes.FieldByName('TIPCREID').AsString;
  //**

   xSQL := 'SELECT CREMTO, CRECUOTA, CREAMORT, CREINTERES, CREFLAT, CREESTADO'
          +' FROM CRE302 WHERE ASOID ='+QuotedStr(xAsoid)
          +' AND CREDID = '+QuotedStr(xCredidA)
          +' AND (CREESTID = '+QuotedStr(xEstidA)
          +' OR CREESTID = '+QuotedStr(xEstidC)
          +' OR CREESTID = '+QuotedStr(xEstidP)+
          ') AND (CREANO <= '+QuotedStr(IntToStr(xanosys))+' AND CREMES < '+
          QuotedStr(IntToStr(xMesSys))+')';

   DM1.cdsSolicitudA.Close;
   DM1.cdsSolicitudA.DataRequest(xSQL);
   DM1.cdsSolicitudA.Open;
   //** cargo el listbox con los créditos aptos para ampliación o disminución
   clbCuotas.Clear;
   xsaldo := 0.00;
   If xTrue Then
    begin
     xCuotaporCobrar := 0;
     While not DM1.cdsSolicitudA.eof do
      begin
       clbCuotas.Items.Add(DM1.StrZero(DM1.cdsSolicitudA.FieldByName('CRECUOTA').AsString,2)   +' -- '+
                                   DM1.cdsSolicitudA.FieldByName('CREMTO').AsString     +' -- '+
                                   FloatToStrF(DM1.cdsSolicitudA.FieldByName('CREAMORT').AsFloat,ffFixed,15,2)   +' -- '+
                                   FloatToStrF(DM1.cdsSolicitudA.FieldByName('CREINTERES').AsFloat,ffFixed,10,2) +' -- '+
                                   FloatToStrF(DM1.cdsSolicitudA.FieldByName('CREFLAT').AsFloat,ffFixed,10,2)    +' -- '+
                                   DM1.cdsSolicitudA.FieldByName('CREESTADO').AsString);
       xsaldo := xsaldo + DM1.cdsSolicitudA.FieldByName('CREMTO').AsFloat;
       xCuotaporCobrar := xCuotaporCobrar + 1;
       DM1.cdsSolicitudA.Next;
      end;
     LlenarDatosCredito;
//     GeneraPropuesto;
     pnlCabecera.Enabled := True;
    end;
end;

procedure TFRecalendarizacion.LlenarDatosCredito;
begin
   dbesaldo.text:=floattostr(xsaldo);
   dbdtpfecrec.date:= xFechasys;
   dbencuotas.text:= IntToStr(xNroCuota);
end;

procedure TFRecalendarizacion.CalculoCuota;
begin
   // Monto Otorgado - Monto crédito
   MtoCredito:= DM1.FRound(StrToFloat(dbesaldo.text),15,2);

{  // Interes
  Interes:= xInteres/100;

  // Interes + 1 para la fórmula
  InteresM:=Interes+1;

  // Flat
  Flat:= xFlat/100;
}
   //Número de Cuotas
   NroCuotas := Round(xNroCuota);

   // Calculando el Monto del Flat
   FlatMto:= 0.00; // Flat*MtoCredito/NroCuotas;

{
  // Elevando a la potencia n para: (1+I)
  InteresE:= Power(InteresM,NroCuotas);

  //                   n
  // Calculando : [(1+I )]-1
  InteresK:= InteresE-1;

  // Calculando el Monto de la Cuota
  MtoCuota:= DM1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),15,2);
}
   MtoCuota := DM1.FRound(MtoCredito / StrToInt(dbencuotas.text) ,15,2);
   CuotaMto := MtoCuota;

   //** Este campo no variara durante el pago de las cuotas
   xCREMTOTAL := DM1.FRound(MtoCuota * NroCuotas, 15, 2);
   xCRESDOACT := DM1.FRound(MtoCuota * NroCuotas, 15, 2);

 //***** FIN DEL MONTO DE LA CUOTA

{//** 23/12/2002 - PJSV , habilitarlo luego de las pruebas

   // Consulta de aportes no pagados, Deuda de Aportes
   xSQL := 'SELECT TRANSID,ASOID,SUM(TRANSMTO) AS APODEUDA'
          +' FROM APO301 WHERE ASOID='+QuotedStr(xAsoid)
          +' AND TRANSINTID ='+QuotedStr('NPG')+' GROUP BY ASOID, TRANSID';

   DM1.cdsConsulta.IndexFieldNames := '';
   DM1.cdsConsulta.Filter := '';
   DM1.cdsConsulta.Filtered := False;
   DM1.cdsConsulta.Close;
   DM1.cdsConsulta.DataRequest(xSQL);
   DM1.cdsConsulta.Open;

   If (DM1.cdsConsulta.RecordCount>0) And
    (Length(Trim(DM1.cdsConsulta.FieldByName('APODEUDA').AsString))>0) Then
    DeudaCre := DM1.cdsConsulta.FieldByName('APODEUDA').AsFloat
   Else
    DeudaCre:=0;

   xSQL := 'SELECT TRANSID,ASOID,SALDO,TRANSANO,TRANSMES FROM APO301'
          +' WHERE ASOID ='+QuotedStr(xAsoid)
          +' AND TRANSINTID ='+QuotedStr('NPG')
          +' AND TRANSMES IN (SELECT MAX(TRANSMES) FROM APO301'
          +' WHERE ASOID ='+QuotedStr(xAsoid)
          +' AND TRANSINTID ='+QuotedStr('NPG')+')'
          +' AND TRANSANO IN (SELECT MAX(TRANSANO) FROM APO301'
          +' WHERE ASOID='+QuotedStr(xAsoid)
          +' AND TRANSINTID='+QuotedStr('NPG')+')';

   DM1.cdsConsulta.Close;
   DM1.cdsConsulta.DataRequest(xSQL);
   DM1.cdsConsulta.Open;

   //** Cta individual
   If (DM1.cdsConsulta.RecordCount>0) And (Length(TRIM(DM1.cdsConsulta.FieldByName('SALDO').AsString))>0) Then
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
   xFecha := DateToStr(xFechasys);
   gMes   := IntToStr(xMesSys);
   gAno   := IntToStr(xAnoSys);

   If StrToInt(gMes)=12 Then
    begin
     gMes := '01';
     gAno := IntToStr(StrToInt(gAno)+1);
    end
   Else
    gMes := DM1.StrZero(IntToStr(StrToInt(gMes)+1),2);

   //** capacidad de pago
   xCRECAPPAG := xCapacidad;
   //xMtoAcceso := Round((MtoCuota / xCRECAPPAG) * 100)

   edtMtoCuo.text := FloatToStrF(MtoCuota, ffFixed, 15, 2);

// If xMtoAcceso >  DM1.cdsParam.FieldByName('PMTOLIQ').AsFloat   Then
//  begin
//   Showmessage('La capacidad de Pago no permite esta cantidad de cuotas');
//   Exit;
//  end;
end;

procedure TFRecalendarizacion.CalculaFecha;
var
 xAnios,xMeses,xI : Integer;
begin
    //** para la fecha de inicio
    xMeses := 0;
    If xAnoSys + 1 <=12 Then
     begin
      xFPgoIni := DM1.StrZero(FloatToStr((xMesSys + 1)),2)+FloatToStr(xAnoSys);
     end
    Else
     begin
      xFPgoIni := '01'+FloatToStr(xAnosys+1);
     end;

    //** para la fecha de Fin
    xAnios :=  round(StrToFloat(dbencuotas.text) / 12);
    If (StrToFloat(dbencuotas.Text) / 12) - round(StrToFloat(dbencuotas.Text) / 12) > 0 Then
     xAnios := xAnios + 1;
    xI := 1;
    For xI := xI to StrToInt(dbencuotas.Text) do
     begin
      If xI + xMesSys <= 12 Then
       xMeses := xMesSys + xI
      Else
       begin
        xMeses := xMeses + 1;
        If xMeses > 12 Then
         xMeses := 1;
       end;
     end;
    xFPgoFin := DM1.StrZero(FloatToStr(xMeses), 2)+FloatToStr(xAnoSys+xAnios);
end;

procedure TFRecalendarizacion.dbencuotasKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z',
            '°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@',
            '¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''',
            '-','_'] Then
    Key :=#0;
end;

procedure TFRecalendarizacion.dbencuotasExit(Sender: TObject);
begin
   If Length(dbencuotas.text) > 0 Then
    begin
    //** CALCULO DEL MONTO DE LA CUOTA
     xNroCuota := StrToInt(dbencuotas.text);
     CalculoCuota;
     z2bbtnCrono.Enabled := True;
     Z2bbtnAceptar.Enabled := True;
     Z2bbtnNuevo.SetFocus;
    end;
end;

procedure TFRecalendarizacion.Z2bbtnNuevoClick(Sender: TObject);
begin
   NuevoAso;
   dbeasonom.Enabled := True;
   Z2bbtnImprime.Enabled := False;
end;

procedure TFRecalendarizacion.z2bbtnCronoClick(Sender: TObject);
begin
   If Length(dbencuotas.Text) > 0 Then
    begin
     //** CALCULO DEL MONTO DE LA CUOTA
     Calculo;

     ppRepCronograma.Template.FileName := wRutaRpt+'\CronogramaPagosPrevio.rtm';
     ppRepCronograma.Template.LoadFromFile ;
     ppLabel1.Caption := wTipCreAbr;
     ppLabel2.Caption := wTipoCuota;
     ppLabel3.Caption := FloatToStrF(StrToFloat(dbesaldo.Text), ffFixed, 15, 2);
     ppLabel4.Caption := FloatToStrF(InteresM,ffFixed, 15, 3);
     ppLabel5.Caption := FloatToStrF(FlatMto, ffFixed, 15, 2);
     ppLabel6.Caption := dbencuotas.Text;

     ppDBCronograma.DataSource := DM1.dsQry1;
     ppRepCronograma.Print;
     ppRepCronograma.Stop;
    end;
end;

procedure TFRecalendarizacion.Calculo;
var
   Present : TDate;
   x,z,xI,xZ : Integer;
   xSQL, xMes, xAno:String;
   Ano, Mes, Dia : Word;
   xFilas : Array[1..60,1..8] of String;
   xUltAmor, xFlatul, xUltimo : Double;
begin
   For xI := 1 to 60 do
    begin
     For xZ := 1 to 8 do
      xFilas[xI,xZ] := '';
    end;
     vMonto := 0;
     Amortizacion := 0;
     // Monto Otorgado - Monto crédito
     If Length(TRIM(dbesaldo.text))=0 Then
      begin
       MtoCredito:=0;
       Capital:=0;
       vCredito:= Capital;
      end
     Else
      begin
       MtoCredito:= DM1.FRound(StrToFloat(dbesaldo.text),15,2);
       Capital:= MtoCredito;
       vCredito:= Capital;
      end;

{      // Interes
        Interes:= xInteres/100;

      // Interes + 1 para la fórmula
        InteresM:= Interes+1; //FRound(Interes+1,15,3);

      // Flat
      Flat:= xFlat/100;
}

      //Número de Cuotas
      NroCuotas:= Round(StrToFloat(dbencuotas.Text));

      // Calculando el Monto del Flata
      FlatMto:= 0.00; //(Flat*MtoCredito)/NroCuotas;

{      // Elevando a la potencia n para: (1+I)
      InteresE:= Power(InteresM,NroCuotas); ////FRound(Power(InteresM,NroCuotas),15,3);

      //                   n
      // Calculando : [(1+I )]-1
      InteresK:= InteresE-1; //FRound(InteresE-1,15,3);

      // Calculando el Monto de la Cuota
      MtoCuota:= DM1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),15,2);
}
      MtoCuota:= DM1.FRound(MtoCredito / StrToInt(dbencuotas.text) ,15,2);
      // Redondeando a 2 decimales

     z:=StrToInt(dbencuotas.text);
     x:=1;

     Present := DATE;
     DecodeDate(Present,Ano,Mes,Dia);

     xAno:=IntToStr(Ano);
     xMes:=DM1.StrZero(IntToStr(Mes),2); //DM1.StrZero(IntToStr(Mes+1),2);
     xSumaInt := 0;
     While x <= z Do
      begin
         {If Capital - CuotaMto < 0 Then
          InteresMto:= (Capital - (CuotaMto - FlatMto)) * -1
         Else
          InteresMto:= Capital*Interes;
         }
         InteresMto:= 0.00;

         xSumaInt := round((xSumaInt + InteresMto)*100)/100;
         xFlatul  := round((xFlatul + FlatMto)*100)/100;

         Amortizacion:= CuotaMto-(FlatMto+InteresMto);

         // acumulo la amortizacion
         vMonto:= vMonto+ round((Amortizacion)*100)/100 ; //(CuotaMto-(FlatMto+InteresMto));

         If x<z then
           Capital:= vCredito - vMonto
         Else
          begin
            Capital:= 0;
            xUltimo := (CuotaMto * NroCuotas) - (vmonto + xSumaInt + xFlatul);
            xUltAmor := InteresMto + xUltimo; //Amortizacion + xUltimo;
            InteresMto:= 0.00;
            MtoCuota:=MtoCuota+(vCredito-vMonto);
            Amortizacion:=Amortizacion+(vCredito-vMonto);
          end;

         If XMes = '12' Then
          Begin
           XMes:='00';
           XAno:=IntToStr(StrToInt(XAno)+1);
          End;
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
           xFilas[x,3] := FloatToStrF(Capital,ffNumber,15,2);
           xFilas[x,4] := FloatToStrF(Amortizacion,ffNumber,15,2);
           xFilas[x,5] := FloatToStrF(InteresMto,ffNumber,15,2);
           xFilas[x,6] := FloatToStrF(FlatMto,ffNumber,15,2);
           xFilas[x,7] := FloatToStrF(MtoCuota,ffNumber,15,2);
       x:=x+1;
      end;

  xSQL := 'SELECT 0 CRECUOTA,''                  '' PERIODO, 0.00 CRECAPCRON,'+
          ' 0.00 CREAMORT,0.00 CREINTERES,0.00 CREFLAT,0.00 CREMTO FROM CRE302 '+
          'WHERE ASOID='+QuotedStr('XX');
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSQL);
  DM1.cdsQry1.Open;
  For xI := 1 to 60 do
   begin
     If xFilas[xI,1] <> '' Then
      begin
        DM1.cdsQry1.Insert;
        DM1.cdsQry1.FieldByName('CRECUOTA').AsString  := xFilas[xI,1];
        DM1.cdsQry1.FieldByName('PERIODO').AsString   := xFilas[xI,2];
        DM1.cdsQry1.FieldByName('CRECAPCRON').AsFloat := Round(StrToFloat(xFilas[xI,3])*100)/100;
        DM1.cdsQry1.FieldByName('CREAMORT').AsFloat   := Round(StrToFloat(xFilas[xI,4])*100)/100;
        DM1.cdsQry1.FieldByName('CREINTERES').AsFloat := Round(StrToFloat(xFilas[xI,5])*100)/100;
        DM1.cdsQry1.FieldByName('CREFLAT').AsFloat    := Round(StrToFloat(xFilas[xI,6])*100)/100;
        DM1.cdsQry1.FieldByName('CREMTO').AsFloat     := Round(StrToFloat(xFilas[xI,7])*100)/100;
        DM1.cdsQry1.Post;
      end;
   end;
end;

procedure TFRecalendarizacion.ppRepCronogramaPreviewFormCreate(
  Sender: TObject);
begin
  ppRepCronograma.PreviewForm.WindowState:=WsMaximized;
  TppViewer(ppRepCronograma.PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

procedure TFRecalendarizacion.Z2bbtnAceptarClick(Sender: TObject);
var
   xFecha : String;
begin
  if MessageDlg('Esta Seguro que desea Recalendarizar el Crédito',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   begin
    try
      Screen.Cursor := crHourGlass;
      dbeasonom.Enabled := False;
      xFecha := DateToSTr(xFechasys);
      //** busca el tipo de cambio
      DM1.RecUltTipoCambio(xFecha);
      xTCambio := DM1.cdsQry.FieldByName(wTipoCambio).AsFloat;

  //** 19/12/2002 - PJSV
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
  //    Dm1.cdsSolicitud.FieldByName('NROPAGARE').AsString := xCorrePagare;

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
  //    DM1.cdsSolicitud.FieldByName('CREDID').AsString:= xCorreCred;
  //**

      //** levanto todo el crédito anterior
      xSQL := 'SELECT * FROM CRE303 '+
              ' WHERE ASOID ='+QuotedStr(xAsoid)+' AND '+
              ' CREDID ='+QuotedStr(xCredidA);
      DM1.cdsCredito.Close;
      DM1.cdsCredito.DataRequest(xSQL);
      DM1.cdsCredito.Open;

      //** Ejecuta nota de abono, mata el crdito anterior y actualiza cre302 y cre310,cre303,cre301
      EjecutaNAbono;

      //** proceso para grabar en cre303
      Graba303;
      //** proceso para grabar en cre301
      Graba301;

      //** levanto el nuevo crédito
      xSQL := 'SELECT * FROM CRE303 WHERE ASOID ='+QuotedStr(xAsoid)+
              ' AND CREDID = '+QuotedStr(xCorreCred);

      DM1.cdsSolicitud.Close;
      DM1.cdsSolicitud.DataRequest(xSQL);
      DM1.cdsSolicitud.Open;

      //** Genera Cronograma y graba en CRE302
      CronogramaEfectivo;
      //**
      z2bbtnCrono.Enabled := False;
      Z2bbtnAceptar.Enabled := False;
      Z2bbtnImprime.Enabled := True;
    Finally
     Screen.Cursor := crDefault;
    end;
   end;
end;

procedure TFRecalendarizacion.EjecutaNAbono;
var
 xCuota : Integer;
 xEstid,xEstAnti,xEstado : String;
begin
 //** la 'S' me indica que los montos de las cuotas deben de acumularse para descontarse
 //** al monto solicitado
 //** paso 1
 xSQL := 'SELECT A.*,C.CUENTAD,C.CUENTAH FROM CRE302 A,CRE303 C'+
         ' WHERE '+
         ' A.ASOID='+QuotedStr(xAsoid)+
         ' AND A.CREDID='+QuotedStr(xCredidA)+
         ' AND A.ASOAPENOM LIKE ('+QuotedStr(trim(dbeasonom.text)+'%')+')'+
         ' AND (A.CREESTID='+QuotedStr(xEstidC)+' OR A.CREESTID='+QuotedStr(xEstidA)+
         ' OR A.CREESTID='+QuotedStr(xEstidP)+')'+
         ' AND A.ASOID = C.ASOID And a.credid = c.credid';
 DM1.cdsConsulta.Close;
 DM1.cdsConsulta.DataRequest(xSQL);
 DM1.cdsConsulta.Open;
 DM1.cdsConsulta.First;

 //** paso 2
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
                           ' OR CREESTID='+QuotedStr(xEstidP);
 DM1.cdsConsulta.Filtered := true;
 DM1.cdsConsulta.First;
 xCreMtoNabo := 0;
 xCuota  := 0;
 while not DM1.cdsConsulta.Eof do
  begin
    //** 07/01/2003 - PJSV, esto queda
     //xCreMtoNabo :=  xCreMtoNabo + DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
     //                              DM1.cdsConsulta.FieldByName('CREMTOFLAT').Asfloat;
    xInteres := 0;
    If DM1.cdsConsulta.FieldByName('FLGNABO').AsString = 'S' then
     begin
      xCreMtoNabo :=  xCreMtoNabo + DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                    DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat;
      xInteres := 0;
     end
    else
     begin
      xCreMtoNabo :=  xCreMtoNabo + DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                   DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat+
                                   DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat;
      xInteres := DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat;
     end;


    xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('T'),'ESTDES'); //B
    xEstAnti  := DM1.cdsQry.FieldByName('ESTID').AsString;
    xSQL := 'UPDATE CRE302 SET CREMTOCOB='+FloatToStr(DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                            DM1.cdsConsulta.FieldByName('CREFLAT').Asfloat)+
              ' ,AREAID='+QuotedStr(xArea)+
              ' ,CRESALDO = 0.00'+
              ' ,CREESTID='+QuotedStr(xEstAnti)+
              ' ,CREESTADO='+QuotedStr(xEstado)+
              ' ,FNABONO='+QuotedStr('S')+
              ' ,NRONABO='+QuotedStr(xNroNotaAbono)+
              ' ,CRECAPITAL ='+DM1.cdsConsulta.FieldByName('CREAMORT').AsString+
              ' ,CREMTOINT  = 0.00'+
              ' ,CREMTOFLAT ='+DM1.cdsConsulta.FieldByName('CREFLAT').AsString+
              ' ,CREDIDNABO='+QuotedStr(xCorreCred)+
              ' WHERE ASOID = '+QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+
              ' AND CREANO='+QuotedStr(DM1.cdsConsulta.FieldByName('CREANO').AsString)+
              ' AND CREMES='+QuotedStr(DM1.cdsConsulta.FieldByName('CREMES').AsString)+
              ' AND CRECUOTA='+QuotedStr(DM1.cdsConsulta.FieldByName('CRECUOTA').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xEstado := DM1.DisplayDescrip('prvSQL','COB101','FORPAGOID,FORPAGOABR','TIPO='+QuotedStr('T'),'FORPAGOABR'); //Z
     xEstAnti  := DM1.cdsQry.FieldByName('FORPAGOID').AsString;

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
                    //DM1.cdsConsulta.FieldByName('CREINTERES').AsString+','+
                    '0.00,'+
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
                    QuotedStr(xEstAnti)+','+
                    QuotedStr(xEstado)+','+
                    QuotedStr(DM1.cdsConsulta.FieldByName('CREANO').AsString)+','+
                    QuotedStr(DM1.cdsConsulta.FieldByName('CREMES').AsString)+',';

     xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('B'),'ESTDES');
     xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
     xSQL := xSQL + QuotedStr(xEstid)+','+
                    QuotedStr(xEstado)+','+
                    DM1.cdsConsulta.FieldByName('CREMTO').AsString+','+
                    //** 20/12/2002 - PJSV , cuando se amplie el campo a 15 quitar los copy
                    QuotedStr(COPY(xCorreCred,1,2)+COPY(xCorreCred,7,2)+COPY(xCorreCred,10,6) )+')';

//p   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('T'),'ESTDES');
   xEstAnti  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xSQL := 'UPDATE CRE301 SET CREESTID='+QuotedStr(xEstAnti)+
              ' ,CREESTADO='+QuotedStr(xEstado)+
              ' ,NRONABO='+QuotedStr(xNroNotaAbono)+
              ' ,CRESDOACT = 0.00, CREMTOPAG = CREMTOTAL '+
              ' ,CRECUOPAG='+QuotedStr(IntToStr(xCuotaporCobrar))+
              ' ,CRENEWID ='+QuotedStr(xCorreCred)+
              ' WHERE ASOID ='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+
              ' AND ASOAPENOM='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString);//+
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'UPDATE CRE303 SET CREESTID='+QuotedStr(xEstAnti)+
              ' ,CREESTADO='+QuotedStr(xEstado)+
              ' ,CRESDOACT = 0.00, CREMTOPAG = CREMTOTAL ' +
              ' ,CRECUOPAG='+QuotedStr(IntToStr(xCuotaporCobrar))+
              ' ,CRENEWID ='+QuotedStr(xCorreCred)+
              ' WHERE ASOID='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+
              ' AND ASOAPENOM='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   xCuota := xCuota  + 1;
   DM1.cdsConsulta.Next;
  end;


  //** paso 3, GRABA EN LA TABLE DE NOTAS DE ABONO
   xSQL := 'INSERT INTO CRE313 (CIAID, NRONABO, CREDID, ASOID,ASOCODMOD, ASOCODAUX,'
          +' ASOAPENOM, USEID, TMONID, MTOABONO, CRENUMCUO, CUENTAD, CUENTAH, USUARIO,'
          +' FREG, HREG) VALUES ('+QuotedStr(DM1.cdsConsulta.FieldByName('CIAID').AsString)+','+
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
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   DM1.cdsConsulta.Filter := '';
   DM1.cdsConsulta.Filtered := false;
end;

procedure TFRecalendarizacion.Graba301;
var
 xEstado,xSQL : String;
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


    'SELECT '+
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
    'FROM CRE303 '+
    'WHERE ASOID = '+QuotedStr(xAsoid)+
    ' AND CRE303.CREDID='+QuotedStr(xCorreCred);
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    xEstado := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('1'),'ESTDES');
    // Inserta Situación del Crédito
    xSQL := 'INSERT INTO CRE304 ('+
             'CREDID, TSITCREID, FSITCRE, USUARIO, USUARIONOM, FREG, HREG) VALUES ('+
             QuotedStr(xCorreCred)+','+QuotedStr(xEstado)+','+
             QuotedStr(DateToStr(xFechaSys))+','+
             QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
             //QuotedStr(DM1.cdsUsuarios.FieldByName('USERNOM').AsString)+','+
             QuotedStr(DM1.wUsuario)+','+
             QuotedStr(DateToStr(xFechaSys))+','+wRepTimeServi+')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
//    DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
//   Except
//     DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
//   end;
end;

procedure TFRecalendarizacion.Graba303;
begin
//   try
//    DM1.DCOM1.AppServer.SolStartTransaction;
   xSQL:=' INSERT INTO CRE303 '+
         ' (CCOSID,CUENTAH,CUENTAD,FORPAGOABR,CIAID, '+
         ' CREESTID,CREANOMES,NROPAGARE,NROAUTDES,TIPCREDES,GARAPENOM, '+
         ' GARASOID,ASOCODAUX,ARCHIVOFTP, '+
         ' AGENBANCOID,DPTOGIRO,USEIDGAR,TIPDESEID,BCOGIRO,CREMTONABO,CREFFINPAG,CREFINIPAG, '+
         ' CREBLOQFEC,USUBLOQ,CREBLOQ,USUARIO,FREG,HREG,OFDESID,CALIFICAID,APRUEBAID,CREESTADO, '+
         ' TMONID,CUOTAINI,UPAGOID,UPROID,DPTOID,LISTAID,CREDID,CRECOM,CRESEG, '+
         ' CREPOR,CREGADM,CRECOMP,CREMORA,FORPAGOID,CRETCALID,TMONABR,CRETCALABR, '+
         ' LISTAABR,TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG, '+
         ' CREFECINI,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA, '+
         ' CRENUMCUO,CRELUGGIRO,BANCOID,CRENUMCTA, CREMTOPAG, CRESDOACT, CREPERGRA, '+
         ' CRECUOPAG, CRECUOENV,CREPERIODI,CREMTOTAL,CRENEWID,CRESALDOT,CREGENCOB) '+
         ' VALUES( '+
         QuotedStr(DM1.cdsCredito.FieldByName('CCOSID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CUENTAH').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CUENTAD').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('FORPAGOABR').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CIAID').AsString)+', '+
         QuotedStr(xEstidC)+', '+
         QuotedStr(IntToStr(xAnosys)+IntTostr(xMesSys))+', '+
         //QuotedStr(DM1.cdsCredito.FieldByName('NROPAGARE').AsString)+', '+
         quotedstr(xCorrePagare)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('NROAUTDES').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('TIPCREDES').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('GARAPENOM').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('GARASOID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('ASOCODAUX').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('ARCHIVOFTP').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('AGENBANCOID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('DPTOGIRO').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('USEIDGAR').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('TIPDESEID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('BCOGIRO').AsString)+', '+
         dbesaldo.text+', '+
         QuotedStr(xFPgoFin)+', '+
         QuotedStr(xFPgoIni)+', '+
         'TO_DATE('+QuotedStr(FormatDateTime(wFormatFecha,DM1.cdsCredito.FieldByName('CREBLOQFEC').AsDatetime))+'), '+
         QuotedStr(DM1.cdsCredito.FieldByName('USUBLOQ').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CREBLOQ').AsString)+', '+
         QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYYY')+'), SYSDATE, '+
         QuotedStr(xciaid)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CALIFICAID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('APRUEBAID').AsString)+', '+
         quotedStr(xEstadoC)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('TMONID').AsString)+', '+
         DM1.cdsCredito.FieldByName('CUOTAINI').AsString+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('UPAGOID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('UPROID').AsString)+', '+
          //** DPTOID
          //** 15/01/2003 - PJSV , SE cambia porque el DPTOID del maestro no es el DPTOID
          //** de la USE
          //QuotedStr(DM1.cdsCredito.FieldByName('DPTOID').AsString)+', '+
          QuotedStr(wDptoidUse)+','+
          //**
         QuotedStr(DM1.cdsCredito.FieldByName('LISTAID').AsString)+', '+
         QuotedStr(xCorreCred)+', '+
         '0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '+
         QuotedStr(DM1.cdsCredito.FieldByName('FORPAGOID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CRETCALID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('TMONABR').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CRETCALABR').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('LISTAABR').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('TIPCREID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('ASOID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('ASOCODMOD').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('ASOCODPAGO').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('ASOAPENOM').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('USEID').AsString)+', '+
         'TO_DATE('+QuotedStr(FormatDateTime(wFormatFecha, dbdtpFecrec.Date))+'), '+
         'TO_DATE('+QuotedStr(FormatDateTime(wFormatFecha, dbdtpFecrec.Date))+'), '+
         dbesaldo.Text+', '+dbesaldo.Text+', '+dbesaldo.Text+', '+
         '0.00, '+
         '0.00, '+
         FloatToStr(MtoCuota)+', '+
         dbencuotas.text+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CRELUGGIRO').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('BANCOID').AsString)+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CRENUMCTA').AsString)+', '+
         '0.00, '+
         dbesaldo.Text+', '+
         QuotedStr(DM1.cdsCredito.FieldByName('CREPERGRA').AsString)+', '+
         'NULL, '+
         'NULL, '+
         dbencuotas.Text+', '+
         dbesaldo.Text+', '+
         'NULL, '+
         dbesaldo.Text+', '+
         quotedstr(xEstid)+') ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
//    DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
//   Except
//     DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
//   end;

end;

procedure TFRecalendarizacion.CronogramaEfectivo; //** GENERA EL CRONOGRAMA
var
   z : Integer;
   xFlatMto : Real;
   iComision, iGastosAdm, iSeguro : Real;
   xMescopia : String;
   xSumaInt, xUltAmor, xFlatul, xUltimo : Double;
begin
   Try
  //** hABILITAR LUEGO
  //** DM1.DCOM1.AppServer.SolStartTransaction;
     vMonto := 0;
     Amortizacion := 0;
     // Monto Otorgado - Monto crédito
     If Length(Trim(dbesaldo.Text))=0 Then
      begin
       MtoCredito := 0;
       Capital    := 0;
       vCredito   := Capital;
      end
     Else
      begin
       MtoCredito := DM1.FRound(StrToFloat(dbesaldo.text),15,2);
       Capital    := MtoCredito;
       vCredito   := Capital;
      end;

{      // Interes
        Interes:= xInteres/100;

      // Interes + 1 para la fórmula
        InteresM:= Interes+1; //FRound(Interes+1,15,3);

      // Flat
      Flat:= xFlat/100;
}

      //Número de Cuotas
      NroCuotas := Round(StrToFloat(dbencuotas.Text));

      // Calculando el Monto del Flata
      FlatMto   := 0.00; //(Flat*MtoCredito)/NroCuotas;

{      // Elevando a la potencia n para: (1+I)
      InteresE:= Power(InteresM,NroCuotas); ////FRound(Power(InteresM,NroCuotas),15,3);

      //                   n
      // Calculando : [(1+I )]-1
      InteresK:= InteresE-1; //FRound(InteresE-1,15,3);
      // Calculando el Monto de la Cuota
      MtoCuota:= DM1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),15,2);
}
      MtoCuota := DM1.FRound(MtoCredito / StrToInt(dbencuotas.Text) , 15, 2);
      CuotaMto := MtoCuota;
      // Redondeando a 2 decimales

     z := StrToInt(dbencuotas.Text);
     xNroCuota := 1;

     gMes := IntToStr(xMesSys);
     gano := IntToStr(xAnosys);
     While xNroCuota <= z Do
      begin
       If xNroCuota = 0 Then
        begin
         xMescopia := gMes;
         gMes := '0';
         InteresMto:= 0;
         xFlatMto := FlatMto;
         FlatMto := 0;
         gMes := xMesCopia;
         FlatMto := xFlatMto;
        end
       Else
        begin
         If Capital - CuotaMto < 0 Then
          InteresMto:= 0.00  //(Capital - (CuotaMto - FlatMto)) * -1
         Else
          InteresMto:= 0.00;  //Capital*Interes;

         xSumaInt := round((xSumaInt + InteresMto)*100)/100;
         xFlatul  := round((xFlatul + FlatMto)*100)/100;

         Amortizacion:= CuotaMto-(FlatMto+InteresMto);

         // acumulo la amortizacion
         vMonto:= vMonto+ round((Amortizacion)*100)/100 ; //vMonto:= vMonto+ (CuotaMto-(FlatMto+InteresMto));

         If xNroCuota < z Then
           Capital:= vCredito - vMonto
         Else
          begin
            Capital:= 0;
            xUltimo := (CuotaMto * NroCuotas) - (vmonto + xSumaInt + xFlatul);
            xUltAmor := InteresMto + xUltimo; //Amortizacion + xUltimo;
            InteresMto := 0.00;  //xUltAmor;
            MtoCuota:=MtoCuota+(vCredito-vMonto);
            Amortizacion:=Amortizacion+(vCredito-vMonto);
          end;

         xComision := Capital*iComision;
         xGastosAdm:= Capital*iGastosAdm;
         xSeguro   := Capital*iSeguro;

         If gMes = '12' Then
          begin
           gMes:='00';
           gAno:=IntToStr(StrToInt(gAno)+1);
          end;
          gMes:=DM1.StrZero(IntToStr(StrToInt(gMes)+1),2);

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

procedure TFRecalendarizacion.Graba302;
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

  If gMes <> '0' Then
  xDatos := xDatos + DM1.cdsSolicitud.FieldByName('CRECUOTA').AsString+','
  Else
  xDatos := xDatos + '0.00,';

  xDatos := xDatos + QuotedStr(DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('USEID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('UPROID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('UPAGOID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('DPTOID').AsString)+',';

  //xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('2'),'ESTDES');
  //xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
  xDatos := xDatos + QuotedStr(xEstidC)+','+
                     QuotedStr(xEstadoC)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString)+','+
                     QuotedStr(DM1.cdsSolicitud.FieldByName('BANCOID').AsString)+','+
                     QuotedStr(gAno)+','+
                     QuotedStr(gMes)+','+
                     QuotedStr(DM1.wUsuario)+','+
                     QuotedStr(DateToStr(xFechaSys))+','+
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
   xDatos := xDatos + QuotedStr(DM1.cdsSolicitud.FieldByName('ASOCODAUX').AsString)+','+
                      QuotedStr(xArea);

  xSQL := 'INSERT INTO CRE302 ('+xCAMPO302+') VALUES ('+ xDatos +')';

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
end;

procedure TFRecalendarizacion.Z2bbtnImprimeClick(Sender: TObject);
var
  x10:Integer;
begin
   DM1.cdsConsulta.Close;
   xSQL := 'SELECT A.ASOID,A.CREMES,A.CREANO,A.CRECUOTA,A.CREAMORT,A.CREMTO,A.CREINTERES,'
          +' A.CREFLAT,A.CRECAPCRON, A.CREDID ,'
          +' DECODE(CREMES,'+QuotedStr('01')+','+QuotedStr('Ene -')+','+QuotedStr('02')+','
          +' '+QuotedStr('Feb -')+','+QuotedStr('03')+','+QuotedStr('Mar -')+','+
            ' '+QuotedStr('04')+','+QuotedStr('Abr -')+','+
            ' '+QuotedStr('05')+','+QuotedStr('May -')+','+QuotedStr('06')+','+
            ' '+Quotedstr('Jun -')+','+QuotedStr('07')+','+QuotedStr('Jul -')+','+
            ' '+QuotedStr('08')+','+QuotedStr('Ago -')+','+QuotedStr('09')+','+
            ' '+Quotedstr('Set -')+','+
            ' '+QuotedStr('10')+','+QuotedStr('Oct -')+','+QuotedStr('11')+','+
            ' '+QuotedStr('Nov -')+','+QuotedStr('12')+','+QuotedStr('Dic -')+',NULL) AS PERIODO,'+
            ' B.CREFOTORG, B.CREMTOSOL, B.ASOAPENOM, B.TMONID, B.TIPCREDES, B.CRETCALID, B.CRENUMCUO,'+
            ' C.CRETCALDES, D.TMONDES FROM (SELECT '+
            ' A.ASOID, A.CREMES, A.CREANO, A.CRECUOTA, A.CREAMORT, A.CREMTO, A.CREINTERES,'+
            ' A.CREFLAT, A.CRECAPCRON, A.CREDID'+
            ' From cre302 A WHERE A.ASOID='+QuotedStr(xAsoid)+
            ' AND A.CREDID='+QuotedStr(TRIM(xCorreCred))+
            ' ) A,(SELECT B.CREDID, B.CREFOTORG, B.CREMTOSOL, B.ASOAPENOM, B.TMONID,'+
            ' B.TIPCREDES, B.CRETCALID, B.CRENUMCUO From CRE301 B WHERE '+
            ' B.ASOID='+QuotedStr(xAsoid)+
            ' AND B.CREDID='+QuotedStr(TRIM(xCorreCred))+') B,'+
            ' CRE102 C,TGE103 D WHERE A.CREDID=B.CREDID AND C.CRETCALID(+)=B.CRETCALID '+
            ' AND B.TMONID=D.TMONID ORDER BY A.ASOID, A.CRECUOTA, A.CREANO,A.CREMES';
   DM1.cdsConsulta.Close;
   DM1.cdsConsulta.DataRequest(xSQL);
   DM1.cdsConsulta.Open;
   If DM1.cdsConsulta.RecordCount = 0 Then
    begin
     ShowMessage ('No existe Cronograma a mostrar');
     Exit;
    end;
   //** seteo la nueva ruta para el reporte
   ppDBCronograma.DataSource := DM1.dsConsulta;
   ppRepCronograma.Template.FileName := wRutaRpt+'\CronogramaPagos.rtm';
   ppRepCronograma.Template.LoadFromFile ;
   ppRepCronograma.Print;
   ppRepCronograma.Stop;

   x10 := Self.ComponentCount-1;
   While x10>=0 Do
    begin
     If Self.Components[x10].ClassName = 'TppGroup' Then
      begin
       Self.Components[x10].Free;
      end;
     x10 := x10-1;
    end;
end;

//** 19/12/2002 - PJSV
Procedure TFRecalendarizacion.Correlativo;
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
procedure TFRecalendarizacion.CorreCred(pCorre : String);
var
 xCadena,xSql : String;
begin
 //** dependiendo del pCorre, lleno xCadena para el Sql
 If pCorre = 'CREDID' then
   xCadena := 'substr(CREDID,9,7)'
 else
   xCadena := pCorre;

   xSql := 'select max('+xCadena+' +1) NUMCRED from CRE206 '+
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
Procedure TFRecalendarizacion.BuscaCorre;
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
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

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
      end;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    end;
end;

procedure TFRecalendarizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsQry.Close;
   DM1.cdsQry1.Close;
   DM1.cdsAso.Close;
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitudes.Close;
   DM1.cdsSolicitudA.Close;
   DM1.cdsConsulta.Filter   := '';
   DM1.cdsConsulta.Filtered := False;
   DM1.cdsConsulta.IndexFieldNames := '';
   DM1.cdsConsulta.Close;
   DM1.cdsCredito.Close;
   DM1.cdsOfDes.Close;
end;

procedure TFRecalendarizacion.dblcdOfDesExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'OFDESID ='+QuotedStr(dblcdOfDes.Text);
   dbeDescOfDes.Text := DM1.DisplayDescrip('prvSQL', 'APO110', 'OFDESNOM', xWhere, 'OFDESNOM');
end;

procedure TFRecalendarizacion.dbdtpFechaSolExit(Sender: TObject);
begin
   DecodeDate(dbdtpFechaSol.Date, xAnoReg, xMesReg, xDiaReg);
end;

function TFRecalendarizacion.RestaPeriodos(wPer1, wPer2: string): integer;
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



