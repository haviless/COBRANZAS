unit COB467;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB467
// Formulario                    : FSolicitudDevo
// Fecha de Creación             : 03/10/2013
// Autor                         : Sistemas
// Objetivo                      : Solicitud de Devolución

// Actualizaciones               :
// HPC_201310_COB    03/10/2013  : Solicitud de Devolución
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201311_COB                : 30/10/2013 - Aprobar Devoluciones
// SPP_201313_COB                : Se realiza el pase a producción a partir de lo indicado en el documento HPC_201311_COB.
// HPC_201519_COB                : Se cambio el mensaje de Grabación Exitosa.
// HPC_201707_COB                : Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
// HPC_201806_COB                : Exceso en Cronogramas Cerrados (ONP, BANCO)
// HPC_201810_COB                : CORRECCIÓN DE ERROR AL GENERAR SOLICITUD DE APROBACIÓN AUTOMÁTICA
// HPC_201820_COB                : Se adiciona columna al script  para forma de pago por cronogramas cerrados
// COB_201822_HPC                : Se adiciona columna para forma de pago en el detalle de devolución
//                               : Se adiciona el importe para eliminar el registro
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Wwdbdlg, wwdblook, ExtCtrls, StdCtrls, Buttons, fcButton,
  fcImgBtn, fcShapeBtn;

type
  TFSolicitudDevo = class(TForm)
    grbacciones: TGroupBox;
//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
//  Label9: TLabel;
//Final HPC_201707_COB
    Panel2: TPanel;
    edtDevuelve: TEdit;
    MotDevo: TMemo;
    pnlTipodesembolso: TPanel;
    Label21: TLabel;
    lblAgencia: TLabel;
    lblCtaAhorros: TLabel;
    Label10: TLabel;
    DBLkuCTipDes: TwwDBLookupCombo;
    EdtTipDes: TEdit;
    DBLkCDAgencias: TwwDBLookupComboDlg;
    EdtCodAgen: TEdit;
    EdtDepGir: TEdit;
    EdtCtaAhorros: TEdit;
    EdtSitCta: TEdit;
    pnlOficinas: TPanel;
    Label12: TLabel;
    Panel4: TPanel;
    EdtOfiDes: TEdit;
    DBLkOfiDes: TwwDBLookupCombo;
    btnAceptar: TfcShapeBtn;
    Label3: TLabel;
    BitBtn1: TBitBtn;
//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
    Label13: TLabel;
    dblMotivoDev: TwwDBLookupCombo;
    Panel6: TPanel;
    edtMotivoDev: TEdit;
    Label1: TLabel;
    pnlDevxOFi: TPanel;
    Shape10: TShape;
    Shape11: TShape;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Shape12: TShape;
    lblactual: TLabel;
    lbldevxofi: TLabel;
//Final HPC_201707_COB
    procedure BtnSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure DBLkuCTipDesExit(Sender: TObject);
    procedure DBLkuCTipDesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
    procedure dblMotivoDevChange(Sender: TObject);
    procedure dblMotivoDevExit(Sender: TObject);
    procedure MotdevoKeyPress(Sender: TObject; var Key: Char);
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
// Fin HPC_201806_COB
//Final HPC_201707_COB
  private
    { Private declarations }
    Procedure GrabaDev(xAsoId, xNroDev, xFrmDes: String);
    Function  GnrCDev: String;
//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
    Function  VerificaDevxOfi():Boolean;
//Final HPC_201707_COB
  public
    { Public declarations }
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO
    xflgDev43,xcorrelativodevo :String;
    xflgDev43Apr : boolean;
// Fin HPC_201806_COB
  end;

var
  FSolicitudDevo: TFSolicitudDevo;

implementation
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
uses COBDM1;//,cob454a;
// Fin HPC_201806_COB 

{$R *.dfm}

procedure TFSolicitudDevo.BtnSalirClick(Sender: TObject);
begin
   grbacciones.Enabled := True;
   If DBLkuCTipDes.Text = '04' Then
   Begin
      If Length(trim(DBLkOfiDes.Text)) = 0 Then
      Begin
         ShowMessage('Debe ingresar la oficina que desembolsa.');
         Exit;
      End;
   End;
   pnlTipodesembolso.Visible := False;
end;

procedure TFSolicitudDevo.FormActivate(Sender: TObject);
var
   xSQL : String;
begin
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
   //FCronoCerradoONP := TFCronoCerradoONP.Create(Self);
// Fin HPC_201806_COB 
   DM1.cdsFormPago.Close;
   DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR FROM CRE104 WHERE TIPDESEID IN (''04'',''05'',''06'') ORDER BY TIPDESEID');
   DM1.cdsFormPago.Open;

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
        +  'FROM APO201 '
        + 'WHERE ASOID='+QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSQL);
   DM1.cdsAso.Open;

   edtDevuelve.Text := FormatCurr('###,###,##0.00', DM1.cdsQry5.FieldByName('IMPORTE').AsFloat);

