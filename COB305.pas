unit COB305;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdbdatetimepicker, wwdblook, StdCtrls, Mask, wwdbedit, Buttons,
  ComCtrls, ExtCtrls, Wwdbspin;


type
  TfRepRefDep = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    BitImprimir: TBitBtn;
    lkcDpto: TwwDBLookupCombo;
    Panel1: TPanel;
    edtDpto: TEdit;
    Label8: TLabel;
    DBLCTipC: TwwDBLookupCombo;
    Panel3: TPanel;
    EdtTipCob: TEdit;
    Label1: TLabel;
    dbseAno: TwwDBSpinEdit;
    dbseMes: TwwDBSpinEdit;
    Label2: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure lkcDptoChange(Sender: TObject);
    procedure DBLCTipCChange(Sender: TObject);
    procedure BitImprimirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepRefDep: TfRepRefDep;

implementation

uses COBDM1;

{$R *.DFM}


procedure TfRepRefDep.BitSalirClick(Sender: TObject);
begin
 Close;
end;

procedure TfRepRefDep.lkcDptoChange(Sender: TObject);
begin
   If DM1.cdsPadre.Locate('DPTOID',VarArrayof([lkcDpto.text]),[]) Then
      Begin
        EdtDpto.Text := DM1.cdsPadre.FieldByName('DPTODES').Asstring
      End
   Else
      Begin
        if Length(lkcDpto.Text) <> 2 then
           Begin
              Beep;
              EdtDpto.Text  :='';
           End;
      End


end;

procedure TfRepRefDep.DBLCTipCChange(Sender: TObject);
begin
   If DM1.cdsTtransaccion.Locate('FORPAGOID',VarArrayof([DBLCTipC.Text]),[]) Then
        EdtTipCob.Text  := DM1.cdsTtransaccion.fieldbyname('FORPAGODES').AsString
   Else
      Begin
        if Length(DBLCTipC.Text) <> 2 then
           Begin
              Beep;
              EdtTipCob.Text  :='';
           End;
      End

end;

procedure TfRepRefDep.BitImprimirClick(Sender: TObject);
Var xPeriodo:String;
begin
xPeriodo:=Trim(dbseAno.Text)+Format('%.2d',[StrToInt(dbseMes.Text)]);




end;

End.




