// Inicio Uso Estándares: 01/08/2011
// Unidad               : COBR001
// Formulario           : fReprogramar
// Fecha de Creación    : 16/05/2017
// Autor                : Ricardo Medina
// Objetivo             : Reprogramación de Créditos
// Actualizaciones      :
//HPC_201711_COB        : Creación del Formulario
//HPC_201712_COB        : Se modifica el formato de Solicitud de Reprogramación de Deuda

//Inicio HPC_201711_COB
//Creación de formulacion para la Reprogramación
unit COBR001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdbdatetimepicker, StdCtrls, ExtCtrls, Buttons, Mask, wwdbedit,
  Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, DBGrids, jpeg, ppCtrls, ppVar, ppPrnabl, ppClass, ppBands,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppParameter;

type
  TfReprogramar = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtApellNombres: TEdit;
    edtasocodmod: TEdit;
    edtdni: TEdit;
    edtcredito: TEdit;
    dtpFechaEva: TwwDBDateTimePicker;
    edtCalificacion: TEdit;
    edttipocredito: TEdit;
    edtTipoDescuento: TEdit;
    edtSaldodeuda: TEdit;
    edtdiasatraso: TEdit;
    edtSaldoRepro: TEdit;
    Label12: TLabel;
    Panel1: TPanel;
    edtPeriodo: TEdit;
    btnCancela: TfcShapeBtn;
    pnlObservaciones: TPanel;
    Shape4: TShape;
    GroupBox2: TGroupBox;
    dsobservaciones: TDataSource;
    cdsobservaciones: TClientDataSet;
    BitBtn1: TBitBtn;
    Label14: TLabel;
    wwDBGrid1: TwwDBGrid;
    Button1: TButton;
    grbopciones: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    edtMeses: TwwDBSpinEdit;
    edtpergracias: TwwDBSpinEdit;
    BitReprograma: TBitBtn;
    BitPrevio: TBitBtn;
    BitImprimir: TBitBtn;
    lblTipo: TLabel;
    Label17: TLabel;
    edtSaldocapital: TEdit;
    Label18: TLabel;
    edttasa: TEdit;
    ppReprogDesapro: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    lblTitulo: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppImage1: TppImage;
    ppLabel20: TppLabel;
    LBLnOMBRES: TppLabel;
    lblcodmod: TppLabel;
    lblDNI: TppLabel;
    lblCredito: TppLabel;
    lblcalificacion: TppLabel;
    lbldeuda: TppLabel;
    lbldias: TppLabel;
    lblmotivodesap: TppLabel;
    ppLabel23: TppLabel;
    lblUsuario: TppLabel;
    Label16: TLabel;
    chkRechazadoporaso: TCheckBox;
    ppSolRepro: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppImage2: TppImage;
    lblSolNombres: TppLabel;
    lblsolcodmod: TppLabel;
    lblsoldni: TppLabel;
    lblsoldireccion: TppLabel;
    lblsoltelefono: TppLabel;
    lblsolcredito: TppLabel;
    lblsoldeudarepro: TppLabel;
    lblsoltasa: TppLabel;
    lblsolFPD: TppLabel;
    lblsolplazo: TppLabel;
    lblsolflat: TppLabel;
    lblsoldescuento: TppLabel;
    lblsoldia: TppLabel;
    lblsolmes: TppLabel;
    lblsolano: TppLabel;
    ppFooterBand2: TppFooterBand;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitPrevioClick(Sender: TObject);
    procedure BitReprogramaClick(Sender: TObject);
    procedure edtMesesChange(Sender: TObject);
    procedure chkRechazadoporasoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure grabadatarepro();
    procedure imprimesolicitus();
  public
    { Public declarations }
  xCREINTERES,xCREDFLAT,xTASFONDES,xcrecuota : double;
  xnuevoCredito,xcreffinpag,xcrefinipag:String;
  xfecvenini,xfecvenfin: String;
  end;

var
  fReprogramar: TfReprogramar;

implementation
Uses COBDM1, COBD017, COB901;
{$R *.dfm}

