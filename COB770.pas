unit COB770;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, CheckLst, Mask, wwdbedit,
  ExtCtrls,db,Mant, ppBands, ppClass, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppCtrls, ppPrnabl, ppStrtch, ppRegion,
  ppTypes, ppSubRpt, ppDBBDE, Grids, Wwdbigrd, Wwdbgrid,ppViewr, ppVar;

type
  TFHistorial = class(TForm)
    Panel1: TPanel;
    lblAso: TLabel;
    lblAsoapenom: TLabel;
    lblTCambio: TLabel;
    dbeApePat: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    dbeAsoid: TwwDBEdit;
    dbeTCambio: TwwDBEdit;
    lblCodMod: TLabel;
    lbcopia1: TListBox;
    lbCredid: TListBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    lbHistorial: TListBox;
    lblTitulo: TLabel;
    lblTotal: TLabel;
    Z2sbtnPrint: TfcShapeBtn;
    rptHistorial: TppReport;
    dbpData3: TppBDEPipeline;
    dbpData2: TppBDEPipeline;
    dbpData1: TppBDEPipeline;
    chbTodos: TCheckBox;
    rgImprime: TRadioGroup;
    ppHeaderBand1: TppHeaderBand;
    ppRegion3: TppRegion;
    ppDetailBand1: TppDetailBand;
    ppRegion1: TppRegion;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppRegion2: TppRegion;
    ppDetailBand2: TppDetailBand;
    ppSubReport2: TppSubReport;
    crptSub2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppRegion4: TppRegion;
    ppDetailBand3: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel26: TppLabel;
    ppDBText26: TppDBText;
    ppLine3: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLine4: TppLine;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    Label6: TLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel24: TppLabel;
    ppLabel21: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLabel20: TppLabel;
    ppLabel23: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel29: TppLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeApePatExit(Sender: TObject);
    procedure lbHistorialDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure lbHistorialDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Z2sbtnPrintClick(Sender: TObject);
    procedure Z2sbtnSalirClick(Sender: TObject);
    procedure chbTodosClick(Sender: TObject);
    procedure rptHistorialPreviewFormCreate(Sender: TObject);
    procedure rgImprimeClick(Sender: TObject);
    procedure ppChildReport1StartPage(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    xBool : Boolean;
    xEstado6,xEstid6,xEstado5,xEstid5,xEstado1,xEstid1,xEstado2,xEstid2,xEstado3,xEstid3,xEstado4,xEstid4 : String;
    procedure CargaCuotas;
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
    procedure ActivaData(pCredito : STring);
  public
    { Public declarations }
    wBoton : String;
    wFWidth,wFLeft,wFTop,wWidth,wVentanas : Integer;
    //** pjsv - para que acumule el total de cuotas selecionas x ventana
    wTotal1,wTotal2,wTotal3,wTotal4,wTotal5,
    wTotal6,wTotal7,wTotal8,wTotal9,wTotal10 : Double;
    wCreditos : Array [1..10] of String;
  end;

var
  FHistorial: TFHistorial;
  xVentana : Array [1..10] of String;

implementation

uses COBDM1, COB001, COB790;

{$R *.DFM}

procedure TFHistorial.CargaCuotas;
var
 xSql : String;
begin
   //** pjsv - limpia los listbox y carga los creditos del asociado
   lbHistorial.Clear;
//   lbCopia1.Clear;
   lbCredid.Clear;
   If not xBool Then
    xSql := 'SELECT * FROM CRE303,CRE113 WHERE ASOID='+quotedstr(dbeAsoid.text)+
           ' AND FLGCUENTA='+quotedstr('S')+
           ' AND ESTID=CREESTID'+
           ' ORDER BY CREANOMES,CREDID'
   else
    xSql := 'SELECT * FROM CRE303,CRE113 WHERE ASOID='+quotedstr(dbeAsoid.text)+
           ' AND ESTID=CREESTID'+
           ' ORDER BY CREANOMES,CREDID';

   DM1.cdsConsulta.IndexFieldNames := '';
   DM1.cdsConsulta.Filter := '';
   DM1.cdsConsulta.Filtered := False;
   DM1.cdsConsulta.close;
   DM1.cdsConsulta.DataRequest(xSql);
   DM1.cdsConsulta.Open;
   DM1.cdsConsulta.First;
   //** pjsv - asigna los items para los listbox
   While not DM1.cdsConsulta.Eof do
    begin
      lbHistorial.Items.Add(DM1.cdsConsulta.FieldByName('CREDID').AsString+'---'+
                             DM1.cdsConsulta.FieldByName('CREFOTORG').AsString+'---'+
                             FloatToStrF(DM1.cdsConsulta.FieldByName('CREMTOSOL').AsFloat,fffixed,15,2)+' '+DM1.cdsConsulta.FieldByName('TMONABR').AsString+'---'+
                             DM1.cdsConsulta.FieldByName('CRENUMCUO').AsString+'---'+
                             DM1.cdsConsulta.FieldByName('CREESTID').AsString+'  '+
                             DM1.cdsConsulta.FieldByName('CREESTADO').AsString+'---'+
                             DM1.cdsConsulta.FieldByName('CRENEWID').AsString);
//      lbCopia1.Items.Add(DM1.cdsConsulta.FieldByName('CREESTID').AsString);
      lbCredid.Items.Add(DM1.cdsConsulta.FieldByName('CREDID').AsString);
     DM1.cdsConsulta.next;
    end;
   lbHistorial.ItemIndex := 0;
end;

//** pjsv - levatna el filtro
procedure TFHistorial.LevantaFiltro(xCampo : String);
begin
  DM1.cdsAsoX.Close;
  FPrincipal.Mtx  := TMant.Create(Self);
  try
    FPrincipal.Mtx.Admin           := DM1.wAdmin;
    FPrincipal.Mtx.User            := DM1.wUsuario;
    FPrincipal.Mtx.TableName       := 'APO201';
    FPrincipal.Mtx.ClientDataSet   := DM1.cdsAsoX;
    FPrincipal.Mtx.ControlGridDisp := FPrincipal.cgdPrincipal;
    FPrincipal.Mtx.Filter          := xCampo;
    FPrincipal.Mtx.DComC           := DM1.DCOM1;
    FPrincipal.Mtx.Module          := dm1.wModulo;
    FPrincipal.Mtx.Registros       := 30;
    FPrincipal.Mtx.Titulo 	   := 'Asociados';
    FPrincipal.Mtx.SectionName	   := 'AsociadosX';
    FPrincipal.Mtx.FileNameIni     := '\SOLCRE.INI';
    FPrincipal.Mtx.OnEdit          := OnEditAso;
    FPrincipal.Mtx. Execute;
  Finally
    DM1.cdsAsoX.Close;
    FPrincipal.Mtx.Free;
   End;
  DM1.cdsAsoX.Close;

end;

procedure TFHistorial.OnEditAso(Sender: TObject; MantFields: TFields);
Begin
  //** pjsv - solo cuando viene del Filtro
  dbeApePat.text := DM1.cdsAsoX.FieldByName('ASOAPENOM').AsString;
  dbeAsoid.text := DM1.cdsAsoX.FieldByName('ASOID').AsString;
  dbeNombre.text := DM1.cdsAsoX.FieldByName('ASOCODMOD').AsString;
  CargaCuotas;
  TMant(Sender).FMant.Close;
End;


procedure TFHistorial.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;


procedure TFHistorial.dbeApePatExit(Sender: TObject);
var
 xSql : String;
begin
  If dbeApePat.Text <> '' then
   begin
    //** pjsv -  se busca al asociado
    xSQL:='SELECT * FROM APO201 '+
          'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%'));
    DM1.cdsAsoX.Close;
    DM1.cdsAsoX.DataRequest(xSql);
    DM1.cdsAsoX.Open;
    If DM1.cdsAsoX.RecordCount = 1 then
      begin
       dbeApePat.text := DM1.cdsAsoX.FieldByName('ASOAPENOM').AsString;
       dbeAsoid.text := DM1.cdsAsoX.FieldByName('ASOID').AsString;
       dbeNombre.text := DM1.cdsAsoX.FieldByName('ASOCODMOD').AsString;
       //** pjsv - levanta los créditos que tuviera
       CargaCuotas;
      end
    else
     //** pjsv - levanta el filtro para buscar al asociado
     LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%')));
   end;
