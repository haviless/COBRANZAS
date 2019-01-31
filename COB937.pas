unit COB937;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, wwdblook, Db, ComCtrls, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, DBGrids;

type
  Tfimprimetrimestre = class(TForm)
    dtgData: TDBGrid;
    Panel1: TPanel;
    BitImprimir: TBitBtn;
    BitSalir: TBitBtn;
    BitExporta: TBitBtn;
    dtgAsoMan: TwwDBGrid;
    dtgAsoManIButton: TwwIButton;
    Panel2: TPanel;
    EdtBuscar: TEdit;
    BitRetirar: TBitBtn;
    Label1: TLabel;
    RepCta: TppReport;
    ppHeaderBand20: TppHeaderBand;
    ppLabel405: TppLabel;
    ppLabel406: TppLabel;
    ppLabel407: TppLabel;
    ppLabel408: TppLabel;
    ppLabel409: TppLabel;
    ppSystemVariable32: TppSystemVariable;
    ppSystemVariable33: TppSystemVariable;
    ppSystemVariable34: TppSystemVariable;
    ppLabel410: TppLabel;
    ppLabel411: TppLabel;
    ppLabel412: TppLabel;
    ppLine108: TppLine;
    ppLabel416: TppLabel;
    ppLabel417: TppLabel;
    ppLabel418: TppLabel;
    ppLabel424: TppLabel;
    TitCta: TppLabel;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppDetailBand22: TppDetailBand;
    ppDBText188: TppDBText;
    ppDBText187: TppDBText;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppFooterBand15: TppFooterBand;
    ppSummaryBand20: TppSummaryBand;
    ppLabel403: TppLabel;
    ppLabel414: TppLabel;
    ppLabel415: TppLabel;
    ppDBCalc173: TppDBCalc;
    ppLine3: TppLine;
    ppLine4: TppLine;
    DbRepCta: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtBuscarChange(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure dtgAsoManIButtonClick(Sender: TObject);
    procedure BitRetirarClick(Sender: TObject);
    procedure BitImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fimprimetrimestre: Tfimprimetrimestre;

implementation

uses COBDM1, COB919, Math, CRE946;

{$R *.dfm}

procedure Tfimprimetrimestre.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure Tfimprimetrimestre.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure Tfimprimetrimestre.BitExportaClick(Sender: TObject);
var Titulo:String;
begin
	Screen.Cursor:= crHourGlass;
	try
   Titulo := 'Asociados_Con_4_Sueldos';
    DM1.HojaExcel(Titulo,DM1.dsQry, dtgData);
	except
		on Ex: Exception do
			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	end;
	Screen.Cursor:= crDefault;

end;

procedure Tfimprimetrimestre.FormActivate(Sender: TObject);
var xSQL:String;
begin
    Screen.Cursor := crHourglass;
    xSQL:='SELECT NVL(COUNT(*),0) AS MOVASO FROM APO201 WHERE VARIASCUOT=''S'' ';
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSQL);
    DM1.cdsQry1.Open;
    dtgAsoMan.ColumnByName('ASOAPENOM').FooterValue :='Total';
    dtgAsoMan.ColumnByName('ASONCTA').FooterValue := FloatToStrF(DM1.cdsQry1.FieldByName('MOVASO').AsInteger,ffNumber, 10, 0);
    DM1.cdsQry1.Close;
    Screen.Cursor := crDefault;
end;

procedure Tfimprimetrimestre.EdtBuscarChange(Sender: TObject);
begin
If Length(Trim(EdtBuscar.Text))>0 Then
  DM1.cdsQry.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);

end;

procedure Tfimprimetrimestre.EdtBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key=#13 Then
    Begin
      If Length(Trim(EdtBuscar.Text))>0 Then
         Begin
           EdtBuscar.Text:='';
           dtgAsoMan.SetFocus;
         End
       Else
         Begin
           MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
           EdtBuscar.SetFocus;
         End;
    End;

end;

procedure Tfimprimetrimestre.dtgAsoManIButtonClick(Sender: TObject);
begin
  Try
    fAso4Sueldos := TfAso4Sueldos.create(Self);
    fAso4Sueldos.ShowModal;
  Finally
    fAso4Sueldos.Free;
  end;

end;

procedure Tfimprimetrimestre.BitRetirarClick(Sender: TObject);
var xSQL:String;
begin
If dtgAsoMan.DataSource.DataSet.RecordCount=0 Then Exit;
If MessageDlg('¿Esta Seguro Que Desea Retirar al ASOCIADO   :  '+pChar(Trim(DM1.cdsQry.FieldByName('ASOAPENOM').AsString))+'    De El Descuento De 4 Cuotas?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   Begin
      xSQL:='UPDATE APO201 SET VARIASCUOT=NULL WHERE ASOID='+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString);
//      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
end;

procedure Tfimprimetrimestre.BitImprimirClick(Sender: TObject);
begin
If dtgAsoMan.DataSource.DataSet.RecordCount=0 Then Exit;
TitCta.Caption:='ASOCIADOS CON DESCUENTO DE 4 CUOTAS AL   :  '+DateToStr(DM1.FechaSys);
RepCta.Print;
RepCta.Cancel;
end;

end.
