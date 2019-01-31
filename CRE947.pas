unit CRE947;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, ExtCtrls, Db;

type
  TfCtrolDesCaj = class(TForm)
    dbgMovCajaCab: TwwDBGrid;
    dbgMovCajaDet: TwwDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    DtpFecIni: TDateTimePicker;
    BitMostar: TBitBtn;
    BitSalir: TBitBtn;
    lblCajaDev: TLabel;
    procedure BitMostarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure dbgMovCajaCabDblClick(Sender: TObject);
    procedure dbgMovCajaCabRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure MstDetalle;
    procedure MstFooterCab;
    procedure MstFooterDet;
  public
    { Public declarations }
  end;

var
  fCtrolDesCaj: TfCtrolDesCaj;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfCtrolDesCaj.BitMostarClick(Sender: TObject);
var xSQL:String;
begin
    xSQL:='SELECT CODOFI,OFDESNOM,COUNT(*) CANTIDAD,SUM(MONTOSOL) IMPORTE FROM DES_DEV_EFE A,APO110 B WHERE ASOFECDEV='+QuotedStr(DateToStr(DtpFecIni.Date))+' AND FECDES IS NULL AND A.CODOFI=B.OFDESID GROUP BY CODOFI,OFDESNOM ';
    DM1.cdsHijo.Close;
    DM1.cdsHijo.DataRequest(xSQL);
    DM1.cdsHijo.Open; MstFooterCab;
    TNumericField(DM1.cdsHijo.fieldbyname('IMPORTE')).DisplayFormat:='###,##0.#0';
    TNumericField(DM1.cdsHijo.fieldbyname('CANTIDAD')).DisplayFormat:='###,##0';
    MstDetalle;
end;

procedure TfCtrolDesCaj.FormActivate(Sender: TObject);
var xSQL:String;
begin
  DtpFecIni.Date:=DM1.FechaSys;
  xSQL:='SELECT CODOFI,OFDESNOM,COUNT(*) CANTIDAD,SUM(MONTOSOL) IMPORTE FROM DES_DEV_EFE A,APO110 B WHERE ASOFECDEV='+QuotedStr(DateToStr(DtpFecIni.Date))+' AND FECDES IS NULL AND A.CODOFI=B.OFDESID GROUP BY CODOFI,OFDESNOM ';
  DM1.cdsHijo.Close;
  DM1.cdsHijo.DataRequest(xSQL);
  DM1.cdsHijo.Open; MstFooterCab;
  TNumericField(DM1.cdsHijo.fieldbyname('IMPORTE')).DisplayFormat:='###,##0.#0';
  TNumericField(DM1.cdsHijo.fieldbyname('CANTIDAD')).DisplayFormat:='###,##0';
  MstDetalle;
end;

procedure TfCtrolDesCaj.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfCtrolDesCaj.dbgMovCajaCabDblClick(Sender: TObject);
begin
  MstDetalle;
end;

procedure TfCtrolDesCaj.MstDetalle;
var xSQL:String;
begin
   xSQL:='SELECT ASODNI,ASOAPENOM,ASONUMDEV,MONTOSOL FROM DES_DEV_EFE WHERE '+
         'ASOFECDEV='+QuotedStr(DateToStr(DtpFecIni.Date))+' AND CODOFI='+QuotedStr(DM1.cdsHijo.FieldByName('CODOFI').AsString)+' AND FECDES IS NULL ';
   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest(xSQL);
   DM1.cdsPadre.Open;
   TNumericField(DM1.cdsPadre.fieldbyname('MONTOSOL')).DisplayFormat:='###,##0.#0';
   lblCajaDev.Caption:=DM1.cdsHijo.FieldByName('OFDESNOM').AsString;
   MstFooterDet;
end;

procedure TfCtrolDesCaj.dbgMovCajaCabRowChanged(Sender: TObject);
begin
  MstDetalle;
end;

procedure TfCtrolDesCaj.MstFooterCab;
var xCantidad:Integer;
    xImporte:Currency;
begin
    xCantidad:=0; xImporte:=0;
    DM1.cdsHijo.First;
    While Not DM1.cdsHijo.Eof Do
    Begin
       xCantidad:= xCantidad + DM1.cdsHijo.FieldByName('CANTIDAD').AsInteger;
       xImporte := xImporte  + DM1.cdsHijo.FieldByName('IMPORTE').AsCurrency;
       DM1.cdsHijo.Next;
    End;
    dbgMovCajaCab.ColumnByName('OFDESNOM').FooterValue :='Totales : ';
    dbgMovCajaCab.ColumnByName('CANTIDAD').FooterValue :=FormatFloat('###,###',xCantidad);
    dbgMovCajaCab.ColumnByName('IMPORTE').FooterValue :=FormatFloat('###,###.#0',xImporte);
end;

procedure TfCtrolDesCaj.MstFooterDet;
var xImporte:Currency;
begin
    xImporte:=0;
    DM1.cdsPadre.First;
    While Not DM1.cdsPadre.Eof Do
    Begin
       xImporte := xImporte  + DM1.cdsPadre.FieldByName('MONTOSOL').AsCurrency;
       DM1.cdsPadre.Next;
    End;
    dbgMovCajaDet.ColumnByName('ASOAPENOM').FooterValue :='Totales : ';
    dbgMovCajaDet.ColumnByName('MONTOSOL').FooterValue :=FormatFloat('###,###.#0',xImporte);

end;

end.
