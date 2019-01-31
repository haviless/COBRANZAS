// Inicio Uso Estándares   :	01/08/2011
// Unidad		            :	COBF007.pas
// Formulario		         :	FDevExcFSC
// Fecha de Creación	      :	31/5/2011
// Autor			            :	Ricardo Medina
// Objetivo		            :  Devolución de Excesos del FSC

// Actualizaciones:
// HPC_201112_COB(HPP_201113_COB)	31/5/2011  RMEDINA / Creación del formulario
// HPP_201115_COB                              RMEDINA / Se adiciona la oficina para la contabilización de efectivos
// HPC_201121_COB                   11/8/2011  RMEDINA / Se modifica campo errado CODOFI por OFDESID
// Pase de HPC_201121_COB a HPP_201118_COB: Supervisor de Calidad - 15/08/2011
// HPC_201735_COB : Mejoras en el proceso de Aprobación de Devoluciones en efectivo

unit COBF007;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Wwdbdlg, wwdblook,
  ComCtrls, ExtCtrls, DB, DBClient, ppVar, ppBands, ppCtrls, ppReport,
  ppSubRpt, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache, ppParameter,
  //Inicio HPC_201735_COB: nueva librería
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, jpeg;
  //Fin HPC_201735_COB

type
  TfDevExcFSC = class(TForm)
    GroupBox12: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    DtpFecDev: TDateTimePicker;
    EdtNroDev: TEdit;
    Panel6: TPanel;
    lblMonDev: TLabel;
    grpPagar: TGroupBox;
    edtOfDesId: TEdit;
    edtOfDesNom: TEdit;
    grpDetDev: TGroupBox;
    Label23: TLabel;
    dtgDevuelvo: TwwDBGrid;
    mObservacion: TMemo;
    GroupBox13: TGroupBox;
    BitBtn3: TBitBtn;
    BitGrabar2: TBitBtn;
    BitPrint: TBitBtn;
    grbTipoDesembolso: TGroupBox;
    Label21: TLabel;
    lblCtaAhorros: TLabel;
    lblAgencia: TLabel;
    DBLkuCTipDes: TwwDBLookupCombo;
    EdtTipDes: TEdit;
    EdtCtaAhorros: TEdit;
    EdtSitCta: TEdit;
    DBLkCDAgencias: TwwDBLookupComboDlg;
    EdtCodAgen: TEdit;
    EdtDepGir: TEdit;
    CDSDEVUELVO: TClientDataSet;
    DSDEVUELVO: TDataSource;
    ppRepDevExcFSC: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    //Inicio HPC_201735_COB: objeto removido
    //ppLabel27: TppLabel;
    //Fin HPC_201735_COB
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
    //Inicio HPC_201735_COB: objetos removidos
    //ppLabel51: TppLabel;
    //ppLine12: TppLine;
    //Fin HPC_201735_COB
    ppLabel52: TppLabel;
    pplFirmaAso: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel50: TppLabel;
    ppLine14: TppLine;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppdbCREMTOCOBNEW: TppDBText;
    ppDBText13: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel53: TppLabel;
    ppVCREMTOCOBNEW: TppVariable;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppDetailBand4: TppDetailBand;
    lblRotPag: TppLabel;
    lblPagEn: TppLabel;
    //Inicio HPC_201735_COB: Nuevos objetos para el manejo del formato: Nota de desembolso
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLblMotDes: TppLabel;
    ppLinNivApr03Ger: TppLine;
    ppLblNivApr03Ger: TppLabel;
    ppImage1: TppImage;
    ppLineFirmaSectorista: TppLine;
    ppLblFirmaSectorista1: TppLabel;
    ppLblFirmaSectorista2: TppLabel;
    ppLineFirmaSubjefatura: TppLine;
    ppLblFirmaSubjefatura1: TppLabel;
    ppLblFirmaSubjefatura2: TppLabel;
    ppLineFirmaJefatura: TppLine;
    ppLblFirmaJefatura1: TppLabel;
    ppLblFirmaJefatura2: TppLabel;
    //Fin HPC_201735_COB
    procedure FormActivate(Sender: TObject);
    procedure DBLkuCTipDesChange(Sender: TObject);
    procedure DBLkCDAgenciasChange(Sender: TObject);
    procedure DBLkuCTipDesKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitGrabar2Click(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //Inicio HPC_201735_COB: nuevas variables
    xNivApr : String;
    xMotDev : String;
    xUsuApr : String;
    xUsuAprSub : String;
    xUsuAprJef : String;
    //Fin HPC_201735_COB
  end;

var
  fDevExcFSC: TfDevExcFSC;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDevExcFSC.FormActivate(Sender: TObject);

VAR ximp_dev :currency;
begin
      DM1.cdsAgenciaBco.Close;
      DM1.cdsAgenciaBco.DataRequest('Select a.AGENBCOID,a.AGENBCODES,A.DPTOID,B.DPTODES FROM COB102 A, APO158 B WHERE A.DPTOID=B.DPTOID ORDER BY A.DPTOID,A.AGENBCODES');
      DM1.cdsAgenciaBco.Open;
      DBLkCDAgencias.LookupTable:= DM1.cdsAgenciaBco;
      DBLkCDAgencias.LookupField:='AGENBCOID';
      DM1.cdsFormPago.Close;
      DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR FROM CRE104 WHERE TIPDESEID IN (''04'',''05'',''06'') ORDER BY TIPDESEID');
      DM1.cdsFormPago.Open;
      DBLkuCTipDes.LookupTable := DM1.cdsFormaPago;
      DBLkuCTipDes.LookupField := 'TIPDESEID';

      DBLkuCTipDes.Text        := Dm1.cdsGradoA.Fieldbyname('FORPAGID').AsString;
      DBLkCDAgencias.Text      := Dm1.cdsGradoA.Fieldbyname('AGEBAN').AsString;
      mObservacion.Text        := Dm1.cdsGradoA.Fieldbyname('MOTDEV').AsString;

      //Inicio HPC_201735_COB
      xNivApr :=  TRIM(DM1.cdsGradoA.FieldByName('NIVAPR').AsString);
      xMotDev :=  TRIM(DM1.cdsGradoA.FieldByName('MOTDEV').AsString);
      xUsuApr :=  TRIM(DM1.cdsGradoA.FieldByName('USUAPR').AsString);
      xUsuAprSub :=  TRIM(DM1.cdsGradoA.FieldByName('USUAPRSUB').AsString);
      xUsuAprJef :=  TRIM(DM1.cdsGradoA.FieldByName('USUAPRJEF').AsString);
      //Fin HPC_201735_COB

      Dm1.cdsPlanDet.First;
      CDSDEVUELVO.EmptyDataSet;
      While not Dm1.cdsPlanDet.Eof Do
        Begin
          CDSDEVUELVO.Append;
          CDSDEVUELVO.FieldByName('NUMDEU').AsString:=Dm1.cdsPlanDet.FieldByName('NUM_DEU').AsString;
          CDSDEVUELVO.FieldByName('CORDEU').AsString:=Dm1.cdsPlanDet.FieldByName('COR_COB_DEU').AsString;
          CDSDEVUELVO.FieldByName('MONREV').AsCurrency:=Dm1.cdsPlanDet.FieldByName('MONREV').AsCurrency;
          CDSDEVUELVO.Post;
          ximp_dev:=ximp_dev+Dm1.cdsPlanDet.FieldByName('MONREV').AsCurrency;
          Dm1.cdsPlanDet.Next;
        End;
        dtgDevuelvo.ColumnByName('MONREV').FooterValue := FormatCurr('###,##0.#0', ximp_dev);
        CDSDEVUELVO.First;
        If Length(trim(Dm1.cdsGradoA.Fieldbyname('FORPAGID').AsString)) = 0 Then  grbTipoDesembolso.Enabled := True ELSE grbTipoDesembolso.Enabled := False;

        BitPrint.Enabled     := False;
        DBLkuCTipDes.Enabled := True;
        lblMonDev.Caption    := FormatCurr('###,###,##0.00', Dm1.cdsGradoA.Fieldbyname('IMPDEV').AsCurrency);
        DtpFecDev.Date       := DM1.FechaSys;
      //Se inicializa las variables de oficina
        edtOfDesId.Text      := '';
        edtOfDesNom.Text     := '';
        grpPagar.Visible     := False;
        If DBLkuCTipDes.Text = '04' Then
        Begin
          grpPagar.Visible := True;
          edtOfDesId.Text  := Dm1.cdsGradoA.Fieldbyname('OFDESPAG').AsString;
          edtOfDesNom.Text := DM1.CrgDescrip('OFDESID=' + QuotedStr(Dm1.cdsGradoA.Fieldbyname('OFDESPAG').AsString), 'APO110', 'OFDESNOM');
        End;
end;

procedure TfDevExcFSC.DBLkuCTipDesChange(Sender: TObject);
begin
   If DM1.cdsFormPago.Locate('TIPDESEID', VarArrayof([DBLkuCTipDes.text]), []) Then
   Begin
      EdtTipDes.Text := DM1.cdsFormPago.fieldbyname('TIPDESEABR').AsString;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '04' Then
      Begin
         lblCtaAhorros.Enabled := False;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := '';
         EdtSitCta.Text := '';
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
         lblCtaAhorros.Enabled := True;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := DM1.cdsAso.FieldByName('ASONCTA').AsString;
         EdtSitCta.Text := DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)), 'COB103', 'SITCTADES');
      End

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

