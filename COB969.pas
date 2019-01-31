unit COB969;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppStrtch, ppSubRpt,
  ppDBBDE, ppParameter, ppModule, daDataModule ;
type
  TfActDesFrmPag = class(TForm)
    dtgFrmPag: TwwDBGrid;
    BitSalir: TBitBtn;
    pnlMarcar: TPanel;
    chkActivar: TCheckBox;
    chkAnular: TCheckBox;
    BitAplica: TBitBtn;
    lblForPag: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure dtgFrmPagDblClick(Sender: TObject);
    procedure dtgFrmPagRowChanged(Sender: TObject);
    procedure chkActivarClick(Sender: TObject);
    procedure BitAplicaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fActDesFrmPag: TfActDesFrmPag;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfActDesFrmPag.FormCreate(Sender: TObject);
begin
   dtgFrmPag.SetControlType('FORPAGACT',fctCheckBox, 'S;N');
   dtgFrmPag.SetControlType('PERANUCUO',fctCheckBox, 'S;N');
end;

procedure TfActDesFrmPag.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfActDesFrmPag.dtgFrmPagDblClick(Sender: TObject);
var xSQL:String;
    xRegistro: TBookmark;
begin

   {
   xRegistro:=DM1.cdsCuotas.GetBookmark;
   If DM1.cdsCuotas.FieldByName('FORPAGACT').AsString='N' Then xSQL:='UPDATE COB101 SET FORPAGACT=''S'' WHERE FORPAGOID='+QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGOID').AsString)
   Else xSQL:='UPDATE COB101 SET FORPAGACT=''N'' WHERE FORPAGOID='+QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGOID').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   xSQL:='SELECT FORPAGOID,FORPAGODES,FORPAGACT,PERANUCUO FROM COB101 WHERE FORPAGOID NOT IN (SELECT FORPAGOID FROM COB_FOR_PAG_INA WHERE ESTADO=''0'') ORDER BY FORPAGOID ';
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(xSQL);
   DM1.cdsCuotas.Open;
   DM1.cdsCuotas.GotoBookmark(xRegistro);
   }


end;

procedure TfActDesFrmPag.dtgFrmPagRowChanged(Sender: TObject);
begin
lblForPag.Caption:=DM1.cdsCuotas.FieldByName('FORPAGODES').AsString;
If DM1.cdsCuotas.FieldByName('FORPAGACT').AsString='S' Then
   Begin
      chkActivar.Checked:=True;
      chkAnular.Enabled:=True;
   End
Else
   Begin
      chkActivar.Checked:= False;
      chkAnular.Enabled:=False;
   End;

If DM1.cdsCuotas.FieldByName('PERANUCUO').AsString='S' Then
   chkAnular.Checked:=True
Else chkAnular.Checked:= False;
end;

procedure TfActDesFrmPag.chkActivarClick(Sender: TObject);
begin
If chkActivar.Checked Then
   chkAnular.Enabled:=True
Else
   chkAnular.Enabled:=False;
end;

procedure TfActDesFrmPag.BitAplicaClick(Sender: TObject);
var xSQL:String;
    xRegistro: TBookmark;
begin
   xRegistro:=DM1.cdsCuotas.GetBookmark;
   If chkActivar.Checked Then  Begin xSQL:='UPDATE COB101 SET FORPAGACT=''S'' WHERE FORPAGOID='+QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGOID').AsString);  DM1.DCOM1.AppServer.EjecutaSql(xSQL);   End
   Else Begin  xSQL:='UPDATE COB101 SET FORPAGACT=''N'' WHERE FORPAGOID='+QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGOID').AsString);  DM1.DCOM1.AppServer.EjecutaSql(xSQL);  End;
   If chkAnular.Checked Then  Begin xSQL:='UPDATE COB101 SET PERANUCUO=''S'' WHERE FORPAGOID='+QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGOID').AsString);  DM1.DCOM1.AppServer.EjecutaSql(xSQL);  End
   Else Begin xSQL:='UPDATE COB101 SET PERANUCUO=''N'' WHERE FORPAGOID='+QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGOID').AsString); DM1.DCOM1.AppServer.EjecutaSql(xSQL);   End;
   xSQL:='SELECT FORPAGOID,FORPAGODES,FORPAGACT,PERANUCUO FROM COB101 WHERE FORPAGOID NOT IN (SELECT FORPAGOID FROM COB_FOR_PAG_INA WHERE ESTADO=''0'') ORDER BY FORPAGOID ';
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(xSQL);
   DM1.cdsCuotas.Open;
   DM1.cdsCuotas.GotoBookmark(xRegistro);
end;

end.
