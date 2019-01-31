unit COB465;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB465
// Formulario           : FEditaCuota
// Fecha de Creación    : 23/05/2013
// Autor                : Hugo Noriega.
// Objetivo             : Editar Cuota de Envio
//
// Actualizaciones      :
// HPC_201306_COB       : Crear opción para mostrar información del Asociado
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201307_COB       : Agregar al Caculo de la Cuota Pactada
// SPP_201309_COB       : Se realiza el pase a producción a partir del HPC_201307_COB
// SPP_201401_COB       : Se adiciona un boton para poder ingresar el importe a enviar en forma manual; solo para cesantes. 

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls;

type
  TFEditaCuota = class(TForm)
    pnlactualiza: TPanel;
    Panel15: TPanel;
    btncerrar: TBitBtn;
    btnActualizar: TBitBtn;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    lblTipAso: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    lblDosPuntosTipAso: TLabel;
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
    pnlTipAso: TPanel;
    meAsoTip: TMaskEdit;
    Panel12: TPanel;
    measocodmod: TMaskEdit;
    Panel13: TPanel;
    mecargo: TMaskEdit;
    Panel14: TPanel;
    meCresdoact: TMaskEdit;
    GroupBox1: TGroupBox;
    lblCuotaPactada: TLabel;
    meCuotaPactada: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    meSalDif: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    meLiq: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    meDcto: TMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    meBruto: TMaskEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel5: TPanel;
    meCuoPac: TMaskEdit;
    Label13: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel6: TPanel;
    meMonDis: TMaskEdit;
    Label20: TLabel;
    Label21: TLabel;
    Panel7: TPanel;
    meMonCob: TMaskEdit;
    Label32: TLabel;
    Label33: TLabel;
    Panel8: TPanel;
    meMonEnv: TMaskEdit;
    bbtnMD: TBitBtn;
    bbtnCP: TBitBtn;
    bbtnCPmas: TBitBtn;
    //INICIO SPP_201401_COB
    btnCuotaManual: TBitBtn;
    pnlCuotaManual: TPanel;
    Label10: TLabel;
    meCuoManual: TMaskEdit;
    //FINAL SPP_201401_COB
    procedure FormActivate(Sender: TObject);
    procedure btnActualizarClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure bbtnMDClick(Sender: TObject);
    procedure bbtnCPClick(Sender: TObject);
    procedure bbtnCPmasClick(Sender: TObject);
    //INICIO SPP_201401_COB
    procedure FormCreate(Sender: TObject);
    procedure btnCuotaManualClick(Sender: TObject);
    //FINAL SPP_201401_COB
  private
    { Private declarations }
    nPorInc : Double;
  public
    { Public declarations }
  end;

var
  FEditaCuota: TFEditaCuota;

implementation

uses COBDM1, COB989;

{$R *.dfm}

procedure TFEditaCuota.FormActivate(Sender: TObject);
var
   sSQL, sSQLx : String;
   xCuota : Double;