procedure TfReprogramar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
end;

procedure TfReprogramar.Button1Click(Sender: TObject);
begin
chkRechazadoporaso.Checked:=False;
chkRechazadoporaso.Refresh;
pnlObservaciones.Visible := False;
end;

procedure TfReprogramar.btnCancelaClick(Sender: TObject);
begin
close;
end;

procedure TfReprogramar.FormShow(Sender: TObject);
begin
 If cdsobservaciones.RecordCount>0 Then
 Begin
    grbopciones.Enabled      := False;
    pnlObservaciones.Left    := 200;
    pnlObservaciones.Top     := 168;
    pnlObservaciones.Visible := True;
 End;
end;


procedure TfReprogramar.BitPrevioClick(Sender: TObject);
var xSQL,xModoFinanciamiento,xnumcuota:String;
begin

  XSQL:='SELECT CREESTID FROM CRE302 WHERE ASOID='+quotedstr(Dm1.cdsSolicitud.FieldByName('ASOID').AsString)
       +' AND CREESTID IN (''14'',''19'') AND CREDID='+quotedstr(edtcredito.Text);
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(XSQL);
  DM1.cdsDFam.Open;
  If DM1.cdsDFam.RecordCount>0 Then
  Begin
    ShowMessage('El Crédito tiene cuotas en PROCESO DE COBRANZAS o BLOQUEADAS, verifique');
    exit;
  End;

  XSQL:='SELECT CREIDORI,CREINTERES,CREDFLAT,TASFONDES,ADD_MONTHS(Sysdate,'+edtpergracias.Text+') NUEVAFECHA FROM  CRE301 WHERE ASOID='+quotedstr(Dm1.cdsSolicitud.FieldByName('ASOID').AsString)
       +' AND CREESTID NOT IN (''13'',''04'') AND CREDID='+quotedstr(edtcredito.Text);
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(XSQL);
  DM1.cdsDFam.Open;
  xCREINTERES:= DM1.cdsDFam.Fieldbyname('CREINTERES').AsFloat;
  xCREDFLAT  := DM1.cdsDFam.Fieldbyname('CREDFLAT').AsFloat;
  xTASFONDES := DM1.cdsDFam.Fieldbyname('TASFONDES').AsFloat;

  If DM1.Valores(edtSaldoRepro.Text)<=0 Then
  Begin
    ShowMessage('No existe saldo para Reprogramar');
    exit;
  End;

  xnumcuota :=  edtMeses.Text;
  xSQL := 'BEGIN '
         + 'SP_CRE_FINANCIAR_SALDO_PRE('
         + quotedstr(DM1.cdsSolicitud.FieldByname('ASOTIPID').AsString) + ','
         + quotedstr(DateToStr(DM1.cdsDFam.Fieldbyname('NUEVAFECHA').AsDateTime)) + ','
         + quotedstr(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + ','
         + FloatToStr(DM1.Valores(edtSaldoRepro.Text)) + ','
         + FloatToStr(xCreinteres)+ ','
         + FloatToStr(xCredflat)+ ','
         + FloatToStr(xTasfondes)+ ','
         + xnumcuota+ ',0,NULL); END;';
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);

    XSQL := 'SELECT itecuo, fecven, amort, interes, gastos, segdes, cuota, saldo, maxcuo, pergra, diaspro, capaju, intaju, tcea '
           +'FROM CRE_CRONO_PRE_GTT WHERE 1=1 ORDER BY ITECUO ';
    DM1.cdsTZona.Close;
    DM1.cdsTZona.DataRequest(XSQL);
    DM1.cdsTZona.Open;

    fCronogramaPrev := TfCronogramaPrev.create(self);
    fCronogramaPrev.DBGPREVIO.DataSource :=  DM1.dsTZona;
    fCronogramaPrev.Showmodal;
    fCronogramaPrev.free;
end;

procedure TfReprogramar.BitReprogramaClick(Sender: TObject);
var  XSQL,vpCredid,xcreanomes: sTring;
     xcremtosol,Xmtosaldo : DOUBLE;
     xcorr,xcrenumcuo: Integer;
