// Inicio Uso Estándares  : 01/08/2011
// Unidad		          : COBD06
// Formulario		      : fTipAtencion
// Fecha de Creación      : 01/01/2010
// Autor			      : Equipo de Sistemas
// Objetivo		          : Ingresar tipo de atención del asociado

// Actualizaciones:
// HPC_201719_COB         : Mejoras funcionales en el registro de la atención del asociado

unit COBD06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  //Inicio HPC_201719_COB
  //Mejoras funcionales en el registro de la atención del asociado
  Dialogs, StdCtrls, ExtCtrls, wwdblook, Buttons, ComCtrls;
  //Fin HPC_201719_COB

type
  TfTipAtencion = class(TForm)
    dblGestionDet: TwwDBLookupCombo;
    Label10: TLabel;
    Panel2: TPanel;
    EdtDesGntDet: TEdit;
    mDetObs: TMemo;
    BitSalir: TBitBtn;
    BitGrabar: TBitBtn;
    BitAteAnt: TBitBtn;
    //Inicio HPC_201719_COB
    //Mejoras funcionales en el registro de la atención del asociado
    pnl1: TPanel;
    pnl2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtTelefono: TEdit;
    edtCelular: TEdit;
    Label4: TLabel;
    edtCorreo: TEdit;
    Label5: TLabel;
    dblMotivoAtraso: TwwDBLookupCombo;
    edtMotivoAtraso: TEdit;
    pnl3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    edtMontoPactado: TEdit;
    mDireccion: TMemo;
    dtpFechaPactada: TDateTimePicker;
    //Fin HPC_201719_COB
    procedure FormActivate(Sender: TObject);
    procedure dblGestionDetChange(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure BitAteAntClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    //Inicio HPC_201719_COB
    //Mejoras funcionales en el registro de la atención del asociado
    procedure edtCorreoExit(Sender: TObject);
    procedure edtTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCelularKeyPress(Sender: TObject; var Key: Char);
    procedure edtMontoPactadoKeyPress(Sender: TObject; var Key: Char);
    procedure dblMotivoAtrasoChange(Sender: TObject);
    //Fin HPC_201719_COB
  private
    { Private declarations }
  public
    { Public declarations }
    //Inicio HPC_201719_COB
    //Mejoras funcionales en el registro de la atención del asociado
    xpanel1,xpanel2,xpanel3:Boolean;
    //Fin HPC_201719_COB
  end;

var
  fTipAtencion: TfTipAtencion;

implementation

uses COBDM1, COBD07;

{$R *.dfm}

procedure TfTipAtencion.FormActivate(Sender: TObject);
begin
DM1.cdsTipCreA.Close;
//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
//DM1.cdsTipCreA.DataRequest('SELECT IDGTN,IDGTNDET,DESCRIPCION FROM GES_REF_SEG_DET WHERE IDGTN=''02'' ORDER BY IDGTNDET');
DM1.cdsTipCreA.DataRequest('SELECT IDGTN,IDGTNDET,DESCRIPCION,NVL(PNLOPCVIS1,''-'') PNLOPCVIS1,NVL(PNLOPCVIS2,''-'') PNLOPCVIS2,NVL(PNLOPCVIS3,''-'') PNLOPCVIS3 FROM GES_REF_SEG_DET WHERE IDGTN=''02'' AND ACTIVO=''S'' ORDER BY IDGTNDET');
//Fin HPC_201719_COB
DM1.cdsTipCreA.Open;
//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
pnl1.Visible:=false;
pnl2.Visible:=false;
pnl3.Visible:=false;
fTipAtencion.ClientHeight:=202;
fTipAtencion.ClientWidth:=310;
BitGrabar.Left:=109;
BitGrabar.Top:=173;
BitSalir.Left:=205;
BitSalir.Top:=173;
DM1.cdsQryMotAtraso.DataRequest('SELECT CODMOT,DESMOT FROM COB_MOT_ATR_MAE WHERE ACTIVO=''S''');
DM1.cdsQryMotAtraso.Open;
//Fin HPC_201719_COB
end;

procedure TfTipAtencion.dblGestionDetChange(Sender: TObject);
//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
var
  pnl1Visual,pnl2Visual,pnl3Visual:String;
//Fin HPC_201719_COB
begin
If DM1.cdsTipCreA.Locate('IDGTNDET',VarArrayof([dblGestionDet.Text]),[]) Then
   Begin
      EdtDesGntDet.Text  := DM1.cdsTipCreA.fieldbyname('DESCRIPCION').AsString ;
      //Inicio HPC_201719_COB
      //Mejoras funcionales en el registro de la atención del asociado
      xpanel1:=false;
      xpanel2:=false;
      xpanel3:=false;
      pnl1Visual := DM1.cdsTipCreA.fieldbyname('PNLOPCVIS1').AsString;
      pnl2Visual := DM1.cdsTipCreA.fieldbyname('PNLOPCVIS2').AsString;
      pnl3Visual := DM1.cdsTipCreA.fieldbyname('PNLOPCVIS3').AsString;
      If (pnl1Visual<>'S') And (pnl2Visual<>'S') And (pnl3Visual<>'S') Then
      Begin
        fTipAtencion.ClientHeight:=202;
        fTipAtencion.ClientWidth:=310;
        pnl1.Visible:=false;
        pnl2.Visible:=false;
        pnl3.Visible:=false;
        BitGrabar.Left:=109;
        BitGrabar.Top:=173;
        BitSalir.Left:=205;
        BitSalir.Top:=173;
      End;
      If (pnl1Visual='S') And (pnl2Visual='S') And (pnl3Visual='S') Then
      Begin
        fTipAtencion.ClientHeight:=433;
        fTipAtencion.ClientWidth:=310;
        pnl1.Visible:=true;
        pnl1.Left:=5;
        pnl1.Top:=173;
        pnl2.Visible:=true;
        pnl2.Left:=6;
        pnl2.Top:=288;
        pnl3.Visible:=true;
        dtpFechaPactada.Date:= DM1.FechaSys;
        pnl3.Left:=6;
        pnl3.Top:=340;
        BitGrabar.Left:=109;
        BitGrabar.Top:=392;
        BitSalir.Left:=205;
        BitSalir.Top:=392;
        xpanel1:=true;
        xpanel2:=true;
        xpanel3:=true;
      End;
      If (pnl1Visual='S') And (pnl2Visual='S') And (pnl3Visual<>'S') Then
      Begin
        fTipAtencion.ClientHeight:=372;
        fTipAtencion.ClientWidth:=310;
        pnl1.Visible:=true;
        pnl1.Left:=5;
        pnl1.Top:=171;
        pnl2.Visible:=true;
        pnl2.Left:=6;
        pnl2.Top:=286;
        pnl3.Visible:=false;
        BitGrabar.Left:=117;
        BitGrabar.Top:=341;
        BitSalir.Left:=213;
        BitSalir.Top:=341;
        xpanel1:=true;
        xpanel2:=true;
      End;
      If (pnl1Visual='S') And (pnl2Visual<>'S') And (pnl3Visual='S') Then
      Begin
        fTipAtencion.ClientHeight:=384;
        fTipAtencion.ClientWidth:=310;
        pnl1.Visible:=true;
        pnl1.Left:=5;
        pnl1.Top:=171;
        pnl3.Visible:=true;
        dtpFechaPactada.Date:= DM1.FechaSys;
        pnl3.Left:=5;
        pnl3.Top:=287;
        pnl2.Visible:=false;
        BitGrabar.Left:=117;
        BitGrabar.Top:=341;
        BitSalir.Left:=213;
        BitSalir.Top:=341;
        xpanel1:=true;
        xpanel3:=true;
      End;
      If (pnl1Visual<>'S') And (pnl2Visual='S') And (pnl3Visual='S') Then
      Begin
        fTipAtencion.ClientHeight:=314;
        fTipAtencion.ClientWidth:=310;
        pnl2.Visible:=true;
        pnl2.Left:=6;
        pnl2.Top:=174;
        pnl3.Visible:=true;
        dtpFechaPactada.Date:= DM1.FechaSys;
        pnl3.Left:=6;
        pnl3.Top:=224;
        pnl1.Visible:=false;
        BitGrabar.Left:=109;
        BitGrabar.Top:=280;
        BitSalir.Left:=205;
        BitSalir.Top:=280;
        xpanel2:=true;
        xpanel3:=true;
      End;
      If (pnl1Visual='S') And (pnl2Visual<>'S') And (pnl3Visual<>'S') Then
      Begin
        fTipAtencion.ClientHeight:=318;
        fTipAtencion.ClientWidth:=310;
        pnl1.Visible:=true;
        pnl1.Left:=5;
        pnl1.Top:=171;
        pnl2.Visible:=false;
        pnl3.Visible:=false;
        BitGrabar.Left:=109;
        BitGrabar.Top:=293;
        BitSalir.Left:=205;
        BitSalir.Top:=293;
        xpanel1:=true;
      End;
      If (pnl1Visual<>'S') And (pnl2Visual='S') And (pnl3Visual<>'S') Then
      Begin
        fTipAtencion.ClientHeight:=256;
        fTipAtencion.ClientWidth:=310;
        pnl2.Visible:=true;
        pnl2.Left:=6;
        pnl2.Top:=174;
        pnl1.Visible:=false;
        pnl3.Visible:=false;
        BitGrabar.Left:=109;
        BitGrabar.Top:=229;
        BitSalir.Left:=205;
        BitSalir.Top:=229;
        xpanel2:=true;
      End;
      If (pnl1Visual<>'S') And (pnl2Visual<>'S') And (pnl3Visual='S') Then
      Begin
        fTipAtencion.ClientHeight:=262;
        fTipAtencion.ClientWidth:=310;
        pnl3.Visible:=true;
        dtpFechaPactada.Date:= DM1.FechaSys;
        pnl3.Left:=5;
        pnl3.Top:=172;
        pnl1.Visible:=false;
        pnl2.Visible:=false;
        BitGrabar.Left:=109;
        BitGrabar.Top:=229;
        BitSalir.Left:=205;
        BitSalir.Top:=229;
        xpanel3:=true;
      End;
      //Fin HPC_201719_COB
   End
Else
   Begin
   if Length(dblGestionDet.Text) <> 2 then
      Begin
        Beep;EdtDesGntDet.Text  :='';
      End;
   End;

end;

procedure TfTipAtencion.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfTipAtencion.BitAteAntClick(Sender: TObject);
var xSQL:String;
begin
// inicio HPP_201104_COB
// se pone alias a campos para evitar ambigüedad
xSQL:='SELECT A.CODATE, B.DESCRIPCION, A.ASOID, A.ASOAPENOM, A.ASODNI, A.OBSATE, A.USUARIO, A.HREG, A.FREG '
    + '  FROM COB_ATE_ASO A,GES_REF_SEG_DET B '
    + ' WHERE A.ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
    + '   AND A.CODATE = B.IDGTNDET(+) '
    + '   AND B.IDGTN  = ''02'' '
    + ' ORDER BY A.HREG DESC ';
// fin HPP_201104_COB
DM1.cdsSitReclamo.Close;
DM1.cdsSitReclamo.DataRequest(xSQL);
DM1.cdsSitReclamo.Open;
If DM1.cdsSitReclamo.RecordCount > 0 Then
   Begin
      fDetAteAnt:=Nil;
      fDetAteAnt:= TfDetAteAnt.create(self);
      fDetAteAnt.Showmodal;
      fDetAteAnt.free;
   End;
   DM1.cdsSitReclamo.Close;
end;

procedure TfTipAtencion.BitGrabarClick(Sender: TObject);
var xSQL:String;
begin
    If Length(Trim(EdtDesGntDet.Text))=0 Then
        Begin
            MessageDlg('ERROR, DEBE SELECCIONAR UN TIPO DE ATENCION!!!', mtError,[mbOk],0);
            Exit;
        End;

    If Length(Trim(mDetObs.Text))=0 Then
        Begin
            MessageDlg('ERROR, DEBE INGRESAR ALGUNA OBSERVACION!!!', mtError,[mbOk],0);
            Exit;
        End;
//Inicio HPC_201719_COB
   //Mejoras funcionales en el registro de la atención del asociado
   If(xpanel1=false) And (xpanel2=false) And (xpanel3=false) Then
   Begin
   xSQL:='INSERT INTO COB_ATE_ASO(CODATE,ASOID,ASOAPENOM,ASODNI,OBSATE,USUARIO,HREG,FREG) '+
         'VALUES ('+QuotedStr(dblGestionDet.Text)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','
         +QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','
         +QuotedStr(mDetObs.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DateToStr(DM1.FechaSys))+') ';
   End;
   If(xpanel1=true) And (xpanel2=true) And (xpanel3=true) Then
   Begin
      If ((length(trim(dblGestionDet.Text))=0) Or (length(trim(mDetObs.Text))=0) Or (length(trim(edtTelefono.Text))=0) Or
         (length(trim(edtCelular.Text))=0) Or (length(trim(mDireccion.Text))=0) Or (length(trim(edtCorreo.Text))=0) Or
         (length(trim(dblMotivoAtraso.Text))=0) Or (length(trim(edtMontoPactado.Text))=0) Or (length(trim(DateToStr(dtpFechaPactada.Date)))=0))
      Then
      Begin
          MessageDlg('FALTAN INGRESAR DATOS, VERIFIQUE!!!', mtError,[mbOk],0);
          Exit;
      End;
      xSQL:='INSERT INTO COB_ATE_ASO(CODATE,ASOID,ASOAPENOM,ASODNI,OBSATE,USUARIO,HREG,FREG,ASOTEL,ASOCEL,ASODIR,ASOCORREO,ASOMOTATR,ASOMTOPRO,ASOFECPRO) '+
         'VALUES ('+QuotedStr(dblGestionDet.Text)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','
         +QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','
         +QuotedStr(mDetObs.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DateToStr(DM1.FechaSys))+','
         +QuotedStr(edtTelefono.Text)+','+QuotedStr(edtCelular.Text)+','+QuotedStr(mDireccion.Text)+','+QuotedStr(edtCorreo.Text)+','
         +QuotedStr(dblMotivoAtraso.Text)+','+QuotedStr(edtMontoPactado.Text)+',to_date('''+DateToStr(dtpFechaPactada.Date)+''',''dd/mm/yyyy'') )';
   End;
   If(xpanel1=true) And (xpanel2=true) And (xpanel3=false) Then
   Begin
      If ((length(trim(dblGestionDet.Text))=0) Or (length(trim(mDetObs.Text))=0) Or (length(trim(edtTelefono.Text))=0) Or
         (length(trim(edtCelular.Text))=0) Or (length(trim(mDireccion.Text))=0) Or (length(trim(edtCorreo.Text))=0) Or
         (length(trim(dblMotivoAtraso.Text))=0))
      Then
      Begin
          MessageDlg('FALTAN INGRESAR DATOS, VERIFIQUE!!!', mtError,[mbOk],0);
          Exit;
      End;
       xSQL:='INSERT INTO COB_ATE_ASO(CODATE,ASOID,ASOAPENOM,ASODNI,OBSATE,USUARIO,HREG,FREG,ASOTEL,ASOCEL,ASODIR,ASOCORREO,ASOMOTATR) '+
         'VALUES ('+QuotedStr(dblGestionDet.Text)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','
         +QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','
         +QuotedStr(mDetObs.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DateToStr(DM1.FechaSys))+','
         +QuotedStr(edtTelefono.Text)+','+QuotedStr(edtCelular.Text)+','+QuotedStr(mDireccion.Text)+','+QuotedStr(edtCorreo.Text)+','
         +QuotedStr(dblMotivoAtraso.Text)+') ';
   End;
   If(xpanel1=true) And (xpanel2=false) And (xpanel3=true) Then
   Begin
      If ((length(trim(dblGestionDet.Text))=0) Or (length(trim(mDetObs.Text))=0) Or (length(trim(edtTelefono.Text))=0) Or
         (length(trim(edtCelular.Text))=0) Or (length(trim(mDireccion.Text))=0) Or (length(trim(edtCorreo.Text))=0) Or
         (length(trim(edtMontoPactado.Text))=0) Or (length(trim(DateToStr(dtpFechaPactada.Date)))=0))
      Then
      Begin
          MessageDlg('FALTAN INGRESAR DATOS, VERIFIQUE!!!', mtError,[mbOk],0);
          Exit;
      End;
      xSQL:='INSERT INTO COB_ATE_ASO(CODATE,ASOID,ASOAPENOM,ASODNI,OBSATE,USUARIO,HREG,FREG,ASOTEL,ASOCEL,ASODIR,ASOCORREO,ASOMTOPRO,ASOFECPRO) '+
         'VALUES ('+QuotedStr(dblGestionDet.Text)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','
         +QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','
         +QuotedStr(mDetObs.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DateToStr(DM1.FechaSys))+','
         +QuotedStr(edtTelefono.Text)+','+QuotedStr(edtCelular.Text)+','+QuotedStr(mDireccion.Text)+','+QuotedStr(edtCorreo.Text)+','
         +QuotedStr(edtMontoPactado.Text)+',to_date('''+DateToStr(dtpFechaPactada.Date)+''',''dd/mm/yyyy'') )';
   End;
   If(xpanel1=false) And (xpanel2=true) And (xpanel3=true) Then
   Begin
      If ((length(trim(dblGestionDet.Text))=0) Or (length(trim(mDetObs.Text))=0) Or
         (length(trim(dblMotivoAtraso.Text))=0) Or (length(trim(edtMontoPactado.Text))=0) Or (length(trim(DateToStr(dtpFechaPactada.Date)))=0))
      Then
      Begin
          MessageDlg('FALTAN INGRESAR DATOS, VERIFIQUE!!!', mtError,[mbOk],0);
          Exit;
      End;
      xSQL:='INSERT INTO COB_ATE_ASO(CODATE,ASOID,ASOAPENOM,ASODNI,OBSATE,USUARIO,HREG,FREG,ASOMOTATR,ASOMTOPRO,ASOFECPRO) '+
         'VALUES ('+QuotedStr(dblGestionDet.Text)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','
         +QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','
         +QuotedStr(mDetObs.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DateToStr(DM1.FechaSys))+','
         +QuotedStr(dblMotivoAtraso.Text)+','+QuotedStr(edtMontoPactado.Text)+',to_date('''+DateToStr(dtpFechaPactada.Date)+''',''dd/mm/yyyy'') )';
   End;
   If(xpanel1=true) And (xpanel2=false) And (xpanel3=false) Then
   Begin
       If ((length(trim(dblGestionDet.Text))=0) Or (length(trim(mDetObs.Text))=0) Or (length(trim(edtTelefono.Text))=0) Or
         (length(trim(edtCelular.Text))=0) Or (length(trim(mDireccion.Text))=0) Or (length(trim(edtCorreo.Text))=0))
      Then
      Begin
          MessageDlg('FALTAN INGRESAR DATOS, VERIFIQUE!!!', mtError,[mbOk],0);
          Exit;
      End;
       xSQL:='INSERT INTO COB_ATE_ASO(CODATE,ASOID,ASOAPENOM,ASODNI,OBSATE,USUARIO,HREG,FREG,ASOTEL,ASOCEL,ASODIR,ASOCORREO) '+
         'VALUES ('+QuotedStr(dblGestionDet.Text)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','
         +QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','
         +QuotedStr(mDetObs.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DateToStr(DM1.FechaSys))+','
         +QuotedStr(edtTelefono.Text)+','+QuotedStr(edtCelular.Text)+','+QuotedStr(mDireccion.Text)+','+QuotedStr(edtCorreo.Text)+') ';
   End;
   If(xpanel1=false) And (xpanel2=true) And (xpanel3=false) Then
   Begin
     If (length(trim(dblMotivoAtraso.Text))=0)
     Then
     Begin
          MessageDlg('FALTAN INGRESAR DATOS, VERIFIQUE!!!', mtError,[mbOk],0);
          Exit;
     End;
     xSQL:='INSERT INTO COB_ATE_ASO(CODATE,ASOID,ASOAPENOM,ASODNI,OBSATE,USUARIO,HREG,FREG,ASOMOTATR) '+
         'VALUES ('+QuotedStr(dblGestionDet.Text)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','
         +QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','
         +QuotedStr(mDetObs.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DateToStr(DM1.FechaSys))+','+QuotedStr(dblMotivoAtraso.Text)+') ';
   End;
   If(xpanel1=false) And (xpanel2=false) And (xpanel3=true) Then
   Begin
      If ((length(trim(dblGestionDet.Text))=0) Or (length(trim(mDetObs.Text))=0) Or (length(trim(edtTelefono.Text))=0) Or
         (length(trim(edtCelular.Text))=0) Or (length(trim(mDireccion.Text))=0) Or (length(trim(edtCorreo.Text))=0) Or
         (length(trim(dblMotivoAtraso.Text))=0) Or (length(trim(edtMontoPactado.Text))=0) Or (length(trim(DateToStr(dtpFechaPactada.Date)))=0))
      Then
      Begin
          MessageDlg('FALTAN INGRESAR DATOS, VERIFIQUE!!!', mtError,[mbOk],0);
          Exit;
      End;
      xSQL:='INSERT INTO COB_ATE_ASO(CODATE,ASOID,ASOAPENOM,ASODNI,OBSATE,USUARIO,HREG,FREG,ASOMTOPRO,ASOFECPRO) '+
         'VALUES ('+QuotedStr(dblGestionDet.Text)+','+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','
         +QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','
         +QuotedStr(mDetObs.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DateToStr(DM1.FechaSys))+','
         +QuotedStr(edtMontoPactado.Text)+',to_date('''+DateToStr(dtpFechaPactada.Date)+''',''dd/mm/yyyy'') )';
   End;
// Fin HPC_201719_COB
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   dblGestionDet.Text:=''; EdtDesGntDet.Text:=''; mDetObs.Text:='';
//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
   edtTelefono.Text:='';
   edtCelular.Text:='';
   mDireccion.Text:='';
   edtCorreo.Text:='';
   dblMotivoAtraso.Text:='';
   edtMotivoAtraso.Text:='';
   edtMontoPactado.Text:='';
   dtpFechaPactada.Date:= DM1.FechaSys;
   pnl1.Visible:=false;
   pnl2.Visible:=false;
   pnl3.Visible:=false;
   fTipAtencion.ClientHeight:=202;
   fTipAtencion.ClientWidth:=310;
   BitGrabar.Left:=109;
   BitGrabar.Top:=173;
   BitSalir.Left:=205;
   BitSalir.Top:=173;
//Fin HPC_201719_COB
end;
//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
procedure TfTipAtencion.edtCorreoExit(Sender: TObject);
var xSQL:String;
begin
   If Trim(edtCorreo.Text) <> '' Then
   Begin
      xSql := 'SELECT SF_ASO_VALIDA_DIR_CORREO('+QuotedStr(Trim(edtCorreo.Text))+') VALOR FROM DUAL WHERE 1=1';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('VALOR').AsInteger <> 0 Then
      Begin
         MessageDlg('CORREO ELECTRÓNICO NO VÁLIDO', mtInformation, [mbOk], 0);
         edtCorreo.SetFocus;
      End;
      DM1.cdsQry.Close;
   End;
end;
//Fin HPC_201719_COB

//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
procedure TfTipAtencion.edtTelefonoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key In [' ', 'A'..'Z', 'a'..'z',
             '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
             '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
             ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
             '-', '_'] Then
    Key := #0;
end;
//Fin HPC_201719_COB

//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
procedure TfTipAtencion.edtCelularKeyPress(Sender: TObject; var Key: Char);
begin
if Key In [' ', 'A'..'Z', 'a'..'z',
             '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
             '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
             ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
             '-', '_'] Then
    Key := #0;
end;
//Fin HPC_201719_COB

//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
procedure TfTipAtencion.edtMontoPactadoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key In [' ', 'A'..'Z', 'a'..'z',
             '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
             '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
             ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
             '-', '_'] Then
    Key := #0;
end;
//Fin HPC_201719_COB

//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
procedure TfTipAtencion.dblMotivoAtrasoChange(Sender: TObject);
begin
   If DM1.cdsQryMotAtraso.Locate('CODMOT',VarArrayof([dblMotivoAtraso.Text]),[]) Then
   Begin
      edtMotivoAtraso.Text  := DM1.cdsQryMotAtraso.fieldbyname('DESMOT').AsString ;
   End;
end;
//Fin HPC_201719_COB
end.
