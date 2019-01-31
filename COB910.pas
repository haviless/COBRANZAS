// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB910
// Formulario                    : fGenOficios
// Fecha de Creación             : 
// Autor                         : Sistemas
// Objetivo                      : Generación de oficios-devoluciones

// Actualizaciones               :
// HPC_201402_COB                :  Cambio de DCOM a Socket
// SPP_201402_COB                : Se realiza el pase a producción a partir del HPC_201402_COB
// COB_201822_HPC                : Se modifica el oficio de devolución
unit COB910;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, Db, ComCtrls,
  wwdblook, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppVar, ppDB, ppDBPipe, ExtCtrls, Mask, wwdbedit,
//Inicio COB_201822_HPC 
//Se modifica el oficio de devolución
  Wwdbspin, Spin, ppStrtch, ppMemo, jpeg, ppParameter;
//Fin COB_201822_HPC

type
  TfGenOficios = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitSalir: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    dtgDetPag: TwwDBGrid;
    dtgDetPagIButton: TwwIButton;
    BitAnular: TBitBtn;
    BitPrint: TBitBtn;
    BitDiskette: TBitBtn;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    DBLkuCTipDes: TwwDBLookupCombo;
    EdtTipDes: TEdit;
    GroupBox4: TGroupBox;
    dtgDevDet: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    BitFiltra: TBitBtn;
    ppRepOfiPrin: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppNroOfi: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLblMonto: TppLabel;
    ppLblReg: TppLabel;
    ppLabel13: TppLabel;
    ppRepInf: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppTitleBand2: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel16: TppLabel;
    ppOfici2: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLblImporte: TppLabel;
    ppLblNumero: TppLabel;
    ppRepDetalle: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLblTitulo: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDBPipDet: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLblNota: TppLabel;
    ppRepGir: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppTitleBand3: TppTitleBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLblOfigir: TppLabel;
    ppLabel30: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLblMonto2: TppLabel;
    ppLblReg2: TppLabel;
    ppLabel54: TppLabel;
    ppRepOfiGir: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLblTit: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBOfiGir: TppDBPipeline;
    ppLabel69: TppLabel;
    ppDBText7: TppDBText;
    Memo1: TMemo;
    TabSheet3: TTabSheet;
    GroupBox5: TGroupBox;
    BitTrans: TBitBtn;
    pnlTransf: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    spAnno: TSpinEdit;
    BitMostrar: TBitBtn;
    ppLabel159: TppLabel;
    ppLabel165: TppLabel;
    ppLabel20: TppLabel;
    ppLabel29: TppLabel;
    ppLabel55: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    lblEstado: TppLabel;
    DbDetRP: TppDBPipeline;
    RpDetRP: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel146: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    xwppLblFecha: TppLabel;
    lblNroOfiRP: TppLabel;
//Inicio COB_201822_HPC 
//Se modifica el oficio de devolución
//  ppLabel151: TppLabel;
//  ppLabel152: TppLabel;
//Fin COB_201822_HPC
    ppLabel153: TppLabel;
    ppLabel149: TppLabel;
    lblEstados: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppFooterBand9: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    mTextSoles: TppMemo;
    ppLabel70: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel73: TppLabel;
    ppLabel166: TppLabel;
    ppLabel168: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
//Inicio HPP_201113_COB
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
//Inicio COB_201822_HPC 
//Se modifica el oficio de devolución
    ppImage1: TppImage;
    ppLabel17: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    pplblUsuario: TppLabel;
    ppParameterList1: TppParameterList;
    ppLabel76: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine9: TppLine;
//Fin COB_201822_HPC 
//Final HPP_201113_COB
    procedure BitSalirClick(Sender: TObject);
    procedure dtgDetPagIButtonClick(Sender: TObject);
    procedure dtgDetPagDblClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dtgDevDetDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLkuCTipDesChange(Sender: TObject);
    procedure BitFiltraClick(Sender: TObject);
    procedure BitDisketteClick(Sender: TObject);
    procedure BitAnularClick(Sender: TObject);
    procedure dtgDetPagDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitTransClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure GrabaTexto( Datos:TDatasource; Fichero: string; Delimitador:char);
  public
    { Public declarations }
  end;

var
  fGenOficios: TfGenOficios;