end;

procedure TFHistorial.lbHistorialDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
 with (Control as TListBox) do
  begin
//    if copy(lbHistorial.Items.Strings[Index],Length(lbHistorial.Items.Strings[Index])-9,10) = 'POR COBRAR' then
   if (copy(lbHistorial.Items.Strings[Index],Length(lbHistorial.Items.Strings[Index])-8,2) = xEstid2) or
      (copy(lbHistorial.Items.Strings[Index],Length(lbHistorial.Items.Strings[Index])-8,2) = xEstid4) then
     begin
      //** pjsv - si tiene el focus
      If State = [odDefault] then
       Canvas.Font.Color:=clRed;
      //** pjsv - si tiene el focus
      If State = [odFocused] then
       Canvas.Font.Color:=clWhite;
      //** pjsv - si esta selecionada
      If State = [odSelected] then
       Canvas.Font.Color:=clWhite;
      If State = [] then
       Canvas.Font.Color:=clRed;
     end
    else
     if (copy(lbHistorial.Items.Strings[Index],Length(lbHistorial.Items.Strings[Index])-8,2) = xEstid1) or
        (copy(lbHistorial.Items.Strings[Index],Length(lbHistorial.Items.Strings[Index])-8,2) = xEstid3) then
      begin
       //** pjsv - si tiene el focus
       If State = [odDefault] then
        Canvas.Font.Color:=clBlue;
       //** pjsv - si tiene el focus
       If State = [odFocused] then
        Canvas.Font.Color:=clWhite;
       //** pjsv - si esta selecionada
       If State = [odSelected] then
        Canvas.Font.Color:=clWhite;
       If State = [] then
        Canvas.Font.Color:=clBlue;
      end;

    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left,Rect.Top,Items[Index]);
  end;
