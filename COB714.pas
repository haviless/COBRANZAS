unit COB714;

interface

uses
  Windows,  SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, ppProd, ppClass, ppReport, ppComm,
  ppTypes, ppRelatv, ppCache, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppVar,
  DBCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit, fcButton,
  fcImgBtn, fcShapeBtn, ppViewr, wwdbdatetimepicker, Spin, ppEndUsr;

type
  TFToolCtaxCob = class(TForm)
    pnlBot: TPanel;
    ppRepCtaxCob: TppReport;
    bbtnRep: TfcShapeBtn;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    pplblTitulo1: TppLabel;
    ppLabel21: TppLabel;
    ppDBText5: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppdbRepCtaxCob: TppDBPipeline;
    dblcUProId: TwwDBLookupCombo;
    dbeUPro: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    seano: TSpinEdit;
    semes: TSpinEdit;
    rgEscoge: TRadioGroup;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDesigner1: TppDesigner;
    procedure dblcUProIdExit(Sender: TObject);
    procedure bbtnRepClick(Sender: TObject);
    procedure ppRepCtaxCobPreviewFormCreate(Sender: TObject);
    procedure rgEscogeClick(Sender: TObject);
    procedure semesExit(Sender: TObject);
  private
    { Private declarations }
    xEstid1,xEstado1,xEstid0,xEstado0 : String;
    xEstid2,xEstado2,xEstid3,xEstado3 : String;
  public
    { Public declarations }
  end;

var
  FToolCtaxCob: TFToolCtaxCob;

implementation

uses COB001, COBDM1;

{$R *.DFM}

procedure TFToolCtaxCob.dblcUProIdExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(dblcUProId.Text);
   dbeUPro.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
end;

procedure TFToolCtaxCob.bbtnRepClick(Sender: TObject);
var
 xMes,xSql : String;
 x10 : integer;