implementation

uses COBDM1, COB911, COB912, COB907;

{$R *.dfm}

procedure TfGenOficios.BitSalirClick(Sender: TObject);
begin
  DM1.cdsDetalle.Close;
  DM1.cdsQry3.Close;
  Close;
end;

procedure TfGenOficios.dtgDetPagIButtonClick(Sender: TObject);
begin
 If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
      End;

If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
    Begin
      MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
      Exit;
    End;

    fNueOficio := TfNueOficio.create(Self);
    fNueOficio.ShowModal;
    fNueOficio.Free;
    DM1.cdsFormPago.Close

end;

procedure TfGenOficios.dtgDetPagDblClick(Sender: TObject);
var xDocOfi,xAnoOfi,xTipDes,xSQL:String;
begin
    xDocOfi:=Trim(DM1.cdsOfDes.FieldByname('NUMOFI').AsString);
    xAnoOfi:=Trim(DM1.cdsOfDes.FieldByname('ANOOFI').AsString);
    xTipDes:=Trim(DM1.cdsOfDes.FieldByname('CODDES').AsString);
    xSQL:='SELECT ASOCODMOD,ASOAPENOM,ASONUMDEV,ASOMONDEV,DOCOFI,LUGGIRO FROM MDEVCAB WHERE DOCOFI='+QuotedStr(xDocOfi)+' AND ASOANODEV='+QuotedStr(xAnoOfi)+' AND TIPDESEID='+QuotedStr(xTipDes)+' ORDER BY ASOAPENOM';
    DM1.cdsDetalle.Close;
    DM1.cdsDetalle.DataRequest(xSQL);
    DM1.cdsDetalle.Open;
    TNumericField(DM1.cdsDetalle.fieldbyname('ASOMONDEV')).DisplayFormat:='###,###.#0';
    fDetOficio := TfDetOficio.create(Self);
    fDetOficio.ShowModal;
    fDetOficio.Free;
    DM1.cdsDetalle.Close;
end;

procedure TfGenOficios.BitPrintClick(Sender: TObject);
var xCodDes,xDocOfi,xAnoOfi,xSQL:String;
    xInt:Real;
begin
   xCodDes:=Trim(DM1.cdsOfDes.FieldByname('CODDES').AsString);
   xDocOfi:=Trim(DM1.cdsOfDes.FieldByname('NUMOFI').AsString);
   xAnoOfi:=Trim(DM1.cdsOfDes.FieldByname('ANOOFI').AsString);
   If xCodDes='05' Then
   Begin
        xInt:=Int(DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency);
        ppLblOfigir.Caption := 'OFICIO N° '+xDocOfi+'-'+xAnoOfi+'-DM-COB';
        ppLblTit.Caption:='TRANSFERENCIA A PROVINCIA';
        ppLblReg2.Caption :='Por '+FormatFloat('###,###',DM1.cdsOfDes.fieldbyname('TOTREG').AsInteger)+' registros.';
        ppLblMonto2.Caption:='S/. '+FormatFloat('###,###,###.#0',DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency)+'   ('+Trim(DM1.xIntToLletras(StrToInt(FloatToStr(xInt)),DM1.Valores(FloatToStr(DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency))))+')';
        ppRepGir.Print;
        ppRepGir.Cancel;
{        xSQL:='SELECT NUMVECES, A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.ASONUMDEV, '
             +'       A.ASOMONDEV CREMTOGIR, A.ASODNI, A.DOCOFI, A.ASOCTAAHO, '
             +'       A.LUGGIRO, A.TIPDESEID '
             +'FROM MDEVCAB A, '
             +'     (select ASOID, count(ASOID) NUMVECES '
             +'      from MDEVCAB '
             +'      group by ASOID) VECES '
             +'WHERE DOCOFI='+QuotedStr(xDocOfi)
             +' AND ASOANODEV='+QuotedStr(xAnoOfi)
             +' AND TIPDESEID='+QuotedStr(xCodDes)
             +' and VECES.ASOID(+)=A.ASOID '
             +'ORDER BY A.ASOAPENOM ';

}
        xSQL := 'SELECT ASOCODMOD,ASOAPENOM,ASONUMDEV,ASOMONDEV,DOCOFI,ASOCTAAHO,'
        //Inicio HPP_201113_COB
        //ADICIONA FLAG PARA DIFERENCIAR LAS EDVOLUCIONES POR FSC
               +'       ASODNI,LUGGIRO,TIPDESEID,CASE WHEN FLGFSC=''S'' THEN ''FSC'' ELSE '' ''END FSC  '
        //Final HPP_201113_COB
               +'FROM MDEVCAB '
               +'WHERE DOCOFI='+QuotedStr(xDocOfi)
               +' AND ASOANODEV='+QuotedStr(xAnoOfi)
               +' AND TIPDESEID='+QuotedStr(xCodDes)
               +' ORDER BY ASOAPENOM ';
        DM1.cdsDetalle.Close;
        DM1.cdsDetalle.DataRequest(xSQL);
        DM1.cdsDetalle.Open;
        ppRepOfiGir.Print;
        ppRepOfiGir.Cancel;
        DM1.cdsDetalle.Close;
   End
   Else If xCodDes='06' Then
        Begin
           lblNroOfiRP.Caption :='OFICIO N° '+xDocOfi+'-'+xAnoOfi+'-DM-COB';
