// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB524A
// Formulario           : FFSCCreditos
// Fecha de Creación    :
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Muestra individualmente por asociado los Crédito(s) para las Aplicaciones al FSC
// Actualizaciones      :
//HPC_201524_COB        :Creación del Formulario
//HPC_201715_COB        :Realizar las mejoras en el proceso de generación de candidatos INTERINOS para ser cancelados con el F.S.C.

//Inicio HPC_201524_COB
unit COB524A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons,DB, ppEndUsr, ppDB,
  ppDBPipe, ppParameter, ppBands, ppClass, ppReport, ppStrtch, ppSubRpt,
  ppCtrls, jpeg, ppPrnabl, ppVar, ppCache, ppComm, ppRelatv, ppProd;

type
  TFFSCCreditos = class(TForm)
    GroupBox1: TGroupBox;
    DBGCreditosFSC: TwwDBGrid;
    SpeedButton2: TSpeedButton;
    ppREstCta: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel21: TppLabel;
    ppLblCodMod: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    pplblTipCre: TppLabel;
    pplblNomGen: TppLabel;
    pplblNumPre: TppLabel;
    ppLabel25: TppLabel;
    pplblFecPre: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    pplblUse: TppLabel;
    pplblMonto: TppLabel;
    ppLabel28: TppLabel;
    pplblNumCuo: TppLabel;
    ppLabel29: TppLabel;
    pplblTipCli: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppShpImg: TppShape;
    ppImage1: TppImage;
    ppLabel20: TppLabel;
    ppLabel16: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLblInt: TppLabel;
    ppLblFlat: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLblCuenta: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLblOriOto: TppLabel;
    pplblRotulo: TppLabel;
    pplblRot02: TppLabel;
    ppLblTipDes: TppLabel;
    ppLblEstado: TppLabel;
    ppLblCuotas: TppLabel;
    ppLabel76: TppLabel;
    ppLabel71: TppLabel;
    ppLabel70: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    pplblTipCliOtorg: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLblRegimen: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLblDirDom: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLblTelefono: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLblDiasAtraso: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLblFirmoAutorizacion: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLblProvision: TppLabel;
    ppLabel102: TppLabel;
    ppLabel136: TppLabel;
    ppLblDesgravamen: TppLabel;
    lblGasRef: TppLabel;
    lblMonGasRef: TppLabel;
    ppLabel30: TppLabel;
    ppLabel166: TppLabel;
    ppImage3: TppImage;
    ppDetailBand2: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel31: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel32: TppLabel;
    lblSalTot: TppLabel;
    ppLabel33: TppLabel;
    ppLabel43: TppLabel;
    ppLblCuoVen: TppLabel;
    pplblCuoPen: TppLabel;
    ppLabel56: TppLabel;
    pplblMonPag: TppLabel;
    ppLNota1: TppLabel;
    ppLine17: TppLine;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLblUser: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLblApro: TppLabel;
    ppLNota2: TppLabel;
    ppLabel61: TppLabel;
    lblVen: TppLabel;
    lblPen: TppLabel;
    lblTot: TppLabel;
    ppLabel69: TppLabel;
    ppLabel75: TppLabel;
    ppLabel74: TppLabel;
    ppLabel73: TppLabel;
    ppLabel72: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLblCuoDif: TppLabel;
    lblDif: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppRepCCI: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape6: TppShape;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel176: TppLabel;
    ppLabel180: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel181: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine25: TppLine;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppLabel182: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    lblGas02: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppParameterList2: TppParameterList;
    ppDBEstCta: TppDBPipeline;
    ppDesigner2: TppDesigner;
    ppDBCCI: TppDBPipeline;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure sumafooterCREDITOS;
  public
    Function CalculaProvision(xAsoID: String): Currency;
    procedure imprCronograma;    
    { Public declarations }
  end;

var
  FFSCCreditos: TFFSCCreditos;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFFSCCreditos.imprCronograma;
