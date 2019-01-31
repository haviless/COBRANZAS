// Inicio Uso Estándares   : 01/08/2011
// Unidad		           : COB454A.pas
// Formulario		       : FCronoCerradoONP
// Fecha de Creación       : 05/03/2018
// Autor			       : Área de Desarrollo de Sistemas
// Objetivo		           : Muestra los Cronogramas Cerrados por ONP

// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
// HPC_201820_COB : Se modifica forma de devoluciones de cronogramas cerrados
//                  Se añade devoluciones por montos minimos y fallecidos 
// COB_201824_HPC : Mejoras en la aplicación de Pagos por Resolver
unit COB454A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, fcTreeView, FileCtrl, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache,
  DB, DBClient, fcButton, fcImgBtn, fcShapeBtn, wwdblook, Wwdbdlg, ComCtrls,
  ppVar, DBGrids, Mask, fcLabel, ppDBBDE, ppParameter,Mant, ppEndUsr,
  ppStrtch, ppMemo;

type
    TFCronoCerradoONP = class(TForm)
    BtnCerrar: TBitBtn;
    dtgData: TDBGrid;
    dbgCronogramaCerradoONP: TwwDBGrid;
    btnEnviaDevoONP: TBitBtn;
    btnExcelONP: TBitBtn;
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
    ppLabel1: TppLabel;
    ppParameterList1: TppParameterList;
    ppDBPi2: TppDBPipeline;
    ppDBPi2ppField1: TppField;
    ppDBPi2ppField2: TppField;
    ppDBPi2ppField3: TppField;
    ppDBPi2ppField4: TppField;
    ppDBPi2ppField5: TppField;
    ppDBPi2ppField6: TppField;
    ppDesigner1: TppDesigner;

    procedure BtnCerrarClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnEnviaDevoONPClick(Sender: TObject);
    procedure dbgCronogramaCerradoONPDblClick(Sender: TObject);

    procedure BitPrintClick(Sender: TObject);
//Inicio HPC_201820_COB 
//Se adiciona color roja a los registro desaprobados
    procedure dbgCronogramaCerradoONPCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
//Fin HPC_201820_COB

  private
    { Private declarations }
  public
    { Public declarations }
    xflgDev43:STRING;
    // Inicio: HPC_201820_COB
    // Se añaden nuevos procedimientos
    procedure ActualizarGrid;
    procedure ActualizarGridCronoCerrado;
    // Fin: HPC_201820_COB
  end;
var
  FCronoCerradoONP: TFCronoCerradoONP;

implementation

uses COBDM1, COB314, COB429, COB433, COB434, COB445, COB443, COB451,
  COB453, COB460,COB467, COB001, COB428;

{$R *.dfm}

procedure TFCronoCerradoONP.BtnCerrarClick(Sender: TObject);
begin
FCronoCerradoONP.Close;
end;

procedure TFCronoCerradoONP.btnAExcelClick(Sender: TObject);
begin
    DM1.HojaExcel('CronogramaCerrados', self.dtgData.DataSource, self.dtgData);
end;

procedure TFCronoCerradoONP.FormActivate(Sender: TObject);
Var xSql:String;
    xMonTot:Double;
