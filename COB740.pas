unit COB740;
//GAR

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, fcButton, fcImgBtn, fcShapeBtn, StdCtrls,
  ExtCtrls, ppBands, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppTypes, ppProd, ppReport, ppViewr, ppVar, ppPrnabl, ppCtrls;

type
  TFObservaciones = class(TForm)
    pnlCabecera: TPanel;
    sbtnImprimirAntes: TfcShapeBtn;
    sbtnCancelar: TfcShapeBtn;
    GroupBox1: TGroupBox;
    wwDBGrid1: TwwDBGrid;
    GroupBox2: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    fcShapeBtn1: TfcShapeBtn;
    sbtnImprimirDespues: TfcShapeBtn;
    ppdbRepAntes: TppDBPipeline;
    ppdbRepDespues: TppDBPipeline;
    ppRepDespues: TppReport;
    ppRepAntes: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel10: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel11: TppLabel;
    ppdbAsoId: TppDBText;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppdbAsoaPeNom: TppDBText;
    ppdbLE: TppDBText;
    ppdbNroCta: TppDBText;
    ppdbSitCta: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    procedure sbtnCancelarClick(Sender: TObject);
    procedure ppRepAntesPreviewFormCreate(Sender: TObject);
    procedure ppRepDespuesPreviewFormCreate(Sender: TObject);
    procedure sbtnImprimirAntesClick(Sender: TObject);
    procedure sbtnImprimirDespuesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FObservaciones: TFObservaciones;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFObservaciones.sbtnCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TFObservaciones.ppRepAntesPreviewFormCreate(Sender: TObject);
begin
   ppRepAntes.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepAntes.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFObservaciones.ppRepDespuesPreviewFormCreate(Sender: TObject);
begin
   ppRepDespues.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepDespues.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFObservaciones.sbtnImprimirAntesClick(Sender: TObject);
var
   x10 : Integer;
begin
   Screen.Cursor := crHourGlass;
   ppRepAntes.Template.FileName := wRutaRpt+'\RepAntTransf.rtm' ;
   ppRepAntes.Template.LoadFromFile;
   ppRepAntes.Print;
   ppRepAntes.Stop;
   x10 := Self.ComponentCount-1;
   While x10 >= 0 do
    begin
     If Self.Components[ x10 ].ClassName = 'TppGroup' Then
      begin
       Self.Components[ x10 ].Free ;
      end;
     x10 := x10-1;
    end;
   Screen.Cursor := crDefault;
end;

procedure TFObservaciones.sbtnImprimirDespuesClick(Sender: TObject);
var
   x10 : Integer;
begin
   Screen.Cursor := crHourGlass;
   ppRepDespues.Template.FileName := wRutaRpt+'\RepDespTransf.rtm' ;
   ppRepDespues.Template.LoadFromFile;
   ppRepDespues.Print;
   ppRepDespues.Stop;
   x10 := Self.ComponentCount-1;
   While x10 >= 0 do
    begin
     If Self.Components[ x10 ].ClassName = 'TppGroup' Then
      begin
       Self.Components[ x10 ].Free ;
      end;
     x10 := x10-1;
    end;
   Screen.Cursor := crDefault;
end;

end.