//Inicio COB_201822_HPC 
//Se modifica el oficio de devolución
           xwppLblFecha.Caption := 'Jesús María, '+FormatDateTime('d "de" mmmm "de" yyyy',DM1.cdsOfdes.FieldByName('FECFIN').AsDateTime);
//Fin COB_201822_HPC 
           lblEstados.Caption:=DM1.cdsOfdes.FieldByName('OFIESTADO').AsString;
           xInt:=Int(DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency);
           mTextSoles.Text:='En Letras : ('+Trim(DM1.xIntToLletras(StrToInt(FloatToStr(xInt)),DM1.Valores(FloatToStr(DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency))))+')';


           {
              ppLblTitulo.Caption:='MULRED-TELEAHORROS';
              ppNroOfi.Caption :='OFICIO N° '+xDocOfi+'-'+xAnoOfi+'-DM-COB';
              xInt:=Int(DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency);
              ppLblReg.Caption :='Por '+FormatFloat('###,###',DM1.cdsOfDes.fieldbyname('TOTREG').AsInteger)+' registros.';
              ppLblMonto.Caption:='S/. '+FormatFloat('###,###,###.#0',DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency)+'   ('+Trim(DM1.xIntToLletras(StrToInt(FloatToStr(xInt)),DM1.Valores(FloatToStr(DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency))))+')';
              If DM1.cdsOfDes.fieldbyname('TOTREG').AsInteger > 9 Then ppLblNota.Caption:='NOTA : Se adjunta DISKETTE. ' Else ppLblNota.Caption:='';
              ppRepOfiPrin.Print;
              ppRepOfiPrin.Cancel;
              If DM1.cdsOfDes.fieldbyname('TOTREG').AsInteger > 9 Then
                 Begin
                   ppOfici2.Caption :='OFICIO N° '+xDocOfi+'-'+xAnoOfi+'-DM-COB';
                   lblEstado.Caption:=DM1.cdsOfdes.FieldByName('OFIESTADO').AsString;
                   ppLblImporte.Caption :='S/. '+FormatFloat('###,###,###.#0',DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency)+'   ('+Trim(DM1.xIntToLletras(StrToInt(FloatToStr(xInt)),DM1.Valores(FloatToStr(DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency))))+')';
                   ppLblNumero.Caption := FormatFloat('###,###',DM1.cdsOfDes.fieldbyname('TOTREG').AsInteger)+' registros por un total de : ';
                   ppRepInf.Print;
                   ppRepInf.Cancel;
                 End;
                 DM1.cdsDetalle.Close;
                 DM1.cdsDetalle.DataRequest('SELECT ASOCODMOD,ASOAPENOM,ASONUMDEV,ASOMONDEV,DOCOFI,ASOCTAAHO,LUGGIRO,TIPDESEID FROM MDEVCAB WHERE DOCOFI='+QuotedStr(xDocOfi)+' AND ASOANODEV='+QuotedStr(xAnoOfi)+' AND TIPDESEID='+QuotedStr(xCodDes)+' ORDER BY ASOAPENOM');
                 DM1.cdsDetalle.Open;
                 ppRepDetalle.Print;
                 ppRepDetalle.Cancel;
                 DM1.cdsDetalle.Close; }

             //    xSQL:='SELECT ASOID,ASOAPENOM,NVL(CREMTOGIR,0)-NVL(CREMONINS,0) CREMTOGIR,CRELUGGIRO,ASODNI,CRENUMCTA FROM CRE301 WHERE NROFICIO='+QuotedStr(xDocOfi)+' AND SUBSTR(CREANOMES,1,4)='+QuotedStr(xAnoOfi)+' AND TIPDESEID='+QuotedStr(xCodDes)+' ORDER BY ASOAPENOM';
{           xSQL:='SELECT NUMVECES, A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.ASONUMDEV, '
                      +'       A.ASOMONDEV CREMTOGIR, A.ASODNI, A.DOCOFI, A.ASOCTAAHO CRENUMCTA, '
                      +'       A.LUGGIRO CRELUGGIRO, A.TIPDESEID '
                      +'FROM MDEVCAB A, '
                      +'     (select ASOID, count(ASOID) NUMVECES '
                      +'      from MDEVCAB '
                      +'      group by ASOID) VECES '
                      +'WHERE DOCOFI='+QuotedStr(xDocOfi)
                      +' AND ASOANODEV='+QuotedStr(xAnoOfi)
                      +' AND TIPDESEID='+QuotedStr(xCodDes)
                      +' and VECES.ASOID(+)=A.ASOID '
                      +'ORDER BY A.ASOAPENOM ';
}
                 xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,ASONUMDEV,ASOMONDEV CREMTOGIR,ASODNI,'
                      //Inicio HPP_201113_COB
                      //ADICIONA FLAG PARA DIFERENCIAR LOS PAGOS POR DEVOLUCION DE EXCESOS DEL FSC
                      +'       DOCOFI,ASOCTAAHO CRENUMCTA,LUGGIRO CRELUGGIRO,TIPDESEID,CASE WHEN FLGFSC=''S'' THEN ''FSC'' ELSE '' ''END FSC  '
                      //Final HPP_201113_COB
                      +'       FROM MDEVCAB '
                      +'WHERE DOCOFI='+QuotedStr(xDocOfi)
                      +' AND ASOANODEV='+QuotedStr(xAnoOfi)
                      +' AND TIPDESEID='+QuotedStr(xCodDes)
                      +' ORDER BY ASOAPENOM';

           DM1.cdsCredito.Close;
           DM1.cdsCredito.DataRequest(xSQL);
           DM1.cdsCredito.Open;  //  mTextSoles.Text:='('+Trim(DM1.NumtoStr(xMonto))+')';
           If DM1.cdsCredito.RecordCount > 0 Then
           Begin
