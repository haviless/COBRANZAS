unit COB801;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Spin;

type
  TFmardesprocob = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btnactualiza: TBitBtn;
    btncerrar: TBitBtn;
    Panel1: TPanel;
    measocodmod: TMaskEdit;
    Panel2: TPanel;
    measoapenom: TMaskEdit;
    Panel3: TPanel;
    mecrefotorg: TMaskEdit;
    Panel4: TPanel;
    meTipcredes: TMaskEdit;
    Panel5: TPanel;
    meCredid: TMaskEdit;
    Panel6: TPanel;
    mecrecuota: TMaskEdit;
    Panel7: TPanel;
    mecreestado: TMaskEdit;
    Panel9: TPanel;
    mecremto: TMaskEdit;
    Panel10: TPanel;
    mecremtocob: TMaskEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Panel11: TPanel;
    mecreestadonue: TMaskEdit;
    Label9: TLabel;
    Label11: TLabel;
    semes: TSpinEdit;
    Label12: TLabel;
    seano: TSpinEdit;
    Panel8: TPanel;
    mepercob: TMaskEdit;
    Label13: TLabel;
    Panel12: TPanel;
    mecremtonue: TMaskEdit;
    Label14: TLabel;
    Panel14: TPanel;
    mecremtocobnue: TMaskEdit;
    Label10: TLabel;
    Label15: TLabel;
    Panel13: TPanel;
    meusuario: TMaskEdit;
    Panel15: TPanel;
    mefechor: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btnactualizaClick(Sender: TObject);
  private
    xcreestadonue, xcreestidnue :String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmardesprocob: TFmardesprocob;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFmardesprocob.FormActivate(Sender: TObject);
Var xanoact, xmesact, xcreestid, xCondicion:String;
    xanomin, xanomax :Integer;
    xfechor, xSql, xanomesact, xanomesven :String;
begin
  xcreestid := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
  xSql := 'SELECT TO_CHAR(SYSDATE, ''YYYYMM'') PERSIS, SYSDATE FECHOR FROM DUAL';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xfechor := DM1.cdsQry.FieldByName('FECHOR').AsString;
  xanomesact := DM1.cdsQry.FieldByName('PERSIS').AsString;
  If xcreestid = '14' Then
  Begin
    Fmardesprocob.Caption := 'Proceso de desmarcado de cuota en proceso de cobranza';
    Label9.Visible  := False;
    Label11.Visible := False;
    Label12.Visible := False;
    semes.Visible   := False;
    seano.Visible   := False;
    GroupBox2.Height := 119;
    Fmardesprocob.Height := 383;
    xanomesven := Copy(DM1.cdsCuotas.FieldByName('CREFVEN').AsString,7,4)+Copy(DM1.cdsCuotas.FieldByName('CREFVEN').AsString,4,2);
    If xanomesact < xanomesven Then
    Begin
      xcreestidnue := '02';
      xcreestadonue := 'POR COBRAR';
    End
    Else
    Begin
      xcreestidnue  := '11';
      xcreestadonue := 'NO PAGADO';
    End;
    If DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat > 0 THEN
    Begin
      xcreestidnue  := '27';
      xcreestadonue := 'PARCIAL';
    End;
    mecreestadonue.Text := xcreestadonue;
  End;
  If (xcreestid = '02') Or (xcreestid = '11') Or (xcreestid = '27') Then
  Begin
    Fmardesprocob.Caption := 'Proceso de marcado de cuota en proceso de cobranza';
    Label9.Visible  := True;
    Label11.Visible := True;
    Label12.Visible := True;
    semes.Visible   := True;
    seano.Visible   := True;
    GroupBox2.Height := 165;
    Fmardesprocob.Height := 428;
    mecreestadonue.Text := 'EN PROCESO DE COBRANZA';
    xcreestidnue := '14';
    xcreestadonue := 'EN PROCESO DE COBRANZA';
  End;
  measocodmod.Text := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
  measoapenom.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
  meCredid.Text    := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
  xCondicion       := 'TIPCREID='+QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString));
  meTipcredes.Text := DM1.cdsSolicitud.FieldByName('TIPCREID').AsString+' - '+DM1.CrgDescrip(xCondicion,'CRE110','TIPCREDES');
  mecrefotorg.Text := DM1.cdsSolicitud.FieldByName('CREFOTORG').asString;
  mecrecuota.Text  := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
  mecreestado.Text := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
  mepercob.Text    := Copy(DM1.cdsCuotas.FieldByName('PERCOB').AsString,5,2)+'/'+Copy(DM1.cdsCuotas.FieldByName('PERCOB').AsString,1,4);
  mecremto.Text       := FloatToStrF(DM1.cdsCuotas.FieldByName('CREMTO').AsFloat,ffNumber,10,2);
  mecremtocob.Text    := FloatToStrF(DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat,ffNumber,10,2);
  mecremtonue.Text    := FloatToStrF(DM1.cdsCuotas.FieldByName('CREMTO').AsFloat,ffNumber,10,2);
  mecremtocobnue.Text := FloatToStrF(DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat,ffNumber,10,2);
  meusuario.Text      := DM1.wUsuario;
  mefechor.Text       := xfechor;
  xanoact := Copy(DateToStr(date),7,4);
  xmesact := Copy(DateToStr(date),4,2);
  xanomin := StrToInt(xanoact)-1;
  xanomax := StrToInt(xanoact)+1;
  seano.MinValue := xanomin;
  seano.MaxValue := xanomax;
  semes.Text := xmesact;
  seano.Text := xanoact;
