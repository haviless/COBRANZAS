unit COB423;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Spin, Mask, Mant, ComCtrls, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppVar, ppCtrls,
  ppPrnabl, ppBands, TXComp;

type
  TFToolConsistenciaTA = class(TForm)
    pnlTool: TPanel;
    edtName: TEdit;
    GroupBox1: TGroupBox;
    cbUse: TCheckBox;
    cbCM: TCheckBox;
    cbAN: TCheckBox;
    cbCP: TCheckBox;
    seLong: TSpinEdit;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    Busca: TLabel;
    me1: TMaskEdit;
    me2: TMaskEdit;
    Reemplaza: TLabel;
    cbLike: TCheckBox;
    BitBtn3: TBitBtn;
    bbtnConsist1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    pbTot: TProgressBar;
    GroupBox3: TGroupBox;
    meArc: TMaskEdit;
    Label4: TLabel;
    meCob: TMaskEdit;
    Label5: TLabel;
    meDif: TMaskEdit;
    Label6: TLabel;
    gbPorDataOk: TGroupBox;
    Z2bbtnMarTod: TBitBtn;
    Z2bbtnGenAso: TBitBtn;
    cbCC: TCheckBox;
    bbtnUbica: TBitBtn;
    bbtnCtaCte: TBitBtn;
    pnlInforma: TPanel;
    lblRegTot: TLabel;
    lblVan: TLabel;
    lblTitu1: TLabel;
    lblTitu0: TLabel;
    lblTitu2: TLabel;
    BitBtn2: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ExtraOptions1: TExtraOptions;
    gbSumaTemporal: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    GroupBox5: TGroupBox;
    mComision: TEdit;
    mImporte: TEdit;
    gbSumaDescargado: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    GroupBox7: TGroupBox;
    mImporte2: TEdit;
    FecDescargo: TDateTimePicker;
//    ExtraOptions1: TExtraOptions;
    procedure bbtnConsist1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Z2bbtnMarTodClick(Sender: TObject);
    procedure Z2bbtnGenAsoClick(Sender: TObject);
    procedure bbtnUbicaClick(Sender: TObject);
    procedure bbtnCtaCteClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    CadSQL, xApe1, xApe2, xName1, xName2 : String;
    xCorreWhere, xCorreWherex, xCorreWherey : String; //** Where solo para el correlativ del Crédito
    xCorre : String;                                  //** para el correlativ del numero de crédito
    xPaso  : Boolean;                                 //** True = el correlativ es valido
    xCorreCadena, xTipocorre, xCorreASOID, xCorreCampo, xArea, xTabla, xEstid, xEstado, xCreano, xCremes : String;
    xCeros : Integer;

    procedure Correlativo;                //** llama a CorreCred y BuscaCorre
    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
    Procedure BuscaCorre;                 //** para constatar que nop exista el numero del crédito

    procedure Reemplazar( xOrigen, xDestino : String );
    procedure BuscarSocio;
    procedure GrabaModificados;
    function  BuscarSQL : String ;
    procedure InsertaCRE301;
    procedure InsertaCRE302;
    procedure InsertaCRE303;
  public
    { Public declarations }
  end;

var
  FToolConsistenciaTA: TFToolConsistenciaTA;
  xSQL : String;

implementation

uses COBDM1, COB001, MsgDlgs;

{$R *.DFM}


procedure TFToolConsistenciaTA.bbtnConsist1Click(Sender: TObject);
var
   xSQL  : String;
begin
   Screen.Cursor:=crHourGlass;

   pbTot.Visible:=True;
   pbTot.Max:=7;
   pbTot.Min:=0;
   pbTot.Position:=1;
   pbTot.Position:=pbTot.Position+1;
   xSQL:=BuscarSQL;
   pbTot.Position:=pbTot.Position+1;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   pbTot.Position:=pbTot.Position+1;
   try
            DM1.cdsQry.Execute;
      pbTot.Position:=pbTot.Position+1;
      {
      GrabaModificados;
      }
      pbTot.Position:=pbTot.Position+1;

      MtxD.RefreshFilter;
      pbTot.Position:=pbTot.Position+1;

      Screen.Cursor:=crDefault;
      pbTot.Position:=pbTot.Position+1;
      pbTot.Visible:=False;
      ShowMessage( 'Fin de Proceso' );
   except
      Screen.Cursor:=crDefault;
      pbTot.Visible:=False;
      ShowMessage( 'Error en SQL' );
   end;
end;

function TFToolConsistenciaTA.BuscarSQL : String ;
var
   xSQL, xSQL2, xSQL3, xWhere, xWhere2  : String;
begin
   xSQL2:='SELECT ASOID FROM APO201 B ';
   xSQL3:='SELECT COUNT(ASOID) FROM APO201 C ';
   xWhere :='';
   xWhere2:='';
   if cbUSE.Checked then
    begin
      xWhere :=xWhere +'TRIM(B.USEID)=TRIM(A.USEID)';
      xWhere2:=xWhere2+'TRIM(C.USEID)=TRIM(A.USEID)';
    end;
   Application.ProcessMessages;

   if cbCM.Checked then
    begin
      if xWhere <>'' then xWhere :=xWhere +' and ';
      if xWhere2<>'' then xWhere2:=xWhere2+' and ';

      xWhere :=xWhere +'B.ASOCODMOD=A.ASOCODMOD';
      xWhere2:=xWhere2+'C.ASOCODMOD=A.ASOCODMOD';
    end;
   Application.ProcessMessages;

   if cbCC.Checked then
   begin
      if xWhere <>'' then xWhere :=xWhere +' and ';
      if xWhere2<>'' then xWhere2:=xWhere2+' and ';

      xWhere :=xWhere +'B.ASONCTA=A.ASONCTA';
      xWhere2:=xWhere2+'C.ASONCTA=A.ASONCTA';
   end;
   Application.ProcessMessages;


   if cbAN.Checked then
   begin
      if xWhere <>'' then xWhere :=xWhere;//  +' and ';
      if xWhere2<>'' then xWhere2:=xWhere2; //+' and ';

      if cbLike.Checked then
       begin
         xWhere :=xWhere +' AND B.ASOAPENOM LIKE ''%''||SUBSTR(A.ASOAPENOM, 1, '+IntToStr(seLong.Value)+' )||''%''';
         xWhere2:=xWhere2+' AND C.ASOAPENOM LIKE ''%''||SUBSTR(A.ASOAPENOM, 1, '+IntToStr(seLong.Value)+' )||''%''';
       end
      else
       begin
        if (not cbCC.Checked ) and (not cbUSE.Checked ) and (not cbCM.Checked) and (not cbCP.Checked) then
         begin
            xWhere :=xWhere +' AND B.ASOAPENOM=A.ASOAPENOM';
            xWhere2:=xWhere2+' AND C.ASOAPENOM=A.ASOAPENOM';
         end
        else
         begin
            xWhere :=xWhere +' AND B.ASOAPENOM LIKE SUBSTR(A.ASOAPENOM, 1, '+IntToStr(seLong.Value)+' )||''%''';
            xWhere2:=xWhere2+' AND C.ASOAPENOM LIKE SUBSTR(A.ASOAPENOM, 1, '+IntToStr(seLong.Value)+' )||''%''';
         end;
       end;
   end;
   Application.ProcessMessages;

   if cbCP.Checked then
   begin
      if xWhere <>'' then xWhere :=xWhere +' and ';
      if xWhere2<>'' then xWhere2:=xWhere2+' and ';

      xWhere :=xWhere +'B.ASOCODPAGO=A.ASOCODPAGO';
      xWhere2:=xWhere2+'C.ASOCODPAGO=A.ASOCODPAGO';
   end;

   xSQL3:=xSQL3+'Where '+xWhere2;

   xSQL2:=xSQL2+'Where '+xWhere+' and ( '+xSQL3+' )=1 ' ;

   xSQL:='Update COB332 A '
        +'Set ASOID=( '+xSQL2 +' ) '
        +'Where '+mtxD.Filter+' and ASOID IS NULL ';
   Application.ProcessMessages;
   Result:=xSQL;
end;

procedure TFToolConsistenciaTA.BitBtn1Click(Sender: TObject);
var
  xNLinea,x : String;
  xPos    : Integer;
begin
  //DM1.cdsQry5.DisableControls;
  If Length(Trim(me1.Text))=0 Then
  Begin
    ShowMessage('Ingrese el Caracter Busca');
    me1.SetFocus;
    exit;
  End;

  If Length(Trim(me2.Text))=0 Then
  Begin
    ShowMessage('Ingrese el Caracter Reemplaza');
    me2.SetFocus;
    exit;
  End;
  Screen.Cursor:=crHourGlass;

  pbTot.Visible:=True;
  pbTot.Max:=DM1.cdsQry5.RecordCount;
  pbTot.Min:=0;
  pbTot.Position:=1;

  DM1.cdsQry5.First;
  DM1.cdsQry5.DisableControls;
  x:='0';
  While Not DM1.cdsQry5.Eof Do
  Begin
    //if DM1.cdsQry5.FieldByName('ASOID').AsString='' then
    //begin
    Application.ProcessMessages;
    pbTot.Position:=pbTot.Position+1;
    xPos:=POS( me1.Text, DM1.cdsQry5.FieldByName('ASOAPENOM').AsString );

    if xPos > 0 then
    begin
      xNLinea:=Copy( DM1.cdsQry5.FieldByName('ASOAPENOM').AsString, 1, xPos-1 )
              +me2.Text
              +Copy( DM1.cdsQry5.FieldByName('ASOAPENOM').AsString, xPos+Length( me1.Text ), 50 );

      DM1.cdsQry5.Edit;
      DM1.cdsQry5.FieldByName('ASOAPENOM').AsString:=xNLinea;
      DM1.cdsQry5.ApplyUpdates(-1);
    end;
    //end;
    DM1.cdsQry5.Next;
  End;
  DM1.cdsQry5.EnableControls;
  DM1.cdsQry5.First;
  pbTot.Visible:=False;
  Screen.Cursor:=CrDefault;
  ShowMessage('Fin de Proceso');
