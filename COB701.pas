unit COB701;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, fcButton, fcImgBtn, fcShapeBtn;

type
  TFToolAso = class(TForm)
    pnlTool: TPanel;
    sbtnDLab: TfcShapeBtn;
    sbtnDFam: TfcShapeBtn;
    sbtnAportes: TfcShapeBtn;
    sbtnCtasBanc: TfcShapeBtn;
    sbtnResol: TfcShapeBtn;
    sbtnSitu: TfcShapeBtn;
    sbtnFirma: TfcShapeBtn;
    sbtnDSocioE: TfcShapeBtn;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    sbtnAceptar: TfcShapeBtn;
    procedure sbtnDLabClick(Sender: TObject);
    procedure sbtnDFamClick(Sender: TObject);
    procedure sbtnResolClick(Sender: TObject);
    procedure sbtnAportesClick(Sender: TObject);
    procedure sbtnCtaIndClick(Sender: TObject);
    procedure sbtnCtasBancClick(Sender: TObject);
    procedure sbtnSituClick(Sender: TObject);
    procedure sbtnFirmaClick(Sender: TObject);
    procedure sbtnDSocioEClick(Sender: TObject);
    procedure sbtnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sSQL:string;
  end;

var
  FToolAso: TFToolAso;

implementation

uses COB206, COBDM1, COB207, COB205, COB208, COB209, COB210, COB2A1, COB2A2,
  COB212, COB001;

{$R *.DFM}

procedure TFToolAso.sbtnDLabClick(Sender: TObject);
begin
  try
    FDLab:=TFDLab.Create(Self);
    FDLab.ShowModal;
  finally
    FDLab.Free;
    DM1.cdsDLabo.Close;
  end;
end;

procedure TFToolAso.sbtnDFamClick(Sender: TObject);
begin
  try
    FDFam:=TFDFam.Create(Self);
    FDFam.ShowModal;
  finally
    FDFam.Free;
    DM1.cdsDFam.Close;
  end;
end;

procedure TFToolAso.sbtnResolClick(Sender: TObject);
begin
  try
    Screen.Cursor:=crHourGlass;
    sSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASONRES, ASOFRES, RESID, RESFVIG, FREG, HREG '+
            'FROM APO205 WHERE ASOID='+DM1.cdsAso.FieldByName('ASOID').AsString;
    DM1.FiltraCDS(DM1.cdsResol,sSQL);

    FResoluciones:=TFResoluciones.Create(Self);
    Screen.Cursor:=crDefault;    
    FResoluciones.ShowModal;
  finally
    FResoluciones.Free;
    DM1.cdsResol.Close;
  end;
end;

procedure TFToolAso.sbtnAportesClick(Sender: TObject);
begin
  try
    FDAportes:=TFDAportes.Create(Self);
    FDAportes.ShowModal;
  finally
    FDAportes.Free;
  end;
end;

procedure TFToolAso.sbtnCtaIndClick(Sender: TObject);
begin
 try
    FDCtaInd:=TFDCtaInd.Create(Self);
    FDCtaInd.ShowModal;
  finally
    FDCtaInd.Free;
  end;
end;

procedure TFToolAso.sbtnCtasBancClick(Sender: TObject);
begin
 try
    FDCtasBcos:=TFDCtasBcos.Create(Self);
    FDCtasBcos.ShowModal;
  finally
    FDCtasBcos.Free;
  end;
end;

procedure TFToolAso.sbtnSituClick(Sender: TObject);
begin
 try
    FDSituaciones:=TFDSituaciones.Create(Self);
    FDSituaciones.ShowModal;
  finally
    FDSituaciones.Free;
  end;
end;

procedure TFToolAso.sbtnFirmaClick(Sender: TObject);
begin
 try
    FDFirmaHuella:=TFDFirmaHuella.Create(Self);
    FDFirmaHuella.ShowModal;
  finally
    FDFirmaHuella.Free;
  end;
end;

procedure TFToolAso.sbtnDSocioEClick(Sender: TObject);
begin
try
    FDSocioEco:=TFDSocioEco.Create(Self);
    FDSocioEco.ShowModal;
  finally
    FDSocioEco.Free;
  end;
end;

procedure TFToolAso.sbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
begin
  If Length(Trim(edtAsociado.Text)) > 0 Then
    xSQL:='SELECT * FROM APO201 WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
  else
    xSQL:='SELECT * FROM APO201';

  Screen.Cursor:=crHourGlass;
  FPrincipal.Mtx.UsuarioSQL.Clear;
  FPrincipal.Mtx.FMant.wTabla:='APO201';
  FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
  FPrincipal.Mtx.NewQuery;
  Screen.Cursor:=crDefault;

  {if DM1.cdsAso.RecordCount=0 Then
  begin
    xSQL:='SELECT * FROM APO201 ';
    Screen.Cursor:=crHourGlass;
    FPrincipal.Mtx.UsuarioSQL.Clear;
    FPrincipal.Mtx.FMant.wTabla:='APO201';
    FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
    FPrincipal.Mtx.NewQuery;
    edtAsociado.Text:='';
    edtAsociado.SetFocus;
    Screen.Cursor:=crDefault;
    ShowMessage('No Existen Registros que cumplan la condición ');
  end;}
end;

end.

