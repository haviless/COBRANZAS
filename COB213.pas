unit COB213;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdbedit,db,Mant, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  fcButton, fcImgBtn, fcShapeBtn;

type
  TFSeguimiento = class(TForm)
    lblNombre: TLabel;
    dbeApeNom: TwwDBEdit;
    dbecodmod: TwwDBEdit;
    lblCodMod: TLabel;
    dbgVencidas: TwwDBGrid;
    Bevel1: TBevel;
    dbgCuotas: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    pnlMarca: TPanel;
    dbgAccion: TwwDBGrid;
    dbgPeriodo: TwwDBGrid;
    dbgMarca: TwwDBGrid;
    lblAccion: TLabel;
    dbgRealizada: TwwDBGrid;
    lblRealizada: TLabel;
    sbtnRAceptar: TfcShapeBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeApeNomExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbecodmodExit(Sender: TObject);
    procedure dbgVencidasRowChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgAccionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPeriodoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgVencidasDblClick(Sender: TObject);
    procedure sbtnRAceptarClick(Sender: TObject);
  private
    { Private declarations }
    xAsoid,xTipoAsoA,xTipoAsoC,xEstid0,xEstado0 : String;
    procedure cargabusqueda;  //** BUSCA AL ASOCIADO
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
  public
    { Public declarations }
  end;

var
  FSeguimiento: TFSeguimiento;

implementation

uses COBDM1;

{$R *.DFM}
procedure TFSeguimiento.FormActivate(Sender: TObject);
var
 xsql : String;
 xI : Integer;
