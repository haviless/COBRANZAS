//** dm1.cdsRelCapCuo -> CRE119
//** dm1.cdsQry2      -> CRE118
unit CRE315;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, CheckLst,db, Mask,
  wwdbedit, DBGrids,Math, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn,
  ppCache, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppBands, ppPrnabl, ppCtrls, ppStrtch, ppRegion;

type
  TFCapacidad = class(TForm)
    pnlDatos: TPanel;
    pnlRelacion: TPanel;
    dbgCabRel: TwwDBGrid;
    dbgRelacion: TwwDBGrid;
    Label1: TLabel;
    dbeMtoMax: TwwDBEdit;
    Label2: TLabel;
    dbeInteres: TwwDBEdit;
    Label3: TLabel;
    dbeFlat: TwwDBEdit;
    Label4: TLabel;
    dbeCuotas: TwwDBEdit;
    Label5: TLabel;
    dbePorc: TwwDBEdit;
    StaticText1: TStaticText;
    Z2sbtnBusca: TfcShapeBtn;
    Z2sbtnGraba: TfcShapeBtn;
    Z2sbtnReport: TfcShapeBtn;
    rptCapacidad: TppReport;
    ppBDEPipeline1: TppBDEPipeline;
    ppBDEPipeline2: TppBDEPipeline;
    sbtnInserta: TfcShapeBtn;
    lblTitulo: TppLabel;
    lblCiades: TppLabel;
    lblArea: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    lblMtoMax: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppRegion1: TppRegion;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppRegion2: TppRegion;
    ppRegion3: TppRegion;
    pnlSubCab: TPanel;
    dblcTipo: TwwDBLookupCombo;
    edtTipoAso: TEdit;
    dbgLista: TwwDBGrid;
    lbCreditos: TCheckListBox;
    ppRegion4: TppRegion;
    procedure dblcTipoNotInList(Sender: TObject; LookupTable: TDataSet;NewValue: String; var Accept: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcTipoChange(Sender: TObject);
    procedure dbgListaDblClick(Sender: TObject);
    procedure lbCreditosClickCheck(Sender: TObject);
    procedure dbeMtoMaxExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgCabRelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCabRelFieldChanged(Sender: TObject; Field: TField);
    procedure dbgRelacionCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeMtoMaxKeyPress(Sender: TObject; var Key: Char);
    procedure dbgCabRelCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Z2sbtnReportClick(Sender: TObject);
{    procedure sbtnInsertaClick(Sender: TObject);}
  private
    { Private declarations }
    xTrue : Boolean;
    //xTablaPro,
    xCiades,xArea,xListaAbr,xTipAbr : String;
    xPorcContantate,xMtoMinContantate,xMtoMaxContantate,Interes,InteresM,MtoCredito,Flat : Double;
    xColumna : Integer; // Para el Grid CabRel
    procedure CargaLista;
    Procedure Cronograma;
    procedure LimpiaData(pColumna : String);
  public
    { Public declarations }
    wBiene : String;
  end;

var
  FCapacidad: TFCapacidad;

implementation

uses COBDM1,COB310;

{$R *.DFM}

procedure TFCapacidad.CargaLista;
var
 xFiltro,xSql : String;
begin
  If wBiene = '1' Then
   begin
     xSQL:= 'SELECT * FROM CRE101 A,CRE109 B '+
            ' WHERE  A.LISTACLIE LIKE '+quotedstr('%'+trim(edtTipoAso.text)+'%')+
            ' and A.LISTAID=B.LISTAID AND B.Flgvigente = ''S'' ORDER BY CONDCREDID';
     Dm1.cdsQry.Close;
     Dm1.cdsQry.DataRequest(xSql);
     Dm1.cdsQry.Open;
     Dm1.cdsQry.First;
     while not Dm1.cdsQry.eof do
      begin
       If xFiltro = '' then
        xFiltro := 'LISTAABR='+quotedstr(dm1.cdsQry.FieldByName('LISTAABR').AsString)
       else
        xFiltro := xFiltro + ' OR LISTAABR='+quotedstr(dm1.cdsQry.FieldByName('LISTAABR').AsString);
       Dm1.cdsQry.Next;
      end;
   end
  else
   begin
     xFiltro := 'LISTAABR='+quotedstr(FCaptaCuotas.wLista)
   end;
  Dm1.cdsListaCreA.Filter := xFiltro;
  Dm1.cdsListaCreA.Filtered := True;

  If wBiene <> '1' Then
   dbgLista.OnDblClick(dbgLista);
end;

procedure TFCapacidad.dblcTipoNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFCapacidad.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFCapacidad.dblcTipoChange(Sender: TObject);
var
xWhere : String;
begin
 xWhere:='ASOTIPID='''+dblcTipo.Text+'''';
 edtTipoAso.Text:=DM1.DisplayDescrip('prvSQL','APO107','ASOTIPDES',xWhere,'ASOTIPDES');
 CargaLista;
end;

procedure TFCapacidad.dbgListaDblClick(Sender: TObject);
var
  xPos,xLength,xI : Integer;
  xSql,xWhere : String;
begin
   lbCreditos.Clear;
   If wBiene = '1' then
    xListaAbr := DM1.cdsListaCreA.FieldByName('LISTAABR').AsString
   else
    xListaAbr := FCaptaCuotas.wLista;

   xSql := 'SELECT * FROM CRE101 WHERE LISTAID='+quotedstr(DM1.cdsListaCreA.FieldByName('LISTAID').AsString)+
           ' AND LISTAABR='+quotedstr(xListaAbr)+
           ' AND LISTACLIE LIKE '+quotedstr('%'+edtTipoAso.text);

   DM1.cdsTipCreA.Close;
   DM1.cdsTipCreA.DataRequest(xSql);
   DM1.cdsTipCreA.Open;
   xI := 2;
   DM1.cdsTipCreA.First;
   while not DM1.cdsTipCreA.eof do
    begin
     xLength := Length(DM1.cdsTipCreA.FieldByName('LISTACREID').AsString);
     While xI <= xLength do
      begin
       xPos := xI;
       while xPos <= xLength do
        begin
         If copy(DM1.cdsTipCreA.FieldByName('LISTACREID').AsString,xPos,1) =';' then
          break
         else
          xPos := xPos + 1;
        end;
       xWhere := 'TIPCREID='+quotedstr(copy(DM1.cdsTipCreA.FieldByName('LISTACREID').AsString,xI,2));
       lbCreditos.Items.Add(DM1.DisplayDescrip('prvSQL','CRE110','TIPCREDES',xWhere,'TIPCREDES'));
       xI := xPos+1;
      end;
     DM1.cdsTipCreA.next;
     xI := 2;
    end;

  If wBiene <> '1' then
   begin
    lbCreditos.ItemIndex := 0; //FSolicitudCreditosAso.lbCreditos.ItemIndex;
    lbCreditos.Checked[lbCreditos.ItemIndex] := True;
    lbCreditos.OnClickCheck(lbCreditos);
   end;

end;

procedure TFCapacidad.lbCreditosClickCheck(Sender: TObject);
var
  xCheck, I : Integer;
  xSql : String;
  xMarca : Boolean;
begin
  dbeMtoMax.Text := '';
  dbeInteres.Text := '';
  dbeFlat.Text := '';
  dbeCuotas.Text := '';
  dbePorc.Text := '';
  xCheck:=lbCreditos.ItemIndex;
  For I := 0 to (lbCreditos.Items.Count - 1) Do
  Begin
    If lbCreditos.Checked[I] Then
    Begin
      If xCheck<>I Then
      Begin
        lbCreditos.Checked[I]:=False;
      End;
    End;
  End;

  If lbCreditos.Itemindex >= 0 then
   begin
    xTrue := lbCreditos.Checked[lbCreditos.Itemindex];
    xTipAbr := lbCreditos.Items.Strings[lbCreditos.Itemindex];
   end
  else xTrue := False;

  If wBiene <> '1' then
   begin
     xListaAbr := FCaptaCuotas.wLista; //FSolicitudCreditosAso.wLista;
     xTipAbr :=  FCaptaCuotas.wTipCreAbr //copy(FSolicitudCreditosAso.wTipCre,6,length(FSolicitudCreditosAso.wTipCre));
   end;

  xSql := 'SELECT A.TIPCREMMAX,A.TIPCREMMIN,A.TIPCRECMAX,A.TIPCRECMIN, A.TIPCREINT,'+
          'A.TIPCREFLAT, D.PMTOLIQ'+
          ' FROM CRE101 A,cre109 B,cre110 C,CRE103 D'+
          ' WHERE A.LISTAabr like '+quotedstr('%'+trim(xListaAbr)+'%')+
          ' AND A.LISTACRED LIKE '+quotedstr('%'+trim(xTipAbr)+'%')+
          ' AND A.LISTACLIE LIKE '+quotedstr('%'+trim(edtTipoAso.text)+'%')+
          ' and FLGVIGENTE = '+quotedstr('S')+
          ' and A.LISTAABR=B.LISTAABR and '+
          ' C.TIPCREDES LIKE '+quotedstr('%'+trim(xTipAbr)+'%')+
          ' and C.TIPCREID=D.TIPCREID AND D.Fvigente = ''S''';
  dm1.cdsQry1.close;
  dm1.cdsQry1.datarequest(xSql);
  dm1.cdsQry1.open;

  dbeMtoMax.text  := DM1.cdsQry1.FieldByName('TIPCREMMAX').AsString;
  dbeInteres.text := DM1.cdsQry1.FieldByName('TIPCREINT').AsString;
  dbeFlat.text    := DM1.cdsQry1.FieldByName('TIPCREFLAT').AsString;
  dbeCuotas.text  := DM1.cdsQry1.FieldByName('TIPCRECMAX').AsString;
  dbePorc.text    := DM1.cdsQry1.FieldByName('PMTOLIQ').AsString;
  xMtoMaxContantate := DM1.cdsQry1.FieldByName('TIPCREMMAX').AsFloat;
  xMtoMinContantate := DM1.cdsQry1.FieldByName('TIPCREMMIN').AsFloat;
  xPorcContantate := DM1.cdsQry1.FieldByName('PMTOLIQ').AsFloat;
  //** Flat
  If Length(TRIM(DM1.cdsQry1.FieldByName('TIPCREFLAT').AsString))=0 Then
   Flat:=0
  Else
   Flat:= (DM1.cdsQry1.FieldByName('TIPCREFLAT').AsFloat/100);

  // Interes
  If Length(TRIM(DM1.cdsQry1.FieldByName('TIPCREINT').AsString))=0 Then
    Interes:=0
  Else
    Interes:= DM1.cdsQry1.FieldByName('TIPCREINT').AsFloat/100;
  // Interes + 1 para la fórmula
  If Length(TRIM(DM1.cdsTipCreA.FieldByName('TIPCREINT').AsString))=0 Then
    InteresM:=0
  Else
   InteresM:= Interes+1;

//  sbtnInserta.OnClick(sbtnInserta);
  If wBiene <> '1' then
   begin
    dbeMtoMax.text := FCaptaCuotas.edtSaldoCre.Text;
    Dm1.cdsQry2.Edit;
    Dm1.cdsQry2.FieldByName('CREMTOMAX01').AsString := FCaptaCuotas.wMtoCapRel;
   end;

  dbeMtoMax.OnExit(dbeMtoMax);

  xMarca := False;
  For I := 0 to (lbCreditos.Items.Count - 1) Do
   Begin
     If lbCreditos.Checked[I] then
      begin
       xMarca := True;
       Break;
      End;
  End;
  pnlRelacion.Enabled := xMarca;

//  If wbiene <> '1' then
//   begin
//    dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX01'));
//   end;
end;

procedure TFCapacidad.dbeMtoMaxExit(Sender: TObject);
var
 xI : Integer;
begin
  //** Debe de Estar todos los datos
  If ((Length(dbeMtoMax.text) > 0) and (StrToFloat(dbeMtoMax.text) > 0)) and
     ((Length(dbeInteres.text) > 0) and (StrToFloat(dbeInteres.text) > 0)) and
     ((Length(dbeFlat.text) > 0) and (StrToFloat(dbeFlat.text) > 0)) and
     ((Length(dbeCuotas.text) > 0) and (StrToFloat(dbeCuotas.text) > 0))  then
    begin
     dm1.cdsRelCapCuo.DisableControls;
     //** Si esta en blanco se pasa a Cero
     If dbeMtoMax.Text = '' then
      dbeMtoMax.Text := '0';

     //** verifica que el monto ingresado no sea menor al de la lista
     If StrToFloat(dbeMtoMax.text) < xMtoMinContantate then
      begin
       Showmessage('El monto NO puede ser Menor a :'+FloatToStrF(xMtoMinContantate,ffFixed,15,2));
       exit;
      end;

    If StrToFloat(dbePorc.text) > xPorcContantate then
     begin
      Showmessage('El Porcentaje NO puede ser Mayor a :'+FloatToStr(xPorcContantate));
      exit;
     end;

     //** Si esta en blanco se pasa a Cero
     If dbePorc.text = '' then
      dbePorc.text := '0';

     //** el porcentaje debe ser mayor a cero
     If StrToFloat(dbePorc.text) > 0 then
      begin
        //** verifica que el monto ingresado no sea mayor a la de la lista
        If StrToFloat(dbeMtoMax.text) <= xMtoMaxContantate then
         begin
          //** se carga varialbe
          MtoCredito := StrToFloat(dbeMtoMax.text);
          //** se borra la data que hubiera
          dm1.cdsRelCapCuo.First;
          while not dm1.cdsRelCapCuo.eof do
           dm1.cdsRelCapCuo.Delete;
          //** se reasigna el cronograma
          Cronograma;
          //** para 10 columnas, se empieza en la 5 porque esa es la posicion interna de
          //** la primera columna de MONTO
          For xI := 5 to 14 do
           begin
            xColumna := xI;
            //** se hallan los valores de los campos según el monto modificado
            case xI Of
             5 : dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX01'));
             6 : dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX02'));
             7 : dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX03'));
             8 : dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX04'));
             9 : dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX05'));
             10: dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX06'));
             11: dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX07'));
             12: dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX08'));
             13: dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX09'));
             14: dbgCabRel.OnFieldChanged(dbgCabRel,dm1.cdsQry2.FieldByName('CREMTOMAX10'));
            end;
           end;
          xColumna := 0;
         end
        else
         Showmessage('El monto NO puede ser mayor '+FloatToStrF(xMtoMaxContantate,ffFixed,15,2))
      end
     else
      Showmessage('El Valor del Porcentaje NO puede Menor o Igual a Cero');
     dm1.cdsRelCapCuo.EnableControls;
    end;
end;

procedure TFCapacidad.Cronograma;
var
 NroCuotas,xI : Integer;
 MtoCuota,InteresK,InteresE,FlatMto : Double;
begin
  dm1.cdsRelCapCuo.CancelUpdates;
  dm1.cdsRelCapCuo.Cancel;
  For xI := StrtoInt(Dm1.cdsQry1.FieldByName('TIPCRECMIN').AsString) to StrtoInt(dbeCuotas.Text) do
   begin
    //Número de Cuotas
    NroCuotas:= xI;
    // Calculando el Monto del Flat
    FlatMto:= (Flat*MtoCredito)/NroCuotas;
    // Elevando a la potencia n para: (1+I)
    InteresE:= Power(InteresM,NroCuotas);
    // Calculando : [(1+I )]-1
    InteresK:= InteresE-1;
    // Calculando el Monto de la Cuota
    MtoCuota:= dm1.FRound((Interes*((InteresE)/(InteresK))*MtoCredito)+(FlatMto),15,2);

    //** Insert Nuevo registro Para CRE118 (cdsQRY2)
    dm1.cdsRelCapCuo.Insert;
//    dm1.cdsRelCapCuo.FieldByName('TABLAPROID').AsString :=xTablaPro;
    dm1.cdsRelCapCuo.FieldByName('CRENROCUO').AsInteger := NroCuotas;
    dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat   := MtoCuota;
    dm1.cdsRelCapCuo.FieldByName('USUARIO').AsString    := dm1.wUsuario;
{    dm1.cdsRelCapCuo.FieldByName('CAMPO01').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.FieldByName('CAMPO02').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.FieldByName('CAMPO03').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.FieldByName('CAMPO04').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.FieldByName('CAMPO05').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.FieldByName('CAMPO06').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.FieldByName('CAMPO07').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.FieldByName('CAMPO08').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.FieldByName('CAMPO09').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.FieldByName('CAMPO10').AsString    := dm1.wUsuario;
    dm1.cdsRelCapCuo.post;
}
   end;
  dbgRelacion.DataSource := dm1.dsRelCapCuo;
end;

procedure TFCapacidad.FormActivate(Sender: TObject);
var
 xSql : String;
begin
{ NO BORRAR, SE PUEDE USAR MAS ADELANTE
 //** Se verifica que tipo de Usuario es
  If Dm1.wAdmin = 'P' then
   begin
   Z2sbtnGraba.enabled := True;
    Z2sbtnBusca.enabled := True;
    Z2sbtnReport.enabled := True;
    pnlDatos.enabled := True;
   end
  else
   begin
    Z2sbtnBusca.enabled := True;
    Z2sbtnReport.enabled := True;
   end;
}

//  xTablaPro := DM1.StrZero(DM1.MaxSQL('CRE118','TABLAPROID',''),3);

  pnlSubCab.Enabled := wBiene = '1';
  dbePorc.Enabled := wBiene = '1';
  dbeMtoMax.Enabled := wBiene = '1';

  //** cargo las tablas para la capacidad
  xCiades :=  DM1.DisplayDescrip('prvSQL','TGE101','CIADES','CNTCONSOL=''S''','CIADES');
  xArea   :=  DM1.DisplayDescrip('prvSQL','CRE117','AREADES','MODULOID=''COB''','AREADES');
  xSql := 'SELECT * FROM CRE118 '; //WHERE USUARIO='+quotedstr(Dm1.wUsuario);
  dm1.cdsQry2.Close;
  dm1.cdsQry2.DataRequest(xSql);
  dm1.cdsQry2.Open;
  while not dm1.cdsQry2.eof do
   dm1.cdsQry2.Delete;

  xSql := 'SELECT * FROM CRE119 ';//WHERE USUARIO='+quotedstr(Dm1.wUsuario);
  dm1.cdsRelCapCuo.Close;
  dm1.cdsRelCapCuo.DataRequest(xSql);
  dm1.cdsRelCapCuo.Open;
  while not dm1.cdsRelCapCuo.eof do
   dm1.cdsRelCapCuo.Delete;

  //** seteo los campos
  dbgCabRel.Selected.clear;
  dbgCabRel.Selected.Add('CREMTOMAX01'#9'7'#9'MONTO');
  dbgCabRel.Selected.Add('CREMTOMAX02'#9'7'#9'MONTO');
  dbgCabRel.Selected.Add('CREMTOMAX03'#9'7'#9'MONTO');
  dbgCabRel.Selected.Add('CREMTOMAX04'#9'7'#9'MONTO');
  dbgCabRel.Selected.Add('CREMTOMAX05'#9'7'#9'MONTO');
  dbgCabRel.Selected.Add('CREMTOMAX06'#9'7'#9'MONTO');
  dbgCabRel.Selected.Add('CREMTOMAX07'#9'7'#9'MONTO');
  dbgCabRel.Selected.Add('CREMTOMAX08'#9'7'#9'MONTO');
  dbgCabRel.Selected.Add('CREMTOMAX09'#9'7'#9'MONTO');
  dbgCabRel.Selected.Add('CREMTOMAX10'#9'7'#9'MONTO');
  dbgCabRel.DataSource := dm1.dsQry2;

  dbgRelacion.Selected.clear;
  dbgRelacion.Selected.Add('CRENROCUO'#9'2'#9'# ~Cuota');
  dbgRelacion.Selected.Add('CREMTOCUO'#9'8'#9'Monto ~Cuota');
  dbgRelacion.Selected.Add('CAMPO01'#9'7'#9'O');
  dbgRelacion.Selected.Add('CAMPO02'#9'7'#9'O');
  dbgRelacion.Selected.Add('CAMPO03'#9'7'#9'O');
  dbgRelacion.Selected.Add('CAMPO04'#9'7'#9'O');
  dbgRelacion.Selected.Add('CAMPO05'#9'7'#9'O');
  dbgRelacion.Selected.Add('CAMPO06'#9'7'#9'O');
  dbgRelacion.Selected.Add('CAMPO07'#9'7'#9'O');
  dbgRelacion.Selected.Add('CAMPO08'#9'7'#9'O');
  dbgRelacion.Selected.Add('CAMPO09'#9'7'#9'O');
  dbgRelacion.Selected.Add('CAMPO10'#9'7'#9'O');
  dbgRelacion.DataSource := dm1.dsRelCapCuo;

  If not pnlSubCab.Enabled then
   begin
    dblcTipo.text := FCaptaCuotas.wTipasoid;
   end;
end;

//** Esto es para evitar que se inserte un registro al llegar al último
procedure TFCapacidad.dbgCabRelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DOWN) then
  begin
   Dm1.cdsQry2.DisableControls ;
   Dm1.cdsQry2.next;
   if Dm1.cdsQry2.EOF then
    Key := 0
   else
    Dm1.cdsQry2.Prior ;
   Dm1.cdsQry2.EnableControls ;
  end ;
end;

procedure TFCapacidad.dbgCabRelFieldChanged(Sender: TObject;
  Field: TField);
var
 xValor : Double;
 Columna : Integer;
begin
   If xColumna = 0 then
    Columna := dbgCabRel.SelectedField.FieldNO
   else
    Columna := xColumna;
    xValor := 0;
    case Columna of
     5 : begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
     6 : begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
     7 : begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
     8 : begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
     9 : begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
     10: begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
     11: begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
     12: begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
     13: begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
     14: begin
          xValor := Field.AsFloat;
          LimpiaData(IntToStr(Columna-4));
         end;
    end;

   dm1.cdsRelCapCuo.DisableControls;
   dm1.cdsRelCapCuo.First;
    while not dm1.cdsRelCapCuo.Eof do
     begin
      If xValor > 0 then
       begin
         If round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)
             <= StrToFloat(dbePorc.Text) then
          begin
           dm1.cdsRelCapCuo.Edit;
           If Columna = 5 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO01').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
           If Columna = 6 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO02').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
           If Columna = 7 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO03').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
           If Columna = 8 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO04').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
           If Columna = 9 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO05').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
           If Columna = 10 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO06').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
           If Columna = 11 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO07').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
           If Columna = 12 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO08').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
           If Columna = 13 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO09').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
           If Columna = 14 then
            begin
             dm1.cdsRelCapCuo.FieldByName('CAMPO10').AsString := 'S  '+
                IntToStr(round((dm1.cdsRelCapCuo.FieldByName('CREMTOCUO').AsFloat / xValor) * 100)) +' %';;
            end;
          end;
       end;
      dm1.cdsRelCapCuo.next;
     end;
   dm1.cdsRelCapCuo.EnableControls;
end;

procedure TFCapacidad.dbgRelacionCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 if (Field.FieldName = 'CRENROCUO') or (Field.FieldName = 'CREMTOCUO') then
  begin
   (Sender as TwwDBGrid).Canvas.Brush.Color := clMenu;
   AFont.Color := clBlack;
   if (Highlight) then ABrush.Color := clWindow;
  end;

 //** Se verifica por cada campo para que pinte por columna, si se pone todo
 //** en un If separado por OR pinta todo y ese efecto no es lo que se quiere
 if (Field.FieldName = 'CAMPO01')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO01').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1; // verde
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB; //$00E1E1FF; // rojo
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

 if (Field.FieldName = 'CAMPO02')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO02').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1;
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB;; //$00E1E1FF;
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

 if (Field.FieldName = 'CAMPO03')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO03').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1;
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB; //$00E1E1FF;
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

 if (Field.FieldName = 'CAMPO04')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO04').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1;
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB; //$00E1E1FF;
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

 if (Field.FieldName = 'CAMPO05')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO05').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1;
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB; //$00E1E1FF;
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

 if (Field.FieldName = 'CAMPO06')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO06').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1;
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB; //$00E1E1FF;
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

 if (Field.FieldName = 'CAMPO07')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO07').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1;
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB; //$00E1E1FF;
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

 if (Field.FieldName = 'CAMPO08')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO08').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1;
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB; //$00E1E1FF;
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

 if (Field.FieldName = 'CAMPO09')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO09').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1;
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB; //$00E1E1FF;
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

 if (Field.FieldName = 'CAMPO10')  then
  begin
   if Copy((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CAMPO10').AsString,1,1) = 'S' then
     begin
      (Sender as TwwDBGrid).Canvas.Brush.Color := $00E1FFE1;
      AFont.Color := clBlue;
      if (Highlight) then ABrush.Color := clWindow;
     end
   else
    begin
     (Sender as TwwDBGrid).Canvas.Brush.Color := $000000BB; //$00E1E1FF;
     AFont.Color := clBlack;
     if (Highlight) then ABrush.Color := clWindow;
    end;
  end;

end;

procedure TFCapacidad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm1.cdsQry2.Close;
//  dm1.cdsRelCapCuo.Close;
  Dm1.cdsListaCreA.Filter := '';
  Dm1.cdsListaCreA.Filtered := False;
//  Dm1.cdsListaCreA.Close;
end;

procedure TFCapacidad.dbeMtoMaxKeyPress(Sender: TObject; var Key: Char);
begin
 If Key In [' ','A'..'Z','a'..'z',
            '°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@',
            '¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''',
            '-','_'] Then
    Key :=#0;
end;

procedure TFCapacidad.LimpiaData(pColumna: String);
begin
  dm1.cdsRelCapCuo.DisableControls;
  dm1.cdsRelCapCuo.First;
  While Not dm1.cdsRelCapCuo.Eof do
   begin
    dm1.cdsRelCapCuo.Edit;
    dm1.cdsRelCapCuo.FieldByName('CAMPO'+Dm1.StrZero(pColumna,2)).AsString := '';
    dm1.cdsRelCapCuo.next;
   end;
  dm1.cdsRelCapCuo.EnableControls;
end;

procedure TFCapacidad.dbgCabRelCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   (Sender as TwwDBGrid).Canvas.Brush.Color := clMenu;
   AFont.Color := clBlack;
   if (Highlight) then ABrush.Color := clWindow;
end;

//** Por Ahora no se usara
{
procedure TFCapacidad.sbtnInsertaClick(Sender: TObject);
var
 xSql : String;
begin
  dm1.cdsQry2.Insert;
  dm1.cdsQry2.FieldByName('TABLAPROID').Asstring := xTablaPro;
  dm1.cdsQry2.FieldByName('LISTAID').Asstring     := DM1.cdsListaCreAd.FieldByName('LISTAID').AsString;
  dm1.cdsQry2.FieldByName('CONDCREDID').AsString := DM1.cdsListaCreAd.FieldByName('CONDCREDID').AsString;
  dm1.cdsQry2.FieldByName('CRENROCUO').AsString  := dbeCuotas.text;
  dm1.cdsQry2.FieldByName('USUARIO').AsString    := dm1.wUsuario;
  dm1.cdsQry2.FieldByName('CREMTOFLAT').AsString    := dbeFlat.text;
  dm1.cdsQry2.FieldByName('CREMTOINT').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX01').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX02').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX03').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX04').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX05').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX06').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX07').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX08').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX09').AsString    := dbeInteres.text;
  dm1.cdsQry2.FieldByName('CREMTOMAX10').AsString    := dbeInteres.text;
  dm1.cdsQry2.Post;
end;
}

procedure TFCapacidad.Z2sbtnReportClick(Sender: TObject);
begin
   Dm1.cdsQry2.First;
   dm1.cdsRelCapCuo.first;
   rptCapacidad.Template.FileName := wRutaRpt+'\Capacidad.RTM';
   rptCapacidad.template.LoadFromFile ;
   ppBDEPipeline1.DataSource := Dm1.dsQry2;
   ppBDEPipeline2.DataSource := dm1.dsRelCapCuo;
   lblCiades.Caption := xCiades;
   lblArea.Caption := xArea;
   lblTitulo.Caption := 'TABLA PROPUESTA RELACION CUOTA INGRESO '+edtTipoAso.text;
   lblMtoMax.Caption := dbeMtoMax.TExt;
   rptCapacidad.Print;
end;

end.

