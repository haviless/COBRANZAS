unit COB780;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, Buttons, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppCtrls,
  ppVar, ppPrnabl, ppBands, ComCtrls;

type
  TFRepCxC = class(TForm)
    dblcbPeriodo: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    ppDBRepCxC: TppDBPipeline;
    ppRRepCxC: TppReport;
    pb1: TProgressBar;
    Label1: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    pplblPeriodo: TppLabel;
    pplblCia: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine2: TppLine;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepCxC: TFRepCxC;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFRepCxC.FormActivate(Sender: TObject);
var
   xSQL: string;
begin
  xSQL:= 'SELECT ANOMES FROM TGE813';
  DM1.cdsQry.indexFieldnames:='';
  DM1.cdsQry.Filter:='';
  DM1.cdsQry.Filtered:= true;
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  dblcbPeriodo.LookupTable:= DM1.cdsQry;
  dblcbPeriodo.LookupField:= 'ANOMES';  

  dblcbPeriodo.Clear;
  dblcbPeriodo.Selected.Add('ANOMES'#9'6'#9'Periodo');


end;

procedure TFRepCxC.BitBtn1Click(Sender: TObject);
var
  xSQL,xAno,xMes : string;
  xContDif,xContDev : double;

begin
  if length(Trim(dblcbPeriodo.text))=0 then
     raise exception.create('Ingrese Periodo');

  Screen.cursor:= crHourGlass;

  xAno:=Copy(dblcbPeriodo.text,1,4);
  xMes:=Copy(dblcbPeriodo.text,5,2);
  xContDev:=0;
  xContDif:=0;

  xSQL := ' SELECT TIPCREID,TIPCREDES,0.00 MOVIMIENTO,0.00 DEVENGADO,0.00 DIFERIDO, '+
          ' 0.00 TOTAL FROM CRE110 ORDER BY TIPCREID';
  DM1.cdsReporte.IndexFieldNames:='';
  DM1.cdsReporte.Filter:='';
  DM1.cdsReporte.Filtered:= false;
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSQL);
  DM1.cdsReporte.Open;
  DM1.cdsReporte.IndexFieldNames:='TIPCREID';
  pb1.Max := DM1.cdsReporte.recordcount;
  DM1.cdsReporte.First;

  while not DM1.cdsReporte.Eof do
  begin
  //Devengados
{     xTotDev:= xTotDev+(DM1.cdsQry4.fieldbyname('CREAMORT').Asfloat+DM1.cdsQry4.fieldbyname('CREINTERES').Asfloat+
                      + DM1.cdsQry4.fieldbyname('CREFLAT').AsFloat);}

      xSQL:=  ' SELECT TIPCREID,COUNT(*) TIPO ,SUM(DV1) DEVENGADO FROM('+
              ' SELECT TIPCREID,(NVL(CREAMORT,0)+ NVL(CREINTERES,0)+NVL(CREFLAT,0)) DV1 '+
              ' FROM CRE302 '+
              ' WHERE '+
              ' TIPCREID='+Quotedstr(DM1.cdsReporte.fieldbyname('TIPCREID').AsString)+
              ' AND (CREESTID=''11'' or CREESTID=''27'') AND '+
              ' ((CREANO < '+Quotedstr(xAno)+') OR (CREANO = '+Quotedstr(xAno)+' AND CREMES < '+Quotedstr(xMes)+')) )XX'+
              ' GROUP BY TIPCREID ';

      label1.Caption := DM1.cdsReporte.fieldbyname('TIPCREID').AsString;
      label1.Refresh;
{      if DM1.cdsReporte.fieldbyname('TIPCREID').AsString='24' then
         Showmessage('Iniciando');}

      DM1.cdsQry2.IndexFieldNames:='';
      DM1.cdsQry2.Filter:='';
      DM1.cdsQry2.Filtered:= false;
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;