procedure TfDevExcFSC.DBLkCDAgenciasChange(Sender: TObject);
begin
   If DM1.cdsAgenciaBco.Locate('AGENBCODES', VarArrayof([DBLkCDAgencias.text]), []) Then
   Begin
      EdtCodAgen.Text := DM1.cdsAgenciaBco.fieldbyname('AGENBCOID').AsString;
      EdtDepGir.Text := DM1.cdsAgenciaBco.fieldbyname('DPTOID').AsString + '-' + DM1.cdsAgenciaBco.fieldbyname('DPTODES').AsString;
   End
   Else
   Begin
      If Length(DBLkCDAgencias.Text) = 0 Then
      Begin
         Beep;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
      End;
   End


end;

procedure TfDevExcFSC.DBLkuCTipDesKeyPress(Sender: TObject; var Key: Char);
begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
end;

procedure TfDevExcFSC.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TfDevExcFSC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dm1.cdsAgenciaBco.Close;
 dm1.cdsAgenciaBco.IndexName:='';
 dm1.cdsAgenciaBco.Filter:='';

 dm1.cdsFormPago.Close;
 dm1.cdsFormPago.IndexName:='';
 dm1.cdsFormPago.Filter:='';

 dm1.cdsPlanDet.Close;
 dm1.cdsPlanDet.IndexName:='';
 dm1.cdsPlanDet.Filter:='';

 dm1.cdsGradoA.Close;
 dm1.cdsGradoA.IndexName:='';
 dm1.cdsGradoA.Filter:='';