end;

procedure TFToolConsistenciaTA.BitBtn3Click(Sender: TObject);
var
  xSQL, xSQLd : String;
begin
  Screen.Cursor:=crHourGlass;
  pbTot.Visible:=True;

  xSQL:='SELECT * FROM COB315 WHERE TIPO=''CAMBIO'' ORDER BY PRIORIDA';

  DM1.cdsCambios.Close;
  DM1.cdsCambios.DataRequest( xSQL );
  DM1.cdsCambios.Open;

  pbTot.Max:=DM1.cdsCambios.RecordCount+1;
  pbTot.Min:=0;
  pbTot.Position:=1;

  DM1.cdsCambios.First;
  while not DM1.cdsCambios.Eof do
  Begin
    Application.ProcessMessages;
    pbTot.Position:=pbTot.Position+1;
    xSQLd:='SELECT * FROM COB332 '+
           'WHERE '+mtxD.Filter+' AND '+
           'ASOID IS NULL AND ASOAPENOM LIKE ''%'+DM1.cdsCambios.FieldByName('ORIGEN').AsString+'%''';
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest( xSQLd );
    DM1.cdsQry5.Open;
    if DM1.cdsQry5.RecordCount>0 then
    begin
      Reemplazar( DM1.cdsCambios.FieldByName('ORIGEN').AsString, DM1.cdsCambios.FieldByName('CAMBIO1').AsString );
      Reemplazar( DM1.cdsCambios.FieldByName('ORIGEN').AsString, DM1.cdsCambios.FieldByName('CAMBIO1').AsString );
      BuscarSocio;
      if DM1.cdsCambios.FieldByName('CAMBIO2').AsString<>'' then
      begin
        Reemplazar( DM1.cdsCambios.FieldByName('CAMBIO1').AsString, DM1.cdsCambios.FieldByName('CAMBIO2').AsString );
        Reemplazar( DM1.cdsCambios.FieldByName('CAMBIO1').AsString, DM1.cdsCambios.FieldByName('CAMBIO2').AsString );
        BuscarSocio;
      end;
    end;
    DM1.cdsCambios.Next;
  end;
  MtxD.RefreshFilter;
  pbTot.Max:=DM1.cdsCambios.RecordCount+1;
  pbTot.Visible:=False;
  Screen.Cursor:=crDefault;
  ShowMessage('Fin de Proceso');
end;

procedure TFToolConsistenciaTA.BuscarSocio;
var
  xSQL, xWhere : String;
  i, xLong : Integer;
begin
  Screen.Cursor:=crHourGlass;
  DM1.cdsQry5.DisableControls;
  xLong:=0;
  DM1.cdsQry5.First;
  while not DM1.cdsQry5.Eof do
  begin
    //xTO:=xTO+1;
    if DM1.cdsQry5.FieldByName('ASOID').AsString='' then
    begin
      Application.ProcessMessages;
      For i:=1 to 5 do
      begin
        case i of
          1 : xLong:=30;
          2 : xLong:=25;
          3 : xLong:=20;
          4 : xLong:=15;
          5 : xLong:=10;
        end;
        xSQL:='SELECT ASOID FROM APO201 ';
        xWhere:='';
        xWhere:=xWhere+'ASOAPENOM LIKE '''+Trim( Copy(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString, 1, xLong ) )+'%'' ';
        xSQL:=xSQL+'Where '+xWhere;
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest( xSQL );
        DM1.cdsQry.Open;
        //xTB:=xTB+1;
        if DM1.cdsQry.Recordcount=1 then
        begin
          //xAC:=xAC+1;
          DM1.cdsQry5.Edit;
          DM1.cdsQry5.FieldByName('ASOID').AsString:=DM1.cdsQry.FieldByname('ASOID').AsString;
          dm1.AplicaDatos( DM1.cdsQry5, '' );
          Break;
        end;
      end;
    end;
    DM1.cdsQry5.Next;
  end;
  dm1.AplicaDatos( DM1.cdsQry5, '' );
  DM1.cdsQry5.EnableControls;
  Screen.Cursor:=CrDefault;
end;

procedure TFToolConsistenciaTA.Reemplazar( xOrigen, xDestino : String );
var
  xNLinea : String;
  xPos    : Integer;
begin
  DM1.cdsQry5.First;
  while not DM1.cdsQry5.Eof do
  begin
    Application.ProcessMessages;
    if DM1.cdsQry5.FieldByName('ASOID').AsString='' then
    begin
      xPos:=POS( xOrigen, DM1.cdsQry5.FieldByName('ASOAPENOM').AsString );
      if xPos > 0 then
      begin
        xNLinea:=Copy( DM1.cdsQry5.FieldByName('ASOAPENOM').AsString, 1, xPos-1 )
                +xDestino
                +Copy( DM1.cdsQry5.FieldByName('ASOAPENOM').AsString, xPos+Length( xOrigen ), 50 );
        DM1.cdsQry5.Edit;
        DM1.cdsQry5.FieldByName('ASOAPENOM').AsString:=xNLinea;
        dm1.AplicaDatos( DM1.cdsQry5, '' );
      end;
    end;
    DM1.cdsQry5.Next;
  end;
end;

procedure TFToolConsistenciaTA.BitBtn4Click(Sender: TObject);
var
  xLong : Integer;
begin
  Screen.Cursor:=crHourGlass;
  pbTot.Visible:=True;
  pbTot.Max:=32;
  pbTot.Min:=0;
  pbTot.Position:=1;
  pbTot.Position:=pbTot.Position+1;
  For xLong:=30 Downto 5 do //GAR
  begin
    Application.ProcessMessages;
    pbTot.Position:=pbTot.Position+1;
    seLong.Value:=xLong;
    xSQL:=BuscarSQL;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    try
      DM1.cdsQry.Execute;
    except
      ShowMessage( 'Error en SQL' );
    end;
  end;
  GrabaModificados;
  pbTot.Position:=pbTot.Position+1;
  Screen.Cursor:=CrDefault;
  MtxD.RefreshFilter;
  pbTot.Position:=pbTot.Position+1;
  pbTot.Visible:=False;
  ShowMessage( 'Fin de Proceso' );
end;

procedure TFToolConsistenciaTA.GrabaModificados;
begin
{  // USE
  xSQL:='UPDATE COB332 A '+
        //'SET USEIDA=(SELECT DECODE( TRIM(B.USEID), TRIM(A.ASOID), NULL, B.USEID ) FROM APO201 B '+
        'SET USEIDA=(SELECT DECODE( TRIM(B.USEID), TRIM(A.USEID), NULL, B.USEID ) FROM APO201 B '+
                    'WHERE B.ASOID=A.ASOID AND '+
                    '(SELECT COUNT(ASOID) FROM APO201 C '+
                    'WHERE C.ASOID=A.ASOID )=1) '+
        'WHERE '+mtxD.Filter+' and ASOID IS NOT NULL ';
  //'WHERE '+mtxD.Filter+' and NVL( ASOID, ''NULO'' )<>''NULO''';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  try
    DM1.cdsQry.Execute;
  except
    ShowMessage( 'Error en SQL' );
    Exit
  end;
  Application.ProcessMessages;

  // CODIGO MODULAR
  xSQL:='UPDATE COB332 A '+
        'SET ASOCODMOD=(SELECT DECODE( TRIM(B.ASOCODMOD), TRIM(A.ASOCODMOD), NULL, B.ASOCODMOD ) FROM APO201 B '+
                       'WHERE B.ASOID=A.ASOID AND '+
                       '(SELECT COUNT(ASOID) FROM APO201 C '+
                       'WHERE C.ASOID=A.ASOID )=1) '+
        'WHERE '+mtxD.Filter+' and ASOID IS NOT NULL ';
//        'WHERE '+mtxD.Filter+' AND NVL(ASOID,''NULO'')<>''NULO''';
  try
    DM1.cdsQry.Execute;
  except
    ShowMessage( 'Error en SQL' );
  end;
  Application.ProcessMessages;
}
  // NOMBRES
  xSQL:='UPDATE COB332 A '+
        'SET ASOAPENOM=(SELECT DECODE( TRIM(B.ASOAPENOM), TRIM(A.ASOAPENOM), NULL, B.ASOAPENOM ) FROM APO201 B '+
                       'WHERE B.ASOID=A.ASOID AND '+
                       '(SELECT COUNT(ASOID) FROM APO201 C '+
                       'Where C.ASOID=A.ASOID )=1) '+
        'WHERE '+mtxD.Filter+' AND ASOID IS NOT NULL ';
//        'WHERE '+mtxD.Filter+' AND NVL(ASOID,''NULO'')<>''NULO''';
  try
    DM1.cdsQry.Execute;
  except
    ShowMessage( 'Error en SQL' );
  end;
  Application.ProcessMessages;
end;

procedure TFToolConsistenciaTA.BitBtn5Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  pbTot.Visible:=True;
  pbTot.Max:=3;
  pbTot.Min:=0;
  pbTot.Position:=1;
  pbTot.Position:=pbTot.Position+1;

  GrabaModificados;
  pbTot.Position:=pbTot.Position+1;

  Screen.Cursor:=CrDefault;
  pbTot.Position:=pbTot.Position+1;
  pbTot.Visible:=False;
end;