end;

procedure TFmardesprocob.btncerrarClick(Sender: TObject);
begin
  Fmardesprocob.Close;
end;

Procedure TFmardesprocob.btnactualizaClick(Sender: TObject);
Var xSql, xpercob:String;
Begin
  If xcreestidnue = '14' Then
  Begin
    xpercob := DM1.StrZero(seano.Text,4)+DM1.StrZero(semes.Text,2);
    xSql := 'SELECT COUNT(*) CUENTA FROM COB319 WHERE ASOID = '+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)
    +' AND COBANO||COBMES  = '+QuotedStr(xpercob)
    +' AND NVL(MONCUOENV,0) > 0 AND NVL(MONCUOAPL,0) = 0';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    If DM1.cdsQry.FieldByName('CUENTA').AsInteger = 0 Then
    Begin
      MessageDlg('No existe cobranza pendiente en el periodo seleccionado', mtError, [mbOk], 0);
      Exit;
    End;
  End;

  If MessageDlg('¿Está seguro de actualizar el proceso de cobranza?', mtconfirmation,[mbYes,MbNo],0) = mrNo Then Exit;
  xSql := 'INSERT INTO COB_MAR_PRO_COB_MAN (ASOID, CREDID, CRECUOTA, CREFVEN, CREESTID_ACT, CREESTADO_ACT, CREESTID_NUE,'
  +' CREESTADO_NUE, USUARIOMOD, FECHORMOD, CREMTOCOB, PERCOB_ACT, PERCOB_NUE, ASOAPENOM)'
  +' VALUES ('
  +QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','
  +QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+','
  +DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','
  +QuotedStr(DM1.cdsCuotas.FieldByName('CREFVEN').AsString)+','
  +QuotedStr(DM1.cdsCuotas.FieldByName('CREESTID').AsString)+','
  +QuotedStr(DM1.cdsCuotas.FieldByName('CREESTADO').AsString)+','
  +QuotedStr(xcreestidnue)+','
  +QuotedStr(xcreestadonue)+','
  +QuotedStr(DM1.wUsuario)+', SYSDATE,'
  +DM1.cdsCuotas.FieldByName('CREMTOCOB').AsString+','
  +QuotedStr(DM1.cdsCuotas.FieldByName('PERCOB').AsString)+','
  +QuotedStr(xpercob)+','
  +QuotedStr(DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString)+')';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  xSql := 'UPDATE CRE302 SET CREESTID = '+QuotedStr(xcreestidnue)
  +' , CREESTADO = '+QuotedStr(xcreestadonue);
  If xcreestidnue = '14' Then
    xSql := xSql + ', PERCOB = '+QuotedStr(xpercob)+' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)
    +' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' AND CRECUOTA = '+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString
  Else
    xSql := xSql + ', PERCOB = NULL WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)
    +' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' AND CRECUOTA = '+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  DM1.cdsCuotas.Edit;
  DM1.cdsCuotas.FieldByName('CREESTID').AsString  := xcreestidnue;
  DM1.cdsCuotas.FieldByName('CREESTADO').AsString := xcreestadonue;
  DM1.cdsCuotas.FieldByName('PERCOB').AsString := xpercob;
  DM1.cdsCuotas.ApplyUpdates(0);
  MessageDlg('La actualización ha concluido', mtError, [mbOk], 0);
  Fmardesprocob.Close;
End;

end.
