unit COB989;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB989
// Formulario           : Ftrainfpro
// Fecha de Creación    :
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Información Procesada
//
// Actualizaciones      :
// HPP_200932_COB       : Exportar a Excel
// HPP_201010_COB       : por JDCRUZ añadir Codigo Modular
// HPP_201105_COB       : Añadir Columnas de Fondo Solidario de Contingencia
// HPC_201306_COB       : En reporte de últimas Cuotas debe considerar contratados
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201307_COB       : Se duplica datos de Padron
// SPP_201309_COB       : Se realiza el pase a producción a partir del HPC_201307_COB
// HPC_201308_COB       : Cambiar Combo de Porcentaje
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// SPP_201401_COB       : Se modifica para grabar y editar el importe a enviar al descuento

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, db, StdCtrls, Buttons, ExtCtrls,
// Inicio: SPP_201309_COB       : Se duplica datos de Padron
  Mask, wwdbedit, Gauges, ComCtrls, Spin;
// Fin: SPP_201309_COB       : Se duplica datos de Padron

type
  TFtrainfpro = class(TForm)
    dbgfilinf: TwwDBGrid;
    btnmarca: TBitBtn;
    btncerrar: TBitBtn;
    rgtipaso: TRadioGroup;
    GroupBox1: TGroupBox;
    cbcalfun: TComboBox;
    btncalcular: TBitBtn;
    btnactualizar: TBitBtn;
    gbpormar: TGroupBox;
    btnCalcula: TBitBtn;
// Fin: SPP_201309_COB
    pnlapenom: TPanel;
    Label3: TLabel;
    pnlasoapenomdni: TPanel;
    edtBuscarDet: TEdit;
// Inicio: SPP_201308_COB     : En reporte de últimas Cuotas debe considerar contratados
    bbtnConsPend: TBitBtn;
    btnaExcel: TBitBtn;
    btnDatosPadron: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    bbtnEditaFSC: TBitBtn;
    Label5: TLabel;
    mePerCob: TMaskEdit;
    bbtnEditaCuota: TBitBtn;
// Inicio: SPP_201309_COB       : Se duplica datos de Padron
    mSQL: TMemo;
    bbtnDiferido: TBitBtn;
    pbPago: TProgressBar;
    lblVersion: TLabel;
// Inicio: SPP_201310_COB       : Cambiar Combo de Porcentaje
    cedtPorcentaje: TwwDBEdit;
