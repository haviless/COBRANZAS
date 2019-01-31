unit COB324;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB924
// Formulario           : FCuotasAnu
// Fecha de Creación    : 16/07/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Consulta de Cuotas Anuladas o Extornadas de Asociados
// Actualizaciones      :
// HPC_201308_COB       : 16/07/2013 - Consulta de Cuotas Anuladas o Extornadas
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, DB;

type
  TFCuotasAnu = class(TForm)
    dbgData: TwwDBGrid;
    Label1: TLabel;
    BitSalir: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    EdtCodMod: TEdit;
    EdtNomGen: TEdit;
    EdtCreDid: TEdit;
    bbtnExcel: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure bbtnExcelClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCuotasAnu: TFCuotasAnu;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFCuotasAnu.FormActivate(Sender: TObject);
var
  sSQL : String;
begin
  sSQL:='SELECT A.ASOID, A.ASOCODMOD, A.CREDID, A.CRECUOTA, A.CREFPAG, A.CREMTOCOB, A.ASOAPENOM, '
       +  'B.CREESTID, B.CREESTADO, A.FORPAGABR, B.NROOPE, B.CREMENANU, B.USRANULA, TO_DATE(B.FECANULA) FECANULA, '
       +  'SUBSTR(B.CREOBS,1,200) CREOBS '
       +  'FROM CRE310 A, COB901 B '
       + 'WHERE A.ASOID=' + QuotedStr(DM1.cdsCuotas.FieldByname('ASOID').AsString)
       +  ' AND A.CREDID='+ QuotedStr(DM1.cdsCuotas.FieldByname('CREDID').AsString)
       +  ' AND A.CREESTID IN (''13'',''04'') '
       +  ' AND A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.CRECUOTA=B.CRECUOTA(+) AND A.NROOPE=B.NROOPE(+) '
       +  ' AND B.ASOID IS NOT NULL '
       + 'ORDER BY B.FECANULA DESC, A.CRECUOTA';
  DM1.cdsCuotasAnu.Close;
  DM1.cdsCuotasAnu.DataRequest(sSQL);
  DM1.cdsCuotasAnu.Open;

  dbgData.Selected.Clear;
  dbgData.Selected.Add('CRECUOTA'#9'4'#9'Cuota'#9#9);
  dbgData.Selected.Add('CREFPAG'#9'10'#9'Fecha~Pago'#9#9);
  dbgData.Selected.Add('NROOPE'#9'10'#9'Número~Operación'#9#9);
  dbgData.Selected.Add('CREMTOCOB'#9'08'#9'Monto'#9#9);
  dbgData.Selected.Add('CREOBS'#9'32'#9'Observación'#9#9);
  dbgData.Selected.Add('FECANULA'#9'10'#9'Fecha~Anula'#9#9);
  dbgData.Selected.Add('USRANULA'#9'12'#9'Usuario~Anula'#9#9);
  dbgData.Selected.Add('CREMENANU'#9'40'#9'Motivo de Anulación'#9#9);
  dbgData.ApplySelected;

  TNumericField(DM1.cdsCuotasAnu.fieldbyname('CREMTOCOB')).DisplayFormat :=  '###,###.#0';


  EdtCodMod.Text:=DM1.cdsCuotasAnu.FieldByName('ASOCODMOD').AsString;
  EdtNomGen.Text:=DM1.cdsCuotasAnu.FieldByName('ASOAPENOM').AsString;
  EdtCreDid.Text:=DM1.cdsCuotasAnu.FieldByName('CREDID').AsString;
end;

procedure TFCuotasAnu.bbtnExcelClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If DM1.cdsCuotasAnu.RecordCount > 0 Then
   Begin
      Try
        Screen.Cursor:= crHourGlass;
        DM1.ExportaGridExcel(dbgData,'Resultados');
        Screen.Cursor:= crDefault;
    	except
    		on Ex: Exception do
		  	Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
    	end;
   End;
   Screen.Cursor := crDefault;

end;

procedure TFCuotasAnu.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFCuotasAnu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TNumericField(DM1.cdsCuotasAnu.fieldbyname('CREMTOCOB')).DisplayFormat :=  '';
  DM1.cdsCuotasAnu.Close;
end;

end.
