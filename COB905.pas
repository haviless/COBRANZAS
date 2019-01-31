unit COB905;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient;

type
  TfExcesos = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    dtgExcesos: TwwDBGrid;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExcesos: TfExcesos;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfExcesos.BitSalirClick(Sender: TObject);
begin
 DM1.cdsCambios.Close;
 Close;
end;

procedure TfExcesos.FormActivate(Sender: TObject);
Var xExceso,xAplicar,xAplicado:Currency ;
    xAsoId, xSql:String;
begin
xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;
xExceso:=0; xAplicar:=0; xAplicado:=0;
DM1.cdsQry.Close;
xSql:='SELECT ASOID,CREMTOCOB,CREMTOEXC,CREAPLEXC,NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) AS PORAPLICA FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREMTOEXC>0  AND CREESTID NOT IN (''04'',''13'')'; // +' Group By ASOID,CREMTOCOB,CREMTOEXC,CREAPLEXC';
DM1.cdsQry.DataRequest(xSql);
DM1.cdsQry.Open;
If DM1.cdsQry.RecordCount > 0 Then
   Begin
      DM1.cdsQry.First;
      While Not DM1.cdsQry.Eof Do
      Begin
         xExceso  := xExceso   + DM1.cdsQry.fieldbyname('CREMTOEXC').AsCurrency;
         xAplicar := xAplicar  + DM1.cdsQry.fieldbyname('CREAPLEXC').AsCurrency;
         xAplicado:= xAplicado + DM1.cdsQry.fieldbyname('PORAPLICA').AsCurrency;
         DM1.cdsQry.Next;
      End;
   End
Else
   Begin
      xExceso:= 0 ; xAplicar := 0 ; xAplicado := 0;
   End;

DM1.cdsQry.Close;
dtgExcesos.ColumnByName('CREFPAG').FooterValue :='Totales : ';
dtgExcesos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(xExceso,ffNumber, 10, 2);
dtgExcesos.ColumnByName('CREAPLEXC').FooterValue := FloatToStrF(xAplicar,ffNumber, 10, 2);
dtgExcesos.ColumnByName('PORAPLICA').FooterValue := FloatToStrF(xAplicado,ffNumber, 10, 2);
end;

end.