begin

  If DM1.cdsTZona.RecordCount=0 Then
  Begin
    ShowMessage('Primero debe generar un previo del cronograma del saldo a Reprogramar');
    Exit;
  End;

  If MessageDlg('¿Está seguro(a) de Reprogramar el crédito?', 
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
  Begin
   Exit;
  End;

  Screen.Cursor := crHourGlass;
  DM1.DCOM1.AppServer.SolStartTransaction;
  If DM1.Valores(edtSaldoRepro.Text)>0 Then
  Begin

     XSQL := 'SELECT max(itecuo)crenumcuo,min(fecven)fecvenini,max(fecven)fecvenfin,To_char(max(fecven),''YYYYMMDD'')creffinpag,To_char(min(fecven),''YYYYMMDD'')crefinipag,'
           +'sum(nvl(amort,0)) cremtosol,sum(nvl(cuota,0))mtosaldo,max(nvl(interes,0))interes,max(nvl(gastos,0))gastos,'
           +'max(nvl(segdes,0))segdes,max(nvl(cuota,0))cuota '
           +'FROM CRE_CRONO_PRE_GTT WHERE 1=1 ';
    DM1.cdsTZona.Close;
    DM1.cdsTZona.DataRequest(XSQL);
    DM1.cdsTZona.Open;

    xcrenumcuo  := DM1.cdsTZona.fieldbyname('crenumcuo').AsInteger;
    xcreffinpag := DM1.cdsTZona.fieldbyname('creffinpag').AsString;
    xcrefinipag := DM1.cdsTZona.fieldbyname('crefinipag').AsString;
    xcremtosol  := DM1.cdsTZona.fieldbyname('cremtosol').AsFloat;
    xcrecuota   := DM1.cdsTZona.fieldbyname('cuota').AsFloat;
    Xmtosaldo   := DM1.cdsTZona.fieldbyname('mtosaldo').AsFloat;
    xfecvenini  := DM1.cdsTZona.fieldbyname('fecvenini').AsString;
    xfecvenfin  := DM1.cdsTZona.fieldbyname('fecvenfin').AsString;

    If xcrecuota> DM1.cdsSolicitud.FieldByName('CRECUOTA').AsFloat Then
    Begin
       If MessageDlg('La cuota de la Reprogramación es mayor a la cuota pactada,'+chr(13)+'¿Está seguro(a) del Rechazo?,'+chr(13)+'o modifique el número de meses y pruebe nuevamente',
                    mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
       Begin
         Screen.Cursor := crDefault;
         Exit;
       End;
       cdsobservaciones.EmptyDataSet;
       fReprogramar.cdsobservaciones.Insert;
       fReprogramar.cdsobservaciones.FieldByname('OBSERVACION').AsString := 'Rechazado, cuota del Reprogramado es mayor al pactado';
       fReprogramar.cdsobservaciones.Post;
       fReprogramar.FormShow(Self);
       grabadatarepro();
       DM1.DCOM1.AppServer.SolCommit;
       Screen.Cursor := crDefault;
       exit;
    End;

    xnuevoCredito:=copy(edtcredito.Text,1,8)+'P'+copy(edtcredito.Text,10,6);

    //PONER LAS CUOTAS PENDIENTES COMO TIPO 20 RESTRUCTURADO
      XSQL:='UPDATE CRE302 SET CREESTID=''20'',CREESTADO=''REESTRUCTURADO'' '
            +'WHERE ASOID='+quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)
            +' AND CREDID='+quotedstr(edtcredito.Text)
            +' AND NVL(CREAMORT,0)>NVL(CRECAPITAL,0)  '
            +' AND CREESTID IN (''27'',''02'',''11'',''14'') ';
       Try
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       Except
         ShowMessage('Error al marcar las cuotas como reestructurado, Revise, anule e inténtelo nuevamente ');
         DM1.DCOM1.AppServer.SolRollBack;
         Screen.Cursor := crDefault;
         exit;
       End;

    //PONER EL CREDITO EN ESTADO CANCELADO ANTICIPADO Y GRABAR LA LLAVE CREIDORI Y CRENEWID
       XSQL:='UPDATE CRE301 SET CREESTID=''31'', CREESTADO=''REPROGRAMADO'', CREIDORI='''+edtcredito.Text+''', '
            +'CRENEWID='''+xnuevoCredito+''' '
            +'WHERE ASOID='+quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)
            +' AND CREDID='+quotedstr(edtcredito.Text);
       Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       Except
         ShowMessage('Error al actualizar el estado como cancelado anticipado, Revise, anule e inténtelo nuevamente ');
         DM1.DCOM1.AppServer.SolRollBack;
         Screen.Cursor := crDefault;
         exit;
       End;

        XSQL := 'SELECT itecuo, fecven, amort, interes, gastos, segdes, cuota, saldo, maxcuo, pergra, diaspro, capaju, intaju, tcea '
               +'FROM CRE_CRONO_PRE_GTT WHERE 1=1 ORDER BY ITECUO ';
        DM1.cdsTZona.Close;
        DM1.cdsTZona.DataRequest(XSQL);
        DM1.cdsTZona.Open;
        xcreanomes  := FormatDateTime('YYYYMM',DM1.cdsTZona.FIELDBYNAME('FECVEN').AsDateTime);

        //Inserto cabecera
        xSql:='INSERT INTO CRE301(tipcreid, asoid, asocodmod, asocodpago, asoapenom, useid, crefotorg, crefecini, cremtosol, cremtootor,'
              +'cremtogir, creinteres, credflat, crecuota, crenumcuo, creluggiro, bancoid, crenumcta, cremtopag, cresdoact, crepergra, crecuopag, crecuoenv, creperiodi,'
              +'cremtotal, crecappgo, crenewid, cresaldot, usuario, freg, hreg, ofdesid, calificaid, apruebaid, creestado, tmonid, cuotaini, upagoid, uproid, dptoid,'
              +'listaid, credid, crecom, creseg, crepor, cregadm, crecomp, cremora, forpagoid, cretcalid, tmonabr, cretcalabr, listaabr, forpagoabr, ciaid, crefrecl, creestid,'
              +'creanomes, nropagare, nroautdes, tipcredes, garapenom, garasoid, asocodaux, nronabo, numref, fecref, tiporef, nroficio, ciudid, archivoftp, agenbancoid, dptogiro,'
              +'useidgar, tipdeseid, bcogiro, cremtonabo, creffinpag,crefinipag, crebloqfec, usubloq, crebloq, flgcaja, fechacaja, crenumcomp, ccosid, cuentah, cuentad, cregencob,'
              +'flgautoma, refanomes, nrorefinan, cajausu, horacaja, asotipid, asodni, anulacaja, men_anu, mot_pre, numrefi, flgrefi, crefcan, flginconsis, perconta, c_abn, cntanomm,'
              +'fec_rcp, crecapliq, crefdes, cremenobs, tipocont, cntflag, cremtodep, crefanul, useranul, cresumcuo, cremotext, nroficio_bck, migrado, usuautcre, fecautcre, estautcre,'
              +'comautcre, usuanusup, fecanusup, motanusup, estanusup, docid, ccserie, ccnodoc, ciaser, cremonins, impcon, dniruc, fecimpcon, codarchivo, cremtoapo,'
              +'autdescre, fecautdes, usuautdes, impcaraut, nrocaraut, diasproc, descenv, autdesges, usudesges, fechordesges, usumodcuo, fecmodcuo, motmodcuo, tasfondes, nroautonp, fecenvbcp,'
              +'estenvbcp, feccobbcp, codagebcp, impcaronp, monintpro, mespergra,creidori) '
              +'SELECT '
              +'tipcreid, asoid, asocodmod, asocodpago, asoapenom, useid,'+QuotedStr(DateToStr(dtpFechaEva.Date))+',crefecini,'+FloatToStr(DM1.Valores(edtSaldoRepro.Text))+','+FloatToStr(DM1.Valores(edtSaldoRepro.Text))+','
              +FloatToStr(DM1.Valores(edtSaldoRepro.Text))+',creinteres,credflat,'+FloatToStr(xcrecuota)+','+IntToStr(xcrenumcuo)+',creluggiro, bancoid, crenumcta,0.00,'+FloatToStr(Xmtosaldo)+', null,0.00, null, null,'
              +FloatToStr(Xmtosaldo)+',crecappgo,null,0.00,'+QuotedStr(DM1.wUsuario)+',TRUNC(SYSDATE), SYSDATE, ofdesid, calificaid, apruebaid, ''POR COBRAR'', tmonid,0.00, upagoid, uproid, dptoid,'
              +'listaid,'+quotedstr(xnuevoCredito)+', crecom, creseg, crepor, cregadm, crecomp, cremora, forpagoid, cretcalid, tmonabr, cretcalabr, listaabr, forpagoabr, ciaid, crefrecl,''02'','
              +QuotedStr(xcreanomes)+', nropagare, nroautdes, tipcredes, garapenom, garasoid, asocodaux, null, numref, fecref, tiporef, null, ciudid, archivoftp, agenbancoid, dptogiro,'
              +'useidgar, ''10'', bcogiro, 0.00,'+QuotedStr(xcreffinpag)+','+QuotedStr(xcrefinipag)+', crebloqfec, usubloq, crebloq, flgcaja, fechacaja, crenumcomp, ccosid, cuentah, cuentad, cregencob,'
              +'flgautoma, refanomes, nrorefinan, cajausu, horacaja, asotipid, asodni, anulacaja, men_anu, mot_pre,'+QuotedStr(Dm1.CdsSolicitud.FieldByName('CREDID').AsString)+', ''P'', crefcan, flginconsis, perconta, c_abn,TO_CHAR(SYSDATE,''YYYYMM''),'
              +'fec_rcp, crecapliq, crefdes, cremenobs, tipocont, NULL, cremtodep, crefanul, useranul,'+IntToStr(xcrenumcuo)+',0.00, nroficio_bck, migrado, usuautcre, fecautcre, estautcre,'
              +'comautcre, usuanusup, fecanusup, motanusup, estanusup, docid, ccserie, ccnodoc, ciaser, cremonins, impcon, dniruc, fecimpcon, null, 0.00,'
              +'autdescre, fecautdes, usuautdes, impcaraut, nrocaraut, diasproc, descenv, autdesges, usudesges, fechordesges, usumodcuo, fecmodcuo, motmodcuo, tasfondes, nroautonp, null,'
              +'null, null, null, impcaronp, null, null,'+quotedstr(edtcredito.Text)
              +' FROM CRE301 WHERE ASOID='+quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND CREDID='+quotedstr(edtcredito.Text);
        Try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        Except
         ShowMessage('Error al crear el cronograma reestructurado, Revise, anule e inténtelo nuevamente');
         DM1.DCOM1.AppServer.SolRollBack;
         Screen.Cursor := crDefault;
         exit;
        End;

        //Se Inserta detalle de pago
        DM1.cdsTZona.First;
        While not  DM1.cdsTZona.Eof do
        Begin
          xSQL:='INSERT INTO CRE302( '
               +'asoid,asocodmod,tipcreid,tmonid,creano,cremes,cresaldo,'
               +'crecuota,cremto,creamort,creinteres,creflat,monpacdesgrav,'
               +'crefven,useid,uproid,upagoid,usuario,freg,hreg,forpagoid,'
               +'asoapenom,credid,tmonabr,creestid,creestado,asocodaux,areaid,'
               +'crecapcron,creanoini,cremesini,crecuotaini,crefvenini,'
               +'fecvenori,numcuoori,crecapital,cremtoint,cremtoflat,moncobdesgrav) VALUES('
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('ASOID').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('ASOCODMOD').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('TIPCREID').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('tmonid').AsString)+','
               + QuotedStr(FormatDateTime('YYYY',DM1.cdsTZona.FieldByname('fecven').AsDateTime))+','
               + QuotedStr(FormatDateTime('MM',DM1.cdsTZona.FieldByname('fecven').AsDateTime))+','
               + DM1.cdsTZona.FieldByname('cuota').AsString+','
               + Dm1.cdsTZona.FieldByName('itecuo').AsString+','
               + Dm1.cdsTZona.FieldByName('cuota').AsString+','
               + Dm1.cdsTZona.FieldByName('amort').AsString+','
               + Dm1.cdsTZona.FieldByName('interes').AsString+','
               + Dm1.cdsTZona.FieldByName('gastos').AsString+','
               + Dm1.cdsTZona.FieldByName('segdes').AsString+','
               + QuotedStr(Dm1.cdsTZona.FieldByName('fecven').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('useid').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('uproid').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('upagoid').AsString)+','
               + QuotedStr(dm1.wUsuario)+','
               + 'TRUNC(SYSDATE),SYSDATE,'
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('forpagoid').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('asoapenom').AsString)+','
               + QuotedStr(xnuevoCredito)+',''S/.'','
               + '''02'',''POR COBRAR'','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('ASOCODAUX').AsString)+','
               + QuotedStr('COB')+','
               + Dm1.cdsTZona.FieldByName('saldo').AsString+','
               + QuotedStr(FormatDateTime('YYYY',DM1.cdsTZona.FieldByname('fecven').AsDateTime))+','
               + QuotedStr(FormatDateTime('MM',DM1.cdsTZona.FieldByname('fecven').AsDateTime))+','
               + Dm1.cdsTZona.FieldByName('itecuo').AsString+','
               + QuotedStr(DM1.cdsTZona.FieldByname('fecven').AsString)+','
               + QuotedStr(DM1.cdsTZona.FieldByname('fecven').AsString)+','
               + Dm1.cdsTZona.FieldByName('itecuo').AsString+',0.00,0.00,0.00,0.00)';
           Try
             DM1.DCOM1.AppServer.EjecutaSql(xSQL);
           Except
            ShowMessage('Error al crear el detalle del cronograma reestructurado, Revise, anule e inténtelo nuevamente');
            DM1.DCOM1.AppServer.SolRollBack;
            Screen.Cursor := crDefault;
            exit;
           End;
           DM1.cdsTZona.Next
        End;

    //Graba en tabla de reprogramación
     grabadatarepro();
     DM1.DCOM1.AppServer.SolCommit;
     ShowMessage('Se actualizó con éxito');
     BitPrevio.Enabled     := False;
     BitReprograma.Enabled := False;
     edtMeses.Enabled      := False;
     edtpergracias.Enabled := False;
     Screen.Cursor := crDefault;
     fPagoCuotas.CrgPrestamos;
     BitImprimir.Enabled := True;
  End;

end;

procedure TfReprogramar.edtMesesChange(Sender: TObject);
begin
DM1.cdsTZona.EmptyDataSet;
end;

//Graba data de Reprogramación
procedure TfReprogramar.grabadatarepro;
var xsql,xtipo:String;
begin

 //Correlativo
   xsql:='SELECT NVL(max(CODSOLREP)+1,to_char(SYSDATE,''YYYY'')||''000001'') CORRELATIVO '
         +'FROM db2admin.COB_REP_CRE_CAB '
         +'WHERE to_char(fecgen,''YYYY'')=''2017'' ';
   DM1.cdsTmone.Close;
   DM1.cdsTmone.DataRequest(XSQL);
   DM1.cdsTmone.Open;
   Try
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   Except
      ShowMessage('Error al generar el correlativo: COB_REP_CRE_CAB');
      exit;
   End;

   If length(trim(DM1.cdsSolicitud.FieldByName('USUAPRREPEXC').AsString))>0 Then
         xtipo:='EXCEPCIONAL'
   Else  xtipo:='ESTANDAR';

   XSQL:='Insert Into DB2ADMIN.COB_REP_CRE_CAB(CODSOLREP,ASOID,ASOCODMOD,ASODNI,CREDID,TIPCREID,CRECUOTA,'
        +'FORPAGOID,CFCDES_F,DIAATR,IMPSALTOT,IMPSALREP,IMPSALCAP,TIPREC,TIPREP,TASINTREP,NUMCRENUE,CRENUMCUO,'
        +'CRENUMGRA,FECINIVEN,FECFINVEN,IMPCUOREP,DESMOTREC,USUGEN,FECGEN) VALUES('
        +quotedstr(DM1.cdsTmone.FieldByname('CORRELATIVO').AsString)+','
        +quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('ASOCODMOD').AsString)+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('ASODNI').AsString)+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('CREDID').AsString)+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('TIPCREID').AsString)+','
        +Dm1.CdsSolicitud.FieldByName('CRECUOTA').AsString+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('FORPAGOID').AsString)+','
        +quotedstr(edtCalificacion.Text)+','
        +edtdiasatraso.Text+','
        +edtSaldodeuda.Text+','
        +edtSaldoRepro.Text+','
        +edtSaldocapital.Text+','
        +quotedstr('REPROGRAMACION')+','
        +quotedstr(xtipo)+','
        +edttasa.Text+','
        +quotedstr(xnuevoCredito)+','
        +edtMeses.Text+','
        +edtpergracias.Text+','
        +quotedstr(xfecvenini)+','
        +quotedstr(xfecvenfin)+','
        +FloatToStr(xcrecuota)+','
        +quotedstr(cdsobservaciones.FieldByName('OBSERVACION').AsString)+','
        +quotedstr(DM1.wUsuario)+',sysdate)';
     Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     Except
        ShowMessage('Error al insertar en la cabecera de los datos de la Reprogramación: COB_REP_CRE_CAB');
        DM1.DCOM1.AppServer.SolRollBack;
        exit;
     End;

    //ACTUALIZA CRONOGRAMAS CON EL CÓDIGO DE SOLICITUD
    XSQL:='Update CRE301 SET CODSOLREP='+quotedstr(DM1.cdsTmone.FieldByname('CORRELATIVO').AsString)+
          ' Where ASOID='+quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND '+
          '       CREDID='+quotedstr(Dm1.CdsSolicitud.FieldByName('CREDID').AsString);
     Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     Except
        ShowMessage('Error al actualizar en número de solicitud en la cabecera del cronograma original: CRE301');
        DM1.DCOM1.AppServer.SolRollBack;
        exit;
     End;

    XSQL:='Update CRE301 SET CODSOLREP='+quotedstr(DM1.cdsTmone.FieldByname('CORRELATIVO').AsString)+
          ' Where ASOID='+quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND '+
          '       CREDID='+quotedstr(xnuevoCredito);
     Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     Except
        ShowMessage('Error al actualizar en número de solicitud en la cabecera del cronograma nuevo: CRE301');
        DM1.DCOM1.AppServer.SolRollBack;
        exit;
     End;