end;

procedure TfDevExcFSC.BitGrabar2Click(Sender: TObject);
VAR XSQL,XASOID,XNUM_DEU,XCOR_COB_DEU,VNUMDEV:STRING;
      XASOCTAAHO,XASOSITCTA,XLUGGIRO,XCODGIRO,XDEPGIRO:STRING;
begin


  //GENERA CORRELATIVO DE DEVOLUCION
    XSQL:='SELECT CANCUO FROM CRE206 WHERE CREAREA=''COB'' AND TIPO=''D'' AND CORREANO=TO_CHAR(SYSDATE,''YYYY'') AND CANCUO IS NOT NULL ';
    Dm1.cdsPlantilla.Close;
    Dm1.cdsPlantilla.DataRequest(Xsql);
    Dm1.cdsPlantilla.Open;
    If Dm1.cdsPlantilla.RecordCount=0 Then VNUMDEV:='000001'
    Else VNUMDEV:=DM1.StrZero(IntToStr(StrToInt(Dm1.cdsPlantilla.Fieldbyname('CANCUO').AsString)+1),6);

    IF VNUMDEV='0000000001' Then
       XSQL:='INSERT INTO CRE206(CREAREA,TIPO,CORREANO,CANCUO) VALUES(''COB'',''D'',TO_CHAR(SYSDATE,''YYYY''),''000001'')'
    ELSE
       XSQL:='UPDATE CRE206 SET CANCUO='''+VNUMDEV+''' '+
             'WHERE CREAREA=''COB'' AND TIPO=''D'' AND CORREANO=TO_CHAR(SYSDATE,''YYYY'') AND CANCUO IS NOT NULL ';
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    EdtNroDev.Text:=VNUMDEV;

    If DBLkuCTipDes.Text = '06' Then
    Begin
      XASOCTAAHO := Trim(EdtCtaAhorros.Text);
      XASOSITCTA := DM1.cdsAso.FieldByName('SITCTA').AsString;
    End
    Else
      If DBLkuCTipDes.Text = '05' Then
      Begin
         XLUGGIRO := Trim(DBLkCDAgencias.Text);
         XCODGIRO := Trim(EdtCodAgen.Text);
         XDEPGIRO := Trim(Copy(Trim(EdtDepGir.Text), 1, 2));
      End;

    xSql := 'Insert Into MDEVCAB (ASOID,ASOCODMOD,ASOCODAUX,ASOAPENOM,ASONUMDEV,ASOANODEV,ASOFECDEV,ASOMONDEV,USEID,UPROID,UPAGOID,DPTOID,ASODNI,' +
  //Inicio: HPP_201118_COB
  //se cambio CODOFI por OFDESID
{
        'TIPDESEID,CREESTID,CREESTADO,FORPAGID,ASOOBSERV,ASOCTAAHO,ASOSITCTA,LUGGIRO,CODGIRO,DEPGIRO,FLGFSC,CODOFI,USUARIO,FREG) VALUES (' +
}
      'TIPDESEID,CREESTID,CREESTADO,FORPAGID,ASOOBSERV,ASOCTAAHO,ASOSITCTA,LUGGIRO,CODGIRO,DEPGIRO,FLGFSC,OFDESID,USUARIO,FREG) VALUES (' +
  //Fin: HPP_201118_COB
      QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
      QuotedStr(TRIM(EdtNroDev.Text)) + ',' +
      QuotedStr(Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)), 7, 4)) + ',' +
      QuotedStr(DateToStr(DtpFecDev.Date)) + ',' +
      CurrToStr(DM1.Valores(lblMonDev.Caption)) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('DPTOID').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',' +
      QuotedStr(DBLkuCTipDes.Text) + ',' +
      QuotedStr('99') + ',' +
      QuotedStr('DEVOLUCION') + ',' +
      QuotedStr('10') + ',' +
      QuotedStr(Trim(mObservacion.Lines.Text)) + ',' +
      QuotedStr(XASOCTAAHO) + ',' +
      QuotedStr(XASOSITCTA) + ',' +
      QuotedStr(XLUGGIRO) + ',' +
      QuotedStr(XCODGIRO) + ',' +
      QuotedStr(XDEPGIRO) + ',' +
      QuotedStr('S') + ',' +
    //Se adiciona la oficina para la contabilización de efectivos
      QuotedStr(edtOfDesId.Text) +','+
      QuotedStr(DM1.wUsuario) + ',TO_CHAR(SYSDATE,''dd/mm/yyyy ''))';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


  //REVIERTE EXCESOS EN LOS MOVIMIENTOS (DATOS DE LA TABLA COB_SOLICITUD_DEV_EXC_FSC_DET)
    Dm1.cdsPlanDet.First;
    While not Dm1.cdsPlanDet.Eof do
      Begin
        //Captura la informacion de la tabla devoluciones al FSC COB_FSC_PAGOS_AL_FSC
          XSQL:='SELECT * FROM COB_FSC_PAGOS_AL_FSC  WHERE ASOID='''+Dm1.cdsPlanDet.FieldByname('ASOID').AsString+
                ''' AND NUM_DEU='''+Dm1.cdsPlanDet.FieldByname('NUM_DEU').AsString+
                ''' AND COR_COB_DEU='''+Dm1.cdsPlanDet.FieldByname('COR_COB_DEU').AsString+
                ''' AND TIP_MOV_DEU=''EXC'' ';
          Dm1.cdsPlantilla.Close;
          Dm1.cdsPlantilla.DataRequest(XSQL);
          Dm1.cdsPlantilla.Open;

          If Dm1.cdsPlantilla.RecordCount=1 Then
            Begin

            XASOID        :=Dm1.cdsPlantilla.FieldByname('ASOID').AsString;
            XNUM_DEU      :=Dm1.cdsPlantilla.FieldByname('NUM_DEU').AsString;
            XCOR_COB_DEU  :=Dm1.cdsPlantilla.FieldByname('COR_COB_DEU').AsString;

            //EJECUTA LA REVERSION EN LA TABLA COB_FSC_PAGOS_AL_FSC
            XSQL:='Begin  SP_DEV_EXC_DEL_FSC('''+XASOID+''','''+XNUM_DEU+''','''+XCOR_COB_DEU+''','''+TRIM(EdtNroDev.Text)+''','''+DM1.wUsuario+''','''+mObservacion.Text+'''); End;';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

            //ACTUALIZA LA TABLA COB_SOLICITUD_DEV_EXC_FSC_DET EL CAMPO MONDEV
            XSQL:='UPDATE  COB_SOLICITUD_DEV_EXC_FSC_DET SET  MONDEV ='  +Dm1.cdsPlanDet.FieldByname('MONREV').AsString+',ASONUMDEV='+TRIM(EdtNroDev.Text)+' WHERE '
                 +' ASOID      ='''+Dm1.cdsPlanDet.FieldByname('ASOID').AsString+'''   AND '
                 +' ANODEV     ='''+Dm1.cdsPlanDet.FieldByname('ANODEV').AsString+'''  AND '
                 +' CORDEV     ='''+Dm1.cdsPlanDet.FieldByname('CORDEV').AsString+'''  AND '
                 +' NUM_DEU    ='''+Dm1.cdsPlanDet.FieldByname('NUM_DEU').AsString+''' AND '
                 +' COR_COB_DEU='''+Dm1.cdsPlanDet.FieldByname('COR_COB_DEU').AsString+''' ';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            Dm1.cdsPlanDet.Edit;
            Dm1.cdsPlanDet.FieldByname('MONDEV').AsString:=Dm1.cdsPlanDet.FieldByname('MONREV').AsString;


           //ADICIONA A LA TABLA DE DEVOLUCIONES
           XSQL := 'INSERT INTO MDEVDET (ASOID,CREDID,CRECUOTA,ASOAPENOM,ASONUMDEV,CREFPAG,ASOANODEV,CREMTOEXC,CREAPLEXC,CREDEVEXC,CREESTID,CREESTADO,CREMES,CREANO,ASOCODMOD,ASOCODAUX,USUARIO,FREG) VALUES (' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',' +
            QuotedStr('FSC'+Dm1.cdsPlanDet.FieldByname('NUM_DEU').AsString) + ',' +
            QuotedStr(Dm1.cdsPlanDet.FieldByname('COR_COB_DEU').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
            QuotedStr(TRIM(EdtNroDev.Text)) + ',' +
            QuotedStr(Dm1.cdsPlanDet.FieldByname('CREFPAG').AsString) + ',' +
            QuotedStr(Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)), 7, 4)) + ',' +
            CurrToStr(Dm1.cdsPlanDet.FieldByname('MONDEV').AsCurrency) + ',' +
            CurrToStr(Dm1.cdsPlanDet.FieldByname('MONDEV').AsCurrency) + ',' +
            CurrToStr(Dm1.cdsPlanDet.FieldByname('MONDEV').AsCurrency) + ',' +
            QuotedStr('99') + ',' +
            QuotedStr('DEVOLUCION') + ',' +
            QuotedStr('') + ',' +
            QuotedStr('') + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
            QuotedStr(DM1.wUsuario) + ',TO_CHAR(SYSDATE,''dd/mm/yyyy ''))';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            
           End;
        Dm1.cdsPlanDet.Next;
      End;

  //ACTUALIZA EL FLAG DE REVERSION EN COB_SOLICITUD_DEV_EXC_FSC_CAB (FLAIMPREV='S')
      XSQL := 'UPDATE COB_SOLICITUD_DEV_EXC_FSC_CAB '
            + 'SET   FLAIMPREV = ''S'' '
            + 'WHERE ANODEV    = '''+Dm1.cdsPlanDet.FieldByname('ANODEV').AsString+''' AND '
            + '      CORDEV    = '''+Dm1.cdsPlanDet.FieldByname('CORDEV').AsString+''' AND '
            + '       ASOID    = '''+Dm1.cdsPlanDet.FieldByname('ASOID').AsString+''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


  //GRABA EN TABLAS DE DESEMBOLSO SI ES EN EFECTIVO
   If TRIM(DBLkuCTipDes.Text) = '04' Then
   Begin
      XSQL := 'INSERT INTO COB_DEV_EXC_FSC(ASOID,ASOCODMOD,ASOCODAUX,ASOTIPID,ASODNI,ASOAPENOM,UPROID,USEID,UPAGOID,CODDEP,CODOFI,MONTOSOL,MONTODOL,' +
              'TIPCAMB,ANULADO,ASOFECDEV,ASOANODEV,ASONUMDEV) VALUES(' +
         QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('DPTOID').AsString) + ',' +
         QuotedStr(edtOfDesId.Text) + ',' +
         CurrToStr(DM1.Valores(lblMonDev.Caption)) + ',' +
         CurrToStr(DM1.Valores(lblMonDev.Caption) / StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys))) + ',' +
         DM1.RecuperarTipoCambio(DM1.FechaSys) + ',' +
         QuotedStr('N') + ',' +
         QuotedStr(DateToStr(DtpFecDev.Date)) + ',' +
         QuotedStr(Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)), 7, 4)) + ',' +
         QuotedStr(TRIM(EdtNroDev.Text)) + ')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;

  //CIERRA LA SOLICITUD COMO DEVOLUCION EFECTUADA FLADEVEFE Y DEVEFE
     XSQL := 'UPDATE COB_SOLICITUD_DEV_EXC_FSC_CAB '
           + '   SET FLADEVEFE            =  ''S'',DEVEFE='+CurrToStr(DM1.Valores(lblMonDev.Caption))+' '
           + ' WHERE ASOID                =  ''' + Dm1.cdsPlanDet.FieldByname('ASOID').AsString+'''  AND '
           + '       ANODEV               =  ''' + Dm1.cdsPlanDet.FieldByname('ANODEV').AsString+''' AND '
           + '       CORDEV               =  ''' + Dm1.cdsPlanDet.FieldByname('CORDEV').AsString+''' AND '
           + '       NVL(FLAAPR,''X'')    =  ''S'' AND'
           + '       NVL(FLADEVEFE,''X'') <> ''S'' AND'
           + '       NVL(FLAANU,''X'')    <> ''S'' ';
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   BitGrabar2.Enabled := False;
   BitPrint.Enabled   := True;
   ShowMessage('Opereación Exitosa, Imprima de Documento antes de salir...');
end;

procedure TfDevExcFSC.BitPrintClick(Sender: TObject);
Var
   xFrmDes, xTipDes, xMeses: String;
   xCremToCob: Currency;
   xLin: Integer;

Begin

   xFrmDes := DBLkuCTipDes.Text;
   lblPagEn.Visible := False;
   lblRotPag.Visible := False;
   If xFrmDes = '04' Then
   Begin
      xTipDes := 'EFECTIVO';
      lblPagEn.Visible := True;
      lblRotPag.Visible := True;
      ppLblDesem.Caption := xTipDes;
      lblPagEn.Caption := edtOfDesNom.Text;
   End
   Else
      If xFrmDes = '05' Then
      Begin
         xTipDes := 'GIRO/TRANSFERENCIA';
         ppLblDesem.Caption := 'GIRO : ' + Copy(Trim(EdtDepGir.Text), 4, 12) + '- AGENCIA : ' + Trim(DBLkCDAgencias.Text);
      End
      Else
         If xFrmDes = '06' Then
         Begin
            xTipDes := 'CUENTA DE AHORROS';
            ppLblDesem.Caption := xTipDes + ' N: ' + Trim(EdtCtaAhorros.Text);
         End;
   ppMeses.Lines.Text := '';
   xCremToCob := 0;
   xMeses := '';
   Dm1.cdsPlanDet.First;;
   xLin := 0;

   While Not Dm1.cdsPlanDet.Eof Do
   Begin
      If Dm1.cdsPlanDet.FieldByname('MONDEV').AsFloat > 0 Then
      Begin
         xLin := xLin + 1;
         xCremToCob := xCremToCob + Dm1.cdsPlanDet.FieldByname('MONDEV').AsFloat;
         If xLin < 3 Then
            xMeses := xMeses + 'F.Pag:' + Dm1.cdsPlanDet.FieldByname('CREFPAG').AsString + ' Deuda:'+Dm1.cdsPlanDet.FieldByname('NUM_DEU').AsString+'-'+Dm1.cdsPlanDet.FieldByname('COR_COB_DEU').AsString+ ':' + DM1.StrSpace(FormatFloat('##,###.#0',Dm1.cdsPlanDet.FieldByname('MONDEV').AsFloat), 7) + '   '
         Else
         Begin
            xLin := 0;
            xMeses := xMeses + 'F.Pag:' + Dm1.cdsPlanDet.FieldByname('CREFPAG').AsString + ' Deuda:'+Dm1.cdsPlanDet.FieldByname('NUM_DEU').AsString+'-'+Dm1.cdsPlanDet.FieldByname('COR_COB_DEU').AsString+ ':' + DM1.StrSpace(FormatFloat('##,###.#0',Dm1.cdsPlanDet.FieldByname('MONDEV').AsFloat), 7) + #13;
         End;
      End;
      Dm1.cdsPlanDet.Next;
   End;

   ppMeses.Lines.Add('POR CONCEPTO  : DEVOLUCIÓN DE EXCESOS POR LA DEVOLUCIÓN AL FSC');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('POR LOS SIGUIENTES EXCESOS');
   ppMeses.Lines.Add('------------------------------');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add(Copy(xMeses, 1, Length(Trim(xMeses))));
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('Nota :'+TRIM(mObservacion.Text));
   ppLblTitulo.Caption := 'NOTA DE DESEMBOLSO : ' + xTipDes + ' N ' + Trim(EdtNroDev.Text) + '-' + Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)), 7, 4) + '-' + 'DM-COB';
   pplFirmaAso.Caption := trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString);

   PPLblDni.Caption := DM1.cdsAso.FieldByName('ASODNI').AsString;
   ppLblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   ppLblFecDoc.Caption := DateToStr(DM1.FechasOutPut(DtpFecDev.Date));
   ppLblDpto.Caption := DM1.CrgDescrip('DPTOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('DPTOID').AsString)), 'APO158', 'DPTODES');
   ppLblCodPag.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)), 'APO201', 'ASOCODPAGO');
   ppLblUproc.Caption := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
   ppLblMonDev.Caption := FormatFloat('###,###.#0', DM1.Valores(lblMonDev.Caption));
   ppLblUsuario.Caption := 'Hecho Por :' + Trim(dm1.wUsuario);

   //Inicio HPC_201735_COB
   ppLinNivApr03Ger.visible := False;
   ppLblNivApr03Ger.visible := False;
   
   ppLineFirmaSectorista.visible := False;
   ppLblFirmaSectorista1.visible := False;
   ppLblFirmaSectorista2.visible := False;
   ppLineFirmaSubjefatura.visible := False;
   ppLblFirmaSubjefatura1.visible := False;
   ppLblFirmaSubjefatura2.visible := False;
   ppLineFirmaJefatura.visible := False;
   ppLblFirmaJefatura1.visible := False;
   ppLblFirmaJefatura2.visible := False;

   If xNivApr = '01' Then
   begin
      ppLineFirmaSectorista.visible := True;
      ppLblFirmaSectorista1.visible := True;
      ppLblFirmaSectorista2.visible := True;

      ppLblFirmaSectorista1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuApr)), 'USERTABLE', 'USERNOM'));
   End
   Else If xNivApr = '02' Then
   begin
      ppLineFirmaSectorista.visible := True;
      ppLblFirmaSectorista1.visible := True;
      ppLblFirmaSectorista2.visible := True;

      ppLblFirmaSectorista1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuApr)), 'USERTABLE', 'USERNOM'));

      ppLineFirmaSubjefatura.visible := True;
      ppLblFirmaSubjefatura1.visible := True;
      ppLblFirmaSubjefatura2.visible := True;

      ppLblFirmaSubjefatura2.Caption:= 'FIRMA SUB-JEFATURA O JEFATURA';
      if Length(xUsuAprSub) > 0 Then
          ppLblFirmaSubjefatura1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuAprSub)), 'USERTABLE', 'USERNOM'))
      else
          ppLblFirmaSubjefatura1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuAprJef)), 'USERTABLE', 'USERNOM'));

   End
   Else If xNivApr = '03' Then
   Begin
      ppLineFirmaSectorista.visible := True;
      ppLblFirmaSectorista1.visible := True;
      ppLblFirmaSectorista2.visible := True;

      ppLblFirmaSectorista1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuApr)), 'USERTABLE', 'USERNOM'));

      ppLineFirmaSubjefatura.visible := True;
      ppLblFirmaSubjefatura1.visible := True;
      ppLblFirmaSubjefatura2.visible := True;

      ppLblFirmaSubjefatura1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuAprSub)), 'USERTABLE', 'USERNOM'));

      ppLineFirmaJefatura.visible := True;
      ppLblFirmaJefatura1.visible := True;
      ppLblFirmaJefatura2.visible := True;

      ppLblFirmaJefatura1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuAprJef)), 'USERTABLE', 'USERNOM'));

      ppLinNivApr03Ger.visible := True;
      ppLblNivApr03Ger.visible := True;
   End
   Else
   begin
      ppLineFirmaSectorista.visible := True;
      ppLblFirmaSectorista1.visible := True;
      ppLblFirmaSectorista2.visible := True;

      ppLblFirmaSectorista1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuApr)), 'USERTABLE', 'USERNOM'));
	    ppLblFirmaSectorista2.Caption := 'V°.B°.';
   End;
   
   ppLblMotDes.Caption := xMotDev;
   //Fin HPC_201735_COB

   ppRepDevExcFSC.Print;
   ppRepDevExcFSC.Cancel

End;

end.