{
////////////////////
const
  xCampos303 : String = ('TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG,'+
                      'TMONID,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,'+
                      'CRETCALID,TMONABR,TIPDESEID,CRELUGGIRO,BANCOID,CRENUMCTA,CRESDOACT,CREFINIPAG,'+
                      'CREFFINPAG,CRECUOPAG,CREESTADO,CRESALDOT,OFDESID,CREDID,CALIFICAID,USUARIO,'+
                      'FREG,HREG,GARAPENOM,GARASOID,AGENBANCOID,DPTOGIRO,BCOGIRO,FORPAGOID,CUOTAINI,DPTOID,'+
                      'UPROID,TIPCREDES,TIPDESEABR,CREGADM,CREMORA,FORPAGOABR,CIAID,LISTAID,LISTAABR,'+
                      'CONDCREDID,CREESTID,ASOCODAUX,CREANOMES');

  xCampos301 : String = ('TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG,'+
                         'TMONID,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,'+
                         'CRETCALID,TMONABR,CRELUGGIRO,BANCOID,CRENUMCTA,CRESDOACT,CREFINIPAG,'+
                         'CREFFINPAG,CRECUOPAG,CREESTADO,CRESALDOT,OFDESID,CREDID,CALIFICAID,USUARIO,'+
                         'FREG,HREG,GARAPENOM,AGENBANCOID,DPTOGIRO,BCOGIRO,FORPAGOID,CUOTAINI,DPTOID,'+
                         'UPROID,TIPCREDES,CREGADM,CREMORA,FORPAGOABR,CIAID,LISTAID,LISTAABR,'+
                         'CREESTID,ASOCODAUX,CREANOMES,UPAGOID,NROFICIO');

  xCampoc : string = ('ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,CREDID,CRECUOTA,CREMONLOC,CREMONEXT,'+
                      'CREFVEN,CREAMORT,CREINTERES,CREFLAT,CRESALDO,CREMTOCOB,CRECAPITAL,CREMTOINT,'+
                      'CREGADM,TCAMBIO,FLGPAG,CREFPAG,CREESTID,USUARIO,'+
                      'FREG,HREG,CIAID,ASOID,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM'+
                      ',CIUDID,ARCHIVOFTP,TMONID,CREANO,CREMES,CREMTO,LISTAID,TMONABR,'+
                      'CREESTADO,CREFDEV,LISTAABR,TIPCREABR');

  xCampoc1: string = ('ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,CREDID,CRECUOTA,CREMONLOC,CREMONEXT,'+
                      'CREFPAG,CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,TCAMBIO,USUARIO,'+
                      'FREG,HREG,CIAID,ASOID,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM'+
                      ',CIUDID,ARCHIVOFTP');


  DM1.cdsAsociados.PacketRecords := -1;
  DM1.cdsQry1.Filter := '';
  DM1.cdsQry1.Filtered := False;
  xSql := 'SELECT * FROM CRNPAGO';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;

  xSql := 'SELECT C.* FROM APO201 C,(SELECT A.ASOCODMOD,A.ASOCODAUX,B.COD_MOD,B.NRO_VEZ'+
          ' FROM APO201 A,CRNPAGO B WHERE'+
          ' SUBSTR(TRIM(A.ASOCODMOD),1,10)=SUBSTR(TRIM(B.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(A.ASOCODAUX),1,2)=SUBSTR(TRIM(B.NRO_VEZ),1,2)'+
          ' GROUP BY A.asocodmod,A.asocodaux,B.COD_MOD,B.NRO_VEZ ) D'+
          ' WHERE SUBSTR(TRIM(C.ASOCODMOD),1,10)=SUBSTR(TRIM(D.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(C.ASOCODAUX),1,2)=SUBSTR(TRIM(D.NRO_VEZ),1,2)';
  DM1.cdsAsociados.close;
  DM1.cdsAsociados.DataRequest(xSql);
  DM1.cdsAsociados.open;
  dm1.cdsAsociados.IndexFieldNames := 'ASOCODMOD;ASOCODAUX';
  try
   //** Inicio Transacción
   //** hABILITAR LUEGO
   //** DM1.DCOM1.AppServer.SolStartTransaction;
   DM1.cdsQry1.First;
   xVan := 1;
   //** Paso 1, recorro toda la data
   While Not DM1.cdsQry1.Eof Do
    Begin
     //** se verifica que el asociado exista en el Maestro APO201 para porder insertar en
     //** CRE301 (Cabecera de Prestamo)
     dm1.cdsAsociados.setkey;
     dm1.cdsAsociados.fieldByName('ASOCODMOD').AsString  := DM1.cdsQry1.FieldByName('COD_MOD').AsString;
     dm1.cdsAsociados.fieldByName('ASOCODAUX').AsString := dm1.strzero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2);
     If dm1.cdsAsociados.Gotokey then
      begin
       //** Limpio la variable
       xResultados := '';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_MOD').AsString)+',';
       xResultados :=  xResultados + quotedstr(dm1.StrZero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2))+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_USE').AsString)+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_PAG').AsString)+',';
       If DM1.cdsQry1.FieldByName('TIP_PRE').AsString = '' then
        xResultados :=  xResultados + 'Null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString)+',';

       If DM1.cdsQry1.FieldByName('COD_OFI').AsString = '' then
         //** CREID
         xResultados :=  xResultados + quotedstr('01'+DM1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+','
       else
         //** CREID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString+
                                                 DM1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';

       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('ITE_CUO').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MON_CUO').AsString+',';
       If DM1.cdsQry1.FieldByName('TIP_CAM').AsFloat > 0 then
        xResultados :=  xResultados + FloatToStr(DM1.cdsQry1.FieldByName('MON_CUO').AsFloat / DM1.cdsQry1.FieldByName('TIP_CAM').AsFloat) +','
       else
        xResultados :=  xResultados + '0.00'+',';
       xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_VEN').AsString,7,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_VEN').AsString,5,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_VEN').AsString,1,4));
       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('AMO_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('INT_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('GAS_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('SAL_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MON_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('AMO_ACT').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('INT_ACT').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('GAS_ACT').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TIP_CAM').AsString+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('FLG_PAG').AsString)+',';
       xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_CAN').AsString,7,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_CAN').AsString,5,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_CAN').AsString,1,4));
       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';
       If DM1.cdsQry1.FieldByName('FLG_DSC').AsString = '' then
        If DM1.cdsQry1.FieldByName('BLOQUEO').AsString = 'TRUE' then
         begin
          xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('BLOQUEO').AsString);
          xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
          xCreestaid := DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE');
         end
        else
         begin
          If DM1.cdsQry1.FieldByName('ANULADO').AsString = 'TRUE' then
           begin
            xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('ANULADO').AsString);
            xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
            xCreestaid := DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE');
           end
          else
           begin
            xWhere := 'ORIGEN='+ quotedstr('FALSE');
            xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
            xCreestaid := DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE');
           end
         end
       else
        Begin
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('FLG_DSC').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         xCreestaid := DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE');
        end;

       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
       xFecha := StrToDAte(DM1.cdsQry1.FieldByName('FECHA').AsString);
       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';
       xResultados :=  xResultados + wRepHorServi+',';
       //** por defecto quer apunte a la Cia = '02'
       xResultados :=  xResultados + quotedstr(dblcCia1.text)+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('UPROID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('DPTOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('DPTOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('UPAGOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('BANCOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('BANCOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('ASONCTA').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASONCTA').AsString)+',';
       If DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString)+',';

       If DM1.cdsAsociados.FieldByName('CIUDID').AsString = '' then
        xResultados :=  xResultados + 'null'+','
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('CIUDID').AsString)+',';
       xResultados :=  xResultados + quotedstr(copy(Trim(clbArchivos.Items.Strings[xItemIndex]),1,8) + FloatToStr(xAno))+',';
       xWhere := 'ASOID='+ quotedstr(dm1.cdsAsociados.fieldByName('ASOID').AsString)+
                  ' AND CREDID='+quotedstr(dm1.cdsQry1.fieldByName('NUM_PRE').AsString);
       xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE301','TMONID,CREANOMES,CREMTOOTOR',xwhere,'TMONID'))+',';
       xResultados :=  xResultados + quotedstr(copy(dm1.cdsQry.FieldByName('CREANOMES').AsString,1,4))+',';
       xResultados :=  xResultados + quotedstr(copy(dm1.cdsQry.FieldByName('CREANOMES').AsString,5,2))+',';
       If dm1.cdsQry.FieldByName('CREMTOOTOR').AsString = '' then
        xResultados :=  xResultados + '0.00,'
       else
        xResultados :=  xResultados + dm1.cdsQry.FieldByName('CREMTOOTOR').AsString+',';
       //** por ahora se deja en 01 la lista de credito
       xResultados :=  xResultados +quotedstr('01')+',';
       xWhere := 'TMONID='+ quotedstr(dm1.cdsQry.FieldByName('TMONID').AsString);
       xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','TGE103','TMONDES',xwhere,'TMONDES'))+',';
       xWhere := 'ESTID='+ quotedstr(xCreestaid);
       xResultados :=  xResultados + quotedstr(Copy(DM1.DisplayDescrip('prvSQL','CRE113','ESTDES',xwhere,'ESTDES'),1,15))+',';
       If DM1.DisplayDescrip('prvSQL','CRE113','ESTDES',xwhere,'ESTDES') = 'ANULADO' then
        xResultados :=  xResultados + quotedstr('S')+','
       else
        xResultados :=  xResultados + quotedstr('N')+',';
       //** por ahora se deja en 01 la lista de credito
       xWhere := 'LISTAID='+ quotedstr('01');
       xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE109','LISTADES',xwhere,'LISTADES'))+',';
       xWhere := 'TIPCREID='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString);
       xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE110','TIPCREDES',xwhere,'TIPCREDES'));
       Label2.caption := IntToStr(xVan);
       Label2.Refresh;
       xSql := 'INSERT INTO CRE302 ('+xCampoC+') values ('+xresultados+')';
       dm1.dcom1.AppServer.EjecutaSQL(xSql);
       xVan := xVan +1;
      end;
     DM1.cdsQry1.next;
    End;
    //** hABILITAR LUEGO
    //** DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
  Except
   //** hABILITAR LUEGO
   //** DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
  end;

  //************************************ Para Detalle de pago cre310

  DM1.cdsAsociados.PacketRecords := -1;
  DM1.cdsQry1.Filter := '';
  DM1.cdsQry1.Filtered := False;
  xSql := 'SELECT * FROM CRNPAGO';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;

  xSql := 'SELECT C.* FROM APO201 C,(SELECT A.ASOCODMOD,A.ASOCODAUX,B.COD_MOD,B.NRO_VEZ'+
          ' FROM APO201 A,CRNPAGO B WHERE'+
          ' SUBSTR(TRIM(A.ASOCODMOD),1,10)=SUBSTR(TRIM(B.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(A.ASOCODAUX),1,2)=SUBSTR(TRIM(B.NRO_VEZ),1,2)'+
          ' GROUP BY A.asocodmod,A.asocodaux,B.COD_MOD,B.NRO_VEZ ) D'+
          ' WHERE SUBSTR(TRIM(C.ASOCODMOD),1,10)=SUBSTR(TRIM(D.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(C.ASOCODAUX),1,2)=SUBSTR(TRIM(D.NRO_VEZ),1,2)';
  DM1.cdsAsociados.close;
  DM1.cdsAsociados.DataRequest(xSql);
  DM1.cdsAsociados.open;
  dm1.cdsAsociados.IndexFieldNames := 'ASOCODMOD;ASOCODAUX';
  Try
   //** Inicio Transacción
   //** hABILITAR LUEGO
   //** DM1.DCOM1.AppServer.SolStartTransaction;
   DM1.cdsQry1.First;
   xVan := 1;
   //** Paso 1, recorro toda la data
   While Not DM1.cdsQry1.Eof Do
    Begin
     //** se verifica que el asociado exista en el Maestro APO201 para porder insertar en
     //** CRE301 (Cabecera de Prestamo)
     dm1.cdsAsociados.setkey;
     dm1.cdsAsociados.fieldByName('ASOCODMOD').AsString  := DM1.cdsQry1.FieldByName('COD_MOD').AsString;
     dm1.cdsAsociados.fieldByName('ASOCODAUX').AsString := dm1.strzero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2);
     If dm1.cdsAsociados.Gotokey then
     //** activar luego
      begin
       //** Limpio la variable
       xResultados := '';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_MOD').AsString)+',';
       xResultados :=  xResultados + quotedstr(dm1.StrZero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2))+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_USE').AsString)+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_PAG').AsString)+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString)+',';

       If DM1.cdsQry1.FieldByName('COD_OFI').AsString = '' then
         //** CREID
         xResultados :=  xResultados + quotedstr('01'+DM1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+','
       else
         //** CREID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString+
                                                 DM1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';

       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('ITE_CUO').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MON_CUO').AsString+',';
       If DM1.cdsQry1.FieldByName('TIP_CAM').AsFloat > 0 then
        xResultados :=  xResultados + FloatToStr(DM1.cdsQry1.FieldByName('MON_CUO').AsFloat / DM1.cdsQry1.FieldByName('TIP_CAM').AsFloat) +','
       else
        xResultados :=  xResultados + '0.00'+',';

       xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_PAG').AsString,7,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_PAG').AsString,5,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_PAG').AsString,1,4));
       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';

       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('AMO_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('INT_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('GAS_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MON_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TIP_CAM').AsString+',';

       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';

       xFecha := StrToDAte(DM1.cdsQry1.FieldByName('FECHA').AsString);

       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';

       xResultados :=  xResultados + wRepHorServi+',';

       xResultados :=  xResultados + quotedstr(dblcCia1.text)+','; //** por defecto quer apunte a la Cia = '02'
       xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('UPROID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('DPTOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('DPTOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('UPAGOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('BANCOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('BANCOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('ASONCTA').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASONCTA').AsString)+',';
       If DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString)+',';

       If DM1.cdsAsociados.FieldByName('CIUDID').AsString = '' then
        xResultados :=  xResultados + 'null'+','
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('CIUDID').AsString)+',';
       xResultados :=  xResultados + quotedstr(copy(Trim(clbArchivos.Items.Strings[xItemIndex]),1,8) + FloatToStr(xAno));
       Label2.caption := IntToStr(xVan);
       Label2.Refresh;
       xSql := 'INSERT INTO CRE310 ('+xCampoC1+') values ('+xresultados+')';
       dm1.dcom1.AppServer.EjecutaSQL(xSql);
       xVan := xVan +1;
      end;
     DM1.cdsQry1.next;
    End;
    //** hABILITAR LUEGO
    //** DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
    //** fuerza la ruta
  except
    //** hABILITAR LUEGO
    //** DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
  End;


------------------------

const
  xCampos303 : String = ('TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG,'+
                      'TMONID,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,'+
                      'CRETCALID,TMONABR,TIPDESEID,CRELUGGIRO,BANCOID,CRENUMCTA,CRESDOACT,CREFINIPAG,'+
                      'CREFFINPAG,CRECUOPAG,CREESTADO,CRESALDOT,OFDESID,CREDID,CALIFICAID,USUARIO,'+
                      'FREG,HREG,GARAPENOM,GARASOID,AGENBANCOID,DPTOGIRO,BCOGIRO,FORPAGOID,CUOTAINI,DPTOID,'+
                      'UPROID,TIPCREDES,TIPDESEABR,CREGADM,CREMORA,FORPAGOABR,CIAID,LISTAID,LISTAABR,'+
                      'CONDCREDID,CREESTID,ASOCODAUX,CREANOMES');

  xCampos301 : String = ('TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG,'+
                         'TMONID,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,'+
                         'CRETCALID,TMONABR,CRELUGGIRO,BANCOID,CRENUMCTA,CRESDOACT,CREFINIPAG,'+
                         'CREFFINPAG,CRECUOPAG,CREESTADO,CRESALDOT,OFDESID,CREDID,CALIFICAID,USUARIO,'+
                         'FREG,HREG,GARAPENOM,GARASOID,AGENBANCOID,DPTOGIRO,BCOGIRO,FORPAGOID,CUOTAINI,DPTOID,'+
                         'UPROID,TIPCREDES,CREGADM,CREMORA,FORPAGOABR,CIAID,LISTAID,LISTAABR,'+
                         'CREESTID,ASOCODAUX,CREANOMES,UPAGOID,NROFICIO');
var
  //xUpdateAPO201 : Array[1..12,1..1] of string;
  xwhere,xForpagoid,xCreestaid, sFecha,xResultados, xsql : String;
  xFecha : TDate;
  xVan : Integer;
  xTmonid : String;
begin
//** Para cabecera de prestamos CRE301
  try
   DM1.cdsAsociados.PacketRecords := -1;
   dm1.cdsQry1.DisableControls;

   DM1.cdsQry1.Filter := '';
   DM1.cdsQry1.Filtered := False;
   xSql := 'SELECT * FROM PRESTAM';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;

  xSql := 'SELECT C.* FROM APO201 C,(SELECT A.ASOCODMOD,A.ASOCODAUX,B.COD_MOD,B.NRO_VEZ'+
          ' FROM APO201 A,PRESTAM B WHERE'+
          ' SUBSTR(TRIM(A.ASOCODMOD),1,10)=SUBSTR(TRIM(B.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(A.ASOCODAUX),1,2)=SUBSTR(TRIM(B.NRO_VEZ),1,2)'+
          ' GROUP BY A.asocodmod,A.asocodaux,B.COD_MOD,B.NRO_VEZ ) D'+
          ' WHERE SUBSTR(TRIM(C.ASOCODMOD),1,10)=SUBSTR(TRIM(D.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(C.ASOCODAUX),1,2)=SUBSTR(TRIM(D.NRO_VEZ),1,2)';
   DM1.cdsAsociados.close;
   DM1.cdsAsociados.DataRequest(xSql);
   DM1.cdsAsociados.open;
   dm1.cdsAsociados.IndexFieldNames := 'ASOCODMOD;ASOCODAUX';
    try
     //** Inicio Transacción
     //** hABILITAR LUEGO
     //** DM1.DCOM1.AppServer.SolStartTransaction;
     DM1.cdsQry1.First;
     xVan := 1;
     //** Paso 1, recorro toda la data
     While Not DM1.cdsQry1.Eof Do
      Begin
       //** se verifica que el asociado exista en el Maestro APO201 para porder insertar en
       //** CRE303 (Cabecera de Prestamo)
       dm1.cdsAsociados.setkey;
       dm1.cdsAsociados.fieldByName('ASOCODMOD').AsString := TRIM(DM1.cdsQry1.FieldByName('COD_MOD').AsString);
       dm1.cdsAsociados.fieldByName('ASOCODAUX').AsString := TRIM(dm1.strzero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2));
       If dm1.cdsAsociados.Gotokey then
        begin
         //** Limpio la variable
         xResultados := '';
         //** TIPCREID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString)+',';
         //** ASOID
         xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASOID').AsString)+',';
         //** ASOCODMOD
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_MOD').AsString)+',';
         //** ASOCODPAGO
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_PAG').AsString)+',';
         //** ASOAPENOM
         xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASOAPENOM').AsString)+',';
         //** USEID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_USE').AsString)+',';
         //** CREFOTORG
         If Length(DM1.cdsQry1.FieldByName('FEC_PRE').AsString) > 0 then
          begin
           xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,7,2)+'/'+
                   copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,5,2)+'/'+
                   copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,1,4));
           sFecha := formatdatetime('DD/MM/YYYY',xFecha);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + Null+',';
         //** TMONID buscar en tabla de Equivalencias CRE116
         If DM1.cdsQry1.FieldByName('TIP_MON').AsString = '' then
          begin
            xResultados :=  xResultados +quotedstr('N') +',';
            xTmonid := 'N';
          end
         else
          begin
           xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_MON').AsString)+
                     ' AND CAMPO='+quotedstr('TIP_MON');
           xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
           xTmonid := dm1.cdsqry.Fieldbyname('EQUIVALE').AsString;
          end;
         //** CREMTOSOL
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREMTOOTOR
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREMTOGIR
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREINTERES
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_INT').AsString+',';
         //** CREDFLAT
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_FLT').AsString+',';
         //** CRECUOTA
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CUOTA').AsString+',';
         //** CRENUMCUO
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('NUM_CUO').AsString+',';
         //** CRETCALID  buscar en tabla de Equivalencias CRE116
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_CUO').AsString)+
                   ' AND CAMPO='+quotedstr('TIP_CUO');
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         //** TMONABR
         xWhere := 'TMONID='+ quotedstr(xTmonid);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','TGE103','TMONABR',xwhere,'TMONABR'))+',';
         //** TIPDESEID
         xResultados :=  xResultados + quotedstr(COPY(DM1.cdsQry1.FieldByName('COD_BCO').AsString,2,2))+',';
         //** CRELUGGIR
         xWhere := 'AGENBCOID='+ quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB102','AGENBCODES',xwhere,'AGENBCODES'))+',';
         //** BANCOID
         xResultados :=  xResultados + 'NULL'+',';
         //** CRENUMCTA
         If dm1.cdsAsociados.FieldByName('ASONCTA').AsString = '' then
          xResultados :=  xResultados +  'NULL'+','
         else
          xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASONCTA').AsString)+',';
         //** CRESDOACT
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('SALDO').AsString+',';
         //** CREFINIPAG
         If Length(DM1.cdsQry1.FieldByName('INICIO').AsString) > 0 then
          begin
           sFecha := copy(DM1.cdsQry1.FieldByName('INICIO').AsString,5,2)+
                     copy(DM1.cdsQry1.FieldByName('INICIO').AsString,1,4);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** CREFFINPAG
         If Length(DM1.cdsQry1.FieldByName('FINAL').AsString) > 0 then
          begin
           sFecha :=copy(DM1.cdsQry1.FieldByName('FINAL').AsString,5,2)+
                    copy(DM1.cdsQry1.FieldByName('FINAL').AsString,1,4);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** CRECUOPAG
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CMS_PAG').AsString+',';
         //** CREESTADO
         If DM1.cdsQry1.FieldByName('FLG_CAN').AsString = '' then
          If UPPERCASE(DM1.cdsQry1.FieldByName('ANULADO').AsString) = 'FALSE' then
            begin
             xWhere := 'ORIGEN='+ quotedstr(UPPERCASE(DM1.cdsQry1.FieldByName('ANULADO').AsString))+
                       ' AND CAMPO='+quotedstr('ANULADO');
             xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
             xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
            end
           else
            begin
             xWhere := 'ORIGEN='+ quotedstr('TRUE')+' AND CAMPO='+quotedstr('ANULADO');
             xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
             xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
            end
         else
          Begin
            xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('FLG_CAN').AsString)+
                      ' AND CAMPO='+quotedstr('FLG_CAN');
            xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
            xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
          end;
         //** CRESALDOT
         xResultados :=  xResultados + dm1.cdsQry1.FieldByName('SAL_TOT').AsString+',';
         //** OFDESID
         If DM1.cdsQry1.FieldByName('COD_OFI').AsString = '' then
          begin
           xResultados :=  xResultados +  'NULL'+',';
           //** CREID
           xResultados :=  xResultados + quotedstr('01'+Dm1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';
          end
         else
          begin
           xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString)+',';
           //** CREID
           xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString+
                                                   Dm1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';
          end;

         //** CALIFICAID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
         //** USUARIO
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
         //** FREG
         If Length(DM1.cdsQry1.FieldByName('FECHA').AsString) > 0 then
          begin
           xFecha := StrToDAte(DM1.cdsQry1.FieldByName('FECHA').AsString);
           sFecha := formatdatetime('DD/MM/YYYY',xFecha);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** HREG
         xResultados :=  xResultados + wRepHorServi+',';
         //** GARAPENOM, por ahora se busca solo por el codigo moduloar, luego tendra que
         //** incluirse el nro_vez
         xWhere := 'ASOCODMOD='+quotedstr(DM1.cdsQry1.FieldByName('COD_AVA').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','APO201','ASOAPENOM',xwhere,'ASOAPENOM'))+',';
         //** GARASOID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_AVA').AsString)+',';
         //** AGENBANCOID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString)+',';
         //** DPTOGIR
         xWhere := 'AGENBCOID='+quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB102','BANCOID,DPTOID',xwhere,'DPTOID'))+',';
         //** BCOGIRO
         xResultados :=  xResultados +quotedstr(Dm1.cdsQry.FieldByName('BANCOID').AsString)+',';
         //** FORPAGOID
         If DM1.cdsQry1.FieldByName('TIP_PAG').AsString = '' then
           begin
            xResultados :=  xResultados +quotedstr('18') +',';
            xForpagoid := '18'
           end
         else
          begin
           xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PAG').AsString)+
                     ' AND CAMPO ='+quotedstr('TIP_PAG');
           xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
           xForpagoid  := DM1.cdsQry.fieldByName('EQUIVALE').AsString;
          end;
         //** CUOTAINI
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CUO_INI').AsString+',';

         //** DPTOID
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('DEPARTA').AsString)+
                   ' AND CAMPO ='+quotedstr('DEPARTA');
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         //** UPROID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('LUG_PRO').AsString)+',';

         //** TIPCREDES
         xWhere := 'TIPCREID='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE110','TIPCREDES',xwhere,'TIPCREDES'))+',';

         //** TIPDESEABR
         xWhere := 'TIPDESEID='+ quotedstr(copy(DM1.cdsQry1.FieldByName('COD_BCO').AsString,2,2));
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE104','TIPDESEABR',xwhere,'TIPDESEABR'))+',';
         //** CREGADM
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_GAS').AsString+',';
         //** CREMORA
         xResultados :=  xResultados + dm1.cdsQry1.FieldByName('TAS_MOR').AsString+',';
         //** FORPAGOABR
         xWhere := 'FORPAGOID='+ quotedstr(xForpagoid);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB101','FORPAGOABR',xwhere,'FORPAGOABR'))+',';
         //** CIAID
         xResultados :=  xResultados + quotedstr('02')+',';
         //** LISTAID
         xResultados :=  xResultados +quotedstr('001')+','; //** por ahora se deja en 01 la lista de credito
         //** LISTAABR
         xWhere := 'LISTAID='+ quotedstr('001'); //** por ahora se deja en 01 la lista de credito
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE101','LISTAABR,CONDCREDID',xwhere,'LISTAABR'))+',';
         //** CONDCREDID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry.FieldByName('CONDCREDID').AsString)+',';
         //** CREESTID
         xResultados :=  xResultados + quotedstr(xCreestaid)+',';
         //** ASOCODAUX
         xResultados :=  xResultados + quotedstr(DM1.StrZero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2))+',';
         //** CREANOMES
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('ANO_PRE').AsString+
                                                 DM1.cdsQry1.FieldByName('MES_PRE').AsString);
         Label2.caption := IntToStr(xVan);
         Label2.Refresh;
         xSql := 'INSERT INTO CRE303 ('+xCampos303+') values ('+xresultados+')';
         dm1.dcom1.AppServer.EjecutaSQL(xSql);
         xVan := xVan + 1;

         ////////////////////////////////////////////////////////////////////////////
        //** Para DETALLE DE LA SOLICITUD CRE301
         //** Limpio la variable
         xResultados := '';
         //** TIPCREID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString)+',';
         //** ASOID
         xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASOID').AsString)+',';
         //** ASOCODMOD
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_MOD').AsString)+',';
         //** ASOCODPAGO
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_PAG').AsString)+',';
         //** ASOAPENOM
         xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASOAPENOM').AsString)+',';
         //** USEID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_USE').AsString)+',';
         //** CREFOTORG
         If Length(DM1.cdsQry1.FieldByName('FEC_PRE').AsString) > 0 then
          begin
           xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,7,2)+'/'+
                   copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,5,2)+'/'+
                   copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,1,4));
           sFecha := formatdatetime('DD/MM/YYYY',xFecha);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + Null+',';
         //** TMONID buscar en tabla de Equivalencias CRE116
         If DM1.cdsQry1.FieldByName('TIP_MON').AsString = '' then
          begin
            xResultados :=  xResultados +quotedstr('N') +',';
            xTmonid := 'N';
          end
         else
          begin
           xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_MON').AsString)+
                     ' AND CAMPO='+quotedstr('TIP_MON');
           xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
           xTmonid := dm1.cdsqry.Fieldbyname('EQUIVALE').AsString;
          end;
         //** CREMTOSOL
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREMTOOTOR
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREMTOGIR
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREINTERES
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_INT').AsString+',';
         //** CREDFLAT
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_FLT').AsString+',';
         //** CRECUOTA
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CUOTA').AsString+',';
         //** CRENUMCUO
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('NUM_CUO').AsString+',';

         //** CRETCALID  buscar en tabla de Equivalencias CRE116
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_CUO').AsString)+
                   ' AND CAMPO='+quotedstr('TIP_CUO');
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         //** TMONABR
         xWhere := 'TMONID='+ quotedstr(xTmonid);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','TGE103','TMONABR',xwhere,'TMONABR'))+',';
         //** CRELUGGIRO
         xWhere := 'AGENBCOID='+ quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB102','AGENBCODES',xwhere,'AGENBCODES'))+',';
         //** BANCOID
         xResultados :=  xResultados + 'NULL'+',';
         //** CRENUMCTA
         If dm1.cdsAsociados.FieldByName('ASONCTA').AsString = '' then
          xResultados :=  xResultados +  'NULL'+','
         else
          xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASONCTA').AsString)+',';
         //** CRESDOACT
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('SALDO').AsString+',';
         //** CREFINIPAG
         If Length(DM1.cdsQry1.FieldByName('INICIO').AsString) > 0 then
          begin
           sFecha := copy(DM1.cdsQry1.FieldByName('INICIO').AsString,5,2)+
                     copy(DM1.cdsQry1.FieldByName('INICIO').AsString,1,4);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** CREFFINPAG
         If Length(DM1.cdsQry1.FieldByName('FINAL').AsString) > 0 then
          begin
           sFecha := copy(DM1.cdsQry1.FieldByName('FINAL').AsString,5,2)+
                     copy(DM1.cdsQry1.FieldByName('FINAL').AsString,1,4);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** CRECUOPAG
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CMS_PAG').AsString+',';
         //** CREESTADO
         If DM1.cdsQry1.FieldByName('FLG_CAN').AsString = '' then
          If UPPERCASE(DM1.cdsQry1.FieldByName('ANULADO').AsString) = 'FALSE' then
            begin
             xWhere := 'ORIGEN='+ quotedstr(UPPERCASE(DM1.cdsQry1.FieldByName('ANULADO').AsString))+
                       ' AND CAMPO='+quotedstr('ANULADO');
             xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
             xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
            end
           else
            begin
             xWhere := 'ORIGEN='+ quotedstr('TRUE')+' AND CAMPO='+quotedstr('ANULADO');
             xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
             xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
            end
         else
          Begin
            xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('FLG_CAN').AsString)+
                      ' AND CAMPO='+quotedstr('FLG_CAN');
            xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
            xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
          end;
         //** CRESALDOT
         xResultados :=  xResultados + dm1.cdsQry1.FieldByName('SAL_TOT').AsString+',';

         //** OFDESID
         If DM1.cdsQry1.FieldByName('COD_OFI').AsString = '' then
          begin
           xResultados :=  xResultados +  'NULL'+',';
           //** CREID
           xResultados :=  xResultados + quotedstr('01'+Dm1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';
          end
         else
          begin
           xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString)+',';
           //** CREID
           xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString+
                                                   Dm1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';
          end;

         //** CALIFICAID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
         //** USUARIO
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
         //** FREG
         If Length(DM1.cdsQry1.FieldByName('FECHA').AsString) > 0 then
          begin
           xFecha := StrToDAte(DM1.cdsQry1.FieldByName('FECHA').AsString);
           sFecha := formatdatetime('DD/MM/YYYY',xFecha);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** HREG
         xResultados :=  xResultados + wRepHorServi+',';
         //** GARAPENOM, por ahora se busca solo por el codigo moduloar, luego tendra que
         //** incluirse el nro_vez
         xWhere := 'ASOCODMOD='+quotedstr(DM1.cdsQry1.FieldByName('COD_AVA').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','APO201','ASOAPENOM',xwhere,'ASOAPENOM'))+',';
         //** GARASOID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_AVA').AsString)+',';
         //** AGENBANCOID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString)+',';
         //** DPTOGIR
         xWhere := 'AGENBCOID='+quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB102','BANCOID,DPTOID',xwhere,'DPTOID'))+',';
         //** BCOGIRO
         xResultados :=  xResultados +quotedstr(Dm1.cdsQry.FieldByName('BANCOID').AsString)+',';
         //** FORPAGOID
         If DM1.cdsQry1.FieldByName('TIP_PAG').AsString = '' then
           begin
            xResultados :=  xResultados +quotedstr('18') +',';
            xForpagoid := '18'
           end
         else
          begin
           xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PAG').AsString)+
                     ' AND CAMPO ='+quotedstr('TIP_PAG');
           xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
           xForpagoid  := DM1.cdsQry.fieldByName('EQUIVALE').AsString;
          end;
         //** CUOTAINI
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CUO_INI').AsString+',';
         //** DPTOID
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('DEPARTA').AsString)+
                   ' AND CAMPO ='+quotedstr('DEPARTA');
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         //** UPROID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('LUG_PRO').AsString)+',';
         //** TIPCREDES
         xWhere := 'TIPCREID='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE110','TIPCREDES',xwhere,'TIPCREDES'))+',';
         //** CREGADM
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_GAS').AsString+',';
         //** CREMORA
         xResultados :=  xResultados + dm1.cdsQry1.FieldByName('TAS_MOR').AsString+',';
         //** FORPAGOABR
         xWhere := 'FORPAGOID='+ quotedstr(xForpagoid);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB101','FORPAGOABR',xwhere,'FORPAGOABR'))+',';
         //** CIAID
         xResultados :=  xResultados + quotedstr('02')+',';
         //** LISTAID
         xResultados :=  xResultados +quotedstr('001')+','; //** por ahora se deja en 01 la lista de credito
         //** LISTAABR
         xWhere := 'LISTAID='+ quotedstr('001'); //** por ahora se deja en 01 la lista de credito
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE101','LISTAABR,CONDCREDID',xwhere,'LISTAABR'))+',';
         //** CREESTID
         xResultados :=  xResultados + quotedstr(xCreestaid)+',';
         //** ASOCODAUX
         xResultados :=  xResultados + quotedstr(DM1.StrZero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2))+',';
         //** CREANOMES
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('ANO_PRE').AsString+
                                                 DM1.cdsQry1.FieldByName('MES_PRE').AsString)+',';
         //** UPAGOID
         If dm1.cdsAsociados.FieldByName('UPAGOID').AsString = '' then
           xResultados :=  xResultados +  'NULL,'
         else
          xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('UPAGOID').AsString)+',';
         //** NROFICIO
         xResultados :=  xResultados +
                     quotedstr(DM1.StrZero(DM1.cdsQry1.FieldByName('DOC_OFI').AsString,2));

         xSql := 'INSERT INTO CRE301 ('+xCampos301+') values ('+xresultados+')';
         dm1.dcom1.AppServer.EjecutaSQL(xSql);
        end;
       DM1.cdsQry1.next;
      End;
     //** hABILITAR LUEGO
     //** DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
    except
     //** hABILITAR LUEGO
     //** DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
    End;
 finally
  dm1.cdsQry1.EnableControls;
  DM1.cdsAsociados.PacketRecords := 100;
 end;