end;

procedure TFHistorial.lbHistorialDblClick(Sender: TObject);
var
 xZ,xI : Integer;
 xOtro,xTrue : Boolean;
begin
 //** pjsv - maximiza la ventana
 Z2sbtnPrint.enabled := False;
 FHistorial.WindowState := wsMaximized;
 FHistorial.Width := Screen.Width;
 FHistorial.Top := 0;
 FHistorial.left := 0;
 lbHistorial.Width := FHistorial.Width - 20;
 //** pjsv - setea el itemindex de los listbox auxiliares
// lbCopia1.ItemIndex := lbHistorial.ItemIndex;
 lbCredid.ItemIndex := lbHistorial.ItemIndex;
 //** pjsv - por defecto
 xTrue := True;
 For xI := 1 to 10 do
  begin
   If wCreditos[xI] = lbCredid.Items.Strings[lbCredid.ItemIndex] then
    begin
     //** pjsv - si ya existe el crédito levantado
     xTrue := False;
     Break;
    end;
  end;

 //** pjsv - si es True levanta la ventana hija
 If xTrue then
  begin
{   FDetHistorial := TFDetHistorial.Create(Self);
   FDetHistorial.Parent := FHistorial;
   FDetHistorial.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
   FDetHistorial.wAsoid := dbeAsoid.text;
   FDetHistorial.wAsoapenom := dbeApePat.text;
}
   //** controla el total de ventana abiertas
   If wVentanas < 10 then
    begin
     //** pjsv - aumenta en uno la variable
     wVentanas := wVentanas + 1;
     For xI := 1 to 10 do
      begin
       If wCreditos[xI] = '' then
        begin
         //** pjsv - se carga el crédito al arreglo
         wCreditos[xI] := lbCredid.Items.Strings[lbCredid.ItemIndex];
         xZ := 0;
         xOtro := True;
         For xZ := 1 to 10 do
          begin
           If xventana[xZ] = IntToStr(xI) then
            xOtro := False;
          end;
         If xOtro then
          begin
           case xI of
            1 : begin
                 FDetHistorial01 := TFDetHistorial.Create(Self);
                 FDetHistorial01.Parent := FHistorial;
                 FDetHistorial01.Caption := 'Detalle de Crédito -> '+FDetHistorial01.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial01.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial01.wAsoid := dbeAsoid.text;
                 FDetHistorial01.wAsoapenom := dbeApePat.text;
                 FDetHistorial01.Show;
                end;
            2 : begin
                 FDetHistorial02 := TFDetHistorial.Create(Self);
                 FDetHistorial02.Parent := FHistorial;
                 FDetHistorial02.Caption := 'Detalle de Crédito -> '+FDetHistorial02.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial02.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial02.wAsoid := dbeAsoid.text;
                 FDetHistorial02.wAsoapenom := dbeApePat.text;
                 FDetHistorial02.Show;
                end;
            3 : begin
                 FDetHistorial03 := TFDetHistorial.Create(Self);
                 FDetHistorial03.Caption := 'Detalle de Crédito -> '+FDetHistorial03.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial03.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial03.wAsoid := dbeAsoid.text;
                 FDetHistorial03.wAsoapenom := dbeApePat.text;
                 FDetHistorial03.Show;
                end;
            4 : begin
                 FDetHistorial04 := TFDetHistorial.Create(Self);
                 FDetHistorial04.Caption := 'Detalle de Crédito -> '+FDetHistorial04.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial04.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial04.wAsoid := dbeAsoid.text;
                 FDetHistorial04.wAsoapenom := dbeApePat.text;
                 FDetHistorial04.Show;
                end;
            5 : begin
                 FDetHistorial05 := TFDetHistorial.Create(Self);
                 FDetHistorial05.Caption := 'Detalle de Crédito -> '+FDetHistorial05.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial05.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial05.wAsoid := dbeAsoid.text;
                 FDetHistorial05.wAsoapenom := dbeApePat.text;
                 FDetHistorial05.Show;
                end;
            6 : begin
                 FDetHistorial06 := TFDetHistorial.Create(Self);
                 FDetHistorial06.Caption := 'Detalle de Crédito -> '+FDetHistorial06.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial06.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial06.wAsoid := dbeAsoid.text;
                 FDetHistorial06.wAsoapenom := dbeApePat.text;
                 FDetHistorial06.Show;
                end;
            7 : begin
                 FDetHistorial07 := TFDetHistorial.Create(Self);
                 FDetHistorial07.Caption := 'Detalle de Crédito -> '+FDetHistorial07.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial07.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial07.wAsoid := dbeAsoid.text;
                 FDetHistorial07.wAsoapenom := dbeApePat.text;
                 FDetHistorial07.Show;
                end;
            8 : begin
                 FDetHistorial08 := TFDetHistorial.Create(Self);
                 FDetHistorial08.Caption := 'Detalle de Crédito -> '+FDetHistorial08.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial08.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial08.wAsoid := dbeAsoid.text;
                 FDetHistorial08.wAsoapenom := dbeApePat.text;
                 FDetHistorial08.Show;
                end;
            9 : begin
                 FDetHistorial09 := TFDetHistorial.Create(Self);
                 FDetHistorial09.Caption := 'Detalle de Crédito -> '+FDetHistorial09.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial09.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial09.wAsoid := dbeAsoid.text;
                 FDetHistorial09.wAsoapenom := dbeApePat.text;
                 FDetHistorial09.Show;
                end;
            10: begin
                 FDetHistorial10 := TFDetHistorial.Create(Self);
                 FDetHistorial10.Caption := 'Detalle de Crédito -> '+FDetHistorial10.wAsoapenom+' VENTANA - '+DM1.strzero(IntToStr(xI),2);
                 FDetHistorial10.wCredid := lbCredid.Items.Strings[lbCredid.ItemIndex];
                 FDetHistorial10.wAsoid := dbeAsoid.text;
                 FDetHistorial10.wAsoapenom := dbeApePat.text;
                 FDetHistorial10.Show;
                end;
           end;
            xVentana[xI] := IntToStr(xI);
          end;
         Break;
        end;
      end;
     //**  pjsv - levanta la ventana hija
