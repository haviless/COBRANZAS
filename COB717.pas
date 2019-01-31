unit COB717;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, StdCtrls, wwdblook, Mask,
  wwdbedit,Math;

type
  TFToolNuevoCuota = class(TForm)
    pnlNuevoCuota: TPanel;
    bbtnSigue: TfcShapeBtn;
    dblcPeriodo: TwwDBLookupCombo;
    Label1: TLabel;
    dblcdCia: TwwDBLookupCombo;
    Label2: TLabel;
    dbeNuevoInteres: TwwDBEdit;
    Label3: TLabel;
    fcShapeBtn1: TfcShapeBtn;
    procedure bbtnSigueClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GeneraCalculoNuevoCuota(xCia, xAso,xCre:string; xTasa:double);
    procedure Graba302(xxAso,xxCre:String;xCuo,xAmo,xInt:double);
    procedure Graba301;

  public
    { Public declarations }
  end;

var
  FToolNuevoCuota: TFToolNuevoCuota;
  xSQLs:string;
implementation

uses COBDM1, COB001;

{$R *.DFM}

procedure TFToolNuevoCuota.bbtnSigueClick(Sender: TObject);
var sSQL:string;
begin
  if dblcdCia.text='' then
  begin
     Raise Exception.Create('Ingrese Compañía');
  end;

  if dblcPeriodo.text='' then
  begin
     Raise Exception.Create('Ingrese Periodo');
  end;

  Screen.Cursor:=crHourGlass;
sSQL:=' SELECT A.* FROM CRE301 A,CRE302 B '+
      ' WHERE A.CIAID='+QuotedStr(dblcdCia.text)+' AND (A.CREESTID<''21'' OR A.CREESTID>''21'') AND A.CIAID = B.CIAID AND A.ASOID = B.ASOID AND '+
      ' A.CREDID = B.CREDID  AND A.CRENUMCUO = B.CRECUOTA  AND B.CREANO||B.CREMES >='+QuotedSTr(dblcPeriodo.text);


  FPrincipal.Mtx.UsuarioSQL.Clear;
  FPrincipal.Mtx.FMant.wTabla:='CRE301';
  FPrincipal.Mtx.UsuarioSQL.Add(sSQL);
  FPrincipal.Mtx.NewQuery;
  Screen.Cursor:=crDefault;

end;

procedure TFToolNuevoCuota.fcShapeBtn1Click(Sender: TObject);
var fNuevoInteres:double;
    sCia,sAso,sCre:string;
begin
  if dblcdCia.text='' then
  begin
     Raise Exception.Create('Ingrese Compañía');
  end;

  if dblcPeriodo.text='' then
  begin
     Raise Exception.Create('Ingrese Periodo');
  end;

  try
    fNuevoInteres:=StrToFloat(dbeNuevoInteres.text);
  except
    dbeNuevoInteres.Setfocus;
    Raise Exception.Create('Error en la nueva tasa de interés');
  end;

  //BARRE EL FILTRO PARA HACER EL RECALCULO DE LAS LETRAS
  Screen.Cursor:=crHourGlass;
  DM1.cdsReporte.DisableControls;
  DM1.cdsReporte.First;
  while not DM1.cdsReporte.EOF do
  begin
    sCia:=DM1.cdsReporte.FieldByName('CIAID').AsString;
    sAso:=DM1.cdsReporte.FieldByName('ASOID').AsString;
    sCre:=DM1.cdsReporte.FieldByName('CREDID').AsString;
    GeneraCalculoNuevoCuota(sCia,sAso,sCre,fNuevoInteres);
    DM1.cdsReporte.Next;
  end;
  ShowMessage('Se Reprocesaron '+IntToStr(DM1.cdsReporte.RecordCount)+' Registros ');
  Screen.Cursor:=crDefault;
  DM1.cdsReporte.EnableControls;

end;

procedure TFToolNuevoCuota.GeneraCalculoNuevoCuota(xCia, xAso, xCre: string;
  xTasa: double);
var sSQL:string;
    NroCuotas,iNumCuotas:integer;
    fSaldo,dTCambio:double;
    CuotaMto,MtoCuota,InteresM,InteresE,InteresK,FlatMto,MtoCredito,Interes,Flat:double;
    vCredito,vMonto,Amortizacion,xUltimo,xSumaInt,xFlatul,Capital:double;
    xSeguro,xGastosAdm,xComision,xUltAmor,xFlatMto,InteresMto,iSeguro,iGastosAdm,icomision:double;
	 x,z : Integer;
  Present: TDateTime;
  Ano,Mes,Dia: Word;
  sCREFFINPAG,sCREFINIPAG,xMescopia,xAno,xMes:string;

