// Inicio: HPP_201008_COB por RMEDINA
// Memorándum 962-2009-DM-COB - SAR-2009-0893 - DAF-2010-004-COB
// HPC_201511_COB   : Se adiciona el valor de dos variables

Unit COBF003;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ComCtrls, wwriched;

Type
   TfObsAnulFSC = Class(TForm)
      grbObservacion: TGroupBox;
      Observacion: TwwDBRichEdit;
      BitGrabar: TBitBtn;
      BitSalir: TBitBtn;
      Procedure AnulaPagosFSC(xAsoId, xCreDid, xDocPag, xFrmPag, xFecPag: String);
      Procedure BitGrabarClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
    procedure ObservacionKeyPress(Sender: TObject; var Key: Char);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fObsAnulFSC: TfObsAnulFSC;

Implementation

Uses COBDM1, COB903, COB904, COB901;

{$R *.dfm}

Procedure TfObsAnulFSC.AnulaPagosFSC(xAsoId, xCreDid, xDocPag, xFrmPag,
   xFecPag: String);
Var
   xsql, xCreEstid, xCreEstado, tAsoid, tCreDid, tCreCuota, tEstado: String;
   tCremtoCob: currency;
Begin

   //Inicio HPC_201511_COB
   tAsoid   := xAsoId ;
   tCreDid  := xCreDid;
   //Final HPC_201511_COB

   xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, USEID, TIPCREID, CREDID, CRECUOTA, CREFPAG, NVL(CREAMORT,0) CREAMORT, '
          +'       NVL(CREINTERES,0) CREINTERES, NVL(CREFLAT,0) CREFLAT, NVL(MONCOBDESGRAV,0) MONCOBDESGRAV, NVL(CREMTOCOB,0) CREMTOCOB, '
          +'       TMONID, NVL(TCAMBIO,0) TCAMBIO, USUARIO, FREG, HREG, UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, '
          +'       ASOAPENOM, ARCHIVOFTP, CREOBS, CREANO, NROOPE, NRONABO, AREAID, CREMES, CREMTODEV, FORPAGOABR, '
          +'       TRANSINTID, CREESTID, CREESTADO, CREMTOCUO, CREDOCPAG, AGENBCOID, FORPAGID, FORPAGABR, NROREFINAN, '
          +'       CREFLAGDEV, CREESTANT, CREESTANTDES, NROOPETMP, FOPERACTMP, ASOSITID, CNTANOMM, TIPOCONT, '
          +'       NVL(CREMTOEXC,0) CREMTOEXC, NVL(CREAPLEXC,0) CREAPLEXC, PERCONTA, TIPNABO, CNTFLAG '
          +'FROM CRE310 '
          +'WHERE ASOID=' + QuotedStr(Trim(xAsoId))
          +'  AND CREDID=' + QuotedStr(Trim(xCreDid))
          +'  AND CREDOCPAG=' + QuotedStr(Trim(xDocPag))
          +'  AND FORPAGID=' + QuotedStr(Trim(xFrmPag))
          +'  AND CREFPAG =To_Date(' + QuotedStr(Trim(xFecPag)) + ',''dd/mm/yyyy'') '
          +'  AND (CREESTID NOT IN (''13'',''04'',''99'') '
          +'  AND NUMDEV IS NULL) '
          +'order by ASOID,CREDID,CRECUOTA ';
   DM1.cdsConcre.Close;
   DM1.cdsConcre.DataRequest(xSQL);
   DM1.cdsConcre.Open;
   If DM1.cdsConcre.RecordCount > 0 Then
   Begin

      If DM1.xSgr = 'EXT' Then
      Begin
         xCreEstid := '04';
         xCreEstado := 'EXTORNADO';
      End
      Else
      Begin
         xCreEstid := '13';
         xCreEstado := 'ANULADO';
      End;

      xSQL := 'UPDATE CRE310 '
             +' SET CREESTID=' + QuotedStr(xCreEstid) + ','
             +'     CREESTADO=' + QuotedStr(xCreEstado)
             +' WHERE ASOID=' + QuotedStr(Trim(xAsoId))
             +'   AND CREDID=' + QuotedStr(Trim(xCreDid))
             +'   AND CREDOCPAG=' + QuotedStr(Trim(xDocPag))
             +'   AND FORPAGID=' + QuotedStr(Trim(xFrmPag))
             +'   AND CREFPAG =To_Date(' + QuotedStr(Trim(xFecPag)) + ',''dd/mm/yyyy'') '
             +'   AND (CREESTID NOT IN (''13'',''04'',''99'') '
             +'   AND NUMDEV IS NULL) ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      DM1.cdsConcre.First;
      While Not DM1.cdsConcre.Eof Do
      Begin
         xSQL := 'Begin SP_ACT_CRE302(''' + DM1.cdsConcre.FieldByName('ASOID').AsString + ''',''' +
            DM1.cdsConcre.FieldByName('CREDID').AsString + ''',''' +
            DM1.cdsConcre.FieldByName('CRECUOTA').AsString + '''); End;';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         DM1.cdsConcre.Next;
      End;

      DM1.cdsConcre.First;
      While Not DM1.cdsConcre.Eof Do
      Begin
         xSQL := 'INSERT INTO COB901(ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG, '
            + '                   CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,UPROID, '
            + '                   DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,ARCHIVOFTP,CREOBS,CREANO,NROOPE,NRONABO, '
            + '                   AREAID,CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,CREESTID,CREESTADO,CREMTOCUO, '
            + '                   CREDOCPAG,AGENBCOID,FORPAGID,FORPAGABR,NROREFINAN,CREFLAGDEV,CREESTANT, '
            + '                   CREESTANTDES,NROOPETMP,FOPERACTMP,ASOSITID,CNTANOMM,TIPOCONT,CREMTOEXC, '
            + '                   CREAPLEXC,PERCONTA,TIPNABO,CNTFLAG,CREMENANU,USRANULA,FECANULA) '
            + 'VALUES (' + QuotedStr(DM1.cdsConcre.FieldByName('ASOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ASOCODMOD').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ASOCODAUX').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('USEID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TIPCREID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREDID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CRECUOTA').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREFPAG').AsString) + ','
            + DM1.cdsConcre.FieldByName('CREAMORT').AsString + ','
            + DM1.cdsConcre.FieldByName('CREINTERES').AsString + ','
            + DM1.cdsConcre.FieldByName('CREFLAT').AsString + ','
            + DM1.cdsConcre.FieldByName('MONCOBDESGRAV').AsString + ','
            + DM1.cdsConcre.FieldByName('CREMTOCOB').AsString + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TMONID').AsString) + ','
            + DM1.cdsConcre.FieldByName('TCAMBIO').AsString + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('USUARIO').AsString) + ','
            + QuotedStr(DateToStr(DM1.cdsConcre.FieldByName('FREG').AsDateTime)) + ','
            + QuotedStr(DateToStr(DM1.cdsConcre.FieldByName('HREG').AsDateTime)) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('UPROID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('DPTOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('UPAGOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('BANCOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CCBCOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ASOAPENOM').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ARCHIVOFTP').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREOBS').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREANO').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('NROOPE').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('NRONABO').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('AREAID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREMES').AsString) + ','
            + CurrToStr(DM1.cdsConcre.FieldByName('CREMTODEV').AsCurrency) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('FORPAGOABR').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TRANSINTID').AsString) + ','
            + QuotedStr(xCreEstid) + ','
            + QuotedStr(xCreEstado) + ','
            + DM1.cdsConcre.FieldByName('CREMTOCUO').AsString + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREDOCPAG').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('AGENBCOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('FORPAGID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('FORPAGABR').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('NROREFINAN').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREFLAGDEV').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREESTANT').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREESTANTDES').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('NROOPETMP').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('FOPERACTMP').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ASOSITID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CNTANOMM').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TIPOCONT').AsString) + ','
            + DM1.cdsConcre.FieldByName('CREMTOEXC').AsString + ','
            + DM1.cdsConcre.FieldByName('CREAPLEXC').AsString + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('PERCONTA').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TIPNABO').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CNTFLAG').AsString) + ','
            + QuotedStr(Trim(Observacion.Lines.Text)) + ','
            + QuotedStr(DM1.wUsuario) + ',SYSDATE' + ')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         DM1.cdsConcre.Next;
      End;
   End;

   DM1.AplicaSaldoPre(tAsoId, tCreDid);
   DM1.cdsConcre.Close;

End;

Procedure TfObsAnulFSC.BitGrabarClick(Sender: TObject);
Var
   xsql: String;
   xAsoId, xCreDid, xDocpago, xFrmPago, xCrefPag, xId_est_fsc, xflg_anu_ext, xobs: String;
   I: integer;
Begin

   If  Length(Trim(Observacion.Text))=0 Then
     Begin
       ShowMessage('Debe ingresar OBSERVACION de la Operación..');
       Exit;
     End;

   Screen.Cursor := crHourGlass;
   xobs := '';
   For I := 0 To Observacion.Lines.count - 1 Do
   Begin
      xobs := xobs + ' ' + Trim(Observacion.Lines.Strings[i]);
   End;
   xobs := Trim(xobs);

   xSQL := 'SELECT A.ASOID, A.NUM_DEU, A.CRE_APL_FSC, A.NRO_REF_FSC, SUBSTR(A.CRE_APL_FSC,9,7)CREDITO, '
          +'       A.FEC_OTORG, B.TIPCREDES, A.ULT_FEC_VEN, A.DIA_ATRASO, B.TIPCREDES, A.CAP_APL_FSC, '
          +'       A.INT_APL_FSC, A.FLA_APL_FSC, A.IMP_APL_FSC '
          +'FROM COB_FSC_DEUDA_FSC_DET A,CRE110 B '
          +'WHERE ASOID='+quotedstr(Dm1.cdsAso.fieldbyname('ASOID').AsString)
          +'  AND A.NUM_DEU='+quotedstr(Dm1.cdsMGrupo.FieldByName('NUM_DEU').AsString)
          +'  AND SUBSTR(A.CRE_APL_FSC,7,2)=B.TIPCREID(+)';
   Dm1.cdsGrupos.Close;
   Dm1.cdsGrupos.DataRequest(XSQL);
   Dm1.cdsGrupos.Open;

   If Dm1.cdsGrupos.RecordCount = 0 Then
   Begin
      ShowMessage('No existe información para anular..');
      Exit
   End;
   Dm1.cdsGrupos.First;
   While Not Dm1.cdsGrupos.Eof Do
   Begin
      xAsoid := Dm1.cdsGrupos.FieldbyName('ASOID').AsString;
      xCredid := Dm1.cdsGrupos.FieldByName('CRE_APL_FSC').AsString;
      xDocpago := Dm1.cdsGrupos.FieldByName('NRO_REF_FSC').AsString;
      xFrmPago := Dm1.cdsMGrupo.FieldByName('FORPAGID').AsString;
      xCrefpag := Dm1.cdsMGrupo.FieldByName('FEC_REF_FSC').AsString;

       //Anula/extorna aplicación de Fondo Solidario
      DM1.xCnd := 'S';
      AnulaPagosFSC(xAsoId, xCreDid, xDocPago, xFrmPago, xCrefPag);
      DM1.ActSaldoPrest(xAsoId);
      Dm1.cdsGrupos.Next;
   End;

   If Dm1.xSgr = 'ANU' Then
   Begin
      xId_est_fsc := '13';
      xflg_anu_ext := 'A';
   End
   Else
   Begin
      xId_est_fsc := '04';
      xflg_anu_ext := 'E';
   End;

   //Anula/Extorna Cabecera
   XSQL := 'update COB_FSC_DEUDA_FSC_CAB '
          +'set USER_ANULA='+quotedstr(Dm1.wUsuario)+','
          +'    FREG_ANULA=SYSDATE, '
          +'    ID_EST_FSC='+quotedstr(xId_est_fsc)+','
          +'    OBS_ANULA='+quotedstr(TRIM(xobs))+' '
          +'where NUM_DEU='+quotedstr(Dm1.cdsMGrupo.FieldByname('NUM_DEU').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   //Anula/Extorna Detalle
   XSQL := 'UPDATE COB_FSC_DEUDA_FSC_DET '
          +'SET FLG_ANU_EXT='+quotedstr(xflg_anu_ext)+','
          +'    USU_ANU_EXT='+quotedstr(Dm1.wUsuario)+','
          +'    FEC_ANU_EXT=sysdate '
          +'WHERE NUM_DEU='+quotedstr(Dm1.cdsMGrupo.FieldByname('NUM_DEU').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   fPagoCuotas.ConFSC;

   Screen.Cursor := crdefault;
   ShowMessage('Operación concluyó exitósamente');
   fObsAnulFSC.Close;
End;

Procedure TfObsAnulFSC.BitSalirClick(Sender: TObject);
Begin
   fObsAnulFSC.Close;
End;

Procedure TfObsAnulFSC.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

procedure TfObsAnulFSC.ObservacionKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #39 Then
   Begin
      Key := #0;
   End;
end;

End.

