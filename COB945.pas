unit COB945;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdblook, ExtCtrls;

type
  TfCamGest = class(TForm)
    GroupBox1: TGroupBox;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    Panel3: TPanel;
    EdtDesGest: TEdit;
    Label6: TLabel;
    dblDist: TwwDBLookupCombo;
    Panel1: TPanel;
    EdtAsoCodMod: TEdit;
    Panel4: TPanel;
    EdtTelf: TEdit;
    Panel2: TPanel;
    EdtAsoApeNom: TEdit;
    Panel5: TPanel;
    mDireccion: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure dblDistChange(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCamGest: TfCamGest;

implementation

uses COBDM1, COB944;

{$R *.dfm}

procedure TfCamGest.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfCamGest.dblDistChange(Sender: TObject);
begin
   If DM1.cdsTPension.Locate('IDDIST',VarArrayof([dblDist.text]),[]) Then
      Begin
        EdtDesGest.Text := DM1.cdsTPension.FieldByName('DESDIST').Asstring;
      End
   Else
      Begin
        if Length(dblDist.Text) <> 2 then
           Begin
              Beep;
              EdtDesGest.Text  :='';
           End;
      End

end;

procedure TfCamGest.BitGrabarClick(Sender: TObject);
var xSQL:String;
begin
    Screen.Cursor:=crHourGlass;
    xSQL:='UPDATE CFC001 SET IDDIST='+QuotedStr(dblDist.Text)+',USUARIO='+QuotedStr(DM1.wUsuario)+',HREG=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsProvin.FieldByName('ASOID').AsString)+' AND PERIODO='+QuotedStr(Trim(fDistGestion.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fDistGestion.dbsMesIni.Text))]))) ;
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    Screen.Cursor:=crDefault;
    MessageDlg(' Registro De Asociado Cambiado a Gestión Por : '+pChar(EdtDesGest.Text) , mtInformation, [mbOk], 0); Close ;
end;

end.
