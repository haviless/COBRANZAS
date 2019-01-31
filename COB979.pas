unit COB979;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, Buttons, StdCtrls, ExtCtrls,Db;

type
  TfReclaAso = class(TForm)
    dtgReclaAso: TwwDBGrid;
    dtgReclaAsoIButton: TwwIButton;
    BitSalir: TBitBtn;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    procedure BitSalirClick(Sender: TObject);
    procedure dtgReclaAsoIButtonClick(Sender: TObject);
    procedure dtgDetReclamosDblClick(Sender: TObject);
    procedure dtgReclaAsoDblClick(Sender: TObject);
    procedure dtgReclaAsoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReclaAso: TfReclaAso;

implementation

uses COBDM1, COB980;

{$R *.dfm}

procedure TfReclaAso.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TfReclaAso.dtgReclaAsoIButtonClick(Sender: TObject);
begin
fDetReclamo:=Nil;
fDetReclamo:= TfDetReclamo.create(self);
fDetReclamo.lblUsuConcluye.Visible:=False; fDetReclamo.lblRotulo.Visible:=False;
fDetReclamo.Showmodal;
fDetReclamo.free;
end;

procedure TfReclaAso.dtgDetReclamosDblClick(Sender: TObject);
begin
fDetReclamo:=Nil;
fDetReclamo:= TfDetReclamo.create(self);
fDetReclamo.Showmodal;
fDetReclamo.free;
end;

procedure TfReclaAso.dtgReclaAsoDblClick(Sender: TObject);
begin
fDetReclamo:=Nil;
fDetReclamo:= TfDetReclamo.create(self);

fDetReclamo.DBLReclamo.Text:=DM1.cdssitreclamo.FieldByName('RECTIPIDE').AsString;
fDetReclamo.mMenReclamo.Text:=DM1.cdssitreclamo.FieldByName('RECDESC').AsString;
fDetReclamo.mMenReclamo.ReadOnly:=True; fDetReclamo.BitGrabarReclamo.Enabled:=False; fDetReclamo.DBLReclamo.Enabled:=False;
If Length(Trim(DM1.cdssitreclamo.FieldByName('RECCONC').AsString))=0 Then
   Begin
     fDetReclamo.DBLConclusion.Enabled:=True; fDetReclamo.BitGrabaSolucion.Enabled:=True; fDetReclamo.mCierre.ReadOnly:=False;
     fDetReclamo.lblRot01.Visible:=True; fDetReclamo.lblUsuReclamo.Caption:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.cdssitreclamo.FieldByName('RECRECUSU').AsString)),'TGE006','USERNOM')+'   ('+DM1.cdssitreclamo.FieldByName('FREGREC').AsString+')'; fDetReclamo.lblUsuReclamo.Visible:=True;     
   End
Else
   Begin
       fDetReclamo.lblUsuConcluye.Visible:=True;  fDetReclamo.lblRotulo.Visible:=True;
       fDetReclamo.lblRot01.Visible:=True; fDetReclamo.lblUsuReclamo.Caption:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.cdssitreclamo.FieldByName('RECRECUSU').AsString)),'TGE006','USERNOM')+'   ('+DM1.cdssitreclamo.FieldByName('FREGREC').AsString+')'; fDetReclamo.lblUsuReclamo.Visible:=True;
       fDetReclamo.lblUsuConcluye.Caption:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.cdssitreclamo.FieldByName('RECUSUCON').AsString)),'TGE006','USERNOM')+'   ('+DM1.cdssitreclamo.FieldByName('FREGCON').AsString+')';
       fDetReclamo.DBLConclusion.Text:=DM1.cdssitreclamo.FieldByName('RECCONC').AsString;
       fDetReclamo.mCierre.Text:=DM1.cdssitreclamo.FieldByName('RECDESCCON').AsString;
   End;

fDetReclamo.Showmodal;
fDetReclamo.free;

end;

procedure TfReclaAso.dtgReclaAsoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
If Length(Trim(DM1.cdssitreclamo.FieldByName('RECCONC').AsString))>0 Then
   Begin
      dtgReclaAso.Canvas.Font.Color := clGreen;
      dtgReclaAso.DefaultDrawDataCell(rect,Field,State);
   End;
If Length(Trim(DM1.cdssitreclamo.FieldByName('RECCONC').AsString))=0 Then
   Begin
      dtgReclaAso.Canvas.Font.Color := clNavy;
      dtgReclaAso.DefaultDrawDataCell(rect,Field,State);
   End;

end;

end.