begin
   Screen.Cursor := crHourGlass;

   measocodmod.Text   := DM1.cdsRegCob.FieldByName('ASOCODMOD').AsString;
   measoapenom.Text   := DM1.cdsRegCob.FieldByName('ASOAPENOM').AsString;
   mecargo.Text       := DM1.cdsRegCob.FieldByName('CARGO').AsString;
   measocodpago.Text  := DM1.cdsRegCob.FieldByName('ASOCODPAGO').AsString;
   mecresdoact.Text   := FloatToStrF(DM1.cdsRegCob.FieldByName('MONDEUPER').AsFloat, ffNumber, 10, 2);
   meAsoTip.Text      := DM1.cdsRegCob.FieldByName('ASOTIPID').AsString;

   //INICIAL SPP_201401_COB
   If DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat>0 Then
   Begin
      meCuotaPactada.Text:= FloatToStrF(DM1.cdsRegCob.FieldByName('MONCUOENVORI').AsFloat, ffNumber, 10, 2);
      meCuoManual.Text   := FloatToStrF(DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat, ffNumber, 10, 2);
   End
   Else
   Begin
     meCuotaPactada.Text:= FloatToStrF(DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat, ffNumber, 10, 2);
     meCuoManual.Text   := '0';
   End;
   //FINAL SPP_201401_COB
   
   meSalDif.Text      := FloatToStrF(DM1.cdsRegCob.FieldByName('SALDIF').AsFloat, ffNumber, 10, 2);

   meCuoPac.Text      := FloatToStrF(DM1.cdsRegCob.FieldByName('CREMTOCUO').AsFloat, ffNumber, 10, 2);
   meBruto.Text       := FloatToStrF(DM1.cdsRegCob.FieldByName('HABER').AsFloat, ffNumber, 10, 2);
   meDcto.Text        := FloatToStrF(DM1.cdsRegCob.FieldByName('DESCUENTO').AsFloat, ffNumber, 10, 2);
   meLiq.Text         := FloatToStrF(DM1.cdsRegCob.FieldByName('LIQUIDO').AsFloat, ffNumber, 10, 2);

   meMonEnv.Text      := FloatToStrF(DM1.cdsRegCob.FieldByName('MONENV').AsFloat, ffNumber, 10, 2);
   meMonCob.Text      := FloatToStrF(DM1.cdsRegCob.FieldByName('MONCOB').AsFloat, ffNumber, 10, 2);
   meMonDis.Text      := FloatToStrF(DM1.cdsRegCob.FieldByName('SALDIS').AsFloat, ffNumber, 10, 2);

   lblCuotaPactada.Visible := true;
   meCuotaPactada.Visible  := true;

   TryStrToFloat( meCuoPac.Text, xCuota);
   sSQLx:='SELECT POR_ENV FROM COB_MAT_ENV_PLA '
         + 'where ASOTIPID='''+DM1.cdsRegCob.FieldByName('ASOTIPID').AsString+''' '
         +   'and '+FLOATTOSTR(xCuota)+'>RAN_INI AND '+FLOATTOSTR(xCuota)+'<=RAN_FIN';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( sSQLx );
   DM1.cdsQry.Open;

   nPorInc:=0;
   if DM1.cdsQry.RecordCount=1 then
      nPorInc:=DM1.cdsQry.FieldByname('POR_ENV').AsFloat;

   bbtnCPmas.Caption:='+ '+floattostr(nPorInc)+'%';

   Screen.Cursor := crDefault;
end;

procedure TFEditaCuota.btnActualizarClick(Sender: TObject);
var
   xSql, xSi: String;

   Function isCuotaPactadaValida( ICad: String; saldo: double ): boolean;
   Var
      xCuota: double;
   Begin
      result := True;
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
               showmessage('El Monto de la Cuota Pactada no debe Exceder el Saldo Actual + Saldo Diferido');
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

   function isCuotaValida_Reducida_CE( ICad: String ) : boolean;
   var
      xCuota: double;
   begin
      result := True;
      If (TryStrToFloat(ICad, xCuota)) Then
      Begin
         if DM1.cdsRegCob.FieldByName('RESULTADO').AsString='No está en Resultados' then
         begin
             If (xCuota <> DM1.FRound(DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsFloat,12,2) ) Then
             begin
                showmessage('El Monto de la Cuota Pactada debe ser igual a la Cuota del Periodo ('+Floattostrf(DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsFloat, ffNumber, 10, 2)+').' );
                result := false;
             end
         end
         else
         begin
             if DM1.cdsRegCob.FieldByName('MONCOB').AsFloat<=0 then
             begin
                If (xCuota <> DM1.FRound(DM1.cdsRegCob.FieldByName('SALDIS').AsFloat-1,12,2) ) Then
                Begin
                   showmessage('El Monto de la Cuota Pactada debe ser Menor al Saldo Disponible ('+Floattostrf(DM1.cdsRegCob.FieldByName('SALDIS').AsFloat, ffNumber, 10, 2)+' - 1)');
                   result := false;
                End
             end
             else
             begin
                If (DM1.cdsRegCob.FieldByName('MONCOB').AsFloat < DM1.cdsRegCob.FieldByName('MONENV').AsFloat ) Then
                begin
                   If (xCuota <> DM1.FRound(DM1.cdsRegCob.FieldByName('SALDIS').AsFloat + DM1.cdsRegCob.FieldByName('MONCOB').AsFloat-1,12,2) ) Then
                   begin
                      showmessage('El Monto de la Cuota Pactada debe ser Menor al Saldo Disponible('+Floattostrf(DM1.cdsRegCob.FieldByName('SALDIS').AsFloat, ffNumber, 10, 2)+') + el Monto Cobrado('+Floattostrf(DM1.cdsRegCob.FieldByName('MONCOB').AsFloat, ffNumber, 10, 2)+') - 1'
                                 + ' = '+ Floattostrf( DM1.cdsRegCob.FieldByName('SALDIS').AsFloat + DM1.cdsRegCob.FieldByName('MONCOB').AsFloat - 1, ffNumber, 10, 2)+' ');
                      result := false;
                   end
                end;
             end;
         end;
      End
      Else
      Begin
         showmessage('Ingrese un monto valido para la Cuota Pactada!');
         result := false;
      End;
   end;

   function isCuotaValida_Aumentada( ICad: String ) : boolean;
   var
      xCuota, nCalculo, xCuotaNueva : double;
      sSQLx : String;
   begin
      result := True;
        If (TryStrToFloat(ICad, xCuota)) Then
      Begin
         sSQLx:='SELECT POR_ENV FROM COB_MAT_ENV_PLA '
               + 'where ASOTIPID='''+DM1.cdsRegCob.FieldByName('ASOTIPID').AsString+''' '
               +   'and '+FLOATTOSTR(xCuota)+'>RAN_INI AND '+FLOATTOSTR(xCuota)+'<=RAN_FIN';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest( sSQLx );
         try
         DM1.cdsQry.Open;
         except
           ShowMessage(sSQLx);
         end;

         nCalculo:=DM1.FRound(DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsFloat + (DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsFloat * DM1.cdsQry.FieldByName('POR_ENV').AsFloat / 100 ) ,12,2);

// Inicio: SPP_201309_COB       : Agregar al Caculo de la Cuota Pactada
         if nCalculo=0 then nCalculo:=DM1.FRound(DM1.cdsRegCob.FieldByName('CREMTOCUO').AsFloat + (DM1.cdsRegCob.FieldByName('CREMTOCUO').AsFloat * DM1.cdsQry.FieldByName('POR_ENV').AsFloat / 100 ) ,12,2);
// Fin: SPP_201309_COB       : Agregar al Caculo de la Cuota Pactada

         TryStrToFloat(stringReplace(meCuotaPactada.text,',','',[rfReplaceAll]),xCuotaNueva);

         if DM1.cdsQry.Recordcount>0 then
         begin
            If (xCuotaNueva > nCalculo ) Then
            Begin
               Showmessage('La Cuota debe ser Menor a '+ FloatToStrF(nCalculo,ffNumber,12,2));
               result := false;
            End;
         end;
      end;
   end;


begin

   //INICIO SPP_201401_COB
   If (DM1.cdsRegCob.FieldByName('ASOTIPID').AsString='CE')  and (StrToFloat(meCuoManual.Text)>0) Then
   Begin
       If pnlCuotaManual.Visible Then
       Begin
        If (StrToFloat(meCuoManual.Text)<1) or (StrToFloat(meCuoManual.Text)> StrToFloat(meCuotaPactada.Text)) Then
        Begin
          ShowMessage('El importe ingresado MANUALMENTE es menor que 1 sol o mayor que la cuota pactada');
          meCuoManual.Focused;
          exit;
        End;
       End;
   End

   Else
   Begin


   If (Not isCuotaPactadaValida(meCuotaPactada.Text, DM1.FRound(DM1.cdsRegCob.FieldByName('MONDEUPER').AsFloat+DM1.cdsRegCob.FieldByName('SALDIF').AsFloat,10,2))) Then
   Begin
      meCuotaPactada.Focused;
      exit;
   End;

   if DM1.cdsRegCob.FieldByName('ASOTIPID').AsString='CE' then
   begin
      If Not isCuotaValida_Reducida_CE(meCuotaPactada.Text) Then
      Begin
         meCuotaPactada.Focused;
         exit;
      End;
   end;

   if DM1.FRound(DM1.cdsRegCob.FieldByName('MONDEUPER').AsFloat+DM1.cdsRegCob.FieldByName('SALDIF').AsFloat,10,2)>0 then
   begin
      If Not isCuotaValida_Aumentada(meCuoPac.Text) Then
      Begin
         meCuotaPactada.Focused;
         exit;
      End;
   end;

   End; 
   //FINAL SPP_201401_COB

   DM1.cdsRegCob.Edit;
   //INICIO SPP_201401_COB
   //DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat  := StrtoFloat(meCuotaPactada.Text);
   //PRIORIDAD TOMA LA MODIFICACION MANUAL
   If StrToFloat(meCuoManual.Text)>0 Then
   Begin
     DM1.cdsRegCob.FieldByName('MONCUOENVORI').AsFloat  := StrToFloat(meCuoPac.Text);
     DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat  := StrtoFloat(meCuoManual.Text);
     DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat     := StrtoFloat(meCuoManual.Text);
   End
   Else
   If StrToFloat(meCuotaPactada.Text)<>StrToFloat(meCuoPac.Text) Then
   Begin
      DM1.cdsRegCob.FieldByName('MONCUOENVORI').AsFloat :=StrToFloat(meCuoPac.Text);
      DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat    := StrtoFloat(meCuotaPactada.Text);
      DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat := 0;
   End
   Else
   Begin //==
      DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat    := StrtoFloat(meCuotaPactada.Text);
      DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat := 0;
      DM1.cdsRegCob.FieldByName('MONCUOENVORI').AsFloat := 0;
   End;
   //FINAL SPP_201401_COB
   
   DM1.cdsRegCob.FieldByName('MONTOT_CUO_FSC').AsFloat  := DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat+ DM1.cdsRegCob.FieldByName('MONCUOENVFSC').AsFloat;
// Inicio: SPP_201309_COB       : Agregar al Caculo de la Cuota Pactada
   DM1.cdsRegCob.FieldByName('FLGCUOENV').AsString := '9';
// Fin: SPP_201309_COB       : Agregar al Caculo de la Cuota Pactada
   DM1.cdsRegCob.Post;
   MessageDlg('Cuota Grabada', mtInformation,[mbOk],0);
end;

procedure TFEditaCuota.btncerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TFEditaCuota.bbtnMDClick(Sender: TObject);
begin
   meCuotaPactada.Text:=FloatToStrF(DM1.cdsRegCob.FieldByName('SALDIS').AsFloat-1, ffNumber, 10, 2);
end;

procedure TFEditaCuota.bbtnCPClick(Sender: TObject);
begin
   meCuotaPactada.Text:=meCuoPac.Text;
   //INICIO SPP_201401_COB
   meCuoManual.Text   := '0';
  //FINAL SPP_201401_COB   
end;

procedure TFEditaCuota.bbtnCPmasClick(Sender: TObject);
begin
   meCuotaPactada.Text:=Floattostrf(strtofloat(meCuoPac.Text)*(1+(nPorInc/100)), ffNumber, 10, 2);
   //INICIO SPP_201401_COB
   meCuoManual.Text   := '0';
   //FINAL SPP_201401_COB
end;

  //INICIO SPP_201401_COB
procedure TFEditaCuota.FormCreate(Sender: TObject);
begin

  if DM1.cdsRegCob.FieldByName('ASOTIPID').AsString='CE' then
  Begin
    btnCuotaManual.Visible := True;
    If DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat > 0 Then
         pnlCuotaManual.Visible := True
    Else pnlCuotaManual.Visible := False;
  End
  Else
  Begin
    btnCuotaManual.Visible := False;
    pnlCuotaManual.Visible := False;
    meCuoManual.Text := '0';
  End



end;


procedure TFEditaCuota.btnCuotaManualClick(Sender: TObject);
begin
 If pnlCuotaManual.Visible Then
 Begin

   If StrToFloat(meCuoManual.Text)>0 Then
   Begin
     ShowMessage('Si quiere desactivar el INGRESO MANUAL el valor tiene que estar en CERO...' );
     Exit;
   End;
   pnlCuotaManual.Visible := False;
 End
 Else  pnlCuotaManual.Visible := True;

end;
//FINAL SPP_201401_COB

end.