// Fin: SPP_201310_COB       : Cambiar Combo de Porcentaje
    procedure FormActivate(Sender: TObject);
    procedure btnmarcaClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure rgtipasoClick(Sender: TObject);
    procedure dbgfilinfTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure btncalcularClick(Sender: TObject);
    procedure btnactualizarClick(Sender: TObject);
    procedure btnCalculaClick(Sender: TObject);
    procedure edtBuscarDetKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscarDetChange(Sender: TObject);
    procedure edtBuscarDetClick(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgfilinfCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
// Inicio: SPP_201308_COB
    procedure bbtnConsPendClick(Sender: TObject);
// Fin: SPP_201308_COB
    procedure btnaExcelClick(Sender: TObject);

    // Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
    procedure btnDatosPadronClick(Sender: TObject);
    procedure bbtnEditaFSCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbtnEditaCuotaClick(Sender: TObject);
    procedure bbtnDiferidoClick(Sender: TObject);
// Inicio: SPP_201310_COB       : Cambiar Combo de Porcentaje
    procedure cedtPorcentajeExit(Sender: TObject);
// Fin: SPP_201310_COB       : Cambiar Combo de Porcentaje
  private
    { Private declarations }
  public
    { Public declarations }
    // Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
    sAno, sMes, sUPRO :String;
    // Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
    procedure actdet;
    procedure carinf;
  end;

var
  Ftrainfpro: TFtrainfpro;

implementation

// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
uses COBDM1, COB990, COB991, Math, COB989A, COB462, COB463, COB464, COB465;
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados

{$R *.dfm}

procedure TFtrainfpro.FormActivate(Sender: TObject);
begin
  DM1.xCnd := 'I';
  carinf;
  actdet;
end;

procedure TFtrainfpro.btnmarcaClick(Sender: TObject);
begin
  Try
    Ffilinfsegcri := TFfilinfsegcri.Create(Self);
    Ffilinfsegcri.ShowModal;
  Finally
    Ffilinfsegcri.Free;
  End;

end;

procedure TFtrainfpro.btncerrarClick(Sender: TObject);
begin
  Ftrainfpro.Close;
end;

procedure TFtrainfpro.rgtipasoClick(Sender: TObject);
begin
  carinf;
  actdet;
end;

procedure TFtrainfpro.actdet;
Var xmoncuomasant, xmoncuoenvper, xmoncuoenvven: Double;
    xmondeuper, xsalmaxcuoven, xmoncuoenv,xsalmaxcuorep:Double;
    //INICIO SPP_201401_COB
    xmonenvmodman:Double;
    //FINAL SPP_201401_COB
    xcanreg:Integer;
    xmoncuofsc : Double;
    xmoncuoenvfsc :Double;
    xmontot_cuo_fsc :Double;
begin
  xmoncuomasant := 0;
  xmoncuoenvper := 0;
  xmoncuoenvven := 0;
  xmondeuper    := 0;
  xsalmaxcuoven := 0;
  xsalmaxcuorep := 0;
  xmoncuoenv    := 0;
  //INICIO SPP_201401_COB
  xmonenvmodman := 0;
  //FINAL SPP_201401_COB

  xmoncuofsc    :=  0;
  xmoncuoenvfsc := 0;
  xmontot_cuo_fsc := 0;
  xcanreg       := 0;
  DM1.cdsRegCob.First;
  While Not DM1.cdsRegCob.Eof Do
  Begin
    xmoncuomasant := xmoncuomasant + DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsFloat;
    xmoncuoenvper := xmoncuoenvper + DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsFloat;
    xmoncuoenvven := xmoncuoenvven + DM1.cdsRegCob.FieldByName('MONCUOENVVEN').AsFloat;
    xmondeuper    := xmondeuper    + DM1.cdsRegCob.FieldByName('MONDEUPER').AsFloat;
    xsalmaxcuoven := xsalmaxcuoven + DM1.cdsRegCob.FieldByName('SALMAXCUOVEN').AsFloat;
    xsalmaxcuorep := xsalmaxcuorep + DM1.cdsRegCob.FieldByName('SALMAXCUOREP').AsFloat;
    xmoncuoenv    := xmoncuoenv    + DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat;
    //INICIO SPP_201401_COB
    xmonenvmodman := xmonenvmodman + DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat;
    //FINAL SPP_201401_COB
    xmoncuofsc := xmoncuofsc +  DM1.cdsRegCob.FieldByName('CREMTOCUOFSC').AsFloat;
    xmoncuoenvfsc := xmoncuoenvfsc + DM1.cdsRegCob.FieldByName('MONCUOENVFSC').AsFloat;
    xmontot_cuo_fsc := xmontot_cuo_fsc + DM1.cdsRegCob.FieldByName('MONTOT_CUO_FSC').AsFloat;
    xcanreg       := xcanreg + 1;
    DM1.cdsRegCob.Next;
  End;

  {
  Cuota(s) de(los) credito(s)                              = CREMTOCUO
  Saldo de la(s) cuota(s) más antigua(s)                   = MONCUOMASANT
  Saldo de la(s) cuota(s) del(los) periodo(s)              = MONCUOENVPER
  Saldo de la(s) cuota(s) vencida(s)                       = MONCUOENVVEN
  Saldo al periodo de cobranza                             = MONDEUPER
  Cuota(s) con saldo más alto de la(s) cuota(s) vencida(s) = SALMAXCUOVEN
  }

  DM1.cdsRegCob.First;
  dbgfilinf.Selected.Clear;
  dbgfilinf.SetControlType('FLAG',fctCheckBox,'S;N');
  dbgfilinf.Selected.Add('FLAG'#9'3'#9' X'#9#9);
  dbgfilinf.Selected.Add('ASOCODMOD'#9'10'#9'Codigo~Modular'#9#9);
  dbgfilinf.Selected.Add('ASOAPENOM'#9'32'#9'Apellidos(s) y Nombre(s)'#9#9);
  dbgfilinf.Selected.Add('NUMCUOENVPER'#9'2'#9'Cuo.~Per.'#9#9);
  dbgfilinf.Selected.Add('NUMCUOENVVEN'#9'2'#9'Cuo.~Ven.'#9#9);
  dbgfilinf.Selected.Add('CREMTOCUO'#9'8'#9'Cuota(s)~de(los)~credito(s)'#9#9);

  dbgfilinf.Selected.Add('SALMAXCUOREP'#9'12'#9'Cuota(s) c/saldo~mas alto de las~cuota(s) reprog.'#9#9);
  
  dbgfilinf.Selected.Add('MONCUOMASANT'#9'12'#9'Saldo de la(s)~cuota(s)~más antigua(s)'#9#9);
  dbgfilinf.Selected.Add('MONCUOENVPER'#9'12'#9'Saldo de~la(s) cuota(s)~del periodo'#9#9);
  
  

  dbgfilinf.Selected.Add('MONTOT_CUO_FSC'#9'12'#9'Total enviar~Cuota + FSC'#9#9);
  dbgfilinf.Selected.Add('CREMTOCUOFSC'#9'8'#9'Cuota FSC'#9#9);
  dbgfilinf.Selected.Add('MONCUOENVVEN'#9'12'#9'Saldo de~la(s) cuota(s)~vencida(s)'#9#9);
  dbgfilinf.Selected.Add('MONDEUPER'#9'12'#9'Saldo al~periodo de~cobranza'#9#9);
  dbgfilinf.Selected.Add('SALMAXCUOVEN'#9'12'#9'Cuota(s) c/saldo~mas alto de las~cuota(s) venc.(s)'#9#9);
  dbgfilinf.Selected.Add('PORC'#9'6'#9'%'#9#9);

// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
  dbgfilinf.Selected.Add('CFCDES_F'#9'15'#9'Ultima~Clasificación'#9#9);
  dbgfilinf.Selected.Add('RESULTADO'#9'25'#9'Resultado'#9#9);
  dbgfilinf.Selected.Add('MONENV'#9'12'#9'Monto~Enviado'#9#9);
  dbgfilinf.Selected.Add('MONCOB'#9'12'#9'Monto~Cobrado'#9#9);
  dbgfilinf.Selected.Add('SALDIS'#9'12'#9'Saldo~Disponible'#9#9);
  dbgfilinf.Selected.Add('CODPAD'#9'10'#9'Periodo~Padrón'#9#9);
  dbgfilinf.Selected.Add('CARGO'#9'8'#9'Código~Cargo'#9#9);
  dbgfilinf.Selected.Add('SITUACION'#9'7'#9'Situación'#9#9);
  dbgfilinf.Selected.Add('PLANILLA'#9'7'#9'Tipo~Planilla'#9#9);
  dbgfilinf.Selected.Add('USEID'#9'3'#9'UGEL~id'#9#9);
  dbgfilinf.Selected.Add('USENOM'#9'25'#9'UGEL~Nombre'#9#9);
  dbgfilinf.Selected.Add('HABER'#9'12'#9'Bruto'#9'F'#9'Haberes');
  dbgfilinf.Selected.Add('DESCUENTO'#9'12'#9'Descuento'#9'F'#9'Haberes');
  dbgfilinf.Selected.Add('LIQUIDO'#9'12'#9'Liquido'#9'F'#9'Haberes');
  dbgfilinf.Selected.Add('DISPONIBLE_PADRON'#9'12'#9'Disponible~En Padrón'#9#9);
  dbgfilinf.Selected.Add('CUODIF'#9'10'#9'Cuotas~Diferidas'#9#9);
  dbgfilinf.Selected.Add('SALDIF'#9'10'#9'Saldo~Diferido'#9#9);
  dbgfilinf.ApplySelected;

  TNumericField(DM1.cdsRegCob.FieldByName('MONENV')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('MONCOB')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('SALDIS')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('HABER')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('DESCUENTO')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('LIQUIDO')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('DISPONIBLE_PADRON')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('SALDIF')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('DISPONIBLE_PADRON')).DisplayFormat    := '##,###,##0.00';

// Fin: SPP_201308_COB      : En reporte de últimas Cuotas debe considerar contratados

  TNumericField(DM1.cdsRegCob.FieldByName('NUMCUOENVPER')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsRegCob.FieldByName('NUMCUOENVVEN')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsRegCob.FieldByName('CREMTOCUO')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('MONCUOMASANT')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('SALMAXCUOVEN')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('SALMAXCUOREP')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('MONCUOENVPER')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('MONCUOENVVEN')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('MONDEUPER')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('PORC')).DisplayFormat         := '##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('MONCUOENV')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('CREMTOCUOFSC')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('MONCUOENVFSC')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('MONTOT_CUO_FSC')).DisplayFormat    := '##,###,##0.00';
  dbgfilinf.ColumnByName('MONCUOMASANT').FooterValue  := FloatToStrF(xmoncuomasant, ffNumber, 15, 2);
  dbgfilinf.ColumnByName('MONCUOENVPER').FooterValue  := FloatToStrF(xmoncuoenvper, ffNumber, 15, 2);
  dbgfilinf.ColumnByName('MONCUOENVVEN').FooterValue  := FloatToStrF(xmoncuoenvven, ffNumber, 15, 2);
  dbgfilinf.ColumnByName('MONDEUPER').FooterValue  := FloatToStrF(xmondeuper, ffNumber, 15, 2);
  dbgfilinf.ColumnByName('SALMAXCUOVEN').FooterValue  := FloatToStrF(xsalmaxcuoven, ffNumber, 15, 2);
  dbgfilinf.ColumnByName('SALMAXCUOREP').FooterValue  := FloatToStrF(xsalmaxcuorep, ffNumber, 15, 2);
  dbgfilinf.ColumnByName('MONCUOENV').FooterValue  := FloatToStrF(xmoncuoenv, ffNumber, 15, 2);
  //INCIO SPP_201401_COB
  dbgfilinf.ColumnByName('MONENVMODMAN').FooterValue  := FloatToStrF(xmonenvmodman, ffNumber, 15, 2);
  //FINAL SPP_201401_COB
  dbgfilinf.ColumnByName('CREMTOCUOFSC').FooterValue  := FloatToStrF(xmoncuofsc, ffNumber, 15, 2);
  dbgfilinf.ColumnByName('MONCUOENVFSC').FooterValue  := FloatToStrF(xmoncuoenvfsc, ffNumber, 15, 2);
  dbgfilinf.ColumnByName('MONTOT_CUO_FSC').FooterValue  := FloatToStrF(xmontot_cuo_fsc, ffNumber, 15, 2);
  dbgfilinf.ColumnByName('ASOAPENOM').FooterValue  := 'TOTAL : '+FloatToStrF(xcanreg, ffNumber, 6, 0);
  dbgfilinf.Refresh;
End;

procedure TFtrainfpro.dbgfilinfTitleButtonClick(Sender: TObject;
  AFieldName: String);
Var xindexo:String;
begin
  DM1.xfindexo := '';
  If AFieldName = 'FLAG' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'FLAG';
  End;

  If AFieldName = 'ASOCODMOD' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'ASOCODMOD';
  End;

  If AFieldName = 'ASOAPENOM' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'ASOAPENOM';
  End;
  If AFieldName = 'USEID' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'USEID';
  End;
  If AFieldName = 'NUMCUOENVPER' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'NUMCUOENVPER';
  End;
  If AFieldName = 'NUMCUOENVVEN' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'NUMCUOENVVEN';
  End;
  If AFieldName = 'CREMTOCUO' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'CREMTOCUO';
  End;
  If AFieldName = 'SALMAXCUOVEN' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'SALMAXCUOVEN';
  End;
  If AFieldName = 'MONCUOENVPER' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'MONCUOENVPER';
  End;
  If AFieldName = 'MONCUOENVVEN' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'MONCUOENVVEN';
  End;
  If AFieldName = 'PORC' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'PORC';
  End;
  If AFieldName = 'MONCUOMASANT' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'MONCUOMASANT';
  End;
  If AFieldName = 'MONCUOENV' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'MONCUOENV';
  End;
  If AFieldName = 'MONDEUPER' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'MONDEUPER';
  End;

  If AfieldName= 'CUO' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'CUO';
  End;

  If AfieldName= 'ULTPC' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'ULTPC';
  End;

  If AFieldName = 'SALMAXCUOREP' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'SALMAXCUOREP';
  End;

  If AFieldName = 'CREMTOCUOFSC' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'CREMTOCUOFSC';
  End;
  If AfieldName= 'MONCUOENVFSC' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'MONCUOENVFSC';
  End;
  If AFieldName = 'MONTOT_CUO_FSC' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= 'MONTOT_CUO_FSC';
  End;

// Inicio: SPP_201308_COB    : En reporte de últimas Cuotas debe considerar contratados
  If AFieldName <> 'Haberes' Then
  Begin
    xindexo :='S' ;
    DM1.xfindexo:= AFieldName;
  End;
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados

  If xindexo='S' then Dm1.cdsRegCob.IndexFieldNames:= DM1.xfindexo;
end;

Procedure TFtrainfpro.btncalcularClick(Sender: TObject);
Var xmonto:Double;
 xflgenv:String;
Begin
  {
  0 Saldo de la(s) cuota(s) más antigua(s)
  1 Saldo de la(s) cuota(s) del periodo
  2 Saldo de la(s) cuota(s) vencida(s)
  3 Saldo al periodo de cobranza
  4 Cuota(s) con saldo más alto de la(s) cuota(s) vencida(s)
  5 Sal. de la(s) cuo. mas antig + Sal. Periodo de Cob.
  6 Cuota reprogramada a futuro + cuota vencida mas alta (Cred.paralelos).
  }
  If MessageDlg('¿ Calcular el envio a cobranza en función a:'#13+cbcalfun.Text+' ?',mtconfirmation,[mbYes,MbNo],0) = mrYes then
  Begin
    DM1.xCnd := 'F';
    Screen.Cursor:= crHourGlass;
    Dm1.cdsRegCob.IndexFieldNames := 'FLAG';
    DM1.cdsRegCob.First;
    While Not DM1.cdsRegCob.Eof Do
    Begin
      If DM1.cdsRegCob.FieldByName('FLAG').AsString = 'S' Then
      Begin
        xmonto := 0;
        // Saldo de la(s) cuota(s) más antigua(s)
        If cbcalfun.ItemIndex = 0 Then
        Begin
          xmonto  := DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsFloat;
          xflgenv := '0';
        End;
        // Saldo de la(s) cuota(s) del periodo
        If cbcalfun.ItemIndex = 1 Then
        Begin
          xmonto := DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsFloat;
          xflgenv := '1';
        End;
        // Saldo de la(s) cuota(s) vencida(s)
        If cbcalfun.ItemIndex = 2 Then
        Begin
          xmonto := DM1.cdsRegCob.FieldByName('MONCUOENVVEN').AsFloat;
          xflgenv := '2';
        End;
        // Saldo al periodo de cobranza
        If cbcalfun.ItemIndex = 3 Then
        Begin
          xmonto := DM1.cdsRegCob.FieldByName('MONDEUPER').AsFloat;
          xflgenv := '3';
        End;
        // Cuota(s) con saldo más alto de la(s) cuota(s) vencida(s)
        If cbcalfun.ItemIndex = 4 Then
        Begin
          xmonto := DM1.cdsRegCob.FieldByName('SALMAXCUOVEN').AsFloat;
          xflgenv := '4';
        End;
        // Sal. de la(s) cuo. mas antig + Sal. Periodo de Cob.
        If cbcalfun.ItemIndex = 5 Then
        Begin
          xmonto := DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsFloat + DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsFloat;
          xflgenv := '5';
        End;
        // Cuota reprogramada a futuro
        If cbcalfun.ItemIndex = 6 Then
        Begin
          xmonto := DM1.cdsRegCob.FieldByName('SALMAXCUOREP').AsFloat+
                    DM1.cdsRegCob.FieldByName('SALMAXCUOVEN').AsFloat ;
          xflgenv := '6';
        End;
// Inicio: SPP_201309_COB       : Se duplica datos de Padron
        If cbcalfun.ItemIndex = 7 Then
        Begin
          xmonto := DM1.cdsRegCob.FieldByName('SALDIF').AsFloat;
          xflgenv := '7';
        End;
// Fin: SPP_201309_COB       : Se duplica datos de Padron
        DM1.cdsRegCob.Edit;
        DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat  := xmonto; // SOLO LA CUOTA ENVIADA. MAS NO EL FSC
        DM1.cdsRegCob.FieldByName('MONTOT_CUO_FSC').AsFloat  := DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat+ DM1.cdsRegCob.FieldByName('MONCUOENVFSC').AsFloat;
        DM1.cdsRegCob.FieldByName('FLGCUOENV').AsString := xflgenv;
        DM1.cdsRegCob.Post;
      End;
      DM1.cdsRegCob.Next;
    End;
    actdet;
    Dm1.cdsRegCob.IndexFieldNames := DM1.xfindexo;
    DM1.cdsRegCob.First;
    Screen.Cursor:= crDefault;
    MessageDlg('La información ha sido calculada', mtConfirmation, [mbOk], 0);
    DM1.xCnd := 'X';
  End;
End;


Procedure TFtrainfpro.btnactualizarClick(Sender: TObject);
Var xSql, xporenv:String;
    xmoncuoenv:Double;
    //INICIO SPP_201401_COB
     xmonenvmodman : Double;
    //FINAL SPP_201401_COB
    xmoncuoenvfsc:Double;
Begin
  If MessageDlg('¿ Se va a proceder a actualizar la información'#13'para la generación del envio de planilla',mtconfirmation,[mbYes,MbNo],0)=mrYes then
  Begin
    Screen.Cursor:= crHourGlass;
    DM1.cdsRegCob.First;
    xmoncuoenv := 0;
    xmoncuoenvfsc := 0;
    //INICIO SPP_201401_COB
    xmonenvmodman := 0;
    //FINAL SPP_201401_COB
    While Not DM1.cdsRegCob.Eof Do
    Begin
      If DM1.cdsRegCob.FieldByName('PORC').AsFloat <> 100 Then
         xporenv := ', PORENVCUO = '+FloatToStr(DM1.cdsRegCob.FieldByName('PORC').AsFloat)
      Else
         xporenv := ', PORENVCUO = NULL';

      xmoncuoenv := xmoncuoenv  + DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat;
      //INICIO SPP_201401_COB
       xmonenvmodman := DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat;
      //FINAL  SPP_201401_COB
      xmoncuoenvfsc := xmoncuoenvfsc  + DM1.cdsRegCob.FieldByName('MONCUOENVFSC').AsFloat;

      // Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
      If DM1.cdsRegCob.FieldByName('FLAG').AsString = 'S' Then
      Begin

         //INICIO SPP_201401_COB
         //Tienen prioridad el importe modificado manualmente  solo cesantes
         //xSql := 'UPDATE COB319 '
         //      +'   SET MONCUOENVORI = MONCUOENV, '
         //      +       'USUMODENVORI ='''+DM1.wUsuario+''', FECMODENVORI=sysdate '
         //      +' WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
         //      +'   AND COBANO = '+QuotedStr(DM1.cdsRegCob.FieldByName('COBANO').AsString)
         //      +'   AND COBMES = '+QuotedStr(DM1.cdsRegCob.FieldByName('COBMES').AsString)
         //      +'   AND USUMODENVORI IS NULL';
         If  xmonenvmodman>0 Then
         Begin
            xSql :=  'UPDATE COB319 '
                   +' SET   MONCUOENVORI='+FloatToStrF(DM1.cdsRegCob.FieldByName('CREMTOCUO').AsFloat, ffNumber, 10, 2)+','
                    +'      MONCUOENV='+FloatToStr(DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat)+','
                    +'      MONENVMODMAN='+FloatToStr(DM1.cdsRegCob.FieldByName('MONENVMODMAN').AsFloat)+','
                    +'      USUMODENVORI ='''+DM1.wUsuario+''', FECMODENVORI=sysdate '
                    +' WHERE ASOID  = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
                    +'   AND COBANO = '+QuotedStr(DM1.cdsRegCob.FieldByName('COBANO').AsString)
                    +'   AND COBMES = '+QuotedStr(DM1.cdsRegCob.FieldByName('COBMES').AsString)
         End
         Else
         Begin

         xSql := 'UPDATE COB319 '
               +'   SET MONCUOENVORI = MONCUOENV, '
               +'      USUMODENVORI ='''+DM1.wUsuario+''', FECMODENVORI=sysdate, '
               +'      MONENVMODMAN=0 '
               +' WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
               +'   AND COBANO = '+QuotedStr(DM1.cdsRegCob.FieldByName('COBANO').AsString)
               +'   AND COBMES = '+QuotedStr(DM1.cdsRegCob.FieldByName('COBMES').AsString);


         //DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         End;
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         //FINAL SPP_201401_COB


         xSql := 'UPDATE COB319 '
               +'   SET MONCUOENV = '+DM1.cdsRegCob.FieldByName('MONCUOENV').AsString
               +'      ,MONCUOENVFSC = '+DM1.cdsRegCob.FieldByName('MONCUOENVFSC').AsString
               +'      ,MONTOTENV = '+FloatToStr(DM1.cdsRegCob.FieldByName('MONAPOENV').AsFloat
                                                 + DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat
                                                 + DM1.cdsRegCob.FieldByName('MONCUOENVFSC').AsFloat)
               +'      ,FLGCUOENV = '+QuotedStr(DM1.cdsRegCob.FieldByName('FLGCUOENV').AsString)
               + xporenv
               +' WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
               +'   AND COBANO = '+QuotedStr(DM1.cdsRegCob.FieldByName('COBANO').AsString)
               +'   AND COBMES = '+QuotedStr(DM1.cdsRegCob.FieldByName('COBMES').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      end;
      // Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados

      DM1.cdsRegCob.Next;
    End;

    xSql := 'UPDATE COB204 SET CHKDEP = ''S'''
    +' WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+' AND PERIODO = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
    +' AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString);

    DM1.DCOM1.AppServer.EjecutaSQL(xSql);

    DM1.cdsGrupos.Edit;
    DM1.cdsGrupos.FieldByName('MONCUOENV').AsFloat := xmoncuoenv;
    DM1.cdsGrupos.FieldByName('MONCUOENVFSC').AsFloat := xmoncuoenvfsc;


    xSql := 'BEGIN PCK_GEN_PLA_CON.SP_SUMA_CABECERA_COB204('+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
    // SE COLOCA EL COMMINT AL FINAL LA SENTENCIA SQL, PORQUE SE RETIRARON TODOS LOS COMMITS DE LOS PROCEDURES
    +','+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); COMMIT; END;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);

    Screen.Cursor:= crDefault;
    MessageDlg('La información ha sido actualizada', mtInformation, [mbOk], 0);
  End;
End;


Procedure TFtrainfpro.carinf;
Var xSql, sSQL : String;
    Campo :TFloatField;
// Inicio: SPP_201309_COB    : Se duplica datos de Padron
    sCodPadron, sUproIn, sAsoTipIn, sUproCFCIn : String;
// Fin: SPP_201309_COB       : Se duplica datos de Padron
Begin
// Inicio: SPP_201309_COB    : Se duplica datos de Padron
  Screen.Cursor:=crHourGlass;

  sSQL:=' SELECT UPROID, UPAGOID, USEID, COUNT(*) REGS FROM COB319 A WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
         +'   AND A.COBANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
         +'   AND A.COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString);
  If DM1.cdsGrupos.FieldByName('ASOTIPID').AsString= 'CE' then
     begin
      sAsoTipIn := ' AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString);
      sSql :=sSql +' AND A.ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString);
     end
  else
     begin
      sAsoTipIn := ' AND ASOTIPID IN ('+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+',''CO'',''VO'')';
      sSql :=sSql +' AND A.ASOTIPID IN ('+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+',''CO'',''VO'')';
     end;
  sSql :=sSql +' GROUP BY UPROID, UPAGOID, USEID';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;


  sUproIn   :=' and ( ';
  sUproCFCIn:='';
  DM1.cdsQry.First;
  while not DM1.cdsQry.Eof do
  begin
     sUproCFCIn:=' and B.UPROID(+)='+''''+DM1.cdsQry.FieldByName('UPROID').AsString+''' ';
     sUproIn   :=sUproIn   +'( UPROID ='+''''+DM1.cdsQry.FieldByName('UPROID').AsString  +''' and '
                           +'  UPAGOID='+''''+DM1.cdsQry.FieldByName('UPAGOID').AsString +''' and '
                           +'  USEID  ='+''''+DM1.cdsQry.FieldByName('USEID').AsString   +''' ) or ';
     DM1.cdsQry.Next;
  end;
  sUproIn:=Copy( sUproIn, 1, Length(sUproIn)-3)+' )';
  if DM1.cdsQry.Recordcount=0 then sUproIn:='';
  if DM1.cdsQry.Recordcount=0 then sUproCFCIn:='';

  // Código de Padron
  sSQL:='SELECT max(CODPAD) CODPAD FROM ASO_PAD_DET_HIS';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;
  sCodPadron:=DM1.cdsQry.FieldByname('CODPAD').AsString;

   xSql := 'SELECT FLAG, A.ASOCODMOD, A.USEID, A.ASOID, A.ASOAPENOM, A.COBANO, A.ASODNI, A.UPROID, A.ASOTIPID, '
         +'       A.COBMES, NUMCUOENVPER, NUMCUOENVVEN, FLGCUOENV, NROFICIO, A.ASOCODPAGO, '
         +'       NVL(CREMTOCUO,0) CREMTOCUO, NVL(CREMTOCUOFSC,0) CREMTOCUOFSC, NVL(CREMTOAPO,0) CREMTOAPO, '
         +'       NVL(MONCUOENVVEN,0) MONCUOENVVEN, NVL(MONCUOENVPER,0) MONCUOENVPER, '
         +'       NVL(MONCUOMASANT,0) MONCUOMASANT, NVL(SALMAXCUOVEN,0) SALMAXCUOVEN, '
         +'       NVL(SALMAXCUOREP,0) SALMAXCUOREP, '
         +'       NVL(MONCUOENV,0) MONCUOENV, NVL(MONCUOENVFSC,0) MONCUOENVFSC, '
         +'       NVL(MONAPOENV,0) MONAPOENV, NVL(MONTOTENV,0) MONTOTENV, '
         +'       NVL(MONDEUPER,0) MONDEUPER, 100.00 PORC, '
         +'       (NVL(MONCUOENV,0)+NVL(MONCUOENVFSC,0)) MONTOT_CUO_FSC, '
         +'       CFCDES_F, '
         +'       NVL(RESULTADO,''No está en Resultados'') RESULTADO, MONENV, MONCOB, SALDIS, '
         +'       D.CODPAD, D.CARGO, D.PLANILLA, D.USEID, D.USENOM, D.HABER, D.DESCUENTO, D.LIQUIDO, NVL(TO_CHAR(D.SITUACION),''Repetido'') SITUACION, '
         +'       NVL(B.CUODIF,0) CUODIF , nvl(SALDIF,0) SALDIF, '
         +'       NVL(HABER, 0) - nvl(DESCUENTO,0) - (NVL(HABER,0)*0.25) + NVL(MONCOB,0) DISPONIBLE_PADRON, '
         //INICIO SPP_201401_COB
         +'       NVL(MONENVMODMAN,0) MONENVMODMAN, NVL(MONCUOENVORI,0) MONCUOENVORI '
         //FINAL SPP_201401_COB
         +'  FROM COB319 A, CFC000 B, '
         +'  ( '
         +' SELECT IDECON, A.COBANO,A.COBMES,A.ASOID, NVL(RESULTADO,''No está en Resultados'') RESULTADO, MONCUOENV MONENV, MONCOB, SALDIS '
         +' FROM COB_INF_PLA_DET A, COB319 B '
         +' WHERE A.COBANO='''+sAno+''' AND A.COBMES='''+sMes+''' AND A.TIPO=''2'' AND NVL(MONCUO,0)>0 '
         +'   AND A.ASOID=B.ASOID(+) AND B.IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
         +'   AND  B.COBANO='''+sAno+''' AND B.COBMES='''+sMes+''' '
         +'  ) C, '
         + ' ( SELECT D.ASOID, D.CODPAD, D.CARGO, D.PLANILLA, D.USEID, D.USENOM, D.HABER, D.DESCUENTO, D.LIQUIDO, D.SITUACION FROM ASO_PAD_DET_HIS D '
         +    ' WHERE D.CODPAD(+) = '''+sCodPadron+''' '+ sUproIn + sAsoTipIn
         +      ' AND (ASOID, ROWID) IN (SELECT ASOID, MAX(ROWID) FILA FROM ASO_PAD_DET_HIS '
         +                              'WHERE CODPAD(+) = '''+sCodPadron+''' ' + sUproIn + sAsoTipIn
         +                              'HAVING COUNT(*) = 1 GROUP BY ASOID ) '
         + ' ) D '
         +' WHERE A.IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
         +'   AND A.COBANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
         +'   AND A.COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString);

  If DM1.cdsGrupos.FieldByName('ASOTIPID').AsString= 'CE' then
     begin
      xSql :=xSql +' AND A.ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString);
     end
  else
     begin
      xSql :=xSql +' AND A.ASOTIPID IN ('+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+',''CO'',''VO'')';
     end;

  xSql :=xSql +' AND ( NVL(MONDEUPER,0) > 0 OR NVL(SALMAXCUOREP,0)>0 OR NVL(CREMTOCUOFSC,0)>0)';

  // Periodo de Cartera
  sSQL:='SELECT MAX(PERIODO) PERIODO FROM CFC000';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;
  xSql :=xSql +' AND A.ASOID=B.ASOID(+) AND PERIODO(+)='''+ DM1.cdsQry.fieldByname('PERIODO').AsString+''' '+ sUproCFCIn;
  xSql :=xSql +' AND A.ASOID=C.ASOID(+) ';

  xSql :=xSql +' AND A.ASOID=D.ASOID(+) AND A.CARGO=D.CARGO(+) ';

  If rgtipaso.ItemIndex = 1 Then xSql := xSql + ' AND NVL(IDTIPCOB, ''XX'') NOT IN (''03'')';
  If rgtipaso.ItemIndex = 2 Then xSql := xSql + ' AND NVL(IDTIPCOB, ''XX'') IN (''03'')';
  If rgtipaso.ItemIndex = 3 Then
     xSql:=xSql+' AND EXISTS ( SELECT ASOID FROM ASO_PAD_DET_HIS WHERE CODPAD='''+sCodPadron+''' '
               +' AND ASODNI = A.ASODNI  GROUP BY ASOID HAVING COUNT(*)>1 )';
  If rgtipaso.ItemIndex = 4 Then
     xSql:=xSql+' AND EXISTS ( SELECT ASOID FROM COB_FSC_DEUDA_FSC_CAB WHERE ASOID = A.ASOID AND ID_EST_FSC IN (''02'', ''27'') AND (NVL(IMP_APL_FSC, 0) - NVL(IMP_COB_FSC, 0)) > 0 )';

  DM1.cdsQry.Close;

  mSQL.Clear;
  mSQL.Text:=xSql;

  DM1.cdsRegCob.Close;
  DM1.cdsRegCob.DataRequest(xSql);
  DM1.cdsRegCob.Open;
  Screen.Cursor:= crDefault;
// Fin: SPP_201309_COB       : Se duplica datos de Padron
End;

procedure TFtrainfpro.btnCalculaClick(Sender: TObject);
// Inicio: SPP_201310_COB       : Cambiar Combo de Porcentaje
var
  nPorcentaje : Double;
// Fin: SPP_201310_COB       : Cambiar Combo de Porcentaje
begin
  Screen.Cursor := crHourGlass;
  // Inicio: SPP_201310_COB       : Cambiar Combo de Porcentaje
  nPorcentaje:=DM1.FRound(DM1.cdsQry11.FieldByName('PORCENTAJE').AsFloat,15,2) ;
  DM1.cdsRegCob.First;
  While Not DM1.cdsRegCob.Eof Do
  Begin
    If DM1.cdsRegCob.FieldByName('FLAG').AsString = 'S' Then
    Begin
      DM1.cdsRegCob.Edit;
      DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat := RoundTo(DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat * (nPorcentaje/100),-2);
      DM1.cdsRegCob.FieldByName('MONCUOENVFSC').AsFloat := RoundTo(DM1.cdsRegCob.FieldByName('MONCUOENVFSC').AsFloat * (nPorcentaje/100),-2);
      DM1.cdsRegCob.FieldByName('MONTOT_CUO_FSC').AsFloat  := DM1.cdsRegCob.FieldByName('MONCUOENV').AsFloat+ DM1.cdsRegCob.FieldByName('MONCUOENVFSC').AsFloat;
      DM1.cdsRegCob.FieldByName('PORC').AsFloat      := nPorcentaje;
    End;
    DM1.cdsRegCob.Next;
  End;
  // Fin: SPP_201310_COB       : Cambiar Combo de Porcentaje
  // actualizar la grilla
  actdet;
  Screen.Cursor := crDefault;
end;

procedure TFtrainfpro.edtBuscarDetKeyPress(Sender: TObject; var Key: Char);
begin
 If Key=#13 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
    Begin
      edtBuscarDet.Text := '';
      dbgfilinf.SetFocus;
    End
    Else
    Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
      edtBuscarDet.SetFocus;
    End;
  End;
end;

procedure TFtrainfpro.edtBuscarDetChange(Sender: TObject);
begin
  If Length(Trim(edtBuscarDet.Text))>0 Then
    DM1.cdsRegCob.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscarDet.Text)]), [loPartialKey]);
end;

procedure TFtrainfpro.edtBuscarDetClick(Sender: TObject);
begin
  DM1.cdsRegCob.IndexFieldNames:= 'ASOAPENOM';
  DM1.cdsRegCob.First;
end;

procedure TFtrainfpro.btnfiltrarClick(Sender: TObject);
begin
  carinf;
end;

procedure TFtrainfpro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Inicio: SPP_201310_COB     : Cambiar Combo de Porcentaje
  TNumericField(DM1.cdsQry11.FieldByName('PORCENTAJE')).DisplayFormat:= '';
  TNumericField(DM1.cdsQry11.FieldByName('PORCENTAJE')).EditFormat   := '';
  DM1.cdsQry11.Close;
// Fin: SPP_201310_COB       : Cambiar Combo de Porcentaje

  DM1.cdsDetalle.Close;
  DM1.cdsDetalle.Filter:='';
  DM1.cdsDetalle.IndexFieldNames:='';
  DM1.cdsDetalle.Filtered := False;

  DM1.cdsRegCob.Close;
  DM1.cdsRegCob.Filter:='';
  DM1.cdsRegCob.IndexFieldNames:='';
  DM1.cdsRegCob.Filtered := False;

  Action := caFree;
end;

procedure TFtrainfpro.dbgfilinfCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
    BEGIN
      If Field.FieldName = 'SALMAXCUOVEN' Then AFont.Color:= clBlue;
      If Field.FieldName = 'PORC'         Then AFont.Color:= clRed;
      If Field.FieldName = 'MONTOT_CUO_FSC' Then
         begin
            AFont.Color:= clGreen;
            AFont.Size := 10;
            AFont.Style:=[fsBold]
         end;
      If Field.FieldName = 'SALMAXCUOREP' Then AFont.Color:= clMaroon;
    END
  ELSE
    BEGIN
      If Field.FieldName = 'MONTOT_CUO_FSC' Then
         begin
            AFont.Size := 10;
            AFont.Style:=[fsBold];
         end;
    END;
end;


procedure TFtrainfpro.bbtnConsPendClick(Sender: TObject);
// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
var xsql, sContratados :string;
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
begin

// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
  sContratados:='';
  if DM1.cdsGrupos.FieldByName('ASOTIPID').AsString='DO' then sContratados:=', ''CO'', ''VO''';

  XSQL:='SELECT MAX(A.ASOCODMOD)ASOCODMOD, MAX(A.ASOAPENOM)ASOAPENOM, MAX(A.UPROID)UPROID, MAX(A.UPAGOID)UPAGOID, '+
           'MAX(A.USEID) USEID, MAX(A.MONCUOENV)MONCUOENV, COUNT(1) CUO, MAX(B.PERCOB) ULTPC, MAX(A.ASOTIPID) ASOTIPID '+
        'FROM COB319 A, CRE302 B '+
        'WHERE A.IDECON = '''+DM1.cdsGrupos.FieldByName('IDECON').AsString+''' AND A.COBANO||A.COBMES='''+DM1.cdsGrupos.FieldByName('PERIODO').AsString+''' '+
          'AND A.ASOTIPID IN ('+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+sContratados+' ) '+
          'AND NVL(MONCUOENV,0)>0 '+
          'AND A.ASOID=B.ASOID AND ( (B.CREESTID IN (''02'',''27'',''11'')) OR (B.CREESTID=''14'' AND B.PERCOB='''+DM1.cdsGrupos.FieldByName('PERIODO').AsString+''') ) '+
        'GROUP BY A.ASOID HAVING COUNT(1)<=1 ';
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados

  Screen.Cursor:= crHourGlass;
  DM1.cdsDetalle.Close;
  DM1.cdsDetalle.IndexFieldNames:='';
  DM1.cdsDetalle.DataRequest(XSQL);
  DM1.cdsDetalle.Open;

  If DM1.cdsDetalle.RecordCount=0 Then
    Begin
      MessageDlg('No existe información para mostrar..', mtError,[mbOk], 0 );
      Screen.Cursor:= crDefault;
      exit;
    End;

  Screen.Cursor:= crDefault;
  Try
    fConVenoRep := TfConVenoRep.Create(Self);
    fConVenoRep.ShowModal;
  Finally
    fConVenoRep.Free;
  End;

end;

procedure TFtrainfpro.btnaExcelClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
   if DM1.cdsRegCob.RecordCount=0 then
   Begin
      ShowMessage('No existe Información para exportar a Excel');
      Exit;
   End;

   xArchivo := DM1.cdsGrupos.FieldByName('DESCON').AsString+'_'
              +DM1.cdsGrupos.FieldByName('PERIODO').AsString+'_'
              +DM1.cdsGrupos.FieldByName('ASOTIPID').AsString;
   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:=xArchivo+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);

   Screen.Cursor := crHourGlass;
   DM1.ExportaGridExcel(dbgfilinf,xArchivo);
   Screen.Cursor := crDefault;
end;

// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
procedure TFtrainfpro.btnDatosPadronClick(Sender: TObject);
var
   sSQL : String;
begin
   Screen.Cursor := crHourGlass;
   sSQL:='SELECT max(CODPAD) CODPAD FROM ASO_PAD_DET_HIS';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( sSQL );
   DM1.cdsQry.Open;

   sSQL:='SELECT ''N'' FLAG, CODPAD, CARGO, PLANILLA, USEID, USENOM, ASOTIPID, HABER, DESCUENTO, LIQUIDO, SITUACION '
        +  'FROM ASO_PAD_DET_HIS '
        +'WHERE CODPAD='''+DM1.cdsQry.FieldByName('CODPAD').AsString+''' '
        +  'AND ASODNI = '''+ DM1.cdsRegCob.FieldByname('ASODNI').AsString+'''';
   DM1.cdsAsoBanAct.Close;
   DM1.cdsAsoBanAct.DataRequest( sSQL );
   DM1.cdsAsoBanAct.Open;
   Screen.Cursor := crDefault;

   fDatosPadron:=TfDatosPadron.Create(self);
   fDatosPadron.ShowModal;
   fDatosPadron.Free;
end;
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados


// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
procedure TFtrainfpro.bbtnEditaFSCClick(Sender: TObject);
begin

   FCastigadosFSC:=TFCastigadosFSC.Create(nil);
   FCastigadosFSC.ShowModal;
   FCastigadosFSC.Free;
   if rgtipaso.ItemIndex=4 then
      rgtipasoClick(Self)
   else
      rgtipaso.ItemIndex:=4;
end;
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados

// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
procedure TFtrainfpro.FormCreate(Sender: TObject);
var
  sSQL : String;
begin
  Screen.Cursor:=crHourGlass;

// Inicio: SPP_201310_COB       : Cambiar Combo de Porcentaje
  sSQL:='SELECT 0.00 PORCENTAJE FROM DUAL';
  DM1.cdsQry11.Close;
  DM1.cdsQry11.DataRequest( sSQL );
  DM1.cdsQry11.Open;
  cedtPorcentaje.DataSource:=DM1.dsQry11;
  cedtPorcentaje.DataField :='PORCENTAJE';
  TNumericField(DM1.cdsQry11.FieldByName('PORCENTAJE')).DisplayFormat:= '##0.00';
  TNumericField(DM1.cdsQry11.FieldByName('PORCENTAJE')).EditFormat   := '##0.00';
// Fin: SPP_201310_COB       : Cambiar Combo de Porcentaje
  
  sSQL:='SELECT MAX(A.ANOMES) PERIODO FROM COB_INF_PLA_CAB A, COB_CON_DET B '
       + 'where A.UPROID=B.UPROID AND A.UPAGOID=B.UPAGOID AND A.USEID=B.USEID '
       +  ' and B.IDECON ='+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;

  sAno:=Copy(DM1.cdsQry.fieldByname('PERIODO').AsString,1,4);
  sMes:=Copy(DM1.cdsQry.fieldByname('PERIODO').AsString,5,2);
  sSQL:='SELECT distinct UPROID FROM COB_CON_det A where IDECON='+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;

  sUPRO:=DM1.cdsQry.fieldByname('UPROID').AsString;

  // Inicio: SPP_201309_COB       : Se duplica datos de Padron
  if sAno='' then
  begin
     mePerCob.Text:='000/0000';
     sAno:='0000';
     sMes:='12';
  end
  else
  begin
     sSQL:='SELECT substr(TO_CHAR(TO_DATE(''01/'+sMes+'/'+sAno+'''),''MONTH''),1,3)||''/''||'''+sAno+''' PERIODO FROM DUAL';
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest( sSQL );
     DM1.cdsQry.Open;
     mePerCob.Text:=DM1.cdsQry.fieldByname('PERIODO').AsString;
  end;
  // Fin: SPP_201309_COB       : Se duplica datos de Padron
end;
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados

// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
procedure TFtrainfpro.bbtnEditaCuotaClick(Sender: TObject);
begin
  FEditaCuota:=TFEditaCuota.Create(nil);
  FEditaCuota.ShowModal;
  FEditaCuota.Free;
end;
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados


// Inicio: SPP_201309_COB       : Se duplica datos de Padron
procedure TFtrainfpro.bbtnDiferidoClick(Sender: TObject);
var
   sSQL : String;
   nConMes : Byte;
   sTipAsoDes : String;
begin
  Screen.Cursor:=crHourGlass;

  pbPago.Visible:=True;
  pbPago.Position:=0;
  pbPago.Max:=DM1.cdsRegCob.RecordCount+1;

  pbPago.Position:=pbPago.Position+1;
  if (Dm1.cdsRegCob.IndexFieldNames='SALDIF') or (Dm1.cdsRegCob.IndexFieldNames='CUODIF') then
     Dm1.cdsRegCob.IndexFieldNames:= 'ASOAPENOM';
     
  DM1.cdsRegCob.First;
  while not DM1.cdsRegCob.Eof do
  begin
      sSQL:='SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0)) SALDIF, COUNT(*) CUODIF FROM CRE302 '
           +'WHERE ASOID='''+DM1.cdsRegCob.FieldByName('ASOID').AsString+''' '
           + ' AND CREESTID IN (''02'',''11'',''27'',''14'') AND CREFVEN <> CREFVENINI';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      DM1.cdsRegCob.Edit;
      DM1.cdsRegCob.FieldByName('SALDIF').AsFloat := DM1.cdsQry.FieldByName('SALDIF').AsFloat;
      DM1.cdsRegCob.FieldByName('CUODIF').AsFloat := DM1.cdsQry.FieldByName('CUODIF').AsFloat;
      DM1.cdsRegCob.Post;
      DM1.cdsRegCob.Next;
      pbPago.Position:=pbPago.Position+1;
  end;
  Screen.Cursor := crDefault;
  ShowMessage('Proceso Finalizado!!!');
  pbPago.Visible:=False;;
end;
// Fin: SPP_201309_COB       : Se duplica datos de Padron


// Inicio: SPP_201310_COB       : Cambiar Combo de Porcentaje
procedure TFtrainfpro.cedtPorcentajeExit(Sender: TObject);
begin
  if (DM1.cdsQry11.FieldByName('PORCENTAJE').AsFloat>=0) and (DM1.cdsQry11.FieldByName('PORCENTAJE').AsFloat<=100) then
  else
  begin
      MessageDlg('El Porcentaje debe estar entre 0 y 100', mtError,[mbOk], 0 );
      DM1.cdsQry11.Edit;
      DM1.cdsQry11.FieldByName('PORCENTAJE').AsFloat:=0;
      DM1.cdsQry11.Post;
      cedtPorcentaje.SetFocus;
  end;
end;
// Fin: SPP_201310_COB      : Cambiar Combo de Porcentaje

end.
