unit COB460;

// Inicio Uso Estándares   : 01/08/2011
// Unidad		          : COB460.pas
// Formulario		      : FAsoEnBanco
// Fecha de Creación       : 09/04/2013
// Autor			       : Hugo Noriega
// Objetivo		        : Mantenimiento de Docentes que NO pagan por Planilla.

// Actualizaciones:
// HPC_201305_COB          : 10/04/2012 - Creación del Mantenimiento de Docentes que NO pagan por Planilla.
// SPP_201307_COB          : Se realiza el pase a producción a partir del HPC_201305_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ComCtrls,
  fcButton, fcImgBtn, fcShapeBtn, db;

type
  TFAsoEnBanco = class(TForm)
    Panel1: TPanel;
    BitSalir: TBitBtn;
    Panel2: TPanel;
    btnBuscarNuevo: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgNoActivos: TwwDBGrid;
    dbgActivos: TwwDBGrid;
    Label1: TLabel;
    Panel3: TPanel;
    BitExportaAct: TBitBtn;
    Panel4: TPanel;
    btnExportaDes: TBitBtn;
    GroupBox2: TGroupBox;
    edtBuscarOG: TEdit;
    BitBtn3: TBitBtn;
    BitAsigna: TBitBtn;
    rdbNombre: TRadioButton;
    rdbDni: TRadioButton;
    bbtnAsignar: TBitBtn;
    GroupBox1: TGroupBox;
    edtBuscarDes: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    rdbNombre2: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn6: TBitBtn;
    BitAnulaRep: TBitBtn;
    procedure btnBuscarNuevoClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure edtBuscarOGChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgActivosDblClick(Sender: TObject);
    procedure edtBuscarDesChange(Sender: TObject);
    procedure btnExportaDesClick(Sender: TObject);
    procedure BitExportaActClick(Sender: TObject);
    procedure dbgNoActivosDblClick(Sender: TObject);
    procedure BitAnulaRepClick(Sender: TObject);
    procedure rdbDniClick(Sender: TObject);
    procedure rdbNombreClick(Sender: TObject);
    procedure rdbNombre2Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CargarActivos;
    procedure CargarNOActivos;
  public
    { Public declarations }
  end;

var
  FAsoEnBanco: TFAsoEnBanco;

implementation

uses COBDM1, COB902, COB461;

{$R *.dfm}

procedure TFAsoEnBanco.btnBuscarNuevoClick(Sender: TObject);
begin
   DM1.xSgr := 'COB460';
   try
     fSeleccion := TfSeleccion.create(self);
     fSeleccion.gbbuscar.Width := 430;
     fSeleccion.gbbuscar.Height := 40;
     fSeleccion.edtBuscar.Width := 407;
     fSeleccion.edtBuscar.Height := 28;
     fSeleccion.Showmodal;
   except
   end;
   fSeleccion.free;
   DM1.xSgr := '';
   CargarActivos;
end;

