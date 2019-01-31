// Unidad               : COB454
// Formulario           : FDesONP
// Fecha de Creación    : 26/02/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Mostrar Oficios enviados a la ONP para la cobranza de cuotas y acceder a las diferentes opciones
//                        para el procesamiento de los envios y retornos de cobros de la ONP.
// Actualizaciones      :
// HPC_201303_COB       : 13/03/2013 - Creación de la opción.
// SPP_201305_COB       : Se realiza el pase a producción a partir del HPC_201303_COB
// HPC_201306_COB       : Generación de la Cobranza por ONP a cesantes por la Ley 19990
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201309_COB       : 21/08/2013 - Modificar SQL - agregar a la consulta que NUMAUTONP no se anulo
// SPP_201311_COB       : Se realiza el pase a producción a partir del HPC_201309_COB
// HPC_201310_COB       : 17/09/2013 - Modificar Datos de Archivo TXT
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201513_COB       : Mejoras al envio y descargo cesantes 19990 - ONP
// HPC_201518_COB       : Verificación de cuotas en proceso de cobranzas antes del envío al descuento
// HPC_201601_COB       : Se adiciona en la generación de envío ONP descuentos del FSC
// HPC_201703_COB       : Considerar código de prestación de la base de Asociados - MEMO 1042-2016-DM-CO
// HPC_201806_COB       : Exceso en Cronogramas Cerrados (ONP, BANCO)
// HPC_201820_COB       : Se adiciona el estado de desaprobado
unit COB454;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, DB, StdCtrls, Mask,
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
  wwdbedit, Wwdbspin, ExtCtrls;
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP

type
  TFDesONP = class(TForm)
    DBGCabeceraONP: TwwDBGrid;
    BtnCerrar: TBitBtn;
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    BtnGenerar: TBitBtn;
    BtnGenDis: TBitBtn;
    BtnAplDes: TBitBtn;
    BtnMstDetEnv: TBitBtn;
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
    btnAnular: TBitBtn;
    shpInconsistencia: TShape;
    lblInconsistencia: TLabel;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    btnCronoCerrado: TBitBtn;
// Fin HPC_201806_COB 
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
    procedure FormActivate(Sender: TObject);
    procedure BtnCerrarClick(Sender: TObject);
    procedure DBGCabeceraONPDblClick(Sender: TObject);
    procedure BtnGenerarClick(Sender: TObject);
    procedure dbsMesIniChange(Sender: TObject);
    procedure actualizacabecera;
    procedure BtnGenDisClick(Sender: TObject);
    procedure BtnMstDetEnvClick(Sender: TObject);
    procedure MuestraDetalle;
    procedure BtnAplDesClick(Sender: TObject);
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
    procedure btnAnularClick(Sender: TObject);
    procedure DBGCabeceraONPDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    procedure btnCronoCerradoClick(Sender: TObject);
// Fin HPC_201806_COB 
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
  private
    xCanTot, xMonTot :Double;
    xSQL :String;
    // Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
    function  ExisteInconsistecia(xNroOfi:String):Boolean;
    // Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
  public
    { Public declarations }
  end;

var
  FDesONP: TFDesONP;

implementation
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
uses COBDM1, COB455, COB964, COB456, COB459, COB454A;
// Fin HPC_201806_COB 

{$R *.dfm}

procedure TFDesONP.FormActivate(Sender: TObject);
begin
  dbsAnoIni.Text :=  Copy(DateToStr(DM1.FechaSys),7,4);
  dbsMesIni.Text :=  Copy(DateToStr(DM1.FechaSys),4,2);
  actualizacabecera;
end;

procedure TFDesONP.BtnCerrarClick(Sender: TObject);
begin
   FDesONP.Close;
end;

procedure TFDesONP.DBGCabeceraONPDblClick(Sender: TObject);
begin
   MuestraDetalle;
end;