//diferidos
{     xTotDif:= xTotDif+(DM1.cdsQry3.fieldbyname('CREAMORT').Asfloat+DM1.cdsQry3.fieldbyname('CREINTERES').Asfloat+
                      + DM1.cdsQry3.fieldbyname('CREFLAT').Asfloat-(DM1.cdsQry3.fieldbyname('CRECAPITAL').Asfloat+
                        DM1.cdsQry3.fieldbyname('CREMTOINT').Asfloat+DM1.cdsQry3.fieldbyname('CREMTOFLAT').Asfloat) );}

      xSQL:= ' SELECT TIPCREID,COUNT(*) TIPO ,SUM(D1) DIF1 '+
             ' FROM ('+
             ' SELECT TIPCREID,((NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)) - '+
             ' (NVL(CRECAPITAL,0)+NVL(CREMTOINT,0)+NVL(CREMTOFLAT,0)) )D1'+

             ' FROM CRE302 '+
             ' WHERE '+
             ' TIPCREID='+Quotedstr(DM1.cdsReporte.fieldbyname('TIPCREID').AsString)+
             ' AND (CREESTID=''02'' or creestid=''27'') and '+
             ' (CREANO >= '+Quotedstr(xAno)+' AND CREMES >= '+Quotedstr(xMes)+') )XX'+
              ' GROUP BY TIPCREID ';
      DM1.cdsQry3.IndexFieldNames:='';
      DM1.cdsQry3.Filter:='';
      DM1.cdsQry3.Filtered:= false;
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(xSQL);
      DM1.cdsQry3.Open;

      DM1.cdsReporte.Edit;
      DM1.cdsReporte.FieldByName('MOVIMIENTO').AsFloat := DM1.cdsQry2.fieldbyname('TIPO').AsFloat+DM1.cdsQry3.fieldbyname('TIPO').AsFloat;
      DM1.cdsReporte.FieldByName('DEVENGADO').AsFloat  := DM1.cdsQry2.fieldbyname('DEVENGADO').AsFloat;