begin
    //** V  me indica que no pagados
    xEstado0 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
    xEstid0  := DM1.cdsQry.FieldByName('ESTID').AsString;
    //** V  me indica que SON  parciales
    xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
    xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;

    //** N me indica que SON por cobrar
    xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
    xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
  Screen.Cursor := crHourglass;
  case rgEscoge.itemindex of
   1 : xSql := 'select a.tipcredes,b.tipcreid,b.uproid,b.useid,SUM(B.CUOTADE) CUOTADE,SUM(B.CUOTADI) CUOTADI,'+
            'SUM(b.devengado) DEVENGADO,SUM(b.diferido) DIFERIDO,c.upronom,d.usenom,e.ciades,'+
            'SUM(B.CUOTADE + B.CUOTADI) TOTACUO,SUM(B.DEVENGADO + B.DIFERIDO) TOTAMON'+
            ' from cre110 a,apo102 c, apo101 d,tge101 e,'+
            ' (select tipcreid,uproid,useid,count(crecuota) cuotaDE,0 CUOTADI,'+
            ' sum(creamort+creinteres+creflat) devengado,0 diferido'+
            ' from cre302'+
            ' where creestid = '+quotedstr(xEstid0)+' and uproid = '+quotedstr(dblcUProId.text)+
            ' and creano <= '+quotedstr(IntToStr(seano.value))+' and cremes <= '+
            quotedstr(Dm1.strZero(InttoStr(semes.value),2))+
            ' group by tipcreid,uproid,useid'+
            ' union all'+
            ' select tipcreid,uproid,useid,count(crecuota) cuotaDE,0 CUOTADI,'+
            ' sum((creamort+creinteres+creflat)-(crecapital+cremtoint+cremtoflat)) devengado,'+
            ' 0 diferido from cre302'+
            ' where creestid = '+quotedstr(xEstid1)+' and uproid = '+quotedstr(dblcUProId.text)+
            ' and creano <= '+quotedstr(IntToStr(seano.value))+' and cremes <= '+
            quotedstr(Dm1.strZero(InttoStr(semes.value),2))+
            ' group by tipcreid,uproid,useid'+
            ' union all select tipcreid,uproid,useid,0 CUOTADI,count(crecuota) cuotaDE, 0 devengado,'+
            ' sum((creamort+creflat)-(crecapital+cremtoflat)) diferido from cre302'+
            ' where creestid = '+quotedstr(xEstid1)+' and  uproid = '+quotedstr(dblcUProId.text)+
            ' and creano >= '+quotedstr(IntToStr(seano.value))+' and cremes > '+
            quotedstr(Dm1.strZero(InttoStr(semes.value),2))+
            ' group by tipcreid,uproid,useid union all'+
            ' select tipcreid,uproid,useid,0 CUOTADI,count(crecuota) cuotaDE,0 devengado,'+
            ' sum((creamort+creflat)-(crecapital+cremtoflat)) diferido from cre302'+
            ' where creestid = '+quotedstr(xEstid2)+' and  uproid = '+quotedstr(dblcUProId.text)+
            ' and creano >= '+quotedstr(IntToStr(seano.value))+' and cremes > '+
            quotedstr(Dm1.strZero(InttoStr(semes.value),2))+
            ' group by tipcreid,uproid,useid) B'+
            ' where a.tipcreid = b.tipcreid and'+
            ' c.uproid = '+quotedstr(dblcUProId.text)+' and '+
            ' c.uproid = b.uproid and d.useid = b.useid and e.cntconsol = ''S'''+
            ' GROUP BY a.tipcredes,b.tipcreid,b.uproid,b.useid,c.upronom,d.usenom,e.ciades';

   0 : xSql := 'select a.tipcredes,b.tipcreid,b.uproid,b.useid,SUM(B.CUOTADE) CUOTADE,SUM(B.CUOTADI) CUOTADI,'+
            'SUM(b.devengado) DEVENGADO,SUM(b.diferido) DIFERIDO,c.upronom,d.usenom,e.ciades,'+
            'SUM(B.CUOTADE + B.CUOTADI) TOTACUO,SUM(B.DEVENGADO + B.DIFERIDO) TOTAMON'+
            ' from cre110 a,apo102 c, apo101 d,tge101 e,'+
            ' (select tipcreid,uproid,useid,count(crecuota) cuotaDE,0 CUOTADI,'+
            ' sum(creamort+creinteres+creflat) devengado,0 diferido'+
            ' from cre302'+
            ' where creestid = '+quotedstr(xEstid0)+
            ' and creano <= '+quotedstr(IntToStr(seano.value))+' and cremes <= '+
            quotedstr(Dm1.strZero(InttoStr(semes.value),2))+
            ' group by tipcreid,uproid,useid'+
            ' union all'+
            ' select tipcreid,uproid,useid,count(crecuota) cuotaDE,0 CUOTADI,'+
            ' sum((creamort+creinteres+creflat)-(crecapital+cremtoint+cremtoflat)) devengado,'+
            ' 0 diferido from cre302'+
            ' where creestid = '+quotedstr(xEstid1)+
            ' and creano <= '+quotedstr(IntToStr(seano.value))+' and cremes <= '+
            quotedstr(Dm1.strZero(InttoStr(semes.value),2))+
            ' group by tipcreid,uproid,useid'+
            ' union all select tipcreid,uproid,useid,0 CUOTADI,count(crecuota) cuotaDE, 0 devengado,'+
            ' sum((creamort+creflat)-(crecapital+cremtoflat)) diferido from cre302'+
            ' where creestid = '+quotedstr(xEstid1)+
            ' and creano >= '+quotedstr(IntToStr(seano.value))+' and cremes > '+
            quotedstr(Dm1.strZero(InttoStr(semes.value),2))+
            ' group by tipcreid,uproid,useid union all'+
            ' select tipcreid,uproid,useid,0 CUOTADI,count(crecuota) cuotaDE,  0 devengado,'+
            ' sum((creamort+creflat)-(crecapital+cremtoflat)) diferido from cre302'+
            ' where creestid = '+quotedstr(xEstid2)+
            ' and creano >= '+quotedstr(IntToStr(seano.value))+' and cremes > '+
            quotedstr(Dm1.strZero(InttoStr(semes.value),2))+
            ' group by tipcreid,uproid,useid) B'+
            ' where a.tipcreid = b.tipcreid and'+
            ' c.uproid = b.uproid and d.useid = b.useid and e.cntconsol = ''S'''+
            ' GROUP BY a.tipcredes,b.tipcreid,b.uproid,b.useid,c.upronom,d.usenom,e.ciades';
  end;

  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  ppdbRepCtaxCob.DataSource := DM1.dsReporte;

  ppRepCtaxCob.Template.FileName := wRutaRpt +'\CtaxCob.rtm';
  ppRepCtaxCob.Template.LoadFromFile ;

  If semes.value = 1 then xMes := 'ENERO' else
  If semes.value = 1 then xMes := 'FEBRERO' else
  If semes.value = 1 then xMes := 'MARZO' else
  If semes.value = 1 then xMes := 'ABRIL' else
  If semes.value = 1 then xMes := 'MAYO' else
  If semes.value = 1 then xMes := 'JUNIO' else
  If semes.value = 1 then xMes := 'JULIO' else
  If semes.value = 1 then xMes := 'AGOSTO' else
  If semes.value = 1 then xMes := 'SETIEMBRE' else
  If semes.value = 1 then xMes := 'OCTUBRE' else
  If semes.value = 1 then xMes := 'NOVIEMBRE' else
  If semes.value = 1 then xMes := 'DICIEMBRE';

  pplblTitulo1.Caption := 'CUENTAS POR COBRAR A '+ xMes + ' del ' + IntToStr(seano.value);


  Screen.Cursor := crHourglass;
   ppRepCtaxCob.Print;
   ppRepCtaxCob.Stop;
//   ppDesigner1.Show;

   x10 := Self.ComponentCount - 1;
   While x10 > 0 do
    begin
     If Self.Components[x10].ClassName = 'TppGroup' Then
      begin
       Self.Components[x10].Free;
      end;
     x10 := x10 - 1;
    end;
   Screen.Cursor := crDefault;
end;

procedure TFToolCtaxCob.ppRepCtaxCobPreviewFormCreate(Sender: TObject);
begin
   ppRepCtaxCob.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepCtaxCob.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolCtaxCob.rgEscogeClick(Sender: TObject);
begin
    dblcUProId.Text := '';
    dbeUPro.text := '';
    dblcUProId.enabled := rgEscoge.Itemindex = 1;
end;

procedure TFToolCtaxCob.semesExit(Sender: TObject);
begin
  semes.Text:=dm1.StrZero(semes.Text,2);
end;

end.