procedure TFDesONP.BtnGenerarClick(Sender: TObject);
Var xSQL, xPeriodo, xNroOficio:String;
begin
xPeriodo :=  DM1.StrZero(dbsAnoIni.Text,4) + DM1.StrZero(dbsMesIni.Text,2);
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
xSQL := 'SELECT PERCOB,NUMOFI FROM COB_ONP_PRO_CAB WHERE PERCOB = '+QuotedStr(xPeriodo)+' AND ESTENVCOB IS NULL ';
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
DM1.cdsQry.Close;
DM1.cdsQry.DataRequest(xSQL);
DM1.cdsQry.Open;
If DM1.cdsQry.RecordCount > 0 Then
    Begin
      MessageDlg(' El Mes que desea procesar ya existe ', mtInformation,[mbOk],0);
      Exit;
    End;

   If MessageDlg('Seguro que desea procesar la planilla para el periodo '+DM1.StrZero(dbsAnoIni.Text,4)+'-'+DM1.StrZero(dbsMesIni.Text,2), mtconfirmation,[mbYes,MbNo],0) = mrYes then
   Begin
      Screen.Cursor := crHourGlass;
      // Inicio HPC_201518_COB
      xSQL:='SELECT C.ASOID FROM APO201 A,CRE301 B, CRE302 C WHERE A.CODPENSION IS NOT NULL  '+
            'AND A.CODLEYPEN IN (''01'', ''20'') AND A.ASOID = B.ASOID AND B.CREESTID = ''02'' AND B.ASOID = C.ASOID '+
            'AND B.CREDID = C.CREDID AND C.CREESTID=''14'' AND ((TO_CHAR(C.CREFVEN, ''YYYYMM'') = '+QuotedStr(xPeriodo)+') OR '+
            '(C.CREFVEN <> C.CREFVENINI))  GROUP BY C.ASOID,C.ASOAPENOM,C.CREDID,C.CREFVEN,C.CRECUOTA ';
      If DM1.CountReg(xSQL) > 0 Then
         Begin
             MessageDlg(' Se detectarón '+IntToStr(DM1.CountReg(xSQL))+' cuota(s) en proceso de cobranza para este periodo, el sistema procedera con el cambio de estado!!! ', mtInformation,[mbOk],0);
             xSQL:='UPDATE CRE302 X SET CREESTID=''02'',CREESTADO=''POR COBRAR''  '+
                   'WHERE EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM '+
                   '(SELECT C.ASOID,C.CREDID,C.CRECUOTA '+
                   'FROM APO201 A,CRE301 B, '+
                   'CRE302 C WHERE A.CODPENSION IS NOT NULL '+
                   'AND A.CODLEYPEN IN (''01'', ''20'') AND A.ASOID = B.ASOID AND B.CREESTID = ''02'' AND B.ASOID = C.ASOID  '+
                   'AND B.CREDID = C.CREDID AND C.CREESTID=''14'' AND ((TO_CHAR(C.CREFVEN, ''YYYYMM'') = '+QuotedStr(xPeriodo)+') OR   '+
                   '(C.CREFVEN <> C.CREFVENINI))  GROUP BY C.ASOID,C.CREDID,C.CRECUOTA) '+
                   'WHERE X.ASOID=ASOID AND X.CREDID=CREDID AND X.CRECUOTA=CRECUOTA) ';
             DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
             MessageDlg('Cambio de estado de cuotas en proceso fue exitoso !!! ', mtInformation,[mbOk],0);
         End;
      // Fin HPC_201518_COB

