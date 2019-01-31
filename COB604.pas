unit COB604;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, db, DBGrids,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ppBands, ppCache, ppPrnabl, ppCtrls, ppVar;

type
  TFdetenvxugel = class(TForm)
    dbgdetenv: TwwDBGrid;
    BitBtn1: TBitBtn;
    btnaexcel: TBitBtn;
    dtgData: TDBGrid;
    ppBDEPipeline1: TppBDEPipeline;
    ppreporte: TppReport;
    btnimprimir: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel15: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    pplimpresopor: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppltitulo01: TppLabel;
    ppltitulo03: TppLabel;
    ppltitulo02: TppLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdetenvxugel: TFdetenvxugel;

implementation

uses COBDM1;

{$R *.dfm}



procedure TFdetenvxugel.BitBtn1Click(Sender: TObject);
begin
  Fdetenvxugel.Close;
end;

procedure TFdetenvxugel.FormActivate(Sender: TObject);
Var xmoncuoenv, xmoncuoapl, xmoncuonoapl, xpagefe, xpagbco, xpagotr:Double;
begin
  xmoncuoenv   := 0; xmoncuoapl   := 0; xmoncuonoapl := 0;
  xpagefe      := 0; xpagbco      := 0; xpagotr      := 0;
  DM1.cdsAsociados1.First;
  While Not DM1.cdsAsociados1.Eof DO
  Begin
    xmoncuoenv   := xmoncuoenv   + DM1.cdsAsociados1.FieldByName('MONCUOENV').AsFloat;
    xmoncuoapl   := xmoncuoapl   + DM1.cdsAsociados1.FieldByName('MONCUOAPL').AsFloat;
    xmoncuonoapl := xmoncuonoapl + DM1.cdsAsociados1.FieldByName('MONCUONOAPL').AsFloat;
    xpagefe      := xpagefe      + DM1.cdsAsociados1.FieldByName('MONRECEFE').AsFloat;
    xpagbco      := xpagbco      + DM1.cdsAsociados1.FieldByName('MONRECBCO').AsFloat;
    xpagotr      := xpagotr      + DM1.cdsAsociados1.FieldByName('MONRECOTR').AsFloat;
    DM1.cdsAsociados1.Next;
  End;
  dbgdetenv.Selected.Clear;
  dbgdetenv.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbgdetenv.Selected.Add('CARGO'#9'10'#9'Código~cargo'#9#9);
  dbgdetenv.Selected.Add('ASOCODPAGO'#9'8'#9'Código~de pago'#9#9);
  dbgdetenv.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y~Nombre(s)'#9#9);
  dbgdetenv.Selected.Add('MONCUOENV'#9'10'#9'Monto~enviado'#9#9);
  dbgdetenv.Selected.Add('MONCUOAPL'#9'10'#9'Monto~cobrado'#9#9);
  dbgdetenv.Selected.Add('MONCUONOAPL'#9'10'#9'Monto no~cobrado'#9#9);
  dbgdetenv.Selected.Add('MONRECEFE'#9'10'#9'Pagos en~efectivo'#9#9);
  dbgdetenv.Selected.Add('MONRECBCO'#9'10'#9'Pagos en~banco'#9#9);
  dbgdetenv.Selected.Add('MONRECOTR'#9'10'#9'Otros~pagos'#9#9);
  dbgdetenv.ApplySelected;
  TNumericField(DM1.cdsAsociados1.FieldByName('MONCUOENV')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsAsociados1.FieldByName('MONCUOAPL')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsAsociados1.FieldByName('MONCUONOAPL')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsAsociados1.FieldByName('MONRECEFE')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsAsociados1.FieldByName('MONRECBCO')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsAsociados1.FieldByName('MONRECOTR')).DisplayFormat := '##,###,##0.00';

  dbgdetenv.ColumnByName('ASOAPENOM').FooterValue := 'TOTALES :';
  dbgdetenv.ColumnByName('MONCUOENV').FooterValue := FloatToStrF(xmoncuoenv, ffNumber, 15,2);
  dbgdetenv.ColumnByName('MONCUOAPL').FooterValue := FloatToStrF(xmoncuoapl, ffNumber, 15,2);
  dbgdetenv.ColumnByName('MONCUONOAPL').FooterValue := FloatToStrF(xmoncuonoapl, ffNumber, 15,2);
  dbgdetenv.ColumnByName('MONRECEFE').FooterValue := FloatToStrF(xpagefe, ffNumber, 15,2);
  dbgdetenv.ColumnByName('MONRECBCO').FooterValue := FloatToStrF(xpagbco, ffNumber, 15,2);
  dbgdetenv.ColumnByName('MONRECOTR').FooterValue := FloatToStrF(xpagotr, ffNumber, 15,2);

end;

procedure TFdetenvxugel.btnaexcelClick(Sender: TObject);
begin
  dtgData.DataSource := DM1.dsAsociados1;
  DM1.HojaExcel('Resumen',DM1.dsAsociados1, dtgData);
end;

procedure TFdetenvxugel.btnimprimirClick(Sender: TObject);
begin
  If DM1.cdsAsociados1.RecordCount = 0 Then
  Begin
    Beep;
    Showmessage('No Existen Datos a Imprimir');
    Exit;
  End;
  ppltitulo01.Caption   := 'COBRANZAS DETALLADO POR UGEL : '+DM1.cdsReporte1.FieldByName('USENOM').AsString;
  ppltitulo02.Caption   := 'TIPO DE ASOCIADO : '+DM1.xtipaso;
  ppltitulo03.Caption   := 'PERIODO : '+DM1.cdsReporte1.FieldByName('COBANO').AsString+'/'+DM1.cdsReporte1.FieldByName('COBMES').AsString;
  pplimpresopor.Caption := 'Impreso por : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  ppreporte.Print;
end;

end.