procedure TFToolConsistenciaTA.Z2bbtnMarTodClick(Sender: TObject);
begin
  xSQL:='UPDATE COB332 SET FLAG=''S'' '+
        'WHERE '+mtxD.Filter+' AND NVL(ASOID,''X'')=''X'' ';
  xSQL:=xSQL;
  //DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    //ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' AND '
    //   + 'APOSEC=''' +DM1.cdsDetalle.FieldByname('PERIODO').AsString+'''';

end;

//** 06/02/2003 - pjsv, SE OCULTA EL BOTON PORQUE JOSE DICE QUE DESDE AQUI
//** NO HAY DATOS SUFICIENTES PARA CREAR EL ASOCIADO, ADEMAS SE SUPONE
//** QUE LO QUE EL BANCO TE ENVIA SON LOS ASOCIADOS QUE DERRAMA LE ENVIO
//** Y PREVIAMENTE DERRAMA DEBE DE HABER CONSTATADO QUE EL ASOCIADO EXISTA
procedure TFToolConsistenciaTA.Z2bbtnGenAsoClick(Sender: TObject);
var
 iX : Integer;
 xCodStr, xAuxStr, xSQL	: String;
begin
  if not Question (Caption, 'Desea Generar Codigo de Asociados para Todos los Registros que se Encuentran en el Filtro'+#13+#13+
                            'Desea Continuar') then
    Exit;

  Screen.Cursor:=crHourGlass;
  DM1.cdsQry5.First;
  while not DM1.cdsQry5.Eof do
  begin
  	if (Length(Trim(DM1.cdsQry5.FieldByName('ASOID').AsString)) = 0) and
       ( (Trim(DM1.cdsQry5.FieldByName('FLAG').AsString) = 'S') OR
         (Trim(DM1.cdsQry5.FieldByName('FLAG').AsString) = '') ) then
    begin
        //** 19/12/2002 - PJSV
        //** CALCULO DEl codigo ASOID
        xTipocorre := '7';
        xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''005''','MODULOID');
        xCorreWhere := ' CREAREA = '+quotedstr(xArea)+' AND '+
                       ' TIPO ='+quotedstr(xTipocorre)+' AND ';
        xCorreWherex:= ' X.CREAREA = '+quotedstr(xArea)+' AND '+
                       ' X.TIPO ='+quotedstr(xTipocorre)+' AND ';
        xCorreWherey:= ' Y.CREAREA = '+quotedstr(xArea)+' AND '+
                       ' Y.TIPO ='+quotedstr(xTipocorre);
        xTabla      := 'CRE210';
        xCeros      := 10;
        xCorreCampo := 'ASOID';
        Correlativo;
        xCorreASOID := xCorre;
        xCodStr     := xCorreASOID;
      // Generación del ASOCODAUX - Codigo Auxiliar
      xAuxStr:=DM1.StrZero(DM1.BuscaCodMod('APO201',DM1.cdsQry5.FieldByName('ASOCODMOD').AsString),2);
      // Separación de los Nombres y Apellidos
      xApe1:=''; xApe2:=''; xName1:=''; xName2:='';
      CadSQL := Trim(DM1.cdsQry5.FieldByName('ASOAPENOM').AsString);

      while Pos( ' ', CadSQL ) > 0 do
      begin
        for iX := 0 to Length(CadSql) do
        begin
          if copy(CadSQL,iX,1) = ' ' then
          begin
            if Length(Trim(xApe1)) = 0 then
            begin
              xApe1  := Trim(Copy( CadSql, 1, iX ));
              CadSQL := Copy( CadSql, Pos( ' ', CadSql )+1, Length( CadSql ) );
            end
            else
            if Length(Trim(xApe2)) = 0 then
            begin
              xApe2 := Trim(Copy( CadSql, 1, iX ));
              CadSQL := Copy( CadSql, Pos( ' ', CadSql )+1, Length( CadSql ) );
            end
            else
            if Length(Trim(xName1)) = 0 then
            begin
              xName1 := Trim(CadSql);
              CadSql := '';
            end;
            break;
          end;
        end;
      end;
      if Length(Trim(CadSql)) > 0 then
      begin
        xName1 := Trim(CadSql);
        CadSql := '';
      end;

      // Inserción en el Apo211
      xSQL:='INSERT INTO APO211 ('+
            'CIAID, ASOID, ASOCODAUX, '+
            'ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASOAPNCRE, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOTIPID, ASOSITID ) '+
            'VALUES ('+
            QuotedStr(wCiaDef)+', '+
            QuotedStr(xCodStr)+', '+
            QuotedStr(xAuxStr)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('ASOCODMOD').AsString)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('ASOCODPAGO').AsString)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('ASOAPENOM').AsString)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('ASOAPENOM').AsString)+', '+
            QuotedStr(xApe1)+', '+
            QuotedStr(xApe2)+', '+
            QuotedStr(xName1)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('USEID').AsString)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('UPROID').AsString)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('UPAGOID').AsString)+', '+
            QuotedStr(dm1.wUsuario)+', TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, ''NI'', ''AC'')';

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Execute;

      // Inserción en el Apo212
      xSQL:='INSERT INTO APO212 ('+
            'ASOID, ASOCODAUX, '+
            'ASOCODMOD, ASOCODPAGO, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOSITID, FVIGENTE ) '+
            'VALUES ('+
            QuotedStr(xCodStr)+', '+
            QuotedStr(xAuxStr)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('ASOCODMOD').AsString)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('ASOCODPAGO').AsString)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('USEID').AsString)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('UPROID').AsString)+', '+
            QuotedStr(DM1.cdsQry5.FieldByName('UPAGOID').AsString)+', '+
            QuotedStr(dm1.wUsuario)+', TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, ''AC'', ''S'' )';

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Execute;

      DM1.cdsQry5.Edit;
      DM1.cdsQry5.FieldByName('ASOID').AsString:=xCodStr;
      DM1.cdsQry5.FieldByname('FLAG').AsString :='N';
      DM1.AplicaDatos( DM1.cdsQry5,'COB332' );
    end;
    DM1.cdsQry5.Next;
  end;

  xSQL:='INSERT INTO APO201 ('+
        'CIAID, ASOID, ASOCODAUX, '+
        'ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASOAPNCRE, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOTIPID, ASOSITID) '+
        'SELECT '+
        'CIAID, ASOID, ASOCODAUX, '+
        'ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASOAPNCRE, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOTIPID, ASOSITID '+
        'FROM APO211 '+
        'WHERE USUARIO='+QuotedStr(DM1.wUsuario);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Execute;

  xSQL:='INSERT INTO APO202 ('+
        'ASOID, ASOCODAUX, '+
        'ASOCODMOD, ASOCODPAGO, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOSITID, FVIGENTE) '+
        'SELECT '+
        'ASOID, ASOCODAUX, '+
        'ASOCODMOD, ASOCODPAGO, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOSITID, FVIGENTE '+
        'FROM APO212 '+
        'WHERE USUARIO='+QuotedStr(DM1.wUsuario);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Execute;

  xSQL:='DELETE '+
        'FROM APO211 '+
        'WHERE USUARIO='+QuotedStr(DM1.wUsuario);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Execute;

  xSQL:='DELETE '+
        'FROM APO212 '+
        'WHERE USUARIO='+QuotedStr(DM1.wUsuario);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Execute;
 Screen.Cursor:=crDefault;

{ //** 05/02/2003 - PJSV
  xSQL:='INSERT INTO APO201 ( '+
        '(SELECT MAX(ASOID)+1 FROM APO201) ASOID, '+
        'ASOCODMOD, ASOCODPAGO, ASOAPENOM, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG ) '+
        'SELECT ''XX'', '+
        'ASOCODMOD, ASOCODPAGO, ASOAPENOM, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG '+
        'FROM COB332 '+
        'WHERE '+mtxD.Filter+' AND NVL(ASOID,''X'')=''X'' AND NVL(FLAG,''N'')=''S''';
  xSQL:=xSQL;
}
end;

