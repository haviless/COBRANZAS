unit COBD04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Math, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  DBClient, wwclient, Buttons, Mask, wwdbedit, ppCtrls, ppBands, ppVar,
  ppClass, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe,ppViewr;

type
  TDatosCreditos = record
    Fecha       : TDateTime;
    Saldo       : Currency ;
    NroCuotas   : Integer ;
    NroCredito  : String;
    NroAbono    : String;
    MesInicio   : Integer ;
    TasaInteres : Currency ;
    TasaFlat    : Currency ;
    CreditoOri  : String ;
    Asociado    : String ;
    ForPago     : String;
    ForPagoAbr  : String ;
    Area        : String ;
    TipoDes     : String ;
    TipoDesAbr  : String ;
    cdsNotaAbono: TwwClientDataset ;
  end;
  TDatosAsociado = record
    UPROID      : String;
    USEID       : String;
    UPAGOID     : String ;
    DPTOID      : String;
    ASOAPENOM   : String;
    USEABR      : String ;
    UPROABR     : String ;
    UPAGOABR    : string ;
    DPTOABR     : String ;
    ASOCODMOD   : String ;
    ASOCODAUX   : String ;
    CCOSID      : String ;
    CCOSABR     : String ;
    ASONCTA     : String ;
    ASODNI      : String ;
    ASOTIPID    : String ;
    BANCOID     : String ;
    ASOCODPAGO  : String ;
    CIUDID      : String ;
  end;

  TFSimulaCronograma = class(TForm)
    wwDBGrid1: TwwDBGrid;
    cdsQry1: TwwClientDataSet;
    dsQry1: TwwDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button4: TButton;
    cdsCreditoOri: TwwClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtSaldoCre: TwwDBEdit;
    edtCuota: TwwDBEdit;
    edtInteres: TwwDBEdit;
    edtFlat: TwwDBEdit;
    ppDBCronograma: TppDBPipeline;
    ppRepCronograma: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
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
    BitBtn3: TBitBtn;
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCuotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtSaldoCreExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    rDatosCredito  : TDatosCreditos ;
    rDatosAsociado : TDatosAsociado ;
    xSQL2 : String ;
    //** 2 me indica que son POR COBRAR
    xEstadoC ,   xEstidC  : String ;
    xSysDate  : TDateTime ;

    function  RecuperaTipoCambio :Currency ;
    procedure Calculo3(MtoCredito:double;NroCuotas:Integer;xInteres,xFlat:double;MesInicio:Integer=0);
    procedure CronogramaEfectivo;
    procedure Sumariza ;
    function  SumarizaxCampo(sCampo:String):Currency;
//
    procedure Graba303(bPrevio:Boolean=True); //** GRABA EL NUEVO CREDITO EN CRE303
    procedure Graba301(bPrevio:Boolean=True); //** GRABA EL NUEVO CREDITO EN CRE301
    procedure Graba302(bPrevio:Boolean=True);
    procedure GeneraCronograma(bPrevio:Boolean=True); //** GENERA EL CRONOGRAMA
    procedure EjecutaNAbono(bPrevio:Boolean=True);  //** MATA LAS CUOTAS DEL CREDITO ESCOGIDO,
    procedure LimpiaTablas ;
//
  public
    { Public declarations }
    procedure ReprocesaCronograma(
    pFecha       : TDateTime;
    pSaldo       : Currency ;
    pNroCuotas   : Integer ;
    pNroCredito  : String;
    pNroAbono    : String;
    pMesInicio   : Integer ;
    pTasaInteres : Currency ;
    pTasaFlat    : Currency ;
    pCreditoOri  : String ;
    pAsociado    : String ;
    pForPago     : String;
    pForPagoAbr  : String ;
    pArea        : String ;
    pTipoDes     : String ;
    pTipoDesAbr  : String ;
    pcdsNotaAbono: TwwClientDataset ;
    bPrevio : boolean = True
    );
    procedure SimulaCronograma(currInteres:Currency=0;currFlat : currency=0);
    procedure SimulaSaldo(currSaldo ,currInteres,currFlat : currency;iCuotas:Integer;iMesInicio:Integer=0);
    function  CalculaCuota(MtoCredito,xInteres,xFlat:double;NroCuotas:Integer):Currency;
  end;

var
  FSimulaCronograma: TFSimulaCronograma;

implementation

uses StrUtils, COBDM1;

{$R *.dfm}

procedure TFSimulaCronograma.CronogramaEfectivo;
var
   z :Integer;
   xFlatMto : Real;
   iComision, iGastosAdm, iSeguro:Real;
   xMescopia : String;
   xSumaInt, xUltAmor, xFlatul, xUltimo : Double;
   //
   vMonto , Amortizacion ,MtoCredito , Capital , vCredito: double;
   Interes , xInteres , InteresM ,Flat,xFlat,NroCuotas,FlatMto,InteresE,InteresK: double;
   MtoCuota : double ;
   xNroCuota : Integer ;
   xMes : String ;
   xMesact : Integer;
   xAno : String ;
   xAnoact : Integer ;
   InteresMto ,CuotaMto,xComision,xGastosAdm,xSeguro: double;
//
procedure CalculoCuota ;
begin
  // Monto Otorgado - Monto crédito
  MtoCredito := Roundto(StrToFloat(edtSaldoCre.Text), -2);

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
  MtoCuota:= Roundto((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),-2);
  CuotaMto:= MtoCuota;

end;
//
begin

    cdsQry1.Close;
    cdsQry1.CreateDataSet;
    xInteres := strtofloat(edtInteres.Text) ;
    xFlat    := strtofloat(edtFlat.Text) ;
    CalculoCuota ;
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
//wmc       MtoCredito := DM1.FRound(StrToFloat(edtSaldoCre.Text), 15, 2);
       MtoCredito := roundto(StrToFloat(edtSaldoCre.Text), -2);
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
//wmc      MtoCuota := DM1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto), 15, 2);
     MtoCuota := Roundto((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto), -2);

     // Redondeando a 2 decimales

     z := StrToInt(edtCuota.Text);
     xNroCuota:=1;

     xMes := IntToStr(xMesact);
     xAno := IntToStr(xAnoact);
//     If rgMes.Itemindex = 0 then
     If True then
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
//wmc          XMes:=DM1.StrZero(IntToStr(StrToInt(XMes)+1),2);
          XMes:=AnsiRightStr('00'+IntToStr(StrToInt(XMes)+1),2);

//wmc         Graba302;
//
        cdsQry1.Append;
        cdsQry1.FieldByName('CRECUOTA').AsInteger   := xNrocuota;
        cdsQry1.FieldByName('PERIODO').AsString    := xAno+xMes;
        cdsQry1.FieldByName('CRECAPCRON').AsFloat  := Capital;
        cdsQry1.FieldByName('CREAMORT').AsFloat    := Amortizacion;
        cdsQry1.FieldByName('CREINTERES').AsFloat  := InteresMto;
        cdsQry1.FieldByName('CREFLAT').AsFloat     := FlatMto;
        cdsQry1.FieldByName('CREMTO').AsFloat      := (Amortizacion+InteresMto+FlatMto) ;
        cdsQry1.FieldByName('CRESUMA').AsFloat    := cdsQry1.FieldByName('CREAMORT').AsFloat +
                                                     cdsQry1.FieldByName('CREINTERES').AsFloat +
                                                     cdsQry1.FieldByName('CREFLAT').AsFloat ;

        cdsQry1.Next;
//
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

procedure TFSimulaCronograma.Button4Click(Sender: TObject);
begin
   //Valida
   if (edtSaldoCre.Text = '') then
   begin
      edtSaldoCre.SetFocus ;
      Raise Exception.Create('Ingrese Monto a Simular');
   end ;
   if (edtCuota.Text = '') then
   begin
      edtCuota.SetFocus ;
      Raise Exception.Create('Ingrese Numero de Cuotas');
   end ;
   if (edtInteres.Text = '') then
   begin
      edtInteres.SetFocus ;
      Raise Exception.Create('Ingrese Tasa de Interes a utilizar');
   end ;
   if (edtFlat.Text = '') then
   begin
      edtFlat.SetFocus ;
      Raise Exception.Create('Ingrese Tasa Flat a utilizar');
   end ;

   Calculo3(strtofloat(edtsaldocre.text),strtoint(edtCuota.text),strtofloat(edtInteres.Text),strtofloat(edtFlat.text),0);
   Sumariza;
end;

procedure TFSimulaCronograma.Calculo3(MtoCredito: double; NroCuotas: Integer; xInteres,
  xFlat: double; MesInicio: Integer);
var
// Present : TDate;
 x,z,xI,xZ : Integer;
 xSQL,xMes,xAno:String;
 Ano,Mes,Dia : Word;
// xFilas : Array[1..60,1..8] of String;
 xFilas : Array of Array of String;
 xUltAmor,xFlatul,xUltimo : Double;

 //
 vMonto ,Amortizacion : double ;
 Capital ,vCredito,Interes,InteresM,Flat: double;
 FlatMto , InteresE ,InteresK,MtoCuota: double ;
 xMesAct , xAnoAct : Integer ;
 xSumaInt , InteresMto : double ;
 xDif : Double ;
procedure CalculoCuota ;
begin
  // Monto Otorgado - Monto crédito
//  MtoCredito := Roundto(StrToFloat(edtSaldoCre.Text), -2);
  MtoCredito := Roundto(MtoCredito, -2);

  // Interes
  Interes:= xInteres/100;

  // Interes + 1 para la fórmula
  InteresM:=Interes+1;

  // Flat
  Flat:= xFlat/100;

  //Número de Cuotas
//  NroCuotas:= Round(StrToFloat(edtCuota.Text));
  NroCuotas:= Round(NroCuotas);

  // Calculando el Monto del Flat
//  FlatMto:= Flat*MtoCredito/NroCuotas;
  FlatMto:= roundto(Flat*MtoCredito/NroCuotas,-2);

  // Elevando a la potencia n para: (1+I)
  InteresE:= Power(InteresM,NroCuotas);

  //                   n
  // Calculando : [(1+I )]-1
  InteresK:= InteresE-1;

  // Calculando el Monto de la Cuota
  MtoCuota:= Roundto((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),-2);
end;
begin
    CalculoCuota;
    SetLength(xFilas,NroCuotas);
    for xI := low(xFilas) to High(xFilas) do
    begin
     SetLength(xFilas[xI],10);
     For xZ := low(xFilas[xI]) to High(xFilas[xI]) do
       xFilas[xI,xZ] := '';
    end;

    vMonto := 0;
    Amortizacion := 0;
    Capital:= MtoCredito;
    vCredito:= Capital;

    z:=NroCuotas;
    x:=low(xFilas);

    DecodeDate(xSysDate,Ano,Mes,Dia);

    xMesAct := Mes;
    xAnoAct := Ano;
    //
    xMes := IntToStr(xMesact);
    xAno := IntToStr(xAnoact);

    xMes := IntToStr(StrToInt(xMes)+MesInicio -1);
    If xMes <= '0' then
    begin
      xMes := '12';
      xAno := IntToStr(xAnoact -1 );
    end;

    xSumaInt := 0;
    While x <= (z - 1) Do
    begin
     If Capital - MtoCuota < 0 Then
