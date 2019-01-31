// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB022
// Formulario           : fMotDevolucion
// Fecha de Creación    : 15/03/2017
// Autor                : Area de desarrollo de sistemas (RMZ).
// Objetivo             : Actualizar referencias de Devoluciones.
// Actualizaciones
//  HPC_201707_COB      : Creación del Formulario

//Inicio HPC_201707_COB
//Actualizar referencias de Devoluciones
unit COBD022;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls;

type
  TfMotDevolucion = class(TForm)
    grbDetalle: TGroupBox;
    DBGRID: TwwDBGrid;
    CDSGRID: TClientDataSet;
    DSGRID: TDataSource;
    BitSalir: TBitBtn;
    ButtonAdd: TwwIButton;
    pnlactualiza: TPanel;
    Shape1: TShape;
    BitGrabar: TBitBtn;
    BitBtn1: TBitBtn;
    lblactualiza: TLabel;
    edtdescripcion: TEdit;
    procedure BitSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGRIDDblClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure edtdescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    xfiltro : String;
  end;

var
  fMotDevolucion: TfMotDevolucion;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfMotDevolucion.BitSalirClick(Sender: TObject);
begin
CLOSE;
end;

procedure TfMotDevolucion.FormCreate(Sender: TObject);
var xsql:String;
begin

  If Dm1.xopc1='1' Then
  Begin
   xfiltro:='MOT';
   grbDetalle.Caption :='Motivo de Devolución';
  End;
  If Dm1.xopc1='2' Then
  Begin
   xfiltro:='ORI';
   grbDetalle.Caption :='Origen de Devolución';
  End;

  xsql:='Select CODTIPREF,CODREF,DESCRIPCION,USUCRE,FECCRE FROM DB2ADMIN.COB_REF_DEVOLUCIONES WHERE CODTIPREF='''+xfiltro+''' ORDER BY CODREF DESC  ';
  Dm1.cdsQry6.Close;
  Dm1.cdsQry6.DataRequest(xsql);
  Dm1.cdsQry6.Open;
  Dm1.cdsQry6.First;
  CDSGRID.EmptyDataSet;
  While not Dm1.cdsQry6.eof Do
  Begin
    CDSGRID.Insert;
    CDSGRID.FieldByname('CODREF').AsString := Dm1.cdsQry6.fieldbyname('CODREF').AsString;
    CDSGRID.FieldByname('DESCRIPCION').AsString := Dm1.cdsQry6.fieldbyname('DESCRIPCION').AsString;
    CDSGRID.FieldByname('USUCRE').AsString := Dm1.cdsQry6.fieldbyname('USUCRE').AsString;
    CDSGRID.FieldByname('FECCRE').AsDateTime := Dm1.cdsQry6.fieldbyname('FECCRE').AsDateTime;
    Dm1.cdsQry6.Next;
  End;
  CDSGRID.First;

end;

procedure TfMotDevolucion.DBGRIDDblClick(Sender: TObject);
begin
 pnlactualiza.Top     := 96;
 pnlactualiza.Left    := 136;
 edtdescripcion.Text  := CDSGRID.Fieldbyname('descripcion').AsString;
 pnlactualiza.Visible := True;
 lblactualiza.Caption := 'Modificación';
 dm1.xSgr := 'M';
end;

procedure TfMotDevolucion.ButtonAddClick(Sender: TObject);
VAR XSQL:String;
begin
 pnlactualiza.Top     := 96;
 pnlactualiza.Left    := 136;
 edtdescripcion.Text  := '';
 pnlactualiza.Visible := True;
 lblactualiza.Caption := 'Adición';
 dm1.xSgr := 'A';
end;



procedure TfMotDevolucion.edtdescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key In [char(39),'"'] Then
      Key := #0;
end;

procedure TfMotDevolucion.BitBtn1Click(Sender: TObject);
begin
 pnlactualiza.Visible:=False;
 edtdescripcion.Text:='';
end;

procedure TfMotDevolucion.BitGrabarClick(Sender: TObject);
var xsql,nuecod:String;
begin
 If MessageDlg('Está seguro(a) de grabar la información ',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
 Begin

  If Dm1.xSgr='A' Then
  Begin
    xsql:='Select LPAD(MAX(TO_NUMBER(CODREF))+1,2,''0'') CODREF From COB_REF_DEVOLUCIONES Where  CODTIPREF='''+xfiltro+''' ' ;
    Dm1.cdsQry.Close;
    Dm1.cdsQry.DataRequest(xsql);
    Dm1.cdsQry.Open;
    nuecod:=Dm1.cdsQry.Fieldbyname('CODREF').AsString;

    xsql:='Insert Into COB_REF_DEVOLUCIONES(CODTIPREF,CODREF,DESCRIPCION,USUCRE,FECCRE) VALUES('+
          ''''+xfiltro+''','''+nuecod+''','''+Trim(edtdescripcion.Text)+''','''+dm1.wUsuario+''',sysdate)';
  End;

  If Dm1.xSgr='M' Then
     xsql:='Update COB_REF_DEVOLUCIONES Set DESCRIPCION='''+Trim(edtdescripcion.Text)+''' '+
           'Where  CODTIPREF='''+xfiltro+''' and CODREF='''+CDSGRID.fieldbyname('CODREF').AsString+''' ';

  try
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    ShowMessage('Se grabó con éxito' );
    FormCreate(Self);
    pnlactualiza.Visible:=False;
  Except
    ShowMessage('Se ha producido un error al actualizar la tabla COB_REF_DEVOLUCIONES' );
   exit;
  End;

 End;


end;

procedure TfMotDevolucion.FormShow(Sender: TObject);
begin
  If Dm1.xopc1='1' Then
  Begin
  fMotDevolucion.Caption := 'Motivo de Devolución';
  DBGRID.Selected.Clear;
  DBGRID.Selected.Add('CODREF'#9'8'#9'Cod.Motivo~Devolución'#9#9);
  DBGRID.Selected.Add('DESCRIPCION'#9'50'#9'Motivo de Devolución'#9#9);
  DBGRID.Selected.Add('USUCRE'#9'15'#9'Usuario~Crea'#9#9);
  DBGRID.Selected.Add('FECCRE'#9'10'#9'Fecha~Crea'#9#9);
  DBGRID.DataSource := DSGRID;
  End;

  If Dm1.xopc1='2' Then
  Begin
  fMotDevolucion.Caption :='Origen de Devolución';
  DBGRID.Selected.Clear;
  DBGRID.Selected.Add('CODREF'#9'8'#9'Cod.Origen~Devolución'#9#9);
  DBGRID.Selected.Add('DESCRIPCION'#9'50'#9'Origen de Devolución'#9#9);
  DBGRID.Selected.Add('USUCRE'#9'15'#9'Usuario~Crea'#9#9);
  DBGRID.Selected.Add('FECCRE'#9'10'#9'Fecha~Crea'#9#9);
  DBGRID.DataSource := DSGRID;
  End;
end;

end.
//Final HPC_201707_COB
