unit COB468;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB468
// Formulario                    : FDevoInconsis
// Fecha de Creación             : 15/10/2013
// Autor                         : Sistemas
// Objetivo                      : Consulta de Notas de Devoluciones

// Actualizaciones               :
// HPC_201310_COB    15/10/2013  : Consulta de Notas de Devoluciones
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201311_COB                : 07/11/2013 - Validar impresión de Nota de Devolución
// SPP_201313_COB                : Se realiza el pase a producción a partir de lo indicado en el documento HPC_201311_COB.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ppParameter,
  ppVar, ppBands, ppCtrls, ppReport, ppSubRpt, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ppEndUsr, DB;

type
  TFDevoInconsis = class(TForm)
    BitSalir: TBitBtn;
    dbgData: TwwDBGrid;
    BitPrint: TBitBtn;
    ppDBPi2: TppDBPipeline;
    ppDBPi2ppField1: TppField;
    ppDBPi2ppField2: TppField;
    ppDBPi2ppField3: TppField;
    ppDBPi2ppField4: TppField;
    ppDBPi2ppField5: TppField;
    ppDBPi2ppField6: TppField;
    ppRepDevol: TppReport;
    ppHeaderBand2: TppHeaderBand;
    lblRotPag: TppLabel;
    ppLabel27: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    xxx: TppLabel;
    ppp: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLblNomGen: TppLabel;
    ppLblCodMod: TppLabel;
    ppLblFecDoc: TppLabel;
    ppLblDpto: TppLabel;
    ppLblCodPag: TppLabel;
    ppLblUproc: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLblDesem: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    PPLblDni: TppLabel;
    lblPagEn: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppMeses: TppMemo;
    ppSummaryBand2: TppSummaryBand;
    ppLTotal: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLblMonDev: TppLabel;
    ppLblUsuario: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel51: TppLabel;
    ppLine12: TppLine;
    ppLabel52: TppLabel;
    pplFirmaAso: TppLabel;
    ppParameterList1: TppParameterList;
    ppDesigner1: TppDesigner;
// Inicio: SPP_201313_COB             : 07/11/2013 - Validar impresión de Nota de Devolución
    ppLabel1: TppLabel;