//      InteresMto:= (Capital - (MtoCuota - FlatMto)) * -1
      InteresMto:= roundto((Capital - (MtoCuota - FlatMto)) * -1,-2)
     Else
      InteresMto:= roundto(Capital*Interes,-2);

     xSumaInt := round((xSumaInt + InteresMto)*100)/100;
     xFlatul  := round((xFlatul + FlatMto)*100)/100;

     Amortizacion:= MtoCuota-(FlatMto+InteresMto);

     // acumulo la amortizacion
     vMonto:= vMonto+ round((Amortizacion)*100)/100 ;

     If Capital - MtoCuota > 0 Then
       Capital:= vCredito - vMonto
     Else
     begin
       Capital:= 0;
//       xUltimo := (MtoCuota * NroCuotas) - (vmonto + xSumaInt + xFlatul);
       xUltimo := roundto((MtoCuota * NroCuotas) - (vmonto + xSumaInt + xFlatul),-2);
       xUltAmor := InteresMto + xUltimo;
       InteresMto := xUltAmor;
     end;

     If XMes = '12' Then
     begin
      XMes:='00';
      XAno:=IntToStr(StrToInt(XAno)+1);
     end;

     xMes:=AnsiRightStr( '00'+IntToStr(StrToInt(XMes)+1),2);

     xFilas[x,1] := IntToStr(x+1) ;
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
     xFilas[x,8] := xAno;
     xFilas[x,9] := xMes;
     x:=x+1;
    end;
  cdsQry1.Close;
  cdsQry1.CreateDataSet;
  for xI := low(xFilas) to High(xFilas) do
   begin
     If xFilas[xI,1] <> '' Then
      begin
        cdsQry1.Append;
        cdsQry1.FieldByName('CRECUOTA').AsString  := xFilas[xI,1];
        cdsQry1.FieldByName('PERIODO').AsString   := xFilas[xI,2];
        cdsQry1.FieldByName('CRECAPCRON').AsCurrency := Round(StrToFloat(xFilas[xI,3])*100)/100;
        cdsQry1.FieldByName('CREAMORT').AsCurrency   := Round(StrToFloat(xFilas[xI,4])*100)/100;
        cdsQry1.FieldByName('CREINTERES').AsCurrency := Round(StrToFloat(xFilas[xI,5])*100)/100;
        cdsQry1.FieldByName('CREFLAT').AsCurrency    := Round(StrToFloat(xFilas[xI,6])*100)/100;
        cdsQry1.FieldByName('CREMTO').AsCurrency     := Round(StrToFloat(xFilas[xI,7])*100)/100;
        cdsQry1.FieldByName('CREANO').AsString    := xFilas[xI,8];
        cdsQry1.FieldByName('CREMES').AsString    := xFilas[xI,9];
        //Redondeo
{
        xDif := round((cdsQry1.FieldByName('CREMTO').AsFloat -(cdsQry1.FieldByName('CREAMORT').AsFloat +
            cdsQry1.FieldByName('CREINTERES').AsFloat +
            cdsQry1.FieldByName('CREFLAT').AsFloat))*100)/100   ;
        if xDif <> 0 then
        begin
         cdsQry1.FieldByName('CREAMORT').AsFloat := cdsQry1.FieldByName('CREAMORT').AsFloat + xDif ;
         cdsQry1.FieldByName('CRECAPCRON').AsFloat := cdsQry1.FieldByName('CRECAPCRON').AsFloat - xDif ;
        end;
}
        cdsQry1.FieldByName('CRESUMA').AsFloat    := cdsQry1.FieldByName('CREAMORT').AsCurrency +
                                                     cdsQry1.FieldByName('CREINTERES').AsCurrency +
                                                     cdsQry1.FieldByName('CREFLAT').AsCurrency ;
        cdsQry1.Next;
      end;
   end;
end;

procedure TFSimulaCronograma.Sumariza;
var cds : TwwClientDataset ;
    currSuma1,
    currSuma2,
    currSuma3,
    currSuma4,
    currSuma5 : Currency ;
begin

    currSuma1 := 0 ;
    currSuma2 := 0 ;
    currSuma3 := 0 ;
    currSuma4 := 0 ;
    currSuma5 := 0 ;
    cds := TwwClientDataset.Create(nil);
    cds.CloneCursor(cdsQry1,True);
    cds.First;
    while not cds.eof DO
    begin
      currSuma1 := currsuma1 + cds.fieldbyname('CREAMORT').ascurrency ;
      currSuma2 := currsuma2 + cds.fieldbyname('CREINTERES').ascurrency ;
      currSuma3 := currsuma3 + cds.fieldbyname('CREFLAT').ascurrency ;
      currSuma4 := currsuma4 + cds.fieldbyname('CREMTO').ascurrency ;
      currSuma5 := currsuma5 + cds.fieldbyname('CRESUMA').ascurrency ;
      CDS.Next ;
    end ;
   wwDBGrid1.ColumnByName('CREAMORT').FooterValue    := CurrToStr( currSuma1 ) ;
   wwDBGrid1.ColumnByName('CREINTERES').FooterValue  := CurrToStr( currSuma2 ) ;
   wwDBGrid1.ColumnByName('CREFLAT').FooterValue     := CurrToStr( currSuma3 ) ;
   wwDBGrid1.ColumnByName('CRESUMA').FooterValue     := CurrToStr( currSuma4 ) ;
   wwDBGrid1.ColumnByName('CREMTO').FooterValue      := CurrToStr( currSuma5 ) ;
  CDS.fREE;
end;

procedure TFSimulaCronograma.EjecutaNAbono;
var
 xEstid,xEstado : String ;
 xEstidZ,xEstadoZ,xcredid,xSql,xSql1 : String;
 xInteres : Double;
 xnumcuo,xcuopag,xCuota : Integer;
 currAmort,currInteres,currFlat,CurrSaldo : Currency ;
