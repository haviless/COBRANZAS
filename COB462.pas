unit COB462;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB462
// Formulario           : fDatosPadron
// Fecha de Creación    : 15/05/2013
// Autor                : Hugo Noriega.
// Objetivo             : Información de Padrón
//
// Actualizaciones      :
// HPC_201306_COB       : Crear Opción Información de Padrón
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, db, StdCtrls, Mask, wwdbedit,
  ExtCtrls, Buttons;

type
  TfDatosPadron = class(TForm)
    dbgDatos: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    Label2: TLabel;
    Panel2: TPanel;
    btncerrar: TBitBtn;
    btnCargo: TBitBtn;
    Label9: TLabel;
    wwDBEdit10: TwwDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure dbgDatosDblClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btnCargoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDatosPadron : TfDatosPadron;

implementation

{$R *.dfm}

uses COBDM1;

procedure TfDatosPadron.FormActivate(Sender: TObject);
begin

  dbgDatos.Selected.Clear;
  dbgDatos.SetControlType('FLAG',fctCheckBox,'S;N');
  dbgDatos.Selected.Add('FLAG'#9'3'#9' X'#9#9);
  dbgDatos.Selected.Add('CODPAD'#9'12'#9'Periodo~Padrón'#9#9);
  dbgDatos.Selected.Add('CARGO'#9'10'#9'Código~Cargo'#9#9);
  dbgDatos.Selected.Add('SITUACION'#9'7'#9'Situación'#9#9);
  dbgDatos.Selected.Add('PLANILLA'#9'10'#9'Tipo~Planilla'#9#9);
  dbgDatos.Selected.Add('USEID'#9'3'#9'UGEL~id'#9#9);
  dbgDatos.Selected.Add('USENOM'#9'25'#9'UGEL~Nombre'#9#9);
  dbgDatos.Selected.Add('ASOTIPID'#9'5'#9'Tipo~Asociado'#9#9);
  dbgDatos.Selected.Add('HABER'#9'12'#9'Bruto'#9'F'#9'Haberes');
  dbgDatos.Selected.Add('DESCUENTO'#9'12'#9'Descuento'#9'F'#9'Haberes');
  dbgDatos.Selected.Add('LIQUIDO'#9'12'#9'Liquido'#9'F'#9'Haberes');
  dbgDatos.ApplySelected;

  TNumericField(DM1.cdsAsoBanAct.FieldByName('HABER')).DisplayFormat     := '##,###,##0.00';
  TNumericField(DM1.cdsAsoBanAct.FieldByName('DESCUENTO')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsAsoBanAct.FieldByName('LIQUIDO')).DisplayFormat   := '##,###,##0.00';

end;

procedure TfDatosPadron.dbgDatosDblClick(Sender: TObject);
begin
   DM1.cdsAsoBanAct.Edit;
   if DM1.cdsAsoBanAct.FieldByName('FLAG').AsString='S' then
      DM1.cdsAsoBanAct.FieldByName('FLAG').AsString:='N'
   else
      DM1.cdsAsoBanAct.FieldByName('FLAG').AsString:='S';
   DM1.cdsAsoBanAct.Post;

end;

procedure TfDatosPadron.btncerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TfDatosPadron.btnCargoClick(Sender: TObject);
var
   nCont : Integer;
   sSQL : String;
begin
   nCont:=0;
   DM1.cdsAsoBanAct.First;
   while not DM1.cdsAsoBanAct.Eof do
   begin
      if DM1.cdsAsoBanAct.FieldByName('FLAG').AsString='S' then
         inc(nCont);
      DM1.cdsAsoBanAct.Next;
   end;
   if nCont<>1 then
   begin
      MessageDlg('Se debe seleccionar Un (1) Registro, para actualizar el Padrón..', mtError,[mbOk], 0 );
      exit;
   end;

   DM1.cdsAsoBanAct.First;
   while not DM1.cdsAsoBanAct.Eof do
   begin
         if DM1.cdsAsoBanAct.FieldByName('FLAG').AsString='S' then
         begin
            sSQL:='Select CARGO from cob319 '
                 +'where asoid=''' +DM1.cdsRegCob.FieldByname('ASOID').AsString+''' '
                 +  'and cobano='''+Copy(DM1.cdsAsoBanAct.FieldByname('CODPAD').AsString,1,4)+''' '
                 +  'and cobmes='''+Copy(DM1.cdsAsoBanAct.FieldByname('CODPAD').AsString,5,2)+'''';
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest( sSQL );
            DM1.cdsQry.Open;

            if DM1.cdsAsoBanAct.FieldByName('CARGO').AsString=DM1.cdsQry.FieldByName('CARGO').AsString then
            begin
                MessageDlg('El Código de CARGO es el mismo ('+DM1.cdsAsoBanAct.FieldByName('CARGO').AsString+'), No se actualizará...', mtError,[mbOk], 0 );
                exit;
            end;

            sSQL:='Update cob319 Set CARGO = '''+DM1.cdsAsoBanAct.FieldByName('CARGO').AsString+''' '
                 +'where asoid=''' +DM1.cdsRegCob.FieldByname('ASOID').AsString+''' '
                 +  'and cobano='''+Copy(DM1.cdsAsoBanAct.FieldByname('CODPAD').AsString,1,4)+''' '
                 +  'and cobmes='''+Copy(DM1.cdsAsoBanAct.FieldByname('CODPAD').AsString,5,2)+'''';
            try
            DM1.DCOM1.AppServer.EjecutaSQL(sSql);
            except
                MessageDlg('Error al Actualizar..', mtError,[mbOk], 0 );
                exit;
            end;
         end;
         DM1.cdsAsoBanAct.Next;
   end;

   MessageDlg('Codigo de Cargo Actualizado.', mtInformation,[mbOk], 0 );

end;

end.
