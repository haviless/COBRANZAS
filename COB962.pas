unit COB962;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppStrtch, ppSubRpt,
  ppDBBDE, ppParameter ;
type
  TfRefGestion = class(TForm)
    grbGen: TGroupBox;
    rdb01: TRadioButton;
    rdb02: TRadioButton;
    rdb03: TRadioButton;
    Panel1: TPanel;
    dtgGestCob: TwwDBGrid;
    dtgGestCobIButton: TwwIButton;
    lblCaption: TLabel;
    pnlGrabar: TPanel;
    StaticText1: TStaticText;
    BitCerrar: TBitBtn;
    GroupBox1: TGroupBox;
    BitGrabar: TBitBtn;
    BitClose: TBitBtn;
    BitSalir: TBitBtn;
    BitMarcar: TBitBtn;
    Panel2: TPanel;
    EdtDescrip: TEdit;
    Panel3: TPanel;
    EdtCodigo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    procedure BitSalirClick(Sender: TObject);
    procedure rdb01Click(Sender: TObject);
    procedure rdb02Click(Sender: TObject);
    procedure rdb03Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgGestCobIButtonClick(Sender: TObject);
    procedure BitCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure BitCloseClick(Sender: TObject);
    procedure dtgGestCobRowChanged(Sender: TObject);
    procedure BitMarcarClick(Sender: TObject);
  private
    { Private declarations }
    procedure MostraGrid(xTabla:String);
    procedure Grabar(xTabla:String);
    procedure EstadoReg(xTabla,xEstado:String);
    function MaxItem(xTabla:String):String;
  public
    { Public declarations }
  end;

var
  fRefGestion: TfRefGestion;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfRefGestion.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfRefGestion.rdb01Click(Sender: TObject);
begin
   lblCaption.Caption:=rdb01.Caption;
   MostraGrid('COB904');
end;

procedure TfRefGestion.rdb02Click(Sender: TObject);
begin
    lblCaption.Caption:=rdb02.Caption;
    MostraGrid('COB905');
end;

procedure TfRefGestion.rdb03Click(Sender: TObject);
begin
    lblCaption.Caption:=rdb03.Caption;
    MostraGrid('COB906');
end;

procedure TfRefGestion.FormActivate(Sender: TObject);
begin
    lblCaption.Caption:=rdb01.Caption;
    MostraGrid('COB904');
end;

procedure TfRefGestion.MostraGrid(xTabla: String);
var xSQL:String;
begin
    xSQL:='SELECT ID,DESCRIPCION,ESTREG FROM '+xTabla+' WHERE ID<>''99'' ORDER BY ID ' ;
    DM1.cdsTZona.Close;
    DM1.cdsTZona.DataRequest(xSQL);
    DM1.cdsTZona.Open;
    dtgGestCob.ColumnByName('DESCRIPCION').FooterValue:='                                                          Total Registros :        '+IntToStr(DM1.cdsTZona.RecordCount);
end;

procedure TfRefGestion.dtgGestCobIButtonClick(Sender: TObject);
var xTabla:String;
begin
   pnlGrabar.Visible:=True;
   grbGen.Enabled:=False;
   If rdb01.Checked Then xTabla:='COB904';  If rdb02.Checked Then xTabla:='COB905';  If rdb03.Checked Then xTabla:='COB906';
   EdtCodigo.Text:=MaxItem(xTabla); EdtDescrip.Text:=''; EdtDescrip.SetFocus;
end;

procedure TfRefGestion.BitCerrarClick(Sender: TObject);
begin
   pnlGrabar.Visible:=False;
   grbGen.Enabled:=True;

end;

procedure TfRefGestion.FormCreate(Sender: TObject);
begin
 dtgGestCob.SetControlType('ESTREG',fctCheckBox, 'S;N');
end;

procedure TfRefGestion.BitGrabarClick(Sender: TObject);
var xTabla:String;
begin
   If Length(Trim(EdtDescrip.Text))=0 Then
     Begin
        MessageDlg(' Debe Ingresar Una DESCRIPCION Para Poder Grabar Este Registro !!!!! ', mtError, [mbOk], 0);
        Exit;
     End;
   If rdb01.Checked Then xTabla:='COB904';  If rdb02.Checked Then xTabla:='COB905';  If rdb03.Checked Then xTabla:='COB906';
   Grabar(xTabla);
   pnlGrabar.Visible:=False;
   grbGen.Enabled:=True;
   MostraGrid(xTabla);
   If DM1.cdsTZona.RecordCount>0 Then DM1.cdsTZona.Last;
   dtgGestCob.SetFocus;
end;

procedure TfRefGestion.BitCloseClick(Sender: TObject);
begin
   pnlGrabar.Visible:=False;
   grbGen.Enabled:=True;

end;

procedure TfRefGestion.dtgGestCobRowChanged(Sender: TObject);
begin
If DM1.cdsTZona.FieldByName('ESTREG').AsString='S' Then BitMarcar.Caption := 'Desactivar'  Else BitMarcar.Caption := 'Activar';
end;


function TfRefGestion.MaxItem(xTabla: String): String;
var xSQL,xCodigo:String;
begin
   xSQL:='SELECT NVL(MAX(ID),''00'') CODIGO FROM '+xTabla+' WHERE ID<>''99'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xCodigo:=Format('%.2d',[StrToInt(DM1.cdsQry.FieldByName('CODIGO').AsString)+1]);
   DM1.cdsQry.Close;
   Result:=xCodigo;
end;

procedure TfRefGestion.Grabar(xTabla: String);
var xSQL:String;
begin
  xSQL:='INSERT INTO '+xTabla+'(ID,DESCRIPCION) VALUES ('+QuotedStr(EdtCodigo.Text)+','+QuotedStr(EdtDescrip.Text)+')';
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);

end;

procedure TfRefGestion.BitMarcarClick(Sender: TObject);
var xSQL,xTabla:String;
    xRegistro: TBookmark;
begin
  xRegistro:=DM1.cdsTZona.GetBookmark;
  If rdb01.Checked Then xTabla:='COB904';  If rdb02.Checked Then xTabla:='COB905';  If rdb03.Checked Then xTabla:='COB906';
  If DM1.cdsTZona.FieldByName('ESTREG').AsString='S' Then
     Begin
        EstadoReg(xTabla,'D');
     End
  Else
     Begin
        EstadoReg(xTabla,'A');
     End;
  MostraGrid(xTabla);
  DM1.cdsTZona.GotoBookmark(xRegistro);
  dtgGestCob.SetFocus;
end;


procedure TfRefGestion.EstadoReg(xTabla, xEstado: String);
var xSQL:String;
begin
If xEstado='A' Then
   Begin
      xSQL:='UPDATE '+xTabla+' SET ESTREG=''S'' WHERE ID='+QuotedStr(DM1.cdsTZona.FieldByName('ID').AsString);
   End;
If xEstado='D' Then
   Begin
      xSQL:='UPDATE '+xTabla+' SET ESTREG=''N'' WHERE ID='+QuotedStr(DM1.cdsTZona.FieldByName('ID').AsString);
   End;
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
end;

end.