// Modificar Datos de Archivo TXT
//Inicio HPC_201601_COB
//    xSQL := 'SELECT B.ASOID, TRIM(B.CODPENSION)||'' '' CODPENSION, B.CODLEYPEN, ''02'' PRESTACION, B.ASOAPENOMDNI, CASE WHEN B.TIPDOCCOD = ''10'' THEN ''DI'' ELSE ''CE'' END TIPDOCCOD,'
//    +' CASE WHEN B.TIPDOCCOD = ''10'' THEN B.ASODNI ELSE B.ASODOCNUM END NUMDOCIDE, A.MONENVCOB, B.NUMAUTONP SOLPEN, ''1'' INDALT'
//    +' FROM (SELECT ASOID, SUM(CASE WHEN CREMTO < SALCUO THEN CREMTO ELSE SALCUO END) MONENVCOB FROM (SELECT C.ASOID, C.CREDID, MAX(NVL(C.CREMTO,0)) CREMTO, SUM(NVL(C.CREMTO,0)-NVL(C.CREMTOCOB,0)) SALCUO'
//    +' FROM APO201 A, CRE301 B, CRE302 C WHERE A.CODPENSION IS NOT NULL AND A.CODLEYPEN IN (''01'',''20'') AND A.ASOID = B.ASOID AND B.CREESTID = ''02'''
//    +' AND B.ASOID = C.ASOID AND B.CREDID = C.CREDID AND C.CREESTID IN (''02'',''11'',''27'') '
//    +' AND ((TO_CHAR(C.CREFVEN,''YYYYMM'') <= '+QuotedStr(xPeriodo)+') OR (C.CREFVEN <> C.CREFVENINI)) '
//    +' GROUP BY C.ASOID, C.CREDID ORDER BY C.ASOID, C.CREDID) GROUP BY ASOID) A, APO201 B WHERE A.ASOID = B.ASOID AND B.NUMAUTONP IS NOT NULL';
// Modificar Datos de Archivo TXT
      //Inicio : HPC_201703_COB  Considerar código de prestación de la base de Asociados - MEMO 1042-2016-DM-CO
      xSQL := 'SELECT B.ASOID, TRIM(B.CODPENSION)||'' '' CODPENSION, B.CODLEYPEN, NVL(B.CODPRE,''02'') PRESTACION, B.ASOAPENOMDNI, '
      +'CASE WHEN B.TIPDOCCOD = ''10'' THEN ''DI'' ELSE ''CE'' END TIPDOCCOD,'
      +'CASE WHEN B.TIPDOCCOD = ''10'' THEN B.ASODNI ELSE B.ASODOCNUM END NUMDOCIDE, A.MONENVCOB, B.NUMAUTONP SOLPEN, ''1'' INDALT,TIPO'
      +' FROM (SELECT ASOID,MONENVCOB,TIPO FROM (SELECT ASOID, SUM(CASE WHEN CREMTO < SALCUO THEN CREMTO ELSE SALCUO END) MONENVCOB,''C'' TIPO FROM (SELECT C.ASOID, C.CREDID, MAX(NVL(C.CREMTO,0)) CREMTO, SUM(NVL(C.CREMTO,0)-NVL(C.CREMTOCOB,0)) SALCUO'
      +' FROM APO201 A, CRE301 B, CRE302 C WHERE A.CODPENSION IS NOT NULL AND A.CODLEYPEN IN (''01'',''20'') AND A.ASOID = B.ASOID AND B.CREESTID = ''02'''
      +' AND B.ASOID = C.ASOID AND B.CREDID = C.CREDID AND C.CREESTID IN (''02'',''11'',''27'') '
      +' AND ((TO_CHAR(C.CREFVEN,''YYYYMM'') <= '+QuotedStr(xPeriodo)+') OR (C.CREFVEN <> C.CREFVENINI)) '
      +' GROUP BY C.ASOID, C.CREDID ORDER BY C.ASOID, C.CREDID) GROUP BY ASOID) '
      +' UNION ALL '
      +'(SELECT A.ASOID,MAX(D.CRECUOTA) MONENVCOB,''F'' TIPO '
      +'   FROM APO201 A,COB_FSC_DEUDA_FSC_CAB B,COB_FSC_DEUDA_FSC_DET C,CRE301 D '
      +'  WHERE A.CODPENSION IS NOT NULL AND A.CODLEYPEN IN (''01'', ''20'') AND '
      +'        B.ASOID=A.ASOID AND B.ID_EST_FSC IN (''02'',''27'') AND '
      +'        C.ASOID=B.ASOID AND C.NUM_DEU=B.NUM_DEU AND '
      +'        D.ASOID=C.ASOID AND  D.CREDID=C.CRE_APL_FSC '
      +' GROUP BY A.ASOID) '
      +')A, '
      +' APO201 B WHERE A.ASOID = B.ASOID AND B.NUMAUTONP IS NOT NULL';
      //Fin : HPC_201703_COB Considerar código de prestación de la base de Asociados - MEMO 1042-2016-DM-CO
