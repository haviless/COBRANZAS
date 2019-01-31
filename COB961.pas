unit COB961;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, wwdblook, Db, ComCtrls, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, DBGrids, fcButton, fcImgBtn, fcShapeBtn;

type
  TfEscFis = class(TForm)
    rdbAsoNom: TRadioButton;
    rdbCtaAho: TRadioButton;
    rdbDni: TRadioButton;
    pnlBuscar: TPanel;
    Label1: TLabel;
    EdtBuscar: TEdit;
    BitMostrar: TBitBtn;
    dtgAsoMan: TwwDBGrid;
    dtgAsoEFis: TwwDBGrid;
    Panel3: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblCodMod: TLabel;
    lblAsoApeNom: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblTipAso: TLabel;
    Label6: TLabel;
    lblDni: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblCtaAhorros: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    BitEscFis: TfcShapeBtn;
    BitSalir: TBitBtn;
    Shape2: TShape;
    Label9: TLabel;
    procedure BitMostrarClick(Sender: TObject);
    procedure rdbAsoNomClick(Sender: TObject);
    procedure rdbCtaAhoClick(Sender: TObject);
    procedure rdbDniClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dtgAsoManRowChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure BitEscFisClick(Sender: TObject);
    procedure dtgAsoEFisDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
    procedure LimpiaGrid;
    procedure Limpia;
    procedure CargaDatos;
    procedure MstDatFis;
  public
    { Public declarations }
  end;

var
  fEscFis: TfEscFis;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfEscFis.BitMostrarClick(Sender: TObject);
var xSQL:String;
begin
If Length(Trim(EdtBuscar.Text))=0 Then
   Begin
      MessageDlg('Debe Ingresar Algún Criterio Para Busqueda !!! ', mtError,[mbOk],0);
      Exit;
   End;

Screen.Cursor:=crHourGlass;
If rdbAsoNom.Checked Then
   xSQL:='SELECT * FROM APO201 WHERE ASOAPENOMDNI LIKE '+QuotedStr(Trim(EdtBuscar.Text)+'%')+' ORDER BY ASOAPENOMDNI ';
If rdbCtaAho.Checked Then
   xSQL:='SELECT * FROM APO201 WHERE ASONCTA LIKE '+QuotedStr(Trim(EdtBuscar.Text)+'%')+' ORDER BY ASOAPENOMDNI ';
If rdbDni.Checked Then
   xSQL:='SELECT * FROM APO201 WHERE ASODNI LIKE '+QuotedStr(Trim(EdtBuscar.Text)+'%')+' ORDER BY ASOAPENOMDNI ';
DM1.cdsAso.Close;
DM1.cdsAso.DataRequest(xSQL);
DM1.cdsAso.Open;
Screen.Cursor:=crDefault;
If DM1.cdsAso.RecordCount > 0 Then CargaDatos
Else Limpia;
dtgAsoMan.DataSource:=DM1.dsAso;


end;

procedure TfEscFis.LimpiaGrid;
var xSQL:String;
begin
xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOMDNI,USEID,UPROID,ASONCTA,SITCTA,ASOTIPID,ASODNI FROM APO201 WHERE ASOID='+QuotedStr('!@#$%^&*#@');
DM1.cdsAso.Close;
DM1.cdsAso.DataRequest(xSQL);
DM1.cdsAso.Open;
dtgAsoMan.DataSource:=DM1.dsAso;
lblCodMod.Caption:=''; lblAsoApeNom.Caption:=''; lblTipAso.Caption:=''; lblDni.Caption:=''; lblCtaAhorros.Caption:='';

end;

procedure TfEscFis.rdbAsoNomClick(Sender: TObject);
begin
LimpiaGrid; Limpia; EdtBuscar.Height:=24;  EdtBuscar.Width:=403; BitMostrar.Left:=484; pnlBuscar.Height:=50;  pnlBuscar.Width:=592; EdtBuscar.SetFocus;
end;

procedure TfEscFis.rdbCtaAhoClick(Sender: TObject);
begin
LimpiaGrid; Limpia; EdtBuscar.Height:=24; EdtBuscar.Width:=91; BitMostrar.Left:=174; pnlBuscar.Height:=50;  pnlBuscar.Width:=280; EdtBuscar.SetFocus;
end;

procedure TfEscFis.rdbDniClick(Sender: TObject);
begin
LimpiaGrid; Limpia; EdtBuscar.Height:=24; EdtBuscar.Width:=91; BitMostrar.Left:=174; pnlBuscar.Height:=50;  pnlBuscar.Width:=280; EdtBuscar.SetFocus;
end;

procedure TfEscFis.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfEscFis.Limpia;
begin
lblCodMod.Caption:=''; lblAsoApeNom.Caption:=''; lblTipAso.Caption:=''; lblDni.Caption:=''; lblCtaAhorros.Caption:=''; EdtBuscar.Text:='';
end;

