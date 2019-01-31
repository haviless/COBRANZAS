unit COB327;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB327
// Formulario                    : FRegCheAnu
// Fecha de Creación             : 26/09/2013
// Autor                         : Sistemas
// Objetivo                      : Registro de Cheques Anulados

// Actualizaciones               :
// HPC_201310_COB    26/09/2013  : Registro de Cheques anulados
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask,
  wwdbedit, wwdbdatetimepicker, Wwdbspin, ComCtrls, wwriched, Buttons,
  Wwdbigrd, Grids, Wwdbgrid, Wwdbdlg, db;

type
  TFRegCheAnu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbeChqNum: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    Z2bbtnCierra: TfcShapeBtn;
    Z2bbtnSalir: TfcShapeBtn;
    Bevel1: TBevel;
    dbeUProceso: TwwDBEdit;
    dbeUPago: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    dblcUProceso: TwwDBEdit;
    dblcdUPago: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    Bevel4: TBevel;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Z2bbtnCierraClick(Sender: TObject);
    procedure Z2bbtnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRegCheAnu: TFRegCheAnu;

implementation

uses COBDM1, MsgDlgs;

{$R *.dfm}

procedure TFRegCheAnu.FormActivate(Sender: TObject);
var
   xWhere :  String;
begin
   xWhere := 'UPROID =''' + dblcUProceso.Text + '''';
   dbeUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');

   xWhere := 'UPAGOID =' + QuotedStr(dblcdUPago.Text);
   dbeUPago.Text := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
end;

procedure TFRegCheAnu.Z2bbtnCierraClick(Sender: TObject);
var
   xSQL : String;
begin
   If Question(Caption, 'Esta Seguro de Actualizar el Estado'#13 + #13 + 'Desea Continuar') Then
   Begin
      xSQL:='insert into cob_che_anu '
           +  '( numreg, perori, fecche, numche, monche, numope, monope, uproid, upagoid, useid, asotipid, rcobid, detrcobid, usuregche, fecregche ) '
           +'values( (Select nvl(max( numreg ),0)+1 from cob_che_anu), '
           +  ''''+DM1.cdsRegCob.FieldByName('RCOBANO').AsString+DM1.cdsRegCob.FieldByName('RCOBMES').AsString+''', '
           +  ''''+DM1.cdsDetRegCob.FieldByName('DOCFECHA').AsString+''', '
           +  ''''+DM1.cdsDetRegCob.FieldByName('DOCID').AsString+''', '
           +  DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString+', '
           +  ''''+DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString+''', '
           +  DM1.cdsRegCob.FieldByName('RCOBMTO').AsString+', '
           +  ''''+DM1.cdsDetRegCob.FieldByName('UPROID').AsString+''', '
           +  ''''+DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString+''', '
           +  ''''+' '+''', '
           +  ''''+DM1.cdsDetRegCob.FieldByName('ASOTIPID').AsString+''', '
           +  ''''+DM1.cdsDetRegCob.FieldByName('RCOBID').AsString+''', '
           +  ''''+DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString+''', '
           +  ''''+DM1.wUsuario+''', SYSDATE )';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      Z2bbtnCierra.Enabled:=False;
      ShowMessage('Cheque Anulado Grabado...');
   end;
end;

procedure TFRegCheAnu.Z2bbtnSalirClick(Sender: TObject);
begin
   Close;
end;

end.