begin
//
//
 if bPrevio then
 begin
    //Inserta lo del CRE302
    XSQL := 'INSERT INTO CRE319 '
      +' (ASOID,ASOCODMOD,ASOCODPAGO,TIPCREID,TMONID,CREANO,CREMES,CRESALDO,'
      +' CRECUOTA,CREMTO,CREAMORT,CREINTERES,CREFLAT,CREFVEN,CREFPAG,USEID,'
      +' UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,NROOPE,FOPERAC,TCAMBIO,'
      +' CREMTOCOB,CREMONLOC,CREMONEXT,USUARIO,FREG,HREG,FORPAGOID,'
      +' CREFDEV,CREFRECL,ASOAPENOM,AGENBCOID,CRECAPITAL,CREMTOINT,CREMTOFLAT,'
      +' CRENEWID,FNABONO,CREDID,CRETCALID,TIPDESEID,TMONABR,CRETCALABR,'
      +' TIPDESABR,TIPCREABR,FORPAGOABR,LISTAABR,CIAID,CREESTID,CREESTADO,'
      +' CRECOM,CRESEG,CREPOR,CREGADM,CRECOMP,CREMORA,CREMTOCOM,CREMTOSEG,'
      +' CREMTOPOR,CREMTOGADM,CREMTOCOMP,CREMTOMORA,LISTAID,ASOCODAUX,NRONABO,'
      +' CIUDID,FLGPAG,ARCHIVOFTP,CREBLOQ,CREBLOQFEC,CREBLOQOBS,CREDIDNABO,'
      +' CREINFO,CREMTOEXC,AREAID,CREDOCPAG,FLAGVAR,CRECAPCRON,CREINTCRON,'
      +' CREFLACRON,CREMTOAN,CREAMORTAN,CREINTERESAN,CREFLATAN,FLAGNVINT,DESBLOFEC,'
      +' USUBLOQ,USUDESBLOQ,NROREFINAN,CREFLGEXC,CREFECEXC,FLGINT,NROOPETMP,'
      +' FOPERACTMP,FLGDESMAR,USUDESMAR,FECDESMAR,OBSDESMAR,CREMTODEV,'
      +' CRECAPCON,FLGINCONSIS,CREAPLEXC,TIPNABO)'

      +' SELECT ASOID,ASOCODMOD,ASOCODPAGO,TIPCREID,TMONID,CREANO,CREMES,CRESALDO,'
      +' CRECUOTA,CREMTO,CREAMORT,CREINTERES,CREFLAT,CREFVEN,CREFPAG,USEID,'
      +' UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,NROOPE,FOPERAC,TCAMBIO,'
      +' CREMTOCOB,CREMONLOC,CREMONEXT,USUARIO,FREG,HREG,FORPAGOID,'
      +' CREFDEV,CREFRECL,ASOAPENOM,AGENBCOID,CRECAPITAL,CREMTOINT,CREMTOFLAT,'
      +' CRENEWID,FNABONO,CREDID,CRETCALID,TIPDESEID,TMONABR,CRETCALABR,'
      +'  TIPDESABR,TIPCREABR,FORPAGOABR,LISTAABR,CIAID,CREESTID,CREESTADO,'
      +' CRECOM,CRESEG,CREPOR,CREGADM,CRECOMP,CREMORA,CREMTOCOM,CREMTOSEG,'
      +' CREMTOPOR,CREMTOGADM,CREMTOCOMP,CREMTOMORA,LISTAID,ASOCODAUX,NRONABO,'
      +' CIUDID,FLGPAG,ARCHIVOFTP,CREBLOQ,CREBLOQFEC,CREBLOQOBS,CREDIDNABO,'
      +' CREINFO,CREMTOEXC,AREAID,CREDOCPAG,FLAGVAR,CRECAPCRON,CREINTCRON,'
      +' CREFLACRON,CREMTOAN,CREAMORTAN,CREINTERESAN,CREFLATAN,FLAGNVINT,DESBLOFEC,'
      +' USUBLOQ,USUDESBLOQ,NROREFINAN,CREFLGEXC,CREFECEXC,FLGINT,NROOPETMP,'
      +' FOPERACTMP,FLGDESMAR,USUDESMAR,FECDESMAR,OBSDESMAR,CREMTODEV,'
      +' CRECAPCON,FLGINCONSIS,CREAPLEXC,TIPNABO '
      +' FROM CRE302 '
      +' WHERE CREDID = ' + QuotedStr(rDatosCredito.CreditoOri)
      +' AND ASOID = ' + QuotedStr(rDatosCredito.Asociado) ;

      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    //inserta lo del CRE310
    xSql := 'INSERT INTO CRE321'
     + ' (CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,'
     + ' CREDID,CRECUOTA,CREMONLOC,CREMONEXT,CREFPAG,CREAMORT,CREINTERES,'
     + ' CREFLAT,CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,'
     + ' UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,'
     + ' CIUDID,ARCHIVOFTP,CREOBS,CREANO,FORPAGOID,NROOPE,FOPERAC,'
     + ' NRONABO,AREAID,CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,'
     + ' COBFDEV,COBFRECL,COBFNP,CREESTID,CREESTADO,CREMTOCUO,'
     + ' FLGEXC,FECEXC,CREDOCPAG,DEVID,FLGSSS,AGENBCOID,FORPAGID,'
     + ' FORPAGABR,DETRCOBID,USERCOBID,RCOBID,DOCID,FLGTA,'
     + ' NROREFINAN,CREFLAGDEV,FL_DISTRIB,CREESTANT,CREESTANTDES,NROOPETMP,'
     + ' FOPERACTMP,ASOSITID,FLAGVAR,FLAGVAR2,CNTANOMM,TIPOCONT,'
     + ' CREMTOEXC,FLAGVAR3,FLAGVAR4,FLGINCONSIS,CREAPLEXC,PERCONTA,'
     + ' TIPNABO)'

     + 'SELECT CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,'
     + ' CREDID,CRECUOTA,CREMONLOC,CREMONEXT,CREFPAG,CREAMORT,CREINTERES,'
     + ' CREFLAT,CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,'
     + ' UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,'
     + ' CIUDID,ARCHIVOFTP,CREOBS,CREANO,FORPAGOID,NROOPE,FOPERAC,'
     + ' NRONABO,AREAID,CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,'
     + ' COBFDEV,COBFRECL,COBFNP,CREESTID,CREESTADO,CREMTOCUO,'
     + ' FLGEXC,FECEXC,CREDOCPAG,DEVID,FLGSSS,AGENBCOID,FORPAGID,'
     + ' FORPAGABR,DETRCOBID,USERCOBID,RCOBID,DOCID,FLGTA,'
     + ' NROREFINAN,CREFLAGDEV,FL_DISTRIB,CREESTANT,CREESTANTDES,NROOPETMP,'
     + ' FOPERACTMP,ASOSITID,FLAGVAR,FLAGVAR2,CNTANOMM,TIPOCONT,'
     + ' CREMTOEXC,FLAGVAR3,FLAGVAR4,FLGINCONSIS,CREAPLEXC,PERCONTA,'
     + ' TIPNABO '
     + ' FROM CRE310 '
     + ' WHERE CREDID = ' + QuotedStr(rDatosCredito.CreditoOri)
     + ' AND ASOID = ' + QuotedStr(rDatosCredito.Asociado) ;

      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

 end;

 rDatosCredito.cdsNotaAbono.First;
 rDatosCredito.cdsNotaAbono.Filter := 'NA_FLAG=''S''';
 rDatosCredito.cdsNotaAbono.Filtered := true;
 rDatosCredito.cdsNotaAbono.First;
 xCuota  := 0;
 while not rDatosCredito.cdsNotaAbono.Eof do
  begin

    //
    currInteres  := 0 ;
    currFlat     := 0 ;
    currAmort    := 0 ;
    CurrSaldo := rDatosCredito.cdsNotaAbono.FieldBYName('NA_SALDO').AsCurrency ;
    if rDatosCredito.cdsNotaAbono.FieldBYName('NA_AMORT').AsCurrency <
       rDatosCredito.cdsNotaAbono.FieldBYName('CREAMORT').AsCurrency then
    begin
      CurrAmort := ( rDatosCredito.cdsNotaAbono.FieldBYName('CREAMORT').AsCurrency -
                rDatosCredito.cdsNotaAbono.FieldBYName('NA_AMORT').AsCurrency ) ;
      CurrSaldo := CurrSaldo -
              ( rDatosCredito.cdsNotaAbono.FieldBYName('CREAMORT').AsCurrency -
                rDatosCredito.cdsNotaAbono.FieldBYName('NA_AMORT').AsCurrency ) ;
    end;
    if CurrSaldo > 0 then
    begin
      //FLAT
      if rDatosCredito.cdsNotaAbono.FieldBYName('NA_FLAT').AsCurrency <
         rDatosCredito.cdsNotaAbono.FieldBYName('CREFLAT').AsCurrency then
      begin
        currFlat := ( rDatosCredito.cdsNotaAbono.FieldBYName('CREFLAT').AsCurrency -
                  rDatosCredito.cdsNotaAbono.FieldBYName('NA_FLAT').AsCurrency ) ;
        CurrSaldo := CurrSaldo -
                ( rDatosCredito.cdsNotaAbono.FieldBYName('CREFLAT').AsCurrency -
                  rDatosCredito.cdsNotaAbono.FieldBYName('NA_FLAT').AsCurrency ) ;
      end;
      //INTERES
      if CurrSaldo > 0 then
      begin
        if rDatosCredito.cdsNotaAbono.FieldBYName('NA_INTERES').AsCurrency <
           rDatosCredito.cdsNotaAbono.FieldBYName('CREINTERES').AsCurrency then
        begin
           currInteres := ( rDatosCredito.cdsNotaAbono.FieldBYName('CREINTERES').AsCurrency -
                    rDatosCredito.cdsNotaAbono.FieldBYName('NA_INTERES').AsCurrency ) ;
        end;
      end ;
    end;
    //

    xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('R'),'ESTDES');
    xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
    if bPrevio then
       xSQL := 'UPDATE CRE319 SET '
    else
       xSQL := 'UPDATE CRE302 SET ';

    xSql := xSql + ' CREMTOCOB = NVL(CREMTOCOB,0)+'+FloatToStr(rDatosCredito.cdsNotaAbono.FieldByName('NA_SALDO').AsFloat);
    xSql := xSql + //WMC 20031118' ,AREAID ='+QuotedStr(rDatosCredito.Area)+
            ' ,CRESALDO = 0.00'+
            ' ,CREESTID ='+QuotedStr(xEstidZ)+
            ' ,CREESTADO ='+QuotedStr(xEstadoZ)+
            ' ,FNABONO ='+QuotedStr('S')+
            ' ,NROREFINAN ='+QuotedStr(rDatosCredito.NroCredito);
    xSql := xSql +' ,CRECAPITAL =NVL(CRECAPITAL,0)+' + floattostrf(currAmort,fffixed,15,2) +
                  ' ,CREMTOINT = NVL(CREMTOINT,0)+'  + floattostrf(currInteres,fffixed,15,2) +
                  ' ,CREMTOFLAT =NVL(CREMTOFLAT,0)+' + floattostrf(currFlat,fffixed,15,2) ;

    xSql := xSql + ' ,CREDIDNABO ='+QuotedStr(rDatosCredito.NroCredito)+
                   ' ,NRONABO ='+QuotedStr(rDatosCredito.NroAbono)+
                   ' ,CREDOCPAG ='+QuotedStr(rDatosCredito.NroAbono)+
                   ' ,NROOPE ='+QuotedStr(rDatosCredito.NroAbono)+
                   ' ,TIPNABO ='+QuotedStr(copy(rDatosCredito.NroAbono,1,1))+
                  ' ,USUARIO ='+QuotedStr(DM1.wUsuario)+
