unit COB461;

// Inicio Uso Estándares   : 01/08/2011
// Unidad		          : COB461.pas
// Formulario		      : FMantAsoBan
// Fecha de Creación       : 09/04/2013
// Autor			       : Hugo Noriega
// Objetivo		        : Grabar Motivo de Activación y Desactivación del Mantenimiento de Docentes que NO pagan por Planilla.

// Actualizaciones:
// HPC_201305_COB : 10/04/2012 - Creación de Grabar Motivo de Activación y Desactivación del Mantenimiento de Docentes que NO pagan por Planilla..
// SPP_201307_COB    : Se realiza el pase a producción a partir del HPC_201305_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, wwdbedit;

type
  TFMantAsoBan = class(TForm)
    Panel2: TPanel;
    lblMotivo: TLabel;
    pnlMotivo: TPanel;
    Panel3: TPanel;
    mMotivo: TMemo;
    btnActiva: TBitBtn;
    BitSalir: TBitBtn;
    btnDesactiva: TBitBtn;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeDNI: TwwDBEdit;
    dbeTipo: TwwDBEdit;
    dbeNombres: TwwDBEdit;
    pnlActiva: TPanel;
    mActiva: TMemo;
    Label1: TLabel;
    lblDesAct: TLabel;
    pnlNoActivo: TPanel;
    dbeFecAct: TwwDBEdit;
    dbeUsuAct: TwwDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbeUsuNoAct: TwwDBEdit;
    Label9: TLabel;
    dbeFecNoAct: TwwDBEdit;
    procedure btnActivaClick(Sender: TObject);
    procedure btnDesactivaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMantAsoBan: TFMantAsoBan;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFMantAsoBan.btnActivaClick(Sender: TObject);
var
   xSQL : String;
begin
     if Length(Trim(mMotivo.Text))<5 then
     begin
        MessageDlg('Debe ingresar el motivo.', mtError, [mbOk], 0);
        Exit;
     end;

     xSQL:='Select asoid from cob_aso_des_ban '
          +'where asoid='''+DM1.cdsAso.FieldByName('ASOID').AsString+''' and activo=''S''';
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSQL);
     DM1.cdsQry.Open;
     if DM1.cdsQry.Recordcount>0 then
     begin
        MessageDlg('El Docente ya se encuentra registrado... Verifique.', mtError, [mbOk], 0);
        Close;
        Exit;
     end;

     if MessageDlg('Registrar a docente que no pagan por Planilla'+#13+'           ¿ Estás seguro ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
     begin
        xSQL:='insert into cob_aso_des_ban '
             +   '(asoid, asodni, asotipid, activo, obsact, fecact, usuact) '
             +'values '
             +   '( ''' +DM1.cdsAso.FieldByName('ASOID').AsString    +''', '
             +     '''' +DM1.cdsAso.FieldByName('ASODNI').AsString   +''', '
             +     '''' +DM1.cdsAso.FieldByName('ASOTIPID').AsString +''', '
             +     '''S'', '''+Trim(mMotivo.Text)+''', sysdate, '''+dm1.wUsuario+''' )';
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSQL);
        try
          DM1.cdsQry.Execute;
          ShowMessage( 'Registro se grabó con éxito' );
        except
          MessageDlg('Error al activar', mtError, [mbOk], 0);
        end;
        Close;
     end;
end;

procedure TFMantAsoBan.btnDesactivaClick(Sender: TObject);
var
   xSQL : String;
begin
     if Length(Trim(mMotivo.Text))<5 then
     begin
        MessageDlg('Debe ingresar el motivo.', mtError, [mbOk], 0);
        Exit;
     end;

     if MessageDlg('Cambiar a NO habiltado al Docente'+#13+'     ¿ Estás seguro ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
     begin
        xSQL:='update cob_aso_des_ban '
             +  ' set activo=''N'', obsnoact='''+mMotivo.Text+''', fecnoact=sysdate, usunoact='''+dm1.wUsuario+''' '
             + 'where asoid=''' +DM1.cdsAsoBanAct.FieldByName('ASOID').AsString    +''' '
             +   ' and activo=''S''';
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSQL);
        try
          DM1.cdsQry.Execute;
          ShowMessage( 'Registro se grabó con éxito' );
        except
          MessageDlg('Error al grabar NO Habilitado', mtError, [mbOk], 0);
        end;
        Close;
     end;
end;

end.