begin
  sSQL:=' SELECT CRE302.*,(NVL(CREAMORT,0)-NVL(CRECAPITAL,0))+(NVL(CREINTERES,0)-NVL(CREMTOINT,0))+(NVL(CREFLAT,0)-NVL(CREMTOFLAT,0)) SALDO '+
        ' FROM CRE302 '+
        ' WHERE '+
        ' CIAID='+QuotedStr(xCia)+
        ' AND ASOID='+QuotedStr(xAso)+
        ' AND CREDID='+QuotedStr(xCre)+
        ' AND NVL(CREAMORT,0)<>NVL(CRECAPITAL,0) ';
  DM1.cdsCredito.Close;
  DM1.cdsCredito.DataRequest(sSQL);
  DM1.cdsCredito.Open;
  DM1.cdsCredito.First;

  // tipo de cambio : Compra
  sSQL:='TMONID='+quotedstr(DM1.wTMonExt)+' '+
        'AND FECHA=TO_DATE('+quotedstr(formatdatetime(wFormatFecha,Date))+')';
  if length(DM1.DisplayDescrip('prvTGE','TGE107','TCAMVOV',sSQL,'TCAMVOV'))>0 then
  	dTCambio:=DM1.cdsqry.fieldbyname('TCAMVOV').AsFloat
  else
  	Raise Exception.Create('No existe tipo de cambio');

  fSaldo:=DM1.OperClientDataSet(DM1.cdsCredito,'SUM(SALDO)','');
  iNumCuotas:=DM1.cdsCredito.RecordCount;

  MtoCredito := fSaldo;
  Interes    := xTasa/100;
  InteresM:=Interes+1;
  Flat       := DM1.cdsCredito.FieldByName('CREFLAT').AsFloat;
  NroCuotas  := iNumCuotas;
  //FlatMto:= Flat*MtoCredito/NroCuotas;
  FlatMto:= Flat;
  InteresE:= Power(InteresM,NroCuotas);
  InteresK:= InteresE-1;
  MtoCuota:= DM1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),15,2);
  CuotaMto:=MtoCuota;  // NUEVO MONTO DE LA CUOTA
  vMonto := 0;
  Amortizacion := 0;
  xUltimo :=  0;
  vmonto := 0;
  xSumaInt := 0;
  xFlatul := 0;
  Capital:= MtoCredito;
  vCredito:= Capital;
  iComision:= 0;
  iGastosAdm:=0;
  iSeguro:= 0;
  z:=NroCuotas;
  x:=1;

  Present:= DATE; //DM1.cdsQry1.FieldByName('CREFINIPAG').AsDateTime;
  DecodeDate(Present,Ano,Mes,Dia);

  XAno:=IntToStr(Ano);
  XMes:=DM1.StrZero(IntToStr(Mes+1),2);

    while x <= z Do
    begin
      begin
      	If Capital - CuotaMto < 0 then
        	InteresMto:= (Capital - (CuotaMto - FlatMto)) * -1
        else
        	InteresMto:= Capital*Interes;
                //este

        xSumaInt := round((xSumaInt + InteresMto)*100)/100;
        xFlatul  := round((xFlatul + FlatMto)*100)/100;
        //este
        Amortizacion:= CuotaMto-(FlatMto+InteresMto);
        //este

        //acumulo la amortizacion
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
        ///

        ///
        xComision := Capital*iComision;
        xGastosAdm:= Capital*iGastosAdm;
        xSeguro   := Capital*iSeguro;

        if x=1 then
        	sCREFINIPAG:=xMes+xAno;
        if x=z then
        	sCREFFINPAG:=xMes+xAno;

        Graba302(xAso,xCre,z,Amortizacion,InteresMto);
        //DM1.DCOM1.AppServer.EjecutaSQL(xSQLs);
        DM1.DCOM1.AppServer.EjecutaSQL('INSERT INTO CLG001 ''1'', '+xSQLs);


        if XMes = '12' Then
        begin
        	XMes:='00';
          XAno:=IntToStr(StrToInt(XAno)+1);
        end;
        XMes:=DM1.StrZero(IntToStr(StrToInt(XMes)+1),2);
      end;
      x:=x+1;
    End;
  	//Graba301;

  	DM1.cdsCredito.DisableControls;
  	DM1.cdsCredito.First;
  	while not DM1.cdsCredito.EOF do
  	begin
    	sSQL:='INSERT INTO CRE310( '+
            'COBFRECL, COBFNP, FLGEXC, FECEXC, DEVID, FLGSSS, '+
            'FORPAGID, FORPAGABR, CREMTODEV, TRANSINTID, COBFDEV, '+
            'CREMTOCUO, CREESTID, CREESTADO, CREDOCPAG, AGENBCOID, CIAID, ASOID, ASOCODMOD, ASOCODAUX, '+
            'USEID, ASOCODPAGO, TIPCREID, CREDID, CRECUOTA, CREMONLOC, CREMONEXT, CREFPAG, '+
            'CREAMORT, CREINTERES, CREFLAT, CREMTOCOB, TMONID, TCAMBIO, USUARIO, FREG, HREG, '+
            'UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, ASOAPENOM, CIUDID, ARCHIVOFTP, CREANO, '+
            'FORPAGOID, NROOPE, FOPERAC, NRONABO, AREAID, CREMES, FORPAGOABR) '+
            'SELECT '+
            'NULL COBFRECL, NULL COBFNP, NULL FLGEXC, NULL FECEXC, NULL DEVID, NULL FLGSSS, '+
            'NULL FORPAGID, NULL FORPAGABR, NULL CREMTODEV, NULL TRANSINTID, NULL COBFDEV, '+
            'CREMTO, CREESTID, CREESTADO, CREDOCPAG, AGENBCOID, CIAID, ASOID, ASOCODMOD, ASOCODAUX, '+
            'USEID, ASOCODPAGO, TIPCREID, CREDID, CRECUOTA, CREMONLOC, CREMONEXT, TO_DATE('+
            QuotedStr(FormatDateTime(wFormatFecha,date))+') CREFPAG, '+
            'CREAMORT, CREINTERES, CREFLAT, CREMTOCOB, TMONID,'+FloatToStr(dTCambio)+' TCAMBIO, '+
            QuotedStr(DM1.wUsuario)+' USUARIO, SYSDATE FREG, SYSDATE HREG, '+
            'UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, ASOAPENOM, CIUDID, ARCHIVOFTP, CREANO, '+
            'FORPAGOID, NROOPE, SYSDATE FOPERAC, NRONABO, ''COB'' AREAID, CREMES, FORPAGOABR '+
            'FROM CRE302 '+
            'WHERE CIAID='+QuotedStr(DM1.cdsReporte.FieldByName('CIAID').AsString)+' '+
            'AND ASOID='+QuotedStr(xAso)+' '+
            'AND CREDID='+QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString)+' '+
            'AND CRECUOTA='+DM1.cdsCredito.FieldByName('CRECUOTA').AsString;
    	try
      	//DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
    	except
      	ShowMessage('No se creo pago en la tabla CRE310 de la cuota '+DM1.cdsCredito.FieldByName('CRECUOTA').AsString);
    end;

    	sSQL:='UPDATE CRE302 SET CREESTID=''12'', CREESTADO=''REFINANCIADO'', CRENEWID='+QuotedStr(DM1.cdsCredito.FieldByName('CREDID').AsString)+' '+
            'WHERE CIAID='+QuotedStr(DM1.cdsReporte.FieldByName('CIAID').AsString)+' '+
            'AND ASOID='+QuotedStr(xAso)+' '+
            'AND CREDID='+QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString)+' '+
            'AND CRECUOTA='+DM1.cdsCredito.FieldByName('CRECUOTA').AsString;
    	try
      	//DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
    	except
      	ShowMessage('No se Actualizao situacion en la tabla CRE302 de la cuota '+DM1.cdsCredito.FieldByName('CRECUOTA').AsString);
    	end;
    	DM1.cdsCredito.Next;
  	end;
  	DM1.cdsCredito.EnableControls;


  	//ACUTALIZA CRE301
  	sSQL:='UPDATE CRE301 SET CREESTID=''12'', CREESTADO=''REFINANCIADO'', CRESDOACT=0'+
          'WHERE CIAID='+QuotedStr(DM1.cdsReporte.FieldByName('CIAID').AsString)+' '+
          'AND ASOID='+QuotedStr(xAso)+' '+
          'AND CREDID='+QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString);
  	try
    	//DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
  	except
    	ShowMessage('No se Canceló en Crédito en la tabla CRE301');
  	end;

  	//ACUTALIZA CRE303
  	sSQL:='UPDATE CRE303 SET CREESTID=''12'', CREESTADO=''REFINANCIADO'', CRESDOACT=0'+
          'WHERE CIAID='+QuotedStr(DM1.cdsReporte.FieldByName('CIAID').AsString)+' '+
          'AND ASOID='+QuotedStr(xAso)+' '+
          'AND CREDID='+QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString);
  	try
    	//DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
  	except
    	ShowMessage('No se Canceló en Crédito en la tabla CRE301');
  	end;


  	Showmessage('Terminó la Generación del Cronograma');
  	{sSQL:='SELECT * FROM CRE302 '+
          'WHERE ASOID='+QuotedStr(xAso)+
          ' AND CREDID='+QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString);
  	DM1.Filtracds(DM1.cdsCuotas,sSQL);}
 	//FIN GENERACION DE CUOTAS DE PAGO
end;
procedure TFToolNuevoCuota.Graba301;
begin
  begin

  end;
end;

procedure TFToolNuevoCuota.Graba302(xxAso,xxCre:String;xCuo,xAmo,xInt:double);
begin
	xSQLs:='UPDATE CRE302 '+
          'SET  CREMTOAN=CREMTO'+
             ' ,CREAMORTAN=CREAMORT '+
             ' ,CREINTERESAN=CREINTERES '+
             ' ,CREFLATAN=CREFLAT '+
             ' ,FLAGNVINT=''S'' '+
             ' ,CREMTO='+FloatToStr(xCuo)+
             ' ,CREAMORT='+FloatToStr(xAmo)+
             ' ,CREINTERES='+FloatToStr(xInt)+
             ' WHERE CRE302.ASOID='+QuotedStr(xxAso)+
                        ' AND CRE302.CREDID='+QuotedStr(xxCre)+
                        ' AND CRE301.CRECUOTA='+FloatToStr(DM1.cdsCredito.FieldByName('CRECUOTA').AsFloat);
end;


end.
