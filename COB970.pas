unit COB970;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, ppBands,
  ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, ppPrnabl, ppCtrls,
  ppVar;

type
  TfDistGasto = class(TForm)
    dtgFecPro: TwwDBGrid;
    Edt01: TGroupBox;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    EdtUno: TEdit;
    EdtDos: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbl0101: TLabel;
    lbl0102: TLabel;
    lbl0103: TLabel;
    lbl0201: TLabel;
    lbl0202: TLabel;
    lbl0203: TLabel;
    lbl0401: TLabel;
    lbl0402: TLabel;
    lbl0403: TLabel;
    Shape1: TShape;
    Label7: TLabel;
    RepFlat: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    lblTit: TppLabel;
    ppLabel599: TppLabel;
    ppLabel600: TppLabel;
    ppLabel601: TppLabel;
    ppLabel602: TppLabel;
    ppLabel603: TppLabel;
    ppSystemVariable56: TppSystemVariable;
    ppSystemVariable57: TppSystemVariable;
    ppSystemVariable58: TppSystemVariable;
    ppLabel604: TppLabel;
    ppLabel605: TppLabel;
    ppLabel606: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel9: TppLabel;
    lblr0101: TppLabel;
    lblr0102: TppLabel;
    lblr0103: TppLabel;
    lblr0201: TppLabel;
    lblr0202: TppLabel;
    lblr0203: TppLabel;
    lblr0301: TppLabel;
    lblr0302: TppLabel;
    lblr0303: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    EdtTres: TEdit;
    lbl0301: TLabel;
    lbl0302: TLabel;
    lbl0303: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppLabel19: TppLabel;
    lblr0401: TppLabel;
    lblr0402: TppLabel;
    lblr0403: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure dtgFecProDblClick(Sender: TObject);
    procedure dtgFecProRowChanged(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
  private
    { Private declarations }
    procedure MstPeriodo;
  public
    { Public declarations }
  end;

var
  fDistGasto: TfDistGasto;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDistGasto.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfDistGasto.dtgFecProDblClick(Sender: TObject);
begin
   MstPeriodo;
end;

procedure TfDistGasto.MstPeriodo;
var xSQL:String;
begin
lbl0101.Caption:='0.00'; lbl0102.Caption:='0.00'; lbl0103.Caption:='0.00';
lbl0201.Caption:='0.00'; lbl0202.Caption:='0.00'; lbl0203.Caption:='0.00';
lbl0301.Caption:='0.00'; lbl0302.Caption:='0.00'; lbl0303.Caption:='0.00';
xSQL:='SELECT ASOTIPID,MONFLAT,MONGAS,MONFON FROM COB_DIS_FLAT WHERE TO_DATE(FECPRO)='+QuotedStr(DM1.cdsModelo.FieldByName('FECPRO').AsString);
DM1.cdsQry3.Close;
DM1.cdsQry3.DataRequest(xSQL);
DM1.cdsQry3.Open;
If DM1.cdsQry3.RecordCount > 0 Then
   Begin
     DM1.cdsQry3.First;
     While Not DM1.cdsQry3.Eof Do
     Begin
     If DM1.cdsQry3.FieldByName('ASOTIPID').AsString='DO' Then
        Begin
          lbl0101.Caption:=DM1.FormatoNumeros(DM1.cdsQry3.FieldByName('MONGAS').AsString); lbl0102.Caption:=DM1.FormatoNumeros(DM1.cdsQry3.FieldByName('MONFON').AsString);  lbl0103.Caption:=DM1.FormatoNumeros(DM1.cdsQry3.FieldByName('MONFLAT').AsString);
        End;
     If DM1.cdsQry3.FieldByName('ASOTIPID').AsString='CE' Then
        Begin
          lbl0201.Caption:=DM1.FormatoNumeros(DM1.cdsQry3.FieldByName('MONGAS').AsString); lbl0202.Caption:=DM1.FormatoNumeros(DM1.cdsQry3.FieldByName('MONFON').AsString);  lbl0203.Caption:=DM1.FormatoNumeros(DM1.cdsQry3.FieldByName('MONFLAT').AsString);
        End;
     If DM1.cdsQry3.FieldByName('ASOTIPID').AsString='CO' Then
        Begin
          lbl0301.Caption:=DM1.FormatoNumeros(DM1.cdsQry3.FieldByName('MONGAS').AsString); lbl0302.Caption:=DM1.FormatoNumeros(DM1.cdsQry3.FieldByName('MONFON').AsString);  lbl0303.Caption:=DM1.FormatoNumeros(DM1.cdsQry3.FieldByName('MONFLAT').AsString);
        End;

        DM1.cdsQry3.Next;
     End;
     lbl0401.Caption:= DM1.FormatoNumeros(FloatToStr(DM1.Valores(lbl0101.Caption)+DM1.Valores(lbl0201.Caption)+DM1.Valores(lbl0301.Caption)));
     lbl0402.Caption:= DM1.FormatoNumeros(FloatToStr(DM1.Valores(lbl0102.Caption)+DM1.Valores(lbl0202.Caption)+DM1.Valores(lbl0302.Caption)));
     lbl0403.Caption:= DM1.FormatoNumeros(FloatToStr(DM1.Valores(lbl0103.Caption)+DM1.Valores(lbl0203.Caption)+DM1.Valores(lbl0303.Caption)));
   End;
   DM1.cdsQry3.Close;
end;

procedure TfDistGasto.dtgFecProRowChanged(Sender: TObject);
begin
MstPeriodo;
end;

procedure TfDistGasto.BitPrintClick(Sender: TObject);
begin
     If DM1.Valores(lbl0403.Caption) > 0 Then
        Begin
           lblTit.Caption:='DISTRIBUCION DEL FLAT AL : '+DM1.cdsModelo.FieldByName('FECPRO').AsString;
           lblr0101.Caption:=lbl0101.Caption; lblr0102.Caption:=lbl0102.Caption; lblr0103.Caption:=lbl0103.Caption;
           lblr0201.Caption:=lbl0201.Caption; lblr0202.Caption:=lbl0202.Caption; lblr0203.Caption:=lbl0203.Caption;
           lblr0301.Caption:=lbl0301.Caption; lblr0302.Caption:=lbl0302.Caption; lblr0303.Caption:=lbl0303.Caption;
           lblr0401.Caption:=lbl0401.Caption; lblr0402.Caption:=lbl0402.Caption; lblr0403.Caption:=lbl0403.Caption;
           RepFlat.Print;
           RepFlat.Cancel;
        End;
end;

end.
