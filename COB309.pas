//** 23/01/2003 - PJSV
unit COB309;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, fcButton, fcImgBtn,
  fcShapeBtn, ComCtrls, Mask, wwdbedit, DBCtrls,db, ppBands, ppClass,
  ppCache, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppReport,
  ppCtrls, ppStrtch, ppMemo, ppVar, ppPrnabl;

type
  TFSeguiRefinan = class(TForm)
    dbgNuevos: TwwDBGrid;
    stRefinan: TStaticText;
    stNuevos: TStaticText;
    pnlCuotasAnt: TPanel;
    Label2: TLabel;
    edtFecOtor: TEdit;
    Label3: TLabel;
    edtmto: TEdit;
    Label4: TLabel;
    edtCuota: TEdit;
    Label5: TLabel;
    edtTipo: TEdit;
    Label6: TLabel;
    edtmoneda: TEdit;
    dbgCuotasAnt: TwwDBGrid;
    dbgRefinan: TwwDBGrid;
    Label1: TLabel;
    edtUse: TEdit;
    pnlDetalle: TPanel;
    stDetalle: TStaticText;
    dbgDetalle: TwwDBGrid;
    z2bbtnAcepta: TfcShapeBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    dbeMtoCuo: TwwDBEdit;
    dbeMtoCob: TwwDBEdit;
    dbeMtosal: TwwDBEdit;
    dbeMtoExc: TwwDBEdit;
    dbeForpago: TwwDBEdit;
    dbeBanco: TwwDBEdit;
    dbeCtacte: TwwDBEdit;
    dbrMoneda: TwwDBEdit;
    dbtTCambio: TwwDBEdit;
    dbeDocu: TwwDBEdit;
    dbremswObs: TDBRichEdit;
    rptNota: TppReport;
    dbeppNota: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel16: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBText15: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText16: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel17: TppLabel;
    ppLine21: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel22: TppLabel;
    ppLine24: TppLine;
    ppLine2: TppLine;
    z2bbtnRefiImp: TfcShapeBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dbgRefinanRowChanged(Sender: TObject);
    procedure dbgCuotasAntDblClick(Sender: TObject);
    procedure z2bbtnAceptaClick(Sender: TObject);
    procedure z2bbtnRefiImpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSeguiRefinan: TFSeguiRefinan;

implementation

uses COBDM1,COB715;

{$R *.DFM}

procedure TFSeguiRefinan.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 Then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;

end;

procedure TFSeguiRefinan.FormActivate(Sender: TObject);
var
 xEstado,xEstid,xSql : String;
