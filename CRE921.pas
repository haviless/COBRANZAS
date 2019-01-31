unit CRE921;
//Inicio de Estámdares 01/08/2011
//Unidad             : CRE921
//Formulario         : fDetRegBan
//Fecha de Creación  :
//Autor              : Ricardo Medina Zavaleta
//Objetivo           : Detalle del registro del banco

//Actualizaciones    :
//HPC_201215_COB     : Debido a la implementación del Fondo de Desgravamen se
//                     adiciona la columna de desgravamen "MONCOBDESGRAV" en todos
//                     las consultas que acceden a la tabal CRE310
// DPP_201211_COB    : Pase se realiza de acuerdo al HPC_201215_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Db;

type
  TfDetRegBan = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    lblGrid03: TLabel;
    lblGrid04: TLabel;
    dtgUserDet: TwwDBGrid;
    rdgFiltro: TRadioGroup;
    BitMostrar: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rdgFiltroClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure dtgUserDetDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure dtgUserDetDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure dtgUserDetDrawTitleCell(Sender: TObject; Canvas: TCanvas;
      Field: TField; Rect: TRect; var DefaultDrawing: Boolean);
  private
    { Private declarations }
    procedure MstTotales;
  public
    { Public declarations }
  end;

var
  fDetRegBan: TfDetRegBan;

implementation

uses COBDM1, COB920;

{$R *.dfm}

procedure TfDetRegBan.BitSalirClick(Sender: TObject);
begin
   Close;

end;

procedure TfDetRegBan.FormActivate(Sender: TObject);
begin
MstTotales;
end;

procedure TfDetRegBan.rdgFiltroClick(Sender: TObject);
var xSQL:String;
begin
Case rdgFiltro.ItemIndex Of
     0:fCtrlBanc.CarDetUsuarios(fCtrlBanc.rdbSeleccion.ItemIndex,'G');
     1:fCtrlBanc.CarDetUsuarios(fCtrlBanc.rdbSeleccion.ItemIndex,'M');
     2:fCtrlBanc.CarDetUsuarios(fCtrlBanc.rdbSeleccion.ItemIndex,'D');
End;
MstTotales;
end;

procedure TfDetRegBan.BitMostrarClick(Sender: TObject);
begin
Case rdgFiltro.ItemIndex Of
     0:fCtrlBanc.CarDetUsuarios(fCtrlBanc.rdbSeleccion.ItemIndex,'G');
     1:fCtrlBanc.CarDetUsuarios(fCtrlBanc.rdbSeleccion.ItemIndex,'M');
     2:fCtrlBanc.CarDetUsuarios(fCtrlBanc.rdbSeleccion.ItemIndex,'D');
End;
MstTotales;
end;

procedure TfDetRegBan.MstTotales;
var xCrecapital,xCremtoint,xCremtoflat,xCremtocob,xCremtoexc:Currency ;
//INICIO : DPP_201211_COB
//Variable que contendrá el importe del Desgavamen
xCremtoDesgravamen :Currency;
//FIN : DPP_201211_COB
begin
xCrecapital:=0;xCremtoint:=0;xCremtoflat:=0;xCremtocob:=0;xCremtoexc:=0;
//INICIO : DPP_201211_COB
//Inicializando el importe del Desgravamen
xCremtoDesgravamen := 0;
//FIN : DPP_201211_COB
If DM1.cdsQry2.RecordCount>0 Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.Eof Do
      Begin
         xCrecapital:=xCrecapital + DM1.cdsQry2.FieldByName('CREAMORT').AsCurrency;
         xCremtoint:=xCremtoint + DM1.cdsQry2.FieldByName('CREINTERES').AsCurrency;
         xCremtoflat:=xCremtoflat + DM1.cdsQry2.FieldByName('CREFLAT').AsCurrency;
         //INICIO : DPP_201211_COB
         //Acumulando el valor del Desgravamen
         xCremtoDesgravamen:=xCremtoDesgravamen + DM1.cdsQry2.FieldByName('MONCOBDESGRAV').AsCurrency;
         //FIN : DPP_201211_COB
         xCremtocob:=xCremtocob + DM1.cdsQry2.FieldByName('CREMTOCOB').AsCurrency;
         xCremtoexc:=xCremtoexc + DM1.cdsQry2.FieldByName('CREMTOEXC').AsCurrency;
         DM1.cdsQry2.Next;
      End;
   End;
   dtgUserDet.ColumnByName('CREDOCPAG').FooterValue :='Total';
   dtgUserDet.ColumnByName('CREAMORT').FooterValue := FloatToStrF(xCrecapital,ffNumber, 10, 2);
   dtgUserDet.ColumnByName('CREINTERES').FooterValue := FloatToStrF(xCremtoint,ffNumber, 10, 2);
   dtgUserDet.ColumnByName('CREFLAT').FooterValue := FloatToStrF(xCremtoflat,ffNumber, 10, 2);
   //INICIO : DPP_201211_COB
   //Asiganando el importe del Desgravamen
   dtgUserDet.ColumnByName('MONCOBDESGRAV').FooterValue := FloatToStrF(xCremtoDesgravamen,ffNumber, 10, 2);
   //FIN : DPP_201211_COB
   dtgUserDet.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtocob,ffNumber, 10, 2);
   dtgUserDet.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(xCremtoexc,ffNumber, 10, 2);

end;

procedure TfDetRegBan.dtgUserDetDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 if Field.FieldName = 'CREMTOCOB' then
    Begin
      dtgUserDet.Canvas.Font.Color := clRed;
      dtgUserDet.DefaultDrawDataCell(rect,Field,State);
    End;

end;

procedure TfDetRegBan.dtgUserDetDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
begin
 if Field.FieldName = 'CREMTOCOB' then
    Begin
      dtgUserDet.Canvas.Font.Color := clRed;
    End;

end;

procedure TfDetRegBan.dtgUserDetDrawTitleCell(Sender: TObject;
  Canvas: TCanvas; Field: TField; Rect: TRect;
  var DefaultDrawing: Boolean);
begin
 if Field.FieldName = 'CREMTOCOB' then
    Begin
      dtgUserDet.Canvas.Font.Color := clRed;
    End;

end;

end.