//Inicio COB_201822_HPC 
//Se modifica el oficio de devolución
              pplblUsuario.Caption := dm1.wUsuario;   
//Fin COB_201822_HPC 
              RpDetRP.Print;
              RpDetRP.Cancel;
           End;
        End;
end;

procedure TfGenOficios.PageControl1Change(Sender: TObject);
var xSQL:String;
begin
If PageControl1.TabIndex= 1 Then
   Begin
      DM1.cdsFormPago.Close;
      DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR FROM CRE104 WHERE TIPDESEID IN (''04'',''05'',''06'') ORDER BY TIPDESEID' );
      DM1.cdsFormPago.Open;
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest('SELECT ASOID,ASOCODMOD,ASOAPENOM,ASODNI,ASOFECDEV,ASONUMDEV,ASOANODEV,ASOMONDEV,USEID,UPROID,UPAGOID,TIPDESEID,DPTOID,USUARIO,LUGGIRO,CODGIRO FROM MDEVCAB ORDER BY ASOFECDEV,ASONUMDEV');
      DM1.cdsQry3.Open;
      TNumericField(DM1.cdsQry3.fieldbyname('ASOMONDEV')).DisplayFormat:='###,###.#0';
   End;
If PageControl1.TabIndex= 2 Then
   Begin
      xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,ASONUMDEV,ASOFECDEV,ASOMONDEV,TIPDESEID,LUGGIRO,ASOOBSERV,DOCOFI,ASOCTAAHO FROM MDEVCAB ORDER BY ASOFECDEV,ASOAPENOM';
      DM1.cdsAbonoCuotas.Close;
      DM1.cdsAbonoCuotas.DataRequest(xSQL);
      DM1.cdsAbonoCuotas.Open;
      If DM1.cdsAbonoCuotas.RecordCount > 0 Then
         Begin

         End
      Else
         MessageDlg(' No Existe Información Para Este Periodo ', mtError,[mbOk],0);
   End;