procedure TFToolConsistenciaTA.bbtnUbicaClick(Sender: TObject);
begin
   if not Question(Caption, '¿ Esta Seguro de Ejecutar Proceso ? '+#13+#13+'Desea Continuar') then Exit;

   Screen.Cursor:=crHourGlass;
   pbTot.Visible:=True;
   pbTot.Max:=6;
   pbTot.Min:=0;
   pbTot.Position:=1;

   // Limpia Flag
   xSQL:='UPDATE COB332 C SET FL_NOORIG=NULL, FL_EXISTE=NULL, FL_NODEST=NULL '
        +'WHERE '+mtxD.Filter+' AND FL_CTACTE IS NULL ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   try
     DM1.cdsQry.Execute;
   except
     pbTot.Visible:=False;
     Screen.Cursor:=CrDefault;
     ShowMessage( 'Error en SQL' );
     Exit
   end;

   pbTot.Position:=1;

   // Actualiza los Cuotas cobradas que existe en Origen

{//** 11/02/2003 - pjsv
   xSQL:='UPDATE COB332 C SET FL_EXISTE=''S'' '
        +'WHERE '+mtxD.Filter+' AND ASOID IS NOT NULL AND FL_CTACTE IS NULL '
        + ' AND EXISTS (Select A.ASOID, B.ASOID, TRANSANO, CREANO, TRANSMES, CREMES, '
        +                      'CREINFO, B.ASOID, MAX(A.IMPORTE), SUM(B.CREMTO ) '
        +               'From COB332 A, CRE302 B '
        +               ' WHERE '+mtxD.Filter+' AND A.ASOID=C.ASOID '
        +                 ' AND A.ASOID=B.ASOID(+) AND TRANSANO=CREANO(+) '
        +                 ' AND TRANSMES=CREMES(+) AND CREINFO=''S'' '
        +                 ' AND B.ASOID IS NOT NULL '
        +                'GROUP BY A.ASOID, B.ASOID, TRANSANO, CREANO, TRANSMES, '
        +                'CREMES, CREINFO, B.ASOID '
        +                'HAVING MAX(A.IMPORTE)=SUM(B.CREMTO ) ) ';
}
   xSQL:='UPDATE COB332 C SET FL_EXISTE=''S'' '
        +'WHERE '+mtxD.Filter+' AND ASOID IS NOT NULL AND FL_CTACTE IS NULL '
        + ' AND EXISTS (Select A.ASOID, B.ASOID, TRANSANO, CREANO, TRANSMES, CREMES, '
        +                      'CREINFO, B.ASOID, MAX(A.IMPORTE) '
        +               ' From COB332 A, CRE302 B '
        +               ' WHERE '+mtxD.Filter+' AND A.ASOID=C.ASOID '
        +                ' AND A.ASOID=B.ASOID(+) AND TRANSANO=CREANO(+) '
        +                ' AND TRANSMES=CREMES(+) AND CREINFO=''S'' AND B.CREESTID=''14'' AND B.FORPAGOID=''18'' '
        +                ' AND B.ASOID IS NOT NULL '
//        +                ' HAVING MAX(A.IMPORTE)=SUM((B.CREAMORT+B.CREINTERES+B.CREFLAT)-(B.CRECAPITAL+B.CREMTOINT+CREMTOFLAT))) ';
        +                ' HAVING MAX(A.IMPORTE)=SUM((B.CREMTO-nvl(B.CREMTOCOB,0)))) ';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   try
     DM1.cdsQry.Execute;
   except
     pbTot.Visible:=False;
     Screen.Cursor:=CrDefault;
     ShowMessage( 'Error en SQL' );
     Exit
   end;

   pbTot.Position:=pbTot.Position+1;

   // Actualiza Cuotas que no Existen En Origen

{//** 11/02/2003 - pjsv
   xSQL:='UPDATE COB332 C SET FL_NODEST=''S'' '
        +'WHERE '+mtxD.Filter+' AND ASOID IS NOT NULL AND FL_CTACTE IS NULL '
        + ' AND NOT EXISTS ( Select A.ASOID, B.ASOID, TRANSANO, CREANO, TRANSMES, CREMES, '
        +                      'CREINFO, B.ASOID, MAX(A.IMPORTE), SUM(B.CREMTO ) '
        +               'From COB332 A, CRE302 B '
        +               ' WHERE '+mtxD.Filter+' AND A.ASOID=C.ASOID '
        +                 ' AND A.ASOID=B.ASOID(+) AND TRANSANO=CREANO(+) '
        +                 ' AND TRANSMES=CREMES(+) AND CREINFO=''S'' '
        +                 ' AND B.ASOID IS NOT NULL '
        +                'GROUP BY A.ASOID, B.ASOID, TRANSANO, CREANO, TRANSMES, '
        +                         'CREMES, CREINFO, B.ASOID '
        +                'HAVING MAX(A.IMPORTE)=SUM(B.CREMTO)) ';
}
   xSQL:='UPDATE COB332 C SET FL_NODEST=''S'' '
        +'WHERE '+mtxD.Filter+' AND ASOID IS NOT NULL AND FL_CTACTE IS NULL '
        + ' AND NOT EXISTS ( Select A.ASOID, B.ASOID, TRANSANO, CREANO, TRANSMES, CREMES, '
        +                      'CREINFO, B.ASOID, MAX(A.IMPORTE)'
        +               ' From COB332 A, CRE302 B '
        +               ' WHERE '+mtxD.Filter+' AND A.ASOID=C.ASOID '
        +                ' AND A.ASOID=B.ASOID(+) AND TRANSANO=CREANO(+) '
        +                ' AND TRANSMES=CREMES(+) AND CREINFO=''S'' AND B.CREESTID=''14'' AND B.FORPAGOID=''18'' '
        +                ' AND B.ASOID IS NOT NULL '
//        +                ' HAVING MAX(A.IMPORTE)=SUM((B.CREAMORT+B.CREINTERES+B.CREFLAT)-(B.CRECAPITAL+B.CREMTOINT+CREMTOFLAT))) ';
        +                ' HAVING MAX(A.IMPORTE)=SUM((B.CREMTO-nvl(B.CREMTOCOB,0)))) ';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   try
     DM1.cdsQry.Execute;
   except
     pbTot.Visible:=False;
     Screen.Cursor:=CrDefault;
     ShowMessage( 'Error en SQL' );
     Exit
   end;

   pbTot.Position:=pbTot.Position+1;

   xSQL:='UPDATE COB332 C SET FL_NOORIG=''S'' '
        +'WHERE '+mtxD.Filter+' AND ASOID IS NOT NULL AND FL_CTACTE IS NULL '
        + ' AND FL_EXISTE=''S'' AND FL_NODEST=''S'' ';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   try
     DM1.cdsQry.Execute;
   except
     pbTot.Visible:=False;
     Screen.Cursor:=CrDefault;
     ShowMessage( 'Error en SQL' );
     Exit
   end;

   pbTot.Position:=pbTot.Position+1;
   MtxD.RefreshFilter;
   pbTot.Position:=pbTot.Position+1;
   ShowMessage( 'Procesos Terminado' );
   pbTot.Visible:=False;
end;

procedure TFToolConsistenciaTA.bbtnCtaCteClick(Sender: TObject);
var
 xTrue : Boolean;
 xWhere,xsql,xforpagoid,xforpagoabr,xcondicion,xEstPar,xEstadoPar: String;
 xEstadoC,xEstidC, xEstidZ,xEstadoZ,xperiodo,xestid,xestdes: String;
 xRegistros ,xTotConta,xConta : Integer;
 xTipCam,xSaldoTel,xSaldoReg : double;
begin
   Screen.Cursor:=crHourGlass;
   pbTot.Visible:=True;
   gbPorDataOk.visIble := False;
   gbSumaTemporal.Visible := False;
   gbSumaDescargado.Visible := False;
   pbTot.Max:=9;
   pbTot.Min:=0;
   pbTot.Position:=1;
   Application.ProcessMessages;

   xperiodo:=dm1.cdsdetalle.fieldbyname('PERIODO').asstring;

   //**10/02/2003 - PJSV, 2- VERIFICANDO SI EXISTEN REGISTROS PARA TRANSFERIR
   //** en COB332 apartir del registro seleccionado en el Mant
   pnlInforma.Visible := True;
   lblTitu0.Caption := 'Cargando Data';
   lblTitu0.Refresh;
   xSQL :='SELECT ''CRE301'' TABLA,''12345678901'' ASOID FROM TGE901 ';
   dm1.cdsPadre.IndexFieldNames := '';
   dm1.cdsPadre.Filter :='';
   dm1.cdsPadre.Filtered := False;
   dm1.cdsPadre.Close;
   dm1.cdsPadre.DataRequest(xSQL);
   dm1.cdsPadre.Open;
   dm1.cdsPadre.EmptyDataSet;

   xsql:='SELECT ASOID,TRANSANO,TRANSMES,IMPORTE FROM COB332 '
        +' WHERE ARCHIVO = '+quotedstr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)
        +' AND APOSEC='+quotedstr(xperiodo)
        +' AND  FL_EXISTE='+quotedstr('S')+' AND NVL(FL_CTACTE,''D'')=''D''';
   dm1.cdsQry1.close;
   dm1.cdsQry1.DataRequest(xsql);
   dm1.cdsQry1.Open;
   xRegistros := dm1.cdsQry1.RecordCount;
   if xRegistros = 0 then
   begin
      Showmessage('No existen Registros a Transferir');
      pbTot.Visible:=False;
      Screen.Cursor:=crDefault;
      pnlInforma.Visible := False;
      Exit;
   end;
   pbTot.Position:=pbTot.Position+1;


   //** 07/02/2003 - PJSV
   xSql := 'SELECT C.NANRO,C.NAFDOC from COB325 C  '
          +' WHERE C.NAANO||C.NAMES ='+quotedstr(xperiodo)
          +' AND C.NANRO='+Quotedstr(DM1.cdsDetalle.fieldbyname('NANRO').AsString);

   dm1.cdsQry3.Close;
   dm1.cdsQry3.DataRequest(xSql);
   dm1.cdsQry3.Open;
   if dm1.cdsQry3.recordcount=0 then
      raise exception.create('No existen Datos de la Nota de Abono '+#13+'para el presente Archivo');

   xWhere := 'TMONID ='+QuotedStr('D')+
          ' AND FECHA = '+QuotedStr(FormatDateTime(wFormatFecha,dm1.cdsQry3.fieldbyname('NAFDOC').AsDateTime));
   If Length(DM1.DisplayDescrip('prvTGE', 'TGE107',  'TCAMVPC', xWhere, 'TCAMVPC'))>0 Then
      xTipCam := DM1.cdsQry.FieldByName('TCAMVPC').AsFloat
   Else xTipCam := 0;

   xCondicion:='FLGTEL=''S''';
   xforpagoid:=DM1.DisplayDescrip('prvSQL','COB101','FORPAGOID,FORPAGOABR',xCondicion,'FORPAGOID');
   xforpagoabr:=dm1.cdsQry.Fieldbyname('FORPAGOABR').asstring;
   pbTot.Position:=pbTot.Position+1;
   Application.ProcessMessages;

   xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Y'),'ESTDES');
   xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xEstadoC := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('2'),'ESTDES');
   xEstidc  := DM1.cdsQry.FieldByName('ESTID').AsString;

   ////////ESTADO: EN PROCESO DE COBRANZA ////////////////
   xEstadoPar := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('3'),'ESTDES');
   if DM1.cdsQry.RecordCount=0 then
      raise exception.Create('No existe el Estado En Proceso de Cobranza'+#13+'Verifique su Tabla de Estados');
   xEstPar    := DM1.cdsQry.FieldByName('ESTID').AsString;
   ///////////////////////////////////////////////////////

   pbTot.Position:=pbTot.Position+1;

   //** 08/02/2003 - PJSV,
   //** INSERTANDO EN LA TABLA CRE310 LOS REGISTROS PROVENIENTES DE LA TABLA COB332

//////////////////////////////////////////////////////////
//////////// ojito, ojaso

   //** Sobre este client se grabará
   xSql := 'SELECT CREMTOCUO,CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,CREDID, '
       +' CRECUOTA,CREMONLOC,CREMONEXT,CREFPAG,CREAMORT,CREINTERES,CREFLAT, '
       +' CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,UPROID,DPTOID,UPAGOID,BANCOID, '
       +' CCBCOID,ASOAPENOM,CIUDID,CREANO,FORPAGOID,NROOPE,FOPERAC,NRONABO,AREAID,NROOPETMP,FOPERACTMP, '
       +' CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,CREESTADO,CREESTID,FLGTA,FORPAGID,FORPAGABR,FL_DISTRIB '
       +' FROM CRE310 WHERE FLGTA ='+quotedstr('S')+' AND CREANO||CREMES='+quotedstr(xperiodo);

   dm1.cdsMovCre.Close;
   dm1.cdsMovCre.DataRequest(xSql);
   dm1.cdsMovCre.Open;
   dm1.cdsMovCre.EmptyDataSet;
   pbTot.Position:=pbTot.Position+1;

   xconta := 0;
   xTotConta := 0;
   lblTitu0.Caption := 'Data Cargada';
   lblTitu0.Refresh;
   lblRegTot.Caption := 'Registros para Actualizar : '+IntToStr(xRegistros);
   lblRegTot.Refresh;
   lblVan.Caption := 'Van : '+IntToStr(xTotConta);
   lblVan.Refresh;
   dm1.cdsQry1.First;
   Application.ProcessMessages;
  Try
  while not dm1.cdsQry1.Eof do
  begin
      xTrue := False;
      //** 07/02/2003 - PJSV
      xSaldoTel := dm1.cdsQry1.fieldbyname('IMPORTE').AsFloat;

      xSql :='SELECT B.CREMTOCOB,B.CRESALDO,'
         +' B.ASOID,B.CIAID,B.ASOCODMOD,B.ASOCODAUX,B.USEID,B.ASOCODPAGO,B.TIPCREID,B.CREDID, '
         +' B.CRECUOTA,B.CREMONLOC,B.CREMONEXT,B.CREAMORT,B.CREINTERES,B.CREFLAT, '
         +' B.CREMTO,B.TMONID,0 TCAMBIO,'+quotedstr(dm1.wUsuario)+' USUARIO,'
         +' SYSDATE FECHA,SYSDATE HORA,B.UPROID,B.DPTOID,B.UPAGOID ,B.BANCOID, '
         +' B.CCBCOID,B.ASOAPENOM,B.CIUDID,'+quotedstr(xforpagoid)+' FORPAGOID,'
         +' B.AREAID,0 CREMTODEV,'+quotedstr(xforpagoabr)+' FORPAGOABR,'
         +quotedstr('CUO')+' TRANSINTID,'
         +quotedstr(xEstadoZ)+' CREESTADO,'+quotedstr(xEstidZ)+' CREESTID,'+quotedstr('S')
         +' FLGTA from CRE302 B'
         +' WHERE B.ASOID ='+quotedstr(dm1.cdsQry1.FieldByName('ASOID').AsString)
         +' AND B.CREANO ='+quotedstr(dm1.cdsQry1.FieldByName('TRANSANO').AsString)
         +' AND B.CREMES ='+quotedstr(dm1.cdsQry1.FieldByName('TRANSMES').AsString)
         +' AND B.FORPAGOID ='+quotedstr('18')
         +' AND B.CREINFO='+quotedstr('S')
         +' AND CREESTID='+Quotedstr(xEstPar);
      dm1.cdsQry4.Close;
      dm1.cdsQry4.DataRequest(xSql);
      dm1.cdsQry4.Open;
      dm1.cdsQry4.First;
      while not dm1.cdsQry4.Eof do
      begin
          xTrue := True;
          xSql := 'SELECT CREMTO,CREMTOCOB,CREMONLOC,CRESALDO,CREESTADO,CREESTID,NROOPE,FOPERAC,'
             +' CREAMORT,CREINTERES,CREFLAT,CRECAPITAL,CREMTOINT,CREMTOFLAT,NROOPETMP,FOPERACTMP '
             +' FROM CRE302 WHERE ASOID ='+quotedstr(dm1.cdsQry1.FieldByName('ASOID').AsString)
             +' AND CREDID ='+quotedstr(dm1.cdsQry4.FieldByName('CREDID').AsString)
             +' AND CREESTID='+Quotedstr(xEstPar)
             +' AND CREANO ='+quotedstr(dm1.cdsQry1.FieldByName('TRANSANO').AsString)
             +' AND CREMES ='+quotedstr(dm1.cdsQry1.FieldByName('TRANSMES').AsString);

          dm1.cdsAbonoCuotas.Close;
          dm1.cdsAbonoCuotas.DataRequest(xSql);
          dm1.cdsAbonoCuotas.Open;
          //A SOLICITUD DE JLC X ESTAR ASI EN EL SIST SANCHEZ
{          xSaldoReg :=DM1.FRound((DM1.cdsAbonoCuotas.FieldByName('CREAMORT').AsFloat+DM1.cdsAbonoCuotas.FieldByName('CREINTERES').AsFloat+
                      DM1.cdsAbonoCuotas.FieldByName('CREFLAT').AsFloat)-
                     (DM1.cdsAbonoCuotas.FieldByName('CRECAPITAL').AsFloat+DM1.cdsAbonoCuotas.FieldByName('CREMTOINT').AsFloat+
                      DM1.cdsAbonoCuotas.FieldByName('CREMTOFLAT').AsFloat),15,2);}

          xSaldoReg :=DM1.FRound((DM1.cdsAbonoCuotas.FieldByName('CREMTO').AsFloat-DM1.cdsAbonoCuotas.FieldByName('CREMTOCOB').AsFloat),15,2);

          //** 10/02/2003 - PJSv
          If xConta mod 1000 = 0 then
          begin
             lblTitu1.Caption := 'Calculando                 ';
             lblTitu1.Refresh;
          end;

          xSql := 'SELECT CREMTOPAG,CRESDOACT,CRENUMCUO,CRECUOPAG,CREESTADO,CREESTID FROM CRE301 '
                  +' WHERE ASOID='+quotedstr(dm1.cdsQry4.FieldByName('ASOID').AsString)
                  +' AND CREDID='+quotedstr(dm1.cdsQry4.FieldByName('CREDID').AsString)
                  +' AND TIPCREID='+quotedstr(dm1.cdsQry4.FieldByName('TIPCREID').AsString);
          Dm1.cdsCredito.Close;
          Dm1.cdsCredito.DataRequest(xSql);
          Dm1.cdsCredito.Open;

          //** 10/02/2003 - PJSv
          xSql := 'SELECT CREMTOPAG,CRESDOACT,CRENUMCUO,CRECUOPAG,CREESTADO,CREESTID FROM CRE303 '
                  +' WHERE ASOID='+quotedstr(dm1.cdsQry4.FieldByName('ASOID').AsString)
                  +' AND CREDID='+quotedstr(dm1.cdsQry4.FieldByName('CREDID').AsString)
                  +' AND TIPCREID='+quotedstr(dm1.cdsQry4.FieldByName('TIPCREID').AsString);
          Dm1.cdsSolicitud.Close;
          Dm1.cdsSolicitud.DataRequest(xSql);
          Dm1.cdsSolicitud.Open;

          If xConta mod 1000 = 0 then
          begin
            lblTitu1.Caption := 'Actualizando Movimientos   ';
            lblTitu1.Refresh;
          end;
          //** 08/02/2003 - PJSV
          dm1.cdsMovCre.Insert;
          dm1.cdsMovCre.FieldByName('CIAID').AsString     := dm1.cdsQry4.FieldByName('CIAID').AsString;
          dm1.cdsMovCre.FieldByName('ASOID').AsString     := dm1.cdsQry1.FieldByName('ASOID').AsString;
          dm1.cdsMovCre.FieldByName('ASOCODMOD').AsString := dm1.cdsQry4.FieldByName('ASOCODMOD').AsString;
          dm1.cdsMovCre.FieldByName('ASOCODAUX').AsString := dm1.cdsQry4.FieldByName('ASOCODAUX').AsString;
          dm1.cdsMovCre.FieldByName('USEID').AsString     := dm1.cdsQry4.FieldByName('USEID').AsString;
          dm1.cdsMovCre.FieldByName('ASOCODPAGO').AsString:= dm1.cdsQry4.FieldByName('ASOCODPAGO').AsString;
          dm1.cdsMovCre.FieldByName('TIPCREID').AsString  := dm1.cdsQry4.FieldByName('TIPCREID').AsString;
          dm1.cdsMovCre.FieldByName('CREDID').AsString    := dm1.cdsQry4.FieldByName('CREDID').AsString;
          dm1.cdsMovCre.FieldByName('CRECUOTA').AsFloat   := dm1.cdsQry4.FieldByName('CRECUOTA').AsFloat;
          dm1.cdsMovCre.FieldByName('CREMONLOC').AsFloat  := xSaldoReg;
          dm1.cdsMovCre.FieldByName('CREMONEXT').AsFloat  := 0;
          dm1.cdsMovCre.FieldByName('CREMTOCUO').AsFloat  := dm1.cdsQry4.FieldByName('CREMTO').AsFloat;
          dm1.cdsMovCre.FieldByName('CREAMORT').AsFloat   := dm1.cdsQry4.FieldByName('CREAMORT').AsFloat;
          dm1.cdsMovCre.FieldByName('CREINTERES').AsFloat := dm1.cdsQry4.FieldByName('CREINTERES').AsFloat;
          dm1.cdsMovCre.FieldByName('CREFLAT').AsFloat    := dm1.cdsQry4.FieldByName('CREFLAT').Asfloat;
          dm1.cdsMovCre.FieldByName('CREMTOCOB').AsFloat  := xSaldoReg;
          dm1.cdsMovCre.FieldByName('TMONID').AsString    := dm1.cdsQry4.FieldByName('TMONID').AsString;
          dm1.cdsMovCre.FieldByName('TCAMBIO').AsFloat    := DM1.FRound(xTipCam,15,3);
          dm1.cdsMovCre.FieldByName('USUARIO').AsString   := DM1.wUsuario;
//          dm1.cdsMovCre.FieldByName('USUARIO').AsString   := 'SSAAVEDRA';
          dm1.cdsMovCre.FieldByName('FREG').AsDateTime    := Date;
          dm1.cdsMovCre.FieldByName('HREG').AsDateTime    := Date+Time;
          dm1.cdsMovCre.FieldByName('UPROID').AsString    := dm1.cdsQry4.FieldByName('UPROID').AsString;
          dm1.cdsMovCre.FieldByName('DPTOID').AsString    := dm1.cdsQry4.FieldByName('DPTOID').AsString;
          dm1.cdsMovCre.FieldByName('UPAGOID').AsString   := dm1.cdsQry4.FieldByName('UPAGOID').AsString;
          dm1.cdsMovCre.FieldByName('BANCOID').AsString   := dm1.cdsQry4.FieldByName('BANCOID').AsString;
          dm1.cdsMovCre.FieldByName('CCBCOID').AsString   := dm1.cdsQry4.FieldByName('CCBCOID').AsString;
          dm1.cdsMovCre.FieldByName('ASOAPENOM').AsString := dm1.cdsQry4.FieldByName('ASOAPENOM').AsString;
          dm1.cdsMovCre.FieldByName('CIUDID').AsString    := dm1.cdsQry4.FieldByName('CIUDID').AsString;
          dm1.cdsMovCre.FieldByName('CREANO').AsString    := dm1.cdsQry1.FieldByName('TRANSANO').AsString;
          dm1.cdsMovCre.FieldByName('FORPAGOID').AsString := dm1.cdsQry4.FieldByName('FORPAGOID').AsString;

{          dm1.cdsMovCre.FieldByName('CREFPAG').AsDateTime := dm1.cdsQry3.FieldByName('NAFDOC').AsDateTime;
          dm1.cdsMovCre.FieldByName('NROOPE').AsString    := dm1.cdsQry3.FieldByName('NANRO').AsString;
          dm1.cdsMovCre.FieldByName('FOPERAC').AsString   := dm1.cdsQry3.FieldByName('NAFDOC').AsString;
          dm1.cdsMovCre.FieldByName('NRONABO').AsString   := dm1.cdsQry3.FieldByName('NANRO').AsString;}

          dm1.cdsMovCre.FieldByName('NROOPETMP').AsString := dm1.cdsQry3.FieldByName('NANRO').AsString;
          dm1.cdsMovCre.FieldByName('FOPERACTMP').AsString := dm1.cdsQry3.FieldByName('NAFDOC').AsString;

          dm1.cdsMovCre.FieldByName('AREAID').AsString    := dm1.cdsQry4.FieldByName('AREAID').AsString;
          dm1.cdsMovCre.FieldByName('CREMES').AsString    := dm1.cdsQry1.FieldByName('TRANSMES').AsString;
          dm1.cdsMovCre.FieldByName('CREMTODEV').AsString := dm1.cdsQry4.FieldByName('CREMTODEV').AsString;
          dm1.cdsMovCre.FieldByName('FORPAGOABR').AsString:= dm1.cdsQry4.FieldByName('FORPAGOABR').AsString;
          dm1.cdsMovCre.FieldByName('TRANSINTID').AsString:= dm1.cdsQry4.FieldByName('TRANSINTID').AsString;
          dm1.cdsMovCre.FieldByName('CREESTADO').AsString := dm1.cdsQry4.FieldByName('CREESTADO').AsString;
          dm1.cdsMovCre.FieldByName('CREESTID').AsString  := dm1.cdsQry4.FieldByName('CREESTID').AsString;
          dm1.cdsMovCre.FieldByName('FLGTA').AsString     := dm1.cdsQry4.FieldByName('FLGTA').AsString;
          dm1.cdsMovCre.FieldByName('FORPAGID').AsString  := xforpagoid;
          dm1.cdsMovCre.FieldByName('FL_DISTRIB').AsString := 'D';

          //** 10/02/2003 - PJSV, actualizo cre302
          If xConta mod 1000 = 0 then
          begin
            lblTitu1.Caption := 'Actualizando Cronograma    ';
            lblTitu1.Refresh;
          end;
          dm1.cdsAbonoCuotas.Edit;
          dm1.cdsAbonoCuotas.FieldByName('CREMTOCOB').AsFloat := DM1.FRound(dm1.cdsQry4.FieldByName('CREMTOCOB').AsFloat+dm1.cdsMovCre.FieldByName('CREMTOCOB').AsFloat,15,2);
          dm1.cdsAbonoCuotas.FieldByName('CREMONLOC').AsFloat := dm1.cdsAbonoCuotas.FieldByName('CREMTOCOB').AsFloat;

          dm1.cdsAbonoCuotas.FieldByName('CRESALDO').AsFloat := DM1.FRound(dm1.cdsQry4.FieldByName('CRESALDO').AsFloat -
                                                                dm1.cdsMovCre.FieldByName('CREMTOCOB').AsFloat,15,2);
          Dm1.cdsAbonoCuotas.FieldByName('CREESTADO').AsString := xestadoZ;
          Dm1.cdsAbonoCuotas.FieldByName('CREESTID').AsString  := xEstidZ;
          Dm1.cdsAbonoCuotas.FieldByName('NROOPETMP').AsString    := dm1.cdsQry3.FieldByName('NANRO').AsString;
          Dm1.cdsAbonoCuotas.FieldByName('FOPERACTMP').AsString   := dm1.cdsQry3.FieldByName('NAFDOC').AsString;

          dm1.cdsAbonoCuotas.FieldByName('CRECAPITAL').AsFloat := dm1.cdsQry4.FieldByName('CREAMORT').AsFloat;
          dm1.cdsAbonoCuotas.FieldByName('CREMTOINT').AsFloat  := dm1.cdsQry4.FieldByName('CREINTERES').AsFloat;
          dm1.cdsAbonoCuotas.FieldByName('CREMTOFLAT').AsFloat := dm1.cdsQry4.FieldByName('CREFLAT').AsFloat;

          //** 10/02/2003 - PJSV
          If xConta mod 1000 = 0 then
          begin
            lblTitu1.Caption := 'Actualizando Detalle       ';
            lblTitu1.Refresh;
          end;
          Dm1.cdsCredito.Edit;
          Dm1.cdsCredito.FieldByName('CREMTOPAG').AsFloat := DM1.FRound(Dm1.cdsCredito.FieldByName('CREMTOPAG').AsFloat+
                                                             dm1.cdsMovCre.FieldByName('CREMTOCOB').AsFloat,15,2);

          Dm1.cdsCredito.FieldByName('CRESDOACT').AsFloat := DM1.FRound(Dm1.cdsCredito.FieldByName('CRESDOACT').AsFloat-
                                                             dm1.cdsMovCre.FieldByName('CREMTOCOB').AsFloat,15,2);

          xSql := 'UPDATE CRE301 SET CREMTOPAG='+''+Floattostr(Dm1.cdsCredito.FieldByName('CREMTOPAG').AsFloat)+''+
                  ',CRESDOACT='+''+Floattostr(Dm1.cdsCredito.FieldByName('CRESDOACT').AsFloat)+'';

          If Dm1.cdsCredito.FieldByName('CRENUMCUO').AsFloat = Dm1.cdsCredito.FieldByName('CRECUOPAG').AsFloat +1 then
           begin
            Dm1.cdsCredito.FieldByName('CREESTADO').AsString := xestadoZ;
            Dm1.cdsCredito.FieldByName('CREESTID').AsString  := xEstidZ;
            xSql := xSQL+' , CREESTADO='+Quotedstr(Dm1.cdsCredito.FieldByName('CREESTADO').AsString)
                        +' , CREESTID='+Quotedstr(Dm1.cdsCredito.FieldByName('CREESTID').AsString);

           end;
          Dm1.cdsCredito.FieldByName('CRECUOPAG').AsFloat := Dm1.cdsCredito.FieldByName('CRECUOPAG').AsFloat +1;

          xSql := xSQL+' , CRECUOPAG='+''+Floattostr(Dm1.cdsCredito.FieldByName('CRECUOPAG').AsFloat)+''
                      +' WHERE ASOID='+quotedstr(dm1.cdsQry4.FieldByName('ASOID').AsString)
                      +' AND CREDID='+quotedstr(dm1.cdsQry4.FieldByName('CREDID').AsString)
                      +' AND TIPCREID='+quotedstr(dm1.cdsQry4.FieldByName('TIPCREID').AsString);
          Try
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          Except
            InsertaCRE301;
          End;

          If xConta mod 1000 = 0 then
          begin
            lblTitu1.Caption := 'Actualizando Cabecera      ';
            lblTitu1.Refresh;
          end;
          Dm1.cdsSolicitud.Edit;
          Dm1.cdsSolicitud.FieldByName('CREMTOPAG').AsFloat := DM1.FRound(Dm1.cdsSolicitud.FieldByName('CREMTOPAG').AsFloat+
                                                               dm1.cdsMovCre.FieldByName('CREMTOCOB').AsFloat,15,2);

          Dm1.cdsSolicitud.FieldByName('CRESDOACT').AsFloat := DM1.FRound(Dm1.cdsSolicitud.FieldByName('CRESDOACT').AsFloat-
                                                               dm1.cdsMovCre.FieldByName('CREMTOCOB').AsFloat,15,2);

          xSql := 'UPDATE CRE303 SET CREMTOPAG='+''+Floattostr(Dm1.cdsSolicitud.FieldByName('CREMTOPAG').AsFloat)+''+
                        ',CRESDOACT='+''+Floattostr(Dm1.cdsSolicitud.FieldByName('CRESDOACT').AsFloat)+'';

          If Dm1.cdsSolicitud.FieldByName('CRENUMCUO').AsFloat = Dm1.cdsSolicitud.FieldByName('CRECUOPAG').AsFloat +1 then
           begin
             Dm1.cdsSolicitud.FieldByName('CREESTADO').AsString := xestadoZ;
             Dm1.cdsSolicitud.FieldByName('CREESTID').AsString  := xEstidZ;
             xSql := xSQL+' , CREESTADO='+Quotedstr(Dm1.cdsSolicitud.FieldByName('CREESTADO').AsString)
                         +' , CREESTID='+Quotedstr(Dm1.cdsSolicitud.FieldByName('CREESTID').AsString);

           end;
          Dm1.cdsSolicitud.FieldByName('CRECUOPAG').AsFloat := Dm1.cdsSolicitud.FieldByName('CRECUOPAG').AsFloat +1;

          xSql := xSQL+' ,  CRECUOPAG='+''+Floattostr(Dm1.cdsSolicitud.FieldByName('CRECUOPAG').AsFloat)+''
                  +' WHERE ASOID='+quotedstr(dm1.cdsQry4.FieldByName('ASOID').AsString)
                  +' AND CREDID='+quotedstr(dm1.cdsQry4.FieldByName('CREDID').AsString)
                  +' AND TIPCREID='+quotedstr(dm1.cdsQry4.FieldByName('TIPCREID').AsString);
          Try
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          Except
            InsertaCRE303;
          End;

          xSql := ' UPDATE CRE302 SET CREMTOCOB='+''+Floattostr(dm1.cdsAbonoCuotas.FieldByName('CREMTOCOB').AsFloat)+''+
                  ',CREMONLOC='+''+Floattostr(dm1.cdsAbonoCuotas.FieldByName('CREMONLOC').AsFloat)+''+
                  ',CRESALDO='+''+Floattostr(dm1.cdsAbonoCuotas.FieldByName('CRESALDO').AsFloat)+''+
                  ',CRECAPITAL='+''+Floattostr(dm1.cdsAbonoCuotas.FieldByName('CRECAPITAL').AsFloat)+''+
                  ',CREMTOINT='+''+Floattostr(dm1.cdsAbonoCuotas.FieldByName('CREMTOINT').AsFloat)+''+
                  ',CREMTOFLAT='+''+Floattostr(dm1.cdsAbonoCuotas.FieldByName('CREMTOFLAT').AsFloat)+''+
                  ',CREESTADO='+Quotedstr(Dm1.cdsAbonoCuotas.FieldByName('CREESTADO').AsString)+
                  ',CREESTID='+Quotedstr(Dm1.cdsAbonoCuotas.FieldByName('CREESTID').AsString)+
                  ',NROOPETMP='+Quotedstr(Dm1.cdsAbonoCuotas.FieldByName('NROOPETMP').AsString)+
                  ',FOPERACTMP='+Quotedstr(Datetostr(Dm1.cdsAbonoCuotas.FieldByName('FOPERACTMP').AsDateTime))+
                  '  WHERE ASOID ='+quotedstr(dm1.cdsQry1.FieldByName('ASOID').AsString)+
                  ' AND CREDID ='+quotedstr(dm1.cdsQry4.FieldByName('CREDID').AsString)+
                  ' AND CREESTID='+Quotedstr(xEstPar)+
                  ' AND CREANO ='+quotedstr(dm1.cdsQry1.FieldByName('TRANSANO').AsString)+
                  ' AND CREMES ='+quotedstr(dm1.cdsQry1.FieldByName('TRANSMES').AsString);

          Try
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          Except
            InsertaCRE302;
          End;
          /////////////////////////////////////cdsQry4
          xSaldoTel := xSaldoTel-xSaldoReg;

          dm1.cdsQry4.Next;
      end;


      If xConta = 1000 then
       begin
        lblTitu1.Caption := 'Generando Cambio Permanente';
        lblTitu1.Refresh;
        DM1.AplicaDatos(Dm1.cdsMovCre,'MOVCRE');
        xConta := 0;
       end
      else
       If xTrue then
        xConta := xConta + 1;


     xTotConta := xTotConta +1;
     If xConta mod 1000 = 0 then
     begin
        lblVan.Caption := 'Van :'+IntToStr(xTotConta);
        lblVan.Refresh;
     end;
     dm1.cdsQry1.next;

  end;//while cdsQry1

  If xConta > 0 then
   begin
     lblTitu1.Caption := 'Generando Cambio Permanente';
     lblTitu1.Refresh;
     DM1.AplicaDatos(Dm1.cdsMovCre,'MOVCRE');
     Application.ProcessMessages;
   end;
  pbTot.Position:=pbTot.Position+1;
  lblTitu1.Caption := 'Data Actualizada           ';
  lblTitu1.Refresh;

  ////////////////////Cobranzas sin Sustento//////////////////////
  xConta := 0 ;
  pnlInforma.Visible := True;
  lblTitu0.Caption := 'Cargando Data de Cobranzas sin Sustento';
  lblTitu0.Refresh;
  xsql:='SELECT ARCHIVO,ASOID,ASONCTA,TRANSANO,TRANSMES,TMONID,IMPORTE,COMISION,APOSEC,ASOAPENOM, '
         +' ASOAPENOMA,FL_EXISTE,FL_NODEST,FL_NOORIG '
         +' FROM COB332 '
         +' WHERE ARCHIVO = '+quotedstr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)
         +' AND APOSEC='+quotedstr(xperiodo)
         +' AND  NVL(FL_CTACTE,''D'')=''D'' '
         +' AND ( (FL_NODEST=''S'' OR FL_NOORIG=''S'') OR (NVL(ASOID,''N'')=''N'')  )';
   dm1.cdsQry1.close;
   dm1.cdsQry1.DataRequest(xsql);
   dm1.cdsQry1.Open;
   xRegistros := dm1.cdsQry1.RecordCount;
   pbTot.Position:=pbTot.Position+1;
   Application.ProcessMessages;

   if xRegistros>0 then
   begin
        //** INSERTANDO EN LA TABLA COB340 LOS REGISTROS PROVENIENTES DE LA TABLA COB332
        //** Sobre este client se grabará
       xSql := 'SELECT * FROM COB340 '+
               ' WHERE ARCHIVO = '+quotedstr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+
               ' AND FLGTA ='+quotedstr('S')+' AND TRANSANO||TRANSMES='+quotedstr(xperiodo);

       dm1.cdsMovCre.Close;
       dm1.cdsMovCre.DataRequest(xSql);
       dm1.cdsMovCre.Open;
       pbTot.Position:=pbTot.Position+1;

       xSql := 'SELECT C.NANRO,C.NAFDOC from COB325 C  '
         +' WHERE C.NAANO||C.NAMES ='+quotedstr(xperiodo)
         +' AND C.NANRO='+Quotedstr(DM1.cdsDetalle.fieldbyname('NANRO').AsString);
       dm1.cdsQry3.Close;
       dm1.cdsQry3.DataRequest(xSql);
       dm1.cdsQry3.Open;

       xconta := 0;
       xTotConta := 0;
       lblTitu0.Caption := 'Data Cargada';
       lblTitu0.Refresh;
       lblRegTot.Caption := 'Registros para Actualizar : '+IntToStr(xRegistros);
       lblRegTot.Refresh;
       lblVan.Caption := 'Van : '+IntToStr(xTotConta);
       lblVan.Refresh;
       dm1.cdsQry1.First;
       while not dm1.cdsQry1.Eof do
       begin
          If xConta mod 1000 = 0 then
          begin
            lblTitu1.Caption := 'Actualizando Movimientos   ';
            lblTitu1.Refresh;
          end;

          dm1.cdsMovCre.Insert;
          dm1.cdsMovCre.FieldByName('ARCHIVO').AsString   := dm1.cdsQry1.FieldByName('ARCHIVO').AsString;
          dm1.cdsMovCre.FieldByName('ASOID').AsString     := dm1.cdsQry1.FieldByName('ASOID').AsString;
          dm1.cdsMovCre.FieldByName('ASONCTA').AsString   := dm1.cdsQry1.FieldByName('ASONCTA').AsString;
          dm1.cdsMovCre.FieldByName('TRANSANO').AsString  := dm1.cdsQry1.FieldByName('TRANSANO').AsString;
          dm1.cdsMovCre.FieldByName('TRANSMES').AsString  := dm1.cdsQry1.FieldByName('TRANSMES').AsString;
          dm1.cdsMovCre.FieldByName('TMONID').AsString    := dm1.cdsQry1.FieldByName('TMONID').AsString;
          dm1.cdsMovCre.FieldByName('IMPORTE').AsFloat    := dm1.cdsQry1.FieldByName('IMPORTE').AsFloat;
          dm1.cdsMovCre.FieldByName('COMISION').AsFloat   := dm1.cdsQry1.FieldByName('COMISION').AsFloat;
          dm1.cdsMovCre.FieldByName('APOSEC').AsString    := dm1.cdsQry1.FieldByName('APOSEC').AsString;
          dm1.cdsMovCre.FieldByName('ASOAPENOM').AsString := dm1.cdsQry1.FieldByName('ASOAPENOM').AsString;
          dm1.cdsMovCre.FieldByName('ASOAPENOMA').AsString := dm1.cdsQry1.FieldByName('ASOAPENOMA').AsString;
          dm1.cdsMovCre.FieldByName('FL_EXISTE').AsString  := dm1.cdsQry1.FieldByName('FL_EXISTE').AsString;
          dm1.cdsMovCre.FieldByName('FL_NODEST').AsString  := dm1.cdsQry1.FieldByName('FL_NODEST').AsString;
          dm1.cdsMovCre.FieldByName('FL_NOORIG').AsString  := dm1.cdsQry1.FieldByName('FL_NOORIG').AsString;
          dm1.cdsMovCre.FieldByName('USUARIO').AsString   := DM1.wUsuario;
          dm1.cdsMovCre.FieldByName('FREG').value         := Date;
          dm1.cdsMovCre.FieldByName('HREG').value         := Date+Time;
          dm1.cdsMovCre.FieldByName('CIAID').AsString     := '02';
          dm1.cdsMovCre.FieldByName('CREFPAG').AsDateTime := dm1.cdsQry3.FieldByName('NAFDOC').AsDateTime;
          dm1.cdsMovCre.FieldByName('FORPAGID').AsString  := xforpagoid;
          dm1.cdsMovCre.FieldByName('FORPAGABR').AsString := xforpagoabr;
{          dm1.cdsMovCre.FieldByName('NROOPE').AsString    := dm1.cdsQry3.FieldByName('NANRO').AsString;
          dm1.cdsMovCre.FieldByName('FOPERAC').AsString   := dm1.cdsQry3.FieldByName('NAFDOC').AsString;}
          dm1.cdsMovCre.FieldByName('NROOPETMP').AsString    := dm1.cdsQry3.FieldByName('NANRO').AsString;
          dm1.cdsMovCre.FieldByName('FOPERACTMP').AsString   := dm1.cdsQry3.FieldByName('NAFDOC').AsString;

          dm1.cdsMovCre.FieldByName('FLGTA').AsString     := 'S';
          dm1.cdsMovCre.FieldByName('CREMTODEV').AsFloat  := 0;
          dm1.cdsMovCre.FieldByName('CREDOCPAG').AsString := Copy(dm1.cdsQry3.FieldByName('NANRO').AsString,1,10);

          If xConta = 5000 then
          begin
            lblTitu1.Caption := 'Generando Cambio Permanente';
            lblTitu1.Refresh;
            DM1.AplicaDatos(Dm1.cdsMovCre,'MOVCRE');
            xConta := 0;
          end
          else
            xConta := xConta + 1;

          xTotConta := xTotConta +1;
          If xConta mod 1000 = 0 then
          begin
             lblVan.Caption := 'Van :'+IntToStr(xTotConta);
             lblVan.Refresh;
          end;
          dm1.cdsQry1.next;

       end;

       If xConta > 0 then
       begin
         lblTitu1.Caption := 'Generando Cambio Permanente';
         lblTitu1.Refresh;
         DM1.AplicaDatos(Dm1.cdsMovCre,'MOVCRE');
       end;
       pbTot.Position:=pbTot.Position+1;
       lblTitu1.Caption := 'Cobranzas sin Sustento Actualizada  ';
       lblTitu1.Refresh;


   end
   else
   begin
      pbTot.Position:=pbTot.Position+1;
      pbTot.Position:=pbTot.Position+1;
   end;

  //ACTUALIZA EL ARCHIVO COB332 PARA NO VOLVER A INSERTARLOS EN EL ARCHIVO CRE310
  //1° Actualiza
     xsql:='UPDATE COB332 SET FL_COBSS=''S'' '
         +' WHERE ARCHIVO = '+quotedstr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)
         +' AND APOSEC='+quotedstr(xperiodo)
         +' AND ( (FL_NODEST=''S'' OR FL_NOORIG=''S'') OR (NVL(ASOID,''N'')=''N'')  )';
   Try
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;
   pbTot.Position:=pbTot.Position+1;

   lblTitu2.Caption := 'Actualizando Temporales';
   lblTitu2.Refresh;
   xsql:=' UPDATE COB332  SET FL_CTACTE=''S'' '
        +' WHERE ARCHIVO = '+quotedstr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)
        +' AND APOSEC='''+xperiodo+''' AND  FL_EXISTE=''S'' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbTot.Position:=pbTot.Position+1;

  // ACTUALIZANDO EL MAESTRO PARA ACTIVAR LA CUENTA
   lblTitu2.Caption := 'Actualizando Situación de Cta.';
   lblTitu2.Refresh;
   xsql:='UPDATE APO201  '
        +'SET SITCTA=''A'' '
        +'WHERE ASOID IN ( SELECT B.ASOID FROM COB332 B  '
        +'                 WHERE  ASOID=B.ASOID  AND B.APOSEC='+quotedstr(xperiodo)
        +'                   AND B.FL_EXISTE=''S'' AND  B.FL_CTACTE=''S'' ) ';
//   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbTot.Position:=pbTot.Position+1;


  //** quitando Marca
   lblTitu2.Caption := 'Actualizando Temporales';
   lblTitu2.Refresh;
   xsql:=' UPDATE CRE310 SET FLGTA= NULL'
         +' WHERE FLGTA=''S''';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbTot.Position:=pbTot.Position+1;

  Screen.Cursor:=crDefault;
  gbPorDataOk.visible      := True;
  gbSumaTemporal.Visible   := True;
  gbSumaDescargado.Visible := True;
  if DM1.cdsPadre.RecordCount>0 then
     ppreport1.Print;


  Showmessage('Proceso Terminado');
  pbTot.Visible:=False;
  pnlInforma.Visible:=False;
  lblTitu0.Caption := '-';
  lblTitu1.Caption := '-';
  lblRegTot.Caption := 'Registros para Actualizar';
  lblVan.Caption := 'Van :';
  lblTitu2.Caption := '-';
 except
  pbTot.Visible:=False;
  Screen.Cursor:=CrDefault;
  pnlInforma.Visible:=False;
  pnlInforma.Visible:=False;
  lblTitu0.Caption := '-';
  lblTitu1.Caption := '-';
  lblRegTot.Caption := 'Registros para Actualizar';
  lblVan.Caption := 'Van :';
  lblTitu2.Caption := '-';
 end;
