unit COB453;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, Buttons,
  DBGrids, Spin, DB, ExtCtrls;

type
  TFCuoPagBanAde = class(TForm)
    GroupBox1  : TGroupBox;
    btnprocesar: TBitBtn;
    btnexpotar : TBitBtn;
    btncerrar  : TBitBtn;
    dbgReporte : TwwDBGrid;
    Label3     : TLabel;
    dtgData    : TDBGrid;
    Label7     : TLabel;
    seAno      : TSpinEdit;
    seMes      : TSpinEdit;
    rgProcCob  : TRadioGroup;
    dbdtpFecha1: TwwDBDateTimePicker;
    dbdtpFecha2: TwwDBDateTimePicker;
    procedure btnprocesarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btncerrarClick(Sender: TObject);
    procedure btnexpotarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure seMesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCuoPagBanAde: TFCuoPagBanAde;

implementation

uses COBDM1;

{$R *.dfm}

Procedure TFCuoPagBanAde.btnprocesarClick(Sender: TObject);
Var
   xSql, xFecha1, xFecha2 : String;
Begin
   if (Length(seAno.Text) = 0 ) or ( Length(seMes.Text) = 0 ) Then
   begin
      ShowMessage('Error : Falta Ingresar el Periodo.');
      Exit;
   end;
   xFecha1 := datetostr(dbdtpFecha1.date);
   xFecha2 := datetostr(dbdtpFecha2.date);

   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT C.UPROID, C.UPAGOID, C.USEID, C.ASOID, C.ASOCODMOD, C.ASOAPENOMDNI, C.ASODNI, '
          +'       B.CREDID NUMCRE, A.NUMOPE, A.MONTOT,''N'' TIENEVENCIDAS, 0.00 MONTOVENCIDAS '
          +'  FROM COB348 A, CRE310 B, APO201 C '
          +' WHERE TO_DATE(A.FECPRO,''YYYYMMDD'') >= '+QuotedStr(xFecha1)
          +'   AND TO_DATE(A.FECPRO,''YYYYMMDD'') <= '+QuotedStr(xFecha2)
          +'   AND SUBSTR(A.CAMRET,21,10) = B.ASOID AND ''OP-0''||A.NUMOPE = B.CREDOCPAG '
          +'   AND TO_DATE(A.FECPAG,''YYYYMMDD'') = B.CREFPAG '
          +'   AND B.CREESTID NOT IN (''04'',''13'') AND B.CREESTID = ''23'' '
          +'   AND SUBSTR(A.CAMRET,21,10) = C.ASOID '
          +' GROUP BY C.UPROID, C.UPAGOID, C.USEID, C.ASOID, C.ASOCODMOD, C.ASOAPENOMDNI, '
          +'          C.ASODNI, B.CREDID, A.NUMOPE, A.MONTOT '
          +' ORDER BY C.ASODNI, C.ASOAPENOMDNI ';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;

   DM1.cdsReporte.DisableControls;
   DM1.cdsReporte.First;
   while not DM1.cdsReporte.Eof do
   begin
      xSQL := 'SELECT CREMTO-nvl(CREMTOCOB,0) SALDO '
             +'  FROM CRE302 '
             +' WHERE ASOID  = '+quotedstr(DM1.cdsReporte.FieldByName('ASOID').AsString)
             +'   AND CREDID = '+quotedstr(DM1.cdsReporte.FieldByName('NUMCRE').AsString)
             +'   AND CREANO||CREMES<='+quotedstr(seAno.Text+DM1.StrZero(seMes.Text,2));
      if rgProcCob.ItemIndex=0 then
         xSQL := xSQL+'  and CREESTID in (''02'',''11'',''27'') '
      else
         xSQL := xSQL+'  and CREESTID in (''02'',''11'',''27'',''14'') ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      if DM1.cdsQry.FieldByName('SALDO').AsFloat>0 then
      begin
         DM1.cdsReporte.Edit;
         DM1.cdsReporte.FieldByName('TIENEVENCIDAS').AsString:='S';
         DM1.cdsReporte.FieldByName('MONTOVENCIDAS').AsFloat:=DM1.cdsQry.FieldByName('SALDO').AsFloat;
         DM1.cdsReporte.Post;
      end;
      DM1.cdsReporte.Next;
   end;

   DM1.cdsReporte.EnableControls;
   DM1.cdsReporte.First;

   dbgReporte.Selected.Clear;
   dbgReporte.Selected.Add('UPROID'#9'3'#9'Unidad~proceso'#9#9);
   dbgReporte.Selected.Add('UPAGOID'#9'3'#9'unidad~pago'#9#9);
   dbgReporte.Selected.Add('USEID'#9'3'#9'Unidad~gestión'#9#9);
   dbgReporte.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
   dbgReporte.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y Nombre(s)'#9#9);
   dbgReporte.Selected.Add('ASODNI'#9'12'#9'DNI'#9#9);
   dbgReporte.Selected.Add('NUMCRE'#9'20'#9'Número~crédito'#9#9);
   dbgReporte.Selected.Add('NUMOPE'#9'6'#9'Número~operación'#9#9);
   dbgReporte.Selected.Add('MONTOT'#9'10'#9'Monto~depositado'#9);
   dbgReporte.Selected.Add('TIENEVENCIDAS'#9'5'#9'Tiene~Vencidas'#9);
   dbgReporte.Selected.Add('MONTOVENCIDAS'#9'10'#9'Monto~Vencidas'#9);

   TNumericField(DM1.cdsReporte.FieldByName('MONTOT')).DisplayFormat:='###,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('MONTOVENCIDAS')).DisplayFormat:='###,###,##0.00';

   dbgReporte.ApplySelected;
   Screen.Cursor := crDefault;
End;

procedure TFCuoPagBanAde.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End;
end;

procedure TFCuoPagBanAde.btncerrarClick(Sender: TObject);
begin
  FCuoPagBanAde.Close;
end;

procedure TFCuoPagBanAde.btnexpotarClick(Sender: TObject);
begin
   if not DM1.cdsReporte.Active then
   begin
      ShowMessage('Debe procesar previamente la información');
      btnprocesar.SetFocus;
      exit;
   end;

  If DM1.cdsReporte.RecordCount = 0 Then
  begin
    MessageDlg('No existe información para mostrar.', mtInformation,[mbOk],0);
    seMes.SetFocus;
    exit;
  End;
  Screen.Cursor := crHourGlass;
  DM1.HojaExcel('INFORMACION',DM1.dsReporte, dtgData);
  Screen.Cursor := crDefault;
end;

procedure TFCuoPagBanAde.FormActivate(Sender: TObject);
var
   wAno, wMes, wDia : word;
begin
   if DM1.cdsReporte.Active = true then DM1.cdsReporte.Close;
   decodedate(DM1.FechaSys, wAno, wMes, wDia);
   seAno.Text := inttostr(wAno);
   seMes.Text := inttostr(wMes-1);

   dbdtpFecha1.date := strtodate('01/'+ DM1.StrZero(seMes.Text,2)+'/'+seAno.Text);
   dbdtpFecha2.date := strtodate(DM1.UltimoDia(strtoint(seMes.Text),strtoint(seAno.Text))
                   +'/'+ DM1.StrZero(seMes.Text,2)+'/'+seAno.Text);
end;

procedure TFCuoPagBanAde.seMesChange(Sender: TObject);
begin
   if (strtoint(seMes.Text)>0) and (strtoint(seMes.Text)<13) then
   begin
      dbdtpFecha1.date := strtodate('01/'+ DM1.StrZero(seMes.Text,2)+'/'+seAno.Text);
      dbdtpFecha2.date := strtodate(DM1.UltimoDia(strtoint(seMes.Text),strtoint(seAno.Text))
                   +'/'+ DM1.StrZero(seMes.Text,2)+'/'+seAno.Text);
   end;
end;

end.