end;

procedure TfGenOficios.dtgDevDetDblClick(Sender: TObject);
var xAsoId,xNumDev,xAnoDev,xFecDev:String;
begin
 DM1.xSgr:='0';
 xAsoId  := DM1.cdsQry3.fieldbyname('ASOID').AsString;
 xNumDev  := DM1.cdsQry3.fieldbyname('ASONUMDEV').AsString;
 xAnoDev  := DM1.cdsQry3.fieldbyname('ASOANODEV').AsString;
 xFecDev  := DM1.cdsQry3.fieldbyname('ASOFECDEV').AsString;
 DM1.cdsAso.Close;
 DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));
 DM1.cdsAso.Open;
 DM1.cdsAgenciaBco.Close;
 DM1.cdsAgenciaBco.DataRequest('Select a.AGENBCOID,a.AGENBCODES,A.DPTOID,B.DPTODES FROM COB102 A, APO158 B WHERE A.DPTOID=B.DPTOID ORDER BY A.DPTOID,A.AGENBCODES');
 DM1.cdsAgenciaBco.Open;
 DM1.cdsCambios.Close;
 DM1.cdsCambios.DataRequest('SELECT CREDID,CRECUOTA,CREFPAG,CREMTOEXC,CREAPLEXC,NVL(CREDEVEXC,0) AS PORAPLICA,CREANO,CREMES FROM MDEVDET WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND ASONUMDEV='+QuotedStr(Trim(xNumDev))+' AND ASOANODEV='+QuotedStr(Trim(xAnoDev))+' Order By CREDID,CRECUOTA');
 DM1.cdsCambios.Open;
 DM1.cdsFormPago.Close;
 DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR FROM CRE104 WHERE TIPDESEID IN (''04'',''05'',''06'') ORDER BY TIPDESEID' );
 DM1.cdsFormPago.Open;
 TNumericField(DM1.cdsCambios.fieldbyname('PORAPLICA')).DisplayFormat:='###,###.#0';
 TNumericField(DM1.cdsCambios.fieldbyname('CREMTOEXC')).DisplayFormat:='###,###.#0';
 TNumericField(DM1.cdsCambios.fieldbyname('CREAPLEXC')).DisplayFormat:='###,###.#0';
 fDevoluciones:=Nil;
 fDevoluciones:= TfDevoluciones.Create(self);
 fDevoluciones.BitGrabar.Enabled := False;
 fDevoluciones.DBLkCDAgencias.Enabled := False;
 fDevoluciones.DBLkuCTipDes.Enabled := False;
 fDevoluciones.DtpFecDev.Enabled := False;
 fDevoluciones.EdtNroDev.Text := xNumDev ;
 fDevoluciones.DtpFecDev.Date :=DM1.cdsQry3.fieldbyname('ASOFECDEV').AsDateTime;
 fDevoluciones.lblMonDev.Caption := FormatFloat('###,###.#0',DM1.cdsQry3.fieldbyname('ASOMONDEV').AsCurrency);
 fDevoluciones.DBLkuCTipDes.Text := Trim(DM1.cdsQry3.fieldbyname('TIPDESEID').AsString);
 fDevoluciones.DBLkCDAgencias.Text := Trim(DM1.cdsQry3.fieldbyname('LUGGIRO').AsString);
 fDevoluciones.grpPagar.Visible:=False;
 If Trim(DM1.cdsQry3.fieldbyname('TIPDESEID').AsString)='04' Then
    Begin
     fDevoluciones.grpPagar.Visible:=True;
     fDevoluciones.edtOfDesId.Text:=DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND ASOFECDEV='+QuotedStr(xFecDev)+' AND ASONUMDEV='+QuotedStr(xNumDev),'DES_DEV_EFE','CODOFI');
     fDevoluciones.edtOfDesNom.Text:=DM1.CrgDescrip('OFDESID='+QuotedStr(Trim(fDevoluciones.edtOfDesId.Text)),'APO110','OFDESNOM');
    End;
 fDevoluciones.Showmodal;
 fDevoluciones.free;