end;

procedure TFToolConsistenciaTA.Correlativo;
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

procedure TFToolConsistenciaTA.CorreCred(pCorre: String);
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
            'WHERE '+ xCorreWherex + xCorreWherey+')';
    Dm1.cdsQry.Close;
    Dm1.cdsQry.DataRequest(xSql);
    Dm1.cdsQry.Open;
    //** asigno el nuevo correlativo
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger),xCeros);
end;

procedure TFToolConsistenciaTA.BuscaCorre;
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
procedure TFToolConsistenciaTA.InsertaCRE301;
begin
   DM1.cdsPadre.Insert;
   DM1.cdsPadre.FieldByName('TABLA').AsString := 'CRE301';
   DM1.cdsPadre.FieldByName('ASOID').AsString := DM1.cdsQry4.FieldByName('ASOID').AsString;
   DM1.cdsPadre.Post;
end;

procedure TFToolConsistenciaTA.InsertaCRE302;
begin
   DM1.cdsPadre.Insert;
   DM1.cdsPadre.FieldByName('TABLA').AsString := 'CRE302';
   DM1.cdsPadre.FieldByName('ASOID').AsString := DM1.cdsQry4.FieldByName('ASOID').AsString;
   DM1.cdsPadre.Post;
end;

procedure TFToolConsistenciaTA.InsertaCRE303;
begin
   DM1.cdsPadre.Insert;
   DM1.cdsPadre.FieldByName('TABLA').AsString := 'CRE303';
   DM1.cdsPadre.FieldByName('ASOID').AsString := DM1.cdsQry4.FieldByName('ASOID').AsString;
   DM1.cdsPadre.Post;