//WMC 20031118                  ' ,FREG = TO_DATE(TO_CHAR(SYSDATE,''YYYYMMDD''),''YYYYMMDD'')'+
//WMC 20031118                  ' ,HREG = SYSDATE'+
//WMC 20031030                  ' ,TCAMBIO ='+FloatToStr(wTCambioRefe)+
                  ' ,TCAMBIO =0.00'+
                  ' ,FOPERAC = TO_DATE(TO_CHAR(SYSDATE,''YYYYMMDD''),''YYYYMMDD'') '+
                  ' ,CREFPAG = TO_DATE(TO_CHAR(SYSDATE,''YYYYMMDD''),''YYYYMMDD'') '+
                  ' Where ASOID = ' +QuotedStr(rDatosCredito.Asociado)+
                  ' AND CREDID ='   +QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CREDID').AsString)+
                  ' AND CREANO ='   +QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CREANO').AsString)+
                  ' AND CREMES ='   +QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CREMES').AsString)+
                  ' AND CRECUOTA =' +QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CRECUOTA').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xEstadoZ := DM1.DisplayDescrip('prvSQL','COB101','FORPAGOID,FORPAGOABR','TIPO='+QuotedStr('R'),'FORPAGOABR');
     xEstidZ  := DM1.cdsQry.FieldByName('FORPAGOID').AsString;

     //CRE310
     if bPrevio then
       xSQL := 'INSERT INTO CRE321 (ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,'
     else
       xSQL := 'INSERT INTO CRE310 (ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,';

     xSQL := xSql +
             'CREDID,CRECUOTA,CREMONLOC,CREMONEXT,CREFPAG,CREAMORT,CREINTERES,CREFLAT,'+
             'CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,CIAID,UPROID,DPTOID,UPAGOID,'+
             'BANCOID,CCBCOID,ASOAPENOM,CIUDID,AREAID,NROREFINAN,TRANSINTID,FORPAGID,FORPAGABR,'+
             'CREANO,CREMES,CREESTID,CREESTADO,CREMTOCUO,CREDOCPAG,CREESTANT,CREESTANTDES,FORPAGOID,FORPAGOABR,TIPNABO,NROOPE,NRONABO,FOPERAC)'+
             ' VALUES ('+
             //** ASOID
             QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('ASOID').AsString)+','+
             //** ASOCODMOD
             QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('ASOCODMOD').AsString)+',';
     //** ASOCODAUX
     If Length(rDatosCredito.cdsNotaAbono.FieldByName('ASOCODAUX').AsString) > 0 Then
      xSQL := xSQL + quotedstr(DM1.StrZero(rDatosCredito.cdsNotaAbono.FieldByName('ASOCODAUX').AsString,2))+','
     Else
      xSQL := xSQL + 'null,';
                    //** USEID
    xSQL := xSQL +  QuotedStr(rDatosAsociado.USEID)+','+
                    //** ASOCODPAGO
                    QuotedStr(rDatosAsociado.ASOCODPAGO)+','+
                    //** TIPCREID
                    QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('TIPCREID').AsString)+','+
                    //** CREDID
                    QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CREDID').AsString)+','+
                    //** CRECUOTA
                    rDatosCredito.cdsNotaAbono.FieldByName('CRECUOTA').AsString+',';
     //** CREMONLOC
      xSQL := xSQL + rDatosCredito.cdsNotaAbono.FieldByName('NA_SALDO').AsString+',';
     //** CREMONEXT
      xSQL := xSQL + '0.00,';
     //** CREFPAG
      xSQL := xSQL + 'TO_DATE(TO_CHAR(SYSDATE,''YYYYMMDD''),''YYYYMMDD''),';

    xSql := xSql +floatToStrf(currAmort,fffixed,15,2)+','+
                  floatToStrf(currInteres,fffixed,15,2)+','+
                  floatToStrf(currFlat,fffixed,15,2)+',';

      //** CREMTOCOB
    xSql := xSql + FloatToStr(rDatosCredito.cdsNotaAbono.FieldByName('NA_SALDO').AsFloat)+',';

    xSql := xSql + QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('TMONID').AsString)+',';
      //** TIPO DE CAMBIO
    xSQL := xSQL + 'NULL,';

     xSQL := xSQL + QuotedStr(DM1.wUsuario)+','+
                    'TO_DATE(TO_CHAR(SYSDATE,''YYYYMMDD''),''YYYYMMDD''),'+
                    wRepTimeServi+','+
                    QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CIAID').AsString)+','+
                    QuotedStr(rDatosAsociado.UPROID)+','+
                    QuotedStr(rDatosAsociado.DPTOID)+','+
                    QuotedStr(rDatosAsociado.UPAGOID)+','+
                    'NULL,'+
                    'NULL,'+
                    QuotedStr(rDatosAsociado.ASOAPENOM)+','+
                    QuotedStr(rDatosAsociado.CIUDID)+','+
                    QuotedStr(rDatosCredito.Area)+','+
                    QuotedStr(rDatosCredito.NroCredito)+','+
                    '''CNP'',';

     xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('R'),'ESTDES');
     xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;

     xSQL := xSQL + QuotedStr(xEstidZ)+','+
                    QuotedStr(xEstadoZ)+','+
                    QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CREANO').AsString)+','+
                    QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CREMES').AsString)+','+
                    QuotedStr(xEstidZ)+','+
                    QuotedStr(xEstadoZ)+','+
                    rDatosCredito.cdsNotaAbono.FieldByName('CREMTO').AsString+','+
                    //** 20/12/2002 - PJSV , cuando se amplie el campo a 15 quitar los copy
//WMC 20031030                    QuotedStr(COPY(xCorreCred,1,2)+COPY(xCorreCred,7,2)+COPY(xCorreCred,10,6) )+','+
                    QuotedStr(rDatosCredito.NroAbono )+','+
                    quotedstr(rDatosCredito.cdsNotaAbono.FieldByName('CREESTID').AsString)+','+
                    quotedstr(rDatosCredito.cdsNotaAbono.FieldByName('CREESTADO').AsString)+','+
                    QuotedStr(rDatosCredito.cdsNotaAbono.fieldBYName('FORPAGOID').AsString)+','+
                    QuotedStr(rDatosCredito.cdsNotaAbono.fieldBYName('FORPAGOABR').AsString)+','+
                    QuotedStr(copy(rDatosCredito.NroAbono,1,1))+','+
                    QuotedStr(rDatosCredito.NroAbono)+','+
                    QuotedStr(rDatosCredito.NroAbono)+','+
                    'TO_DATE(TO_CHAR(SYSDATE,''YYYYMMDD''),''YYYYMMDD''))';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('R'),'ESTDES');
   xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
   if not bprevio then
   begin
     xSQL := 'UPDATE CRE301 SET CREESTID='+QuotedStr(xEstidZ)+
                ' ,CREESTADO='+QuotedStr(xEstadoZ)+
                ' ,CRESDOACT = 0.00, CREMTOPAG = CREMTOTAL '+
                ' ,CRECUOPAG=CRENUMCUO ' +
                ' ,CRENEWID ='+QuotedStr(rDatosCredito.NroCredito)+
                ' ,CREGENCOB ='+QuotedStr(xEstid)+
                ' ,REFANOMES =TO_CHAR(SYSDATE,''YYYYMM'')'+
                ' ,FLGAUTOMA ='+QuotedStr('1')+
                ' ,NROREFINAN='+QuotedStr(rDatosCredito.NroCredito)+
                ' Where ASOID ='+QuotedStr(rDatosCredito.Asociado)+
                ' AND CREDID='+QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CREDID').AsString) ;
//wmc 20031030              ' AND ASOAPENOM='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString);//+
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'UPDATE CRE303 SET CREESTID='+QuotedStr(xEstidZ)+
              ' ,CREESTADO='+QuotedStr(xEstadoZ)+
              ' ,CRESDOACT = 0.00, CREMTOPAG = CREMTOTAL ' +
              ' ,CRECUOPAG = CRENUMCUO'+
              ' ,CRENEWID  ='+QuotedStr(rDatosCredito.NroCredito)+
              ' ,CREGENCOB ='+QuotedStr(xEstid)+
              ' ,REFANOMES =TO_CHAR(SYSDATE,''YYYYMM'')'+
              ' ,FLGAUTOMA ='+QuotedStr('1')+
              ' ,NROREFINAN='+QuotedStr(rDatosCredito.NroCredito)+
              ' Where ASOID='+QuotedStr(rDatosCredito.Asociado)+
              ' AND CREDID='+QuotedStr(rDatosCredito.cdsNotaAbono.FieldByName('CREDID').AsString);
//WMC 20031030              ' AND ASOAPENOM='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   end;
   xCuota := xCuota  + 1;
//   DM1.cdsConsulta.Next;
   rDatosCredito.cdsNotaAbono.Next ;
  end;

 DM1.cdsConsulta.Filter := '';
 DM1.cdsConsulta.Filtered := False;

{
 //** la 'S' me indica que los montos de las cuotas deben de acumularse para descontarse
 //** al monto solicitado
 //** paso 1
 xSQL := 'Select A.*,C.BANCOID,C.CUENTAD, C.CUENTAH From CRE302 A, CRE303 C'+
           ' Where A.ASOID ='+QuotedStr(FToolRefina.wAsoid)+
           ' AND A.CREDID='+QuotedStr(xCredidA)+' and'+
           ' (A.CREESTID = '+QuotedStr(xEstidC)+' OR A.CREESTID = '+QuotedStr(xEstidA)+
           ' OR A.CREESTID = '+QuotedStr(xEstidP)+' OR A.CREESTID = '+QuotedStr(xEstidE)+
           ') AND A.ASOID = C.ASOID and a.credid = c.credid';
 DM1.cdsConsulta.Close;
 DM1.cdsConsulta.DataRequest(xSQL);
 DM1.cdsConsulta.Open;
 DM1.cdsConsulta.First;
 //** 05/02/2003 - PJSV
 xNroNotaAbono := xCorreCred;
 //**
 DM1.cdsConsulta.Filter := 'CREESTID='+QuotedStr(xEstidC)+
                           ' OR CREESTID='+QuotedStr(xEstidA)+
                           ' OR CREESTID='+QuotedStr(xEstidP)+
                           ' OR CREESTID='+QuotedStr(xEstidE);
 DM1.cdsConsulta.Filtered := true;
 DM1.cdsConsulta.First;
 xCreMtoNabo := 0;
 xCuota  := 0;
 while not DM1.cdsConsulta.Eof do
  begin
   // xCreMtoNabo :=  xCreMtoNabo + DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
   //                               DM1.cdsConsulta.FieldByName('CREMTOLATF').Asfloat;
   //** 07/01/2003 - PJSV, esto queda
   IF DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidC then
   xCreMtoNabo :=  xCreMtoNabo + ((DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat) -
                                  (DM1.cdsConsulta.FieldByName('CRECAPITAL').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREMTOFLAT').AsFloat))
   else
   xCreMtoNabo :=  xCreMtoNabo + ((DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat) -
                                  (DM1.cdsConsulta.FieldByName('CRECAPITAL').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREMTOINT').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREMTOFLAT').AsFloat));

    xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('R'),'ESTDES');
    xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
    xSQL := 'UPDATE CRE302 SET ';
    IF DM1.cdsConsulta.FieldByName('CREESTID').AsString = xEstidC then
     xSql := xSql + ' CREMTOCOB = NVL(CREMTOCOB,0)+'+FloatToStr(((DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat) -
                                  (DM1.cdsConsulta.FieldByName('CRECAPITAL').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREMTOFLAT').AsFloat)))
    else
     xSql := xSql + ' CREMTOCOB = NVL(CREMTOCOB,0)+'+FloatToStr(((DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat) -
                                  (DM1.cdsConsulta.FieldByName('CRECAPITAL').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREMTOINT').AsFloat+
                                  DM1.cdsConsulta.FieldByName('CREMTOFLAT').AsFloat)));
     xSql := xSql +' ,AREAID ='+QuotedStr(xArea)+
              ' ,CRESALDO = 0.00'+
              ' ,CREESTID ='+QuotedStr(xEstidZ)+
              ' ,CREESTADO ='+QuotedStr(xEstadoZ)+
              ' ,FNABONO ='+QuotedStr('S')+
              ' ,NROREFINAN ='+QuotedStr(xNroNotaAbono);
    If DM1.cdsConsulta.FieldByName('CREESTID').AsString = '27' then
     begin
      xSql := xSql + ' ,CRECAPITAL =NVL(CRECAPITAL,0)+'+FloatToStrF(DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat -
                                         DM1.cdsConsulta.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+
                      ',CREMTOINT = NVL(CREMTOINT,0)+'+FloatToStrF(DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat -
                                         DM1.cdsConsulta.FieldByName('CREMTOINT').AsFloat,ffFixed,15,2)+
                      ',CREMTOFLAT =NVL(CREMTOFLAT,0)+'+FloatToStrF(DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat -
                                         DM1.cdsConsulta.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2);
     end
    else
     begin
      xSql := xSql +' ,CRECAPITAL =NVL(CRECAPITAL,0)+'+DM1.cdsConsulta.FieldByName('CREAMORT').AsString+
                    ' ,CREMTOINT = NVL(CREMTOINT,0)+'+DM1.cdsConsulta.FieldByName('CREINTERES').AsString+ //0.00'+
                    ' ,CREMTOFLAT =NVL(CREMTOFLAT,0)+'+DM1.cdsConsulta.FieldByName('CREFLAT').AsString;
     end;

     xSql := xSql + ' ,CREDIDNABO ='+QuotedStr(xCorreCred)+
                    ' ,USUARIO ='+QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+
                    ' ,FREG ='+QuotedStr(DateToStr(xSysdate))+
                    ' ,HREG ='+wRepTimeServi+
                    ' ,TCAMBIO ='+FloatToStr(wTCambioRefe)+
                    ' ,FOPERAC ='+QuotedStr(DateToStr(xSysdate))+
                    ' ,CREFPAG ='+QuotedStr(DateToStr(xSysdate))+
                    ' Where ASOID = '+QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+
                    ' AND CREDID ='+QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+
                    ' AND CREANO ='+QuotedStr(DM1.cdsConsulta.FieldByName('CREANO').AsString)+
                     ' AND CREMES ='+QuotedStr(DM1.cdsConsulta.FieldByName('CREMES').AsString)+
              ' AND CRECUOTA ='+QuotedStr(DM1.cdsConsulta.FieldByName('CRECUOTA').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xEstadoZ := DM1.DisplayDescrip('prvSQL','COB101','FORPAGOID,FORPAGOABR','TIPO='+QuotedStr('R'),'FORPAGOABR');
     xEstidZ  := DM1.cdsQry.FieldByName('FORPAGOID').AsString;

     xSQL := 'INSERT INTO CRE310 (ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,'+
             'CREDID,CRECUOTA,CREMONLOC,CREMONEXT,CREFPAG,CREAMORT,CREINTERES,CREFLAT,'+
             'CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,CIAID,UPROID,DPTOID,UPAGOID,'+
             'BANCOID,CCBCOID,ASOAPENOM,CIUDID,AREAID,NROREFINAN,TRANSINTID,FORPAGID,FORPAGABR,'+
             'CREANO,CREMES,CREESTID,CREESTADO,CREMTOCUO,CREDOCPAG,CREESTANT,CREESTANTDES,NROOPE,NRONABO,FOPERAC)'+
             ' VALUES ('+
             //** ASOID
             QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+','+
             //** ASOCODMOD
             QuotedStr(DM1.cdsConsulta.FieldByName('ASOCODMOD').AsString)+',';
     //** ASOCODAUX
     If Length(DM1.cdsConsulta.FieldByName('ASOCODAUX').AsString) > 0 Then
      xSQL := xSQL + quotedstr(DM1.StrZero(DM1.cdsConsulta.FieldByName('ASOCODAUX').AsString,2))+','
     Else
      xSQL := xSQL + 'null,';
                    //** USEID
    xSQL := xSQL +  QuotedStr(DM1.cdsConsulta.FieldByName('USEID').AsString)+','+
                    //** ASOCODPAGO
                    QuotedStr(DM1.cdsConsulta.FieldByName('ASOCODPAGO').AsString)+','+
                    //** TIPCREID
                    QuotedStr(DM1.cdsConsulta.FieldByName('TIPCREID').AsString)+','+
                    //** CREDID
                    QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+','+
                    //** CRECUOTA
                    DM1.cdsConsulta.FieldByName('CRECUOTA').AsString+',';
     //** CREMONLOC
     If Length(DM1.cdsConsulta.FieldByName('CREMONLOC').AsString) > 0 Then
      xSQL := xSQL + DM1.cdsConsulta.FieldByName('CREMONLOC').AsString+','
     Else
      xSQL := xSQL + '0.00,';
     //** CREMONEXT
     If Length(DM1.cdsConsulta.FieldByName('CREMONEXT').AsString) > 0 Then
      xSQL := xSQL + DM1.cdsConsulta.FieldByName('CREMONEXT').AsString+','
     Else
      xSQL := xSQL + '0.00,';
     //** CREFPAG
     xSQL := xSQL + wRepFecServi+',';

    If DM1.cdsConsulta.FieldByName('CREESTID').AsString = '27' then
     begin
      xSql := xSql + FloatToStrF(DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat +     -
                                 DM1.cdsConsulta.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+','+
                     FloatToStrF(DM1.cdsConsulta.FieldByName('CREINTERES').AsFloat -
                                 DM1.cdsConsulta.FieldByName('CREMTOINT').AsFloat,ffFixed,15,2)+','+
                     FloatToStrF(DM1.cdsConsulta.FieldByName('CREFLAT').AsFloat -
                                 DM1.cdsConsulta.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+',';
     end
    else
     begin
      xSql := xSql +DM1.cdsConsulta.FieldByName('CREAMORT').AsString+','+
                    DM1.cdsConsulta.FieldByName('CREINTERES').AsString+','+
                    DM1.cdsConsulta.FieldByName('CREFLAT').AsString+',';
     end;

    If DM1.cdsConsulta.FieldByName('CREESTID').AsString = '02' then
     begin
      //** CREMTOCOB
      xSql := xSql + FloatToStr(DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                     DM1.cdsConsulta.FieldByName('CREINTERES').Asfloat+
                     DM1.cdsConsulta.FieldByName('CREFLAT').Asfloat)+',';
     end
    else
     begin
      //** CREMTOCOB
      xSql := xSql + FloatToStrF((DM1.cdsConsulta.FieldByName('CREAMORT').AsFloat+
                     DM1.cdsConsulta.FieldByName('CREINTERES').Asfloat+
                     DM1.cdsConsulta.FieldByName('CREFLAT').Asfloat) -
                     (DM1.cdsConsulta.FieldByName('CRECAPITAL').AsFloat+
                     DM1.cdsConsulta.FieldByName('CREMTOINT').Asfloat+
                     DM1.cdsConsulta.FieldByName('CREMTOFLAT').Asfloat),ffFixed,15,2)+',';
     end;

    xSql := xSql + QuotedStr(DM1.cdsConsulta.FieldByName('TMONID').AsString)+',';
     If Length(FloatToStr(xTCambio)) > 0 Then
      xSQL := xSQL + FloatToStrF(xTCambio,ffFixed,15,2) +','
     Else
      xSQL := xSQL + '0.00,';

     xSQL := xSQL + QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
                    QuotedStr(DateToStr(xSysdate))+','+
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
                    '''CNP'',';

     xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('R'),'ESTDES');
     xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;

     xSQL := xSQL + QuotedStr(xEstidZ)+','+
                    QuotedStr(xEstadoZ)+','+
                    QuotedStr(DM1.cdsConsulta.FieldByName('CREANO').AsString)+','+
                    QuotedStr(DM1.cdsConsulta.FieldByName('CREMES').AsString)+','+
                    QuotedStr(xEstidZ)+','+
                    QuotedStr(xEstadoZ)+','+
                    DM1.cdsConsulta.FieldByName('CREMTO').AsString+','+
                    //** 20/12/2002 - PJSV , cuando se amplie el campo a 15 quitar los copy
                    QuotedStr(COPY(xCorreCred,1,2)+COPY(xCorreCred,7,2)+COPY(xCorreCred,10,6) )+','+
                    quotedstr(DM1.cdsConsulta.FieldByName('CREESTID').AsString)+','+
                    quotedstr(DM1.cdsConsulta.FieldByName('CREESTADO').AsString)+','+
                    QuotedStr(xNroNotaAbono)+','+
                    QuotedStr(xNroNotaAbono)+','+
                    QuotedStr(DateToStr(xSysdate))+')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('R'),'ESTDES');
   xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xSQL := 'UPDATE CRE301 SET CREESTID='+QuotedStr(xEstidZ)+
              ' ,CREESTADO='+QuotedStr(xEstadoZ)+
              ' ,CRESDOACT = 0.00, CREMTOPAG = CREMTOTAL '+
              ' ,CRECUOPAG='+QuotedStr(IntToStr(xCuotaporCobrar))+
              ' ,CRENEWID ='+QuotedStr(xCorreCred)+
              ' ,CREGENCOB ='+QuotedStr(xEstid)+
              ' ,REFANOMES ='+QuotedStr(IntToStr(FToolRefina.seAno.value))+'||'+
                              QuotedStr(DM1.StrZero(IntToStr(FToolRefina.seMes.Value),2))+
              ' ,FLGAUTOMA ='+QuotedStr(xFlgAuto)+
              ' ,NROREFINAN='+QuotedStr(xNroNotaAbono)+
              ' Where ASOID ='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+
              ' AND ASOAPENOM='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString);//+
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'UPDATE CRE303 SET CREESTID='+QuotedStr(xEstidZ)+
              ' ,CREESTADO='+QuotedStr(xEstadoZ)+
              ' ,CRESDOACT = 0.00, CREMTOPAG = CREMTOTAL ' +
              ' ,CRECUOPAG='+QuotedStr(IntToStr(xCuotaporCobrar))+
              ' ,CRENEWID ='+QuotedStr(xCorreCred)+
              ' ,CREGENCOB ='+QuotedStr(xEstid)+
              ' ,REFANOMES ='+QuotedStr(IntToStr(FToolRefina.seAno.value))+'||'+
                              QuotedStr(DM1.StrZero(IntToStr(FToolRefina.seMes.Value),2))+
              ' ,FLGAUTOMA ='+QuotedStr(xFlgAuto)+
              ' ,NROREFINAN='+QuotedStr(xNroNotaAbono)+
              ' Where ASOID='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsConsulta.FieldByName('CREDID').AsString)+
              ' AND ASOAPENOM='+QuotedStr(DM1.cdsConsulta.FieldByName('ASOAPENOM').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   xCuota := xCuota  + 1;
   DM1.cdsConsulta.Next;
  end;

 DM1.cdsConsulta.Filter := '';
 DM1.cdsConsulta.Filtered := False;
}
end;

