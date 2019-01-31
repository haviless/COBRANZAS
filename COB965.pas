unit COB965;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, fcButton, fcImgBtn,
  fcShapeBtn, ExtCtrls, wwdbdatetimepicker, Db, ppBands, ppVar, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, Buttons, ComCtrls, Mask, wwdbedit;

type
  TfEntAutFis = class(TForm)
    GroupBox1: TGroupBox;
    dtgCab: TwwDBGrid;
    Label1: TLabel;
    edtBuscar: TEdit;
    GroupBox2: TGroupBox;
    dtgDet: TwwDBGrid;
    BitMarcar: TBitBtn;
    lblTitulo: TLabel;
    BitSalir: TBitBtn;
    procedure edtBuscarChange(Sender: TObject);
    procedure dtgCabDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtgCabRowChanged(Sender: TObject);
    procedure BitMarcarClick(Sender: TObject);
    procedure dtgDetDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgDetRowChanged(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
    procedure MstGrid;
    procedure GrabaLog(xCodSec,xUpro,xUPag:String);
  public
    { Public declarations }
  end;

var
  fEntAutFis: TfEntAutFis;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfEntAutFis.edtBuscarChange(Sender: TObject);
begin
If Length(Trim(edtBuscar.Text))>0 Then
  DM1.cdsCtasBco.Locate('UPROID', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
end;

procedure TfEntAutFis.dtgCabDblClick(Sender: TObject);
begin
   MstGrid;
end;

procedure TfEntAutFis.FormCreate(Sender: TObject);
begin
dtgDet.SetControlType('FLGESCFIS',fctCheckBox, 'S;N');
end;

procedure TfEntAutFis.MstGrid;
var xSQL:String;
begin
xSQL:='SELECT UPROID,UPAGOID,UPAGONOM,FLGESCFIS FROM APO103  WHERE UPROID='+QuotedStr(DM1.cdsCtasBco.FieldByName('UPROID').AsString);
DM1.cdsCuentaEst.Close;
DM1.cdsCuentaEst.DataRequest(xSQL);
DM1.cdsCuentaEst.Open;
If DM1.cdsCuentaEst.RecordCount > 0 Then lblTitulo.Caption:=DM1.cdsCtasBco.FieldByName('UPRONOM').AsString;



end;

procedure TfEntAutFis.dtgCabRowChanged(Sender: TObject);
begin
MstGrid;
end;

procedure TfEntAutFis.BitMarcarClick(Sender: TObject);
var xUpro,xUpag,xSQL:String;
    xRegistro: TBookmark;
begin
  xUpro:=DM1.cdsCuentaEst.FieldByName('UPROID').AsString;
  xUpag:=DM1.cdsCuentaEst.FieldByName('UPAGOID').AsString;
  GrabaLog('0',xUpro,xUpag);
  xRegistro:=DM1.cdsCuentaEst.GetBookmark;
  If DM1.cdsCuentaEst.FieldByName('FLGESCFIS').AsString='S' Then
     Begin
       BitMarcar.Caption := 'Marcar';
       xSQL:='UPDATE APO103 SET FLGESCFIS=''N'' WHERE UPROID='+QuotedStr(Trim(xUpro))+' AND UPAGOID='+QuotedStr(Trim(xUpag));
     End
  Else
     Begin
       BitMarcar.Caption := 'DesMarcar';
       xSQL:='UPDATE APO103 SET FLGESCFIS=''S'' WHERE UPROID='+QuotedStr(Trim(xUpro))+' AND UPAGOID='+QuotedStr(Trim(xUpag));
     End;
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     MstGrid;
     DM1.cdsCuentaEst.GotoBookmark(xRegistro);
     GrabaLog('1',xUpro,xUpag);
     dtgDet.SetFocus;


end;

procedure TfEntAutFis.dtgDetDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   If DM1.cdsCuentaEst.FieldByName('FLGESCFIS').AsString='S' Then
     begin
        dtgDet.Canvas.Font.Color := clRed;
        dtgDet.DefaultDrawDataCell(rect,Field,State);
      end;

end;

procedure TfEntAutFis.dtgDetRowChanged(Sender: TObject);
begin
If DM1.cdsCuentaEst.FieldByName('FLGESCFIS').AsString='N' Then BitMarcar.Caption := 'Marcar' Else BitMarcar.Caption:='DesMarcar';
end;

procedure TfEntAutFis.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfEntAutFis.GrabaLog(xCodSec, xUpro, xUPag: String);
var xSQL:String;
begin
xSQL:='INSERT INTO APO103_LOG  '+
       'SELECT UPROID, UPAGOID, UPAGONOM, FLGESCFIS,'+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(xCodSec)+' '+
       'FROM APO103 WHERE UPROID='+QuotedStr(xUpro)+' AND UPAGOID='+QuotedStr(xUPag);
DM1.DCOM1.AppServer.EjecutaSql(xSQL);

end;

end.
