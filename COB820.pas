unit COB820;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Spin;

type
  TFAperturaMEs = class(TForm)
    gbPorTransferencia: TGroupBox;
    Label7: TLabel;
    seAno: TSpinEdit;
    seMes: TSpinEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAperturaMEs: TFAperturaMEs;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFAperturaMEs.BitBtn1Click(Sender: TObject);
var
   xSQL,xPeriodo : string;
   wY,wM,wD : word;
begin

   xSQL:='SELECT '+wRepFuncChar+wRepFecServi+', '+QuotedStr('DD/MM/YYYY')+') "FECHA" FROM DUAL';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   DecodeDate(DM1.cdsReporte.fieldbyname('FECHA').AsDateTime,wY,wM,wD);
   xPeriodo := seAno.Text+DM1.strZero(seMes.text,2);


   xSQL := ' SELECT MAX(PERIODO) FROM COB116';
   DM1.cdsQry3.IndexFieldNames :='';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   if DM1.cdsQry3.RecordCount=0 then
   else
   begin

   end;

   xSQL:= ' UPDATE CRE302 SET CREESTID=''14'', CREESTADO=''EN PROCESO DE COBRANZA'' '+
           ' WHERE CREANO='+Quotedstr(seAno.text)+
           ' AND CREMES='+Quotedstr(DM1.strZero(seMes.text,2))+
           ' AND (CREESTID=''02'' OR  CREESTID=''27'') '+
           ' AND (CREBLOQ<>''S'' OR CREBLOQ IS NULL) ';
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;

   xSQL :='INSERT INTO COB116(PERIODO,FLAGACT, USUARIO,FREG, HREG  ) '+
          ' VALUES ('+Quotedstr(xPeriodo)+',''S'','+
                   quotedstr(dm1.wusuario)+','+wRepFecServi+','+wRepTimeServi+')';
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;



end;

procedure TFAperturaMEs.FormCreate(Sender: TObject);
var
   xSQL : string;
begin
   xSQL := ' SELECT MAX(PERIODO) FROM COB116';
   DM1.cdsQry3.IndexFieldNames :='';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   if DM1.cdsQry3.RecordCount=0 then
   else
   begin

   end;

end;

end.