//Final HPC_201601_COB
      DM1.cdsDetRegCob.Close;
      DM1.cdsDetRegCob.DataRequest(xSQL);
      DM1.cdsDetRegCob.Open;
      DM1.cdsDetRegCob.First;
      xCanTot := 0;
      xMonTot := 0;
      While Not DM1.cdsDetRegCob.Eof Do
      Begin
         xCanTot := xCanTot + 1;
         xMonTot := xMonTot + DM1.cdsDetRegCob.FieldByName('MONENVCOB').AsFloat;
         DM1.cdsDetRegCob.Next;
      End;
      DM1.cdsDetRegCob.First;
      // Marcar proceso de cobranza
      While Not DM1.cdsDetRegCob.Eof Do
      Begin
         xSQL := 'SELECT ASOID, CREDID, MIN(CRECUOTA) CRECUOTA FROM CRE302 WHERE ASOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString)
         +' AND TO_CHAR(CREFVEN,''YYYYMM'') <= '+QuotedStr(xPeriodo)+' AND CREESTID IN (''02'',''11'',''27'') GROUP BY ASOID, CREDID';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         While Not DM1.cdsQry.Eof Do
         Begin
            xSQL := 'UPDATE CRE302 SET CREESTID = ''14'', CREESTADO = ''EN PROCESO DE COBRANZA'', PERCOB = '+QuotedStr(xPeriodo)+' WHERE ASOID = '+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)
            +' AND CREDID = '+QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString)+' AND CRECUOTA = '+QuotedStr(DM1.cdsQry.FieldByName('CRECUOTA').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            DM1.cdsQry.Next;
         End;
         DM1.cdsDetRegCob.Next;
      End;
      // Capturando numero de oficio
      xSQL := 'SELECT LPAD(NROFICIO+1,2,''0'') NROFICIO FROM CRE206 WHERE CORREANO = '+QuotedStr(dbsAnoIni.Text)+' AND CREAREA = ''COB'' AND TIPO = ''O''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xNroOficio := DM1.cdsQry.FieldByName('NROFICIO').AsString;
      // Insertando registro de la cabecera
      xSQL := 'INSERT INTO COB_ONP_PRO_CAB (PERCOB, FECGEN, NUMOFI, NUMENV, MONENV, USUARIO, GENARC) VALUES ('
      +QuotedStr(xPeriodo)+', TO_DATE(SYSDATE),'+QuotedStr(dbsAnoIni.Text+xNroOficio)+','+FloatToStr(xCanTot)+','+FloatToStr(xMonTot)+','+QuotedStr(DM1.wUsuario)+', ''S'')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      // Insertando registro del detalle
      DM1.cdsDetRegCob.First;
      While Not DM1.cdsDetRegCob.Eof Do
      Begin
//Inicio HPC_201601_COB
         //xSQL := 'INSERT INTO COB_ONP_PRO_DET (NUMOFI, PERCOB, ASOID, CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI, TIPDOCCOD, NUMDOCIDE, MONENVCOB, SOLPEN, INDALT) VALUES ('
         xSQL := 'INSERT INTO COB_ONP_PRO_DET (NUMOFI, PERCOB, ASOID, CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI, TIPDOCCOD, NUMDOCIDE, MONENVCOB, SOLPEN, INDALT,TIPO) VALUES ('
         +QuotedStr(dbsAnoIni.Text+xNroOficio)+','+QuotedStr(xPeriodo)+','+QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsDetRegCob.FieldByName('CODPENSION').AsString)
         +','+QuotedStr(DM1.cdsDetRegCob.FieldByName('CODLEYPEN').AsString)+','+QuotedStr(DM1.cdsDetRegCob.FieldByName('PRESTACION').AsString)
         +','+QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsDetRegCob.FieldByName('TIPDOCCOD').AsString)
         +','+QuotedStr(DM1.cdsDetRegCob.FieldByName('NUMDOCIDE').AsString)+','+DM1.cdsDetRegCob.FieldByName('MONENVCOB').AsString
         +','+QuotedStr(DM1.cdsDetRegCob.FieldByName('SOLPEN').AsString)+','+QuotedStr(DM1.cdsDetRegCob.FieldByName('INDALT').AsString)
         +','+QuotedStr(DM1.cdsDetRegCob.FieldByName('TIPO').AsString) +')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsDetRegCob.Next;
//Final HPC_201601_COB
      End;
      DM1.cdsDetRegCob.First;
      // Actualizando correlativo de nro. de oficio
      xSQL := 'UPDATE CRE206 SET NROFICIO = LPAD(NROFICIO+1,2,''0'') WHERE CORREANO = '+QuotedStr(dbsAnoIni.Text)+' AND CREAREA = ''COB'' AND TIPO = ''O''';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      // Actualizando cabecera de registro de Envios
      actualizacabecera;
      Screen.Cursor := crDefault;
   End;
