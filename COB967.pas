unit COB967;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Db, ExtCtrls;

type
  TfAsigForPag = class(TForm)
    dtgUserCob: TwwDBGrid;
    BitAgregar: TBitBtn;
    Label1: TLabel;
    dtgFrmPagUsu: TwwDBGrid;
    BitSalir: TBitBtn;
    BitQuitar: TBitBtn;
    Label8: TLabel;
    EdtBuscar: TEdit;
    lblUsuarios: TLabel;
    Shape1: TShape;
    procedure BitAgregarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure MstFrmPago(xUser:String);
    procedure dtgUserCobRowChanged(Sender: TObject);
    procedure BitQuitarClick(Sender: TObject);
    procedure EdtBuscarChange(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAsigForPag: TfAsigForPag;

implementation

uses COBDM1, COB968;

{$R *.dfm}


procedure TfAsigForPag.BitAgregarClick(Sender: TObject);
var xSQL:String;
begin
    Try
      fForPago := TfForPago.create(Self);
//      xSQL:='SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGACT=''S'' '+
  //          'AND NOT EXISTS (SELECT FORPAGOID FROM COB_ASI_FOR_PAG_USU WHERE USERID='+QuotedStr(DM1.cdsCambios.FieldByName('USERID').AsString)+' AND ESTADO=''0'' AND FORPAGOID=COB101.FORPAGOID ) ';

      xSQL:='SELECT FORPAGOID,FORPAGODES,FORPAGACT,PERANUCUO FROM COB101 WHERE FORPAGOID NOT IN (SELECT FORPAGOID FROM COB_FOR_PAG_INA WHERE ESTADO=''0'') ORDER BY FORPAGOID ';
      DM1.cdsCuotas.Close;
      DM1.cdsCuotas.DataRequest(xSQL);
      DM1.cdsCuotas.Open;
      If DM1.cdsCuotas.RecordCount=0 Then Exit;
      fForPago.ShowModal;
    Finally
      DM1.cdsCuotas.Close;
      fForPago.Free;
    end;

end;

procedure TfAsigForPag.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfAsigForPag.MstFrmPago(xUser: String);
var xSQL:String;
begin
   xSQL:='SELECT A.FORPAGOID,B.FORPAGODES,USERID,OFDESID,USUAUT,A.HREG,ESTADO '+
         'FROM COB_ASI_FOR_PAG_USU A,COB101 B WHERE USERID='+QuotedStr(xUser)+' AND A.FORPAGOID=B.FORPAGOID AND ESTADO=''0'' ';
   DM1.cdsCtaCtes.Close;
   DM1.cdsCtaCtes.DataRequest(xSQL);
   DM1.cdsCtaCtes.Open;
   lblUsuarios.Caption:=DM1.cdsCambios.FieldByName('USERNOM').AsString;
end;

procedure TfAsigForPag.dtgUserCobRowChanged(Sender: TObject);
begin
MstFrmPago(DM1.cdsCambios.FieldByName('USERID').AsString);
end;

procedure TfAsigForPag.BitQuitarClick(Sender: TObject);
var xSQL:String;
begin
   xSQL:='UPDATE COB_ASI_FOR_PAG_USU SET ESTADO=''1'',FECANU=SYSDATE,USUANU='+QuotedStr(DM1.wUsuario)+' WHERE USERID='+QuotedStr(DM1.cdsCtaCtes.FieldByName('USERID').AsString)+' AND FORPAGOID='+QuotedStr(DM1.cdsCtaCtes.FieldByName('FORPAGOID').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   MstFrmPago(DM1.cdsCambios.FieldByName('USERID').AsString);
end;

procedure TfAsigForPag.EdtBuscarChange(Sender: TObject);
begin

If Length(Trim(EdtBuscar.Text))>0 Then
  DM1.cdsCambios.Locate('USERNOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);

end;

procedure TfAsigForPag.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
    Begin
      If Length(Trim(EdtBuscar.Text))>0 Then
         Begin
           EdtBuscar.Text:='';
           dtgUserCob.SetFocus;
         End
       Else
         Begin
           MessageDlg('Debe Digitar El Nombre Del USUARIO, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
           EdtBuscar.SetFocus;
         End;
    End;

end;

end.