procedure TFSimulaCronograma.Graba301;
var
   xSQL1, xSQL : String;
   sUSERNOM : String ;
   xEstado0 ,xEstid0 : String;

begin
    // Inserta la Cabecera del Crédito
    if bPrevio then
     xSQL:=' INSERT INTO CRE318( '
    else
     xSQL:=' INSERT INTO CRE301( ';

    xSQL:= xSQL +
      'CREDID    , ASOID      , ASOCODMOD  , ASOCODPAGO  ,'+
      'ASOAPENOM , USEID      , UPAGOID    , UPROID      ,'+
      'DPTOID    , TIPCREID   , CREFOTORG  ,'+
      'CREMTOOTOR, CREMTOSOL  , CREMTOGIR  , CRECUOTA    ,'+
      'CREINTERES, CREDFLAT   , CRENUMCUO  , CRELUGGIRO  , '+
      'BANCOID   , TMONID     , TMONABR    , CRENUMCTA   ,'+
      'CREMTOPAG , CRESDOACT  , CREFINIPAG , CREFFINPAG,'+
      'CREESTADO , CREESTID   , LISTAID    , LISTAABR    ,'+
      'CRETCALID , CRETCALABR , FORPAGOID  , FORPAGOABR  ,'+
      'CREPERGRA , CRECUOPAG  , CRECUOENV  , CREPERIODI  ,'+
      'CREMTOTAL , CRECAPPGO  , CRENEWID   , NROPAGARE   ,'+
      'NROAUTDES , CRESALDOT  , OFDESID    , CALIFICAID  ,'+
      'APRUEBAID , CUOTAINI   , TIPCREDES  ,'+
      'GARAPENOM , GARASOID   , CREANOMES,CREMTONABO,'+
      'CRECOM    , CRESEG     , CREPOR     , CREGADM,'+
      'CRECOMP   , CREMORA    , CIAID      , USUARIO,'+
      'FREG      , HREG       , USEIDGAR    ,TIPDESEID,'+
      'AGENBANCOID,DPTOGIRO   , BCOGIRO,ASOCODAUX,'+
      'CUENTAD,CUENTAH,CCOSID,CREGENCOB,FLGAUTOMA,'+
//WMC 20031118      'REFANOMES,NUMREFI,FLGREFI,ASODNI,ASOTIPID,NRONABO,CIUDID,NROREFINAN,NUMREF,FECREF) '+
      'REFANOMES,NUMREFI,FLGREFI,ASODNI,ASOTIPID,NRONABO,CIUDID,NUMREF,FECREF) '+


      'Select '+
      'CREDID    ,ASOID      , ASOCODMOD  , ASOCODPAGO  ,'+
      'ASOAPENOM ,USEID      , UPAGOID    ,   UPROID    ,'+
      'DPTOID    ,TIPCREID   , CREFOTORG  ,'+
      'CREMTOOTOR,CREMTOSOL  , CREMTOGIR  , CRECUOTA    ,'+
      'CREINTERES,CREDFLAT   , CRENUMCUO  , CRELUGGIRO  ,'+
      'BANCOID   ,TMONID     , TMONABR    ,  CRENUMCTA  ,'+
      '0.00 , CRESDOACT , CREFINIPAG ,CREFFINPAG,'+
      'CREESTADO ,CREESTID   , LISTAID    ,   LISTAABR  ,'+
      'CRETCALID ,CRETCALABR , FORPAGOID  , FORPAGOABR  ,'+
      'CREPERGRA ,CRECUOPAG  , CRECUOENV  , CREPERIODI  ,'+
      'CREMTOTAL ,CRECAPPAG  , CRENEWID   , NROPAGARE   ,'+
      'NROAUTDES ,CRESALDOT  , OFDESID    , CALIFICAID  ,'+
      'APRUEBAID ,CUOTAINI    , TIPCREDES  ,'+
      'GARAPENOM ,GARASOID   , CREANOMES,CREMTONABO,'+
      'CRECOM    ,CRESEG     , CREPOR     , CREGADM,    CRECOMP  ,'+
      'CREMORA   ,CIAID      ,'+QuotedStr(DM1.wUsuario)+','+
      'FREG      ,HREG       ,USEIDGAR    ,TIPDESEID,'+
      'AGENBANCOID,DPTOGIRO  ,BCOGIRO,ASOCODAUX,'+
      'CUENTAD,CUENTAH,CCOSID,CREGENCOB,FLGAUTOMA,'+
      'REFANOMES,NUMREFI,FLGREFI,ASODNI,ASOTIPID,NRONABO,'+QuotedStr(rDatosAsociado.CIUDID)+',NRONABO,CREFOTORG ';
     if bPrevio then
      xSQL:= xSQL + 'From CRE320 '
     else
      xSQL:= xSQL + 'From CRE303 ' ;

     xSQL := xSQL + 'Where ASOID = '+QuotedStr(rdatosCredito.Asociado);
     xSQL := xSQL + ' AND CREDID='+QuotedStr(rDatosCredito.NroCredito);
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   //** 1 me indica que son APROBADO
   xEstado0 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('1'), 'ESTDES');
   xEstid0  := DM1.cdsQry.FieldByName('ESTID').AsString;

    sUSERNOM :=  DM1.DisplayDescrip('prvSQL','TGE002',
                    'USERNOM','USERID='+QuotedStr(dm1.wUsuario)+
                    ' AND MODULOID=''COB'' ','USERNOM');
    if not bPrevio then
    begin
      xSQL := 'INSERT INTO CRE304 ('+
               'CREDID,TSITCREID,FSITCRE,USUARIO,USUARIONOM,FREG,HREG) VALUES ('+
               QuotedStr(rDatosCredito.NroCredito)+','+QuotedStr(xEstid0)+','+
               'SYSDATE,'+
               QuotedStr(DM1.wUsuario)+','+
               QuotedStr(sUSERNOM)+','+
               'SYSDATE,SYSDATE )';
      xSQL1 := xSQL;
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    end;
end;