End;

procedure TFDesONP.dbsMesIniChange(Sender: TObject);
begin
  lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');
end;
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
procedure TFDesONP.actualizacabecera;
Var xSQL:String;
begin
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  xSQL := 'SELECT NUMOFI, PERCOB, FECGEN, USUARIO, NUMENV, MONENV, GENARC, ENVARC, RETARC, FLADES, CANREGDES, MONTOTDES, ESTENVCOB, CANREGEXC, MONTOTEXC '+
          'FROM COB_ONP_PRO_CAB ORDER BY NUMOFI DESC';
// Fin HPC_201806_COB 
  DM1.cdsRegCob.Close;
  DM1.cdsRegCob.DataRequest(xSQL);
  DM1.cdsRegCob.Open;
  DBGCabeceraONP.Selected.Clear;
  DBGCabeceraONP.Selected.Add('NUMOFI'#9'12'#9'Oficio'#9#9);
  DBGCabeceraONP.Selected.Add('PERCOB'#9'8'#9'Periodo'#9#9);
  DBGCabeceraONP.Selected.Add('FECGEN'#9'12'#9'Fecha de~Generación'#9#9);
  DBGCabeceraONP.Selected.Add('USUARIO'#9'15'#9'Usuario que~Genera'#9#9);
  DBGCabeceraONP.Selected.Add('NUMENV'#9'8'#9'Cuotas~Enviadas'#9#9);
  DBGCabeceraONP.Selected.Add('MONENV'#9'16'#9'Monto~Enviado'#9#9);
  DBGCabeceraONP.Selected.Add('GENARC'#9'1'#9'Generado'#9#9);
  DBGCabeceraONP.Selected.Add('ENVARC'#9'1'#9'Enviado'#9#9);
  DBGCabeceraONP.Selected.Add('RETARC'#9'1'#9'Retorno'#9#9);
  DBGCabeceraONP.Selected.Add('FLADES'#9'1'#9'Descargado'#9#9);
  DBGCabeceraONP.Selected.Add('CANREGDES'#9'8'#9'Cuotas~Descargadas'#9#9);
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  DBGCabeceraONP.Selected.Add('MONTOTDES'#9'12'#9'Monto~Descargado'#9#9);
  DBGCabeceraONP.Selected.Add('CANREGEXC'#9'8'#9'Número Cred.~Cerrado'#9#9);
  DBGCabeceraONP.Selected.Add('MONTOTEXC'#9'12'#9'Monto Cred.~Cerrado'#9#9);
// Fin HPC_201806_COB 
  DBGCabeceraONP.ApplySelected;
  TNumericField(DM1.cdsRegCob.FieldByName('NUMENV')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsRegCob.FieldByName('MONENV')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('CANREGDES')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsRegCob.FieldByName('MONTOTDES')).DisplayFormat := '##,###,##0.00';
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  TNumericField(DM1.cdsRegCob.FieldByName('CANREGEXC')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsRegCob.FieldByName('MONTOTEXC')).DisplayFormat := '##,###,##0.00';
// Fin HPC_201806_COB 
end;
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP


procedure TFDesONP.BtnGenDisClick(Sender: TObject);
begin
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
   If ExisteInconsistecia(DM1.cdsRegCob.FieldByName('NUMOFI').AsString) Then
      Begin
         MessageDlg(' Existe Inconsistencias, No Puede Generar Archivo!!!! ', mtError,[mbOk],0);
         Exit;
      End;
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
   Try
      FGrabadiskette := TFGrabadiskette.create(Self);
      FGrabadiskette.ShowModal;
   Finally
      FGrabadiskette.Free;
   End;
end;

procedure TFDesONP.BtnMstDetEnvClick(Sender: TObject);
begin
   MuestraDetalle;
end;

// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
procedure TFDesONP.MuestraDetalle;
begin
   // Detalle de envio
   If DM1.cdsRegCob.FieldByName('ESTENVCOB').AsString='13' Then
      Begin
         MessageDlg(' No Existe Información, Envío fue Anulado!!!! ', mtInformation,[mbOk],0);
         Exit;
      End
   Else
      Begin
         Try
            FDetDesONP := TFDetDesONP.create(Self);
            FDetDesONP.ShowModal;
         Finally
            FDetDesONP.Free;
         End;
      End;
end;
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP

procedure TFDesONP.BtnAplDesClick(Sender: TObject);
begin
   // Aplicaciòn de descuento a ONP
   Try
      FAplDesOnp := TFAplDesOnp.create(Self);
      FAplDesOnp.ShowModal;
   Finally
      FAplDesOnp.Free;
   End;
end;
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
function TFDesONP.ExisteInconsistecia(xNroOfi: String): Boolean;
var xConsulta:String;
begin
   xConsulta:= 'SELECT NUMOFI,ASOID,CODPEN,CODLEYPEN,CODPRE,ASOAPENOMDNI,TIPDOCCOD,NUMDOCIDE,MONENVCOB,SOLPEN,INDALT,TIPCREID,INCON '+
               'FROM (SELECT NUMOFI, X.ASOID, CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI, TIPDOCCOD, NUMDOCIDE, MONENVCOB, '+
               'SOLPEN, INDALT,TIPCREID, CASE WHEN LENGTH(TRIM(TRANSLATE(SUBSTR(CODPEN,1,1), '' +-.0123456789'', '' ''))) IS NULL '+
               '                               THEN ''N'' ELSE ''T'' END INCON '+
               'FROM COB_ONP_PRO_DET X, '+
               '(SELECT ASOID,MAX(''S'') TIPCREID FROM CRE301 X WHERE '+
               'EXISTS (SELECT ASOID FROM COB_ONP_PRO_DET WHERE X.ASOID=ASOID AND NUMOFI = '+QuotedStr(xNroOfi)+') '+
               'AND TIPCREID=''CE'' AND CREESTID=''02'' '+
               'GROUP BY ASOID) Y  WHERE NUMOFI = '+QuotedStr(xNroOfi)+'  AND X.ASOID=Y.ASOID(+) '+
               'ORDER BY ASOAPENOMDNI) WHERE INCON=''N'' ';
   Result:=False;
   If DM1.CountReg(xConsulta)>0 Then Result:=True;

end;

procedure TFDesONP.btnAnularClick(Sender: TObject);
var xConsulta,xActualiza:String;
     xRegistro: TBookmark;
     Boton:Integer;
begin
   If (DM1.cdsRegCob.FieldByName('ESTENVCOB').AsString)='13' Then Exit;

   If (DM1.cdsRegCob.FieldByName('RETARC').AsString)='S' Then
      Begin
          MessageDlg(' Existe Retorno, No Puede Anular Envío!!!! ', mtError,[mbOk],0);
          Exit;
      End;

   If (DM1.cdsRegCob.FieldByName('FLADES').AsString)='S' Then
      Begin
          MessageDlg(' Existe Descargo, No Puede Anular Envío!!!! ', mtError,[mbOk],0);
          Exit;
      End;


   Boton := Application.MessageBox('¿SEGURO DE ANULAR ESTE ENVÍO?', 'Sistema De Cobranzas', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
      Begin
         xRegistro := DM1.cdsRegCob.GetBookmark;

         // Quita proceso de cobranzas
         Screen.Cursor := crHourGlass;
         xConsulta:='SELECT C.ASOID,C.CREDID,C.CRECUOTA,SUM(NVL(CREMTOCOB,0)) PAGADO FROM APO201 A,CRE301 B,CRE302 C WHERE A.CODPENSION IS NOT NULL '+
                    'AND A.CODLEYPEN IN (''01'', ''20'') AND A.ASOID = B.ASOID AND B.CREESTID = ''02'' AND B.ASOID = C.ASOID '+
                    'AND B.CREDID = C.CREDID AND C.CREESTID=''14'' AND ((TO_CHAR(C.CREFVEN, ''YYYYMM'') <= '+QuotedStr(DM1.StrZero(dbsAnoIni.Text,4) + DM1.StrZero(dbsMesIni.Text,2))+') OR  '+
                    '(C.CREFVEN <> C.CREFVENINI))  GROUP BY C.ASOID, C.CREDID,C.CRECUOTA ';
         DM1.cdsBancoEgr.Close;
         DM1.cdsBancoEgr.DataRequest(xConsulta);
         DM1.cdsBancoEgr.Open;
         DM1.cdsBancoEgr.First;
         While Not DM1.cdsBancoEgr.Eof Do
         Begin
             If DM1.cdsBancoEgr.FieldByName('PAGADO').AsCurrency > 0 Then
                xActualiza:=' UPDATE CRE302 SET CREESTID=''27'',CREESTADO=''PARCIAL'' WHERE ASOID='+QuotedStr(DM1.cdsBancoEgr.FieldByName('ASOID').AsString)+' AND CREDID='+QuotedStr(DM1.cdsBancoEgr.FieldByName('CREDID').AsString)+' AND CRECUOTA='+QuotedStr(DM1.cdsBancoEgr.FieldByName('CRECUOTA').AsString)+' AND CREESTID=''14'' '
             Else
                xActualiza:=' UPDATE CRE302 SET CREESTID=''02'',CREESTADO=''POR COBRAR'' WHERE ASOID='+QuotedStr(DM1.cdsBancoEgr.FieldByName('ASOID').AsString)+' AND CREDID='+QuotedStr(DM1.cdsBancoEgr.FieldByName('CREDID').AsString)+' AND CRECUOTA='+QuotedStr(DM1.cdsBancoEgr.FieldByName('CRECUOTA').AsString)+' AND CREESTID=''14'' ';
                
             DM1.DCOM1.AppServer.EjecutaSQL(xActualiza);
             DM1.cdsBancoEgr.Next;
         End;
         DM1.cdsBancoEgr.Close;

         xConsulta:='DELETE FROM COB_ONP_PRO_DET WHERE NUMOFI='+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xConsulta);
         xConsulta:='UPDATE COB_ONP_PRO_CAB SET ESTENVCOB=''13'' WHERE NUMOFI='+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xConsulta);
         MessageDlg(' Envío fue Anulado!!!! ', mtInformation,[mbOk],0);
         actualizacabecera;
         Screen.Cursor := crDefault;
         DM1.cdsRegCob.GotoBookmark(xRegistro);
      End;
end;

procedure TFDesONP.DBGCabeceraONPDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   If DM1.cdsRegCob.FieldByName('ESTENVCOB').AsString='13' Then
     Begin
        DBGCabeceraONP.Canvas.Font.Color := clRed;
        DBGCabeceraONP.DefaultDrawDataCell(rect, Field, State);
     End;
end;
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP

// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
procedure TFDesONP.btnCronoCerradoClick(Sender: TObject);
var
  xSQL,numofi,percob,numope,fecope:String;
begin
    numofi:=DM1.cdsRegCob.FieldByName('NUMOFI').AsString;
    percob:=DM1.cdsRegCob.FieldByName('PERCOB').AsString;

    xSQL:='SELECT NROOPE,FOPERAC FROM COB_ONP_RET_CAB WHERE '
        +' NUMOFI='+QuotedStr(numofi)
        +' AND PERCOB='+QuotedStr(percob);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    numope:=DM1.cdsQry.FieldByName('NROOPE').AsString;
    fecope:=DM1.cdsQry.FieldByName('FOPERAC').AsString;
// Inicio: HPC_201820_COB
// Se adiciona el estado de desaprobado
    xSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM,FEC_OPERACION,NRO_OPERACION,IMPORTE,FREG,'
        +'(CASE WHEN NVL(FLA_APROBADO,''X'')=''N'' THEN ''DESAPROBADO'' ELSE (SELECT ESTDES FROM CRE113 WHERE ESTID=FLGEST) END) ESTADO '
        +' FROM COB_DES_CRO_CERRADO_DET WHERE NRO_OPERACION='+QuotedStr(numope)
        +' AND FEC_OPERACION= '+QuotedStr(fecope);
//Fina:HPC_201820_COB
    DM1.cdsTDoc.Close;
    DM1.cdsTDoc.DataRequest(xSQL);
    DM1.cdsTDoc.Open;
    If DM1.cdsTDoc.RecordCount >0 Then
    Begin
        Try
          FCronoCerradoONP := TFCronoCerradoONP.create(Self);
          FCronoCerradoONP.ShowModal;
       Finally
          FCronoCerradoONP.Free;
       End;
    End
    Else
    Begin
       MessageDlg(' No Existe Información para el Oficio seleccionado! ', mtInformation,[mbOk],0);
    End;
end;
// Fin HPC_201806_COB 
End.






