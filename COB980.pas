unit COB980;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppStrtch, ppSubRpt,
  ppDBBDE, ppParameter, ppModule, daDataModule, wwdblook ;
  
type
  TfDetReclamo = class(TForm)
    BitSalir: TBitBtn;
    DBLReclamo: TwwDBLookupCombo;
    Label5: TLabel;
    mMenReclamo: TMemo;
    BitGrabarReclamo: TBitBtn;
    pnlReclamo: TPanel;
    EdtDesTip: TEdit;
    grbConclusion: TGroupBox;
    Label1: TLabel;
    DBLConclusion: TwwDBLookupCombo;
    Panel1: TPanel;
    EdtConRec: TEdit;
    BitGrabaSolucion: TBitBtn;
    mCierre: TMemo;
    Shape1: TShape;
    lblUsuConcluye: TLabel;
    lblRotulo: TLabel;
    lblRot01: TLabel;
    lblUsuReclamo: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarReclamoClick(Sender: TObject);
    procedure BitGrabaSolucionClick(Sender: TObject);
    procedure DBLReclamoChange(Sender: TObject);
    procedure DBLConclusionChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Function NroReclamo:String;
  public
    { Public declarations }
  end;

var
  fDetReclamo: TfDetReclamo;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDetReclamo.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfDetReclamo.BitGrabarReclamoClick(Sender: TObject);
var xAsoId,xSQL:String;
    xRegistro: TBookmark;
begin
   xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;
   xRegistro:=DM1.cdssitreclamo.GetBookmark;
   If Length(Trim(EdtDesTip.Text))=0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN TIPO DE RECLAMO!!!', mtError, [mbOk], 0);
         Exit;
      End;

   If Length(Trim(mMenReclamo.Text))=0 Then
      Begin
         MessageDlg('DEBE INGRESAR EL MOTIVO DEL RECLAMO!!!', mtError, [mbOk], 0);
         Exit;
      End;
   Screen.Cursor := crHourglass;
   xSQL:='INSERT INTO TGE310(ASOID,RECIDE,RECDNI,RECAREA,RECAPENOM,RECTIPIDE,RECDESC,RECRECUSU,RECFECREC,FREGREC) VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(NroReclamo)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','+QuotedStr('COB')+','+QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DBLReclamo.Text)+','+QuotedStr(mMenReclamo.Text)+','+QuotedStr(DM1.wUsuario)+','+QuotedStr(DateToStr(DM1.FechaSys))+',SYSDATE )';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL); mMenReclamo.ReadOnly:=True; BitGrabarReclamo.Enabled:=False; DBLReclamo.Enabled:=False;
   DBLConclusion.Enabled:=True; BitGrabaSolucion.Enabled:=True; mCierre.ReadOnly:=False;
   xSQL:='SELECT RECIDE, RECDNI, RECAREA, RECAPENOM, RECTIPIDE, B.REC_DESC, RECDESC, RECRECUSU, '+
         'RECFECREC, FREGREC, RECCONC, FRECFECCON, RECUSUCON, RECDESCCON, FREGCON, ASOID FROM TGE310 A, '+
         '(SELECT ID_RECLAMO,REC_DESC FROM TGE311 WHERE ID_AREA =''COB'') B WHERE ASOID='+QuotedStr(xAsoId)+' AND RECAREA=''COB'' '+
         'AND A.RECTIPIDE=B.ID_RECLAMO(+) ORDER BY FREGREC DESC';
   DM1.cdssitreclamo.Close;
   DM1.cdssitreclamo.DataRequest(xSQL);
   DM1.cdssitreclamo.Open;
   DM1.cdssitreclamo.GotoBookmark(xRegistro);
   lblRot01.Visible:=True; lblUsuReclamo.Caption:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.cdssitreclamo.FieldByName('RECRECUSU').AsString)),'TGE006','USERNOM')+'   ('+DM1.cdssitreclamo.FieldByName('FREGREC').AsString+')'; lblUsuReclamo.Visible:=True;
   Screen.Cursor := crDefault;

end;

procedure TfDetReclamo.BitGrabaSolucionClick(Sender: TObject);
var xSQL,xAsoId,xIdRec:String;
    xRegistro: TBookmark;