end;



procedure TFToolConsistenciaTA.BitBtn2Click(Sender: TObject);
var
   sSQL : string;
begin
   sSQL := ' SELECT * FROM COB332'+
           ' WHERE ARCHIVO='+Quotedstr(DM1.cdsDetalle.fieldbyname('ARCHIVO').AsString);



end;

procedure TFToolConsistenciaTA.SpeedButton1Click(Sender: TObject);
var ximporte,xcomision:Currency;
begin
 dm1.cdsQry5.First;
 ximporte := 0;
 xcomision:=0;
 while not dm1.cdsQry5.Eof do
  begin
     ximporte:=ximporte+dm1.cdsQry5.FieldByName('IMPORTE').AsFloat;
     xcomision:=xcomision+dm1.cdsQry5.FieldByName('COMISION').AsFloat;
     dm1.cdsQry5.Next;
  end;
  mImporte.Text:=FormatFloat( '###,###,###.00', ximporte  );
  mcomision.Text:=FormatFloat( '###,###,###.00', xcomision );
end;

procedure TFToolConsistenciaTA.SpeedButton2Click(Sender: TObject);
var  xSql:string ;
begin

xSql := 'SELECT SUM(CREMTOCOB) CREMTOCOB FROM CRE310 A WHERE FOPERACTMP >='''+DateToStr(FecDescargo.Date)+''' '
        +' CREESTID NOT IN (''04'',''13'') AND FOPERACTMP <= '''+ DateToStr(FecDescargo.Date)+'''';
DM1.cdsQry.Close;
DM1.cdsQry.DataRequest(xSql);
DM1.cdsQry.Open;
mImporte2.Text:= FormatFloat( '###,###,###.00',DM1.cdsQry.FieldByname('CREMTOCOB').AsFloat);

end;

end.