procedure TFAsoEnBanco.CargarActivos;
Var xSql:String;
begin
  xSql:='SELECT a.asoid, a.asodni, a.asotipid, a.activo, a.obsact, a.fecact, a.usuact, '
       +   'a.obsnoact, a.fecnoact, a.usunoact, B.ASOAPENOM '
       +'FROM COB_ASO_DES_BAN A, APO201 B '
       +'WHERE A.ACTIVO = ''S'' '
       + ' and A.ASOID  = B.ASOID(+) '
       +'ORDER BY B.ASOAPENOM';
  DM1.cdsAsoBanAct.Close;
  DM1.cdsAsoBanAct.DataRequest(xSql);
  DM1.cdsAsoBanAct.Open;
  dbgActivos.Selected.Clear;
  dbgActivos.Selected.Add('ASOAPENOM'#9'34'#9'Apellidos y~Nombre(s)'#9#9);
  dbgActivos.Selected.Add('ASODNI'#9'8'#9'D.N.I'#9#9);
  dbgActivos.Selected.Add('ASOTIPID'#9'4'#9'Tipo~Aso.'#9#9);
  dbgActivos.Selected.Add('OBSACT'#9'30'#9'Motivo de habilitación'#9#9);
  dbgActivos.Selected.Add('USUACT'#9'15'#9'Usuario~Habilita'#9#9);
  dbgActivos.Selected.Add('FECACT'#9'20'#9'Fecha~Habilitación'#9#9);
  dbgActivos.ApplySelected;
end;

procedure TFAsoEnBanco.CargarNOActivos;
Var xSql:String;
begin
  xSql:='SELECT a.asoid, a.asodni, a.asotipid, a.activo, a.obsact, a.fecact, a.usuact, '
       +   'a.obsnoact, a.fecnoact, a.usunoact, B.ASOAPENOM '
       +'FROM COB_ASO_DES_BAN A, APO201 B '
       +'WHERE A.ACTIVO = ''N'' '
       + ' and A.ASOID  = B.ASOID(+) '
       +'ORDER BY B.ASOAPENOM, FECNOACT desc ';
  DM1.cdsAsoBanNoAct.Close;
  DM1.cdsAsoBanNoAct.DataRequest(xSql);
  DM1.cdsAsoBanNoAct.Open;
  dbgNoActivos.Selected.Clear;
  dbgNoActivos.Selected.Add('ASOAPENOM'#9'34'#9'Apellidos y~Nombre(s)'#9#9);
  dbgNoActivos.Selected.Add('ASODNI'#9'8'#9'D.N.I'#9#9);
  dbgNoActivos.Selected.Add('ASOTIPID'#9'4'#9'Tipo~Aso.'#9#9);
  dbgNoActivos.Selected.Add('OBSACT'#9'30'#9'Motivo de Habilitación'#9#9);
  dbgNoActivos.Selected.Add('USUACT'#9'15'#9'Usuario~Habilita'#9#9);
  dbgNoActivos.Selected.Add('FECACT'#9'20'#9'Fecha~Habilitado'#9#9);
  dbgNoActivos.Selected.Add('OBSNOACT'#9'30'#9'Motivo de Deshabilitación'#9#9);
  dbgNoActivos.Selected.Add('USUNOACT'#9'15'#9'Usuario que~Deshabilita'#9#9);
  dbgNoActivos.Selected.Add('FECNOACT'#9'20'#9'Fecha de~Deshabiltación'#9#9);
  dbgNoActivos.ApplySelected;
end;



procedure TFAsoEnBanco.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFAsoEnBanco.edtBuscarOGChange(Sender: TObject);
begin
   If Length(Trim(edtBuscarOG.Text)) > 0 Then
   begin
      if rdbNombre.Checked then
         DM1.cdsAsoBanAct.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscarOG.Text)]), [loPartialKey])
      else
         DM1.cdsAsoBanAct.Locate('ASODNI', VarArrayOf([TRIM(edtBuscarOG.Text)]), [loPartialKey])
   end;
end;

procedure TFAsoEnBanco.FormActivate(Sender: TObject);
begin
   PageControl1.ActivePage:=TabSheet1;
   CargarActivos;
   CargarNOActivos;
end;

procedure TFAsoEnBanco.dbgActivosDblClick(Sender: TObject);
begin
  try
   FMantAsoBan:=TFMantAsoBan.Create(self);
   FMantAsoBan.lblMotivo.Caption:='MOTIVO DE DESHABILITACION';
   FMantAsoBan.dbeDNI.DataSource    := DM1.dsAsoBanAct;
   FMantAsoBan.dbeTipo.DataSource   := DM1.dsAsoBanAct;
   FMantAsoBan.dbeNombres.DataSource:= DM1.dsAsoBanAct;
   FMantAsoBan.dbeUsuAct.DataSource := DM1.dsAsoBanAct;
   FMantAsoBan.dbeFecAct.DataSource := DM1.dsAsoBanAct;
   FMantAsoBan.mActiva.Text         := DM1.cdsAsoBanAct.FieldByname('OBSACT').AsString ;
   FMantAsoBan.mMotivo.Text         := DM1.cdsAsoBanAct.FieldByname('OBSNOACT').AsString ;
   FMantAsoBan.btnDesactiva.Visible :=True;
   FMantAsoBan.btnActiva.Visible    :=False;
   FMantAsoBan.pnlNoActivo.Visible  :=False;
   FMantAsoBan.ShowModal;
  except
  end;
  FMantAsoBan.Free;
  CargarActivos;
  CargarNOActivos;
end;

procedure TFAsoEnBanco.edtBuscarDesChange(Sender: TObject);
begin
   If Length(Trim(edtBuscarDes.Text)) > 0 Then
   begin
      if rdbNombre2.Checked then
         DM1.cdsAsoBanNoAct.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscarDes.Text)]), [loPartialKey])
      else
         DM1.cdsAsoBanNoAct.Locate('ASODNI', VarArrayOf([TRIM(edtBuscarDes.Text)]), [loPartialKey])
   end;
end;

procedure TFAsoEnBanco.btnExportaDesClick(Sender: TObject);
var
   xArchivo : String;
begin
   xArchivo:='Docentes que No pagan por Planilla - Deshabilitados';
   DM1.ExportaGridExcel(dbgNoActivos,xArchivo);
end;

procedure TFAsoEnBanco.BitExportaActClick(Sender: TObject);
var
   xArchivo : String;
begin
   xArchivo:='Docentes que No pagan por Planilla - Habilitados';
   DM1.ExportaGridExcel(dbgActivos,xArchivo);
end;

procedure TFAsoEnBanco.dbgNoActivosDblClick(Sender: TObject);
begin
  try
   FMantAsoBan:=TFMantAsoBan.Create(self);
   FMantAsoBan.lblMotivo.Caption     :='DOCENTE DESHABILITADO';
   FMantAsoBan.lblDesAct.Caption     :='Motivo de Deshabilitación';
   FMantAsoBan.dbeDNI.DataSource     := DM1.dsAsoBanNoAct;
   FMantAsoBan.dbeTipo.DataSource    := DM1.dsAsoBanNoAct;
   FMantAsoBan.dbeNombres.DataSource := DM1.dsAsoBanNoAct;
   FMantAsoBan.dbeUsuAct.DataSource  := DM1.dsAsoBanNoAct;
   FMantAsoBan.dbeFecAct.DataSource  := DM1.dsAsoBanNoAct;
   FMantAsoBan.dbeUsuNoAct.DataSource:= DM1.dsAsoBanNoAct;
   FMantAsoBan.dbeFecNoAct.DataSource:= DM1.dsAsoBanNoAct;
   FMantAsoBan.mActiva.Text          := DM1.cdsAsoBanNoAct.FieldByname('OBSACT').AsString ;
   FMantAsoBan.mMotivo.Text          := DM1.cdsAsoBanNoAct.FieldByname('OBSNOACT').AsString ;
   FMantAsoBan.pnlMotivo.Enabled     :=False;
   FMantAsoBan.btnDesactiva.Visible  :=False;
   FMantAsoBan.btnActiva.Visible     :=False;
   FMantAsoBan.pnlNoActivo.Visible   :=True;
   FMantAsoBan.ShowModal;
  except
  end;
end;

procedure TFAsoEnBanco.BitAnulaRepClick(Sender: TObject);
begin
   dbgActivosDblClick(self);
end;

procedure TFAsoEnBanco.rdbDniClick(Sender: TObject);
begin
   edtBuscarOG.Text:='';
end;

procedure TFAsoEnBanco.rdbNombreClick(Sender: TObject);
begin
   edtBuscarOG.Text:='';
end;

procedure TFAsoEnBanco.rdbNombre2Click(Sender: TObject);
begin
   edtBuscarDes.Text:='';
end;

procedure TFAsoEnBanco.RadioButton2Click(Sender: TObject);
begin
   edtBuscarDes.Text:='';
end;

end.