end;

procedure TfGenOficios.FormActivate(Sender: TObject);
begin
DtpFecIni.Date := DM1.FechaSys;
DtpFecFin.Date := DM1.FechaSys;
spAnno.Value:= StrToInt(Copy(DateToStr(dm1.FechaSys),7,4));
PageControl1.ActivePageIndex:=0;
dtgDetPag.SetFocus;
end;

procedure TfGenOficios.DBLkuCTipDesChange(Sender: TObject);
begin
   If DM1.cdsFormPago.Locate('TIPDESEID',VarArrayof([DBLkuCTipDes.text]),[]) Then
        EdtTipDes.Text  := DM1.cdsFormPago.fieldbyname('TIPDESEABR').AsString
   Else
      Begin
        if Length(DBLkuCTipDes.Text) <> 2 then
           Begin
              Beep;
              EdtTipDes.Text  :='';
           End;
      End

end;

procedure TfGenOficios.BitFiltraClick(Sender: TObject);
var xFrmDes, xSQL:String;
    xFecIni, xFecFin: TDateTime;
begin
xFecIni:=DtpFecIni.Date;
xFecFin:=DtpFecFin.Date;
xFrmDes:=Trim(DBLkuCTipDes.Text);
xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,ASODNI,ASOFECDEV,ASONUMDEV,ASOANODEV,ASOMONDEV,USEID,UPROID,UPAGOID,TIPDESEID,DPTOID,USUARIO,LUGGIRO,CODGIRO FROM MDEVCAB WHERE ASOFECDEV BETWEEN To_Date('+QuotedStr(DateToStr(xFecIni))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(xFecFin))+',''dd/mm/yyyy'') AND TIPDESEID='+QuotedStr(Trim(xFrmDes))+' ORDER BY ASOFECDEV,ASONUMDEV' ;
DM1.cdsQry3.Close;
DM1.cdsQry3.DataRequest(xSQL);
DM1.cdsQry3.Open;
TNumericField(DM1.cdsQry3.fieldbyname('ASOMONDEV')).DisplayFormat:='###,###.#0';

end;

procedure TfGenOficios.BitDisketteClick(Sender: TObject);
var xCodDes,xDocOfi,xAnoOfi:String;
begin
 If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
      End;

If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
    Begin
      MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
      Exit;
    End;