//      DM1.cdsReporte.FieldByName('DIFERIDO').AsFloat   := DM1.cdsQry3.fieldbyname('DIF1').AsFloat-DM1.cdsQry3.fieldbyname('DIF2').AsFloat;
      DM1.cdsReporte.FieldByName('DIFERIDO').AsFloat   := DM1.cdsQry3.fieldbyname('DIF1').AsFloat;
      DM1.cdsReporte.FieldByName('TOTAL').AsFloat      := DM1.cdsReporte.FieldByName('DEVENGADO').AsFloat+DM1.cdsReporte.FieldByName('DIFERIDO').AsFloat;
      DM1.cdsReporte.Post;
      DM1.cdsReporte.Next;
      pb1.Position:= pb1.Position+1;
  end;



  //** tipos de creditos devengados
{  xSQL:=  'SELECT TIPCREID,COUNT(TIPCREID) TIPO '+
          'FROM CRE302 '+
          'WHERE (CREESTID=''11'' or CREESTID=''27'') and '+
          '  ((CREANO < '+Quotedstr(xAno)+') OR (CREANO = '+Quotedstr(xAno)+' AND CREMES < '+Quotedstr(xMes)+')) '+
          'GROUP BY TIPCREID ';

  DM1.cdsReporte1.IndexFieldNames:='';
  DM1.cdsReporte1.Filter:='';
  DM1.cdsReporte1.Filtered:= false;
  DM1.cdsReporte1.Close;
  DM1.cdsReporte1.DataRequest(xSQL);
  DM1.cdsReporte1.Open;
  DM1.cdsReporte1.IndexFieldNames:='TIPCREID';

  //** tipos de creditos diferidos

  xSQL:= ' SELECT tipcreid,COUNT(TIPCREID) TIPO '+
          '  FROM CRE302 '+
          '  WHERE (creestid=''02'' or creestid=''27'') and '+
          '    (CREANO >= '+Quotedstr(xAno)+' AND CREMES >= '+Quotedstr(xMes)+') '+
          '  GROUP BY TIPCREID ';
  DM1.cdsQry2.IndexFieldNames:='';
  DM1.cdsQry2.Filter:='';
  DM1.cdsQry2.Filtered:= false;
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;
  DM1.cdsQry2.IndexFieldNames:='TIPCREID';}

  //** montos de creditos diferidos
{  xSQL:= ' SELECT TIPCREID,CREAMORT,CREINTERES,CREFLAT, '+
         ' CRECAPITAL, CREMTOINT,CREMTOFLAT '+
         ' from cre302 '+
         ' WHERE (creestid=''02'' or creestid=''27'') and '+
         ' ((CREANO > '+Quotedstr(xAno)+') OR (CREANO >= '+Quotedstr(xAno)+' AND CREMES >= '+Quotedstr(xMes)+')) ';

  DM1.cdsQry3.Filter:='';
  DM1.cdsQry3.Filtered:= false;
  DM1.cdsQry3.IndexFieldNames:='';
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(xSQL);
  DM1.cdsQry3.Open;
//  DM1.cdsQry3.IndexFieldNames:='TIPCREID';

  //** montos de creditos devengados
  xSQL:= ' SELECT tipcreid,CREAMORT,CREINTERES,CREFLAT, '+
         ' CRECAPITAL, CREMTOINT,CREMTOFLAT '+
         ' FROM CRE302 '+
         ' WHERE (creestid=''11'' or creestid=''27'') and '+
         ' ((CREANO < '+Quotedstr(xAno)+') OR (CREANO = '+Quotedstr(xAno)+' AND CREMES < '+Quotedstr(xMes)+')) ';
//         ' ORDER TIPCREID ';

  DM1.cdsQry4.ProviderName:='prvQry';
  DM1.cdsQry4.IndexFieldNames:='';
  DM1.cdsQry4.Filter:='';
  DM1.cdsQry4.Filtered:= false;
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSQL);
  DM1.cdsQry4.Open;