end;

procedure TfReprogramar.chkRechazadoporasoClick(Sender: TObject);
begin

 If chkRechazadoporaso.Checked Then
 Begin
 
   If MessageDlg('¿Está seguro(a) del Rechazo?, se grabará para estadística',
           mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
     chkRechazadoporaso.Checked:=False;
     chkRechazadoporaso.Refresh;
     Exit;
   End;
   cdsobservaciones.EmptyDataSet;
   fReprogramar.cdsobservaciones.Insert;
   fReprogramar.cdsobservaciones.FieldByname('OBSERVACION').AsString := 'Desestimado por el Asociado';
   fReprogramar.cdsobservaciones.Post;
   FormShow(Self);
   exit;
 End;
end;

procedure TfReprogramar.BitBtn1Click(Sender: TObject);
begin

 If MessageDlg('¿Está seguro(a) del Rechazo?, se grabará para estadística',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
 Begin
   chkRechazadoporaso.Checked:=False;
   chkRechazadoporaso.Refresh;
   pnlObservaciones.Visible := False;
   Exit;
 End;

 LBLnOMBRES.Caption      := edtApellNombres.Text;
 lblcodmod.Caption       := edtasocodmod.Text;
 lblDNI.Caption          := edtdni.Text;
 lblCredito.Caption      := edtcredito.Text;
 lblcalificacion.Caption := edtCalificacion.Text;
 lbldeuda.Caption        := edtSaldodeuda.Text;
 lbldias.Caption         := edtdiasatraso.Text;
 lblmotivodesap.Caption  := cdsobservaciones.Fieldbyname('observacion').AsString;
 lblUsuario.Caption      := dm1.wUsuario;
 grabadatarepro();
 DM1.DCOM1.AppServer.SolCommit;
 lblTitulo.Caption :='Solicitud de Reprogramación N°'+DM1.cdsTmone.Fieldbyname('correlativo').AsString+' Desaprobada';
 ppReprogDesapro.Print;
 ppReprogDesapro.Cancel;
 btnCancelaClick(Self);
end;

procedure TfReprogramar.imprimesolicitus;
var xsql:String;
//Inicio HPC_201712_COB
//Se modifica el formato de Solicitud de Reprogramación de Deuda
    xzipid:String;
begin
 xzipid:= DM1.CrgDescrip('ASOID='+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString), 'APO201', 'ZIPID');
 XSQL:=
 'SELECT ('+
 '(SELECT  Trim(A.DPTODES) FROM TGE158 A WHERE  DPTOID=SUBSTR('''+xzipid+''',1,2))||''/''||'+
 '(SELECT Trim(A.CIUDDES) FROM APO123 A WHERE  CIUDID=SUBSTR('''+xzipid+''',1,4))||''/''||'+
 '(SELECT Trim(A.ZIPABR)  FROM APO122 A WHERE  ZIPID =SUBSTR('''+xzipid+''',1,6))'+
 ') UBIGEO  '+
 'FROM DUAL ';
  DM1.cdsUbigeo.Close;
  DM1.cdsUbigeo.DataRequest(XSQL);
  DM1.cdsUbigeo.Open;
  xzipid:=Dm1.cdsUbigeo.FieldByname('UBIGEO').AsString;
//Final HPC_201712_COB

 lblSolNombres.Caption   := edtApellNombres.Text;
 lblsolcodmod.Caption    := edtasocodmod.Text;
 lblsoldni.Caption       := edtdni.Text;;
 lblsolcredito.Caption   := xnuevoCredito;
//Inicio HPC_201712_COB
//Se modifica el formato de Solicitud de Reprogramación de Deuda
 lblsoldireccion.Caption := Trim(DM1.CrgDescrip('ASOID='+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString), 'APO201', 'ASODIR'))+'-'+xzipid;
//Final HPC_201712_COB
 lblsoltelefono.Caption  := DM1.CrgDescrip('ASOID='+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString), 'APO201', 'ASOTELF1');;
//Inicio HPC_201712_COB
//Se modifica el formato de Solicitud de Reprogramación de Deuda
 lblsoldeudarepro.Caption:= FormatFloat('###,###,###.##',StrToFloat(edtSaldoRepro.Text));
//Final HPC_201712_COB 
 lblsoltasa.Caption      := edttasa.Text+'%';
 lblsolFPD.Caption       := DM1.CrgDescrip('ASOID='+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND CREDID='+QuotedStr(xnuevoCredito), 'CRE301', 'TASFONDES')+'%';
 lblsolplazo.Caption     := edtMeses.Text;
 lblsolflat.Caption      := DM1.CrgDescrip('ASOID='+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND CREDID='+QuotedStr(xnuevoCredito), 'CRE301', 'CREDFLAT')+'%';
 lblsoldescuento.Caption := edtTipoDescuento.Text;
 lblsoldia.Caption       := FormatDateTime('DD',dm1.FechaSys);
 lblsolmes.Caption       := FormatDateTime('mmmm',dm1.FechaSys);
 lblsolano.Caption       := FormatDateTime('YYYY',dm1.FechaSys);
 ppSolRepro.Print;
 ppSolRepro.Cancel;

end;

procedure TfReprogramar.BitImprimirClick(Sender: TObject);
begin
imprimesolicitus;
end;

end.
//Inicio HPC_201711_COB