xCodDes:=Trim(DM1.cdsOfDes.FieldByname('CODDES').AsString);
xDocOfi:=Trim(DM1.cdsOfDes.FieldByname('NUMOFI').AsString);
xAnoOfi:=Trim(DM1.cdsOfDes.FieldByname('ANOOFI').AsString);
If xCodDes='06' Then
   Begin
    DM1.cdsDetalle.Close;
    DM1.cdsDetalle.DataRequest('SELECT ASOCODMOD,ASOAPENOM,ASONUMDEV,ASOMONDEV,DOCOFI,ASOCTAAHO,LUGGIRO,TIPDESEID FROM MDEVCAB WHERE DOCOFI='+QuotedStr(xDocOfi)+' AND ASOANODEV='+QuotedStr(xAnoOfi)+' AND TIPDESEID='+QuotedStr(xCodDes)+' ORDER BY ASOAPENOM');
    DM1.cdsDetalle.Open;
    Try
      If DM1.cdsDetalle.RecordCount > 9 Then
        GrabaTexto(DM1.dsDetalle,'A:\'+Copy(xDocOfi+xAnoOfi,4,7)+'.Txt',',')
      Else MessageDlg(' Solo Disponible Para DIEZ ó Mas ASOCIADOS', mtError,[mbOk],0);

    Except
      MessageDlg(' Inserte Diskette En A:\  ', mtError,[mbOk],0);
    End;
      DM1.cdsDetalle.Close;
   End
else
  MessageDlg(' Solo Disponible Para MULRED-TELEAHORROS ', mtError,[mbOk],0);
end;

procedure TfGenOficios.GrabaTexto(Datos: TDatasource; Fichero: string; Delimitador: char);
 var
     f      : textfile;
     n , i  : integer;
     Linea,Entero,Decimal,Cuenta,Importe,Punto  : string;
  begin
    AssignFile(f,Fichero);
    Rewrite(f);
    with Datos.DataSet do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        Linea:='';
        Cuenta:=Trim(Datos.DataSet.FieldByName('ASOCTAAHO').AsString);
        Importe:=FormatFloat('######.#0',Datos.DataSet.FieldByName('ASOMONDEV').AsCurrency);
        Entero:=Copy(DM1.StrZero(Importe,16),1,13);
        Decimal:=Copy(DM1.StrZero(Importe,16),15,2);
        Punto:='';
        For i:= 1 to 100 Do
            Punto:=Punto+'.';
        Linea:='341'+Cuenta+Entero+Decimal+Punto;
        Memo1.Lines.Add(Linea);
        writeln(f,Linea);
        Next;
      end;
      EnableControls;
    end;
    CloseFile(f);
    MessageDlg(' Diskette Se Grabo Con Exito ', mtInformation,[mbOk],0);
  end;

procedure TfGenOficios.BitAnularClick(Sender: TObject);
var xSQL,xNumOfi,xAnoOfi,xMontoLet:String;
    Boton:Integer;
    xInt:Real;
    xRegistro: TBookmark;
begin
  If dtgDetPag.DataSource.DataSet.RecordCount=0 Then Exit;
  If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
      End;

  If Copy(DM1.cdsOfdes.FieldByName('OFIESTADO').AsString,1,1)='P' Then
     Begin
        MessageDlg(' DESEMBOLSO YA FUE PROCESADO POR LA UNIDAD DE CAJA/BOVEDA ', mtInformation,[mbOk],0);
        Exit;
     End;

  Boton := Application.MessageBox ('¿Está Seguro de Retornar al Estado INICIAL este oficio?','Sistema De Cobranzas',MB_YESNO+MB_ICONQUESTION);
  If Boton = ID_YES Then
     Begin
        xNumOfi:=DM1.cdsOfdes.FieldByName('NUMOFI').AsString;
        xAnoOfi:=DM1.cdsOfdes.FieldByName('ANOOFI').AsString;
        xSQL:='DELETE FROM CAJ_TRA_DEP WHERE NOFID='+QuotedStr(Copy(xNumOfi+xAnoOfi,2,10));
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        xSQL:='UPDATE MDEVOFI SET OFIESTADO=''INICIAL'' WHERE NUMOFI='+QuotedStr(xNumOfi)+' AND ANOOFI='+QuotedStr(xAnoOfi);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        xRegistro:=DM1.cdsOfdes.GetBookmark;
        BitMostrar.OnClick(BitMostrar);
        DM1.cdsOfdes.GotoBookmark(xRegistro);
        MessageDlg(' DESEMBOLSO TRANSFERIDO RETORNO AL ESTADO INICIAL ', mtInformation,[mbOk],0);

     End;



end;

procedure TfGenOficios.dtgDetPagDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
{  If (DM1.cdsOfdes.FieldByName('CREESTID').AsString='13')  Then
     begin
        dtgDetPag.Canvas.Font.Color := clRed;
        dtgDetPag.DefaultDrawDataCell(rect,Field,State);
      end;}
   If Copy(DM1.cdsOfdes.FieldByName('OFIESTADO').AsString,1,1)='T' Then dtgDetPag.Canvas.Font.Color := clGreen;
   If Copy(DM1.cdsOfdes.FieldByName('OFIESTADO').AsString,1,1)='P' Then dtgDetPag.Canvas.Font.Color := clPurple;
   dtgDetPag.DefaultDrawDataCell(rect,Field,State);
end;

procedure TfGenOficios.BitTransClick(Sender: TObject);
var xSQL,xNumOfi,xAnoOfi,xMontoLet:String;
    Boton:Integer;
    xInt:Real;
    xRegistro: TBookmark;
begin
  If dtgDetPag.DataSource.DataSet.RecordCount=0 Then Exit;
  If Copy(DM1.cdsOfdes.FieldByName('OFIESTADO').AsString,1,1)='T' Then
     Begin
        MessageDlg(' DESEMBOLSO YA FUE TRANSFERIDO A LA UNIDAD DE CAJA/BOVEDA ', mtInformation,[mbOk],0);
        Exit;
     End;

  If Copy(DM1.cdsOfdes.FieldByName('OFIESTADO').AsString,1,1)='P' Then
     Begin
        MessageDlg(' DESEMBOLSO YA FUE PROCESADO POR LA UNIDAD DE CAJA/BOVEDA ', mtInformation,[mbOk],0);
        Exit;
     End;


  Boton := Application.MessageBox ('¿Está Seguro De Realizar La TRANSFERENCIA?','Sistema De Cobranzas',MB_YESNO+MB_ICONQUESTION);
  If Boton = ID_YES Then
     Begin
        xNumOfi:=DM1.cdsOfdes.FieldByName('NUMOFI').AsString;
        xAnoOfi:=DM1.cdsOfdes.FieldByName('ANOOFI').AsString;
        xInt:=Int(DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency);
        xMontoLet:='('+Trim(DM1.xIntToLletras(StrToInt(FloatToStr(xInt)),DM1.Valores(FloatToStr(DM1.cdsOfDes.fieldbyname('MONOFI').AsCurrency))))+')';
        xSQL:='INSERT INTO CAJ_TRA_DEP(NOFID,FECINIC,FECFIN,MOVTOT,MONTO,MONDES,USUTRANS,FECTRANS,TIPDESEID,OFIESTADO,CREANO,CREMES,CREFDES,MODULOID) '+
              ' VALUES ('+QuotedStr(Copy(xNumOfi+xAnoOfi,2,10))+','+QuotedStr(DM1.cdsOfdes.FieldByName('FECINI').AsString)+','+QuotedStr(DM1.cdsOfdes.FieldByName('FECFIN').AsString)+','+IntToStr(DM1.cdsOfdes.FieldByName('TOTREG').AsInteger)+','+FloatToStr(DM1.cdsOfdes.FieldByName('MONOFI').AsFloat)+','+QuotedStr(xMontoLet)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DM1.cdsOfdes.FieldByName('CODDES').AsString)+','+QuotedStr('TRANSFERIDO')+','+QuotedStr(DM1.cdsOfdes.FieldByName('ANOOFI').AsString)+','+QuotedStr(Copy(DM1.cdsOfdes.FieldByName('FECOPE').AsString,4,2))+','+QuotedStr(DM1.cdsOfdes.FieldByName('FECOPE').AsString)+',''COB'' )';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);

        xSQL:='UPDATE MDEVOFI SET OFIESTADO=''TRANSFERIDO'' WHERE NUMOFI='+QuotedStr(xNumOfi)+' AND ANOOFI='+QuotedStr(xAnoOfi);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
