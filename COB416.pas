unit COB416;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Spin, Mask, Mant, ComCtrls, fcButton,
  fcImgBtn, fcShapeBtn;

type
  TFToolConsistencia = class(TForm)
    pnlTool: TPanel;
    edtName: TEdit;
    GroupBox1: TGroupBox;
    cbUse: TCheckBox;
    cbCM: TCheckBox;
    cbAN: TCheckBox;
    cbCP: TCheckBox;
    seLong: TSpinEdit;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    Busca: TLabel;
    me1: TMaskEdit;
    me2: TMaskEdit;
    Reemplaza: TLabel;
    gbConta: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblTO: TLabel;
    lblTB: TLabel;
    lblAC: TLabel;
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
    Z2bbtnMarTod: TfcShapeBtn;
    Z2bbtnGenAso: TfcShapeBtn;
    Z2bbtnActCodPag: TfcShapeBtn;
    Z2bbtnResCodDup: TfcShapeBtn;
    Z2bbtnEliCodAso: TfcShapeBtn;
    Z2bbtnGenFile: TfcShapeBtn;
    Z2bbtnDesMarTod: TfcShapeBtn;
    cbDNI: TCheckBox;
    procedure bbtnConsist1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure sbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnGenAsoClick(Sender: TObject);
    procedure Z2bbtnActCodPagClick(Sender: TObject);
    procedure Z2bbtnResCodDupClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Z2bbtnEliCodAsoClick(Sender: TObject);
    procedure Z2bbtnGenFileClick(Sender: TObject);
    procedure Z2bbtnDesMarTodClick(Sender: TObject);
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
  public
    { Public declarations }
  end;

var
  FToolConsistencia: TFToolConsistencia;
  xSQL : String;

implementation

uses COBDM1, COB001, MsgDlgs, COB432, COB601;

{$R *.DFM}


procedure TFToolConsistencia.bbtnConsist1Click(Sender: TObject);
var
   xSQL  : String;
begin

   Screen.Cursor:=crHourGlass;
   //if (not cbUSE.Checked ) and (not cbCM.Checked) and (not cbCP.Checked) then

   if (cbUSE.Checked) and (not cbAN.Checked) then
    cbAN.Checked:=True
   else
    if (cbCM.Checked) and (not cbAN.Checked) then
     cbAN.Checked:=True
    else
     if (cbCP.Checked) and (not cbAN.Checked) then
      cbAN.Checked:=True;

   if cbDNI.Checked Then
      Begin
       cbCM.Checked := False;
      End;


  //if (cbUSE.Checked) or (cbCM.Checked) or (cbCP.Checked) and (not cbAN.Checked) then
    //cbAN.Checked:=True;

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

    GrabaModificados;
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

  cbAN.Checked := True;
  cbCM.Checked := True;
end;


function TFToolConsistencia.BuscarSQL : String ;
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
     //xWhere2:=xWhere2+'B.USEID=A.USEID';
   end;
   Application.ProcessMessages;

  if cbCM.Checked then
   begin
    if xWhere <>'' then xWhere :=xWhere +' AND ';
    if xWhere2<>'' then xWhere2:=xWhere2+' AND ';

    xWhere :=xWhere +'B.ASOCODMOD=A.ASOCODMOD';
    xWhere2:=xWhere2+'C.ASOCODMOD=A.ASOCODMOD';
   end;
   Application.ProcessMessages;

  if cbAN.Checked then
   begin
    if xWhere <>'' then xWhere :=xWhere +' AND ';
    if xWhere2<>'' then xWhere2:=xWhere2+' AND ';

    if cbLike.Checked then
    begin
      //xWhere:=xWhere+'B.ASOAPENOM LIKE ''%'+'SUBSTR(B.ASOAPENOM,1,6)'+Trim( Copy(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString, 1, seLong.Value ) )+'%''' )
    end
    else
    begin
      if (not cbUSE.Checked ) and (not cbCM.Checked) and (not cbCP.Checked) then
      begin
        xWhere :=xWhere +'B.ASOAPENOM=A.ASOAPENOM';
        xWhere2:=xWhere2+'C.ASOAPENOM=A.ASOAPENOM';
      end
      else
      begin
        xWhere :=xWhere +'B.ASOAPENOM LIKE SUBSTR(A.ASOAPENOM, 1, '+IntToStr(seLong.Value)+' )||''%''';
        xWhere2:=xWhere2+'C.ASOAPENOM LIKE SUBSTR(A.ASOAPENOM, 1, '+IntToStr(seLong.Value)+' )||''%''';
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
  Application.ProcessMessages;


  if cbDNI.Checked then
  begin
    if xWhere <>'' then xWhere :=xWhere +' and ';
    if xWhere2<>'' then xWhere2:=xWhere2+' and ';

    xWhere :=xWhere +'B.ASODNI=A.ASODNI AND A.ASODNI IS NOT NULL';
    xWhere2:=xWhere2+'C.ASODNI=A.ASODNI AND A.ASODNI IS NOT NULL';
  end;
  Application.ProcessMessages;


  xSQL3:=xSQL3+'WHERE '+xWhere2;
  xSQL2:=xSQL2+'WHERE '+xWhere+' AND ( '+xSQL3+' )=1 ' ;

  xSQL:='UPDATE COB310 A '
       +'SET ASOID=( '+xSQL2 +' ) '