begin
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry4.filter := '';
   DM1.cdsQry4.filtered := False;

   FSeguiRefinan.Caption := 'ASOCIADO : '+Dm1.cdsAso.fieldbyname('ASOCODMOD').AsString + ' -- '+
                            Dm1.cdsAso.fieldbyname('ASOAPENOM').AsString;

    //** 23/01/2003 - pjsv, CREDITOS QUE FUERON FREFINANCIADOS
    xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('R'),'ESTDES');
    xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
    xSql := 'SELECT A.CRENEWID,A.ASOID,A.CREDID,A.CREFOTORG,A.CRENUMCUO,A.CREESTADO,A.CREMTOSOL,A.TMONABR,'+
            ' B.USEID,C.CRETCALDES FROM CRE303 A, APO201 B,CRE102 C'+
            ' WHERE A.ASOID ='+quotedstr(Dm1.cdsAso.fieldbyname('ASOID').AsString)+
            ' AND A.CREESTID ='+quotedstr(xEstid)+' AND A.ASOID = B.ASOID'+
            ' AND A.CRETCALID = C.CRETCALID';
    dm1.cdsQry1.close;
    dm1.cdsQry1.DataRequest(xSql);
    dm1.cdsQry1.Open;
    dbgRefinan.Selected.Add('CREDID'#9'15'#9'Número ~Crédito');
    dbgRefinan.Selected.Add('CREESTADO'#9'15'#9'Estado');
    dbgRefinan.Selected.Add('CRENEWID'#9'15'#9'Crédito~Generado');
    dbgRefinan.DataSource := dm1.dsQry1;


    edtUse.text := Dm1.cdsQry1.FieldByName('USEID').AsString;
    edtFecOtor.text :=Dm1.cdsQry1.FieldByName('CREFOTORG').AsString;
    edtmoneda.text :=Dm1.cdsQry1.FieldByName('TMONABR').AsString;
    edtmto.text := Dm1.cdsQry1.FieldByName('CREMTOSOL').AsString;
    edtCuota.text :=Dm1.cdsQry1.FieldByName('CRENUMCUO').AsString;
    edtTipo.text :=Dm1.cdsQry1.FieldByName('CRETCALDES').AsString;

   dbgRefinan.OnRowChanged(dbgRefinan);
end;

procedure TFSeguiRefinan.dbgRefinanRowChanged(Sender: TObject);
var
 xSql: String;
 xTotCre,xtotMot,xCap,xInt,xFlat : Double;
begin
    xSql := 'SELECT CREDID,CREANO,CREMES,CRECUOTA,CREMTO,CRECAPITAL,CREMTOINT,CREMTOFLAT,CREFVEN, '+
            ' CREESTADO FROM CRE302 WHERE ASOID='+quotedstr(DM1.cdsQry1.FieldByName('ASOID').AsString)+
            ' AND CREDID ='+quotedstr(DM1.cdsQry1.FieldByName('CREDID').AsString)+
            ' ORDER BY CREDID,CREANO,CREMES';
    dm1.cdsQry3.close;
    dm1.cdsQry3.DataRequest(xSql);
    dm1.cdsQry3.Open;
    dbgCuotasAnt.Selected.Add('CREANO'#9'5'#9'Año');
    dbgCuotasAnt.Selected.Add('CREMES'#9'2'#9'Mes');
    dbgCuotasAnt.Selected.Add('CRECUOTA'#9'2'#9'Cuo');
    dbgCuotasAnt.Selected.Add('CREFVEN'#9'10'#9'Fecha~Vencimiento');
    dbgCuotasAnt.Selected.Add('CREMTO'#9'10'#9'Monto ~Cuota');
    dbgCuotasAnt.Selected.Add('CRECAPITAL'#9'7'#9'Capital~Amortizado');
    dbgCuotasAnt.Selected.Add('CREMTOINT'#9'6'#9'Interes~Amortizado');
    dbgCuotasAnt.Selected.Add('CREMTOFLAT'#9'6'#9'Gatos~Amortizado');
    dbgCuotasAnt.Selected.Add('CREESTADO'#9'7'#9'ESTADO');
    xTotCre := 0;
    xtotMot :=0;
    xCap := 0;
    xInt := 0;
    xFlat := 0;
    dm1.cdsQry3.disableControls;
    While not dm1.cdsQry3.eof do
     begin
      xTotCre  := xTotCre  + 1;
      xtotMot  := xtotMot + Dm1.cdsQry3.FieldByname('CREMTO').AsFloat;
      xCap     := xCap     + Dm1.cdsQry3.FieldByname('CRECAPITAL').AsFloat;
      xInt     := xInt     + Dm1.cdsQry3.FieldByname('CREMTOINT').AsFloat;
      xFlat    := xFlat    + Dm1.cdsQry3.FieldByname('CREMTOFLAT').AsFloat;
      dm1.cdsQry3.next;
     end;
    dm1.cdsQry3.enableControls;

    dbgCuotasAnt.DataSource := dm1.dsQry3;

    dbgCuotasAnt.ColumnByName('CRECUOTA').FooterValue  := floattostrf(xTotCre , ffNumber, 2,0);
    dbgCuotasAnt.ColumnByName('CREMTO').FooterValue    := floattostrf(xtotMot, ffNumber, 11, 2);
    dbgCuotasAnt.ColumnByName('CRECAPITAL').FooterValue:= floattostrf(xCap    , ffNumber, 8, 2);
    dbgCuotasAnt.ColumnByName('CREMTOINT').FooterValue := floattostrf(xInt    , ffNumber, 5, 2);
    dbgCuotasAnt.ColumnByName('CREMTOFLAT').FooterValue:= floattostrf(xFlat   , ffNumber, 5, 2);

    xSql := 'SELECT CREDID,CREANO,CREMES,CRECUOTA,CREMTO,CREAMORT,CREINTERES,CREFLAT,CREFVEN '+
            ' FROM CRE302 WHERE ASOID='+quotedstr(DM1.cdsQry1.FieldByName('ASOID').AsString)+
            ' AND CREDID ='+quotedstr(DM1.cdsQry1.FieldByName('CRENEWID').AsString)+
            ' ORDER BY CREDID,CREANO,CREMES';
    dm1.cdsQry4.close;
    dm1.cdsQry4.DataRequest(xSql);
    dm1.cdsQry4.Open;
    dbgNuevos.Selected.Add('CREANO'#9'5'#9'Año');
    dbgNuevos.Selected.Add('CREMES'#9'2'#9'Mes');
    dbgNuevos.Selected.Add('CRECUOTA'#9'2'#9'Cuo');
    //dbgNuevos.Selected.Add('CREFVEN'#9'10'#9'Fecha~Vencimiento');
    dbgNuevos.Selected.Add('CREMTO'#9'7'#9'Monto ~Cuota');
    dbgNuevos.Selected.Add('CREAMORT'#9'7'#9'Amortizaión');
    dbgNuevos.Selected.Add('CREINTERES'#9'6'#9'Interes');
    dbgNuevos.Selected.Add('CREFLAT'#9'6'#9'Gatos');
    dbgNuevos.DataSource := dm1.dsQry4;
end;

procedure TFSeguiRefinan.dbgCuotasAntDblClick(Sender: TObject);
var
 xSql : String;
 xTotCuo : double;
begin
   stDetalle.Caption := 'Detalle de Cuota N° '+dm1.cdsQry3.FieldbyName('CRECUOTA').AsString;
   pnlDetalle.Visible := True;
   xSql := 'SELECT A.CRECUOTA,A.CREFPAG,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CREMTOCOB,'+
           ' A.TCAMBIO,B.TMONABR,NVL(A.CREMTODEV,0.00) CREMTODEV, (A.CREMTOCUO - A.CREMTOCOB) MTOSAL,'+
           ' BANCONOM,CCBCOID,CREMTOCUO,CREDOCPAG,CREOBS,FORPAGABR'+
           ' from cre310 A,TGE103 B,TGE105 C WHERE ASOID='+quotedstr(DM1.cdsQry1.FieldByName('ASOID').AsString)+
           ' AND CREDID ='+quotedstr(DM1.cdsQry1.FieldByName('CREDID').AsString)+
           ' AND CRECUOTA = '+quotedstr(DM1.cdsQry3.FieldByName('CRECUOTA').AsString)+
           ' AND A.TMONID=B.TMONID AND A.BANCOID=C.BANCOID';
   dm1.cdsqry5.Close;
   dm1.cdsqry5.DataRequest(xSql);
   dm1.cdsqry5.Open;
   dbgDetalle.Selected.Add('CREFPAG'#9'10'#9'Fecha~Pago');
   dbgDetalle.Selected.Add('TMONABR'#9'3'#9'Moneda');
   dbgDetalle.Selected.Add('CREMTOCOB'#9'10'#9'Cobrado');
   dbgDetalle.Selected.Add('FORPAGABR'#9'25'#9'Forma~Pago');
   dbgDetalle.DataSource := dm1.dsqry5;
   dbemtocuo.DataField := 'CREMTOCUO';
   dbeMtoCob.DataField := 'CREMTOCOB';
   dbeMtoSal.DataField := 'MTOSAL';
   dbeMtoExc.DataField := 'CREMTODEV';
   dbeForpago.DataField := 'FORPAGABR';
   dbeBanco.DataField := 'BANCONOM';
   dbeCtacte.DataField := 'CCBCOID';
   dbrMoneda.DataField := 'TMONABR';
   dbtTCambio.DataField := 'TCAMBIO';
   dbeDocu.DataField := 'CREDOCPAG';
   dbremswObs.DataField := 'CREOBS';
   dm1.cdsqry5.disablecontrols;
   dm1.cdsQry5.first;
   xTotCuo := 0;
   while not dm1.cdsQry5.eof do
    begin
     xTotCuo := xTotCuo + Dm1.cdsQry5.FieldByName('CREMTOCOB').AsFloat;
     dm1.cdsQry5.Next;
    end;
   dm1.cdsqry5.enablecontrols;

   dbgDetalle.ColumnByName('CREMTOCOB').FooterValue  := floattostrf(xTotCuo , ffNumber, 10,2);
end;

procedure TFSeguiRefinan.z2bbtnAceptaClick(Sender: TObject);
begin
   pnlDetalle.Visible := False;
   stDetalle.Caption := 'Detalle de Cuota N° ';
end;

procedure TFSeguiRefinan.z2bbtnRefiImpClick(Sender: TObject);
var
 xSql3,xSql2,xSql1,xEstid,xEstado,xSql : String;
begin
  xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('R'),'ESTDES');
  xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
 xSql := '  SELECT E.COBRADO,E.TCAMBIO,C.FREG,B.CIADES,A.AREADES,''NOTA DE REFINANCIAMIENTO'' TIT1, '+
        '  ''N° ''||C.CREDID NROREFI,C.ASOAPENOM,C.ASOCODMOD,  D.ASOCODPAGO,D.ASONCTA,D.ASODNI, '+
        '  C.CREDID,C.TIPCREDES, C.CREFOTORG,  C.TMONABR,C.CREMTOTAL,E.DETALLE, '+
        '  CASE WHEN C.FLGAUTOMA = ''0'' THEN ''MASIVA'' ELSE ''INDIVIDUAL'' END FORMA '+
        '  FROM CRE117 A,TGE101 B, (SELECT * FROM CRE303 C '+
        '  WHERE C.ASOID = '+quotedstr(FToolRefina.wAsoid)+
        ' AND C.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
        ' ) C, (SELECT D.ASOCODPAGO,D.ASONCTA,D.ASODNI FROM APO201 D '+
        '  WHERE D.ASOID = '+quotedstr(FToolRefina.wAsoid)+') D , '+
        '  (SELECT A.ASOID,A.CREDID,max(A.TCAMBIO) TCAMBIO, CAST('+quotedstr('')+' AS VARCHAR2 (150)) DETALLE, '+
        '  max(e.CREMTOCOB1)+max(e.CREMTOCOB2)+max(e.CREMTOCOB3)+max(e.CREMTOCOB4)+ '+
        '  max(e.CREMTOCOB5)+max(e.CREMTOCOB6)+ max(e.CREMTOCOB7)+max(e.CREMTOCOB8)+ '+
        '  max(e.CREMTOCOB9)+max(e.CREMTOCOB10)+max(e.CREMTOCOB11)+max(e.CREMTOCOB12) COBRADO '+
        '  FROM CRE302 A, (SELECT Z.ASOID,Z.CREDID, '+
        '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
        '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
        '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
        '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
        '  FROM CRE302 Z,(SELECT E.ASOID,E.CREDID, '+
        '  CASE WHEN CAST(E.CREMES AS INTEGER) = 1 THEN SUM(E.CREMTOCOB) END CREMTOCOB1, '+
        '  0 CREMTOCOB2,0 CREMTOCOB3, 0 CREMTOCOB4,0 CREMTOCOB5,0 CREMTOCOB6,0 CREMTOCOB7, '+
        '  0 CREMTOCOB8,0 CREMTOCOB9, 0 CREMTOCOB10,0 CREMTOCOB11,0 CREMTOCOB12 '+
        '  FROM CRE302 E '+
        '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
        '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
        '  AND E.CREESTID ='+quotedstr(xEstid)+
        '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
        '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
        '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
        '  AND Z.CREESTID ='+quotedstr(xEstid)+
        '  GROUP BY Z.ASOID,Z.CREDID UNION ALL SELECT Z.ASOID,Z.CREDID, '+
        '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
        '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
        '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
        '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
        '  FROM CRE302 Z,(SELECT E.ASOID,E.CREDID, 0 CREMTOCOB1, '+
        '  CASE WHEN CAST(E.CREMES AS INTEGER) = 2 THEN SUM(E.CREMTOCOB) END CREMTOCOB2, 0 CREMTOCOB3, '+
        '  0 CREMTOCOB4,0 CREMTOCOB5,0 CREMTOCOB6,0 CREMTOCOB7,0 CREMTOCOB8, '+
        '  0 CREMTOCOB9, 0 CREMTOCOB10,0 CREMTOCOB11,0 CREMTOCOB12 '+
        '  FROM CRE302 E '+
        '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
        '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
        '  AND E.CREESTID ='+quotedstr(xEstid)+
        '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
        '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
        '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
        '  AND Z.CREESTID ='+quotedstr(xEstid)+
        '  GROUP BY Z.ASOID,Z.CREDID UNION ALL SELECT Z.ASOID,Z.CREDID, '+
        '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
        '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
        '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
        '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
        '  FROM CRE302 Z,(SELECT E.ASOID,E.CREDID, 0 CREMTOCOB1,0 CREMTOCOB2, '+
        '  CASE WHEN CAST(E.CREMES AS INTEGER) = 3 THEN SUM(E.CREMTOCOB) END CREMTOCOB3, '+
        '  0 CREMTOCOB4,0 CREMTOCOB5,0 CREMTOCOB6,0 CREMTOCOB7,0 CREMTOCOB8,0 CREMTOCOB9, '+
        '  0 CREMTOCOB10,0 CREMTOCOB11,0 CREMTOCOB12 '+
        '  FROM CRE302 E '+
        '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
        '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
        '  AND E.CREESTID ='+quotedstr(xEstid)+
        '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
        '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
        '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
        '  AND Z.CREESTID ='+quotedstr(xEstid)+
        '  GROUP BY Z.ASOID,Z.CREDID '+
        '  UNION ALL ';
xSql1 :='  SELECT Z.ASOID,Z.CREDID, '+
      '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
      '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
      '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
      '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
      '  FROM CRE302 Z, '+
      '  (SELECT E.ASOID,E.CREDID, 0 CREMTOCOB1, '+
      '  0 CREMTOCOB2,0 CREMTOCOB3, '+
      '  CASE WHEN CAST(E.CREMES AS INTEGER) = 4 THEN SUM(E.CREMTOCOB) END CREMTOCOB4, '+
      '  0 CREMTOCOB5,0 CREMTOCOB6,0 CREMTOCOB7,0 CREMTOCOB8,0 CREMTOCOB9, '+
      '  0 CREMTOCOB10,0 CREMTOCOB11,0 CREMTOCOB12 '+
      '  FROM CRE302 E '+
      '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND E.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
      '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND Z.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY Z.ASOID,Z.CREDID '+
      '  UNION ALL '+
      '  SELECT Z.ASOID,Z.CREDID, '+
      '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
      '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
      '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
      '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
      '  FROM CRE302 Z, '+
      '  (SELECT E.ASOID,E.CREDID, 0 CREMTOCOB1, '+
      '  0 CREMTOCOB2,0 CREMTOCOB3,0 CREMTOCOB4, '+
      '  CASE WHEN CAST(E.CREMES AS INTEGER) = 5 THEN SUM(E.CREMTOCOB) END CREMTOCOB5, '+
      '  0 CREMTOCOB6,0 CREMTOCOB7,0 CREMTOCOB8,0 CREMTOCOB9, 0 CREMTOCOB10, '+
      '  0 CREMTOCOB11,0 CREMTOCOB12 '+
      '  FROM CRE302 E '+
      '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND E.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
      '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND Z.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY Z.ASOID,Z.CREDID '+
      '  UNION ALL '+
      '  SELECT Z.ASOID,Z.CREDID, '+
      '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
      '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
      '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
      '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
      '  FROM CRE302 Z,(SELECT E.ASOID,E.CREDID, 0 CREMTOCOB1,0 CREMTOCOB2,0 CREMTOCOB3,0 CREMTOCOB4, '+
      '  0 CREMTOCOB5, CASE WHEN CAST(E.CREMES AS INTEGER) = 6 THEN SUM(E.CREMTOCOB) END CREMTOCOB6, '+
      '  0 CREMTOCOB7,0 CREMTOCOB8,0 CREMTOCOB9, 0 CREMTOCOB10,0 CREMTOCOB11, '+
      '  0 CREMTOCOB12 FROM CRE302 E '+
      '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND E.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
      '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND Z.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY Z.ASOID,Z.CREDID ';
xSql2 :='  UNION ALL '+
      '  SELECT Z.ASOID,Z.CREDID, '+
      '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
      '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
      '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
      '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
      '  FROM CRE302 Z, '+
      '  (SELECT E.ASOID,E.CREDID,0 CREMTOCOB1,0 CREMTOCOB2,0 CREMTOCOB3,0 CREMTOCOB4, '+
      '  0 CREMTOCOB5,0 CREMTOCOB6, '+
      '  CASE WHEN CAST(E.CREMES AS INTEGER) = 7 THEN SUM(E.CREMTOCOB) END CREMTOCOB7, '+
      '  0 CREMTOCOB8,0 CREMTOCOB9,0 CREMTOCOB10,0 CREMTOCOB11,0 CREMTOCOB12 '+
      '  FROM CRE302 E '+
      '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND E.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
      '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND Z.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY Z.ASOID,Z.CREDID '+
      '  UNION ALL '+
      '  SELECT Z.ASOID,Z.CREDID, '+
      '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
      '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
      '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
      '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
      '  FROM CRE302 Z, '+
      '  (SELECT E.ASOID,E.CREDID, 0 CREMTOCOB1,0 CREMTOCOB2,0 CREMTOCOB3,0 CREMTOCOB4, '+
      '  0 CREMTOCOB5,0 CREMTOCOB6, 0 CREMTOCOB7, '+
      '  CASE WHEN CAST(E.CREMES AS INTEGER) = 8 THEN SUM(E.CREMTOCOB) END CREMTOCOB8, '+
      '  0 CREMTOCOB9, 0 CREMTOCOB10,0 CREMTOCOB11,0 CREMTOCOB12 '+
      '  FROM CRE302 E '+
      '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND E.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
      '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND Z.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY Z.ASOID,Z.CREDID '+
      '  UNION ALL '+
      '  SELECT Z.ASOID,Z.CREDID, '+
      '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
      '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
      '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
      '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
      '  FROM CRE302 Z, '+
      '  (SELECT E.ASOID,E.CREDID, 0 CREMTOCOB1, '+
      '  0 CREMTOCOB2,0 CREMTOCOB3,0 CREMTOCOB4, 0 CREMTOCOB5,0 CREMTOCOB6, '+
      '  0 CREMTOCOB7, 0 CREMTOCOB8, '+
      '  CASE WHEN CAST(E.CREMES AS INTEGER) = 9 THEN SUM(E.CREMTOCOB) END CREMTOCOB9, '+
      '  0 CREMTOCOB10,0 CREMTOCOB11,0 CREMTOCOB12 '+
      '  FROM CRE302 E '+
      '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND E.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
      '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND Z.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY Z.ASOID,Z.CREDID ';
xSql3:='  UNION ALL '+
      '  SELECT Z.ASOID,Z.CREDID, '+
      '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
      '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
      '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
      '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
      '  FROM CRE302 Z, '+
      '  (SELECT E.ASOID,E.CREDID, 0 CREMTOCOB1,0 CREMTOCOB2,0 CREMTOCOB3,0 CREMTOCOB4, '+
      '  0 CREMTOCOB5,0 CREMTOCOB6, 0 CREMTOCOB7, 0 CREMTOCOB8, 0 CREMTOCOB9, '+
      '  CASE WHEN CAST(E.CREMES AS INTEGER) = 10 THEN SUM(E.CREMTOCOB) END CREMTOCOB10, '+
      '  0 CREMTOCOB11,0 CREMTOCOB12 '+
      '  FROM CRE302 E '+
      '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND E.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
      '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND Z.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY Z.ASOID,Z.CREDID '+
      '  UNION ALL '+
      '  SELECT Z.ASOID,Z.CREDID, '+
      '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
      '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
      '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
      '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
      '  FROM CRE302 Z, '+
      '  (SELECT E.ASOID,E.CREDID, 0 CREMTOCOB1, '+
      '  0 CREMTOCOB2,0 CREMTOCOB3,0 CREMTOCOB4, 0 CREMTOCOB5,0 CREMTOCOB6, '+
      '  0 CREMTOCOB7, 0 CREMTOCOB8, 0 CREMTOCOB9, 0 CREMTOCOB10, '+
      '  CASE WHEN CAST(E.CREMES AS INTEGER) = 11 THEN SUM(E.CREMTOCOB) END CREMTOCOB11, '+
      '  0 CREMTOCOB12 '+
      '  FROM CRE302 E '+
      '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND E.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
      '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND Z.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY Z.ASOID,Z.CREDID '+
      '  UNION ALL '+
      '  SELECT Z.ASOID,Z.CREDID, '+
      '  MAX(E.CREMTOCOB1) CREMTOCOB1,MAX(E.CREMTOCOB2) CREMTOCOB2,MAX(E.CREMTOCOB3) CREMTOCOB3, '+
      '  MAX(E.CREMTOCOB4) CREMTOCOB4,MAX(E.CREMTOCOB5) CREMTOCOB5,MAX(E.CREMTOCOB6) CREMTOCOB6, '+
      '  MAX(E.CREMTOCOB7) CREMTOCOB7,MAX(E.CREMTOCOB8) CREMTOCOB8,MAX(E.CREMTOCOB9) CREMTOCOB9, '+
      '  MAX(E.CREMTOCOB10) CREMTOCOB10,MAX(E.CREMTOCOB11) CREMTOCOB11,MAX(E.CREMTOCOB12) CREMTOCOB12 '+
      '  FROM CRE302 Z, '+
      '  (SELECT E.ASOID,E.CREDID,  0 CREMTOCOB1,0 CREMTOCOB2,0 CREMTOCOB3,0 CREMTOCOB4, '+
      '  0 CREMTOCOB5,0 CREMTOCOB6, 0 CREMTOCOB7, 0 CREMTOCOB8, 0 CREMTOCOB9, '+
      '  0 CREMTOCOB10, 0 CREMTOCOB11, '+
      '  CASE WHEN CAST(E.CREMES AS INTEGER) = 12 THEN SUM(E.CREMTOCOB) END CREMTOCOB12 '+
      '  FROM CRE302 E '+
      '  WHERE E.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  E.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND E.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY E.ASOID,E.CREDID,E.CREMES) E '+
      '  WHERE Z.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      '  AND  Z.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      '  AND Z.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY Z.ASOID,Z.CREDID ) E '+
      '  WHERE A.ASOID = '+quotedstr(FToolRefina.wAsoid)+
      ' AND A.CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
      ' AND A.CREESTID ='+quotedstr(xEstid)+
      '  GROUP BY A.ASOID,A.CREDID ) E '+
      '  WHERE B.CNTCONSOL = ''S'' AND A.MODULOID = ''COB'' ';
  dm1.cdsQry.Close;
  dm1.cdsQry.DataRequest(xSql+xSql1+xSql2+xSql3);
  dm1.cdsQry.Open;

xSql := 'SELECT'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 1 THEN ''ENE ''||CREANO END DETALLE1,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 2 THEN ''FEB ''||CREANO END DETALLE2,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 3 THEN ''MAR ''||CREANO END DETALLE3,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 4 THEN ''ABR ''||CREANO END DETALLE4,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 5 THEN ''MAY ''||CREANO END DETALLE5,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 6 THEN ''JUN ''||CREANO END DETALLE6,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 7 THEN ''JUL ''||CREANO END DETALLE7,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 8 THEN ''AGO ''||CREANO END DETALLE8,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 9 THEN ''SET ''||CREANO END DETALLE9,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 10 THEN ''OCT ''||CREANO END DETALLE10,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 11 THEN ''NOV ''||CREANO END DETALLE11,'+
     ' CASE WHEN CAST(CREMES AS INTEGER) = 12 THEN ''DIC ''||CREANO END DETALLE12'+
     ' FROM CRE302 '+
     '  WHERE ASOID = '+quotedstr(FToolRefina.wAsoid)+
     ' AND CREDID = '+quotedstr(dm1.cdsQry1.FieldByName('CREDID').AsString)+
     ' AND CREESTID ='+quotedstr(xEstid);
  dm1.cdsReporte.Close;
  dm1.cdsReporte.DataRequest(xSql);
  dm1.cdsReporte.Open;

  dm1.cdsReporte.First;
  while not dm1.cdsReporte.eof do
   begin
    If dm1.cdsReporte.FieldByName('DETALLE1').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE1').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE2').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE2').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE3').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE3').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE4').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE4').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE5').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE5').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE6').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE6').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE7').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE7').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE8').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE8').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE9').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE9').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE10').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE10').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE11').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE11').AsString+' - ';
     end;
    If dm1.cdsReporte.FieldByName('DETALLE12').AsString <> '' then
     begin
      dm1.cdsQry.Edit;
      dm1.cdsQry.FieldByName('DETALLE').AsString := dm1.cdsQry.FieldByName('DETALLE').AsString +
                                                    dm1.cdsReporte.FieldByName('DETALLE12').AsString+' - ';
     end;
    dm1.cdsReporte.next;
   end;
  dm1.cdsQry.Last;
  dm1.cdsQry.Edit;
   dm1.cdsQry.FieldByName('DETALLE').AsString := copy(dm1.cdsQry.FieldByName('DETALLE').AsString,1,length(dm1.cdsQry.FieldByName('DETALLE').AsString)-2);

  dbeppNota.DataSource := dm1.dsQry;
  rptNota.DataPipeline := dbeppNota;
  rptNota.Template.FileName := wRutaRpt+'\RefiMasivo.rtm';
  rptNota.Template.LoadFromFile ;
  rptNota.print;
  rptNota.Stop;

end;

end.