// Inicio: SPP_201402_COB     Cambio de DCOM a Socket
//        xRegistro:=DM1.cdsOfdes.GetBookmark;
        BitMostrar.OnClick(BitMostrar);
     //   DM1.cdsOfdes.GotoBookmark(xRegistro);
// Fin: SPP_201402_COB        Cambio de DCOM a Socket     
        MessageDlg(' DESEMBOLSO TRANSFERIDO CON EXITO A UNIDAD DE CAJA/BOVEDA ', mtInformation,[mbOk],0);
     End;

end;

procedure TfGenOficios.BitMostrarClick(Sender: TObject);
var xSQL:String;
begin
    xSQL:='SELECT CODDES,NOMDES,FECINI,FECFIN,FECOPE,NUMOFI,ANOOFI,TOTREG,MONOFI,OFIESTADO FROM MDEVOFI WHERE ANOOFI='+QuotedStr(IntToStr(spAnno.Value))+' ORDER BY CODDES,ANOOFI,NUMOFI';
    DM1.cdsOfDes.Close;
    DM1.cdsOfDes.DataRequest(xSQL);
    DM1.cdsOfDes.Open;
    TNumericField(DM1.cdsOfDes.fieldbyname('TOTREG')).DisplayFormat:='###,###';
    TNumericField(DM1.cdsOfDes.fieldbyname('MONOFI')).DisplayFormat:='###,###.#0';
    If DM1.cdsOfDes.RecordCount > 0 Then
       Begin
          DM1.cdsOfDes.Last;
          dtgDetPag.SetFocus;
       End;

end;

end.