INSERT INTO APO301 (ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID, UPROABR, TMONID, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, TRANSANO, TRANSMES, TRANSMTO, TRANSINTID, USUARIO, ASOCODMOD, ASOCODAUX, FORPAGOID, ASOAPENOM, FORPAGOABR, DPTOID, DPTOABR, CIUDID, FREG, HREG, TRANSAAMM, TRANSAATRI, TRANSTRIM, TRANSSEM, TRANSAASEM, APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG) SELECT Z.ASOID, 'APORTE', 'N0', B.USEABRE, 'N0', C.UPAGOABR, 'TUM', D.UPROABR, 'N', '03', '194-625395-0-20', 'OP-0000090', TO_DATE('02/02/0002'), '2002', '01', 15.5, 'APO', 'ECASANA', Z.ASOCODMOD, A.ASOCODAUX, '09', A.ASOAPENOM, E.FORPAGOABR, B.DPTOID, F.DPTOABR, B.CIUDID, TO_DATE('02-10-2002'), SYSDATE, '', '', '', '', '', '200201', '02', RCOBID, DETRCOBID, USERCOBID, '03', ''
FROM COB304 Z, APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F WHERE Z.ASOID=A.ASOID AND Z.UPROID=B.UPROID AND Z.UPAGOID=B.UPAGOID AND Z.USEID=B.USEID AND B.UPROID='TUM' AND B.UPAGOID='N0' AND C.UPROID=B.UPROID AND C.UPAGOID=B.UPAGOID AND D.UPROID=B.UPROID AND F.DPTOID=B.DPTOID AND E.FORPAGOABR='REG' AND Z.RCOBID='0000007' AND Z.DETRCOBID='0000001' AND Z.USERCOBID='0000003' AND TRANSMTO > 0 AND (FTRANSF<>'I' OR NVL(FTRANSF,'N')='N') AND (FTRANSFAC<>'S' OR NVL(FTRANSFAC,'N')='N')
 }