//     FDetHistorial.Show;
    end
   else
    ShowMessage('Máximo 10 Ventanas');
  end
 else
   ShowMessage('El Detalle del Crédito ya esta Activo');
end;

procedure TFHistorial.FormShow(Sender: TObject);
var
 xFecha : String;
 xI : Integer;
begin
  //** CArgo los estados que utilizare
  //** NO PAGADO
  xEstado5 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
  xEstid5  := DM1.cdsQry.FieldByName('ESTID').AsString;

  //** CANCELADO
  xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Y'),'ESTDES');
  xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** POR COBRAR
  xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
  xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** PARCIAL
  xEstado4 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
  xEstid4  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** PAGADO
  xEstado3 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('C'),'ESTDES');
  xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;

  //** EN PROCESO DE COBRANZA
  xEstado6 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('3'),'ESTDES');
  xEstid6  := DM1.cdsQry.FieldByName('ESTID').AsString;


  wTotal1 := 0;  wTotal2 := 0;  wTotal3 := 0;  wTotal4 := 0;  wTotal5 := 0;
  wTotal6 := 0;  wTotal7 := 0;  wTotal8 := 0;  wTotal9 := 0;  wTotal10 := 0;
  //** Blanquea el arreglo
   For xI := 1 to 10 do
    begin
     wCreditos[xI] := '';
    end;
    //** pjsv - carga la variable d el ancho de la ventana
   wWidth := lbHistorial.Width;
   //** pjsv - habilita el control, me indica si viene del tool
   dbeApePat.Enabled := wBoton = '1';
   xFecha := GetSystemTimeUTC;
   DM1.RecUltTipoCambio(xFecha);
   dbeTCambio.Text := dm1.cdsQry.FieldByName(dm1.wTCCompra).AsString;
   If not dbeApePat.Enabled Then
    begin
     dbeApePat.DataSource := dm1.dsSolicitud;
     dbeApePat.DataField  := 'ASOAPENOM';
     dbeNombre.DataSource := dm1.dsSolicitud;
     dbeNombre.DataField  := 'ASOCODMOD';
     dbeAsoid.DataSource  := dm1.dsSolicitud;
     dbeAsoid.DataField   := 'ASOID';
     //** pjsv - levanta los créditos que tuviera
     CargaCuotas;
    end;

   //** pjsv - inicializa en cero el número de ventanas
   wVentanas := 0;
   wFWidth := FHistorial.Width;
   wFLeft  := FHistorial.Left;
   wFTop   := FHistorial.Top;