procedure TFSimulaCronograma.Graba302;
CONST
 xCAMPO302 : String = ('ASOID,ASOCODMOD,ASOCODPAGO,CREDID,TIPCREID,TMONID,CRECUOTA,CREMTO,'+
                       'ASOAPENOM,USEID,UPROID,UPAGOID,DPTOID,CREESTID,CREESTADO,FORPAGOID,'+
                       'BANCOID,CREANO,CREMES,USUARIO,FREG,HREG,CREAMORT,'+
                       'CREINTERES,CREFLAT,CRECAPCRON,CRECAPITAL,CREMTOINT,CREMTOFLAT,'+
                       'CRETCALID,LISTAID,LISTAABR,CIAID,FORPAGOABR,TMONABR,CRETCALABR,TIPCREABR,'+
                       'CRECOM,CRESEG,CREPOR,CREGADM,CRECOMP,CREMORA,CREMTOCOM,CREMTOSEG,CREMTOGADM,'+
                       'AGENBCOID,CRESALDO,ASOCODAUX,AREAID,TIPDESEID,TIPDESABR,CIUDID,TCAMBIO,CREFVEN');
var
   xDatos,xSQL : String;
begin
            //** ASOID
   xDatos := QuotedStr(rDatosCredito.Asociado)+','+
             //** ASOCODMOD
             QuotedStr(rDatosAsociado.ASOCODMOD)+','+
             //** ASOCODPAGO
             QuotedStr(rDatosAsociado.ASOCODPAGO)+','+
             //** CREDID
             QuotedStr(rDatosCredito.NroCredito)+','+
             //** TIPCREID
             QuotedStr(cdsCreditoOri.FieldByName('TIPCREID').AsString)+','+ //(xTipo)+','+
             //** TMONID
             QuotedStr(cdsCreditoOri.FieldByName('TMONID').AsString)+','+
             //** CRECUOTA
//666             DM1.StrZero(IntToStr(xNroCuota),2)+',';
             IntToStr(CDSQRY1.FieldByName('CRECUOTA').AsInteger)+',';
  //** CREMTO
   xDatos := xDatos + FloatToStrF(CDSQRY1.FieldByName('CREMTO').AsCurrency,fffixed,15,2)+ ',';
                     //** ASOAPENOM
   xDatos := xDatos + QuotedStr(rDatosAsociado.ASOAPENOM)+','+
                      //** USEID
                      QuotedStr(rDatosAsociado.USEID)+','+
                      //** UPROID
                      QuotedStr(rDatosAsociado.UPROID)+','+
                      //** UPAGOID
                      QuotedStr(rDatosAsociado.UPAGOID)+','+
                      //** DPTOID
                      QuotedStr(rDatosAsociado.DPTOID)+',';
                      //** CREESTID

   xDatos := xDatos + QuotedStr(xEstidC)+','+
                      //** CREESTADO
                      QuotedStr(xEstadoC)+','+
                      //** FORPAGOID
                      quotedstr(rDatosCredito.ForPago)+','+
                      //** BANCOID
                      QuotedStr(rDatosAsociado.BANCOID)+','+
                      //** CREANO
                      QuotedStr(cdsQry1.FieldByName('CREANO').AsString)+','+
                      //** CREMES
                      QuotedStr(cdsQry1.FieldByName('CREMES').AsString)+','+
                      //** USUARIO
                      QuotedStr(DM1.wUsuario)+','+
                      //** FREG
                      'TO_DATE(TO_CHAR(SYSDATE,''YYYYMMDD''),''YYYYMMDD''),'+
                      //** HREG
                      'SYSDATE,'+
                      //** CREAMORT
                      FloatToStrF(cdsQry1.FieldByName('CREAMORT').AsCurrency,ffFixed,15,2)+','+
                      //** CREINTERES
                      FloatToStrF(cdsQry1.FieldByName('CREINTERES').AsCurrency,ffFixed,15,2)+','+
                      //** CREFLAT
                      FloatToStrF(cdsQry1.FieldByName('CREFLAT').AsCurrency,ffFixed,15,2)+','+
                      //** CRECAPCRON
                      FloatToStrF(cdsQry1.FieldByName('CRECAPCRON').AsCurrency,ffFixed,15,2)+','+
                      //** CRECAPITAL
                      '0.00,'+
                      //** CREMTOINT
                      '0.00,'+
                      //** CREMTOFLAT
                      '0.00,'+
                      //** CRETCALID
//                      QuotedStr(cdsCreditoOri.FieldByName('CRETCALID').AsString)+','+  //???
                      QuotedStr('01')+','+  //???
                      //** LISTAID
                      'NULL,'+    //???
                      //** LISTAABR
                      'NULL,'+   //???
                      //** CIAID
                      QuotedStr('02')+','+
                      //** FORPAGOABR
                      QuotedStr(rDatosCredito.ForPagoAbr)+','+
                      //** TMONABR
                      QuotedStr(cdsCreditoOri.fIELDbYnAME('TMONABR').AsString)+','+        //???
                      //** CRETCALABR
//                      QuotedStr('X')+','+   //???
                      QuotedStr('FIJAS')+','+   //???
                      //** TIPCREABR
                      QuotedStr(cdsCreditoOri.FieldByName('TIPCREDES').AsString)+','+    //???
                      //** CRECOM
                      '0.00,'+
                      //** CRESEG
                      '0.00,'+
                      //** CREPOR
                      '0.00,'+
                      //** CREGADM
                      '0.00,'+
                      //** CRECOMP
                      '0.00,'+
                      //** CREMORA
                      '0.00,'+
                      //** CREMTOCOM
                      '0.00,'+
                      //** CREMTOSEG
                      '0.00,'+
                      //** CREMTOGADM
                      '0.00,'+
                      //** AGENBCOID
                      'NULL,';

  //** 25/04/2003 - PJSV, se cambia por el monto de cada cuota y ya no el global
   xDatos := xDatos + FloatToStrF(cdsQry1.fieldByName('CREMTO').AsCurrency,ffFixed,15,2)+',';
  //**   //** ASOCODAUX
   xDatos := xDatos + QuotedStr(rDatosAsociado.ASOCODAUX)+','+
   //** AREAID
   QuotedStr(rDatosCredito.Area)+','+
   //** TIPDESEID
   QuotedStr(rDatosCredito.TipoDes)+','+
   //** TIPDESEABR
   QuotedStr(rDatosCredito.TipoDesAbr)+','+
   //** CIUDID
   QuotedStr(rDatosAsociado.CIUDID)+','+
   //** TCAMBIO
//   FloatToStrF(RecuperaTipoCambio, ffFixed, 15, 2)+','+
   'NULL,'+
   'LAST_DAY(TO_DATE('+QuotedStr(cdsQry1.fIELDbYnAME('CREANO').AsString+
                                 cdsQry1.fIELDbYnAME('CREMES').AsString)+
                                 ',''YYYYMM'')) ';
   if bPrevio then
     xSQL := 'INSERT INTO CRE319 ('+xCAMPO302+') VALUES ('+ xDatos +')'
   else
     xSQL := 'INSERT INTO CRE302 ('+xCAMPO302+') VALUES ('+ xDatos +')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
end;

procedure TFSimulaCronograma.Graba303;
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
                        'CREPERIODI,CREMTOTAL,DPTOID,TIPDESEABR,ASOCODAUX,CREANOMES,'+
                        'CREGENCOB,FLGAUTOMA,REFANOMES,NUMREFI,FLGREFI,ASODNI,NRONABO,ASOTIPID');
var
 xEstado1,xEsta1,xSQL : String ;
 sFINIPAG,sFFINPAG    : String ;
 currCRESDOACT        : Currency ;
 sCREGENCOB           : String ;
 sCapPago             : String ;
 sMTOULTPAGO          : String ;
begin
  try
    sCapPago := cdsCreditoOri.FieldByName('CRECAPPAG').AsString ;
    if trim(scappago)='' then
       sCapPago := '0' ;

    sMTOULTPAGO := cdsCreditoOri.FieldByName('MTOULTPAGO').AsString ;
    if trim(sMTOULTPAGO)='' then
       sMTOULTPAGO := '0' ;

    cdsQry1.First;
    sFINIPAG := cdsQry1.FieldByName('CREANO').AsString + cdsQry1.FieldByName('CREMES').AsString;
    cdsQry1.Last ;
    sFFINPAG := cdsQry1.FieldByName('CREANO').AsString + cdsQry1.FieldByName('CREMES').AsString;
    currCRESDOACT := SumarizaxCampo('CREMTO');
    sCREGENCOB    :=  DM1.DisplayDescrip('prvSQL','CRE113','ESTID','FLGTIPO='+QuotedStr('R'),'ESTID');
    xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('2'),'ESTDES');
    xEsta1  := DM1.cdsQry.FieldByName('ESTID').AsString;

    if bPrevio then
      xSQL := 'INSERT INTO CRE320 ('+xCampos303+') VALUES ('
    else
      xSQL := 'INSERT INTO CRE303 ('+xCampos303+') VALUES (' ;


//WMC 20031031    xSQL := 'INSERT INTO CRE303 ('+xCampos303+') VALUES ('+
    xSQL := xSQL +
          //**OFDESID
          QuotedStr('01')+','+
          //**CREDID
          QuotedStr(rDatosCredito.NroCredito)+','+
          //**FREG
          'TO_DATE(TO_CHAR(SYSDATE,''YYYYMMDD''),''YYYYMMDD''),'+
          //** ASOAPENOM
          QuotedStr(rDatosAsociado.ASOAPENOM)+','+
          //** ASOCODMOD
          QuotedStr(rDatosAsociado.ASOCODMOD)+','+
          //** ASOID
          QuotedStr(rdatosCredito.Asociado)+','+
          //** UPROID
          QuotedStr(rDatosAsociado.UPROID)+','+
          //** UPAGOID
          QuotedStr(rDatosAsociado.UPAGOID)+','+
          //** USEID
          QuotedStr(rDatosAsociado.USEID)+','+
          //** LISTAID