begin
   If Length(Trim(EdtConRec.Text))=0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN CONCLUCION PARA CERRAR EL RECLAMO!!!', mtError, [mbOk], 0);
         Exit;
      End;

   If Length(Trim(mCierre.Text))=0 Then
      Begin
         MessageDlg('DEBE INGRESAR LA CONCLUSION FINAL DEL RECLAMO!!!', mtError, [mbOk], 0);
         Exit;
      End;
   xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;
   xIdRec:=DM1.cdssitreclamo.FieldByName('RECIDE').AsString;
   xRegistro:=DM1.cdssitreclamo.GetBookmark;
   Screen.Cursor := crHourglass;
   xSQL:='UPDATE TGE310 SET RECCONC='+QuotedStr(DBLConclusion.Text)+',FRECFECCON='+QuotedStr(DateToStr(DM1.FechaSys))+',RECUSUCON='+QuotedStr(DM1.wUsuario)+',RECDESCCON='+QuotedStr(mCierre.Text)+',FREGCON=SYSDATE WHERE ASOID='+QuotedStr(xAsoId)+' AND RECIDE='+QuotedStr(xIdRec) ;
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   DBLConclusion.Enabled:=False; BitGrabaSolucion.Enabled:=False; mCierre.ReadOnly:=True;
   xSQL:='SELECT RECIDE, RECDNI, RECAREA, RECAPENOM, RECTIPIDE, B.REC_DESC, RECDESC, RECRECUSU, '+
         'RECFECREC, FREGREC, RECCONC, FRECFECCON, RECUSUCON, RECDESCCON, FREGCON, ASOID FROM TGE310 A, '+
         '(SELECT ID_RECLAMO,REC_DESC FROM TGE311 WHERE ID_AREA =''COB'') B WHERE ASOID='+QuotedStr(xAsoId)+' AND RECAREA=''COB'' '+
         'AND A.RECTIPIDE=B.ID_RECLAMO(+) ORDER BY FREGREC DESC';
   DM1.cdssitreclamo.Close;
   DM1.cdssitreclamo.DataRequest(xSQL);
   DM1.cdssitreclamo.Open;
   DM1.cdssitreclamo.GotoBookmark(xRegistro);
   fDetReclamo.lblUsuConcluye.Visible:=True; fDetReclamo.lblRotulo.Visible:=True;
   lblUsuConcluye.Caption:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.cdssitreclamo.FieldByName('RECUSUCON').AsString)),'TGE006','USERNOM')+'  ('+DM1.cdssitreclamo.FieldByName('FREGCON').AsString+')';
   Screen.Cursor := crDefault;


end;

procedure TfDetReclamo.DBLReclamoChange(Sender: TObject);
begin
   If DM1.cdsFormaPago.Locate('ID_RECLAMO',VarArrayof([DBLReclamo.text]),[]) Then
      Begin
        EdtDesTip.Text  := DM1.cdsFormaPago.fieldbyname('REC_DESC').AsString ;
      End
   Else
      Begin
        if Length(DBLReclamo.Text) <> 3 then
           Begin
              Beep;
              EdtDesTip.Text  :='';
           End;
      End

end;

procedure TfDetReclamo.DBLConclusionChange(Sender: TObject);
begin
   If DM1.cdsFormPago.Locate('ID_TIPCON',VarArrayof([DBLConclusion.text]),[]) Then
      Begin
        EdtConRec.Text  := DM1.cdsFormPago.fieldbyname('DES_TIPCON').AsString ;
      End
   Else
      Begin
        if Length(DBLConclusion.Text) <> 2 then
           Begin
              Beep;
              EdtConRec.Text  :='';
           End;
      End

end;

procedure TfDetReclamo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

function TfDetReclamo.NroReclamo: String;
var xSQL:String;
    xNroReclamo:Integer;
begin
   xSQL:='SELECT TO_NUMBER(MAX(RECIDE)) NUMERO FROM TGE310 WHERE RECAREA=''COB'' AND TO_CHAR(RECFECREC,''YYYY'')='+QuotedStr(Copy(DateToStr(DM1.FechaSys),7,4));
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If Length(Trim(DM1.cdsQry.FieldByName('NUMERO').AsString))=0 Then
      xNroReclamo:=1
   Else
      xNroReclamo:=DM1.cdsQry.FieldByName('NUMERO').AsInteger + 1 ;

   Result:=Format('%.6d',[xNroReclamo]);


end;

end.