procedure TfEscFis.CargaDatos;
begin
  lblCodMod.Caption:=DM1.cdsAso.fieldByname('ASOCODMOD').AsString;
  lblAsoApeNom.Caption:=DM1.cdsAso.fieldByname('ASOAPENOMDNI').AsString;
  lblTipAso.Caption:=DM1.cdsAso.fieldByname('ASOTIPID').AsString+'-'+DM1.CrgDescrip('ASOTIPID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOTIPID').AsString)),'APO107','ASOTIPDES');
  lblDni.Caption:=DM1.cdsAso.fieldByname('ASODNI').AsString;
  lblCtaAhorros.Caption:=DM1.cdsAso.fieldByname('ASONCTA').AsString+'  ('+DM1.cdsAso.fieldByname('SITCTA').AsString+')';

end;

procedure TfEscFis.dtgAsoManRowChanged(Sender: TObject);
begin
CargaDatos;
end;

procedure TfEscFis.FormActivate(Sender: TObject);
begin
LimpiaGrid; MstDatFis;
EdtBuscar.SetFocus;
end;

procedure TfEscFis.MstDatFis;
var xSQL:String;
begin
  xSQL:='SELECT * FROM ASO_ESC_FIS ORDER BY ASOAPENOM ';
  DM1.cdsProvin.Close;
  DM1.cdsProvin.DataRequest(xSQL);
  DM1.cdsProvin.Open;
  dtgAsoEFis.ColumnByName('ASOAPENOM').FooterValue:='N° Total Asociados : ';
  dtgAsoEFis.ColumnByName('ASODNI').FooterValue:= IntToStr(DM1.cdsProvin.RecordCount);

end;

procedure TfEscFis.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TfEscFis.BitEscFisClick(Sender: TObject);
var xSQL,xAsoId:String;
    Boton:Integer;
begin
xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;
If dtgAsoMan.DataSource.DataSet.RecordCount=0 Then Exit;


If DM1.CrgDescrip('UPROID='+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId)),'APO201','UPROID'))+' AND UPAGOID='+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId)),'APO201','UPAGOID')) ,'APO103','FLGESCFIS')='S' Then
Else
   Begin
      MessageDlg('Asociado No Pertenece A UNA ESCUELA FISCALIZADA / ENTIDADES AUTONOMAS !!!!', mtError, [mbYes], 0);
      Exit;
   End;


If Trim(DM1.cdsAso.fieldbyname('ASOTIPID').AsString)='DO' Then
   Begin
        xSQL:='SELECT TRANSMES||''/''||TRANSANO PERIODO,FORPAGOABR FRMPAG,TRANSMTO MONTO, '+
              'TRANSFOPE,USUARIO,USEID||'' - ''||USEABR USES,HREG FROM APO301 '+
              'WHERE ASOID='+QuotedStr(xAsoId)+' AND TRANSINTID=''APO'' ';
        DM1.cdsCuotas.Close; DM1.cdsCuotas.DataRequest(xSQL); DM1.cdsCuotas.Open;
        If DM1.cdsCuotas.RecordCount=0 Then
           Begin
              MessageDlg(' No Se Puede Insertar ASOCIADOS ACTIVOS Que No Tienen Aportes Registrados', mtError, [mbOk], 0);
              DM1.cdsCuotas.Close;
              Exit;
           End;
           DM1.cdsCuotas.Close;
   End;


If Length(Trim(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID IS NULL','ASO_ESC_FIS','ASOID'))) > 0 Then
   Begin
      MessageDlg('Asociado ya Existe En Tabla De Escuelas Fiscalizadas!!!!', mtError, [mbYes], 0);
      DM1.cdsProvin.Locate('ASOAPENOM', VarArrayOf([TRIM(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)]), [loPartialKey]);
      dtgAsoEFis.SetFocus;
   End
Else
   Begin
      Boton := Application.MessageBox ('Seguro De GRABAR ASOCIADO EN LA TABLA DE ESCUELAS FISCALIZADAS ','Escuelas Fiscalizadas',MB_YESNO+MB_ICONQUESTION);
      If Boton = ID_YES Then
         Begin
            xSQL:='INSERT INTO ASO_ESC_FIS(ASOID, ASOCODMOD, ASOAPENOM, ASODNI, ASOTIPID, USEID, UPAGOID, UPROID, ASOSEXO, USUARIO, FREG, HREG ) VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOSEXO').AsString)+','+QuotedStr(DM1.wUsuario)+','+QuotedStr(DateToStr(DM1.FechaSys))+',SYSDATE )';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            MstDatFis;
            DM1.cdsProvin.Locate('ASOAPENOM', VarArrayOf([TRIM(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)]), [loPartialKey]);
            dtgAsoEFis.SetFocus;
         End;
   End;


end;

procedure TfEscFis.dtgAsoEFisDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  If Length(Trim(DM1.cdsProvin.FieldByName('CREDID').AsString))>0 Then
     begin
        dtgAsoEFis.Canvas.Font.Color := clRed;
        dtgAsoEFis.DefaultDrawDataCell(rect,Field,State);
      end;

end;

end.