end;

procedure TFHistorial.Z2sbtnPrintClick(Sender: TObject);
begin
   If length(dbeApePat.text) > 0 then
    rgImprime.Visible := True;
end;

procedure TFHistorial.chbTodosClick(Sender: TObject);
begin
   xBool := chbTodos.Checked;
   If Length(dbeApePat.text) > 0 then
    CargaCuotas;
end;

procedure TFHistorial.rptHistorialPreviewFormCreate(Sender: TObject);
begin
{  rptHistorial.PreviewForm.WindowState:=WsMaximized;
  TppViewer(rptHistorial.PreviewForm.Viewer).ZoomSetting:=zsPageWidth;}
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFHistorial.rgImprimeClick(Sender: TObject);
var
 xCredid : String;
 xZ,xI : Integer;
 xCreditos : Array [1..100] of string;
begin
  try
   For xZ := 1 to  100 do
    xCreditos[xZ] := '';

   case rgImprime.ItemIndex of
    0 : begin
         xZ := 1;
          For xI := 0 to lbHistorial.Items.Count -1 do
            begin
             If lbHistorial.Selected[xI] then
              begin
               xCredid := quotedstr(lbCredid.Items.Strings[xI]);
               xCreditos[xZ] := xCredid;
              end;
             xZ := xZ +1;
            end;
          DM1.cdsConsulta.Filter := 'CREDID='+xCredid;
          DM1.cdsConsulta.Filtered := True;
        end;
    1 : begin
         DM1.cdsConsulta.DisableControls;
         DM1.cdsConsulta.First;
         xZ := 1;
         while not DM1.cdsConsulta.eof do
          begin
           If xCredId = '' then
            begin
             xCredid := quotedstr(DM1.cdsConsulta.FieldByName('CREDID').AsString);
             xCreditos[xZ] := xCredid;
            end
           else
            begin
             xCredid := xCredid + ','+ quotedstr(DM1.cdsConsulta.FieldByName('CREDID').AsString);
             xCreditos[xZ] := quotedstr(DM1.cdsConsulta.FieldByName('CREDID').AsString);
            end;
           xZ := xZ + 1;
           DM1.cdsConsulta.next;
          end;
         DM1.cdsConsulta.EnableControls;
         dm1.cdsConsulta.IndexFieldNames := 'CREDID';
         DM1.cdsConsulta.First;
        end;
   end;

   xSql := 'SELECT * FROM CRE301 WHERE ASOID='+quotedstr(dbeAsoid.text)+
           ' AND CREDID in ('+xCredid+')';
   dm1.cdsQry1.close;
   dm1.cdsQry1.datarequest(xSql);
   dm1.cdsQry1.open;
   dm1.cdsQry1.IndexFieldNames := 'CREDID';

   case rgImprime.ItemIndex of
    0 : begin
         ActivaData(xCredid);
         rptHistorial.Template.FileName := wRutaRpt+'\HistorialUno.RTM';
        end;
    1 : begin
         ActivaData(quotedstr(DM1.cdsConsulta.FieldByName('CREDID').AsString));
         rptHistorial.Template.FileName := wRutaRpt+'\Historial.RTM';
        end;
   end;

   rptHistorial.template.LoadFromFile ;
   rptHistorial.Print;


  finally
   rptHistorial.Stop;
   dm1.cdsConsulta.IndexFieldNames  := '';
   DM1.cdsQry1.MasterSource := nil;
   DM1.cdsQry1.MasterFields := '';
   DM1.cdsQry2.MasterSource := nil;
   DM1.cdsQry2.MasterFields := '';
   dm1.cdsQry1.IndexFieldNames := '';
   dm1.cdsQry2.IndexFieldNames := '';
   rgImprime.Visible := False;
   rgImprime.itemindex := -1;
   DM1.cdsConsulta.Filter := '';
   DM1.cdsConsulta.Filtered := False;
  end;
