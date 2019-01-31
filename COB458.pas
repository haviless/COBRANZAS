// Unidad               : COB458
// Formulario           : FAplCuotas
// Fecha de Creación    : 08/03/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Realiza la aplicación de los montos descontados por la ONP hacia el sistema de cobranzas
// HPC_201303_COB       : 13/03/2013 - Creación de la opción.
// SPP_201305_COB       : Se realiza el pase a producción a partir del HPC_201303_COB.
// HPC_201306_COB       : 02/05/2013 - Se cambia forma de pago de 42 a 43
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201310_COB       : 16/09/2013 - Grabar Banco y Cuenta Corriente en Aplicacion
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201402_COB       : Grabar Excesos en forma automatica			
// SPP_201402_COB       : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
// HPC_201520_COB       : Se adiciona Aplicación al FSC
// HPC_201601_COB       : Se adiciona en el procedimiento de Aplicación del FSC el código de banco y la cuenta bancaria y se adiciona un filtro mas
// HPC_201806_COB       : Exceso en Cronogramas Cerrados (ONP, BANCO)
unit COB458;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, wwdblook, Wwdbdlg;

type
  TFAplCuotas = class(TForm)
    btnCerrar: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtNumOpe: TEdit;
    dbdFecOpe: TwwDBDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    btnprocesar: TBitBtn;
    Label5: TLabel;
    edtCreObs: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    dblcdBancoId: TwwDBLookupComboDlg;
    edtBancoDes: TEdit;
    Label8: TLabel;
    dblcdccbcoid: TwwDBLookupComboDlg;
    edtccbcoid: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    procedure btnCerrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcdBancoIdExit(Sender: TObject);
    procedure dblcdccbcoidExit(Sender: TObject);
    procedure btnprocesarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAplCuotas: TFAplCuotas;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFAplCuotas.btnCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TFAplCuotas.FormActivate(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT BANCOID, BANCONOM FROM TGE105 WHERE BANCOID IN (''03'',''04'',''05'')';
   DM1.cdsBancos.Close;
   DM1.cdsBancos.DataRequest(xSql);
   DM1.cdsBancos.Open;
   dblcdBancoId.Selected.Clear;
   dblcdBancoId.Selected.Add('BANCOID'#9'2'#9'Código'#9'F');
   dblcdBancoId.Selected.Add('BANCONOM'#9'25'#9'Descripción'#9'F');
end;

procedure TFAplCuotas.dblcdBancoIdExit(Sender: TObject);
Var xSql:String;
begin
  edtBancoDes.Text := DM1.cdsBancos.FieldByName('BANCONOM').AsString;
  xSql := 'SELECT CCBCOID, CCBCODES FROM TGE106 WHERE CIAID = ''02'' AND BANCOID = '+QuotedStr(DM1.cdsBancos.FieldByName('BANCOID').AsString)+' AND TMONID = ''N''';
  DM1.cdsCtasBco.Close;
  DM1.cdsCtasBco.DataRequest(xSql);
  DM1.cdsCtasBco.Open;
  dblcdccbcoid.Selected.Clear;
  dblcdccbcoid.Selected.Add('CCBCOID'#9'40'#9'Código'#9'F');
  dblcdccbcoid.Selected.Add('CCBCODES'#9'40'#9'Descripción'#9'F');
end;

procedure TFAplCuotas.dblcdccbcoidExit(Sender: TObject);
begin
   edtccbcoid.Text := DM1.cdsCtasBco.FieldByName('CCBCODES').AsString;
end;

// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP

procedure TFAplCuotas.btnprocesarClick(Sender: TObject);
Var xSql, xPer, xPerAnt:String;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    xCanDes, xMondes,xCanExc, xMonExc:Double;
// Fin HPC_201806_COB 
    // Grabar Excesos en forma automatica
    nTotAso, nExceso : Double;
    vpCredid, vpCrecuota, vpInteres: String;
    // Grabar Excesos en forma automatica
    //Inicio HPC_201520_COB
     VFSC_FLG_CERRADO : sTRING;
    //Final HPC_201520_COB
begin
  If Trim(edtNumOpe.Text) = '' Then
  Begin
    MessageDlg('Ingrese número de operación', mtInformation, [mbOk], 0);
    edtNumOpe.SetFocus;
    Exit;
  End;
  If Trim(dblcdBancoId.Text) = '' Then
  Begin
    MessageDlg('Seleccione banco de deposito de la cobranza', mtInformation, [mbOk], 0);
    dblcdBancoId.SetFocus;
    Exit;
  End;
  If Trim(dblcdccbcoid.Text) = '' Then
  Begin
    MessageDlg('Seleccione cuenta del banco de deposito de la cobranza', mtInformation, [mbOk], 0);
    dblcdccbcoid.SetFocus;
    Exit;
  End;
  If Trim(dbdFecOpe.Text) = '' Then
  Begin
    MessageDlg('Ingrese fecha de operación', mtInformation, [mbOk], 0);
    dbdFecOpe.SetFocus;
    Exit;
  End;
  If Trim(edtCreObs.Text) = '' Then
  Begin
    MessageDlg('Ingrese Observación', mtInformation, [mbOk], 0);
    edtCreObs.SetFocus;
    Exit;
  End;
  If MessageDlg('Se va a proceder ha actualizar las cuotas de créditos. ¿Seguro de actualizar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    Screen.Cursor := crHourGlass;
    xSql := 'SELECT TO_CHAR(TO_DATE('+QuotedStr(dbdFecOpe.Text)+'),''YYYYMM'') PERIODO, TO_CHAR(ADD_MONTHS(TO_DATE('+QuotedStr(dbdFecOpe.Text)+'),-1),''YYYYMM'') PERIODO_ANTES FROM DUAL';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    xPer    := DM1.cdsQry.FieldByName('PERIODO').AsString;
    xPerAnt := DM1.cdsQry.FieldByName('PERIODO_ANTES').AsString;
    DM1.cdsDetRegCob.First;
    xCanDes := 0;
    xMondes := 0;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    xCanExc := 0;
    xMonExc := 0;
// Fin HPC_201806_COB 
    While Not DM1.cdsDetRegCob.Eof Do
    Begin
      // Grabar Excesos en forma automatica
      nTotAso:=0;
      // Grabar Excesos en forma automatica
      xSql := 'BEGIN DB2ADMIN.SP_COB_POLITICA_AMORTIZACION('+QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString)+', NULL, ''1'', ''1'' ,'+DM1.cdsDetRegCob.FieldByName('MONDES').AsString
      +','+QuotedStr(xPer)+', '+QuotedStr(xPerAnt)+', NULL); END;';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'SELECT  '+
	          'REF,POS,INTERES,ASOID,ASOCODMOD,FLECHA,ASOAPENOM,ASOCODAUX,TIPCREDES, '+
              'CREAMORT,CREINTERES,CREFLAT,AMORTIZACION,CREMTOFLAT,CREMTO,CREDID, '+
              'CREDITO,CUOTA,CREANO,CREMES,FVENCIMIENTO,TIPCREID,FORPAGOID,FORPAGOABR, '+
              'CREESTID,CREESTADO,PERCOB,CREFOTORG,SALDO,CINTERES,INTERESCRE310,MODO, '+
              'ACUMULADO,PAGO,MONCOBDESGRAV,MONPACDESGRAV,XID,PROCESADO,CRECAPITAL, '+
              'CREMTOINT,CREMTOFLA,CREMTODESG,CREMTOEXC,TIPCREPAR '+	  
	          'FROM COB_POLITICA_CUO_GTT WHERE NVL(PAGO,0) > 0';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      While Not DM1.cdsQry.Eof Do
      Begin
         xSql := 'BEGIN DB2ADMIN.SP_COB_PAGO_CUOTA_V2('+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)+','
         +QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString)+','
         +QuotedStr(DM1.cdsQry.FieldByName('CUOTA').AsString)+','
         +QuotedStr(DM1.cdsQry.FieldByName('CINTERES').AsString)+','
         +DM1.cdsQry.FieldByName('PAGO').AsString+','
         +QuotedStr(edtNumOpe.Text)+','
         +QuotedStr(dbdFecOpe.Text)+','
// Grabar Banco y Cuenta Corriente en Aplicacion
         +QuotedStr(dbdFecOpe.Text)+', '
         +QuotedStr(dblcdBancoId.Text)+', '+QuotedStr(dblcdccbcoid.Text)+', ''43'','
// Grabar Banco y Cuenta Corriente en Aplicacion
         +QuotedStr(edtCreObs.Text)+', ''ONP'', NULL, NULL, NULL,'
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
         +QuotedStr(DM1.wUsuario)+', NULL , NULL, ''S'', ''N''); END;';
// Fin HPC_201806_COB
      // Grabar Excesos en forma automatica
         nTotAso := nTotAso + strtofloat(DM1.cdsQry.FieldByName('PAGO').AsString);
      // Grabar Excesos en forma automatica

         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         DM1.cdsQry.Next;
      End;

      // Grabar Excesos en forma automatica
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
//   if nTotAso<DM1.cdsDetRegCob.FieldByName('MONDES').AsFloat then
     if dm1.FRound(nTotAso,15,2)<dm1.FRound(DM1.cdsDetRegCob.FieldByName('MONDES').AsFloat,15,2) then
// Fin HPC_201806_COB     
      begin
         nExceso := DM1.cdsDetRegCob.FieldByName('MONDES').AsFloat - nTotAso;

   //Inicio HPC_201520_COB
     //Verifico si tiene FSC
       XSQL:='SELECT NVL(MAX(FSC_FLG_CERRADO),''N'') FSC_FLG_CERRADO '+
             'FROM   COB_FSC_DEUDA_FSC_CAB '+
             'WHERE  ASOID = ''' + DM1.cdsDetRegCob.FieldByName('ASOID').AsString +''''+
//Inicio HPC_201601_COB
//           ' AND FSC_FLG_CERRADO IS NULL '+
             ' AND FSC_FLG_CERRADO IS NULL AND ID_EST_FSC NOT IN (''13'',''04'') '+
//Final  HPC_201601_COB
             'GROUP  BY ASOID ';
       DM1.cdsDFam.Close;
       DM1.cdsDFam.DataRequest(XSQL);
       DM1.cdsDFam.Open;
       If Dm1.cdsDFam.RecordCount > 0 Then
            VFSC_FLG_CERRADO := DM1.cdsDFam.FieldByname('FSC_FLG_CERRADO').AsString
       Else VFSC_FLG_CERRADO := 'S';

       If VFSC_FLG_CERRADO = 'N' Then
       Begin
          //Devoluciòn al FSC
          XSQL:='Begin  SP_DEV_AL_FSC('+quotedstr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString) + ', '
                                       + CurrToStr(nExceso) + ', '
                                       + quotedstr(DM1.wUsuario)+','
//Inicio HPC_201601_COB
//                                     + QuotedStr(dbdFecOpe.Text)+',null,null,'
                                       + QuotedStr(dbdFecOpe.Text)+','+Trim(dblcdBancoId.Text)+','+Trim(dblcdccbcoid.Text)+','
//Final HPC_201601_COB
                                       + QuotedStr(xPer)+','
                                       + QuotedStr(edtNumOpe.Text)+','
                                       + QuotedStr(dbdFecOpe.Text)+','
                                       + QuotedStr('43')+',null,null,null,'
                                       + QuotedStr(edtCreObs.Text)+'); '
               +'End;';
           DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       End
       Else
       Begin
       //Fin HPC_201520_COB
         //Si no encuentra  el exceso debe ir a la ultima cuota cancelada
         XSQL := 'SELECT ASOID,CREDID,CRECUOTA '
              + '  FROM (SELECT ASOID,CREDID,CRECUOTA,CREFPAG,ROWNUM '
              + '        FROM CRE302 '
              + '       WHERE ASOID=''' + DM1.cdsDetRegCob.FieldByName('ASOID').AsString + ''' '
              + '         AND CREFPAG IS NOT NULL AND CREESTID NOT IN (''19'',''13'',''04'') '
              + '       ORDER BY CREFPAG DESC,CRECUOTA DESC ) '
              + ' WHERE ROWNUM=1';
         DM1.cdsDFam.Close;
         DM1.cdsDFam.DataRequest(XSQL);
         DM1.cdsDFam.Open;
         vpCredid := Dm1.cdsDFam.FieldByname('Credid').AsString;
         vpCrecuota := Dm1.cdsDFam.FieldByname('Crecuota').AsString;
         vpInteres := '';

         //CONSISTENCIA QUE EXISTA UN REGISTRO PARA DESCARGAR EXCESO
         if Length(Trim(vpCrecuota))>0 Then
         begin
// Inicio HPC_201806_COB
// Exceso en Cronogramas Cerrados (ONP, BANCO)
            {
            xSQL:='BEGIN '
                    + 'SP_COB_PAGO_CUOTA_V2('
                          + quotedstr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString) + ', '
                          + quotedstr(vpCredid) + ', '
                          + quotedstr(vpCrecuota) + ', '
                          + quotedstr(vpInteres) + ', '
                          + CurrToStr(nExceso) + ', '
                          + QuotedStr(edtNumOpe.Text)+', '
                          + QuotedStr(dbdFecOpe.Text)+', '
                          + QuotedStr(dbdFecOpe.Text)+', '
                          + QuotedStr(dblcdBancoId.Text)+', '+QuotedStr(dblcdccbcoid.Text)+', ''43'', '
                          + QuotedStr(edtCreObs.Text)+', ''ONP'', NULL, NULL, NULL, '
                          + QuotedStr(DM1.wUsuario)+', NULL ); '
                    +'END; ';
            }
            xSQL:='BEGIN '
                    +' DB2ADMIN.SP_COB_PAGO_EXCESOS('
                    + quotedstr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString) + ', '
                    + QuotedStr(DM1.wUsuario) + ', '
                    + QuotedStr('43') + ', '
                    + QuotedStr(edtNumOpe.Text)+', '
                    + QuotedStr(dbdFecOpe.Text)+', '
                    + QuotedStr(dblcdBancoId.Text)+', '
                    + QuotedStr(dblcdccbcoid.Text)+', '
                    + CurrToStr(nExceso) + ', NULL, NULL, NULL); '
                  +'END; ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            xCanExc := xCanExc + 1;
            xMonExc := xMonExc + nExceso;
// Fin HPC_201806_COB 
         end;
       //Inicio HPC_201520_COB
       End;
       //Fin HPC_201520_COB
      end;
      // Grabar Excesos en forma automatica


      // Marcando Detalle de retorno con flag de descargado
      xSql := 'UPDATE COB_ONP_RET_DET SET FLADES = ''S'' WHERE ASOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString)+' AND PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      DM1.cdsDetRegCob.Edit;
      DM1.cdsDetRegCob.FieldByName('FLADES').AsString := 'S';
      xCanDes := xCanDes + 1;
      xMondes := xMondes + DM1.cdsDetRegCob.FieldByName('MONDES').AsFloat;
      // Inicio HPC_201806_COB
      // Exceso en Cronogramas Cerrados (ONP, BANCO)
      vpCrecuota := '';
      // Final HPC_201806_COB
      DM1.cdsDetRegCob.Next;
    End;
    // Actualizando cabecera de archivo retorno
    xSql := 'UPDATE COB_ONP_RET_CAB SET FOPERAC = '+QuotedStr(dbdFecOpe.Text)+', NROOPE = '+QuotedStr(edtNumOpe.Text)+', USUDES = '+QuotedStr(DM1.wUsuario)
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    +', CANREGEXC = '+FloatToStr(xCanExc)+', MONTOTEXC = '+FloatToStr(xMonExc)
// Fin HPC_201806_COB 
    +', FECHORDES = SYSDATE, BANCOID = '+QuotedStr(dblcdBancoId.Text)+', CCBCOID = '+QuotedStr(dblcdccbcoid.Text)+', CREOBS = '+QuotedStr(edtCreObs.Text)
    +', CANREGDES = '+FloatToStr(xCanDes)+', MONTOTDES = '+FloatToStr(xMondes)+' WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)
    +' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    // Actualizando cabecera de archivo de envio
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    xSql := 'UPDATE COB_ONP_PRO_CAB SET '
            +' CANREGEXC = '+FloatToStr(xCanExc)+', MONTOTEXC = '+FloatToStr(xMonExc)
            +', CANREGDES = '+FloatToStr(xCanDes)+', MONTOTDES = '+FloatToStr(xMondes)+', FLADES = ''S'' WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
// Fin HPC_201806_COB 
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    DM1.cdsRegCob.Edit;
    DM1.cdsRegCob.FieldByName('CANREGDES').AsFloat := xCanDes;
    DM1.cdsRegCob.FieldByName('MONTOTDES').AsFloat := xMondes;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    DM1.cdsRegCob.FieldByName('CANREGEXC').AsFloat := xCanExc;
    DM1.cdsRegCob.FieldByName('MONTOTEXC').AsFloat := xMonExc;
// Fin HPC_201806_COB 
    DM1.cdsRegCob.FieldByName('FLADES').AsString   := 'S';
    // Modificación en segunda Iteracción
    // Desmarcando cuotas en proceso de cobranza
    xSql := 'SELECT ASOID FROM COB_ONP_PRO_DET WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    While Not DM1.cdsQry.Eof Do
    Begin
       xSql := 'SELECT CREESTID, CREMTOCOB  FROM CRE302 WHERE ASOID = '+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)+'AND PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND CREESTID = ''14''';
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest(xSql);
       DM1.cdsQry2.Open;
       If DM1.cdsQry2.FieldByName('CREMTOCOB').AsFloat > 0 Then
          xSql := 'UPDATE CRE302 SET CREESTID = ''27'', CREESTADO = ''PARCIAL'', PERCOB = NULL WHERE ASOID = '+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)+' AND PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND CREESTID = ''14'''
       Else
          xSql := 'UPDATE CRE302 SET CREESTID = ''11'', CREESTADO = ''NO PAGADO'', PERCOB = NULL WHERE ASOID = '+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)+' AND PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND CREESTID = ''14''';
       DM1.DCOM1.AppServer.EjecutaSQL(xSql);
       DM1.cdsQry.Next;
    End;
    // Modificación en segunda Iteracción
    xSql:='UPDATE COB_ONP_RET_DET X SET FLADES=NULL '+
          'WHERE PERCOB='+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' '+
          'AND NUMOFI='+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+' AND NOT EXISTS '+
          '(SELECT ASOID FROM CRE310 WHERE X.ASOID=ASOID '+
          'AND CREFPAG='+QuotedStr(Trim(dbdFecOpe.Text))+' AND NROOPE='+QuotedStr(Trim(edtNumOpe.Text))+'  '+
          'AND FORPAGID=''43'' AND CREESTID NOT IN (''04'',''13'',''99'')) ';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);


    Screen.Cursor := crDefault;
    MessageDlg('Proceso de actualización de cuotas ha concluido.', mtInformation, [mbOk], 0);
    btnCerrar.OnClick(btnCerrar);
  End;
end;

// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP



procedure TFAplCuotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

end.