//999          QuotedStr(xListaId)+','+
          'NULL,'+
          //** TIPCREID, no se toma la variable porque tiene que ser el mismo que del
          //** credito que se esta mantando, AVERIGUAR SI SE TOMA LOS DATOS DEL CREDITO
          //** ANTERIOR O DE LA LISTA ACTIVA
          QuotedStr(cdsCreditoOri.FieldByName('TIPCREID').AsString)+','+
          //QuotedStr(xTipoCreid)+','+
          //QuotedStr(xTipo)+','+
          //** FULTPGOA
          QuotedStr(cdsCreditoOri.FieldByName('FULTPGOA').AsString)+','+
          //** FULTPGOM
          QuotedStr(cdsCreditoOri.FieldByName('FULTPGOM').AsString)+','+
          //** MTOULTPAGO
//          cdsCreditoOri.FieldByName('MTOULTPAGO').AsString+','+
          sMTOULTPAGO+','+
          //** CREMTOSOL
          floattostrf(rDatosCredito.saldo,fffixed,15,2) +','+
          //** CUOTAINI
          '0.00,'+
          //** CREPERGRA
          '0.00,';
    //** CRENUMCUO
     xSQL := xSQL + inttostr(rDatosCredito.NroCuotas) +',';
          //** MTOAPXBEN
//     xSQL := xSQL + FloatToStrF(xMTOAPXBEN, ffFixed, 15, 2)+','+
     xSQL := xSQL + '0,'+
          //** CRECAPPAG
          sCapPago+','+
          //** CRECUOTA
          floattostrf(cdsQry1.FieldBYName('CREMTO').AsCurrency,fffixed,15,2) + ','+
          //** CREMTOOTOR
          floattostrf(rDatosCredito.saldo,fffixed,15,2) +','+
          //** FORPAGOID
          //QuotedStr(DM1.cdsSolicitudA.FieldByName('FORPAGOID').AsString)+','+
          quotedstr(rDatosCredito.ForPago)+','+
          //** CREMTOGIR
          '0.00,'+
          //** TIPDESEID
          QuotedStr(rDatosCredito.TipoDes)+','+
          //** CREFINIPAG
          QuotedStr(sFINIPAG)+','+
          //** CREFFINPAG
          QuotedStr(sFFINPAG)+','+
          //** NROPAGARE
          QuotedStr(cdsCreditoOri.FieldByName('NROPAGARE').AsString)+','+
          //** NROAUTDES
          QuotedStr(rDatosCredito.NroCredito)+','+
          //** BANCOID
          QuotedStr(rDatosAsociado.BANCOID)+','+
          //** ASOCODPAGO
          QuotedStr(rDatosAsociado.ASOCODPAGO)+','+
          //** TMONID
          QuotedStr(cdsCreditoOri.FieldByName('TMONID').AsString)+','+
          //** TMONABR
          QuotedStr(cdsCreditoOri.FieldByName('TMONABR').AsString)+','+
          //** CREINTERES
          FloatToStrF( rDatosCredito.TasaInteres,fffixed,15,2)+','+
          //** CREDFLAT
          FloatToStrF( rDatosCredito.TasaFlat,ffFIxed,15,2)+','+
          //** CRETCALID
//wmc 20031031          QuotedStr(DM1.cdsConcre.FieldByName('CRETCALID').AsString)+','+      //???
          QuotedStr('01')+','+      //???
          //** CRETCALABR
//WMC 20031031          QuotedStr(DM1.cdsConcre.FieldByName('CRETCALABR').AsString)+','+     //???
          QuotedStr('FIJAS')+','+     //???
          //** LISTAABR
          'NULL,'+                                               //???
          //** FORPAGOABR
          QuotedStr(rDatosCredito.ForPagoAbr)+','+
          //** CONDCREDID
//WMC 20031031          QuotedStr(DM1.cdsConcre.FieldByName('CONDCREDID').AsString)+','+
//WMC 20031118          QuotedStr('X')+','+
          'NULL,'+
          //** CREMTONABO
          FloatToStrF(rDatosCredito.Saldo, ffFixed, 15, 2)+','+
          //** TIPCREDES
          QuotedStr(cdsCreditoOri.FieldByName('TIPCREDES').AsString)+','+
          //** USUARIO
          QuotedStr(DM1.wUsuario)+','+
          //** CIAID
          QuotedStr('02')+','+
          //** HREG
          'SYSDATE,'+
          //** CALIFICAID
          QuotedStr(DM1.wUsuario)+','+
          //** APRUEBAID
          QuotedStr(DM1.wUsuario)+','+
          //** CREESTID
          QuotedStr(xEsta1)+','+
          //** CREESTADO
          QuotedStr(xEstado1)+','+
          //** CRESALDOT
          floattostrf(rDatosCredito.saldo,fffixed,15,2)+','+
          //** CUENTAD
//WMC 20031118          QuotedStr('DEBE')+','+            //???
          'NULL,'+            //???
          //** CUENTAH
//WMC 20031118          QuotedStr('HABER')+','+            //???
          'NULL,'+            //???
          //** CCOSID
          QuotedStr(rDatosAsociado.CCOSID)+','+
          //** CREFOTORG
          'TO_DATE(TO_CHAR(SYSDATE,''YYYYMMDD''),''YYYYMMDD''),'+
          //** CREFECINI
          'TO_DATE('+QuotedStr(sFINIPAG)+',''YYYYMM''),'+
          //** CRENUMCTA
          QuotedStr(rDatosAsociado.ASONCTA)+','+
          //** CREMTOPAG
          '0.00,'+
          //** CRESDOACT
          FloatToStrF(currCRESDOACT, ffFixed, 15, 2)+','+
          //** CRECUOPAG
          '0.00,'+
          //** CRECUOENV
          '0.00,'+
          //** CREPERIODI
          '30,'+
          //** CREMTOTAL
          FloatToStrf(currCRESDOACT, ffFixed, 15, 2)+','+
          //** DPTOID
          //** 15/01/2003 - PJSV , SE cambia porque el DPTOID del maestro no es el DPTOID
          //** de la USE
          //QuotedStr(DM1.cdsAso.FieldByName('DPTOID').AsString)+','+
          QuotedStr(rDatosAsociado.DPTOID)+','+
          //**

          //** TIPDESEABR, tiene que ser el mismo del credito que se esta matando