begin
   xEstado0 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('N'), 'ESTDES');
   xEstid0  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xTipoAsoA := DM1.DisplayDescrip('prvSQL','APO107','ASOTIPID','ASOTIPO='+quotedstr('A'),'ASOTIPID');
   xTipoAsoC := DM1.DisplayDescrip('prvSQL','APO107','ASOTIPID','ASOTIPO='+quotedstr('C'),'ASOTIPID');

   xSql := 'SELECT ACCIONDES FROM COB110';
   dm1.cdsQry3.close;
   dm1.cdsQry3.datarequest(xSql);
   dm1.cdsQry3.open;

   xsql := 'select ''  '' a1,''  '' b1,'+
           '''  '' c1,''  '' d1,'+
           '''  '' e1,''  '' f1,'+
           '''  '' g1'+
           ' from tge901 where dume = ''percy''';
   dm1.cdsqry4.close;
   dm1.cdsqry4.datarequest(xsql);
   dm1.cdsqry4.open;

   xsql := 'select ''  '' item,''  '' a1,''  '' b1,'+
           '''  '' c1,''  '' d1,'+
           '''  '' e1,''  '' f1,'+
           '''  '' g1'+
           ' from tge901 where dume = ''percy''';
   dm1.cdsqry5.close;
   dm1.cdsqry5.datarequest(xsql);
   dm1.cdsqry5.open;

   xsql := 'select * from cob111 order by periodoid';
   dm1.cdsqry.close;
   dm1.cdsqry.datarequest(xsql);
   dm1.cdsqry.open;

   while not dm1.cdsqry.eof do
    begin
     If dm1.cdsqry4.recordcount = 0 then
      dm1.cdsqry4.insert
     else
      dm1.cdsqry4.edit;
     If dm1.cdsqry.FieldByName('PERIODOID').AsString = '01' then
      dm1.cdsqry4.FieldByName('A1').AsString := dm1.cdsqry.FieldByName('PERIODOID').AsString;
     If dm1.cdsqry.FieldByName('PERIODOID').AsString = '02' then
      dm1.cdsqry4.FieldByName('B1').AsString := dm1.cdsqry.FieldByName('PERIODOID').AsString;
     If dm1.cdsqry.FieldByName('PERIODOID').AsString = '03' then
      dm1.cdsqry4.FieldByName('C1').AsString := dm1.cdsqry.FieldByName('PERIODOID').AsString;
     If dm1.cdsqry.FieldByName('PERIODOID').AsString = '04' then
      dm1.cdsqry4.FieldByName('D1').AsString := dm1.cdsqry.FieldByName('PERIODOID').AsString;
     If dm1.cdsqry.FieldByName('PERIODOID').AsString = '05' then
      dm1.cdsqry4.FieldByName('E1').AsString := dm1.cdsqry.FieldByName('PERIODOID').AsString;
     If dm1.cdsqry.FieldByName('PERIODOID').AsString = '06' then
      dm1.cdsqry4.FieldByName('F1').AsString := dm1.cdsqry.FieldByName('PERIODOID').AsString;
     If dm1.cdsqry.FieldByName('PERIODOID').AsString = '07' then
      dm1.cdsqry4.FieldByName('G1').AsString := dm1.cdsqry.FieldByName('PERIODOID').AsString;
     dm1.cdsqry4.POST;
     dm1.cdsqry.next;
    end;

   dbgPeriodo.selected.Add('A1'#9'3'#9'Mes');
   dbgPeriodo.selected.Add('B1'#9'3'#9'Mes');
   dbgPeriodo.selected.Add('C1'#9'3'#9'Mes');
   dbgPeriodo.selected.Add('D1'#9'3'#9'Mes');
   dbgPeriodo.selected.Add('E1'#9'3'#9'Mes');
   dbgPeriodo.selected.Add('F1'#9'3'#9'Mes');
   dbgPeriodo.selected.Add('G1'#9'3'#9'Mes');
   dbgPeriodo.DataSource := dm1.dsQry4;

   dbgAccion.selected.Add('ACCIONDES'#9'20'#9'ACCION');
   dbgAccion.DataSource := dm1.dsQry3;

   dbgMarca.selected.Add('A1'#9'3'#9'   ');
   dbgMarca.selected.Add('B1'#9'3'#9'   ');
   dbgMarca.selected.Add('C1'#9'3'#9'   ');
   dbgMarca.selected.Add('D1'#9'3'#9'   ');
   dbgMarca.selected.Add('E1'#9'3'#9'   ');
   dbgMarca.selected.Add('F1'#9'3'#9'   ');
   dbgMarca.selected.Add('G1'#9'3'#9'   ');
   dbgMarca.DataSource := dm1.dsQry5;
   dbgMarca.SetControlType('A1', fctCheckBox, 'X;N');
   dbgMarca.SetControlType('B1', fctCheckBox, 'X;N');
   dbgMarca.SetControlType('C1', fctCheckBox, 'X;N');
   dbgMarca.SetControlType('D1', fctCheckBox, 'X;N');
   dbgMarca.SetControlType('E1', fctCheckBox, 'X;N');
   dbgMarca.SetControlType('F1', fctCheckBox, 'X;N');
   dbgMarca.SetControlType('G1', fctCheckBox, 'X;N');

   For xI := 1 to 7 do
    begin
     dm1.cdsqry5.insert;
     dm1.cdsqry5.FieldByName('ITEM').AsString := IntToStr(xI);
     dm1.cdsqry5.FieldByName('A1').AsString := ' ';
     dm1.cdsqry5.FieldByName('B1').AsString := ' ';
     dm1.cdsqry5.FieldByName('C1').AsString := ' ';
     dm1.cdsqry5.FieldByName('D1').AsString := ' ';
     dm1.cdsqry5.FieldByName('E1').AsString := ' ';
     dm1.cdsqry5.FieldByName('F1').AsString := ' ';
     dm1.cdsqry5.FieldByName('G1').AsString := ' ';
     dm1.cdsqry5.POST;
    end;
end;

procedure TFSeguimiento.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 Then
  begin
   key:=#0;
   perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFSeguimiento.dbeApeNomExit(Sender: TObject);
var
 xSQL : String;
begin
   pnlMarca.Enabled := False;
  //** SI HAY UN NOMBRE SE BUSCA
  If dbeApeNom.Text <> '' Then
   begin
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
      xSql := 'SELECT A.CREFOTORG,A.ASOID,A.CREDID, B.TOTCUOTA,B.TOTDEUDA'+
              ' FROM  CRE303 A,'+
              ' (SELECT B.ASOID,count(B.CRECUOTA) TOTCUOTA'+
              ',sum((B.CREAMORT+B.CREINTERES+B.CREFLAT)-'+
              ' (B.CRECAPITAL+B.CREMTOINT+B.CREMTOFLAT)) TOTDEUDA'+
              ' FROM  CRE302 B WHERE B.ASOID ='+quotedstr(xAsoid)+
              ' AND CREESTID ='+quotedstr(xEstid0)+
              ' group by B.ASOID,B.CREDID) B WHERE A.ASOID = B.ASOID';
      dm1.cdsQry1.close;
      dm1.cdsQry1.datarequest(xSql);
      dm1.cdsQry1.open;
      If DM1.cdsQry1.Recordcount <= 0 Then
       begin
        ShowMessage('No tiene Crédito(s) con cuota(s) vencidas' );
        Exit;
       end
      else
       begin
         dbgVencidas.selected.Add('CREDID'#9'16'#9'Crédito');
         dbgVencidas.selected.Add('CREFOTORG'#9'10'#9'Fecha~Otorgamiento');
         dbgVencidas.selected.Add('TOTCUOTA'#9'5'#9'Cuotas~Vencidas');
         dbgVencidas.selected.Add('TOTDEUDA'#9'10'#9'Monto~Deuda');
         dbgVencidas.DataSource := DM1.dsQry1;
       end;
       dbgVencidas.SetFocus;
     end;
   end;
end;

procedure TFSeguimiento.dbecodmodExit(Sender: TObject);
var
 xSQL : String;
begin
   pnlMarca.Enabled := False;
  //** SI HAY UN NOMBRE SE BUSCA
  If dbecodmod.Text <> '' Then
   begin
    dbecodmod.Text := dm1.StrZero(dbecodmod.text,10);
    xSQL := 'Select * From APO201'
           +' Where ASOCODMOD='+QuotedStr(Trim(dbecodmod.Text));
    DM1.cdsAso.Close;
    DM1.cdsAso.DataRequest(xSQL);
    DM1.cdsAso.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If DM1.cdsAso.RecordCount = 1 Then
     CargaBusqueda
    Else
      LevantaFiltro('ASOCODMOD ='+QuotedStr(Trim(dbecodmod.Text)));

    If Length(xAsoid) > 0 Then
     begin
      xSql := 'SELECT A.CREFOTORG,A.ASOID,A.CREDID, B.TOTCUOTA,B.TOTDEUDA'+
              ' FROM  CRE303 A,'+
              ' (SELECT B.ASOID,count(B.CRECUOTA) TOTCUOTA'+
              ',sum((B.CREAMORT+B.CREINTERES+B.CREFLAT)-'+
              ' (B.CRECAPITAL+B.CREMTOINT+B.CREMTOFLAT)) TOTDEUDA'+
              ' FROM  CRE302 B WHERE B.ASOID ='+quotedstr(xAsoid)+
              ' AND CREESTID ='+quotedstr(xEstid0)+
              ' group by B.ASOID,B.CREDID) B WHERE A.ASOID = B.ASOID';
      dm1.cdsQry1.close;
      dm1.cdsQry1.datarequest(xSql);
      dm1.cdsQry1.open;
      If DM1.cdsQry1.Recordcount <= 0 Then
       begin
        ShowMessage('No tiene Crédito(s) con cuota(s) vencidas' );
        Exit;
       end
      else
       begin
         dbgVencidas.selected.Add('CREDID'#9'16'#9'Crédito');
         dbgVencidas.selected.Add('CREFOTORG'#9'10'#9'Fecha~Otorgamiento');
         dbgVencidas.selected.Add('TOTCUOTA'#9'5'#9'Cuotas~Vencidas');
         dbgVencidas.selected.Add('TOTDEUDA'#9'10'#9'Monto~Deuda');
         dbgVencidas.DataSource := DM1.dsQry1;
         TNumericField(DM1.cdsQry1.FieldByName('TOTDEUDA')).DisplayFormat :='###,###,##0.00';
       end;
      dbgVencidas.SetFocus;       
     end;
   end;
end;

procedure TFSeguimiento.cargabusqueda;
var
 xWhere : String;
begin
   xAsoid := DM1.cdsAso.FieldByName('ASOID').AsString;
   dbeApeNom.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   dbecodmod.Text := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
end;

procedure TFSeguimiento.LevantaFiltro(xCampo : String);
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
    Mtx.SectionName     := 'AsociaX';
    Mtx.Registros       := 30;
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
procedure TFSeguimiento.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL : String;
begin
   xSQL := 'Select * From APO201'
          +' Where ASOID ='+QuotedStr(DM1.cdsAsoX.FieldByName('ASOID').AsString);
   DM1.FiltraCDS(DM1.cdsAso,xSQL);
   cargabusqueda;
   TMant(Sender).FMant.Close;
end;



procedure TFSeguimiento.dbgVencidasRowChanged(Sender: TObject);
var
 xsql : String;
begin
   pnlMarca.Enabled := False;
    xSql := 'SELECT CREANO,CREMES,CRECUOTA,CREMTO,CREMTOCOB FROM '+
            ' CRE302 WHERE ASOID = '+quotedstr(xAsoid)+
            ' AND CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
            ' AND CREESTID ='+quotedstr(xEstid0)+' ORDER BY CREANO,CREMES';
   dm1.cdsQry2.close;
   dm1.cdsQry2.datarequest(xSql);
   dm1.cdsQry2.open;
   dbgCuotas.selected.Add('CREANO'#9'4'#9'Año');
   dbgCuotas.selected.Add('CREMES'#9'3'#9'Mes');
   dbgCuotas.selected.Add('CRECUOTA'#9'5'#9'Cuota');
   dbgCuotas.selected.Add('CREMTO'#9'10'#9'Monto~Cuota');
   dbgCuotas.selected.Add('CREMTOCOB'#9'10'#9'Monto~Cobrado');
   dbgCuotas.DataSource := DM1.dsQry2;
   TNumericField(DM1.cdsQry2.FieldByName('CREMTO')).DisplayFormat :='###,###,##0.00';
   TNumericField(DM1.cdsQry2.FieldByName('CREMTOCOB')).DisplayFormat :='###,###,##0.00';
end;

procedure TFSeguimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dbgCuotas.DataSource := nil;
   dbgVencidas.DataSource := nil;
   close;
end;

procedure TFSeguimiento.dbgAccionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DOWN) then
  begin
   Dm1.cdsQry3.DisableControls ;
   Dm1.cdsQry3.next;
   if Dm1.cdsQry3.EOF then
    Key := 0
   else
    Dm1.cdsQry3.Prior ;
   Dm1.cdsQry3.EnableControls ;
  end ;
end;

procedure TFSeguimiento.dbgPeriodoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DOWN) then
  begin
   Dm1.cdsQry4.DisableControls ;
   Dm1.cdsQry4.next;
   if Dm1.cdsQry4.EOF then
    Key := 0
   else
    Dm1.cdsQry4.Prior ;
   Dm1.cdsQry4.EnableControls ;
  end ;
end;

procedure TFSeguimiento.dbgVencidasDblClick(Sender: TObject);
var
 xsql : String;
begin
  Try
    screen.Cursor := crHourglass;
     pnlMarca.Enabled := True;
     xSql := 'select * from cob339 where asoid = '+quotedstr(xAsoid)+
     ' and credid = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString);
    dm1.cdsConsulta.close;
    dm1.cdsConsulta.datarequest(xSql);
    dm1.cdsConsulta.open;
    dm1.cdsConsulta.First;

    dm1.cdsQry5.disableControls;
    dm1.cdsQry5.IndexFieldNames := 'ITEM';
    while not dm1.cdsConsulta.eof do
     begin
       dm1.cdsQry5.setkey;
       dm1.cdsQry5.FieldByName('ITEM').AsString := dm1.cdsConsulta.FieldByName('FLGACC').AsString;
       If dm1.cdsQry5.gotokey then
        begin
         dm1.cdsQry5.Edit;
         If dm1.cdsConsulta.FieldByName('FLGPER').AsString = '01' then
          dm1.cdsQry5.FieldByName('A1').AsString := 'X';
         If dm1.cdsConsulta.FieldByName('FLGPER').AsString = '02' then
          dm1.cdsQry5.FieldByName('A2').AsString := 'X';
         If dm1.cdsConsulta.FieldByName('FLGPER').AsString = '03' then
          dm1.cdsQry5.FieldByName('A3').AsString := 'X';
         If dm1.cdsConsulta.FieldByName('FLGPER').AsString = '04' then
          dm1.cdsQry5.FieldByName('A4').AsString := 'X';
         If dm1.cdsConsulta.FieldByName('FLGPER').AsString = '05' then
          dm1.cdsQry5.FieldByName('A5').AsString := 'X';
         If dm1.cdsConsulta.FieldByName('FLGPER').AsString = '06' then
          dm1.cdsQry5.FieldByName('A6').AsString := 'X';
         If dm1.cdsConsulta.FieldByName('FLGPER').AsString = '07' then
          dm1.cdsQry5.FieldByName('A7').AsString := 'X';
         dm1.cdsQry5.Post;
        end;
       dm1.cdsConsulta.next;
     end;
  finally
   dm1.cdsQry5.IndexFieldNames := '';
   dm1.cdsQry5.EnableControls;
   screen.Cursor := crDefault;
  end;
end;

procedure TFSeguimiento.sbtnRAceptarClick(Sender: TObject);
var
 xSql : String;
begin
  try
    dm1.cdsQry5.Disablecontrols;
    dm1.cdsQry5.First;

    //**************************  FALTA, ME DIERON OTRA PRIORIDAD
    xSql := 'INSERT INTO COB339 (ASOID,CREDID,FLGACC,FLGPER,USUARIO,'+
            'FREG,HREG) VALUES ('+quotedstr(xAsoid)+','+
            quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+','+')';

    While not dm1.cdsQry5.eof do
     begin
      If dm1.cdsQry5.FieldByName('ITEM').AsString = '01' then
      If dm1.cdsQry5.FieldByName('ITEM').AsString = '02' then
      If dm1.cdsQry5.FieldByName('ITEM').AsString = '03' then
      If dm1.cdsQry5.FieldByName('ITEM').AsString = '04' then
      If dm1.cdsQry5.FieldByName('ITEM').AsString = '05' then
      If dm1.cdsQry5.FieldByName('ITEM').AsString = '06' then
      If dm1.cdsQry5.FieldByName('ITEM').AsString = '07' then

     end;
  finally
    dm1.cdsQry5.Enablecontrols;
  end;
end;

end.
