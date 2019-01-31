unit COB593;

// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Cobranzas
// Unidad                    : COB593
// Formulario                : FConvenioAlerta
// Fecha de Creación         : 10/07/2013
// Autor                     : Desarrollo Sistemas Derrama
// Objetivo                  : Alerta de vencimiento de convenios
//
// Actualizaciones:
// HPC_201308_COB            : 10/07/2013   Alerta de Vencimiento de convenios
// SPP_201310_COB            : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, db, StdCtrls, Buttons, ComCtrls,
  Mask, wwdbedit, ExtCtrls;

type
  TFConvenioAlerta = class(TForm)
    BitSalir: TBitBtn;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgCabecera: TwwDBGrid;
    Panel1: TPanel;
    Shape1: TShape;
    dbeRojo: TwwDBEdit;
    Shape2: TShape;
    dbeAmbar: TwwDBEdit;
    Shape3: TShape;
    dbeVerde: TwwDBEdit;
    Panel2: TPanel;
    Shape4: TShape;
    wwDBEdit1: TwwDBEdit;
    dbgVencidos: TwwDBGrid;
    bbtnExcel: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure dbgCabeceraCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgVencidosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    xColorRojo  : TColor;
    xColorAmbar : TColor;
    xColorVerde : TColor;

    Procedure MuestraData;
  public
    { Public declarations }
  end;

var
  FConvenioAlerta: TFConvenioAlerta;

implementation

uses COBDM1;

{$R *.dfm}

Procedure TFConvenioAlerta.MuestraData;
var
  xSql, xSQL2 : String;
