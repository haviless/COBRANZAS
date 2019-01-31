unit COB927;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls, ComCtrls,
  wwdblook;

type
  TfDetGest = class(TForm)
    GroupBox1: TGroupBox;
    pnlItems: TPanel;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    Panel1: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    DtpFecGst: TDateTimePicker;
    Shape1: TShape;
    Panel3: TPanel;
    EdtDesGnt: TEdit;
    dblGestion: TwwDBLookupCombo;
    Label6: TLabel;
    Label1: TLabel;
    mDetObs: TMemo;
    Label2: TLabel;
    mRefCab: TMemo;
    dtgDetGestion: TwwDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    lblCodMod: TLabel;
    Label12: TLabel;
    lblTipAso: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    lblAsoNombres: TLabel;
    Label8: TLabel;
    lblCalificacion: TLabel;
    Label9: TLabel;
    lblSaldo: TLabel;
    Label10: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label14: TLabel;
    Label15: TLabel;
    lblNroGest: TLabel;
    BitPrint: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure BitSalirCabClick(Sender: TObject);
    procedure dblGestionChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitGrabarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function GnrNroGest():String;
    function OrdenGestion(xAsoid,xPeriodo,xNroGest,xAnoGest:String):String;
    
  public
    { Public declarations }
  end;

var
  fDetGest: TfDetGest;

implementation

uses COBDM1, COB925, COB926;

{$R *.dfm}

procedure TfDetGest.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfDetGest.BitSalirCabClick(Sender: TObject);
begin
 Close;
end;

procedure TfDetGest.dblGestionChange(Sender: TObject);
begin
If DM1.cdsTransacciones.Locate('IDGTN',VarArrayof([dblGestion.Text]),[]) Then
   Begin
      EdtDesGnt.Text  := DM1.cdsTransacciones.fieldbyname('DESCRIPCION').AsString ;
   End
Else
   Begin
   if Length(dblGestion.Text) <> 1 then
      Begin
        Beep;
        EdtDesGnt.Text  :='';
      End;
   End;

end;

procedure TfDetGest.FormActivate(Sender: TObject);
var xSQL,xAsoTipId:String;
begin
xSQL:='SELECT IDGTN,DESCRIPCION FROM COB344';
DM1.cdsTransacciones.Close;
DM1.cdsTransacciones.DataRequest(xSQL);
DM1.cdsTransacciones.Open;
DtpFecGst.Date:=DM1.FechaSys;
lblCodMod.Caption := DM1.cdsMovCre.fieldByname('ASOCODMOD').AsString;
lblAsoNombres.Caption := DM1.cdsMovCre.fieldByname('ASOAPENOM').AsString;
lblCalificacion.Caption := fGestCob.EdtDesCat.Text;
lblSaldo.Caption := FormatFloat('###,###.#0',DM1.Valores(DM1.cdsMovCre.fieldByname('SALDOS_T').AsString));
xAsoTipId:= DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)),'APO201','ASOTIPID');
lblTipAso.Caption := xAsoTipId+'-'+DM1.CrgDescrip('ASOTIPID='+QuotedStr(Trim(xAsoTipId)),'APO107','ASOTIPDES');
If DM1.xCnd = 'MDF' Then
   fCtrlGest.MstDetalles(DM1.cdsCambios.fieldByname('ASOID').AsString, DM1.cdsCambios.fieldByname('PERIODO').AsString, DM1.cdsCambios.fieldByname('ANOGEST').AsString, DM1.cdsCambios.fieldByname('NROGEST').AsString);

end;

procedure TfDetGest.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfDetGest.BitGrabarClick(Sender: TObject);
var xSQL,xNroGest,xHora:String;
    xOrden:String;
begin
If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
      End;

If (Length(Trim(EdtDesGnt.Text))=0) Or (Length(Trim(mDetObs.Text))=0) Then
   Begin
      MessageDlg(' <<<  A T E N C I O N  >>>   El Tipo y Gestión Realizada Son Campos Obligatorios..!!!  ', mtError,[mbOk],0);
      Exit;
   End;
If DM1.xCnd='NUE' Then
   Begin
     xNroGest:=GnrNroGest;
     xSQL:='INSERT INTO COB345(PERIODO,CFC_F,CFCDES_F,SALDO_FT,ASOID,NROGEST,FECHA,USUARIO,SALDO,CUOPEN,CREESTID,CREESTADO,MASDAT,ANOGEST) VALUES ('+QuotedStr(DM1.cdsMovCre.fieldByname('PERIODO').AsString)+
           ','+QuotedStr(DM1.cdsMovCre.fieldByname('CFC_F').AsString)+','+QuotedStr(DM1.cdsMovCre.fieldByname('CFCDES_F').AsString)+','+DM1.cdsMovCre.fieldByname('SALDOS_FT').AsString+
           ','+QuotedStr(DM1.cdsMovCre.fieldByname('ASOID').AsString)+','+QuotedStr(xNroGest)+','+QuotedStr(DateToStr(DtpFecGst.Date))+','+QuotedStr(DM1.wUsuario)+','+DM1.cdsMovCre.fieldByname('SALDOS_T').AsString+
           ','+DM1.cdsMovCre.fieldByname('CUO_PEN').AsString+',''02'',''POR COBRAR'','+QuotedStr(mRefCab.Text)+','+QuotedStr(Copy(DateToStr(DtpFecGst.Date),7,4))+')';
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     fGestCob.MstCabecera(DM1.cdsMovCre.fieldByname('ASOID').AsString,DM1.cdsMovCre.fieldByname('PERIODO').AsString);
   End;
