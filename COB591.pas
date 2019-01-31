unit COB591;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, StdCtrls, wwdbdatetimepicker, Buttons, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppEndUsr,DB, ppBands,
  ppTypes, ppCtrls, ppPrnabl, ExtCtrls, ppVar, ppViewr, Mask, wwdbedit, fcButton,
  fcImgBtn, fcShapeBtn;

type
  TFCobranzaEfectivo = class(TForm)
    ppdbCobranza: TppDBPipeline;
    pprCobranza: TppReport;
    ppDesigner1: TppDesigner;
    rgUsuarios: TRadioGroup;
    edtUsuario: TwwDBLookupCombo;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel14: TppLabel;
    GroupBox3: TGroupBox;
    dblcdFPagoId: TwwDBLookupCombo;
    dbeFormaPago: TwwDBEdit;
    bbtnOkCobranza: TfcShapeBtn;
    GroupBox1: TGroupBox;
    dblcMoneda: TwwDBLookupCombo;
    dbeTMon: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFin: TwwDBDateTimePicker;
    procedure dblcMonedaExit(Sender: TObject);
    procedure bbtnOkCobranzaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rgUsuariosClick(Sender: TObject);
    procedure NotInList(Sender: TObject; LookupTable: TDataSet;NewValue: String; var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure pprCobranzaPreviewFormCreate(Sender: TObject);
    procedure dblcdFPagoIdExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCobranzaEfectivo: TFCobranzaEfectivo;
  xWhere : String;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFCobranzaEfectivo.dblcMonedaExit(Sender: TObject);
begin
  {if Length(DM1.DisplayDescrip('prvSQL','TGE103','TMONDES','TMONID='+QuotedStr(dblcMoneda.text),'TMONDES'))=0 then
  begin
    dblcMoneda.SetFocus;
    Raise Exception.Create('Moneda no existe');
  end;}
end;

procedure TFCobranzaEfectivo.bbtnOkCobranzaClick(Sender: TObject);
var sSQL:string;
    x10:integer;
begin
  if dbdtpInicio.Date=0 then
  begin
    dbdtpInicio.SetFocus;
    Raise Exception.Create('Ingrese Fecha Inicial');
  end;

  if dbdtpFin.Date=0 then
  begin
    dbdtpFin.SetFocus;
    Raise Exception.Create('Ingrese Fecha Final');
  end;

  if (Length(edtUsuario.text)=0) and (rgUsuarios.itemindex=1) then
  begin
    edtUsuario.SetFocus;
    Raise Exception.Create('Ingrese Usuario');
  end;

  if Length(dblcMoneda.text)=0 then
  begin
    dblcMoneda.SetFocus;
    Exception.Create('Ingrese Moneda');
  end;

  if rgUsuarios.itemindex=1 then
  begin
    sSQL:='SELECT '+QuotedStr(dbdtpInicio.text)+' FECINI, '+QuotedStr(dbdtpFin.text)+' FECFIN, '+
          'A.CREFPAG, E.USERNOM, D.CIADES, A.USEID, A.ASOCODMOD, A.ASOAPENOM, A.NROOPE, C.TMONABR, A.CREMTOCOB, A.CRECUOTA, A.USUARIO '+
          'FROM '+
          'CRE310 A, COB101 B, TGE103 C, TGE101 D, TGE006 E '+
          'WHERE '+
          //'B.TIPO=''E'' '+
          'B.FORPAGOID='+QuotedStr(dblcdFPagoId.Text)+' AND A.FORPAGID=B.FORPAGOID '+
          'AND A.TMONID=C.TMONID AND A.CIAID=D.CIAID AND A.USUARIO=E.USERID(+) AND '+
          'A.USUARIO='+QuotedStr(edtUsuario.text)+' '+
          'AND (to_char(A.FOPERAC,''DD/MM/YYYY'')>='+QuotedStr(DateToStr(dbdtpInicio.Date))+' '+
          'AND to_char(A.FOPERAC,''DD/MM/YYYY'')<='+QuotedStr(DateToStr(dbdtpFin.Date))+' '+
          ') AND A.TMONID='+QuotedStr(dblcMoneda.text)+' and NVL(CREFLAGDEV,''N'')=''N'' ORDER BY A.CREFPAG, A.NROOPE';
  end
  else
  begin
    sSQL:='SELECT '+QuotedStr(dbdtpInicio.text)+' FECINI, '+QuotedStr(dbdtpFin.text)+' FECFIN, '+
          'A.USUARIO, E.USERNOM, D.CIADES, C.TMONABR, SUM(A.CREMTOCOB) CREMTOCOB, COUNT(*) CONT '+
          'FROM '+
          'CRE310 A, COB101 B, TGE103 C, TGE101 D, TGE006 E '+
           'WHERE '+
          'B.FORPAGOID='+QuotedStr(dblcdFPagoId.Text)+' AND A.FORPAGID=B.FORPAGOID '+
          'AND A.TMONID=C.TMONID AND A.CIAID=D.CIAID AND A.USUARIO=E.USERID(+) '+
          'AND (to_char(A.FOPERAC,''DD/MM/YYYY'') >='+QuotedStr(DateToStr(dbdtpInicio.Date))+' '+
          'AND to_char(A.FOPERAC,''DD/MM/YYYY'')<='+QuotedStr(DateToStr(dbdtpFin.Date))+' '+
          ') AND A.TMONID='+QuotedStr(dblcMoneda.text)+' and NVL(CREFLAGDEV,''N'')=''N'' '+
          'GROUP BY A.USUARIO, E.USERNOM, D.CIADES, C.TMONABR '+
          'ORDER BY A.USUARIO';
  end;

  Screen.Cursor:=crHourGlass;
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(sSQL);
  DM1.cdsReporte.Open;
  Screen.Cursor:=crDefault;

  if DM1.cdsReporte.RecordCount=0 then
  begin
    ShowMessage('No Existen Registros que mostrar');
  end
  else
  begin
//      pprCobranza.DataPipeline:=ppdbCobranza;
    if rgUsuarios.itemindex=1 then
    begin
      //pprCobranza.Template.FileName := 'C:\Solexes\SolFormatos\Cob\Dema\CobranzaEfectivo.rtm';
      pprCobranza.Template.FileName := wRutaRpt+'\CobranzaEfectivo.rtm';
      pprCobranza.Template.LoadFromFile ;
      pprCobranza.DataPipeline:=ppdbCobranza;

      pprCobranza.Print;
      pprCobranza.Stop;
      x10:=Self.ComponentCount-1;
      While x10>=0 Do
      Begin
        If Self.Components[x10].ClassName='TppGroup' Then
        Begin
          Self.Components[x10].Free;
        End;
        x10:=x10-1;
      End;

      //ppDesigner1.Show;
    end
    else
    begin
      //pprCobranza.Template.FileName := 'C:\Solexes\SolFormatos\Cob\Dema\CobranzaEfectivoUsuarios.rtm';
      pprCobranza.Template.FileName := wRutaRpt+'\CobranzaEfectivo.rtm';
      pprCobranza.Template.FileName := wRutaRpt+'\CobranzaEfectivoUsuarios.rtm';
      pprCobranza.Template.LoadFromFile ;

      pprCobranza.DataPipeline:=ppdbCobranza;

      pprCobranza.Print;
      pprCobranza.Stop;

      //ppDesigner1.Show;
    end;
  end;
  pprCobranza.DataPipeline:=Nil;
end;

procedure TFCobranzaEfectivo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFCobranzaEfectivo.rgUsuariosClick(Sender: TObject);
begin
  if rgUsuarios.ItemIndex=1 then
  begin
    edtUsuario.Enabled:=True;
  end
  else
  begin
    edtUsuario.clear;
    edtUsuario.Enabled:=False;
  end;
end;

procedure TFCobranzaEfectivo.NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept:=Lookuptable.locate(TwwDBCustomLookupCombo(Sender).Lookupfield,Newvalue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(sender).dropdown;
end;

procedure TFCobranzaEfectivo.FormActivate(Sender: TObject);
begin
  dblcMoneda.text:='';
  edtUsuario.text:='';
  dbdtpInicio.Date:=date;
  dbdtpFin.Date:=Date;

  xWhere := 'TIPO='+QuotedStr('E');
  dblcdFPagoId.Text := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID, FORPAGODES', xWhere, 'FORPAGOID');
  dbeFormaPago.Text:= dm1.cdsQry.FieldByName('FORPAGODES').AsString;

  xWhere := 'TMONID='+QuotedStr( dm1.wTMonLoc );
  dblcMoneda.Text := DM1.DisplayDescrip('prvSQL', 'TGE103', 'TMONID, TMONDES', xWhere, 'TMONID');
  dbeTMon.Text:= dm1.cdsQry.FieldByName('TMONDES').AsString;
end;

procedure TFCobranzaEfectivo.pprCobranzaPreviewFormCreate(Sender: TObject);
begin
	pprCobranza.PreviewForm.ClientHeight := 500;
	pprCobranza.PreviewForm.ClientWidth  := 650;
	TppViewer(pprCobranza.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;

procedure TFCobranzaEfectivo.dblcdFPagoIdExit(Sender: TObject);
begin
   xWhere := 'FORPAGOID ='+QuotedStr(dblcdFPagoId.Text);
   dbeFormaPago.Text := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGODES', xWhere, 'FORPAGODES');
end;

end.