//        +'Where ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' and '
//        +      'APOSEC=''' +DM1.cdsDetalle.FieldByname('PERIODO').AsString+''' and '
       +'WHERE '+mtxD.Filter+' AND ASOID IS NULL';
//        +       'NVL( ASOID, ''NULO'' )=''NULO'' ';
   Application.ProcessMessages;
   Result:=xSQL;
end;


procedure TFToolConsistencia.BitBtn2Click(Sender: TObject);
var
  xSQL  : String;
  xCont : Integer;
  xWhere: String;
  xTO   : Integer;
  xTB   : Integer;
  xAC   : Integer;
begin
  if (not cbUSE.Checked) and (not cbCM.Checked) and (not cbAN.Checked) and (not cbCP.Checked) then
  begin
    ShowMessage('Error : Tiene que Seleccionar Condiciones de Busqueda');
    Exit
  end;
 	Screen.Cursor:=crHourGlass;
  DM1.cdsQry5.DisableControls;

  xTO:=0; xTB:=0; xAC:=0; xCont:=0;
  lblTO.Caption:=IntToStr(xTO);
  lblTB.Caption:=IntToStr(xTB);
  lblAC.Caption:=IntToStr(xAC);
  lblTO.Update;
  lblTB.Update;
  lblAC.Update;
  gbConta.Refresh;
  pbTot.Visible:=True;
  pbTot.Max:=DM1.cdsQry5.RecordCount+3;
  pbTot.Min:=0;
  pbTot.Position:=1;
  pbTot.Position:=pbTot.Position+1;

  DM1.cdsQry5.First;
  while not DM1.cdsQry5.Eof do
  begin
    Application.ProcessMessages;
    pbTot.Position:=pbTot.Position+1;
    xTO:=xTO+1;

    if DM1.cdsQry5.FieldByName('ASOID').AsString='' then
    begin
      xSQL:='SELECT ASOID FROM APO201 ';
      xWhere:='';
      if cbUSE.Checked then
        xWhere:=xWhere+'USEID='+ QuotedStr( DM1.cdsQry5.FieldByname('USEID').AsString );

      if cbCM.Checked then
      begin
        if xWhere<>'' then
          xWhere:=xWhere+' AND ';
        xWhere:=xWhere+'ASOCODMOD='+ QuotedStr( DM1.cdsQry5.FieldByname('ASOCODMOD').AsString );
      end;

      if cbAN.Checked then
      begin
        if xWhere<>'' then
          xWhere:=xWhere+' AND ';
        if cbLike.Checked then
          xWhere:=xWhere+'ASOAPENOM LIKE '+ QuotedStr( '%'+Trim( Copy(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString, 1, seLong.Value ) )+'%' )
        else
          xWhere:=xWhere+'ASOAPENOM LIKE '+ QuotedStr( Trim( Copy(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString, 1, seLong.Value ) )+'%' );
        end;

        if cbCP.Checked then
        begin
          if xWhere<>'' then
            xWhere:=xWhere+' AND ';
          xWhere:=xWhere+'ASOCODPAGO='+QuotedStr( DM1.cdsQry5.FieldByname('ASOCODPAGO').AsString );
        end;

        xSQL:=xSQL+'WHERE '+xWhere;

        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest( xSQL );
        try
          DM1.cdsQry.Open;
        except
          ShowMessage('Error');
        end;

        xTB:=xTB+1;

        if DM1.cdsQry.Recordcount=1 then
        begin
          xAC:=xAC+1;
          xCont:=xCont+1;
          DM1.cdsQry5.Edit;
          DM1.cdsQry5.FieldByName('ASOID').AsString:=DM1.cdsQry.FieldByname('ASOID').AsString;

          if xCont >= 50 then
          begin
            {xSQL:='SELECT * FROM COB310 '+
                   'Where ASOID='''+DM1.cdsQry.FieldByname('ASOID').AsString+'''';
            DM1.cdsQry5.DataRequest( xSQL );}
            dm1.AplicaDatos( DM1.cdsQry5, '' );
            xCont:=0;
            lblTO.Caption:=IntToStr(xTO);
            lblTB.Caption:=IntToStr(xTB);
            lblAC.Caption:=IntToStr(xAC);

            lblTO.Update;
            lblTB.Update;
            lblAC.Update;

            gbConta.Refresh;
          end;
        end;
      end;

    lblTO.Caption:=IntToStr(xTO);
    lblTB.Caption:=IntToStr(xTB);
    lblAC.Caption:=IntToStr(xAC);
    lblTO.Update;
    lblTB.Update;
    lblAC.Update;

    gbConta.Refresh;

    DM1.cdsQry5.Next;
  end;
  dm1.AplicaDatos( DM1.cdsQry5, '' );
  pbTot.Position:=pbTot.Position+1;
  DM1.cdsQry5.EnableControls;
  pbTot.Position:=pbTot.Position+1;
	MtxD.RefreshFilter;
  pbTot.Position:=pbTot.Position+1;
  pbTot.Visible:=False;

  Screen.Cursor:=CrDefault;
  ShowMessage( 'Fin de Proceso');
end;

procedure TFToolConsistencia.BitBtn1Click(Sender: TObject);
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

  xSQL:='SELECT * FROM COB310 '+
        'WHERE '+MtxD.FMant.SQL_WHERE;

  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSQL);
  DM1.cdsReporte.Open;

  DM1.cdsReporte.First;
  DM1.cdsReporte.DisableControls;
  x:='0';
  While Not DM1.cdsReporte.Eof Do
  Begin
    //if DM1.cdsQry5.FieldByName('ASOID').AsString='' then
    //begin
    Application.ProcessMessages;
    pbTot.Position:=pbTot.Position+1;
    xPos:=POS( me1.Text, DM1.cdsReporte.FieldByName('ASOAPENOM').AsString );

    if xPos > 0 then
    begin
      xNLinea:=Copy( DM1.cdsReporte.FieldByName('ASOAPENOM').AsString, 1, xPos-1 )
              +me2.Text
              +Copy( DM1.cdsReporte.FieldByName('ASOAPENOM').AsString, xPos+Length( me1.Text ), 50 );

      DM1.cdsReporte.Edit;
      DM1.cdsReporte.FieldByName('ASOAPENOM').AsString:=xNLinea;
      DM1.cdsReporte.ApplyUpdates(-1);
    end;
    //end;
    DM1.cdsReporte.Next;
  End;
  DM1.cdsReporte.EnableControls;
  MtxD.RefreshFilter;
  //DM1.cdsReporte.First;
  pbTot.Visible:=False;
  Screen.Cursor:=CrDefault;
  ShowMessage('Fin de Proceso');


  {DM1.cdsQry5.First;
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
  ShowMessage('Fin de Proceso');}
end;

procedure TFToolConsistencia.BitBtn3Click(Sender: TObject);
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
    xSQLd:='SELECT * FROM COB310 '+
           //'WHERE '+mtxD.Filter+' AND '+
           'WHERE '+MtxD.FMant.SQL_WHERE+' AND '+
            //+'ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' and '
            //+'APOSEC=''' +DM1.cdsDetalle.FieldByname('PERIODO').AsString+''' and '
           'ASOID IS NULL AND ASOAPENOM LIKE ''%'+DM1.cdsCambios.FieldByName('ORIGEN').AsString+'%''';

    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest( xSQLd );
    DM1.cdsQry5.Open;
    if DM1.cdsQry5.RecordCount > 0 then
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

procedure TFToolConsistencia.BuscarSocio;
var
  xSQL, xWhere : String;
  xTO, xTB, xAC   : Integer;
begin
  Screen.Cursor:=crHourGlass;
  DM1.cdsQry5.DisableControls;
  xTO:=0; xTB:=0; xAC:=0;
  DM1.cdsQry5.First;
  while not DM1.cdsQry5.Eof do
  begin
    xTO:=xTO+1;
    if DM1.cdsQry5.FieldByName('ASOID').AsString='' then
    begin
      Application.ProcessMessages;
      //For i:=1 to 5 do
      //begin
        {case i of
          1 : xLong:=30;
          2 : xLong:=25;
          3 : xLong:=20;
          4 : xLong:=15;
          5 : xLong:=10;
        end;}
        xSQL:='SELECT ASOID FROM APO201 ';
        xWhere:='';
        xWhere:=xWhere+'ASOAPENOM = '''+Trim(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString)+'''';
        //xWhere:=xWhere+'ASOAPENOM LIKE '''+Trim( Copy(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString, 1, xLong ) )+'%'' ';

        {xWhere:='';
        if cbUSE.Checked then
          xWhere:=xWhere+'USEID='''    +DM1.cdsQry5.FieldByname('USEID').AsString+''' ';
        if cbCM.Checked then
        begin
          if xWhere<>'' then xWhere:=xWhere+' and ';
          xWhere:=xWhere+'ASOCODMOD='''+DM1.cdsQry5.FieldByname('ASOCODMOD').AsString+''' ';
        end;
        if cbAN.Checked then
        begin
          if xWhere<>'' then xWhere:=xWhere+' and ';
          if cbLike.Checked then
            xWhere:=xWhere+'ASOAPENOM LIKE ''%'+Trim( Copy(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString, 1, seLong.Value ) )+'%'' '
          else
            xWhere:=xWhere+'ASOAPENOM LIKE '''+Trim( Copy(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString, 1, seLong.Value ) )+'%'' ';
        end;
        if cbCP.Checked then
        begin
          if xWhere<>'' then xWhere:=xWhere+' and ';
            xWhere:=xWhere+'ASOCODPAGO='''+DM1.cdsQry5.FieldByname('ASOCODPAGO').AsString+''''
        end;}
        xSQL:=xSQL+'WHERE '+xWhere;
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest( xSQL );
        DM1.cdsQry.Open;
        xTB:=xTB+1;
        if DM1.cdsQry.Recordcount=1 then
        begin
          xAC:=xAC+1;
          //xCont:=xCont+1;
          DM1.cdsQry5.Edit;
          DM1.cdsQry5.FieldByName('ASOID').AsString:=DM1.cdsQry.FieldByname('ASOID').AsString;
          //if xCont>=50 then
          //begin
          dm1.AplicaDatos( DM1.cdsQry5, '' );
          //   xCont:=0;
          lblTO.Caption:=IntToStr(xTO);
          lblTB.Caption:=IntToStr(xTB);
          lblAC.Caption:=IntToStr(xAC);
          lblTO.Update;
          lblTB.Update;
          lblAC.Update;
          gbConta.Refresh;
          //end;
          Break;
        end;
      //end;
    end;
    DM1.cdsQry5.Next;
  end;
  dm1.AplicaDatos( DM1.cdsQry5, '' );
  DM1.cdsQry5.EnableControls;
  Screen.Cursor:=CrDefault;
end;

procedure TFToolConsistencia.Reemplazar( xOrigen, xDestino : String );
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

procedure TFToolConsistencia.BitBtn4Click(Sender: TObject);
var
  xLong : Integer;
begin
   Screen.Cursor := crHourGlass;

  if (not cbAN.Checked) then
    cbAN.Checked:=True;

  if (not cbCM.Checked) then
    cbCM.Checked:=True;

  pbTot.Visible:=True;
  pbTot.Max:=32;
  pbTot.Min:=0;
  pbTot.Position:=1;
  pbTot.Position:=pbTot.Position+1;
  For xLong:=30 Downto 5 do
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

procedure TFToolConsistencia.GrabaModificados;
begin
  // USE
  xSQL:='UPDATE COB310 A '+
        //'SET USEIDA=(SELECT DECODE( TRIM(B.USEID), TRIM(A.ASOID), NULL, B.USEID ) FROM APO201 B '+
        'SET USEIDA=(SELECT DECODE( TRIM(B.USEID), TRIM(A.USEID), NULL, B.USEID ) FROM APO201 B '+
                    'WHERE B.ASOID=A.ASOID AND '+
                    '(SELECT COUNT(ASOID) FROM APO201 C '+
                    'WHERE C.ASOID=A.ASOID )=1) '+
        'WHERE '+mtxD.Filter+' AND ASOID IS NOT NULL ';
  //'WHERE '+mtxD.Filter+' and NVL( ASOID, ''NULO'' )<>''NULO''';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  try
    DM1.cdsQry.Execute;
  except
    ShowMessage( 'Error en SQL 1' );
    Exit
  end;
  Application.ProcessMessages;

  // CODIGO MODULAR
  xSQL:='UPDATE COB310 A '+
        'SET ASOCODMOD=(SELECT DECODE( TRIM(B.ASOCODMOD), TRIM(A.ASOCODMOD), NULL, B.ASOCODMOD ) FROM APO201 B '+
                       'WHERE B.ASOID=A.ASOID AND '+
                       '(SELECT COUNT(ASOID) FROM APO201 C '+
                       'WHERE C.ASOID=A.ASOID )=1) '+
        'WHERE '+mtxD.Filter+' AND ASOID IS NOT NULL ';
//        'WHERE '+mtxD.Filter+' AND NVL(ASOID,''NULO'')<>''NULO''';
  try
    DM1.cdsQry.Execute;
  except
    ShowMessage( 'Error en SQL 2' );
  end;
  Application.ProcessMessages;
  // NOMBRES
  xSQL:='UPDATE COB310 A '+
        'SET ASOAPENOM=(SELECT DECODE( TRIM(B.ASOAPENOM), TRIM(A.ASOAPENOM), NULL, B.ASOAPENOM ) FROM APO201 B '+
                       'WHERE B.ASOID=A.ASOID AND '+
                       '(SELECT COUNT(ASOID) FROM APO201 C '+
                       'Where C.ASOID=A.ASOID )=1) '+
        'WHERE '+mtxD.Filter+' AND ASOID IS NOT NULL ';
//        'WHERE '+mtxD.Filter+' AND NVL(ASOID,''NULO'')<>''NULO''';
  try
    DM1.cdsQry.Execute;
  except
    ShowMessage( 'Error en SQL 3' );
  end;
  Application.ProcessMessages;
end;

procedure TFToolConsistencia.BitBtn5Click(Sender: TObject);
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

procedure TFToolConsistencia.sbtnAceptarClick(Sender: TObject);
begin
  if not Question (Caption, 'Desea Marcar Todos los Asociados que se encuentran en el Filtro'+#13+#13+
                            'Desea Continuar') then
    Exit;

  Screen.Cursor:=crHourGlass;

  xSQL:='UPDATE COB310 SET FLAG=NULL '+
        'WHERE '+mtxD.Filter;

  xSQL:='UPDATE COB310 SET FLAG=''S'' '+
        //'WHERE '+mtxD.Filter;
        'WHERE '+MtxD.FMant.SQL_WHERE;

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  MtxD.RefreshFilter;
  Screen.Cursor:=crDefault;
end;

procedure TFToolConsistencia.Z2bbtnDesMarTodClick(Sender: TObject);
begin
  if not Question (Caption, 'Desea Des-Marcar Todos los Asociados que se encuentran en el Filtro'+#13+#13+
                            'Desea Continuar') then
    Exit;

  Screen.Cursor:=crHourGlass;
  xSQL:='UPDATE COB310 SET FLAG=NULL '+
        //'WHERE '+mtxD.Filter;
        'WHERE '+MtxD.FMant.SQL_WHERE;

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  MtxD.RefreshFilter;
  Screen.Cursor:=crDefault;
end;

procedure TFToolConsistencia.Z2bbtnGenAsoClick(Sender: TObject);
var
 xTrue : Boolean;
 iX : Integer;
 xCodStr, xAuxStr, xSQL	: String;
begin
  if not Question (Caption, 'Desea Generar Codigo de Asociados para Todos los Registros que se Encuentran en el Filtro'+#13+#13+
                            'Desea Continuar') then
    Exit;
  Screen.Cursor:=crHourGlass;
  xTrue := False;
  DM1.cdsQry5.First;
  while not DM1.cdsQry5.Eof do
  begin
  	if (Length(Trim(DM1.cdsQry5.FieldByName('ASOID').AsString)) = 0) and
       (Trim(DM1.cdsQry5.FieldByName('FLAG').AsString) = 'S') then
    begin
     xTrue := True;
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
              //xName1 := Trim(Copy( CadSql, 1, iX ));
              //CadSQL := Copy( CadSql, Pos( ' ', CadSql )+1, Length( CadSql ) );
              //xName2 := Trim(CadSql);
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

      //... Inserción en el Apo211
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
      //cdsPost(DM1.cdsQry5);
      //DM1.cdsQry5.Post;
      DM1.AplicaDatos( DM1.cdsQry5,'COB310' );
//    DM1.cdsQry5.ApplyUpdates(-1);


      {xCodStr := dm1.StrZero(InttoStr(StrtoInt(xCodStr)+1),xLogAsoid);

      xSQL:='UPDATE CRE206 SET ASOID='+QuotedStr(xCodStr)+' '+
            'WHERE CREAREA=''APO''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Execute;}

    end;
    DM1.cdsQry5.Next;
  end;

  //** 20/02/2003 - PJSV, Si no entra al While no debe continuar
  If not xTrue then
   begin
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
    Exit;
   end;
  //**

  xSQL:='INSERT INTO APO201 ('+
        'CIAID, ASOID, ASOCODAUX, '+
        'ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASOAPNCRE, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOTIPID, ASOSITID,TCREACION) '+
        'SELECT '+
        'CIAID, ASOID, ASOCODAUX, '+
        'ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASOAPNCRE, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOTIPID, ASOSITID,''02'' '+
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
end;

procedure TFToolConsistencia.Z2bbtnActCodPagClick(Sender: TObject);
begin
  if not Question (Caption, 'Desea Generar los Código de Pago que se encuentran en el Filtro'+#13+#13+
                            'Desea Continuar') then
    Exit;
  xSQL:='UPDATE COB310 '+
        'SET COB310.ASOCODPAGO=(SELECT B.ASOCODPAGO FROM APO201 B '+
                       'WHERE B.ASOID=COB310.ASOID) '+
                       //'(SELECT COUNT(ASOID) FROM APO201 C '+
                       //'WHERE C.ASOID=A.ASOID )=1) '+
        'WHERE '+MtxD.FMant.SQL_WHERE+' AND COB310.ASOCODPAGO IS NULL AND COB310.ASOID IS NOT NULL';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  try
    DM1.cdsQry.Execute;
  except
    ShowMessage( 'Error en SQL' );
    Exit
  end;
  Application.ProcessMessages;
  MtxD.RefreshFilter;
end;

procedure TFToolConsistencia.Z2bbtnResCodDupClick(Sender: TObject);
begin
  Try
    FUnifAso := TFUnifAso.Create(Application);
    FUnifAso.ShowModal;
  Finally
    FUnifAso.Free;
  end;
end;

procedure TFToolConsistencia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then
  begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFToolConsistencia.Z2bbtnEliCodAsoClick(Sender: TObject);
begin
  if Length(Trim(DM1.cdsQry5.FieldByName('ASOID').AsString)) = 0 then
    Exit;
  if Question(Caption,'Blanquear el Codigo de Asociado '+#13+#13+
                      DM1.cdsQry5.FieldByName('ASOID').AsString+'  -  '+
                      DM1.cdsQry5.FieldByName('ASOAPENOM').AsString+#13+#13+
                      'Desea Continuar') then
  begin
    DM1.cdsQry5.Edit;
    DM1.cdsQry5.FieldByName('ASOID').Clear;
    DM1.cdsQry5.Post;
    DM1.cdsQry5.ApplyUpdates(-1);
  end;
end;

procedure TFToolConsistencia.Z2bbtnGenFileClick(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;

  xSQL:='SELECT * FROM COB310 '+
        'WHERE '+MtxD.FMant.SQL_WHERE;
        {'WHERE ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
        'AND APOSEC=' +QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
        'AND FLAG='+QuotedStr('S');}
  DM1.cdsRepresentante.Close;
  DM1.cdsRepresentante.DataRequest(xSQL);
  DM1.cdsRepresentante.Open;

  if dm1.cdsRepresentante.RecordCount = 0 then
  begin
    Screen.Cursor:=crDefault;
    Information(Caption, 'No Existen Asociados para Transferir');
    Exit;
  end;

  Try
    FGenAsoc := TFGenAsoc.Create(Application);
    Screen.Cursor:=crDefault;    
    FGenAsoc.ShowModal;
  Finally
    FGenAsoc.Free;
  end;
  Screen.Cursor:=crDefault;  
end;

procedure TFToolConsistencia.Correlativo;
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

procedure TFToolConsistencia.CorreCred(pCorre: String);
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
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger),xCeros);
end;


procedure TFToolConsistencia.BuscaCorre;
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

end.
