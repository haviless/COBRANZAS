unit COB989A;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB989A
// Formulario           : fConVenoRep
// Fecha de Creación    :
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Consulta Asociados que les falta una sola cuota por pagar
//
// Actualizaciones      :
// HPC_201306_COB       : En reporte de últimas Cuotas debe considerar contratados
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ppDB, ppDBPipe, ppDBBDE, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, StdCtrls, Buttons, ppCtrls, ppVar,
  ppPrnabl, ppBands, ppCache, ExtCtrls, DBGrids;

type
  TfConVenoRep = class(TForm)
    dbgConsulta: TwwDBGrid;
    btnImpConsulta: TBitBtn;
    ppRConsuta: TppReport;
    ppDBConsulta: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    chkExcel2: TCheckBox;
    Image2: TImage;
    DTGDATA: TDBGrid;
    ppLHojaTrabajo: TppLabel;
// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
    ppLine5: TppLine;
    ppDBText6: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
    procedure FormCreate(Sender: TObject);
    procedure btnImpConsultaClick(Sender: TObject);
    procedure dbgConsultaTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConVenoRep: TfConVenoRep;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfConVenoRep.FormCreate(Sender: TObject);
begin
   DM1.cdsDetalle.IndexFieldNames:='CUO';
  dbgConsulta.Selected.Clear;
//dbgConsulta.SetControlType('FLAG',fctCheckBox,'S;N');
  dbgConsulta.Selected.Add('FLAG'#9'3'#9' X'#9#9);
// Inicio: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
  dbgConsulta.Selected.Add('ASOTIPID'#9'4'#9'Tip.Asoc.'#9#9);
// Fin: SPP_201308_COB       : En reporte de últimas Cuotas debe considerar contratados
  dbgConsulta.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.'#9#9);
  dbgConsulta.Selected.Add('ASOAPENOM'#9'40'#9'Apellidos y Nombres'#9#9);
  dbgConsulta.Selected.Add('UPROID'#9'4'#9'U.Pro.'#9#9);
  dbgConsulta.Selected.Add('UPAGOID'#9'3'#9'U.Pago'#9#9);
  dbgConsulta.Selected.Add('USEID'#9'3'#9'Ugel'#9#9);
  dbgConsulta.Selected.Add('MONCUOENV'#9'10'#9'Mon.Cuota~Enviada'#9#9);
  dbgConsulta.Selected.Add('CUO'#9'4'#9'Cuot.~Venc.o~Repr.'#9#9);
  dbgConsulta.Selected.Add('ULTPC'#9'6'#9'Ult.~Proc.~Cob.'#9#9);
  dbgConsulta.DataSource := DM1.dsDetalle;

end;

procedure TfConVenoRep.btnImpConsultaClick(Sender: TObject);
VAR XHOJA:STRING;
begin

 XHOJA:= dm1.cdsGrupos.fieldbyname('DESPER').AsString+' - '+dm1.cdsGrupos.fieldbyname('DESCON').AsString;
 If chkExcel2.Checked then
    Begin
      DTGDATA.DataSource := dm1.dsdetalle;

      Try  DM1.HojaExcel(dm1.cdsGrupos.fieldbyname('DESCON').AsString,DM1.dsdetalle, dtgData);
       except
       on Ex: Exception do
       Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	    end;
    End
 Else
   Begin
     ppLHojaTrabajo.Caption := XHOJA;
     ppRConsuta.Print;
     ppRConsuta.Stop;
   End;
end;

procedure TfConVenoRep.dbgConsultaTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin

  If AFieldName = 'CUO' Then
  Begin
    Dm1.cdsDetalle.IndexFieldNames := 'CUO';
  End;

  If AFieldName = 'ULTPC' Then
  Begin
    Dm1.cdsDetalle.IndexFieldNames := 'ULTPC';
  End;

  If AFieldName = 'USEID' Then
  Begin
    Dm1.cdsDetalle.IndexFieldNames := 'USEID';
  End;

  If AFieldName = 'UPAGOID' Then
  Begin
    Dm1.cdsDetalle.IndexFieldNames := 'UPAGOID';
  End;

  If AFieldName = 'MONCUOENV' Then
  Begin
    Dm1.cdsDetalle.IndexFieldNames := 'MONCUOENV';
  End;

  If AFieldName = 'ASOAPENOM' Then
  Begin
    Dm1.cdsDetalle.IndexFieldNames := 'ASOAPENOM';
  End;


end;

procedure TfConVenoRep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsDetalle.Close;
  DM1.cdsDetalle.IndexFieldNames:='';
end;

end.