Begin
  xMonTot := 0;
  While Not DM1.cdsTDoc.Eof Do
  Begin
     xMonTot := xMonTot + DM1.cdsTDoc.FieldByName('IMPORTE').AsFloat;
     DM1.cdsTDoc.Next;
  End;
  DM1.cdsTDoc.First;
  dbgCronogramaCerradoONP.DataSource:= DM1.dsTDoc;
  dtgData.DataSource:= DM1.dsTDoc;
  dbgCronogramaCerradoONP.Selected.Clear;
  dbgCronogramaCerradoONP.Selected.Add('ASOCODMOD'#9'12'#9'Código~Modular'#9#9);
  dbgCronogramaCerradoONP.Selected.Add('ASOAPENOM'#9'48'#9'Apellidos y~Nombre(s)'#9#9);
  dbgCronogramaCerradoONP.Selected.Add('FEC_OPERACION'#9'10'#9'Fecha de ~Pago'#9#9);
  dbgCronogramaCerradoONP.Selected.Add('NRO_OPERACION'#9'12'#9'Número de~Operación'#9#9);
  dbgCronogramaCerradoONP.Selected.Add('IMPORTE'#9'15'#9'Monto No~Registrado'#9#9);
  dbgCronogramaCerradoONP.Selected.Add('ESTADO'#9'15'#9'Estado'#9#9);
  dbgCronogramaCerradoONP.ApplySelected;
  TNumericField(DM1.cdsTDoc.FieldByName('IMPORTE')).DisplayFormat := '###,###,##0.00';
  dbgCronogramaCerradoONP.ColumnByName('NRO_OPERACION').FooterValue :='Total';
  dbgCronogramaCerradoONP.ColumnByName('IMPORTE').FooterValue := FloatToStrF(xMonTot, ffNumber, 10, 2);
end;

procedure TFCronoCerradoONP.btnEnviaDevoONPClick(Sender: TObject);
var
    xSql, xflgDev, xflgDev43: String;
    xaprobado: boolean;
    xcordev: String;
    Mtx : TMant;
begin
      // Inicio: HPC_201820_COB
      // Se modifica proceso de solictud de devolución
      // Montos minimos y asociados fallecidos cronogramas cerrados 
      xflgDev43 := '';
      ActualizarGrid;
      // xSql :=  'SELECT A.ASOID, '+
      // ' C.FALLECIDO, '+
      // ' A.OFIDES, '+
      // ' A.FORPAGID, '+
      // ' A.NRO_OPERACION, '+
      // ' A.NRO_OPERACION NROOPE, '+
      // ' A.FEC_OPERACION, '+
      // ' A.FEC_OPERACION FOPERAC, '+
      // ' A.FEC_OPERACION CREFPAG, '+
      // ' TO_CHAR(A.FEC_OPERACION, ''YYYY'') TRANSANO, '+
      // ' TO_CHAR(A.FEC_OPERACION, ''MM'') TRANSMES, '+
      // ' A.UPROID, '+
      // ' A.UPAGOID, '+
      // ' A.USEID, '+
      // ' A.ASOCODMOD, '+
      // ' A.ASOAPENOM, '+
      // ' A.BANCOID, '+
      // ' A.CCBCOID, '+
      // ' A.IMPORTE, '+
      // ' A.FREG, '+
      // ' A.HREG, '+
      // ' A.USERID, '+
      // ' A.RCOBID, '+
      // ' A.DETRCOBID, '+
      // ' A.USERCOBID, '+
      // ' A.FLGEST,  '+
      // ' '''' AGENBCODES,  '+
      // ' MONTOTDES, '+
      // ' (SELECT ESTDES FROM CRE113 WHERE ESTID = A.FLGEST) ESTADO '+
      // ' FROM COB_DES_CRO_CERRADO_DET A, COB_ONP_RET_CAB B, APO201 C '+
      // ' WHERE B.NROOPE = A.NRO_OPERACION '+
      // '   AND B.FOPERAC = A.FEC_OPERACION '+
      // '   AND A.ASOID ='+QuotedStr(DM1.cdsTDoc.FieldByName('ASOID').AsString)+
      // '   AND A.FEC_OPERACION = TO_DATE('''+DM1.cdsTDoc.FieldByName('FEC_OPERACION').AsString+''') '+
      // '   AND A.NRO_OPERACION = '+QuotedStr(DM1.cdsTDoc.FieldByName('NRO_OPERACION').AsString)+
      // '   AND A.FORPAGID = ''43'' AND A.FLGEST=''05'''+
      // '   AND A.ASOID = C.ASOID';
      // DM1.cdsAsoX.Close;
      // DM1.cdsAsoX.DataRequest(xSql);
      // DM1.cdsAsoX.Open;
//Inicio COB_201824_HPC 
//Mejoras en la aplicación de Pagos por Resolver
      If DM1.cdsAsoX.FieldByName('ESTADO').AsString ='DESAPROBADO' Then
      Begin
          //MessageDlg('Registro DESAPROBADO.', mtError, [mbOk], 0);
          //Exit;
         If MessageDlg('Registro DESAPROBADO,' + #13 + #13 +'¿Esta  Seguro(a) de continuar con el proceso? ',
                       mtConfirmation, [mbNo,mbYes], 0) = mrNo Then  Exit;
      End;

 //If DM1.cdsAsoX.FieldByName('ESTADO').AsString <> 'EN TRAMITE' Then
   If (DM1.cdsAsoX.FieldByName('ESTADO').AsString <> 'EN TRAMITE') AND
      (DM1.cdsAsoX.FieldByName('ESTADO').AsString <>'DESAPROBADO') Then
//Fin COB_201824_HPC 
      Begin
         ShowMessage('La Solicitud debe encontrarse en trámite para su devolución');
         Exit;
      End;

      If DM1.cdsAsoX.FieldByName('IMPORTE').AsFloat<5 then
      Begin
         If MessageDlg('¿Marcará como "pago por resolver", está seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         Begin
            xSQL := 'UPDATE COB_DES_CRO_CERRADO_DET SET FLGEST = ''32'',FEC_PRO_PAG_RES=SYSDATE,USU_PRO_PAG_RES='''+DM1.WUSUARIO+''' '
            +' WHERE ASOID = '+QuotedStr(DM1.cdsAsoX.FieldByName('ASOID').AsString)
            +' AND NRO_OPERACION = '+QuotedStr(DM1.cdsAsoX.FieldByName('NROOPE').AsString)
            +' AND FEC_OPERACION = '+QuotedStr(DM1.cdsAsoX.FieldByName('FOPERAC').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            ShowMessage('La Solicitud ha sido registrado con exito.');
            ActualizarGridCronoCerrado;
            Exit;
         End;
         Exit;
      End;

      If (DM1.cdsAsoX.FieldByName('FALLECIDO').AsString = 'S') Then
      Begin
         If MessageDlg('FALLECIDO - ¿Desea generar una Solicitud de Pago por Resolver?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         Begin
            xSQL := 'UPDATE COB_DES_CRO_CERRADO_DET SET FLGEST = ''10'' '
            +', USU_SOLICITA = '+QuotedStr(DM1.wUsuario)+', FEC_SOLICITA = SYSDATE, FALLECIDO = ''S'''
//Inicio COB_201824_HPC 
//Mejoras en la aplicación de Pagos por Resolver
            +',FLA_APROBADO=NULL '
//Fin COB_201824_HPC 
            +' WHERE ASOID = '+QuotedStr(DM1.cdsAsoX.FieldByName('ASOID').AsString)
            +' AND NRO_OPERACION = '+QuotedStr(DM1.cdsAsoX.FieldByName('NROOPE').AsString)
            +' AND FEC_OPERACION = '+QuotedStr(DM1.cdsAsoX.FieldByName('FOPERAC').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            ShowMessage('La Solicitud ha sido registrado con exito.');
            ActualizarGridCronoCerrado;
            Exit;
 //Inicio COB_201824_HPC
 //No debe realizar ninguna operación si no se desea generar solicitud de Pago por Resolver por Fallecimiento
         End
         Else  Exit;
 //Fin COB_201824_HPC         
      End;

  DM1.cdsQry5.CloneCursor(dm1.cdsAsoX,False);
  xSQL:='SELECT NVL(SUM((NVL(CREMTO,0)-NVL(CREMTOCOB,0))),0) SALDO '
      +  'FROM CRE302 A,CRE301 B '
      + 'WHERE  A.ASOID='''+DM1.Cdstdoc.FieldByName('ASOID').AsString+''' AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
      +  '  AND B.CREESTID=''02'' AND B.CREFOTORG<='''+DM1.Cdstdoc.FieldByname('FREG').AsString+''' '
      +  '  AND A.CREESTID IN (''02'',''11'',''14'',''27'',''31'')';
      // Fin: HPC_201820_COB
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;

  if DM1.cdsQry.FieldByName('SALDO').AsFloat=0 then
  begin

     xSql:='SELECT ASOID, CREDID, CRECUOTA FROM CRE302 '
          + 'WHERE ASOID='''+DM1.cdsQry5.FieldByName('ASOID').AsString+''' '
          +  ' AND CREESTID IN (''19'')';
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSQL);
     DM1.cdsQry.Open;

     if DM1.cdsQry.RecordCount>0 then
     begin
        ShowMessage('No se puede enviar a Devolución por que tiene BLOQUEADA la cuota '+DM1.cdsQry.FieldByName('CRECUOTA').AsString
                   +' del Crédito '+DM1.cdsQry.FieldByName('CREDID').AsString+'. Revisar...');
        Exit;
     end;

     if DM1.cdsQry5.FieldByName('IMPORTE').AsFloat<5 then
     begin
        ShowMessage('El Importe a devolver es menor a S/.5.00. No se puede devolver por esta opción...');
        exit;
     end;

// Validar que ya se encuentra pre-aprobada
      xSql:='select ASOID from PRE_APR_DEV '
          +'where asoid='   +QuotedStr(DM1.cdsQry5.FieldByName('asoid').AsString)
          + ' and transano='+QuotedStr(DM1.cdsQry5.FieldByName('transano').AsString)
          + ' and transmes='+QuotedStr(DM1.cdsQry5.FieldByName('transmes').AsString)
          + ' and uproid='  +QuotedStr(DM1.cdsQry5.FieldByName('uproid').AsString)
          + ' and upagoid=' +QuotedStr(DM1.cdsQry5.FieldByName('upagoid').AsString)
          + ' and useid='   +QuotedStr(DM1.cdsQry5.FieldByName('useid').AsString)
          + ' and nro_ope=' +QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString)
          + ' and fec_ope=' +QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString)
          + ' and NVL(FLADEVEFE,''X'')<>''S'' '
          + ' and NVL(FLAAPR,''X'')<>''N'' AND NVL(FLAANU,''X'')<>''S'' ';
     DM1.cdsQry2.CLOSE;
     DM1.cdsQry2.DataRequest(XSQL);
     DM1.cdsQry2.Open;

     If  (((DM1.cdsQry2.RecordCount) > 0 ) And (DM1.cdsQry5.FieldByName('FORPAGID').AsString = '43')) Then
     begin
         xflgDev43:='S';
         xSql:='select CORDEV from PRE_APR_DEV '
          +'where asoid='   +QuotedStr(DM1.cdsQry5.FieldByName('asoid').AsString)
          + ' and transano='+QuotedStr(DM1.cdsQry5.FieldByName('transano').AsString)
          + ' and transmes='+QuotedStr(DM1.cdsQry5.FieldByName('transmes').AsString)
          + ' and uproid='  +QuotedStr(DM1.cdsQry5.FieldByName('uproid').AsString)
          + ' and upagoid=' +QuotedStr(DM1.cdsQry5.FieldByName('upagoid').AsString)
          + ' and useid='   +QuotedStr(DM1.cdsQry5.FieldByName('useid').AsString)
          + ' and nro_ope=' +QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString)
          + ' and fec_ope=' +QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString)
          + ' and LENGTH(TRIM(FECCRE)) > 0 '
          + ' and NVL(FLAAPR,''X'') NOT IN (''N'',''X'') and NVL(FLAANU,''X'') <>''S'' ';
         DM1.cdsQry2.CLOSE;
         DM1.cdsQry2.DataRequest(XSQL);
         DM1.cdsQry2.Open;
         If  ((DM1.cdsQry2.RecordCount) > 0) And (DM1.cdsTDoc.FieldByName('ESTADO').AsString <> 'DEVOLUCION') Then
         begin
            xaprobado:=false;
         end
         else
         begin
            xaprobado:=true;
         End;
     end;
     try
       FSolicitudDevo:=TFSolicitudDevo.Create(self);
       FSolicitudDevo.xflgDev43:=xflgDev43;
       FSolicitudDevo.xflgDev43Apr:=xaprobado;
       FSolicitudDevo.ShowModal;
     finally
       FSolicitudDevo.Free;
     end;
  end
  else
  begin
     ShowMessage('No se puede enviar a Devolución por que tiene Saldo ('+DM1.cdsQry.FieldByName('SALDO').AsString+'). Revisar...');
     Exit;
  end;
end;

procedure TFCronoCerradoONP.dbgCronogramaCerradoONPDblClick(
  Sender: TObject);
begin
    BitPrintClick(SELF);
end;

procedure TFCronoCerradoONP.BitPrintClick(Sender: TObject);
Var
   xFrmDes, xTipDes, xMeses, Xsql, xAno, xMes: String;
   xCremToCob: Currency;
   xLin: Integer;
Begin
   If DM1.cdsTDoc.FieldByName('ESTADO').AsString <> 'DEVOLUCION' Then
   Begin
     ShowMessage('Solicitud Sin Devolución');
     Exit;
   End;

   xAno :=  Copy(DM1.cdsTDoc.FieldByName('FEC_OPERACION').AsString,7,4);
   xMes :=  Copy(DM1.cdsTDoc.FieldByName('FEC_OPERACION').AsString,4,2);

   xSQL:='select  A.ASOID, A.TRANSANO, A.TRANSMES, ''N'' TMONID, E.MONREV IMPORTE, B.ASOAPENOM, '
        +   'USUCRE USUARIO, A.FECCRE FREG, A.HORCRE HREG, E.CREFPAG, E.NROOPE, E.FOPERAC, '
        +   'A.FORPAGID, B.ASOCODMOD, A.UPROID, A.UPAGOID, A.USEID, '
        +   'B.ASOTIPID, C.UPRONOM, D.UPAGONOM, '
        +   'F.CODOFI, G.OFDESNOM, H.LUGGIRO, H.CODGIRO, H.DEPGIRO, '
        +   'I.AGENBCODES, J.DPTODES, H.ASOCTAAHO, H.ASOOBSERV, H.ASONUMDEV, H.ASOANODEV, H.ASOFECDEV, H.ASOMONDEV '
        +' FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D, DES_DEV_EFE F, '
        +  'APO110 G, MDEVCAB H, COB102 I, APO158 J, COB_DES_CRO_CERRADO_DET K '
        +' WHERE A.TRANSANO=' + Quotedstr(xAno)
        +' AND A.TRANSMES=' + Quotedstr(xMes)

        +' AND K.ASOID='+QuotedStr(DM1.cdsTDoc.FieldByName('ASOID').AsString)
        +' AND E.ASOID = K.ASOID    AND E.NROOPE = K.NRO_OPERACION    AND E.MONREV = K.IMPORTE '
        //+' AND E.NROOPE = K.NRO_OPERACION AND E.FOPERAC = K.FEC_OPERACION AND E.ASOID = K.ASOID AND A.ANODEV = E.ANODEV '

        +' AND A.ANODEV=E.ANODEV AND A.CORDEV=E.CORDEV'
        +' AND A.ASOID = B.ASOID '
        +' AND C.UPROID(+)=A.UPROID '
        +' AND D.UPROID(+)=A.UPROID and D.UPAGOID(+)=A.UPAGOID '
        + ' AND E.ASOID=F.ASOID(+) '
        + ' AND E.ASONUMDEV=F.ASONUMDEV(+) '
        + ' AND E.ANODEV=F.ASOANODEV(+) '
        + ' AND F.CODOFI=G.OFDESID(+) '
        + ' AND E.ASONUMDEV=H.ASONUMDEV(+) '
        + ' AND E.ANODEV=H.ASOANODEV(+) '
        + ' AND H.CODGIRO=I.AGENBCOID(+) '
        + ' AND H.DEPGIRO=J.DPTOID(+) '
        //+ ' AND A.ASOID='+QuotedStr(DM1.cdsTDoc.FieldByName('ASOID').AsString)
        + ' order by H.ASOANODEV, H.ASONUMDEV';
   DM1.cdsRepDev.Close;
   DM1.cdsRepDev.DataRequest( xSQL );
   DM1.cdsRepDev.Open;

   if DM1.cdsRepDev.FieldByName('ASOMONDEV').AsFloat<=0 then
   begin
      ShowMessage('Registro no tiene Nota de Devolución. Revisar...');
      exit;
   end;

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
      ppLblDesem.Caption := xTipDes;//////////////////////////////////////////
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

// Inicio: HPC_201820_COB
// cronogramas cerrados procedimientos de actualización de grid
procedure TFCronoCerradoONP.ActualizarGrid;
Var xSql:String;
begin
   xSql :=  'SELECT A.ASOID, C.FALLECIDO, A.OFIDES, A.FORPAGID, A.NRO_OPERACION, A.NRO_OPERACION NROOPE, A.FEC_OPERACION, A.FEC_OPERACION,'
   +' FOPERAC, A.FEC_OPERACION CREFPAG, TO_CHAR(A.FEC_OPERACION, ''YYYY'') TRANSANO, TO_CHAR(A.FEC_OPERACION, ''MM'') TRANSMES, A.UPROID,'
   +' A.UPAGOID, A.USEID, A.ASOCODMOD, A.ASOAPENOM, A.BANCOID, A.CCBCOID, A.IMPORTE, A.FREG, A.HREG, A.USERID, A.RCOBID, A.DETRCOBID, A.USERCOBID,'
   +' A.FLGEST, '''' AGENBCODES, MONTOTDES,'
   +'(CASE WHEN NVL(FLA_APROBADO,''X'')=''N'' THEN ''DESAPROBADO'' ELSE (SELECT ESTDES FROM CRE113 WHERE ESTID=FLGEST) END) ESTADO '
   +' FROM COB_DES_CRO_CERRADO_DET A, COB_ONP_RET_CAB B, APO201 C'
   +' WHERE B.NROOPE = A.NRO_OPERACION AND B.FOPERAC = A.FEC_OPERACION AND A.ASOID ='+QuotedStr(DM1.cdsTDoc.FieldByName('ASOID').AsString)
   +' AND A.FEC_OPERACION = TO_DATE('''+DM1.cdsTDoc.FieldByName('FEC_OPERACION').AsString+''')'
   +' AND A.NRO_OPERACION = '+QuotedStr(DM1.cdsTDoc.FieldByName('NRO_OPERACION').AsString)
   +' AND A.FORPAGID = ''43''  AND A.ASOID = C.ASOID';
   DM1.cdsAsoX.Close;
   DM1.cdsAsoX.DataRequest(xSql);
   DM1.cdsAsoX.Open;
end;

procedure TFCronoCerradoONP.ActualizarGridCronoCerrado;
begin
   xSql := 'SELECT NROOPE,FOPERAC FROM COB_ONP_RET_CAB WHERE'
   +' NUMOFI='+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)
   +' AND PERCOB='+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM,FEC_OPERACION,NRO_OPERACION,IMPORTE,FREG, '
   +'(CASE WHEN NVL(FLA_APROBADO,''X'')=''N'' THEN ''DESAPROBADO'' ELSE (SELECT ESTDES FROM CRE113 WHERE ESTID=FLGEST) END) ESTADO '
   +' FROM COB_DES_CRO_CERRADO_DET WHERE NRO_OPERACION='+QuotedStr(DM1.cdsQry.FieldByName('NROOPE').AsString)
   +' AND FEC_OPERACION= '+QuotedStr(DM1.cdsQry.FieldByName('FOPERAC').AsString);
   DM1.cdsTDoc.Close;
   DM1.cdsTDoc.DataRequest(xSQL);
   DM1.cdsTDoc.Open;
end;

procedure TFCronoCerradoONP.dbgCronogramaCerradoONPCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   If DM1.cdsTDoc.FieldByName('ESTADO').AsString = 'DESAPROBADO' Then
   Begin
      ABrush.Color := clRed;
      AFont.Color := clWhite;
   End;
end;
// Fin: HPC_201820_COB
End.
// Fin HPC_201806_COB