//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
   Xsql:='Select  CODTIPREF,CODREF,DESCRIPCION,USUCRE,FECCRE From DB2ADMIN.COB_REF_DEVOLUCIONES Where CODTIPREF=''MOT'' ';
   Dm1.cdsResol.Close;
   Dm1.cdsResol.DataRequest(Xsql);
   Dm1.cdsResol.Open;
   dblMotivoDev.LookupTable := Dm1.cdsResol;
   dblMotivoDev.LookupField := 'CODREF';
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
   If DM1.cdsQry5.FieldByName('FORPAGID').AsString = '03' Then
   Begin
      MotDevo.Text := 'Descuento de Bancos periodo '+DM1.cdsQry5.FieldByName('transano').AsString+'-'+DM1.cdsQry5.FieldByName('transmes').AsString;
   End
   Else
   Begin
      If DM1.cdsQry5.FieldByName('FORPAGID').AsString = '43' Then
      Begin
         MotDevo.Text := 'Descuento de ONP periodo '+DM1.cdsQry5.FieldByName('transano').AsString+'-'+DM1.cdsQry5.FieldByName('transmes').AsString;
      End
      Else
      Begin
         MotDevo.Text := 'Descuento de Planilla periodo '+DM1.cdsQry5.FieldByName('transano').AsString+'-'+DM1.cdsQry5.FieldByName('transmes').AsString;
      End;
   End;
// Fin HPC_201806_COB 
//Final HPC_201707_COB
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
   //If FCronoCerradoONP.xflgDev43 ='S' Then
   If (xflgDev43 ='S') Then
   Begin
      xSQL:='SELECT CODMOTDEV, FORPAGID, OFDESPAG FROM PRE_APR_DEV '
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
     DM1.cdsEjecuta.Close;
     DM1.cdsEjecuta.DataRequest(xSQL);
     DM1.cdsEjecuta.Open;
     DBLkuCTipDes.Text:=DM1.cdsEjecuta.FieldByName('FORPAGID').AsString;
     dblMotivoDev.Text:=DM1.cdsEjecuta.FieldByName('CODMOTDEV').AsString;
     DBLkOfiDes.text :=DM1.cdsEjecuta.FieldByName('OFDESPAG').AsString;
     grbacciones.Enabled:=false;
     If (xflgDev43Apr) Then
     Begin
        btnAceptar.Enabled:=false;
     End
     Else
     Begin
        btnAceptar.Enabled:=true;
     End;
   End;
// Fin HPC_201806_COB 
end;

procedure TFSolicitudDevo.btnAceptarClick(Sender: TObject);
Var
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
   xmsg1, xflgExtorno, xsql,xSQL2: String;
// Fin HPC_201806_COB
   XCORR: INTEGER;
   xNroDev: String;
   xanodev, xcordev : String;
Begin

   If Length(Trim(MotDevo.Lines.Text)) < 20 Then
   Begin
      ShowMessage('Debe ingresar motivo de devolucion mas consistente..');
      MotDevo.SetFocus;
      exit;
   End;

//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
   If  Length(Trim(dblMotivoDev.Text))=0 Then
   Begin
      ShowMessage('Debe seleccionar un Motivo de devolución.');
      dblMotivoDev.SetFocus;
      dblMotivoDev.DropDown;
      exit;
   End;
//Final HPC_201707_COB

   If (DBLkuCTipDes.Text = '06') And (Length(Trim(EdtCtaAhorros.Text)) = 0) Then
   Begin
      ShowMessage('Existe inconsistencia en el tipo de desembolso');
      MotDevo.SetFocus;
      exit;
   End;
   If DBLkuCTipDes.Text = '04' Then
   Begin
      If Length(trim(DBLkOfiDes.Text)) = 0 Then
      Begin
         ShowMessage('Debe ingresar la oficina que desembolsa');
         Exit;
      End;
   End;

   If (DM1.Valores(edtDevuelve.Text) > 0) And (Length(trim(DBLkuCTipDes.Text)) = 0) Then
   Begin
      ShowMessage('Debe ingresar el Tipo de Desembolso de la Devolución');
      exit;
   End;

   If ( DM1.Valores(edtDevuelve.Text)<0 ) then
   Begin
      ShowMessage('No se puede ingresar valores menores a cero.');
      exit;
   END;

//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
   If DBLkuCTipDes.Text = '06' Then
     If not verificaDevxOfi Then
     BEGIN
          ShowMessage('El número  de devoluciones  a aprobar supera el número de Devolución por Oficio');
          Exit;
     END;