begin
  xSql:='SELECT IDECON, DESCON, FECINI, FECFIN, B.DESESTCON, '
       +' to_date(FECFIN)-to_date(SYSDATE) DIAS_VEN '
       +' FROM COB_CON_CAB A, (SELECT CODESTCON, DESESTCON FROM COB_DES_EST_CON WHERE TIPO = ''1'') B'
       +' WHERE A.CODESTCON IN (''02'',''21'') AND A.CODESTCON = B.CODESTCON(+) '
       +'   AND to_date(FECFIN) >=to_date(SYSDATE) '
       +' ORDER BY FECFIN, IDECON';
  DM1.cdsAcuerdos.IndexFieldNames := '';
  DM1.cdsAcuerdos.Close;
  DM1.cdsAcuerdos.DataRequest(xSql);
  DM1.cdsAcuerdos.Open;

  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('IDECON'#9'12'#9'Número del~convenio'#9#9);
  dbgCabecera.Selected.Add('DESCON'#9'40'#9'Descripción'#9#9);
  dbgCabecera.Selected.Add('FECINI'#9'12'#9'Fecha de~inicio'#9#9);
  dbgCabecera.Selected.Add('FECFIN'#9'12'#9'Fecha de~finalización'#9#9);
  dbgCabecera.Selected.Add('DESESTCON'#9'15'#9'Estado'#9#9);
  dbgCabecera.Selected.Add('DIAS_VEN'#9'10'#9'Días de~vencimiento'#9#9);
  dbgCabecera.ApplySelected;

  xSql2:='select ''Hasta 30 días: ''||to_char(sum( case when dias_ven<=30 then 1 else 0 end ))||'' Convenios'' rojo, '
        +  '''De 31 a 60 días: ''||to_char(sum( case when dias_ven>=31 and dias_ven<=60then 1 else 0 end ))||'' Convenios'' ambar, '
        +  '''De 61 días a más: ''||to_char(sum( case when dias_ven>=61 then 1 else 0 end ))||'' Convenios'' verde '
        +'from ( '
        + xSQL
        +' ) ';
  DM1.cdsQry2.IndexFieldNames := '';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSql2);
  DM1.cdsQry2.Open;

  /////////////////

  xSql:='SELECT IDECON, DESCON, FECINI, FECFIN, B.DESESTCON, '
       +' to_date(SYSDATE)-to_date(FECFIN) DIAS_VEN '
       +' FROM COB_CON_CAB A, (SELECT CODESTCON, DESESTCON FROM COB_DES_EST_CON WHERE TIPO = ''1'') B'
       +' WHERE A.CODESTCON IN (''02'',''21'') AND A.CODESTCON = B.CODESTCON(+) '
       +'   AND to_date(FECFIN) < to_date(SYSDATE) '
       +' ORDER BY FECFIN DESC, IDECON';
  DM1.cdsUtilidades.IndexFieldNames := '';
  DM1.cdsUtilidades.Close;
  DM1.cdsUtilidades.DataRequest(xSql);
  DM1.cdsUtilidades.Open;

  dbgVencidos.Selected.Clear;
  dbgVencidos.Selected.Add('IDECON'#9'12'#9'Número del~convenio'#9#9);
  dbgVencidos.Selected.Add('DESCON'#9'40'#9'Descripción'#9#9);
  dbgVencidos.Selected.Add('FECINI'#9'12'#9'Fecha de~inicio'#9#9);
  dbgVencidos.Selected.Add('FECFIN'#9'12'#9'Fecha de~finalización'#9#9);
  dbgVencidos.Selected.Add('DESESTCON'#9'15'#9'Estado'#9#9);
  dbgVencidos.Selected.Add('DIAS_VEN'#9'12'#9'Días de~Vencido'#9#9);
  dbgVencidos.ApplySelected;

  xSql2:='select ''Vencidos: ''||to_char(count(*))||'' Convenios'' negro '
        +'from ( ' + xSQL +' ) ';
  DM1.cdsQry3.IndexFieldNames := '';
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(xSql2);
  DM1.cdsQry3.Open;
end;


procedure TFConvenioAlerta.FormActivate(Sender: TObject);
begin
   PageControl1.ActivePageIndex:=0 ;

   xColorRojo  := clRed;
   xColorAmbar := $000393FC;
   xColorVerde := clGreen;

   MuestraData;
end;

procedure TFConvenioAlerta.dbgCabeceraCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if Field.FieldName='DIAS_VEN' then
   begin
       AFont.Color := clWhite;
       AFont.Size  := 10;
       AFont.Style := [fsBold];
       If (DM1.cdsAcuerdos.FieldByName('DIAS_VEN').AsInteger<=30) Then ABrush.Color := xColorRojo;
       If (DM1.cdsAcuerdos.FieldByName('DIAS_VEN').AsInteger>=31) and (DM1.cdsAcuerdos.FieldByName('DIAS_VEN').AsInteger<=60) Then ABrush.Color := xColorAmbar;
       If (DM1.cdsAcuerdos.FieldByName('DIAS_VEN').AsInteger>=61) Then ABrush.Color := xColorVerde;
   end;
end;

procedure TFConvenioAlerta.dbgVencidosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if Field.FieldName='DIAS_VEN' then
   begin
       AFont.Color := clWhite;
       AFont.Size  := 10;
       AFont.Style := [fsBold];
       ABrush.Color := clBlack;
   end;
end;

procedure TFConvenioAlerta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsAcuerdos.Close;
  DM1.cdsUtilidades.Close;
  DM1.cdsQry3.Close;
  DM1.cdsQry2.Close;
end;

procedure TFConvenioAlerta.bbtnExcelClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If DM1.cdsAcuerdos.RecordCount > 0 Then
   Begin
      Try
        Screen.Cursor:= crHourGlass;
        DM1.ExportaGridExcel(dbgCabecera,'Resultados');
        Screen.Cursor:= crDefault;
    	except
    		on Ex: Exception do
		  	Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
    	end;
   End;
   Screen.Cursor := crDefault;
end;

procedure TFConvenioAlerta.BitBtn1Click(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If DM1.cdsUtilidades.RecordCount > 0 Then
   Begin
      Try
        Screen.Cursor:= crHourGlass;
        DM1.ExportaGridExcel(dbgVencidos,'Resultados');
        Screen.Cursor:= crDefault;
    	except
    		on Ex: Exception do
		  	Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
    	end;
   End;
   Screen.Cursor := crDefault;
end;

end.
