unit COB928;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, wwdbedit, wwdblook, Buttons;

type
  TfDatGes = class(TForm)
    gpbDatGest: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lkcDpto: TwwDBLookupCombo;
    lkcProv: TwwDBLookupCombo;
    lkcDist: TwwDBLookupCombo;
    dbeDirec: TwwDBEdit;
    dbeTel1: TwwDBEdit;
    dbeTel2: TwwDBEdit;
    Panel1: TPanel;
    edtDpto: TEdit;
    Panel2: TPanel;
    edtProv: TEdit;
    Panel3: TPanel;
    edtDist: TEdit;
    BitSalir: TBitBtn;
    BitGrabar: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
    procedure lkcDptoChange(Sender: TObject);
    procedure edtDptoChange(Sender: TObject);
    procedure lkcProvChange(Sender: TObject);
    procedure edtProvChange(Sender: TObject);
    procedure lkcDistChange(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDatGes: TfDatGes;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDatGes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfDatGes.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfDatGes.lkcDptoChange(Sender: TObject);
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

procedure TfDatGes.edtDptoChange(Sender: TObject);
begin
       DM1.cdsHijo.Close;
       DM1.cdsHijo.DataRequest('SELECT DPTOID||CIUDID AS PROVID,'+
                                           'CIUDDES AS PROVDES'+
                                           ' FROM TGE121'+
                                           ' WHERE DPTOID='''+TRIM(lkcDpto.Text)+''' ');
       DM1.cdsHijo.Open;


end;

procedure TfDatGes.lkcProvChange(Sender: TObject);
begin
   If DM1.cdsHijo.Locate('PROVID',lkcProv.Text,[]) then
       edtProv.Text := DM1.cdsHijo.FieldByName('PROVDES').asstring
   Else
       edtProv.Text := '';

end;

procedure TfDatGes.edtProvChange(Sender: TObject);
begin
  DM1.cdsSAso.Close;
  DM1.cdsSAso.DataRequest('SELECT * FROM APO122 WHERE CIUDID='''+TRIM(lkcProv.Text)+''' ');
  DM1.cdsSAso.Open;

end;

procedure TfDatGes.lkcDistChange(Sender: TObject);
begin
    If DM1.cdsSAso.Locate('ZIPID',lkcDist.Text,[]) then
        edtDist.Text := DM1.cdsSAso.FieldByName('ZIPDES').asstring
    Else
        edtDist.Text := '';

end;

procedure TfDatGes.BitGrabarClick(Sender: TObject);
var Boton:Integer;
    xSQL:String;
begin
   Boton := Application.MessageBox ('Seguro De Actualizar Estos Datos En El Mestro De Asociados','Gestión De Cobranza',MB_YESNO+MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
      xSQL:='UPDATE APO201 '
           +'SET DPTOID='+QuotedStr(lkcDpto.Text)+','
           +'    CIUDID='+QuotedStr(lkcProv.Text)+','
           +'    ZIPID='+QuotedStr(lkcDist.Text)+','
           +'    ASODIR='+QuotedStr(dbeDirec.Text)+','
           +'    ASOTELF1='+QuotedStr(dbeTel1.Text)+','
           +'    ASOTELF2='+QuotedStr(dbeTel2.Text)+' '
           +'WHERE ASOID='+QuotedStr(DM1.cdsMovCre.fieldByname('ASOID').AsString);
   //   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      Close;
   End;
end;

end.