If DM1.xCnd='MDF' Then
   Begin
     xNroGest:=DM1.cdsCambios.fieldByname('NROGEST').AsString;
     xSQL:='UPDATE COB345 SET MASDAT='+QuotedStr(mRefCab.Text)+' WHERE ASOID='+QuotedStr(DM1.cdsMovCre.fieldByname('ASOID').AsString)+' AND NROGEST='+QuotedStr(DM1.cdsCambios.fieldByname('NROGEST').AsString)+' AND ANOGEST='+QuotedStr(DM1.cdsCambios.fieldByname('ANOGEST').AsString)+' AND PERIODO='+QuotedStr(DM1.cdsCambios.fieldByname('PERIODO').AsString) ;
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
   DM1.cdsQry.Close; DM1.cdsQry.DataRequest('SELECT TO_CHAR(SYSDATE,''HH:MI:SS'') HORA  FROM DUAL ');  DM1.cdsQry.Open;
   xHora:=DM1.cdsQry.FieldByName('HORA').AsString; DM1.cdsQry.Close;
   xOrden:=OrdenGestion(DM1.cdsMovCre.fieldByname('ASOID').AsString, DM1.cdsMovCre.fieldByname('PERIODO').AsString, xNroGest, Copy(DateToStr(DtpFecGst.Date),7,4));
   xSQL:='INSERT INTO COB346(PERIODO,ASOID,NROGEST,FECHA,HORA,USUARIO,IDGESTION,DETOBS,ANOGEST,ORDEN) VALUES ('+QuotedStr(DM1.cdsMovCre.fieldByname('PERIODO').AsString)+','+QuotedStr(DM1.cdsMovCre.fieldByname('ASOID').AsString)+
         ','+QuotedStr(xNroGest)+','+QuotedStr(DateToStr(DM1.FechaSys))+','+QuotedStr(xHora)+','+QuotedStr(DM1.wUsuario)+','+QuotedStr(dblGestion.Text)+','+QuotedStr(mDetObs.Text)+','+QuotedStr(Copy(DateToStr(DtpFecGst.Date),7,4))+','+QuotedStr(xOrden)+')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);  dblGestion.Text:=''; mDetObs.Text := '';
   fCtrlGest.MstDetalles(DM1.cdsCambios.fieldByname('ASOID').AsString, DM1.cdsCambios.fieldByname('PERIODO').AsString, DM1.cdsCambios.fieldByname('ANOGEST').AsString, DM1.cdsCambios.fieldByname('NROGEST').AsString);
   If DM1.xCnd='NUE' Then Close;

end;

function TfDetGest.GnrNroGest: String;
Var xCorrAct:Integer;
    xCorrExe,xSQL:String;
begin
xSQL:='SELECT CREAREA,TIPO,CRENUMCOMP,CORREANO FROM CRE206 WHERE CREAREA=''COB'' AND  CORREANO='+QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)),7,4))+' AND TIPO=''G'' AND CTACTE=''GT-CB'' ';
DM1.cdsFEfec.Close;
DM1.cdsFEfec.DataRequest(xSQL);
DM1.cdsFEfec.Open;
If DM1.cdsFEfec.RecordCount=1 Then
   Begin
     xCorrAct:=StrToInt(DM1.cdsFEfec.fieldbyname('CRENUMCOMP').AsString) + 1;
     xCorrExe:=Format('%.6d',[xCorrAct]);
     DM1.cdsFEfec.Edit;
     DM1.cdsFEfec.fieldbyname('CRENUMCOMP').AsString:=xCorrExe;
     DM1.cdsFEfec.ApplyUpdates(0);
     DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL);  DM1.cdsQry.Open;
     If Trim(xCorrExe)>Trim(DM1.cdsQry.fieldbyname('CRENUMCOMP').AsString) Then xCorrExe:='';
     DM1.cdsQry.Close;
     Result:=xCorrExe;
   End;
DM1.cdsFEfec.Close;

end;

procedure TfDetGest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fGestCob.MstCabecera(DM1.cdsCambios.fieldByname('ASOID').AsString,DM1.cdsCambios.fieldByname('PERIODO').AsString);
end;

function TfDetGest.OrdenGestion(xAsoid, xPeriodo, xNroGest, xAnoGest: String): String;
var xSQL:String;
begin
    xSQL:='SELECT COUNT(*) REGISTROS FROM COB346 WHERE ASOID='+QuotedStr(xAsoId)+' AND PERIODO='+QuotedStr(xPeriodo)+' '+
          'AND NROGEST='+QuotedStr(xNroGest)+'  AND ANOGEST='+QuotedStr(xAnoGest)    ;
    DM1.cdsLiquid.Close;
    DM1.cdsLiquid.DataRequest(xSQL);
    DM1.cdsLiquid.Open;
    If DM1.cdsLiquid.RecordCount>0 Then
       Result:= Format('%.3d',[(DM1.cdsLiquid.FieldByName('REGISTROS').AsInteger + 1)])
    Else
       Result:='001';

    DM1.cdsLiquid.Close;
end;

end.
