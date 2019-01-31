
unit COB992;
// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB992
// Formulario                    : fgeninfenv
// Fecha de Creación             :
// Autor                         : Área de Desarrollo DM
// Objetivo                      : Generación de Información para Envío
//
// Actualizaciones:
// HPC_201402_COB                : Modificación de plantilla SUP (01/09/2014)
// SPP_201403_COB                : Se realiza el pase a producción a partir del HPC_201403_COB
// HPC_201408_COB: Se añaden campos al Qry. Que muestra la información
//                 para el envio a la cobranza.
// SPP_201406_COB: Se realiza el pase a producción a partir del HPC_201408_COB
// HPC_201411_COB: Se añaden campos al Qry. Que muestra la información para el envio a la cobranza.
// SPP_201408_COB: Se realiza el pase a producción a partir del HPC_201411_COB.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, db,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwcheckbox, Grids, Wwdbigrd,
  Wwdbgrid, Mask, ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd,
  ppReport, ppStrtch, ppMemo, ppPrnabl, ppCtrls, ppParameter, jpeg, ppDB,
  ppDBPipe, ppDBBDE, ppVar, DBGrids, RXDice;

type
  Tfgeninfenv = class(TForm)
    btncerrar: TBitBtn;
    btngenera: TBitBtn;
    dbgprevio: TwwDBGrid;
    rgtipaso: TRadioGroup;
    rgtiparc: TRadioGroup;
    btnprevio: TBitBtn;
    Panel1: TPanel;
    medescon: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    medesanomespro: TMaskEdit;
    Panel3: TPanel;
    mecarenvarc: TMaskEdit;
    Label3: TLabel;
    gbresenv: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lblmonapodo: TLabel;
    lblmonapoto: TLabel;
    lblmontotdo: TLabel;
    lblmontotce: TLabel;
    lbltottot: TLabel;
    Label6: TLabel;
    lblmoncuodo: TLabel;
    lblmoncuoce: TLabel;
    lblmoncuoto: TLabel;
    odLeer: TOpenDialog;
    Memo1: TMemo;
    btnimpoficio: TBitBtn;
    btndetalle: TBitBtn;
    btnexcel: TBitBtn;
    pproficiodo: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppLabel58: TppLabel;
    ppLabel61: TppLabel;
    pplblSenores: TppLabel;
    pplblFecha: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    pplblmoncuodo: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppMPie: TppMemo;
    ppmLinea: TppMemo;
    ppmTotLetras: TppMemo;
    ppFooterBand1: TppFooterBand;
    pnlRepOfico: TPanel;
    Shape6: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Button4: TButton;
    EdtSenores: TEdit;
    BitBtn8: TBitBtn;
    memoPie: TMemo;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    pprdetalle: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppbdedetalle: TppBDEPipeline;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape2: TppShape;
    ppLabel5: TppLabel;
    ppShape3: TppShape;
    ppLabel6: TppLabel;
    ppShape4: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape5: TppShape;
    ppLabel9: TppLabel;
    ppShape6: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    ppLabel12: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppLabel14: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel13: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine3: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel55: TppLabel;
    dtgData: TDBGrid;
    pproficioce: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppImage2: TppImage;
    ppLabel23: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    pplmoncuoce: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppMemo1: TppMemo;
    ppMemo2: TppMemo;
    ppMemo3: TppMemo;
    ppFooterBand2: TppFooterBand;
    ppParameterList2: TppParameterList;
    ppLabel38: TppLabel;
    pplblmonapodo: TppLabel;
    ppLabel40: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine4: TppLine;
    ppLabel59: TppLabel;
    pplblmontotdo: TppLabel;
    btndbf: TBitBtn;
    lblmoncuoco: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure rgtiparcClick(Sender: TObject);
    procedure rgtipasoClick(Sender: TObject);
    procedure btnprevioClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btngeneraClick(Sender: TObject);
    procedure btncerproClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnimpoficioClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btndetalleClick(Sender: TObject);
    procedure btnexcelClick(Sender: TObject);
    procedure btndbfClick(Sender: TObject);
  private
    procedure actcararc;
    procedure actdet;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgeninfenv: Tfgeninfenv;

implementation

uses COBDM1, COB988, COB991, COB421B;

{$R *.dfm}

procedure Tfgeninfenv.actcararc;
begin
  mecarenvarc.Text    := 'ARCHIVO DE '+UpperCase(rgtiparc.Items.Strings[rgtiparc.ItemIndex])+' - '+
                         UpperCase(rgtipaso.Items.Strings[rgtipaso.ItemIndex]);