//wmc 20031004          QuotedStr(cdsCreditoOri.FieldByName('TIPDESEABR').AsString)+','+
          QuotedStr(rDatosCredito.TipoDesAbr)+','+
          //** ASOCODAUX
          QuotedStr(rDatosAsociado.ASOCODAUX)+','+
          //** CREANOMES
          'TO_CHAR(SYSDATE,''YYYYMM''),'+
          //** 15/01/2003 - PJSV
          //** CREGENCOB  '12' para refinanciado
          QuotedStr(sCREGENCOB)+','+
          //** FLGAUTOMA
          '''1'','+
          //** Año y mes del refinanciamiento 'AL'
          'TO_CHAR(SYSDATE,''YYYYMM''),'+
          quotedstr(rDatosCredito.CreditoOri)+','+
          quotedstr('R')+','+
          quotedstr(rDatosAsociado.ASODNI)+','+
          quotedstr(rDatosCredito.NroAbono)+','+
          quotedstr(rDatosAsociado.ASOTIPID)+')';
          //**

    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   except
    showmessage('No se pudo Grabar el Nuevo Crédito');
   end;
end;
//

procedure TFSimulaCronograma.ReprocesaCronograma(
    pFecha       : TDateTime;
    pSaldo       : Currency ;
    pNroCuotas   : Integer ;
    pNroCredito  : String;
    pNroAbono    : String;
    pMesInicio   : Integer ;
    pTasaInteres : Currency ;
    pTasaFlat    : Currency ;
    pCreditoOri  : String ;
    pAsociado    : String ;
    pForPago     : String;
    pForPagoAbr  : String ;
    pArea        : String ;
    pTipoDes     : String ;
    pTipoDesAbr  : String ;
    pcdsNotaAbono: TwwClientDataset ;
    bPrevio      : Boolean = True
);
var
    sSQL : String ;
begin
 with rDatosCredito do
 begin
    Fecha             := pFecha         ;
    Saldo             := pSaldo         ;
    NroCuotas         := pNroCuotas     ;
    NroCredito        := pNroCredito    ;
    NroAbono          := pNroAbono      ;
    MesInicio         := pMesInicio     ;
    TasaInteres       := pTasaInteres   ;
    TasaFlat          := pTasaFlat      ;
    CreditoOri        := pCreditoOri    ;
    Asociado          := pAsociado      ;
    ForPago           := pForPago       ;
    ForPagoAbr        := pForPagoAbr    ;
    Area              := pArea          ;
    TipoDes           := pTipoDes       ;
    TipoDesAbr        := pTipoDesAbr    ;
    cdsNotaAbono      := pcdsNotaAbono  ;
 end ;
    //Recuperar Información del Asociado
    //de APO201
    sSQL := ' SELECT ' +
            ' UPROID,USEID,UPAGOID,ASOAPENOM,ASOCODMOD,ASOCODAUX,ASONCTA,ASODNI,ASOTIPID,BANCOID,ASOCODPAGO,CIUDID ' +
            ' FROM APO201 ' +
            ' WHERE ASOID = ' + QuotedStr(rDatosCredito.Asociado) ;

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(sSQL);
    DM1.cdsQry.Open ;
    with rDatosAsociado do
    begin
      UPROID     := DM1.cdsQry.FieldByName('UPROID'      ).AsString ;
      USEID      := DM1.cdsQry.FieldByName('USEID'       ).AsString ;
      UPAGOID    := DM1.cdsQry.FieldByName('UPAGOID'     ).AsString ;
      ASOAPENOM  := DM1.cdsQry.FieldByName('ASOAPENOM'   ).AsString ;
      ASOCODMOD  := DM1.cdsQry.FieldByName('ASOCODMOD'   ).AsString ;
      ASOCODAUX  := DM1.cdsQry.FieldByName('ASOCODAUX'   ).AsString ;
      ASONCTA    := DM1.cdsQry.FieldByName('ASONCTA'     ).AsString ;
      ASODNI     := DM1.cdsQry.FieldByName('ASODNI'      ).AsString ;
      ASOTIPID   := DM1.cdsQry.FieldByName('ASOTIPID'    ).AsString ;
      BANCOID    := DM1.cdsQry.FieldByName('BANCOID'     ).AsString ;
      ASOCODPAGO := DM1.cdsQry.FieldByName('ASOCODPAGO'  ).AsString ;
      CIUDID     := DM1.cdsQry.FieldByName('CIUDID'      ).AsString ;
    end;
    //DE APO101
    sSQL := ' SELECT USEABRE,DPTOID,CCOSID '
            + ' FROM APO101 '
            + ' WHERE UPROID = ' + QuotedStr(rDatosAsociado.UPROID)
            + ' AND USEID = '    + QuotedStr(rDatosAsociado.USEID)
            + ' AND UPAGOID = '  + QuotedStr(rDatosAsociado.UPAGOID) ;

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(sSQL);
    DM1.cdsQry.Open ;
    if dm1.cdsQry.RecordCount > 0 then
    begin
      with rDatosAsociado do
      begin
        USEABR      := DM1.cdsQry.FieldByName('USEABRE').AsString ;
        DPTOID      := DM1.cdsQry.FieldByName('DPTOID').AsString ;
        CCOSID      := DM1.cdsQry.FieldByName('CCOSID').AsString ;
      end ;
    end
    else
    begin
      with rDatosAsociado do
      begin
        USEABR      := '' ;
        DPTOID      := '' ;
        CCOSID      := '' ;
      end ;
    end ;
    //DE APO103
    sSQL := 'SELECT UPROABR FROM APO102 WHERE UPROID = ' + QuotedStr( rDatosAsociado.UPROID );
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(sSQL);
    DM1.cdsQry.Open ;
    if dm1.cdsQry.RecordCount > 0 then
    begin
      with rDatosAsociado do
      begin
        UPROABR      := DM1.cdsQry.FieldByName('UPROABR').AsString ;
      end ;
    end
    else
    begin
      with rDatosAsociado do
      begin
        UPROABR      := '' ;
      end ;
    end ;
    //DE APO102
    sSQL := 'SELECT UPAGOABR FROM APO103 WHERE UPROID = ' + QuotedStr( rDatosAsociado.UPROID ) +
             ' AND UPAGOID ='+QuotedStr(rDatosAsociado.UPAGOID) ;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(sSQL);
    DM1.cdsQry.Open ;
    if dm1.cdsQry.RecordCount > 0 then
    begin
      with rDatosAsociado do
      begin
        UPAGOABR      := DM1.cdsQry.FieldByName('UPAGOABR').AsString ;
      end ;
    end
    else
    begin
      with rDatosAsociado do
      begin
        UPAGOABR      := '' ;
      end ;
    end ;

    //DE APO158
    sSQL := 'SELECT DPTOABR FROM APO158 WHERE DPTOID = ' + QuotedStr( rDatosAsociado.DPTOID );
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(sSQL);
    DM1.cdsQry.Open ;
    if dm1.cdsQry.RecordCount > 0 then
        rDatosAsociado.DPTOABR      := DM1.cdsQry.FieldByName('DPTOABR').AsString
    else
        rDatosAsociado.DPTOABR      := '' ;

    sSQL := 'SELECT CCOSABR FROM TGE203 WHERE CCOSID = ' + QuotedStr( rDatosAsociado.CCOSID );
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(sSQL);
    DM1.cdsQry.Open ;
    if dm1.cdsQry.RecordCount > 0 then
        rDatosAsociado.CCOSABR      := DM1.cdsQry.FieldByName('CCOSABR').AsString
    else
        rDatosAsociado.CCOSABR      := '' ;


    //Recuperar Información del Crédito a refinanciar
    with cdsCreditoOri do
    begin
    Close;
    DataRequest('SELECT * FROM CRE303 WHERE CREDID='+ QuotedStr(rDatosCredito.CreditoOri)+
                ' AND ASOID='+QuotedStr(rDatosCredito.Asociado));
    Open ;
    end ;
//Recuperación del Estado por Cobrar
   xEstadoC := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('2'), 'ESTDES');
   xEstidC  := DM1.cdsQry.FieldByName('ESTID').AsString;

    if bPrevio then
       LimpiaTablas ;
{ORDEN ORIGINAL
    EjecutaNAbono(bprevio) ;
    Graba303(bprevio) ;
    Graba301(bPrevio) ;
    GeneraCronograma(bPrevio) ;
}
    EjecutaNAbono(bprevio) ;
    GeneraCronograma(bPrevio) ;
    Graba303(bprevio) ;
    Graba301(bPrevio) ;

end;

procedure TFSimulaCronograma.GeneraCronograma;
var
   i:Integer ;
begin
   Calculo3(rDatosCredito.Saldo,rDatosCredito.NroCuotas,
            rDatosCredito.TasaInteres , rDatosCredito.TasaFlat ,rDatosCredito.MesInicio);
   for i := 1 to rDatosCredito.NroCuotas do
   begin
      cdsQry1.RecNo := i ;
      Graba302(bPrevio);
   end;
end;
//
procedure TFSimulaCronograma.FormCreate(Sender: TObject);
var
  xFecha , xSQL : String ;
begin
  cdsCreditoOri.RemoteServer := dm1.DCOM1 ;
  cdsCreditoOri.ProviderName := dm1.cdsQry.ProviderName ;
  //** CARGO LA FECHA DEL SISTEMA
  xSQL := 'Select '+wRepFecServi+' FECHA From TGE901 '; //Where DUME = '+QuotedStr('PER');
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  xFecha := copy(DM1.cdsQry.FieldByName('FECHA').AsString, 1, 10);
  xSysDate := StrToDate(xFecha);

end;

function TFSimulaCronograma.SumarizaxCampo(sCampo: String): Currency;
var
  cds : TwwClientDataset ;
  i : Integer ;
begin
  cds:= twwClientDataset.Create(nil) ;
  cds.CloneCursor(cdsQry1,True);
  cds.First;
  Result := 0 ;
  for i := 1 to rDatosCredito.NroCuotas do
  begin
    Result := Result + roundto(cds.FieldByName(sCampo).AsCurrency,-2);
  end ;
end;

function TFSimulaCronograma.RecuperaTipoCambio: Currency;
var
 xSQL : String;
begin
   xSQL := 'SELECT NVL('+wTipoCambio+', 0.00) CAMBIO FROM TGE107 WHERE TO_CHAR(FECHA,''YYYYMMDD'') = TO_CHAR(SYSDATE,''YYYYMMDD'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if dm1.cdsqry.recordcount > 0 then
      result := dm1.cdsQry.FieldByName('CAMBIO').AsCurrency
   else
      result := 0.00;
//
end;

procedure TFSimulaCronograma.LimpiaTablas;
begin
   DM1.DCOM1.AppServer.EjecutaSQL('DELETE FROM CRE318');
   DM1.DCOM1.AppServer.EjecutaSQL('DELETE FROM CRE319');
   DM1.DCOM1.AppServer.EjecutaSQL('DELETE FROM CRE320');
   DM1.DCOM1.AppServer.EjecutaSQL('DELETE FROM CRE321');
end;

procedure TFSimulaCronograma.SimulaCronograma;
var
    currSaldo : Currency ;
    iCuotas   : Integer  ;
begin
    if CurrInteres = 0 then
      currInteres      := 1.85 ;

    if currFlat = 0 then
      currFlat      :=  4.36 ;

    edtFlat.Text     := FloatToStrF(currFlat,fffixed,15,2);
    edtInteres.Text  := FloatToStrF(currInteres,fffixed,15,2);

    edtSaldoCre.Text := '2500.00';
    edtCuota.Text    := '18';
    currSaldo        := 2500 ;
    iCuotas          := 18 ;


    Calculo3(currSaldo,iCuotas,currInteres,currFlat,0);
    Sumariza;

end;

procedure TFSimulaCronograma.edtCuotaKeyPress(Sender: TObject;
  var Key: Char);
var
   sCadBuscar : String ;
   i : integer  ;
   j : integer  ;
begin
   if key = #8 then
      Exit ;
   if not(key in ['0'..'9','.']) then
   begin
      key := #0;
      Exit ;
   end ;
   if (key ='.') and (TCustomEdit(Sender).Tag=1) then
   begin
      key := #0;
      Exit ;
   end ;

   //verificar que solo se ingrese a lo sumo un punto
   sCadBuscar := TCustomEdit(Sender).Text ;
   i   := AnsiPos('.', sCadBuscar) ;
   if key = '.' then
        if AnsiPos('.', sCadBuscar) > 0 then
           key := #0 ;

   //verificar que no se ingresen mas de dos decimales
   if i <> 0 then
   begin
     j := TCustomEdit(Sender).SelStart ;
     if ( j - i >= 2 ) and ( key <> #8 ) then
        key := #0
     else
     begin
        if (j >= i) and ( key <> #8 ) then
           if (Length(sCadBuscar) - i) >= 2 then
           begin
               TCustomEdit(Sender).Text := copy(sCadBuscar,1,Length(sCadBuscar) - 1) ;
               TCustomEdit(Sender).SelStart := j ;
           end ;
     end ;
   end ;
end;

procedure TFSimulaCronograma.edtSaldoCreExit(Sender: TObject);
begin
  if trim(TCustomEdit(sender).Text)<>'' then
  begin
    if strtocurr(TCustomEdit(sender).Text) = 0 then
       TCustomEdit(sender).Text := '' ;
  end ;
end;

procedure TFSimulaCronograma.SimulaSaldo(currSaldo, currInteres,
  currFlat: currency; iCuotas: Integer;iMesInicio:Integer=0);
begin
    edtSaldoCre.Text := floattostrf(currSaldo   ,fffixed,15,2);
    edtInteres.Text  := floattostrf(currInteres ,fffixed,15,2);
    edtFlat.Text     := floattostrf(currFlat    ,fffixed,15,2);
    edtSaldoCre.  ReadOnly := True ;
    edtInteres.   ReadOnly := True ;
    edtFlat.      ReadOnly := True ;
    edtCuota.Text    := inttostr(iCuotas);

    Calculo3(currSaldo,iCuotas,currInteres,currFlat,iMesInicio);
    Sumariza;
end;

function TFSimulaCronograma.CalculaCuota(MtoCredito,xInteres,xFlat:double;NroCuotas:Integer):Currency;
var
  Interes , InteresM , Flat , FlatMto ,
  InteresE , InteresK : double ;
begin
  MtoCredito := Roundto(MtoCredito, -2);

  // Interes
  Interes:= xInteres/100;

  // Interes + 1 para la fórmula
  InteresM:=Interes+1;

  // Flat
  Flat:= xFlat/100;

  //Número de Cuotas
  NroCuotas:= Round(NroCuotas);

  // Calculando el Monto del Flat
  FlatMto:= roundto(Flat*MtoCredito/NroCuotas,-2);

  // Elevando a la potencia n para: (1+I)
  InteresE:= Power(InteresM,NroCuotas);

  //                   n
  // Calculando : [(1+I )]-1
  InteresK:= InteresE-1;

  // Calculando el Monto de la Cuota
  result:= Roundto((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),-2);
end;


procedure TFSimulaCronograma.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 Then
  begin
   key:=#0;
   perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFSimulaCronograma.BitBtn3Click(Sender: TObject);
begin
  ppDBCronograma.DataSource := dsQry1 ;
  ppLabel3.Caption := floattostrf(strtocurr(edtsaldocre.text),fffixed,15,2);
  pplabel4.Caption := floattostrf(strtocurr(edtInteres.text),fffixed,15,2)+' %';
  ppLabel5.Caption := floattostrf(strtocurr(edtFlat.text),fffixed,15,2)+' %';
  ppLabel6.Caption := edtCuota.Text ;
  ppRepCronograma.Print ;
  ppDBCronograma.DataSource := nil ;
end;

end.
