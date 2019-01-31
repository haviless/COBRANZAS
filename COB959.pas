unit COB959;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, wwdblook, Buttons, DB, DBClient, ExtCtrls,
  wwdbdatetimepicker;

type
  TfReclaCont = class(TForm)
    grbReclCont: TGroupBox;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    Label13: TLabel;
    Label11: TLabel;
    DtpFecReg: TDateTimePicker;
    Shape1: TShape;
    mObsPag: TMemo;
    Label10: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    EdtCodMod: TEdit;
    EdtNomGen: TEdit;
    EdtFecPre: TEdit;
    EdtCreDid: TEdit;
    EdtDesTip: TEdit;
    EdtMonto: TEdit;
    EdtNumCuo: TEdit;
    EdtMoneda: TEdit;
    rdbSupDoc: TRadioButton;
    rdbFraTer: TRadioButton;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure ActualizaCrono(xAsoId,xCreDid: String);
  public
    { Public declarations }
  end;

var
  fReclaCont: TfReclaCont;

implementation

uses COBDM1, COB903;

{$R *.dfm}

procedure TfReclaCont.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfReclaCont.BitGrabarClick(Sender: TObject);
var xSQL,xAsoId,xCreDid,xCreEstid,xCreEstado:String;
    Boton:Integer;
begin
If Length(Trim(mObsPag.Text))=0 Then
   Begin
       MessageDlg('Debe Ingresar El Motivo Por El Cual Se Realizara La Reclasificación !!!', mtError, [mbOk], 0);
       Exit;
   End;

xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;
xCreDid:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
Boton := Application.MessageBox (' ¿ Desea Grabar Los Datos Para La Reclasificación Contable De Este Credito ? ','Reclasificación De Prestamos  ',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin

      If rdbSupDoc.Checked Then
         Begin
            xCreEstid:='SP';
            xCreEstado:=rdbSupDoc.Caption;
         End;

      If rdbFraTer.Checked Then
         Begin
            xCreEstid:='FT';
            xCreEstado:=rdbFraTer.Caption;
         End;

      xSQL:='INSERT INTO REC_CON_CRE(ASOID, CREDID, ASOAPENOM, CREFOTORG, CREMTOOTOR, TIPDESEID, USUARIO, FREG, CRENUMCUO, USUREC, FREC, HREC, MOTREC, CREESTID, CREESTADO) VALUES ( '+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsSolicitud.FieldByName('CREDID').AsString)+','+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString)+','+FloatToStr(DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat)+','+QuotedStr(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString)+','+QuotedStr(DM1.cdsSolicitud.FieldByName('USUARIO').AsString)+','+QuotedStr(DM1.cdsSolicitud.FieldByName('FREG').AsString)+','+QuotedStr(DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString)+','+QuotedStr(DM1.wUsuario)+','+QuotedStr(DateToStr(DM1.FechaSys))+',SYSDATE,'+QuotedStr(Trim(mObsPag.Text))+','+QuotedStr(xCreEstid)+','+QuotedStr(xCreEstado)+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      xSQL:='UPDATE CRE301 SET CREESTID=''30'',CREESTADO=''RECLASIFICADO'' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      xSQL:='UPDATE CRE302 SET CREMTOCOB=0 , CRECAPITAL=0 , CREMTOINT=0 , CREMTOFLAT=0 ,CREESTID=''30'',CREESTADO=''RECLASIFICADO'' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      ActualizaCrono(xAsoId, xCreDid);
      Close;
   End;

end;

procedure TfReclaCont.ActualizaCrono(xAsoId, xCreDid: String);
var xCrecapital,xCremtoint,xCremtoflat,xCremtocob,xCremto:Currency ;
    xRegistro: TBookmark;
begin
xRegistro:=DM1.cdsSolicitud.GetBookmark;
DM1.AplicaSaldoPre(xAsoId, xCreDid);
DM1.cdsSolicitud.GotoBookmark(xRegistro);
end;

procedure TfReclaCont.FormActivate(Sender: TObject);
begin
DtpFecReg.DateTime:=DM1.FechaSys;
end;

end.