Var
   xSql, xAsoId, xCredId, xfVenc, xfCalc: String;
   xSalAnt, xSalVen, xSalDif, xCuoProCob: Currency;
   xCuoPen, xCuoVen, xCuoDif: Integer;
   xRegistro: TBookmark;
   xProvision: Currency;
   xGasRef:Currency;
   xsDescripcionTipo,xCondicion : string;
   xInterno,xFoto : string;
Begin


   DM1.xHis :='N';
   xInterno :='N';
   xFoto    :='N';

   xAsoId  := DM1.CdsConsulta.FieldByName('ASOID').AsString;
   xCredId := DM1.CdsConsulta.FieldByName('CREDID').AsString;

   If Length(Trim(xCredId))=0 Then
   Begin
    ShowMessage('El registro no tienen número de crédito para mostrar');
    exit;
   End;

   XSQL:='SELECT asoid, asocodmod, asocodpago, tipcreid, tmonid, creano, cremes, cresaldo, crecuota, cremto, creamort, '+
         'creinteres, creflat, crefven, crefpag, useid, uproid, dptoid, upagoid, bancoid, ccbcoid, nroope, foperac, tcambio,'+
	      'cremtocob, cremonloc, cremonext, usuario, freg, hreg, forpagoid, crefdev, crefrecl, asoapenom, agenbcoid, crecapital,'+
		   'cremtoint, cremtoflat, crenewid, fnabono, credid, cretcalid, tipdeseid, tmonabr, cretcalabr, tipdesabr, tipcreabr,'+
		   'forpagoabr, listaabr, ciaid, creestid, creestado, crecom, creseg, crepor, cregadm, crecomp, cremora, cremtocom,'+
		   'cremtoseg, cremtopor, cremtogadm, cremtocomp, cremtomora, listaid, asocodaux, nronabo, ciudid, flgpag, archivoftp,'+
		   'crebloq, crebloqfec, crebloqobs, credidnabo, creinfo, cremtoexc, areaid, credocpag, flagvar, crecapcron, creintcron,'+
		   'creflacron, cremtoan, creamortan, creinteresan, creflatan, flagnvint, desblofec, usubloq, usudesbloq, nrorefinan,'+
		   'creflgexc, crefecexc, flgint, nroopetmp, foperactmp, flgdesmar, usudesmar, fecdesmar, obsdesmar, cremtodev, crecapcon,'+
		   'flginconsis, creaplexc, tipnabo, perproc, fecproc, flgproc, percob, creestidant, saldosbs, creanoini, cremesini, '+
		   'crecuotaini, crefvenini, crecuotaini2, crefvenini2, crecuotaini3, crefvenini3, flarep, monpacdesgrav, moncobdesgrav,'+
		   'fecvenori, numcuoori '+
         ' FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid));
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(XSQL);
   DM1.cdsCuotas.Open;

   XSQL:='SELECT asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid, upagoid, asoresnom, asofresnom,'+ 
         'resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto, asodpto, zonaid, zonanomb, ubigeoid, dptoid,'+ 
         'paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil, asoruc, estcivid, asosexo, asoemail, bancoid, asoncta,'+ 
         'sitcta, asodni, graacid, grainsid, profid, asofmov, asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid,'+
         'asorescese, asofrescese, fgarante, zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea,'+ 
         'usr_ben, fec_ben, ctaser, cargo, variascuot, crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni,'+ 
         'asonomdni, asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid,'+ 
         'zonalabid, fecact, indicador, ccosid, password, codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant,'+ 
         'actarcren, reingreso, autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, gencodbar, envautdes, corenvautdes,'+
         'codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio,'+ 
         'codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg,'+ 
         'mdfusrmod, mdffecmod, emicarta, desmanviv, codmotdestcuo, fecactpad, ceneduid, fallecido, tipo_fall_id, en_actualiz, codtiptel1, codreftel1, codtiptel2,'+ 
         'codreftel2, codpension, fecregautdesapo, codleypen, numautonp, codblocharen, numblocharen, coddepintren, desdepintren, asoapecasdni, invalidez,'+ 
         'tipo_inva_id, fecautonp, asoaptser, fecactsit, codreglab, usuautonp, oriopeonp '+
         'FROM APO201 WHERE   ASOID=' + QuotedStr(Trim(xAsoId));
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(XSQL);
   DM1.cdsAso.Open;

   XSQL:='SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,'+
         'a.tipcreid, a.asoid, a.asocodmod, a.asocodpago, a.asoapenom, a.useid, a.crefotorg, a.crefecini, a.cremtosol, a.cremtootor, a.cremtogir, '+
         'a.creinteres, a.credflat, a.crecuota, a.crenumcuo,a.creluggiro,a.bancoid, a.crenumcta, a.cremtopag, a.cresdoact, a.crepergra, a.crecuopag,'+
         'a.crecuoenv, a.creperiodi, a.cremtotal, a.crecappgo, a.crenewid, a.cresaldot, a.usuario, a.freg, a.hreg, a.ofdesid, a.calificaid, a.apruebaid,'+
         'a.creestado, a.tmonid, a.cuotaini, a.upagoid, a.uproid, a.dptoid, a.listaid, a.credid, a.crecom, a.creseg, a.crepor, a.cregadm, a.crecomp, a.cremora,'+
         'a.forpagoid, a.cretcalid, a.tmonabr, a.cretcalabr, a.listaabr, a.forpagoabr, a.ciaid, a.crefrecl, a.creestid, a.creanomes, a.nropagare, a.nroautdes, '+
         'a.tipcredes, a.garapenom, a.garasoid, a.asocodaux, a.nronabo, a.numref, a.fecref, a.tiporef, a.nroficio, a.ciudid, a.archivoftp, a.agenbancoid, a.dptogiro, '+
         'a.useidgar, a.tipdeseid, a.bcogiro, a.cremtonabo, a.creffinpag, a.crefinipag, a.crebloqfec, a.usubloq, a.crebloq, a.flgcaja, a.fechacaja, a.crenumcomp,'+
         'a.ccosid, a.cuentah, a.cuentad, a.cregencob, a.flgautoma, a.refanomes, a.nrorefinan, a.cajausu, a.horacaja, a.asotipid, a.asodni, a.anulacaja, a.men_anu,'+
         'a.mot_pre, a.numrefi, a.flgrefi, a.crefcan, a.flginconsis, a.perconta, a.c_abn, a.cntanomm, a.fec_rcp, a.crecapliq, a.crefdes, a.cremenobs, a.tipocont,'+
         'a.cntflag, a.cremtodep, a.crefanul, a.useranul, a.cresumcuo, a.cremotext, a.nroficio_bck, a.migrado, a.usuautcre, a.fecautcre, a.estautcre, a.comautcre,'+
         'a.usuanusup, a.fecanusup, a.motanusup, a.estanusup, a.docid, a.ccserie, a.ccnodoc, a.ciaser, a.cremonins, a.impcon, a.dniruc, a.fecimpcon, a.codarchivo,'+
         'a.cremtoapo, a.autdescre, a.fecautdes, a.usuautdes, a.impcaraut, a.nrocaraut, a.diasproc, a.descenv, a.autdesges, a.usudesges, a.fechordesges, a.usumodcuo,'+
         'a.fecmodcuo, a.motmodcuo, a.tasfondes, a.nroautonp, a.fecenvbcp, a.estenvbcp, a.feccobbcp, a.codagebcp, a.impcaronp, a.monintpro, a.mespergra '+
         'FROM CRE301 a,CRE110 b '+
         'Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId)) + ' AND a.Credid='+QuotedStr(Trim(xCreDid))+' Order By a.CREFOTORG ';
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest(XSQL);
   DM1.cdsSolicitud.Open;


   xRegistro := DM1.cdsCuotas.GetBookmark;
   DM1.xSgr := 'REP';

      xsql:='Select Asoid,Credid,Crecuota,Nroope,Foperac,Creamort,Creinteres,Creflat,Moncobdesgrav,Cremtocob ' +
            ' From CRE310 where Asoid='''+xAsoid+''' And Credid='''+xCredid+''' And Forpagid=''99'' And Creestid not in (''13'',''04'',''99'') '+
            'Order by crecuota,Foperac';
      DM1.cdsCuentas.Close;
      DM1.cdsCuentas.DataRequest(xsql);
      DM1.cdsCuentas.Open;
      ppDBCCI.DataSource := DM1.dsCuentas;
   Begin
      lblSalTot.Caption := FormatFloat('###,###.00', DM1.SaldoActual(xAsoId, xCreDid, '1'));
      ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      If Length(Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)) > 0 Then
      BEGIN
        if ((Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) = '10') AND (Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 9, 1) = 'A')) then
           xsDescripcionTipo := 'AMPLIACIÓN DE PLAZO'
        else
           xsDescripcionTipo := DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');
        pplblTipCre.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    ['+xsDescripcionTipo+']'
      END
      Else
         pplblTipCre.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    [NORMAL]';
      ppLblEstado.Caption := DM1.cdsSolicitud.FieldByName('CREESTADO').AsString;
      pplblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
      ppLblCuenta.Caption := DM1.cdsAso.FieldByName('ASONCTA').AsString + ' - [' + DM1.cdsAso.FieldByName('SITCTA').AsString + ']';
      pplblNumPre.Caption := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
      pplblFecPre.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
      ppLblOriOto.Caption := Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2) + ' -  ' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2))), 'APO110', 'OFDESNOM');
      xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
      pplblUse.Caption  := DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');
      pplblMonto.Caption := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
      pplblNumCuo.Caption := FormatFloat('###,###', DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsFloat);
      ppLblInt.Caption := FormatFloat('##0.#0', DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat);
      ppLblFlat.Caption := FormatFloat('##0.#0', DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat);
      ppLblDesgravamen.Caption := FormatFloat('##0.000', DM1.cdsSolicitud.FieldByName('TASFONDES').AsFloat);
      // Muestra la situación (Tipo de Asociado) con el cual se generó el crédito
      pplblTipCliOtorg.Caption := DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString, 'ASOTIPDES');
      pplblTipCli.Caption := DM1.cdsAso.fieldbyname('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsAso.fieldbyname('ASOTIPID').AsString, 'ASOTIPDES');
      if ((Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) = '10') AND (Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 9, 1) = 'A')) then
         ppLblTipDes.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) + '- AMPLIACIÓN DE PLAZO'
      else
         ppLblTipDes.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) + '-' + DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');
   End;
   DM1.cdsCuotas.First;
   xSalAnt := 0;
   xSalVen := 0;
   xSalDif := 0;
   xCuoProCob := 0;
   xCuoVen := 0;
   xCuoPen := 0;
   xCuoDif := 0;
   xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   xGasRef := 0;
   While Not DM1.cdsCuotas.Eof Do
   Begin
      If DM1.xHis <> 'S' Then
      Begin
        If (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString <> DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) And ((DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27')) Then
        Begin
           xCuoDif := xCuoDif + 1;
           xSalDif := xSalDif + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
        End;
      end;

      If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '14') Then
         xCuoProCob := xCuoProCob + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);

      If DM1.xHis <> 'S' Then
      Begin
         If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27') Then
         Begin
            xfVenc := Trim(DM1.cdsCuotas.fieldbyname('CREANO').AsString + DM1.cdsCuotas.fieldbyname('CREMES').AsString);
            If (xfVenc > xfCalc) And (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) Then
            Begin
               xSalAnt := xSalAnt + (DM1.cdsCuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency + DM1.cdsCuotas.fieldbyname('MONPACDESGRAV').AsCurrency) - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency;
               xCuoPen := xCuoPen + 1;
            End
            Else
               If DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString Then
               Begin
                  xSalVen := xSalVen + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
                  xCuoVen := xCuoVen + 1;
               End;
         End;
      end;

      xGasRef := xGasRef + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency ;
      DM1.cdsCuotas.Next;
   End;
   lblDif.Caption := '(' + FormatFloat('###,##0', xCuoDif) + ')';
   lblVen.Caption := '(' + FormatFloat('###,##0', xCuoVen) + ')';
   lblPen.Caption := '(' + FormatFloat('###,##0', xCuoPen) + ')';
   lblTot.Caption := '(' + FormatFloat('###,##0', xCuoVen + xCuoPen + xCuoDif) + ')';

   If Copy(xCredId,9,1)='R' Then
      Begin
        lblMonGasRef.Caption:=FormatFloat('##,###,##0.#0', xGasRef);
        lblGas02.Caption:='REF(S/.)';
        lblGasRef.Visible:=True;
        lblMonGasRef.Visible:=True;
      End;

   Begin
      If DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString = '18' Then
         ppLNota2.Caption := 'POR EL "BANCO DE LA NACION"'
      Else
         ppLNota2.Caption := 'POR "PLANILLA DE HABERES"';
   End;
   ppLblCuoDif.Caption := FormatFloat('###,###.00', xSalDif);
   ppLblCuoVen.Caption := FormatFloat('###,###.00', xSalVen);
   pplblCuoPen.Caption := FormatFloat('###,###.00', xSalAnt);
   pplblMonPag.Caption := FormatFloat('###,###.00', xSalVen + xSalAnt + xSalDif);
   DM1.cdsAbonoCuotas.Close;
   xSQL := 'SELECT COUNT(ASOID) AS CUOPEN '
      + 'FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(Trim(xAsoId))
      + '  AND CREDID=' + QuotedStr(Trim(xCreDid))
      + '  AND CREESTID IN (''02'',''11'',''27'') ';
   DM1.cdsAbonoCuotas.DataRequest(xSQL);
   DM1.cdsAbonoCuotas.Open;
   ppLblCuotas.Caption := '( ' + lblTot.Caption + '-Cuotas Por Pagar )';
   DM1.cdsAbonoCuotas.Close;
   DM1.cdsAsoX.Close;

   If DM1.xHis = 'N' Then
      xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CREMTO, '
         + '       CASE WHEN CREFVEN<>CREFVENINI THEN ''(D)'' ELSE NULL END AS REPRO ,  '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREAMORT,0) ELSE NVL(CRECAPITAL,0) END AS AMORT, '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREINTERES,0) ELSE NVL(CREMTOINT,0) END AS INTER, '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREFLAT,0) ELSE NVL(CREMTOFLAT,0) END AS GASTO, '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(MONPACDESGRAV,0) ELSE NVL(MONCOBDESGRAV,0) END AS DESGRAVAMEN, '
         + '       NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) CREMTOEXC,CREESTADO '
         + '  FROM CRE302 '
         + ' WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid))
         + ' ORDER BY CREDID,CRECUOTA'
   Else

      xSQL := 'SELECT A.ASOID, A.CREDID, SUBSTR(FEC_VEN,1,4) CREANO, '
         + '       SUBSTR(FEC_VEN,5,2) CREMES,TO_DATE(FEC_VEN,''YYYY-MM-DD'') CREFVEN, '
         + '       AMO_PAG AMORT, INT_PAG INTER,GAS_PAG GASTO, NVL(DESGRAV_PAG,0) DESGRAVAMEN, NVL(MON_PAG,0) AS CREMTOCOB, '
         + '       NVL(MON_CUO,0) AS CREMTO, '' '' REPRO, TO_NUMBER(ITE_CUO) CRECUOTA, '
         + '       CASE WHEN A.CREESTADO IS NOT NULL THEN A.CREESTADO ELSE B.CREESTADO END CREESTADO, '
         + '       CASE WHEN A.CREESTID IS NOT NULL THEN A.CREESTID ELSE B.CREESTID END CREESTADO, '
         + '       AMO_ACT CREAMORT,GAS_ACT CREFLAT,'' '' FLAGVAR,NVL(EXC_PAG,0) CREMTOEXC '
         + ' FROM PAGO A, PREST B '
         + ' Where A.ASOID =' + QuotedStr(Trim(xAsoId)) + ' And A.CREDID=' + QuotedStr(Trim(xCreDid))
         + '   and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) '
         + ' Order By CREDID, CRECUOTA ';

   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   ppLblTitulo.Caption := 'CRONOGRAMA DE PAGOS N°: ' + pplblNumPre.Caption + '    al: ' + DateToStr(DM1.FechaSys);
   If xFoto = 'S' Then
   Begin
      ppShpImg.Visible := True;
      ppImage1.Visible := True;
      DM1.CargaImagenesDNI(trim(DM1.cdsAso.FieldByName('ASODNI').AsString), 'FotoCronog');
   End
   Else
   Begin
      ppShpImg.Visible := False;
      ppImage1.Visible := False;
   End;
   ppLblUser.Caption := 'Impreso por   : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
   ppLblApro.Caption := 'Otorgado por  : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('USUARIO').AsString)), 'TGE006', 'USERNOM');

   If xInterno = 'S' Then
   Begin
      ppLabel81.Visible := true;
      ppLabel82.Visible := true;
      ppLblRegimen.Visible := true;
      ppLblRegimen.Caption := DM1.CrgDescrip('REGPENID=' + DM1.cdsAso.FieldByName('REGPENID').AsString, 'APO105', 'REGPENDES');
      ppLabel83.Visible := true;
      ppLabel84.Visible := true;
      ppLblDirDom.Visible := true;
      ppLblDirDom.Caption := Copy(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASODIR'), 1, 47);
      ppLabel85.Visible := true;
      ppLabel86.Visible := true;
      ppLblTelefono.Visible := true;
      ppLblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTELF1');
      ppLabel87.Visible := true;
      ppLabel88.Visible := true;
      ppLblDiasAtraso.Visible := true;
      xSQL := 'SELECT MAX(TRUNC(SYSDATE) - CREFVEN) DIASATRASO'
         + ' FROM CRE302 '
         + ' Where ASOID = ' + QuotedStr(Trim(xAsoId)) + ' And CREDID = ' + QuotedStr(Trim(xCreDid))
         + '    AND CREESTID IN (''02'', ''11'', ''14'', ''27'')'
         + '    AND (NVL(CREMTO,0) - NVL(CREMTOCOB,0)) > 0'
         + ' Order By CREDID,CRECUOTA ';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;

      If (DM1.cdsQry6.RecordCount > 0) And (DM1.cdsQry6.FieldByName('DIASATRASO').AsInteger > 0) Then
      Begin
         ppLblDiasAtraso.Caption := DM1.cdsQry6.FieldByName('DIASATRASO').AsString;
      End
      Else
      Begin
         ppLblDiasAtraso.Caption := '0';
      End;
      DM1.cdsQry6.Close;

      If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO' Then
      Begin
         ppLabel89.Visible := true;
         ppLabel90.Visible := true;
         ppLblFirmoAutorizacion.Visible := true;
         If DM1.cdsAso.FieldByName('AUTDESAPO').AsString = 'S' Then
            ppLblFirmoAutorizacion.Caption := 'Si'
         Else
            ppLblFirmoAutorizacion.Caption := 'No';
      End
      Else
      Begin
         ppLabel89.Visible := false;
         ppLabel90.Visible := false;
         ppLblFirmoAutorizacion.Visible := false;
      End;

      ppLabel91.Visible := true;
      ppLabel92.Visible := true;
      ppLblProvision.Visible := true;
      xProvision := CalculaProvision(xAsoId);
      ppLblProvision.Caption := FormatFloat('###,##0.00', xProvision);
   End
   Else
   Begin
      ppLabel81.Visible := false;
      ppLabel82.Visible := false;
      ppLblRegimen.Visible := false;
      ppLabel83.Visible := false;
      ppLabel84.Visible := false;
      ppLblDirDom.Visible := false;
      ppLabel85.Visible := false;
      ppLabel86.Visible := false;
      ppLblTelefono.Visible := false;
      ppLabel87.Visible := false;
      ppLabel88.Visible := false;
      ppLblDiasAtraso.Visible := false;
      ppLabel89.Visible := false;
      ppLabel90.Visible := false;
      ppLblFirmoAutorizacion.Visible := false;
      ppLabel91.Visible := false;
      ppLabel92.Visible := false;
      ppLblProvision.Visible := false;
   End;

   ppREstCta.Print;
   ppREstCta.Cancel;
   DM1.cdsAsoX.Close;
   DM1.cdsFormaPago.Close;
   DM1.cdsCuotas.GotoBookmark(xRegistro);

End;

function TFFSCCreditos.CalculaProvision(xAsoID: String): Currency;
Var
   xProvision: Currency;
   xPeriodo, xSql: String;
Begin

   xProvision := 0;
  //obtiene el ultimo periodo de saldos internos
   xSql := 'SELECT MAX(PERIODO) PERIODO FROM CFC000 where 1 = 1';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSql);
   DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      xPeriodo := DM1.cdsQry2.FieldByName('PERIODO').AsString;
   End;

  //calcula la provision
   xSql := 'SELECT (NVL(SALDO_CB,0)*B.P_CB)/ 100 + (NVL(SALDO_NC,0)*B.P_NC)/ 100 PROVISION '
      + ' FROM CFC000 A, COB113 B'
      + ' WHERE A.ASOID = ' + QuotedStr(xAsoID) + ' AND A.PERIODO = ' + QuotedStr(xPeriodo)
      + ' AND A.CFC_F = B.RESUMEID';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSql);
   DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      xProvision := DM1.cdsQry2.FieldByName('PROVISION').AsVariant;
   End;
   Result := xProvision;

End;

procedure TFFSCCreditos.SpeedButton2Click(Sender: TObject);
begin
imprCronograma;
end;

procedure TFFSCCreditos.FormCreate(Sender: TObject);
begin
   DBGCreditosFSC.Selected.Clear;
   DBGCreditosFSC.Selected.Add('ASOTIPID'#9'2'#9'Tipo'#9#9);   
   DBGCreditosFSC.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Modular'#9#9);
   DBGCreditosFSC.Selected.Add('CREDID'#9'15'#9'N° Crédito'#9#9);
   DBGCreditosFSC.Selected.Add('TIPCREDES'#9'15'#9'Tipo Crédito'#9#9);
   DBGCreditosFSC.Selected.Add('CREFOTORG'#9'10'#9'Fec.Otorg.'#9#9);
   DBGCreditosFSC.Selected.Add('ATRASO'#9'05'#9'Atraso'#9#9);   
   DBGCreditosFSC.Selected.Add('CREMTOOTOR'#9'10'#9'Imp.Otorg.'#9#9);
   DBGCreditosFSC.Selected.Add('CRESDOACT'#9'13'#9'Saldo'#9#9);
//Inicio HPC_201715_COB
//Realizar las mejoras en el proceso de generación de candidatos INTERINOS para ser cancelados con el F.S.C.
   DBGCreditosFSC.Selected.Add('ESTADO'#9'13'#9'Inv/Fall'#9#9);
//Final HPC_201715_COB
   DBGCreditosFSC.ApplySelected;
   TNumericField(DM1.cdsConsulta.fieldbyname('CRESDOACT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsConsulta.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,###,##0.#0';
end;

procedure TFFSCCreditos.sumafooterCREDITOS;
var total : double;
begin
  DM1.cdsConsulta.First;
  total:=0;
  While Not DM1.cdsConsulta.Eof do
  Begin
    total := total+DM1.cdsConsulta.FieldByname('CRESDOACT').AsFloat;
    DM1.cdsConsulta.Next;
  End;
  DBGCreditosFSC.ColumnByName('TIPCREDES').FooterValue := 'Total';
  DBGCreditosFSC.ColumnByName('CRESDOACT').FooterValue := FormatFloat('###,###,##0.00', total);
end;

procedure TFFSCCreditos.FormShow(Sender: TObject);
begin
   sumafooterCREDITOS;
   DM1.cdsConsulta.First;
end;

end.
//Final HPC_201524_COB