//  DM1.cdsQry4.IndexFieldNames:='TIPCREID';

  pb1.Max := DM1.cdsQry4.recordcount+DM1.cdsQry3.recordcount+DM1.cdsReporte.recordcount;


  //Diferidos
  xTotDif  :=0;
  xContDif :=0;
  DM1.cdsQry3.First;
  xTipCred:= DM1.cdsQry3.fieldbyname('TIPCREID').AsString;
  while not DM1.cdsQry3.Eof do
  begin
     xTotDif:= xTotDif+(DM1.cdsQry3.fieldbyname('CREAMORT').Asfloat+DM1.cdsQry3.fieldbyname('CREINTERES').Asfloat+
                      + DM1.cdsQry3.fieldbyname('CREFLAT').Asfloat-(DM1.cdsQry3.fieldbyname('CRECAPITAL').Asfloat+
                        DM1.cdsQry3.fieldbyname('CREMTOINT').Asfloat+DM1.cdsQry3.fieldbyname('CREMTOFLAT').Asfloat) );
     xContDif:= xContDif+1;
     DM1.cdsQry3.Next;
     pb1.Position:= pb1.Position+1;
     if (xTipCred<>DM1.cdsQry3.fieldbyname('TIPCREID').AsString) or DM1.cdsQry3.Eof then
     begin
       DM1.cdsReporte.SetKey;
       DM1.cdsReporte.FieldByName('TIPCREID').AsString:= xTipCred;
       if DM1.cdsReporte.GotoKey then
       begin
          DM1.cdsReporte.Edit;
          DM1.cdsReporte.FieldByName('DIFERIDO').AsFloat:= xTotDif;
          DM1.cdsReporte.FieldByName('MOVIMIENTO').AsFloat:=DM1.cdsReporte.FieldByName('MOVIMIENTO').AsFloat+xContDif;

          DM1.cdsReporte.Post;
       end;
       xTotDif :=0;
       xContDif   :=0;
       xTipCred:=DM1.cdsQry3.fieldbyname('TIPCREID').AsString;
     end;

  end;

  //Devengados
  xTotDev  :=0;
  xContDev :=0;
  DM1.cdsQry4.First;
  xTipCred:= DM1.cdsQry4.fieldbyname('TIPCREID').AsString;
  while not DM1.cdsQry4.Eof do
  begin
     xTotDev:= xTotDev+(DM1.cdsQry4.fieldbyname('CREAMORT').Asfloat+DM1.cdsQry4.fieldbyname('CREINTERES').Asfloat+
                      + DM1.cdsQry4.fieldbyname('CREFLAT').AsFloat);
     xContDev:= xContDev+1;
     DM1.cdsQry4.Next;
     pb1.Position:= pb1.Position+1;
     if (xTipCred<>DM1.cdsQry4.fieldbyname('TIPCREID').AsString) or DM1.cdsQry3.Eof then
     begin
       DM1.cdsReporte.SetKey;
       DM1.cdsReporte.FieldByName('TIPCREID').AsString:= xTipCred;
       if DM1.cdsReporte.GotoKey then
       begin
          DM1.cdsReporte.Edit;
          DM1.cdsReporte.FieldByName('DIFERIDO').AsFloat:= xTotDev;
          DM1.cdsReporte.FieldByName('MOVIMIENTO').AsFloat:=DM1.cdsReporte.FieldByName('MOVIMIENTO').AsFloat+xContDev;
          DM1.cdsReporte.Post;
       end;
       xTotDev:=0;
       xContDev:=0;
       xTipCred:=DM1.cdsQry4.fieldbyname('TIPCREID').AsString;
     end;

  end;}

  //
{  DM1.cdsReporte.First;
  while not DM1.cdsReporte.Eof do
  begin
     DM1.cdsReporte1.SetKey;
     DM1.cdsReporte1.FieldByName('TIPCREID').AsString:=DM1.cdsReporte.FieldByName('TIPCREID').AsString;
     if DM1.cdsReporte1.GotoKey then
     begin
        DM1.cdsReporte.Edit;
        DM1.cdsReporte.FieldByName('MOVIMIENTO').AsFloat:=DM1.cdsReporte.FieldByName('MOVIMIENTO').AsFloat+DM1.cdsReporte1.FieldByName('TIPO').AsFloat;
        DM1.cdsReporte.Post;
     end;

     DM1.cdsQry2.SetKey;
     DM1.cdsQry2.FieldByName('TIPCREID').AsString:=DM1.cdsReporte.FieldByName('TIPCREID').AsString;
     if DM1.cdsQry2.GotoKey then
     begin
        DM1.cdsReporte.Edit;
        DM1.cdsReporte.FieldByName('MOVIMIENTO').AsFloat:=DM1.cdsReporte.FieldByName('MOVIMIENTO').AsFloat+DM1.cdsQry2.FieldByName('TIPO').AsFloat;
        DM1.cdsReporte.Post;
     end;

     DM1.cdsReporte.Edit;
     DM1.cdsReporte.FieldByName('TOTAL').AsFloat:= DM1.cdsReporte.FieldByName('DEVENGADO').AsFloat+DM1.cdsReporte.FieldByName('DIFERIDO').AsFloat;
     DM1.cdsReporte.Post;

     DM1.cdsReporte.Next;
     pb1.Position:= pb1.Position+1;
  end;}
  Screen.cursor:= crDefault;
  ppDBRepCxC.DataSource:= DM1.dsReporte;
  ppRRepCxC.TEMPLATE.FileName :=(ExtractFilePath( application.ExeName ) + wRutaRpt +'\RepCxC.rtm');
  ppRRepCxC.template.LoadFromFile ;

  ppRRepCxC.Print;


end;

end.