end;

procedure Tfgeninfenv.FormActivate(Sender: TObject);
begin
  actdet;
end;

procedure Tfgeninfenv.rgtiparcClick(Sender: TObject);
begin
 btnprevio.OnClick(btnprevio);
 actcararc;
end;

procedure Tfgeninfenv.rgtipasoClick(Sender: TObject);
begin
  btnprevio.OnClick(btnprevio);
  If rgtipaso.ItemIndex = 1 Then
  Begin
   rgtiparc.ItemIndex := 0;
   rgtiparc.Enabled   := False;
  End
  Else rgtiparc.Enabled := true;
  actcararc;
end;

Procedure Tfgeninfenv.actdet;
  Var xtipaso, xtiparc, xSql:String;
  xtotapoenv,  xtotcuoenv   :Double;
  xmonapodo,  xmonapoco                 :Double;
  xmoncuodo,  xmoncuoce, xmoncuoco   :Double;
  xmontotdo,  xmontotce, xmontotco     :Double;
  xmontotapo, xmontotcuo    :Double;
  xtottot                   :Double;
Begin
  screen.Cursor := crHourGlass;
// inicio HPP_201105_COB
// SE COLOCA EL COMMINT AL FINAL LA SENTENCIA SQL, PORQUE SE RETIRARON TODOS LOS COMMITS DE LOS PROCEDURES
{
  xSql := 'BEGIN PCK_GEN_PLA_CON.SP_ACT_INC_ENV('+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); END;';
}
  xSql := 'BEGIN PCK_GEN_PLA_CON.SP_ACT_INC_ENV('+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); COMMIT; END;';
// fin HPP_201105_COB
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  If DM1.cdsGrupos.FieldByName('ASOTIPID').AsString = 'DO' Then rgtipaso.ItemIndex := 0;
  If DM1.cdsGrupos.FieldByName('ASOTIPID').AsString = 'CE' Then rgtipaso.ItemIndex := 1;
  medescon.Text       := DM1.cdsGrupos.FieldByName('DESCON').AsString;
  medesanomespro.Text := DM1.cdsGrupos.FieldByName('DESPER').AsString;
  If rgtipaso.ItemIndex = 0 Then
    xtipaso := ' AND ASOTIPID IN (''DO'',''CO'',''VO'')'
  Else If rgtipaso.ItemIndex = 1 Then xtipaso := ' AND ASOTIPID = ''CE'''
  Else xtipaso := '';

// inicio HPP_201105_COB
{
  If rgtiparc.ItemIndex = 0      Then xtiparc := ' AND NVL(MONCUOENV,0) > 0'
}
  If rgtiparc.ItemIndex = 0      Then xtiparc := ' AND (NVL(MONCUOENV,0) + NVL(MONCUOENVFSC,0)) > 0'
// fin HPP_201105_COB
  Else If rgtiparc.ItemIndex = 1 Then xtiparc := ' AND NVL(MONAPOENV,0) > 0'
  Else If rgtiparc.ItemIndex = 2 Then xtiparc := ' AND NVL(MONTOTENV,0) > 0';
  actcararc;
// inicio HPP_201105_COB
  //HPP_200905_COB, DFERNANDEZ, SE AGREGA CRECUOTA QUE ES EL NUMERO DE CUOTA CON MAYOR MONTO DE LAS CUOTAS IMPAGAS
  xSql := 'SELECT ASOID, ASOCODMOD,  ASOTIPID, UPROID, UPAGOID, USEID, ASOCODPAGO, CARGO, ASODNI, '
         +'       ASONCTA, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, '
         +'       NVL(MONCUOENV,0) + NVL(MONCUOENVFSC,0) MONCUOENV, '
         // Inicio: SP_201406_COB
         // Inicio SPP_201408_COB: Se añaden campos al Qry. Que muestra la información para el envio a la cobranza.
         // +'       MONAPOENV, MONTOTENV, COBANO, COBMES, NVL(CRECUOTA,0) CRECUOTA,'
         +'       MONAPOENV, MONTOTENV, COBANO, COBMES, NVL(CRECUOTA,0) CRECUOTA, NVL(CREMTOCUO,0) CREMTOCUO, '
         +'       FECOTOCRE, FECAUTDES '
         // Fin  SPP_201408_COB: Se añaden campos al Qry. Que muestra la información para el envio a la cobranza.
         // Fin: SP_201406_COB
         +'  FROM COB319 '
         +' WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
         +'   AND COBANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
         +'   AND COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString)
         +    xtipaso
         +    xtiparc
         +' ORDER BY USEID, ASOAPENOM ';
  //HPP_200905_COB, DFERNANDEZ
