unit COB463;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB463
// Formulario           : fDatosFSC
// Fecha de Creación    : 16/05/2013
// Autor                : Hugo Noriega.
// Objetivo             : Autoriza cobranza por Gestión
//
// Actualizaciones      :
// HPC_201306_COB       : Autoriza cobranza por Gestión
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, ExtCtrls, Buttons, DB, fcLabel;

type
  TfDatosFSC = class(TForm)
    pnlactualiza: TPanel;
    Panel15: TPanel;
    lblCuotaPactada: TLabel;
    meCuotaPactada: TMaskEdit;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel4: TPanel;
    meestactaurges: TMaskEdit;
    Panel5: TPanel;
    meestactusuact: TMaskEdit;
    Panel6: TPanel;
    meestactfecaut: TMaskEdit;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Panel7: TPanel;
    menueestaurges: TMaskEdit;
    Panel8: TPanel;
    menueestusuact: TMaskEdit;
    Panel9: TPanel;
    menueestfecaut: TMaskEdit;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    lblNumCredito: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    lblDosPuntosNumCredito: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Panel10: TPanel;
    measocodpago: TMaskEdit;
    Panel11: TPanel;
    measoapenom: TMaskEdit;
    pnlNumCredito: TPanel;
    mecredid: TMaskEdit;
    Panel12: TPanel;
    measocodmod: TMaskEdit;
    Panel13: TPanel;
    mecargo: TMaskEdit;
    Panel14: TPanel;
    mecresdoact: TMaskEdit;
    btncerrar: TBitBtn;
    btnActualizar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btnActualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDatosFSC: TfDatosFSC;

implementation

uses COBDM1, COB989;

{$R *.dfm}

procedure TfDatosFSC.FormActivate(Sender: TObject);
var
   sSQL : String;
begin
   Screen.Cursor := crHourGlass;

   sSql:='SELECT A.ASOID, A.ASODNI, A.ASOCODMOD, A.CARGO, A.ASOCODPAGO, A.ASOAPENOM, '
      + '       (NVL(B.IMP_APL_FSC, 0) - NVL(B.IMP_COB_FSC, 0)) SALACT, B.CRECUOENV, '
      + '       NVL(B.AUTDESGES, ''N'') AUTDESGES, B.USUDESGES, B.FECHORDESGES '
      + '  FROM (SELECT ASOID, ASODNI, ASOCODMOD, CARGO, ASOCODPAGO, ASOAPENOM '
      + '          FROM APO201 '
      + '         WHERE ASOID='''    +DM1.cdsQry2.FieldByname('ASOID').AsString+''' '
      + '           AND ASOTIPID = ' + QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)
      + '           AND UPROID = '   + QuotedStr(Ftrainfpro.sUPRO)
      + '           AND NVL(FALLECIDO, ''N'') = ''N'' ';
   if DM1.cdsGrupos.FieldByName('ASOTIPID').AsString='CE' then
      sSQL := sSQL+ ' AND REGPENID=''01'' '; // sólo Régimen de Pensión 20530
   sSQL := sSQL+ '        ) A, '
      + '       (SELECT ASOID, IMP_APL_FSC, IMP_COB_FSC, CRECUOENV, AUTDESGES, USUDESGES, FECHORDESGES '
      + '          FROM COB_FSC_DEUDA_FSC_CAB '
      + '         WHERE ID_EST_FSC  IN (''02'',''27'') '
      + '           AND (NVL(IMP_APL_FSC, 0) - NVL(IMP_COB_FSC, 0)) > 0) B '
      + ' WHERE A.ASOID = B.ASOID '
      + ' ORDER BY A.ASODNI';
   DM1.cdsUtilidades.Close;
   DM1.cdsUtilidades.DataRequest( sSQL );
   DM1.cdsUtilidades.Open;


      If DM1.cdsUtilidades.RecordCount = 0 Then
      Begin
         MessageDlg('No hay registros para actualizar', mtInformation, [mbOk], 0);
         Exit;
      End;
        // Datos actuales
      If Trim(DM1.cdsUtilidades.FieldByName('USUDESGES').AsString) = '' Then
      Begin
         meestactaurges.Text := 'X';
         meestactusuact.Text := 'Nulo';
         meestactfecaut.Text := 'Nulo'
      End
      Else
      Begin
         meestactaurges.Text := DM1.cdsUtilidades.FieldByName('AUTDESGES').AsString;
         meestactusuact.Text := DM1.cdsUtilidades.FieldByName('USUDESGES').AsString;
         meestactfecaut.Text := DM1.cdsUtilidades.FieldByName('FECHORDESGES').AsString;
      End;

      menueestaurges.Text := 'S';
      menueestusuact.Text := DM1.wUsuario;
      menueestfecaut.Text := DateToStr(Date);

      measocodmod.Text := DM1.cdsUtilidades.FieldByName('ASOCODMOD').AsString;
      measoapenom.Text := DM1.cdsUtilidades.FieldByName('ASOAPENOM').AsString;
      mecargo.Text := DM1.cdsUtilidades.FieldByName('CARGO').AsString;
      measocodpago.Text := DM1.cdsUtilidades.FieldByName('ASOCODPAGO').AsString;
      mecresdoact.Text := FloatToStrF(DM1.cdsUtilidades.FieldByName('SALACT').AsFloat, ffNumber, 10, 2);
      meCuotaPactada.Text := FloatToStrF(DM1.cdsUtilidades.FieldByName('CRECUOENV').AsFloat, ffNumber, 10, 2);

      mecredid.Visible := false;
      lblNumCredito.Visible := false;
      lblDosPuntosNumCredito.Visible := false;
      pnlNumCredito.Visible := false;
      lblCuotaPactada.Visible := true;
      meCuotaPactada.Visible := true;

   Screen.Cursor := crDefault;
end;

procedure TfDatosFSC.btncerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TfDatosFSC.btnActualizarClick(Sender: TObject);
var
   xSql, xSi: String;

   Function isCuotaPactadaValida(ICad: String; saldo: double): boolean;
   Var
      xCuota: double;
   Begin
      If (TryStrToFloat(ICad, xCuota)) Then
      Begin
         If (xCuota <= 0) Then
         Begin
            showmessage('El Monto de la Cuota Pactada debe ser Mayor que Cero');
            result := false;
         End
         Else
         Begin
            If (xCuota > saldo) Then
            Begin
               showmessage('El Monto de la Cuota Pactada no debe Exceder el Saldo Actual');
               result := false;
            End
            Else
               result := true;
         End;
      End
      Else
      Begin
         showmessage('Ingrese un monto valido para la Cuota Pactada!');
         result := false;
      End;
   End;

begin

  If (Not isCuotaPactadaValida(meCuotaPactada.Text, DM1.cdsQry2.FieldByName('SALACT').AsFloat)) Then
  Begin
     meCuotaPactada.Focused;
     exit;
  End;

  // Actualización temporal del client
  DM1.cdsQry2.Edit;
  DM1.cdsQry2.FieldByName('AUTDESGES').AsString := menueestaurges.Text;
  DM1.cdsQry2.FieldByName('USUDESGES').AsString := DM1.wUsuario;
  DM1.cdsQry2.FieldByName('FECHORDESGES').AsString := DateToStr(date) + TimeToStr(Time);
  DM1.cdsQry2.FieldByName('CRECUOENV').AsString := meCuotaPactada.Text;
  DM1.cdsQry2.Post;

  MessageDlg('El registro ha sido actualizado', mtInformation, [mbOk], 0);
end;

end.
