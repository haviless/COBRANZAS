unit COB995;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, db,
  ExtCtrls, ppBands, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCtrls, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, DBClient, ppDB, ppDBPipe, ppDBBDE,
  DBGrids, ppVar;

type
  TFdetenvcon = class(TForm)
    btncerrar: TBitBtn;
    pcinfenv: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dbginfenv: TwwDBGrid;
    btndetalle: TBitBtn;
    btnaExcel: TBitBtn;
    dbgResumen: TwwDBGrid;
    Panel1: TPanel;
    rgtipcob: TRadioGroup;
    rgestcob: TRadioGroup;
    StaticText1: TStaticText;
    btnfiltrar: TBitBtn;
    ppbdereporte: TppBDEPipeline;
    pprreporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    dbgdata: TDBGrid;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    pplimpresopor: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppltitulo01: TppLabel;
    ppltitulo02: TppLabel;
    ppDBText10: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel20: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc12: TppDBCalc;
// inicio HPP_201105_COB
    ppShape10: TppShape;
    ppLabel21: TppLabel;
    ppDBText11: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
// fin HPP_201105_COB
//
    procedure btncerrarClick(Sender: TObject);
    procedure btnimprimeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pcinfenvChange(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure btndetalleClick(Sender: TObject);
    procedure btnaExcelClick(Sender: TObject);
  private
    procedure cardetenv;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdetenvcon: TFdetenvcon;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFdetenvcon.btncerrarClick(Sender: TObject);
begin
  Fdetenvcon.Close;
end;

procedure TFdetenvcon.btnimprimeClick(Sender: TObject);
begin
  Fdetenvcon.Close;
end;

procedure TFdetenvcon.cardetenv;
Var xSql:String;
  xmoncuoenv, xmonapoenv, xmontotenv: double;
  xmonapoapl, xmoncuoapl, xsaldo:Double;
  v_filtro:String;
  xmoncuoenvfsc:Double; // HPP_201105_COB
begin
  v_filtro := '';
  If rgtipcob.ItemIndex = 0 Then
  Begin
    If rgestcob.ItemIndex = 0 Then      v_filtro := ''
// inicio HPP_201105_COB
// SE AGREGO EL FSC AL FILTRADO DE DATOS
    Else If rgestcob.ItemIndex = 1 Then
           v_filtro := ' AND (NVL(MONCUOENV,0) + NVL(MONCUOENVFSC,0) + NVL(MONAPOENV,0)> 0) '
                     + ' AND (NVL(MONCUOAPL,0) + NVL(MONAPOAPL,0) > 0)'
    Else If rgestcob.ItemIndex = 2 Then
           v_filtro := ' AND (NVL(MONCUOENV,0) + NVL(MONCUOENVFSC,0) + NVL(MONAPOENV,0)> 0) '
                      +' AND (NVL(MONCUOAPL,0) + NVL(MONAPOAPL,0) = 0)';
// fin HPP_201105_COB
  End;

  If rgtipcob.ItemIndex = 1 Then
  Begin
    If rgestcob.ItemIndex = 0 Then      v_filtro := ' AND NVL(MONCUOENV,0) > 0'
    Else If rgestcob.ItemIndex = 1 Then v_filtro := ' AND NVL(MONCUOENV,0) > 0 AND NVL(MONCUOAPL,0) > 0'
    Else If rgestcob.ItemIndex = 2 Then v_filtro := ' AND NVL(MONCUOENV,0) > 0 AND NVL(MONCUOAPL,0) = 0';
  End;
  If rgtipcob.ItemIndex = 2 Then
  Begin
    If rgestcob.ItemIndex = 0 Then      v_filtro := ' AND NVL(MONAPOENV,0) > 0'
    Else If rgestcob.ItemIndex = 1 Then v_filtro := ' AND NVL(MONAPOENV,0) > 0 AND NVL(MONAPOAPL,0) > 0'
    Else If rgestcob.ItemIndex = 2 Then v_filtro := ' AND NVL(MONAPOENV,0) > 0 AND NVL(MONAPOAPL,0) = 0';
  End;

// inicio HPP_201105_COB
// SE AGREGA EL CAMPO FSC AL QUERY, PARA QUE SE MUESTE EN LA GRILLA
  If rgtipcob.ItemIndex = 3 Then
  Begin
    If rgestcob.ItemIndex = 0 Then      v_filtro := ' AND NVL(MONCUOENVFSC,0) > 0'
    Else If rgestcob.ItemIndex = 1 Then v_filtro := ' AND NVL(MONCUOENVFSC,0) > 0 /* AND NVL(MONCUOAPLFSC,0) > 0 */'
    Else If rgestcob.ItemIndex = 2 Then v_filtro := ' AND NVL(MONCUOENVFSC,0) > 0 /* AND NVL(MONCUOAPLFSC,0) = 0 */';
  End;

  xSql := 'SELECT A.USEID, A.ASOCODMOD, A.ASOAPENOM, '
         +'       NVL(A.MONCUOENV,0) MONCUOENV, NVL(A.MONCUOENVFSC,0) MONCUOENVFSC, A.MONAPOENV,'
         +'       A.MONTOTENV, A.MONCUOAPL, A.MONAPOAPL, (MONTOTENV-(MONCUOAPL + MONAPOAPL)) SALDO,'
         +'       CASE WHEN A.IDTIPCOB= ''03'' THEN ''B,C,D'' END CALCART, B.USENOM'
         +'  FROM COB319 A, APO101 B '
         +' WHERE A.FORPAGOID = ''01'''
         +'   AND A.IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
         +'   AND COBANO||COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
         +    v_filtro
         +'   AND A.UPROID=B.UPROID(+) '
         +'   AND A.UPAGOID=B.UPAGOID(+) '
         +'   AND A.USEID=B.USEID(+) '
         +' ORDER BY A.USEID, A.ASOAPENOM';
// fin HPP_201105_COB
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  DM1.cdsQry5.First;
  xmoncuoenv := 0; xmonapoenv := 0; xmontotenv := 0;
  xmonapoapl := 0; xmoncuoapl := 0; xsaldo     := 0;
// inicio HPP_201105_COB
  xmoncuoenvfsc := 0;
// fin HPP_201105_COB
  While Not DM1.cdsQry5.Eof Do
  Begin
    xmoncuoenv := xmoncuoenv + DM1.cdsQry5.FieldByName('MONCUOENV').AsFloat;
    xmonapoenv := xmonapoenv + DM1.cdsQry5.FieldByName('MONAPOENV').AsFloat;
    xmontotenv := xmontotenv + DM1.cdsQry5.FieldByName('MONTOTENV').AsFloat;
    xmonapoapl := xmonapoapl + DM1.cdsQry5.FieldByName('MONAPOAPL').AsFloat;
    xmoncuoapl := xmoncuoapl + DM1.cdsQry5.FieldByName('MONCUOAPL').AsFloat;
    xsaldo     := xsaldo     + DM1.cdsQry5.FieldByName('SALDO').AsFloat;
// inicio HPP_201105_COB
    xmoncuoenvfsc := xmoncuoenvfsc + DM1.cdsQry5.FieldByName('MONCUOENVFSC').AsFloat;
// fin HPP_201105_COB
    DM1.cdsQry5.Next;
  End;
  dbginfenv.Selected.Clear;
  dbginfenv.Selected.Add('USEID'#9'3'#9'Código~UGEL'#9#9);
  dbginfenv.Selected.Add('USENOM'#9'17'#9'Descripción~de UGEL'#9#9);
  dbginfenv.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbginfenv.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y nombre(s)'#9#9);
  dbginfenv.Selected.Add('MONCUOENV'#9'12'#9'Cuota~enviada'#9#9);
// inicio HPP_201105_COB
  dbginfenv.Selected.Add('MONCUOENVFSC'#9'12'#9'Enviado FSC'#9#9);
  dbginfenv.Selected.Add('MONAPOENV'#9'12'#9'Aporte~enviado'#9#9);
  dbginfenv.Selected.Add('MONTOTENV'#9'12'#9'Total~enviado'#9#9);
  dbginfenv.Selected.Add('MONCUOAPL'#9'12'#9'Cuota~cobrada'#9#9);
  dbginfenv.Selected.Add('MONAPOAPL'#9'12'#9'Aporte~cobrado'#9#9);
  dbginfenv.Selected.Add('SALDO'#9'12'#9'Saldo'#9#9);
  dbginfenv.Selected.Add('CALCART'#9'12'#9'Cal.~car.'#9#9);
  dbginfenv.ApplySelected;
  TNumericField(DM1.cdsQry5.FieldByName('MONAPOENV')).DisplayFormat := '#,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('MONCUOENV')).DisplayFormat := '#,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('MONCUOENVFSC')).DisplayFormat := '#,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('MONTOTENV')).DisplayFormat := '#,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('MONCUOAPL')).DisplayFormat := '#,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('MONAPOAPL')).DisplayFormat := '#,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('SALDO')).DisplayFormat := '#,###,##0.00';
  dbginfenv.ColumnByName('MONCUOENV').FooterValue := FloatToStrF(xmoncuoenv, ffNumber, 12, 2);
  dbginfenv.ColumnByName('MONCUOENVFSC').FooterValue := FloatToStrF(xmoncuoenvfsc, ffNumber, 12, 2);
  dbginfenv.ColumnByName('MONAPOENV').FooterValue := FloatToStrF(xmonapoenv, ffNumber, 12, 2);
  dbginfenv.ColumnByName('MONTOTENV').FooterValue := FloatToStrF(xmontotenv, ffNumber, 12, 2);
  dbginfenv.ColumnByName('MONAPOAPL').FooterValue := FloatToStrF(xmonapoapl, ffNumber, 12, 2);
  dbginfenv.ColumnByName('MONCUOAPL').FooterValue := FloatToStrF(xmoncuoapl, ffNumber, 12, 2);
  dbginfenv.ColumnByName('SALDO').FooterValue     := FloatToStrF(xsaldo, ffNumber, 12, 2);
// fin HPP_201105_COB
End;



procedure TFdetenvcon.FormActivate(Sender: TObject);
begin
  rgtipcob.ItemIndex := 0;
  rgestcob.ItemIndex := 0;
  cardetenv;
  pcinfenv.TabIndex := 0;
end;

Procedure TFdetenvcon.pcinfenvChange(Sender: TObject);
Var xSql:String;
  xmontot:Double;
Begin
  If pcinfenv.TabIndex = 1 Then
  Begin
    xmontot := 0;
// inicio HPP_201105_COB
//AGREGAR FSC AL RESUMEN QUE SE MUESTRA EN EL TABSHEET DE RESUMEN DE ENVIO
    xSql := 'SELECT ''ENVIO A DESCUENTO APORTES DEL PERIODO'' DESCRIPCION, SUM(NVL(MONAPOENV,0)) TOTAL '
    +'         FROM COB319'
    +'        WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
    +'          AND COBANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
    +'          AND COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString)
    +'          AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)
    +'       UNION ALL '
    +'       SELECT ''ENVIO A DESCUENTO CATALOGADO NORMAL'' DESCRIPCION, SUM(NVL(MONCUOENV,0)) TOTAL '
    +'         FROM COB319'
    +'        WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
    +'          AND COBANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
    +'          AND COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString)
    +'          AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)
    +'          AND NVL(IDTIPCOB,''01'') =  ''03'''
    +'       UNION ALL '
    +'       SELECT ''ENVIO A DESCUENTO CATALOGADO PERDIDA'' DESCRIPCION, SUM(NVL(MONCUOENV,0)) TOTAL '
    +'         FROM COB319 '
    +'        WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
    +'          AND COBANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
    +'          AND COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString)
    +'          AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)
    +'          AND NVL(IDTIPCOB,''01'') <>  ''03'''
    +'       UNION ALL '
    +'       SELECT ''ENVIO A DESCUENTO FONDO SOLIDARIO DE CONTINGENCIA (FSC)'' DESCRIPCION, SUM(NVL(MONCUOENVFSC,0)) TOTAL '
    +'         FROM COB319 '
    +'        WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
    +'          AND COBANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
    +'          AND COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString)
    +'          AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString);
// fin HPP_201105_COB

    DM1.cdsDLabo.Close;
    DM1.cdsDLabo.DataRequest(xSql);
    DM1.cdsDLabo.Open;
    DM1.cdsDLabo.First;
    While Not DM1.cdsDLabo.Eof Do
    Begin
      xmontot := xmontot + DM1.cdsDLabo.FieldByName('TOTAL').AsFloat;
      DM1.cdsDLabo.Next;
    End;
    DM1.cdsDLabo.First;
    dbgResumen.Selected.Clear;
// inicio HPP_201105_COB
// SE DIO UN ANCHO MAYOR A LA COLUMNA PARA QUE SE PUEDA VISUALIZAR EL NUEVO MENSAJE DE FSC
    dbgResumen.Selected.Add('DESCRIPCION'#9'52'#9'Descripción'#9#9);
// fin HPP_201105_COB
    dbgResumen.Selected.Add('TOTAL'#9'12'#9'Total'#9#9);
    dbgResumen.ApplySelected;
    TNumericField(DM1.cdsDLabo.FieldByName('TOTAL')).DisplayFormat:='##,###,###.#0';
    dbgResumen.ColumnByName('TOTAL').FooterValue  := FloatToStrF(xmontot, ffNumber, 13, 2);
  End;

End;

procedure TFdetenvcon.btnfiltrarClick(Sender: TObject);
begin
  cardetenv;
end;

procedure TFdetenvcon.btndetalleClick(Sender: TObject);
begin
  pplImpresopor.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  ppltitulo01.Caption := 'INFORMACION ENVIADA A COBRANZA CONVENIO :'+DM1.cdsGrupos.FieldByName('DESCON').AsString;
  ppltitulo02.Caption :=  'TIPO ASOCIADO : '+DM1.cdsGrupos.FieldByName('ASOTIPID').AsString+' || PERIODO : '+DM1.cdsGrupos.FieldByName('DESPER').AsString;
  pprreporte.Print;
end;

procedure TFdetenvcon.btnaExcelClick(Sender: TObject);
Begin
  DM1.HojaExcel('DETALLES_DE_COBRANZA',DM1.dsqry5, dbgdata);
end;

end.