// fin HPP_201105_COB
  DM1.cdsQry6.Close;
  DM1.cdsQry6.DataRequest(xSql);
  DM1.cdsQry6.Open;
  DM1.cdsQry6.First;
  xtotapoenv := 0; xtotcuoenv := 0; xtotapoenv := 0; xtotcuoenv := 0;
  xmonapodo  := 0; xmonapoco  := 0;
  xmoncuodo  := 0; xmoncuoco  := 0; xmoncuoce  := 0;
  xmontotdo  := 0; xmontotco  := 0;
  xmontotce  := 0; xmontotapo := 0; xmontotcuo := 0; xtottot    := 0;
  While Not DM1.cdsQry6.Eof Do
  Begin
    // Totales para el Grid
    xtotapoenv := xtotapoenv + DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
    xtotcuoenv := xtotcuoenv + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
    // Totales para el resumen
    // Si se selecciono docente
    If rgtipaso.ItemIndex = 0 Then      // todos son docentes
    Begin
      If rgtiparc.ItemIndex = 0 Then //  xmoncuodo  := xmoncuodo + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
        begin
           if(DM1.cdsQry6.FieldByName('ASOTIPID').AsString = 'CO') then
             begin
                xmoncuoco  := xmoncuoco + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
             end
           else         //do/co
             begin
                xmoncuodo  := xmoncuodo + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
             end;
        end;

      If rgtiparc.ItemIndex = 1 Then  //xmonapodo  := xmonapodo + DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
        begin
           if(DM1.cdsQry6.FieldByName('ASOTIPID').AsString = 'CO') then
             begin
                xmonapoco  := xmonapoco + DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
             end
           else          //do/co
             begin
                xmonapodo  := xmonapodo + DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
             end;
        end;


      If rgtiparc.ItemIndex = 2 Then
      Begin
        // xmoncuodo  := xmoncuodo + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
           if(DM1.cdsQry6.FieldByName('ASOTIPID').AsString = 'CO') then
             begin
                xmoncuoco  := xmoncuoco + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
             end
           else
             begin
                xmoncuodo  := xmoncuodo + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
             end;
        xmonapodo  := xmonapodo + DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
      End;
    End;
    // Si se selecciono cesante
    If rgtipaso.ItemIndex = 1 Then xmoncuoce  := xmoncuoce + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
    // Si se selecciono docente y cesante
    If rgtipaso.ItemIndex = 2 Then
    Begin
      If (DM1.cdsQry6.FieldByName('ASOTIPID').AsString = 'DO')
          or (DM1.cdsQry6.FieldByName('ASOTIPID').AsString = 'CO') Then
      Begin
        If rgtiparc.ItemIndex = 0 Then xmoncuodo  := xmoncuodo + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
        If rgtiparc.ItemIndex = 1 Then xmonapodo  := xmonapodo + DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
        If rgtiparc.ItemIndex = 2 Then
        Begin
          xmoncuodo  := xmoncuodo + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
          xmonapodo  := xmonapodo + DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
        End;
      End;
                                (**)
      If DM1.cdsQry6.FieldByName('ASOTIPID').AsString = 'CO' Then
      Begin
        If rgtiparc.ItemIndex = 0 Then xmoncuoco  := xmoncuoco + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
        If rgtiparc.ItemIndex = 1 Then xmonapoco  := xmonapoco + DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
        If rgtiparc.ItemIndex = 2 Then
        Begin
          xmoncuoco  := xmoncuoco + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
          xmonapoco  := xmonapoco + DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
        End;
      End;
                                (**)
      If DM1.cdsQry6.FieldByName('ASOTIPID').AsString = 'CE' Then
        xmoncuoce  := xmoncuoce + DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
    End;
    DM1.cdsQry6.Next;
  End;
  lblmoncuodo.Caption := FloatToStrF(xmoncuodo,ffNumber,10,2);
  lblmoncuoco.Caption := FloatToStrF(xmoncuoco,ffNumber,10,2);
  lblmonapodo.Caption := FloatToStrF(xmonapodo,ffNumber,10,2);
  lblmoncuoce.Caption := FloatToStrF(xmoncuoce,ffNumber,10,2);
  lblmoncuoto.Caption := FloatToStrF(xmoncuodo+xmoncuoco+xmoncuoce,ffNumber,10,2);
  lblmonapoto.Caption := FloatToStrF(xmonapodo,ffNumber,10,2);
  lblmontotdo.Caption := FloatToStrF(xmoncuodo+xmonapodo,ffNumber,10,2);
  lblmontotce.Caption := FloatToStrF(xmoncuoce,ffNumber,10,2);
  lbltottot.Caption   := FloatToStrF(xmoncuodo+xmoncuoco+xmonapodo+xmonapoco+xmoncuoce,ffNumber,10,2);
  // Actualizando detalle
  dbgprevio.Selected.Clear;
  dbgprevio.Selected.Add('ASOCODMOD'#9'11'#9'Código~modular'#9#9);
  dbgprevio.Selected.Add('ASOTIPID'#9'3'#9'Tipo de~asociado'#9#9);
  dbgprevio.Selected.Add('UPROID'#9'3'#9'Unidad de~proceso'#9#9);
  dbgprevio.Selected.Add('UPAGOID'#9'3'#9'Unidad~de pago'#9#9);
  dbgprevio.Selected.Add('USEID'#9'3'#9'Unidad de~gestión'#9#9);
  dbgprevio.Selected.Add('ASOCODPAGO'#9'9'#9'Código~de pago'#9#9);
  dbgprevio.Selected.Add('CARGO'#9'6'#9'Cargo'#9#9);
  dbgprevio.Selected.Add('ASODNI'#9'9'#9'Documento~de identidad'#9#9);
  dbgprevio.Selected.Add('ASONCTA'#9'11'#9'Cuenta~de ahorros'#9#9);
  dbgprevio.Selected.Add('ASOAPEPAT'#9'21'#9'Apellido~paterno'#9#9);
  dbgprevio.Selected.Add('ASOAPEMAT'#9'21'#9'Apellido~materno'#9#9);
  dbgprevio.Selected.Add('ASONOMBRES'#9'21'#9'Nombre(s)'#9#9);
  If rgtiparc.ItemIndex = 0 Then dbgprevio.Selected.Add('MONCUOENV'#9'10'#9'Monto de la~cuota'#9#9)
  Else If rgtiparc.ItemIndex = 1 Then dbgprevio.Selected.Add('MONAPOENV'#9'10'#9'Monto del~aporte'#9#9)
  Else
  Begin
    dbgprevio.Selected.Add('MONCUOENV'#9'10'#9'Monto de la~cuota'#9#9);
    dbgprevio.Selected.Add('MONAPOENV'#9'10'#9'Monto del~aporte'#9#9);
  End;
  dbgprevio.ApplySelected;
  TNumericField(DM1.cdsQry6.FieldByName('MONCUOENV')).DisplayFormat := '###,###,##0.00';
  TNumericField(DM1.cdsQry6.FieldByName('MONAPOENV')).DisplayFormat := '###,###,##0.00';
  dbgprevio.ColumnByName('MONCUOENV').FooterValue := FloatToStrF(xtotcuoenv, ffNumber, 15, 2);
  dbgprevio.ColumnByName('MONAPOENV').FooterValue := FloatToStrF(xtotapoenv, ffNumber, 15, 2);
  screen.Cursor := crDefault;
End;

procedure Tfgeninfenv.btnprevioClick(Sender: TObject);
begin
  actcararc;
  actdet;
end;

Procedure Tfgeninfenv.btncerrarClick(Sender: TObject);
Begin
  fgeninfenv.Close;
End;

Procedure Tfgeninfenv.btngeneraClick(Sender: TObject);
Var xtiparc, xtipaso, xsql, xselect:String;
    xPos1, xPos, I:Integer;
    xNomArch:String;
Begin
  DM1.xtipaso := IntToStr(rgtipaso.ItemIndex);
  DM1.xtiparc := IntToStr(rgtiparc.ItemIndex);
  Try
    FPlantEnv := TFPlantEnv.create(Self);
    FPlantEnv.ShowModal;
  Finally
    FPlantEnv.Free;
  End;
  actcararc;
  actdet;
end;

procedure Tfgeninfenv.btncerproClick(Sender: TObject);
Var xSql:String;
begin
  // Cerrar proceso de envio
  If MessageDlg('¿ Seguro de cerrar el envio ?',mtconfirmation, [mbYes,MbNo],0)=mrYes then
  xSql := 'UPDATE CRE204 SET ESTADO = ''1'' WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
  +' AND PERIODO = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  MessageDlg('El proceso de generación de planilla ha concluido', mtInformation, [mbOk], 0);
end;

procedure Tfgeninfenv.BitBtn8Click(Sender: TObject);
begin
 If Trim(EdtSenores.Text) = '' Then
 Begin
   MessageDlg('Ingrese dato del destinatario', mtError, [mbOk], 0);
   EdtSenores.SetFocus;
   Exit;
 End;

 pplblFecha.Caption   := 'Lima, '+Copy(DateToStr(date),1,2)+' de '+DM1.DesMes(StrToInt(Copy(DateToStr(date),4,2)),'X')+' del '+Copy(DateToStr(date),7,4);
 ppLabel22.Caption    := 'Lima, '+Copy(DateToStr(date),1,2)+' de '+DM1.DesMes(StrToInt(Copy(DateToStr(date),4,2)),'X')+' del '+Copy(DateToStr(date),7,4);

 ppLabel58.Caption    := 'OFICIO Nº '+Copy(DM1.cdsGrupos.FieldByName('NOFID').AsString,7,4)+'-'+Copy(DM1.cdsGrupos.FieldByName('NOFID').AsString,1,4)+'-DM-COB';
 ppLabel18.Caption    := 'OFICIO Nº '+Copy(DM1.cdsGrupos.FieldByName('NOFID').AsString,7,4)+'-'+Copy(DM1.cdsGrupos.FieldByName('NOFID').AsString,1,4)+'-DM-COB';

 pplblSenores.Caption := EdtSenores.Text;
 ppMPie.Text          := memoPie.Text;

 ppLabel21.Caption    := EdtSenores.Text;
 ppMemo1.Text         := memoPie.Text;

 pplblmoncuodo.Caption := lblmoncuodo.Caption;
 pplblmonapodo.Caption := lblmonapodo.Caption;
 pplblmontotdo.Caption := lblmontotdo.Caption;
 pplmoncuoce.Caption   := lblmontotce.Caption;

 If (rgtipaso.ItemIndex = 0) Or (rgtipaso.ItemIndex = 2) Then
 Begin
   pproficiodo.Print;
   pproficiodo.Stop;
 End;

 If (rgtipaso.ItemIndex = 1) Then
 Begin
   pproficioce.Print;
   pproficioce.Stop;
 End;

End;

procedure Tfgeninfenv.btnimpoficioClick(Sender: TObject);
begin
  // Imprimir oficio
  pnlRepOfico.Visible := True;

end;

procedure Tfgeninfenv.Button4Click(Sender: TObject);
begin
  pnlRepOfico.Visible := False;
end;

procedure Tfgeninfenv.btndetalleClick(Sender: TObject);
begin
  ppLabel45.Caption := 'PERIODO : '+medesanomespro.Text;
  If rgtiparc.ItemIndex = 0 Then
  Begin
   ppDBText7.DataField := 'MONCUOENV';
   ppDBCalc2.DataField := 'MONCUOENV';
   ppDBCalc4.DataField := 'MONCUOENV';
   ppDBCalc1.DataField := 'MONCUOENV';
   ppDBCalc3.DataField := 'MONCUOENV';
  End;
  If rgtiparc.ItemIndex = 1 Then
  Begin
   ppDBText7.DataField := 'MONAPOENV';
   ppDBCalc2.DataField := 'MONAPOENV';
   ppDBCalc4.DataField := 'MONAPOENV';
   ppDBCalc1.DataField := 'MONAPOENV';
   ppDBCalc3.DataField := 'MONAPOENV';
  End;
  If rgtiparc.ItemIndex = 2 Then
  Begin
   ppDBText7.DataField := 'MONTOTENV';
   ppDBCalc2.DataField := 'MONTOTENV';
   ppDBCalc4.DataField := 'MONTOTENV';
   ppDBCalc1.DataField := 'MONTOTENV';
   ppDBCalc3.DataField := 'MONTOTENV';
  End;
  pprdetalle.Print;
end;

procedure Tfgeninfenv.btnexcelClick(Sender: TObject);
begin
 // genera Excel
 DM1.HojaExcel('DETALLE_ENVIO_PLANILLA',DM1.dsQry6, dtgData);
end;




procedure Tfgeninfenv.btndbfClick(Sender: TObject);
begin
  // Generación de planillas
  Try
    fgenarcenv := Tfgenarcenv.create(Self);
    fgenarcenv.ShowModal;
  Finally
    fgenarcenv.Free;
  End;
end;

end.