//Final HPC_201707_COB

   If MessageDlg('ESTA SEGURO DE GRABAR LA SOLICITUD DE DEVOLUCION ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      If MessageDlg('Importe a Devolver :  ' + edtDevuelve.Text +chr(13)+
                    ' Esta seguro(a) ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
//Inicio HPC_201810_COB
//CORRECCIÓN DE ERROR AL GENERAR SOLICITUD DE APROBACIÓN AUTOMÁTICA
// Inicio HPC_201806_COB
// Exceso en Cronogramas Cerrados (ONP, BANCO)
         If xflgDev43 <>'S' Then
         Begin

         //GENERA CORRELATIVO DE PRE APROBACION DE DEVOLUCION
         XSQL := 'SELECT ANODEV,MAX(CORDEV) CORDEV FROM PRE_APR_DEV WHERE ANODEV=''' + FormatDateTime('YYYY', DM1.FechaSys) + ''' GROUP BY ANODEV';
         DM1.cdsQry2.CLOSE;
         DM1.cdsQry2.DataRequest(XSQL);
         DM1.cdsQry2.Open;
         If DM1.cdsQry2.RecordCount = 0 Then
            XCORR := 1
         Else
            XCORR := StrToInt(DM1.cdsQry2.FieldByName('CORDEV').asstring) + 1;

         //GENERA REGISTRO DE PREAPROBACION   (CABECERA)
         XSQL:='INSERT INTO PRE_APR_DEV (ASOID,CREDID,TIPCREID,ASOAPENOM,ASOCODMOD,IMPREV,IMPDEV,IMPAPL, '
              +  'FLAEXTPRE,USUCRE,FECCRE,HORCRE,MOTDEV,CODMOTDEV,CODORIDEV,ANODEV,CORDEV,FORPAGID,AGEBAN,OFDESPAG,'
              +  'transano, transmes, uproid, upagoid, useid, rcobid, detrcobid,NRO_OPE,FEC_OPE ) '
              +'VALUES (' +
                QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString) + ',' +
                QuotedStr('') + ',' +
                QuotedStr('') + ',' +
                QuotedStr(DM1.cdsQry5.FieldByName('ASOAPENOM').AsString) + ',' +
                QuotedStr(DM1.cdsQry5.FieldByName('ASOCODMOD').AsString) + ',' +
                CurrToStr(DM1.Valores(edtDevuelve.Text)) + ',' +
                CurrToStr(DM1.Valores(edtDevuelve.Text)) + ',' +
                CurrToStr(0) + ',' +
                QuotedStr(xflgExtorno) + ',' +
                QuotedStr(DM1.wUsuario) + ',' +
                QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
                'TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),' +
                QuotedStr(Trim(MotDevo.Lines.Text)) + ',' +
                QuotedStr(Trim(dblMotivoDev.Text)) + ',' +
                QuotedStr('05') + ',' +
                QuotedStr(FormatDateTime('YYYY', DM1.FechaSys)) + ',' +
                QuotedStr(Format('%.10d', [XCORR])) + ',' +
                QuotedStr(TRIM(DBLkuCTipDes.Text)) + ',' +
                QuotedStr(TRIM(DBLkCDAgencias.Text)) + ',' + QuotedStr(TRIM(DBLkOfiDes.Text))+', '+
                QuotedStr(DM1.cdsQry5.FieldByName('transano').AsString) + ',' +
                QuotedStr(DM1.cdsQry5.FieldByName('transmes').AsString) + ',' +
                QuotedStr(DM1.cdsQry5.FieldByName('uproid').AsString) + ',' +
                QuotedStr(DM1.cdsQry5.FieldByName('upagoid').AsString) + ',' +
                QuotedStr(DM1.cdsQry5.FieldByName('useid').AsString) + ',' +
                QuotedStr(DM1.cdsQry5.FieldByName('rcobid').AsString) + ',' +
                QuotedStr(DM1.cdsQry5.FieldByName('detrcobid').AsString) + ','+
                QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString) + ',' +
                QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString) + ' )';
                DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         //GENERA DETALLE DE PREAPROBACION
         //Adiciona el campo de Desgravamen
         XSQL := 'INSERT INTO PRE_APR_DEV_DET (ANODEV,CORDEV,ASOID,CREDID,CRECUOTA,MONREV,NROOPE,FOPERAC,TRANSINTID,CREMTOCOB,CREINTERES,CREFLAT,CREFPAG,CREAMORT,CREMTOEXC,MONCOBDESGRAV) VALUES (' +
            QuotedStr(FormatDateTime('YYYY', DM1.FechaSys)) + ',' +
            QuotedStr(Format('%.10d', [XCORR])) + ',' +
            QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString) + ',' +
            QuotedStr('') + ',' +
            '0' + ',' +
            CurrToStr(DM1.Valores(edtDevuelve.Text)) + ',' +
            QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString) + ',' +
            QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString) + ',' +
            QuotedStr('') + ',' +
            CurrToStr(DM1.Valores(edtDevuelve.Text)) + ',' +
            '0' + ',' +
            '0' + ',' +
            QuotedStr(DM1.cdsQry5.FieldByName('CREFPAG').AsString) + ',' +
            '0' + ',' +
            CurrToStr(DM1.Valores(edtDevuelve.Text)) + ',' +
            '0' + ')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         End;//fin de solicitud

 //Inicio HPC_201820_COB
 //Se cambia de Posición la ejecución de este bloque
        // If (DM1.cdsQry5.FieldByName('FORPAGID').AsString <> '43') and  (length(trim(xflgDev43))=0) Then
        // Begin
        //       //ESTO SOLO SE DEBE HACER SI NO ES FORMA DE PAGO 03, SI ES 03 SE DEBE HACER UPDATE A LA TABLA NUEVA Y PONER ESTADO 99
        //       If (DM1.cdsQry5.FieldByName('FORPAGID').AsString = '03') Then
        //       Begin
        //          xSQL:='UPDATE DB2ADMIN.COB_DES_CRO_CERRADO_DET SET FLGEST=99,ASONUMDEV='''+xNroDev+''',ASOANODEV='''+xanodev+''' WHERE '+
        //                'ASOID ='+QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString)+
        //                'AND FORPAGID='+QuotedStr(DM1.cdsQry5.FieldByName('FORPAGID').AsString)+
        //                'AND NRO_OPERACION='+QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString)+
        //                'AND FEC_OPERACION='+QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString);
        //          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        //       End
        //       Else
        //       Begin
        //           xSQL:='Delete Cob340 Where asoid=''' + DM1.cdsQry5.FieldByName('ASOID').AsString
        //            + ''' and rcobid=''' + DM1.cdsQry5.FieldByName('rcobid').AsString
        //            + ''' and detrcobid=''' + DM1.cdsQry5.FieldByName('detrcobid').AsString + ''' ';
        //           DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        //       End;
        // End;
 //Final HPC_201820_COB

         If ( (DM1.cdsQry5.FieldByName('FORPAGID').AsString   ='43') and  (xflgDev43='S')) or
            (  DM1.cdsQry5.FieldByName('FORPAGID').AsString <> '43') and  (length(trim(xflgDev43))=0) Then
         begin
               xNroDev := GnrCDev;
               If Length(Trim(xNroDev)) = 0 Then
               Begin
                  Screen.Cursor := crDefault;
                  MessageDlg(' <<<  A T E N C I O N  >>>   NO SE GENERO CORRELATIVO DEVOLUCION COMUNIQUESE CON SISTEMAS !!!!!  ', mtError, [mbOk], 0);
                  Exit;
               End;

               GrabaDev(DM1.cdsQry5.FieldByName('ASOID').AsString, xNroDev, DBLkuCTipDes.Text);

               xanodev:=FormatDateTime('YYYY', DM1.FechaSys);

               XSQL := 'SELECT MAX(CORDEV) CORDEV FROM PRE_APR_DEV WHERE  ASOID=''' + DM1.cdsQry5.FieldByName('ASOID').AsString+''' '
                        +  ' AND ANODEV='''+ xanodev + ''' AND IMPDEV='  + CurrToStr(DM1.Valores(edtDevuelve.Text))+' AND FLADEVEFE IS NULL ';
//Fin HPC_201810_COB
               DM1.cdsQry2.CLOSE;
               DM1.cdsQry2.DataRequest(XSQL);
               DM1.cdsQry2.Open;
               XCORR := StrToInt(DM1.cdsQry2.FieldByName('CORDEV').asstring);
               xcordev:=Format('%.10d', [XCORR]);


               //ACTUALIZO EL DETALLE DE LA PREAPROBACION
               XSQL:='UPDATE PRE_APR_DEV_DET '
                        +   'SET MONDEV=' + CurrToStr(DM1.Valores(edtDevuelve.Text)) + ', '
                        +       'MONAPL=' + CurrToStr(DM1.Valores(edtDevuelve.Text)) + ', '
                        +       'ASONUMDEV='''+ xNroDev +''' '
                        + 'WHERE ASOID=''' + DM1.cdsQry5.FieldByName('ASOID').AsString+''' '
                        +  ' AND ANODEV='''+ xanodev + ''' AND CORDEV='''+xcordev+''' '
                        +  ' AND MONREV=' + CurrToStr(DM1.Valores(edtDevuelve.Text));
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

               //ACTUALIZA LA CABECERA DE LA PRE APROBACION
               // Inicio: SPP_201313_COB                : 30/10/2013 - Aprobar Devoluciones
               XSQL:='UPDATE PRE_APR_DEV '
                        +   'SET DEVEFE='  + CurrToStr(DM1.Valores(edtDevuelve.Text)) +', '
                        +       'APLEFE='  + CurrToStr(DM1.Valores(edtDevuelve.Text)) +', '
                        +       'FLAAPR = ''S'' ,'
                        +       'USUAPR =' + QuotedStr(DM1.wUsuario) + ','
                        +       'FECAPR = TO_CHAR(SYSDATE,''dd/mm/yyyy''),'
                        +       'HORAPR = TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),'
                        +       'MOTDES = '''', '

                        +       'FLADEVEFE = ''S'', '
                        +       'USUDEV = '+ QuotedStr(DM1.wUsuario) + ','
                        +       'FECDEV = TRUNC(SYSDATE), '
                        +       'HORDEV = SYSDATE '

                        + 'WHERE ASOID=''' + DM1.cdsQry5.FieldByName('ASOID').AsString+''' '
                        +  ' AND ANODEV='''+ xanodev + ''' AND CORDEV=''' + xcordev   +''' '
                        +  ' AND IMPDEV='  + CurrToStr(DM1.Valores(edtDevuelve.Text));
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


              //Inicio HPC_201707_COB
              //Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
              Try

                If DM1.cdsQry5.FieldByName('FORPAGID').AsString <>'43' Then   //porque en la preaprobacion aumenta uno al correlativo
                Begin
                  XSQL:=' UPDATE DB2ADMIN.COB_DEV_POR_OFI SET NUMREGACT=NUMREGACT+1,USUMOD='''+Dm1.wUsuario+''',FECMOD=SYSDATE WHERE  NUMREGOFI>0 ';
                  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                End;

                verificaDevxOfi;

                If (DM1.cdsQry5.FieldByName('FORPAGID').AsString ='43')  or
                   (DM1.cdsQry5.FieldByName('FORPAGID').AsString ='03') Then
                Begin
                 xSQL:='UPDATE DB2ADMIN.COB_DES_CRO_CERRADO_DET SET FLGEST=99,ASONUMDEV='''+xNroDev+''',ASOANODEV='''+xanodev+''' WHERE '+
                         'ASOID ='+QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString)+
                         'AND FORPAGID='+QuotedStr(DM1.cdsQry5.FieldByName('FORPAGID').AsString)+
                         'AND NRO_OPERACION='+QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString)+
                         'AND FEC_OPERACION='+QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString);
                  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                End;

                If (DM1.cdsQry5.FieldByName('FORPAGID').AsString ='01') or
                   (DM1.cdsQry5.FieldByName('FORPAGID').AsString ='09') or
                   (DM1.cdsQry5.FieldByName('FORPAGID').AsString ='22') Then  //Planilla
                Begin
                    xSQL:='Delete Cob340 Where asoid=''' + DM1.cdsQry5.FieldByName('ASOID').AsString
                    + ''' and rcobid=''' + DM1.cdsQry5.FieldByName('rcobid').AsString
//Inicio COB_201822_HPC
//Se adiciona el importe para eliminar el registro
                    + ''' and detrcobid=''' + DM1.cdsQry5.FieldByName('detrcobid').AsString + ''' '
                    + ' and importe='+CurrToStr(DM1.Valores(edtDevuelve.Text));
//Fin COB_201822_HPC
                    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                End;

              Except
                  Screen.Cursor := crDefault;
                  MessageDlg('Se ha producido un error al actualizar la tabla COB_DEV_POR_OFI  ', mtError, [mbOk], 0);
                  Exit;
              End;
              //Final HPC_201707_COB
             End;

               btnAceptar.Enabled:=False;
             //Inicio HPC_201519_COB
             //ShowMessage('Envío a Devolucion Gravada');
               ShowMessage('Se Grabó con exito');
             //Final HPC_201519_COB
               // Fin: SPP_201313_COB                : 30/10/2013 - Aprobar Devoluciones
            End;
     End;
     grbacciones.Enabled:=False;
     //FCronoCerradoONP.dbgCronogramaCerradoONP.Refresh;
end;
// Fin HPC_201806_COB
// Genera Correlativo de Devolucion
Function TFSolicitudDevo.GnrCDev: String;
Var
   xCorrAct: Integer;
   xCorrDev, xSQL, xSQL2: String;
Begin
   xSQL := 'SELECT CREAREA,TIPO,CANCUO FROM CRE206 WHERE CREAREA=''COB'' AND TIPO=''D'' AND CORREANO=' + QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)), 7, 4)) + ' AND CANCUO IS NOT NULL';
   DM1.cdsFEfec.Close;
   DM1.cdsFEfec.DataRequest(xSQL);
   DM1.cdsFEfec.Open;
   If DM1.cdsFEfec.RecordCount = 1 Then
   Begin
      xCorrAct := StrToInt(DM1.cdsFEfec.fieldbyname('CANCUO').AsString) + 1;
      xCorrDev := Format('%.10d', [xCorrAct]);
      xSQL2 := 'Update CRE206 Set Cancuo=''' + xCorrDev + ''' WHERE CREAREA=''COB'' AND TIPO=''D'' AND CORREANO=' + QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)), 7, 4)) + ' AND CANCUO IS NOT NULL';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL2);
      DM1.cdsFEfec.Close;
      DM1.cdsFEfec.DataRequest(xSQL);
      DM1.cdsFEfec.Open;
      If Trim(xCorrDev) > Trim(DM1.cdsFEfec.fieldbyname('CANCUO').AsString) Then xCorrDev := '';
      DM1.cdsFEfec.Close;

      Result := Copy(xCorrDev, 5, 6);
   End;
   DM1.cdsFEfec.Close;
End;


//Graba la Devolucion al Asociado
Procedure TFSolicitudDevo.GrabaDev(xAsoId, xNroDev, xFrmDes: String);
Var
   xSql, XASOCTAAHO, XASOSITCTA, XLUGGIRO, XCODGIRO, XDEPGIRO: String;
Begin
   XASOCTAAHO := '';
   XASOSITCTA := '';
   XLUGGIRO   := '';
   XCODGIRO   := '';
   XDEPGIRO   := '';

   If xFrmDes = '06' Then
   Begin
      XASOCTAAHO := Trim(EdtCtaAhorros.Text);
      XASOSITCTA := DM1.cdsAso.FieldByName('SITCTA').AsString;
   End
   Else
      If xFrmDes = '05' Then
      Begin
         XLUGGIRO := Trim(DBLkCDAgencias.Text);
         XCODGIRO := Trim(EdtCodAgen.Text);
         XDEPGIRO := Trim(Copy(Trim(EdtDepGir.Text), 1, 2));
      End;

   xSQL:='Insert Into MDEVCAB (ASOID,ASOCODMOD,ASOCODAUX,ASOAPENOM,ASONUMDEV,ASOANODEV,ASOFECDEV,ASOMONDEV,USEID,UPROID,UPAGOID,DPTOID,ASODNI,' +
         'TIPDESEID,CREESTID,CREESTADO,FORPAGID,ASOOBSERV,ASOCTAAHO,ASOSITCTA,LUGGIRO,CODGIRO,DEPGIRO,USUARIO,FREG) VALUES (' +
          QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString) + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
          QuotedStr(TRIM(xNroDev)) + ',' +
          QuotedStr(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 7, 4)) + ',' +
          QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
          CurrToStr(DM1.Valores(edtDevuelve.Text)) + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString) + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString) + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('DPTOID').AsString) + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',' +
          QuotedStr(xFrmDes) + ',' +
          QuotedStr('99') + ',' +
          QuotedStr('DEVOLUCION') + ',' +
          QuotedStr('10') + ',' +
          QuotedStr(Trim(MotDevo.Lines.Text)) + ',' +
          QuotedStr(XASOCTAAHO) + ',' +
          QuotedStr(XASOSITCTA) + ',' +
          QuotedStr(XLUGGIRO) + ',' +
          QuotedStr(XCODGIRO) + ',' +
          QuotedStr(XDEPGIRO) + ',' +
          QuotedStr(DM1.wUsuario) + ',TO_CHAR(SYSDATE,''dd/mm/yyyy ''))';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

//INSERTA EL DESEMBOLSO DE LA DEVOLUCION EN EFECTIVO
   If TRIM(DBLkuCTipDes.Text) = '04' Then
   Begin
      XSQL:='INSERT INTO DES_DEV_EFE (ASOID,ASOCODMOD,ASOCODAUX,CREDID,ASOTIPID,ASODNI,ASOAPENOM,UPROID,USEID,UPAGOID,'
           +  'CODDEP,CODOFI,MONTOSOL,MONTODOL,TIPCAMB,ANULADO,ASOFECDEV,ASOANODEV,ASONUMDEV) '
           +'VALUES( ' +
             QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString) + ',' +
             QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
             QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
             QuotedStr('') + ',' +
             QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString) + ',' +
             QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',' +
             QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
             QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString) + ',' +
             QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString) + ',' +
             QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ',' +
             QuotedStr(DM1.cdsAso.FieldByName('DPTOID').AsString) + ',' +
             QuotedStr(DBLkOfiDes.Text) + ',' +
             CurrToStr(DM1.Valores(edtDevuelve.Text)) + ',' +
             CurrToStr(DM1.Valores(edtDevuelve.Text) / StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys))) + ',' +
             DM1.RecuperarTipoCambio(DM1.FechaSys) + ',' +
             QuotedStr('N') + ',' +
             QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
             QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ',' +
             QuotedStr(TRIM(xNroDev)) + ')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;

   //SE ADICIONA LO CAMPOS AMORTIZACION,INTERES,FLAT, Y PAGO TOTAL CUANDO LO QUE SE DEVUELVE NO ES UN EXCESO
   XSQL:='INSERT INTO MDEVDET (ASOID,CREDID,CRECUOTA,ASOAPENOM,ASONUMDEV,CREFPAG,ASOANODEV,CREMTOEXC,CREAPLEXC,CREDEVEXC,MONDEVCUO, '
//Inicio COB_201822_HPC
//Se adiciona columna  para forma de pago al insertar en la tabla de devoluciones
        +'CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREESTID,CREESTADO,CREMES,CREANO,ASOCODMOD,ASOCODAUX,USUARIO,FORPAGID,FREG) VALUES (' +
//Fin COB_201822_HPC
          // Inicio: SPP_201313_COB                : 30/10/2013 - Aprobar Devoluciones
          QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString) + ',' +
          QuotedStr('') + ',' +
          '0, ' +
          QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
          QuotedStr(TRIM(xNroDev)) + ',' +
          QuotedStr(Datetostr(DM1.FechaSys)) + ',' +
          QuotedStr(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 7, 4)) + ',' +
          '0, ' +
          '0, ' +
          CurrToStr(DM1.Valores(edtDevuelve.Text))+', '+                                     // CREDEVEXC
          '0, ' +                                                                            // MONDEVCUO
          // Fin: SPP_201313_COB                : 30/10/2013 - Aprobar Devoluciones
          '0, '+
          '0, '+
          '0, '+
          '0, '+
          QuotedStr('99') + ',' +
          QuotedStr('DEVOLUCION') + ',' +
          QuotedStr('') + ',' +
          QuotedStr('') + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
          QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
//Inicio COB_201822_HPC
//Se adiciona columna  para forma de pago al insertar en la tabla de devoluciones
          QuotedStr(DM1.wUsuario) + ','''+DM1.cdsQry5.FieldByName('FORPAGID').AsString+''','+
          'TO_CHAR(SYSDATE,''dd/mm/yyyy ''))';
//Fin COB_201822_HPC
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

End;


procedure TFSolicitudDevo.DBLkuCTipDesExit(Sender: TObject);
begin
   DBLkuCTipDesChange(self);
end;

procedure TFSolicitudDevo.DBLkuCTipDesChange(Sender: TObject);
Var
   xSQL: String;
Begin
   If DM1.cdsFormPago.Locate('TIPDESEID', VarArrayof([DBLkuCTipDes.text]), []) Then
   Begin
      EdtTipDes.Text := DM1.cdsFormPago.fieldbyname('TIPDESEABR').AsString;
      pnlOficinas.Visible := False;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '04' Then
      Begin
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
         //If (FCronoCerradoONP.xflgDev43 <>'S') Then
         If (xflgDev43 <>'S') Then
         Begin
         xSQL := 'SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID';
         DM1.cdsOfDes.Close;
         DM1.cdsOfDes.DataRequest(xSQL);
         DM1.cdsOfDes.Open;
         end;
// Fin HPC_201806_COB 
         lblCtaAhorros.Enabled := False;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := '';
         EdtSitCta.Text := '';
         pnlOficinas.Visible := True;
      End;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '05' Then
      Begin
         If DM1.xSgr = '1' Then
         Begin
            lblAgencia.Enabled := True;
            DBLkCDAgencias.Enabled := True;
         End;
         lblCtaAhorros.Enabled := False;
         EdtCtaAhorros.Text := '';
         EdtSitCta.Text := '';
      End;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '06' Then
      Begin

//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
       verificaDevxOfi;
       pnlDevxOFi.Visible := True;
//Final HPC_201707_COB

         If Trim(DM1.cdsAso.FieldByName('SITCTA').AsString) <> 'A' Then
         Begin
            ShowMessage('CUENTA NO ESTA ACTIVA');
            Exit;
         End;
         lblCtaAhorros.Enabled := True;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := DM1.cdsAso.FieldByName('ASONCTA').AsString;
         EdtSitCta.Text := DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)), 'COB103', 'SITCTADES');
      End
      Else pnlDevxOFi.Visible := False;
      
   End
   Else
   Begin
      If Length(DBLkuCTipDes.Text) <> 2 Then
      Begin
         Beep;
         EdtTipDes.Text := '';
      End;
   End
end;

procedure TFSolicitudDevo.BitBtn1Click(Sender: TObject);
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
var
  xSQL:String;
begin
   If DM1.cdsQry5.FieldByName('FORPAGID').AsString = '03' Then
   Begin
       xSQL := 'SELECT A.ASOID, A.OFIDES, A.FORPAGID, A.NRO_OPERACION,A.NRO_OPERACION NROOPE, A.FEC_OPERACION,A.FEC_OPERACION FOPERAC,A.FEC_OPERACION CREFPAG, TO_CHAR(A.FEC_OPERACION, ''YYYY'') TRANSANO '+
            ',TO_CHAR(A.FEC_OPERACION, ''MM'') TRANSMES, A.UPROID, A.UPAGOID, A.USEID, A.ASOCODMOD, '+
            'A.ASOAPENOM, A.BANCOID, A.CCBCOID, A.IMPORTE, A.FREG, A.HREG, A.USERID, A.RCOBID, A.DETRCOBID, A.USERCOBID, A.FLGEST,C.AGENBCODES,MONTOT, '+
            '(SELECT ESTDES FROM CRE113 WHERE ESTID=A.FLGEST) ESTADO '+
            'FROM COB_DES_CRO_CERRADO_DET A,COB348 B,COB102 C WHERE '+
            'B.NUMOPE = SUBSTR(A.NRO_OPERACION,5) AND B.FECPAG = TO_CHAR(A.FEC_OPERACION, ''YYYYMMDD'') '+
            //'AND A.FEC_OPERACION = TO_DATE('+QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString)+')'+
            'AND A.FEC_OPERACION = '+QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString)+
            ' AND A.FORPAGID = ''03'' AND B.CODOFI = C.AGENBCOID (+)';
      DM1.cdsAsoBanAct.Close;
      DM1.cdsAsoBanAct.DataRequest(xSql);
      DM1.cdsAsoBanAct.Open;
   End;

   If DM1.cdsQry5.FieldByName('FORPAGID').AsString = '43' Then
   Begin
//Inicio HPC_201820_COB
// Se adiciona columna al script  para forma de pago por cronogramas cerrados
      xSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM,FEC_OPERACION,NRO_OPERACION,IMPORTE,FREG,(SELECT ESTDES FROM CRE113 WHERE ESTID=FLGEST) ESTADO '
//Final HPC_201820_COB 
        +' FROM COB_DES_CRO_CERRADO_DET WHERE NRO_OPERACION='+QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString)
        +' AND FEC_OPERACION= '+QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString);
      DM1.cdsTDoc.Close;
      DM1.cdsTDoc.DataRequest(xSQL);
      DM1.cdsTDoc.Open;
   End;
// Fin HPC_201806_COB
   Close;
end;

//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
procedure TFSolicitudDevo.dblMotivoDevChange(Sender: TObject);
begin
  dblMotivoDevExit(SELF);
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
procedure TFSolicitudDevo.dblMotivoDevExit(Sender: TObject);
begin
  If dm1.cdsResol.Locate('CODTIPREF;CODREF',VarArrayof(['MOT',dblMotivoDev.Text]), []) Then
      edtMotivoDev.Text:=DM1.cdsResol.FieldByname('DESCRIPCION').AsString
   Else edtMotivoDev.Text:= '';
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
function TFSolicitudDevo.VerificaDevxOfi: Boolean;
var xsql:String;
    xretorno: boolean;
begin
   xretorno:=True;
   XSQL:='SELECT NUMREGOFI,NUMREGACT,USUCRE,FECMOD FROM DB2ADMIN.COB_DEV_POR_OFI WHERE 1=1 ';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(XSQL);
   DM1.cdsDLabo.Open;
   lbldevxofi.Caption := DM1.cdsDLabo.Fieldbyname('NUMREGOFI').AsString;
   lblactual.Caption  := DM1.cdsDLabo.Fieldbyname('NUMREGACT').AsString;
   If (DM1.cdsDLabo.Fieldbyname('NUMREGACT').AsInteger)+1 >
      (DM1.cdsDLabo.Fieldbyname('NUMREGOFI').AsInteger)  Then
   Begin
     xretorno:= False;
   End;
   Result := xretorno;
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Se adiciona control de número de devoluciones por oficio, tambien motivo y origen de devolución.
procedure TFSolicitudDevo.MotdevoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key In [char(39),'"'] Then
      Key := #0;
end;
//Final HPC_201707_COB

// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
procedure TFSolicitudDevo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    BitBtn1Click(Self);
end;
// Fin HPC_201806_COB
end.