// Fin: SPP_201313_COB                : 07/11/2013 - Validar impresión de Nota de Devolución
    procedure FormActivate(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure dbgDataDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDevoInconsis: TFDevoInconsis;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFDevoInconsis.FormActivate(Sender: TObject);
begin
   dbgData.DataSource:=DM1.dsRepDev;

   TNumericField(DM1.cdsRepDev.FieldByName('IMPORTE')).DisplayFormat := '##,###,##0.00';

   dbgData.Selected.Clear;
   dbgData.Selected.Add('ASOANODEV'#9'06'#9'Año'#9'F'#9'Devolución');
   dbgData.Selected.Add('ASONUMDEV'#9'06'#9'Numero'#9'F'#9'Devolución');
   dbgData.Selected.Add('ASOFECDEV'#9'10'#9'Fecha'#9'F'#9'Devolución');
   dbgData.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular');
   dbgData.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos y Nombre');
   dbgData.Selected.Add('TRANSANO'#9'04'#9'Año');
   dbgData.Selected.Add('TRANSMES'#9'04'#9'Mes');
   dbgData.Selected.Add('IMPORTE'#9'10'#9'Importe');
   dbgData.Selected.Add('UPROID'#9'05'#9'UPRO');
   dbgData.Selected.Add('UPAGOID'#9'05'#9'UPAGO');
   dbgData.Selected.Add('USEID'#9'05'#9'UGEL');
   dbgData.ApplySelected;
end;


procedure TFDevoInconsis.BitPrintClick(Sender: TObject);
Var
   xFrmDes, xTipDes, xMeses, Xsql: String;
   xCremToCob: Currency;
   xLin: Integer;
Begin

// Inicio: SPP_201313_COB                : 07/11/2013 - Validar impresión de Nota de Devolución
   if DM1.cdsRepDev.FieldByName('ASOMONDEV').AsFloat<=0 then
   begin
      ShowMessage('Registro no tiene Nota de Devolución. Revisar...');
      exit;
   end;
// Fin: SPP_201313_COB                : 07/11/2013 - Validar impresión de Nota de Devolución

   xSQL:='SELECT asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, '
        +  'useid, uproid, upagoid, asoresnom, asofresnom, resid, regpenid, asositid, asofact, asotipid, '
        +  'viaid, vianombre, asonumdir, asofdpto, asodpto, zonaid, zonanomb, ubigeoid, dptoid, paisid, '
        +  'refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil, asoruc, estcivid, '
        +  'asosexo, asoemail, bancoid, asoncta, sitcta, asodni, graacid, grainsid, profid, asofmov, '
        +  'asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid, '
        +  'asorescese, asofrescese, fgarante, zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, '
        +  'flgfsol, estclf, observa, usr_crea, fec_crea, usr_ben, fec_ben, ctaser, cargo, variascuot, '
        +  'crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni, '
        +  'asonomdni, asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, '
        +  'dptnacid, prvnacid, dstnacid, vialabid, zonalabid, fecact, indicador, ccosid, password, codafp, '
        +  'deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant, actarcren, '
        +  'reingreso, autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, '
        +  'gencodbar, envautdes, corenvautdes, codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, '
        +  'codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio, codotrdocide, '
        +  'numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, '
        +  'codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg, mdfusrmod, mdffecmod, emicarta, desmanviv, '
        +  'codmotdestcuo, fecactpad, ceneduid, fallecido, tipo_fall_id, en_actualiz, codtiptel1, codreftel1, '
        +  'codtiptel2, codreftel2, codpension, fecregautdesapo, codleypen, numautonp, codblocharen, numblocharen, '
        +  'coddepintren, desdepintren, asoapecasdni, invalidez, tipo_inva_id '
        + 'FROM APO201 '
        +'WHERE ASOID = ' + QuotedStr(DM1.cdsRepDev.FieldByName('ASOID').AsString);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSQL);
   DM1.cdsAso.Open;

   xFrmDes := DM1.cdsRepDev.FieldByName('FORPAGID').AsString ;
   lblPagEn.Visible := False;
   lblRotPag.Visible := False;
   If xFrmDes = '04' Then
   Begin
      xTipDes := 'EFECTIVO';
      lblPagEn.Visible := True;
      lblRotPag.Visible := True;
      ppLblDesem.Caption := xTipDes;
      lblPagEn.Caption := DM1.cdsRepDev.FieldByName('OFDESNOM').AsString ;
   End
   Else
      If xFrmDes = '05' Then
      Begin
         xTipDes := 'GIRO/TRANSFERENCIA';
         ppLblDesem.Caption := 'GIRO : ' + DM1.cdsRepDev.FieldByName('DPTODES').AsString + '- AGENCIA : ' + DM1.cdsRepDev.FieldByName('AGENBCODES').AsString;
      End
      Else
         If xFrmDes = '06' Then
         Begin
            xTipDes := 'CUENTA DE AHORROS';
            ppLblDesem.Caption := xTipDes + ' N: ' + DM1.cdsRepDev.FieldByName('ASOCTAAHO').AsString;
         End;
   ppMeses.Lines.Text := '';
   xCremToCob := 0;
   xMeses := '';

   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('POR CONCEPTO  : DEVOLUCION');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('DEL PERIODO ' + DM1.cdsRepDev.FieldByName('TRANSANO').AsString+' - '+DM1.cdsRepDev.FieldByName('TRANSMES').AsString);
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('---------------------------------------------------------------------');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('Nota :' + DM1.cdsRepDev.FieldByName('ASOOBSERV').AsString);
   ppLblTitulo.Caption := 'NOTA DE DESEMBOLSO : ' + xTipDes + '   N ' + DM1.cdsRepDev.FieldByName('ASONUMDEV').AsString + '-' + DM1.cdsRepDev.FieldByName('ASOANODEV').AsString + '-' + 'DM-COB';
   pplFirmaAso.Caption := trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString);

   PPLblDni.Caption := DM1.cdsAso.FieldByName('ASODNI').AsString;
   ppLblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   ppLblFecDoc.Caption := DM1.cdsRepDev.FieldByName('ASOFECDEV').AsString;
   ppLblDpto.Caption   := DM1.CrgDescrip('DPTOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('DPTOID').AsString)), 'APO158', 'DPTODES');
   ppLblCodPag.Caption := DM1.cdsAso.FieldByName('ASOCODPAGO').AsString;
   ppLblUproc.Caption  := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
   ppLblMonDev.Caption := FormatFloat('###,###.#0', DM1.Valores(DM1.cdsRepDev.FieldByName('ASOMONDEV').AsString));
   ppLblUsuario.Caption:= 'Hecho Por :' + Trim(DM1.cdsRepDev.FieldByName('USUARIO').AsString);

   ppRepDevol.Print;
   ppRepDevol.Cancel

end;

procedure TFDevoInconsis.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFDevoInconsis.dbgDataDblClick(Sender: TObject);
begin
   BitPrintClick(SELF);
end;

end.