end;

procedure TFHistorial.Z2sbtnSalirClick(Sender: TObject);
begin
  FHistorial.Close;
end;

procedure TFHistorial.ppChildReport1StartPage(Sender: TObject);
begin
    ActivaData(quotedstr(DM1.cdsConsulta.FieldByName('CREDID').AsString));
end;

procedure TFHistorial.ActivaData(pCredito: STring);
var
 xpen,xpen1,xVend : Double;
begin
       xSql := 'SELECT CRE302.CREBLOQ,CRE302.CREDID,CRE302.CREANO,CRE302.CREMES,CRE302.CRECUOTA,CRE302.CREMTO,CRE302.CREMTOCOB,'+
            ' CRE302.CRECAPITAL,CRE302.CREMTOINT,CRE302.CREMTOFLAT,'+
            ' CRE302.CRESALDO,CRE302.CREMTOEXC,'+
            ' CASE WHEN LENGTH(CRE302.FOPERAC) > 0 THEN TO_CHAR(CRE302.FOPERAC,''DD/MM/YYYY'') '+
            ' ELSE TO_CHAR(CRE302.FOPERACTMP,''DD/MM/YYYY'') '+
            ' END FOPERAC,CRE302.CREESTADO,CRE302.TMONABR,'+
            ' CRE113.FLGSALDO,CRE113.FLGSUMA ,'+
            ' A.CREVENCIDAS,B.CREPENDT,C.MES,(nvl(A.CREVENCIDAS,0.00)+nvl(B.CREPENDT,0.00)) MTOAPAGAR'+
            ' ,(nvl(A.CREVENCIDAS,0.00)+nvl(D.CREPENDT1,0.00)) MTOAPAGARS ,nvl(D.CREPENDT1,0.00) CREPENDT1'+
            ' FROM CRE302,CRE113 ,'+
            ' (SELECT NVL(SUM((A.CREAMORT+A.CREINTERES+A.CREFLAT) - (A.CRECAPITAL+A.CREMTOINT+A.CREMTOFLAT)),0) CREVENCIDAS ,'+
            ' NVL(MAX(A.ASOID),'+quotedstr(dbeAsoid.text)+') ASOID ,NVL(MAX(A.CREDID),'+pCredito+') CREDID'+
            ' FROM CRE302 A'+
            ' WHERE A.ASOID='+quotedstr(dbeAsoid.text)+' AND A.CREDID in ('+pCredito+') AND'+
            ' (A.CREESTID = '+quotedstr(xEstid5)+' OR (A.CREESTID = '+quotedstr(xEstid4)+
            ' AND A.CREANO <= '+quotedstr(FloatToStr(xAnoSys))+' AND'+
            ' A.CREMES < '+quotedstr(FloatToStr(xMesSys))+'))) A,'+
            ' (SELECT SUM(B.CREMTO) CREPENDT ,'+
            ' NVL(MAX(B.ASOID),'+quotedstr(dbeAsoid.text)+') ASOID ,NVL(MAX(B.CREDID),'+pCredito+') CREDID'+
            ' FROM CRE302 B'+
            ' WHERE B.ASOID='+quotedstr(dbeAsoid.text)+' AND B.CREDID in ('+pCredito+') AND'+
            ' (B.CREESTID = '+quotedstr(xEstid2)+')) B,'+
            ' (SELECT'+
            ' NVL(C.ASOID,'+quotedstr(dbeAsoid.text)+') ASOID ,NVL(C.CREDID,'+pCredito+') CREDID,'+
            ' CASE WHEN C.CREMES = ''01'''+
            ' THEN ''NO INCLUYE CUOTA DE ENERO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''02'''+
            ' THEN ''NO INCLUYE CUOTA DE FEBRERO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''03'''+
            ' THEN ''NO INCLUYE CUOTA DE MARZO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''04'''+
            ' THEN ''NO INCLUYE CUOTA DE ABRIL POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''05'''+
            ' THEN ''NO INCLUYE CUOTA DE MAYO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''06'''+
            ' THEN ''NO INCLUYE CUOTA DE JUNIO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''07'''+
            ' THEN ''NO INCLUYE CUOTA DE JULIO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''08'''+
            ' THEN ''NO INCLUYE CUOTA DE AGOSTO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''09'''+
            ' THEN ''NO INCLUYE CUOTA DE SETIEMBRE POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''10'''+
            ' THEN ''NO INCLUYE CUOTA DE OCTUBRE POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''11'''+
            ' THEN ''NO INCLUYE CUOTA DE NOVIEMBRE POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''12'''+
            ' THEN ''NO INCLUYE CUOTA DE DICIEMBRE POR ESTAR EN PROCESO DE COBRANZA'''+
            ' END END'+
            ' END END END END END END END END END END MES FROM CRE302 C,'+
            ' (SELECT   max(Y.CREANO||Y.CREMES) ANOMES'+
            ' FROM CRE302 Y WHERE Y.ASOID='+quotedstr(dbeAsoid.text)+
            ' AND Y.CREDID in ('+pCredito+') AND'+
            ' (Y.CREESTID = '+quotedstr(xEstid6)+')) Y'+
            ' WHERE C.ASOID='+quotedstr(dbeAsoid.text)+' AND C.CREDID in ('+pCredito+') AND'+
            ' (C.CREESTID = '+quotedstr(xEstid6)+') AND C.CREANO||C.CREMES = Y.ANOMES) C,'+
            '(SELECT SUM(D.CREAMORT+D.CREFLAT) CREPENDT1 , NVL(MAX(D.ASOID),'+quotedstr(dbeAsoid.text)+') ASOID ,'+
            ' NVL(MAX(D.CREDID),'+pCredito+') CREDID FROM CRE302 D'+
            ' WHERE D.ASOID='+quotedstr(dbeAsoid.text)+
            ' AND D.CREDID in ('+pCredito+') AND (D.CREESTID = '+quotedstr(xEstid2)+')) D'+
            ' WHERE CRE302.ASOID='+quotedstr(dbeAsoid.text)+' AND CRE302.CREDID in ('+pCredito+') AND'+
            ' CREESTID=ESTID(+) AND'+
            ' CRE302.ASOID = A.ASOID(+) AND CRE302.CREDID = A.CREDID(+) AND'+
            ' CRE302.ASOID = B.ASOID(+) AND CRE302.CREDID = B.CREDID(+) AND'+
            ' CRE302.ASOID = C.ASOID(+) AND CRE302.CREDID = C.CREDID(+) AND'+
            ' CRE302.ASOID = D.ASOID(+) AND CRE302.CREDID = D.CREDID(+) '+
            ' ORDER BY CRE302.credid,CRE302.CREANO,CRE302.CREMES';

       dm1.cdsQry2.IndexFieldNames := '';
       dm1.cdsQry2.close;
       dm1.cdsQry2.datarequest(xSql);
       dm1.cdsQry2.open;
       dm1.cdsQry2.IndexFieldNames := 'CREDID;CRECUOTA';
       xSql := 'SELECT ASOID,CREDID,CREANO,CREMES,CREAMORT,CREINTERES,CREFLAT,'+
               'CRECAPITAL,CREMTOINT,CREMTOFLAT FROM CRE302 '+
               ' WHERE ASOID='+quotedstr(dbeAsoid.text)+
               ' AND CREDID in ('+pCredito+') AND CREBLOQ = ''S''';// AND'+
       dm1.cdsQry3.close;
       dm1.cdsQry3.datarequest(xSql);
       dm1.cdsQry3.open;

       dm1.cdsQry2.First;
       While not dm1.cdsQry2.eof do
        begin
         If (dm1.cdsQry2.FieldByName('CREBLOQ').AsString = 'S') OR
            (dm1.cdsQry2.FieldByName('CREANO').AsString <= '1995') then
          begin
           dm1.cdsQry2.Edit;
           dm1.cdsQry2.FieldByName('MTOAPAGARS').AsFloat := dm1.cdsQry2.FieldByName('MTOAPAGARS').AsFloat -
                                 (dm1.cdsQry2.FieldByName('CREPENDT1').AsFloat +
                                  dm1.cdsQry2.FieldByName('CREVENCIDAS').AsFloat);
          
           dm1.cdsQry2.FieldByName('CREPENDT').AsFloat := 0.00;
           dm1.cdsQry2.FieldByName('CREPENDT1').AsFloat := 0.00;
           dm1.cdsQry2.FieldByName('CREVENCIDAS').AsFloat := 0.00;
           If (dm1.cdsQry2.FieldByName('CREBLOQ').AsString = 'S') THEN
            dm1.cdsQry2.FieldByName('CREESTADO').AsString := 'BLOQUEADO';
          end;
          dm1.cdsQry2.next;
        end;

       //** esto es para usar el drill del subreporte
       dbpData1.DataSource := DM1.dsConsulta;
       dbpData2.DataSource := DM1.dsQry1;
       dbpData3.DataSource := DM1.dsQry2;

       DM1.cdsQry1.MasterSource := DM1.dsConsulta;
       DM1.cdsQry1.MasterFields := 'CREDID';

       DM1.cdsQry2.MasterSource := DM1.dsConsulta;
       DM1.cdsQry2.MasterFields := 'CREDID';
end;

procedure TFHistorial.FormActivate(Sender: TObject);
var
   xI : integer;
begin
   For xI := 1 to 10 do
    xventana[xI] := '';
end;

procedure TFHistorial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsConsulta.Filter   := '';
   DM1.cdsConsulta.Filtered := False;
   DM1.cdsConsulta.IndexFieldNames := '';
   DM1.cdsConsulta.Close;
   DM1.cdsAsoX.Filter   := '';
   DM1.cdsAsoX.Filtered := False;
   DM1.cdsAsoX.IndexFieldNames := '';
   DM1.cdsAsoX.Close;
   DM1.cdsQry1.Filter   := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry2.Filter   := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry3.Filter   := '';
   DM1.cdsQry3.Filtered := False;
   DM1.cdsQry3.IndexFieldNames := '';
   DM1.cdsQry3.Close;
end;

end.

