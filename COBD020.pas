
// Inicio Uso Estándares: 01/08/2011
// Unidad               : COBD020
// Formulario           : fRegporOficio
// Fecha de Creación    : 13/03/2017
// Autor                : Area de desarrollo de sistemas (RMZ).
// Objetivo             : Actualizar el número de registros por oficio.
// Actualizaciones
//  HPC_201707_COB      : Creación del Formulario

//Inicio HPC_201707_COB
//Actualizar el número de registros por oficio
unit COBD020;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, Grids, Wwdbigrd, Wwdbgrid;

type
  TfRegPorOficio = class(TForm)
    grbDetalle: TGroupBox;
    DBGRID: TwwDBGrid;
    CDSGRID: TClientDataSet;
    DSGRID: TDataSource;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure DBGRIDDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGRIDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitGrabarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRegPorOficio: TfRegPorOficio;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfRegPorOficio.BitSalirClick(Sender: TObject);
begin
CLOSE;
end;

procedure TfRegPorOficio.DBGRIDDblClick(Sender: TObject);
begin
  DBGRID.Columns[0].ReadOnly  := True;
  DBGRID.Columns[1].ReadOnly  := True;
  DBGRID.Columns[2].ReadOnly  := True;
  DBGRID.Columns[3].ReadOnly  := False;
end;

procedure TfRegPorOficio.FormCreate(Sender: TObject);
var xsql:String;
begin

  Xsql:='Select NUMREGOFI,NUMREGACT,USUCRE,FECCRE,USUMOD,FECMOD FROM DB2ADMIN.COB_DEV_POR_OFI WHERE NUMREGOFI>0  ';
  Dm1.cdsQry6.Close;
  Dm1.cdsQry6.DataRequest(xsql);
  Dm1.cdsQry6.Open;
  Dm1.cdsQry6.First;

  CDSGRID.EmptyDataSet;
  While not Dm1.cdsQry6.eof Do
  Begin
    CDSGRID.Insert;
    CDSGRID.FieldByname('NUMREGOFI').AsInteger := Dm1.cdsQry6.fieldbyname('NUMREGOFI').AsInteger;
    CDSGRID.FieldByname('NUMREGACT').AsInteger := Dm1.cdsQry6.fieldbyname('NUMREGACT').AsInteger;
    CDSGRID.FieldByname('USUMOD').AsString     := Dm1.cdsQry6.fieldbyname('USUMOD').AsString;
    CDSGRID.FieldByname('FECMOD').AsDateTime   := Dm1.cdsQry6.fieldbyname('FECMOD').AsDateTime;
    CDSGRID.FieldByname('USUCRE').AsString     := Dm1.cdsQry6.fieldbyname('USUCRE').AsString;
    CDSGRID.FieldByname('FECCRE').AsDateTime   := Dm1.cdsQry6.fieldbyname('FECCRE').AsDateTime;
    Dm1.cdsQry6.Next;
  End;
  CDSGRID.First;
end;

procedure TfRegPorOficio.DBGRIDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
      if (Field.FieldName = 'NUMREGOFI') then
      Begin
       AFont.Color  :=  clBlack;
       ABrush.Color :=  $0080FFFF;
      End;
end;

procedure TfRegPorOficio.BitGrabarClick(Sender: TObject);
VAR XSQL:String;
begin
 Try
  XSQL:='UPDATE DB2ADMIN.COB_DEV_POR_OFI SET NUMREGOFI='''+CDSGRID.FieldByname('NUMREGOFI').AsString+''' WHERE NUMREGOFI>0 ' ;
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  ShowMessage('Se grabó con éxito' );
  FormCreate(Self);
 Except
   ShowMessage('Se ha producido un error al actualizar la tabla COB_DEV_POR_OFI' );
   exit;
 End;
end;

procedure TfRegPorOficio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Dm1.cdsQry6.IndexFieldNames:='';
  Dm1.cdsQry6.Filtered := False;
  Dm1.cdsQry6.Close
end;

end.
//Final HPC_201707_COB
