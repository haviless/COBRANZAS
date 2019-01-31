Unit COB988;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB988
// Formulario                    : fGenArcEnv
// Fecha de Creación             :
// Autor                         : Área de Desarrollo DM
// Objetivo                      : Módulo de Datos

// Actualizaciones:

// HPP_200905_COB(F2) Genera información DBF de LIBERTAD
// HPP_200931_COB por IREVILLA   Memorándum 799-2009-DM-COB - SAR-2009-0713 - DAD-IR-2009-0153
// HPC_201004_COB POR RMEDINA MEMO Nº 069-2010-DM-COB -- SAR: 2010-0068 -- 22/01/2010
            // Se añade un digito "0" al campo código
            // Tambien se modifica la longitud del campo código en la tabla DBF LIBERTAD.DBF
// HPP_201103_COB en caso de seleccionar la opcion 5 manda a ejecutar el procedimiento GENERAUCA
            // En el objeto lbtipos se añade la opción UCAYALI.DBF
            // SE AÑADE VALIDACION. SE CONTROLA QUE EXISTA EN ARCHIVO UCAYALI.DBF
// HPP_201105_COB
            // marca la cabera, la cual indicara al procedimiento de marca de proceso de cobranza, que registros seran afectados
// HPP_201112_COB
            // generaSIGA --> se corrige valor de campo MONTO, el campo MONCUOENV ya viene incluido con MONCUOENVFSC (NVL(MONCUOENV,0) + NVL(MONCUOENVFSC,0) MONCUOENV)
// HPP_201120_COB POR: IREVILLA FECHA : 15/07/2011 Opción HUANUCO.DBF

// Cambio general del Supervisor de Calidad:
// Se ha incluido dentro de la ruta de los archivos DBF, la carpeta DBF_COBRANZAS
// dentro de esta carpeta se incluiran todos los archivos DBF que se utilizan
// Fin del cambio realizado

// HPC_201209COB 14/03/2012. Se añade plantilla LORETO.DBF, válidos para Loreto y Amazonas
// DPP_201206_COB          : Se realiza el pase a producción, a apartir del pase HPC_201209_COB

// HPC_201402_COB          : Modificación de plantilla SUP y cambio de Socket
// SPP_201402_COB          : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201408_COB : Se Crea procedimiento para generar achivo dbf para envio a cobranza de la Ugel Coronel Portillo.  
// SPP_201406_COB : Se realiza el pase a producción a parti del HPC_201408_COB
//HPC_201509_COB : Se elimina la lineas donde se actualiza los campo eliminados de la plantilla

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FileCtrl, StdCtrls, Mask, ComCtrls, ShellCtrls, Buttons, DBCtrls,
   ExtCtrls, DBTables, DB;

Type
   Tfgenarcenv = Class(TForm)
      gbtiparc: TGroupBox;
      menomarc: TMaskEdit;
      stvarc: TShellTreeView;
      btngenera: TBitBtn;
      btncerrar: TBitBtn;
      lbtipos: TListBox;
      Memo1: TMemo;
      TAB: TTable;
      Label1: TLabel;
      Panel1: TPanel;
      medescon: TMaskEdit;
      Label2: TLabel;
      Panel2: TPanel;
      medesanomespro: TMaskEdit;
      Label3: TLabel;
      Panel3: TPanel;
      mecarenvarc: TMaskEdit;
      rgtipaso: TRadioGroup;
      rgtiparc: TRadioGroup;
      gbterceros: TGroupBox;
      Label4: TLabel;
      Panel4: TPanel;
      mecodemp: TMaskEdit;
      // Inicio: SPP_201402_COB                 :  Cambio a Socket
      pb1: TProgressBar;
      // Fin: SPP_201402_COB                 :  Cambio a Socket
      Procedure btngeneraClick(Sender: TObject);
      Procedure btncerrarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure rgtipasoClick(Sender: TObject);
      Procedure rgtiparcClick(Sender: TObject);
      Procedure lbtiposClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
   Private
    { Private declarations }
      Function espacios(texto: String; largo: Integer): String;
      Procedure generaSIGA(nomarc: String; tipcob: String);
      Procedure generaSUP(nomarc: String; tipcob: String);
      Procedure generaRIMAC(nomarc: String; tipcob: String);
      Procedure generaTARAPOTO(nomarc: String; tipcob: String);
      Procedure generaLIB(nomarc: String; tipcob: String);
      Procedure generaTERCEROS(nomarc: String; tipcob: String);
      Procedure generaUCA(nomarc: String; tipcob: String);
      Procedure generaHUANUCO(xsnomarc: String; xstipcob: String);
// Inicio: DPP_201206_COB
      Procedure generaLORETO(xsnomarc: String; xstipcob: String);
// Fin: DPP_201206_COB
      Procedure generaCORONELPORTILLO(xsnomarc: String; xstipcob: String); // SPP_201406_COB
      Procedure actualiza;
   Public
      xcoddep: String;
    { Public declarations }
   End;
Var
   fgenarcenv: Tfgenarcenv;

Implementation

Uses COBDM1,
   COB992;

{$R *.dfm}

// Inicio: SPP_201402_COB                :  Cambio a Socket
function MessageBoxTimeOut(hWnd: HWND; lpText: PChar; lpCaption: PChar; uType: UINT; wLanguageId: WORD; dwMilliseconds: DWORD): Integer; stdcall; external user32 name 'MessageBoxTimeoutA';
// Fin: SPP_201402_COB                   :  Cambio a Socket


Procedure Tfgenarcenv.btngeneraClick(Sender: TObject);
Var
   xtiparc, xtipcob, cadena, fichero, xSql, linea, xasotipid, xruta: String;
   f: textfile;
   cantidad, total: Double;
   montoenv: Double;
   xtam: Integer;
Begin
   xtipcob := IntToStr(rgtiparc.ItemIndex);
   If lbtipos.ItemIndex < 0 Then
   Begin
      MessageDlg('Seleccione el tipo de archivo a generar', mtInformation, [mbOk], 0);
      lbtipos.SetFocus;
      Exit;
   End;
   If Trim(menomarc.Text) = '' Then
   Begin
      MessageDlg('Ingrese el nombre del archivo a crear', mtInformation, [mbOk], 0);
      menomarc.SetFocus;
      Exit;
   End;
   xruta := stvarc.Path;

   xtiparc := '.DBF';
   If Copy(Trim(xruta), Length(Trim(xruta)), 1) = '\' Then
      xruta := xruta + menomarc.Text + xtiparc
   Else
      xruta := xruta + '\' + menomarc.Text + xtiparc;
   fichero := xruta;

  // Genera información DBF de SIGA
   If lbtipos.ItemIndex = 0 Then
   Begin
      xcoddep := DM1.cdsGrupos.FieldByName('CODDEP').AsString;
      If Trim(xcoddep) = '' Then
      Begin
         MessageDlg('No existe código de dependencia. Por favor corrija', mtError, [mbOk], 0);
         Exit;
      End;
      generaSIGA(fichero, xtipcob);
   End;

  // Genera información DBF SUP
   If lbtipos.ItemIndex = 1 Then
   Begin
      generaSUP(fichero, xtipcob);
   End;

  // Genera información RIMAC
   If lbtipos.ItemIndex = 2 Then
   Begin
      generaRIMAC(fichero, xtipcob);
   End;

  // Genera información TARAPOTO
   If lbtipos.ItemIndex = 3 Then
   Begin
      generaTARAPOTO(fichero, xtipcob);
   End;

// Genera información DBF de LIBERTAD
   If lbtipos.ItemIndex = 4 Then
   Begin
      generaLIB(fichero, xtipcob);
   End;

// Genera información DBF de UCAYALI
   If lbtipos.ItemIndex = 5 Then
   Begin
      generaUCA(fichero, xtipcob);
   End;

// Genera información para el archivo TERCEROS.DBF
   If lbtipos.ItemIndex = 6 Then
   Begin
      If Trim(mecodemp.Text) = '' Then
      Begin
         MessageDlg('No existe código de empresa. Por favor corrija', mtError, [mbOk], 0);
         Exit;
      End;
      generaTERCEROS(fichero, xtipcob);
   End;

// Genera información DBF de HUANUCO
   If lbtipos.ItemIndex = 7 Then
   Begin
      generaHUANUCO(fichero, xtipcob);
   End;

// Inicio: DPP_201206_COB
// Genera información DBF de LORETO (para Loreto y Amazonas)
   If lbtipos.ItemIndex = 8 Then
   Begin
      generaLORETO(fichero, xtipcob);
   End;
// Fin: DPP_201206_COB

// Inicio: SPP_201406_COB
   If lbtipos.ItemIndex = 9 Then
   Begin
      generaCORONELPORTILLO(fichero, xtipcob);
   End;
// Fin: SPP_201406_COB




   xSql := 'BEGIN '
      + '    UPDATE COB204 '
      + '       SET CHKGENDIS = ''S'', '
      + '           ESTADO = ''1'' '
      + '     WHERE IDECON = ' + QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
      + '       AND PERIODO = ' + QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
      + '       AND ASOTIPID = ' + QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString) + ';'
      + '    UPDATE COB_PRO_GEN_PLA_CON '
      + '       SET ESTADO = ''PROGRPROCOB'','
      + '           USUPROCOB = ' + QuotedStr(DM1.wUsuario) + ','
      + '           FECPROGPROCOB = SYSDATE'
      + '     WHERE IDECON= ' + QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
      + '       AND ANOPRO||MESPRO = ' + QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
      + '       AND ASOTIPID = ' + QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)
      + '       AND ESTADO = ''PROCE'';'
      + '     COMMIT;'
      + 'END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   DM1.cdsGrupos.Edit;
   DM1.cdsGrupos.FieldByName('CHKGENDIS').AsString := 'S';
   DM1.cdsGrupos.FieldByName('ESTADO').AsString := '1';
   MessageDlg('Archivo generado', mtConfirmation, [mbOk], 0);

// Inicio: SPP_201402_COB              :  Cambio a Socket
   pb1.Visible:=False;
// Fin: SPP_201402_COB                 :  Cambio a Socket

End;

Function Tfgenarcenv.espacios(texto: String; largo: Integer): String;
Var
   falta, i: Integer;
   s: String;
Begin
   s := '';
   falta := largo - length(trim(texto));
   For i := 1 To falta Do
      s := s + ' ';
   result := trim(texto) + s;
End;

Procedure Tfgenarcenv.btncerrarClick(Sender: TObject);
Begin
   fgenarcenv.Close;
End;

Procedure Tfgenarcenv.FormActivate(Sender: TObject);
Var
   xtipaso, xQry1, xSql: String;
Begin
   medescon.Text := DM1.cdsGrupos.FieldByName('DESCON').AsString;
   medesanomespro.Text := DM1.cdsGrupos.FieldByName('DESPER').AsString;
   rgtipaso.ItemIndex := fgeninfenv.rgtipaso.ItemIndex;
   rgtiparc.ItemIndex := fgeninfenv.rgtiparc.ItemIndex;
   btngenera.Enabled := False;
   actualiza;
End;

Procedure Tfgenarcenv.generaSIGA(nomarc, tipcob: String);
Var
   Productos: TTable;
   xSql, xQry1, xtipaso: String;
   xsitlaboral: Integer;
   xMinCuota, xMaxCuota: Integer;
   xTieneCuotas: boolean;
Begin
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\SIGA.DBF')), (PChar(nomarc)), False);
   Productos := TTable.Create(Nil);
   Productos.TableName := nomarc;
   Productos.TableType := ttFoxPro;
   Productos.Open;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      xSql := 'SELECT A.CREDID, MIN(CRECUOTA) MINCUOTA,  MAX(CRECUOTA) MAXCUOTA FROM CRE302 A,'
         + ' (SELECT A.ASOID, A.CREDID FROM CRE301 A WHERE A.ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString) + ' AND A.CREESTID = ''02'''
         + ' ORDER BY CREFOTORG ) B WHERE A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.CREESTID IN (''02'',''11'',''27'',''14'')'
         + ' GROUP BY A.CREDID';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If (DM1.cdsQry.RecordCount > 0) Then
      Begin
         xMinCuota := DM1.cdsQry.FieldByName('MINCUOTA').AsInteger;
         xMaxCuota := DM1.cdsQry.FieldByName('MAXCUOTA').AsInteger;
         xTieneCuotas := true;
      End
      Else
      Begin
         xMinCuota := 0;
         xMaxCuota := 0;
         xTieneCuotas := false;
      End;
      If DM1.cdsQry6.FieldByName('ASOTIPID').AsString = 'DO' Then
         xsitlaboral := 1
      Else
         xsitlaboral := 9;
      Productos.Insert;
      Productos.FieldByName('DEPE_ID').AsInteger := StrToInt(xcoddep);
      Productos.FieldByName('MES').AsInteger := DM1.cdsQry6.FieldByName('COBMES').AsInteger;
      Productos.FieldByName('ANNO').AsInteger := DM1.cdsQry6.FieldByName('COBANO').AsInteger;
      Productos.FieldByName('DNI').AsString := DM1.cdsQry6.FieldByName('ASODNI').AsString;
      Productos.FieldByName('SITLABORAL').AsInteger := xsitlaboral;
      Productos.FieldByName('APELLIDOS').AsString := Copy(Trim(DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString) + ' ' + Trim(DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString), 1, 35);
      Productos.FieldByName('NOMBRES').AsString := Copy(Trim(DM1.cdsQry6.FieldByName('ASONOMBRES').AsString), 1, 35);
      If tipcob = '0' Then
      Begin
         Productos.FieldByName('MONTO').AsFloat := DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat; // RMZ +DM1.cdsQry6.FieldByName('MONCUOENVFSC').AsFloat;
         Productos.FieldByName('NCUOTA').AsInteger := xMinCuota; //DM1.cdsQry.FieldByName('MINCUOTA').AsInteger; //HPP_201105_COB
         Productos.FieldByName('MAXCUOTA').AsInteger := xMaxCuota; //DM1.cdsQry.FieldByName('MAXCUOTA').AsInteger; //HPP_201105_COB
      End;
      If tipcob = '1' Then
      Begin
         Productos.FieldByName('MONTO').AsFloat := DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
         Productos.FieldByName('NCUOTA').AsInteger := DM1.cdsQry6.FieldByName('COBMES').AsInteger;
         Productos.FieldByName('MAXCUOTA').AsInteger := 12;
      End;
      If tipcob = '2' Then
      Begin
         If ((xTieneCuotas) And (DM1.cdsQry.FieldByName('MINCUOTA').AsInteger = 0)) Then
         Begin
            Productos.FieldByName('NCUOTA').AsInteger := DM1.cdsQry6.FieldByName('COBMES').AsInteger;
            Productos.FieldByName('MAXCUOTA').AsInteger := 12;
         End
         Else
         Begin
            Productos.FieldByName('NCUOTA').AsInteger := xMinCuota; //DM1.cdsQry.FieldByName('MINCUOTA').AsInteger;//HPP_201105_COB
            Productos.FieldByName('MAXCUOTA').AsInteger := xMaxCuota; //DM1.cdsQry.FieldByName('MAXCUOTA').AsInteger;//HPP_201105_COB
         End;
         Productos.FieldByName('MONTO').AsFloat := DM1.cdsQry6.FieldByName('MONTOTENV').AsFloat;
      End;
      Productos.Post;
      DM1.cdsQry6.Next;
   End;
   Productos.Close;
   Productos.Free;
End;

Procedure Tfgenarcenv.generaSUP(nomarc, tipcob: String);
Var
   Productos: TTable;
   xSql: String;
   xsitlaboral: String;
   xCreMtoOtor: Double;
   xCreNumCuo: Integer;
   xTieneCuotas: Boolean;
// Inicio: SPP_201402_COB   
   Importe, Entero, Decimal: String;
   xImporte: Currency;
// Fin: SPP_201402_COB  
Begin
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\SUP.DBF')), (PChar(nomarc)), False);
   Productos := TTable.Create(Nil);
   Productos.TableName := nomarc;
   Productos.TableType := ttFoxPro;
   Productos.Open;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      xSql := 'SELECT CRENUMCUO, CREMTOOTOR FROM CRE301 WHERE ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString) + ' AND CREESTID = ''02'' AND ROWNUM = 1 ORDER BY CREFOTORG';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;

// si tiene algun credito vigente, se envia como referencia el monto del credito y el numero de cuotas de este
// en caso de no tener creditos vigentes y si tiene fsc, entonces se envia como monto de la deuda del fsc
      If (DM1.cdsQry.RecordCount > 0) Then
      Begin
         xCreMtoOtor := DM1.cdsQry.FieldByName('CREMTOOTOR').AsFloat;
         xCreNumCuo := DM1.cdsQry.FieldByName('CRENUMCUO').AsInteger;
         xTieneCuotas := true;
      End
      Else
      Begin
         xSql := '  SELECT IMP_APL_FSC '
            + '    FROM COB_FSC_DEUDA_FSC_CAB '
            + '   WHERE ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)
            + '     AND ID_EST_FSC IN (''02'',''27'') '
            + '     AND NVL(AUTDESGES, ''N'') = ''S'' '
            + '     AND (NVL(IMP_APL_FSC, 0) - NVL(IMP_COB_FSC, 0)) > 0 '
            + '     AND ROWNUM = 1 ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;

         xCreMtoOtor := DM1.cdsQry.FieldByName('IMP_APL_FSC').AsFloat;
         xCreNumCuo := 0;
         xTieneCuotas := false;
      End;
      If DM1.cdsQry6.FieldByName('ASOTIPID').AsString = 'DO' Then
         xsitlaboral := 'A'
      Else
         xsitlaboral := 'C';

      // Inicio: SPP_201402_COB
      Productos.Insert;
      Productos.FieldByName('PERIODO').AsString := DM1.cdsGrupos.FieldByName('PERIODO').AsString;
      Productos.FieldByName('EMPRESA').AsString := '016';
      Productos.FieldByName('CODMOD').AsString := DM1.cdsQry6.FieldByName('ASOCODMOD').AsString;
      Productos.FieldByName('CARGO').AsString := DM1.cdsQry6.FieldByName('CARGO').AsString;
      Productos.FieldByName('CARBEN').AsString := '0000';
      Productos.FieldByName('T_PLANI').AsString := xsitlaboral;

      
      // Productos.FieldByName('CODDES').AsString := '006';
      If tipcob = '0' Then Productos.FieldByName('CODDES').AsString := '0418';
      If tipcob = '1' Then Productos.FieldByName('CODDES').AsString := '0006';
      

      If tipcob = '0' Then
      Begin
         xImporte := DM1.cdsQry6.FieldByName('MONCUOENV').AsCurrency;
         Importe := FormatFloat('######.#0', xImporte);
         Entero := Copy(DM1.StrZero(Importe, 9), 1, 6);
         Decimal := Copy(DM1.StrZero(Importe, 9), 8, 2);
         Productos.FieldByName('MTODES').AsString := Entero+Decimal;
      End;
      If tipcob = '1' Then
      Begin
         xImporte := DM1.cdsQry6.FieldByName('MONAPOENV').AsCurrency;
         Importe := FormatFloat('######.#0', xImporte);
         Entero := Copy(DM1.StrZero(Importe, 9), 1, 6);
         Decimal := Copy(DM1.StrZero(Importe, 9), 8, 2);
         Productos.FieldByName('MTODES').AsString := Entero+Decimal;
      End;
      Productos.FieldByName('PATERNO').AsString := DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString;
      Productos.FieldByName('MATERNO').AsString := DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString;
      Productos.FieldByName('NOMBRES').AsString := DM1.cdsQry6.FieldByName('ASONOMBRES').AsString;




      If rgtiparc.ItemIndex=1 Then
         Productos.FieldByName('FINICRE').AsString := DM1.cdsQry6.FieldByName('FECAUTDES').AsString
      Else
         Productos.FieldByName('FINICRE').AsString := DM1.cdsQry6.FieldByName('FECOTOCRE').AsString;

      // Fin: SPP_201402_COB

      If tipcob = '0' Then
      Begin
         Productos.FieldByName('MONTO').AsFloat := xCreMtoOtor;
         Productos.FieldByName('PLAZO').AsInteger := xCreNumCuo;
         Productos.FieldByName('CUOTA').AsFloat := DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat; // RMZ +DM1.cdsQry6.FieldByName('MONCUOENVFSC').AsFloat;
      End;
      If tipcob = '1' Then
      Begin
         Productos.FieldByName('MONTO').AsFloat := 0;
         Productos.FieldByName('PLAZO').AsInteger := 0;
         Productos.FieldByName('CUOTA').AsFloat := DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
      End;
      If tipcob = '2' Then
      Begin
         Productos.FieldByName('MONTO').AsFloat := xCreMtoOtor; //DM1.cdsQry.FieldByName('CREMTOOTOR').AsFloat;//HPP_201105_COB
         Productos.FieldByName('PLAZO').AsInteger := xCreNumCuo; //DM1.cdsQry.FieldByName('CRENUMCUO').AsInteger;//HPP_201105_COB
         Productos.FieldByName('CUOTA').AsFloat := DM1.cdsQry6.FieldByName('MONTOTENV').AsFloat;
      End;
      //Inicio HPC_201509_COB
      //Productos.FieldByName('FECHA').AsString := '28/' + DM1.cdsQry6.FieldByName('COBMES').Asstring + '/' + DM1.cdsQry6.FieldByName('COBANO').Asstring;
      //Productos.FieldByName('DNI').AsString := DM1.cdsQry6.FieldByName('ASODNI').AsString;
      //Final HPC_201509_COB
      Productos.Post;
      DM1.cdsQry6.Next;
   End;
   Productos.Close;
   Productos.Free;
End;

Procedure Tfgenarcenv.actualiza;
Begin
   If DM1.cdsGrupos.FieldByName('ASOTIPID').AsString = 'CE' Then
   Begin
      rgtipaso.ItemIndex := 1;
      rgtipaso.Enabled := False;
      rgtiparc.ItemIndex := 0;
      rgtiparc.Enabled := False;
   End;
   If DM1.cdsGrupos.FieldByName('ASOTIPID').AsString = 'DO' Then
   Begin
      rgtipaso.ItemIndex := 0;
      rgtipaso.Enabled := False;
   End;
   mecarenvarc.Text := 'ARCHIVO DE ' + UpperCase(rgtiparc.Items.Strings[rgtiparc.ItemIndex]) + ' - ' +
      UpperCase(rgtipaso.Items.Strings[rgtipaso.ItemIndex]);
End;

Procedure Tfgenarcenv.rgtipasoClick(Sender: TObject);
Begin
   actualiza;
End;

Procedure Tfgenarcenv.rgtiparcClick(Sender: TObject);
Begin
   actualiza;
End;

Procedure Tfgenarcenv.generaRIMAC(nomarc, tipcob: String);
Var
   Productos: TTable;
   xsql: String;
   xrestante: Double;
   xCreNumCuo, xCreCuota: Double;
Begin
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\RIMAC.DBF')), (PChar(nomarc)), False);
   Productos := TTable.Create(Nil);
   Productos.TableName := nomarc;
   Productos.TableType := ttFoxPro;
   Productos.Open;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      xSql := 'SELECT ASOID, CREDID, CRENUMCUO, CREMTOOTOR FROM CRE301 WHERE ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString) + ' AND CREESTID = ''02'' AND ROWNUM = 1 ORDER BY CREFOTORG';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;

// si tiene algun credito vigente, se envia como referencia el monto del credito y el numero de cuotas de este
// en caso de no tener creditos vigentes y si tiene fsc, entonces se envia como monto de la deuda del fsc
      If (DM1.cdsQry.RecordCount > 0) Then
      Begin
         xSql := 'SELECT MIN(CRECUOTA) CRECUOTA FROM CRE302 WHERE ASOID = ' + QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)
            + ' AND CREDID = ' + QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString) + ' AND CREESTID IN (''02'',''11'',''14'',''27'')';
         DM1.cdsQry2.Close;
         DM1.cdsQry2.DataRequest(xSql);
         DM1.cdsQry2.Open;
         xrestante := DM1.cdsQry.FieldByName('CRENUMCUO').AsFloat - DM1.cdsQry2.FieldByName('CRECUOTA').AsFloat;
         xCreNumCuo := DM1.cdsQry.FieldByName('CRENUMCUO').AsFloat;
         xCreCuota := DM1.cdsQry2.FieldByName('CRECUOTA').AsFloat;
      End
      Else
      Begin
         xCreNumCuo := 0;
         xCreCuota := 0;
         xrestante := 0;
      End;
      Productos.Insert;
      Productos.FieldByName('CODMOD').AsString := DM1.cdsQry6.FieldByName('ASOCODMOD').AsString;
      Productos.FieldByName('CODDES').AsString := DM1.cdsQry6.FieldByName('CARGO').AsString;
      Productos.FieldByName('APEPATER').AsString := DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString;
      Productos.FieldByName('APEMATER').AsString := DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString;
      Productos.FieldByName('NOMBRE').AsString := DM1.cdsQry6.FieldByName('ASONOMBRES').AsString;
      If tipcob = '0' Then
      Begin
         Productos.FieldByName('MONCUO').AsFloat := DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
         Productos.FieldByName('PLAFIR').AsFloat := xCreNumCuo; // DM1.cdsQry.FieldByName('CRENUMCUO').AsFloat; //HPP_201105_COB
         Productos.FieldByName('NUMCUO').AsFloat := xCreCuota; //DM1.cdsQry2.FieldByName('CRECUOTA').AsFloat; //HPP_201105_COB
         Productos.FieldByName('CUORES').AsFloat := xrestante;
      End;
      If tipcob = '1' Then
      Begin
         Productos.FieldByName('MONCUO').AsFloat := DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
         Productos.FieldByName('PLAFIR').AsFloat := 1;
         Productos.FieldByName('NUMCUO').AsFloat := 1;
         Productos.FieldByName('CUORES').AsFloat := 1;
      End;
      If tipcob = '2' Then
      Begin
         If DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat > 0 Then
         Begin
            Productos.FieldByName('PLAFIR').AsFloat := xCreNumCuo; //DM1.cdsQry.FieldByName('CRENUMCUO').AsFloat;//HPP_201105_COB
            Productos.FieldByName('NUMCUO').AsFloat := xCreCuota; //DM1.cdsQry2.FieldByName('CRECUOTA').AsFloat;//HPP_201105_COB
            Productos.FieldByName('CUORES').AsFloat := xrestante;
         End
         Else
         Begin
            Productos.FieldByName('PLAFIR').AsFloat := 1;
            Productos.FieldByName('NUMCUO').AsFloat := 1;
            Productos.FieldByName('CUORES').AsFloat := 1;
         End;
         Productos.FieldByName('MONCUO').AsFloat := DM1.cdsQry6.FieldByName('MONTOTENV').AsFloat;
      End;
      Productos.Post;
      DM1.cdsQry6.Next;
   End;
   Productos.Close;
   Productos.Free;
End;

Procedure Tfgenarcenv.lbtiposClick(Sender: TObject);
Begin
   gbterceros.Visible := False;
   btngenera.Enabled := False;
   If lbtipos.ItemIndex = 0 Then
   Begin
      If Not FileExists('C:\Solexes\DBF_COBRANZA\SIGA.DBF') Then
      Begin
         MessageDlg('No existe el archivo C:\Solexes\DBF_COBRANZA\SIGA.DBF !!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;

   If lbtipos.ItemIndex = 1 Then
   Begin
      If Not FileExists('C:\Solexes\DBF_COBRANZA\SUP.DBF') Then
      Begin
         MessageDlg('No existe el archivo C:\Solexes\DBF_COBRANZA\SUP.DBF !!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;

   If lbtipos.ItemIndex = 2 Then
   Begin
      If Not FileExists('C:\Solexes\DBF_COBRANZA\RIMAC.DBF') Then
      Begin
         MessageDlg('No existe el archivo C:\Solexes\DBF_COBRANZA\RIMAC.DBF !!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;
   If lbtipos.ItemIndex = 3 Then
   Begin
      If Not FileExists('C:\Solexes\DBF_COBRANZA\TARAPOTO.DBF') Then
      Begin
         MessageDlg('No existe el archivo C:\Solexes\DBF_COBRANZA\TARAPOTO.DBF !!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;
// Se añade generación del archivo LIBERTAD.DBF (faltaba poner)
   If lbtipos.ItemIndex = 4 Then
   Begin
      If Not FileExists('C:\Solexes\DBF_COBRANZA\LIBERTAD.DBF') Then
      Begin
         MessageDlg('No existe el archivo C:\Solexes\DBF_COBRANZA\LIBERTAD.DBF !!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;

  // Opción UCAYALI.DBF

   If lbtipos.ItemIndex = 5 Then
   Begin
      If Not FileExists('C:\Solexes\DBF_COBRANZA\UCAYALI.DBF') Then
      Begin
         MessageDlg('No existe el archivo C:\Solexes\DBF_COBRANZA\UCAYALI.DBF !!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;

   If lbtipos.ItemIndex = 6 Then
   Begin
      If Not FileExists('C:\Solexes\DBF_COBRANZA\TERCEROS.DBF') Then
      Begin
         MessageDlg('No existe el archivo C:\Solexes\DBF_COBRANZA\TERCEROS.DBF !!!', mtError, [mbOk], 0);
         Exit;
      End;
      If (rgtiparc.ItemIndex <> 0) And (rgtiparc.ItemIndex <> 1) Then
      Begin
         MessageDlg('Generación no permitida !!!', mtError, [mbOk], 0);
         Exit;
      End;
      gbterceros.Visible := True;
   End;
   btngenera.Enabled := True;

  // Opción HUANUCO.DBF
   If lbtipos.ItemIndex = 7 Then
   Begin
      If Not FileExists('C:\Solexes\DBF_COBRANZA\HUANUCO.DBF') Then
      Begin
         MessageDlg('No existe el archivo C:\Solexes\DBF_COBRANZA\HUANUCO.DBF !!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;

// Inicio: DPP_201206_COB
// Opción LORETO.DBF
   If lbtipos.ItemIndex = 7 Then
   Begin
      If Not FileExists('C:\Solexes\DBF_COBRANZA\LORETO.DBF') Then
      Begin
         MessageDlg('No existe el archivo C:\Solexes\DBF_COBRANZA\LORETO.DBF !!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;
// Fin: DPP_201206_COB

End;

Procedure Tfgenarcenv.generaTARAPOTO(nomarc, tipcob: String);
Var
   Productos: TTable;
   xsql: String;
   xCreMtoOtor, xCuotas, xPagados, xPendiente: Double;
   xCreFOtorg, xFecIni, xFecMax: TDateTime;
Begin
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\TARAPOTO.DBF')), (PChar(nomarc)), False);
   Productos := TTable.Create(Nil);
   Productos.TableName := nomarc;
   Productos.TableType := ttFoxPro;
   Productos.Open;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      xSql := 'SELECT MIN(CREFOTORG) CREFOTORG, SUM(NVL(A.CREMTOOTOR,0)) CREMTOOTOR'
         + ' FROM CRE301 A WHERE A.ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString) + ' AND A.CREESTID = ''02''';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xsql);
      DM1.cdsQry1.Open;

// si tiene algun credito vigente, se envia como referencia el monto del credito y el numero de cuotas de este
// en caso de no tener creditos vigentes y si tiene fsc, entonces se envia como monto de la deuda del fsc
      If (DM1.cdsQry1.RecordCount > 0) Then
      Begin
         xSql := 'SELECT SUM(NVL(PENDIENTE,0)) PENDIENTE, SUM(NVL(PAGADOS,0)) PAGADOS, SUM(NVL(CUOTAS,0)) CUOTAS,'
            + ' MIN(CREFVEN) FECINI, MAX(CREFVEN) FECMAX FROM ('
            + ' SELECT CASE WHEN B.CREESTID IN (''02'',''11'',''14'',''19'', ''27'') THEN 1 END PENDIENTE,'
            + ' CASE WHEN B.CREESTID IN (''21'',''23'',''24'',''26'') THEN 1 END PAGADOS,'
            + ' 1 CUOTAS, B.CREFVEN FROM CRE301 A, CRE302 B WHERE A.ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString) + ' AND A.CREESTID = ''02'''
            + ' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID)';
         DM1.cdsQry2.Close;
         DM1.cdsQry2.DataRequest(xsql);
         DM1.cdsQry2.Open;

         xCreMtoOtor := DM1.cdsQry1.FieldByName('CREMTOOTOR').AsFloat;
         xCreFOtorg := DM1.cdsQry1.FieldByName('CREFOTORG').AsDateTime;
         xCuotas := DM1.cdsQry2.FieldByName('CUOTAS').AsFloat;
         xPagados := DM1.cdsQry2.FieldByName('PAGADOS').AsFloat;
         xPendiente := DM1.cdsQry2.FieldByName('PENDIENTE').AsFloat;
         xFecIni := DM1.cdsQry2.FieldByName('FECINI').AsDateTime;
         xFecMax := DM1.cdsQry2.FieldByName('FECMAX').AsDateTime;
      End
      Else
      Begin

         xSql := '  SELECT IMP_APL_FSC '
            + '    FROM COB_FSC_DEUDA_FSC_CAB '
            + '   WHERE ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)
            + '     AND ID_EST_FSC IN (''02'',''27'') '
            + '     AND NVL(AUTDESGES, ''N'') = ''S'' '
            + '     AND (NVL(IMP_APL_FSC, 0) - NVL(IMP_COB_FSC, 0)) > 0 '
            + '     AND ROWNUM = 1 ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;

         xCreMtoOtor := DM1.cdsQry.FieldByName('IMP_APL_FSC').AsFloat;
         xCreFOtorg := null;
         xCuotas := 0;
         xPagados := 0;
         xPendiente := 0;
         xFecIni := null;
         xFecMax := null;
      End;
      Productos.Insert;
      Productos.FieldByName('DNI').AsString := DM1.cdsQry6.FieldByName('ASODNI').AsString;
      Productos.FieldByName('CODMOD').AsString := DM1.cdsQry6.FieldByName('ASOCODMOD').AsString;
      Productos.FieldByName('APEPAT').AsString := DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString;
      Productos.FieldByName('APEMAT').AsString := DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString;
      Productos.FieldByName('NOMBRES').AsString := DM1.cdsQry6.FieldByName('ASONOMBRES').AsString;

// se corrige valor de campo MONCUO, el campo MONCUOENV ya viene incluido con MONCUOENVFSC (NVL(MONCUOENV,0) + NVL(MONCUOENVFSC,0) MONCUOENV)
      If tipcob = '0' Then Productos.FieldByName('MONCUO').AsFloat := DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat; // RMZ+DM1.cdsQry6.FieldByName('MONCUOENVFSC').AsFloat;
      If tipcob = '1' Then Productos.FieldByName('MONCUO').AsFloat := DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
      If tipcob = '2' Then Productos.FieldByName('MONCUO').AsFloat := DM1.cdsQry6.FieldByName('MONTOTENV').AsFloat;
      Productos.FieldByName('MONCRE').AsFloat := xCreMtoOtor; //DM1.cdsQry1.FieldByName('CREMTOOTOR').AsFloat;
      If DM1.cdsQry1.FieldByName('CREFOTORG').AsString <> '' Then Productos.FieldByName('FECOTO').AsFloat := xCreFOtorg; //DM1.cdsQry1.FieldByName('CREFOTORG').AsDateTime;
      Productos.FieldByName('TOTCUO').AsFloat := xCuotas; //DM1.cdsQry2.FieldByName('CUOTAS').AsFloat;
      Productos.FieldByName('CUOPAG').AsFloat := xPagados; //DM1.cdsQry2.FieldByName('PAGADOS').AsFloat;
      Productos.FieldByName('CUOPEN').AsFloat := xPendiente; //DM1.cdsQry2.FieldByName('PENDIENTE').AsFloat;
      If DM1.cdsQry2.FieldByName('FECINI').AsString <> '' Then Productos.FieldByName('FECPRIPAG').AsFloat := xFecIni; //DM1.cdsQry2.FieldByName('FECINI').AsDateTime;
      If DM1.cdsQry2.FieldByName('FECMAX').AsString <> '' Then Productos.FieldByName('FECTERPAG').AsFloat := xFecMax; //DM1.cdsQry2.FieldByName('FECMAX').AsDateTime;
      Productos.Post;
      DM1.cdsQry6.Next;
   End;
   Productos.Close;
   Productos.Free;
End;

Procedure Tfgenarcenv.generaLIB(nomarc, tipcob: String);
Var
   Productos: TTable;
   xSQL, Importe, Entero, Decimal: String;
   xImporte: Currency;
Begin
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\LIBERTAD.DBF')), (PChar(nomarc)), False);
   Productos := TTable.Create(Nil);
   Productos.TableName := nomarc;
   Productos.TableType := ttFoxPro;
   Productos.Open;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      Productos.Insert;
    // LLENAR
      Productos.FieldByName('ANOMES').AsString := DM1.cdsGrupos.FieldByName('PERIODO').AsString;

      Productos.FieldByName('CODIGO').AsString := '003';

      Productos.FieldByName('CODMOD').AsString := DM1.cdsQry6.FieldByName('ASOCODMOD').AsString;
      Productos.FieldByName('CARGO').AsString := DM1.cdsQry6.FieldByName('CARGO').AsString;
      Productos.FieldByName('PLAZA').AsString := '0000';
      If DM1.cdsGrupos.FieldByName('ASOTIPID').AsString = 'DO' Then
      Begin
         Productos.FieldByName('TIPO').AsString := 'A';
      End
      Else
      Begin
         Productos.FieldByName('TIPO').AsString := 'C';
      End;
    //cuotas
      If rgtiparc.ItemIndex = 0 Then
      Begin
         Productos.FieldByName('CUOTA').AsInteger := DM1.cdsQry6.FieldByName('CRECUOTA').AsInteger;
         Productos.FieldByName('CODENT').AsString := '0418';
// se corrige valor de variable xImporte, el campo MONCUOENV ya viene incluido con MONCUOENVFSC (NVL(MONCUOENV,0) + NVL(MONCUOENVFSC,0) MONCUOENV)
         xImporte := DM1.cdsQry6.FieldByName('MONCUOENV').AsCurrency; // RMZ +DM1.cdsQry6.FieldByName('MONCUOENVFSC').AsCurrency;
      End
      Else
         If rgtiparc.ItemIndex = 1 Then
         Begin
      //aportes
            Productos.FieldByName('CUOTA').AsInteger := StrToInt(DM1.cdsQry6.FieldByName('COBANO').AsString + DM1.cdsQry6.FieldByName('COBMES').AsString);
            Productos.FieldByName('CODENT').AsString := '0006';
            xImporte := DM1.cdsQry6.FieldByName('MONAPOENV').AsCurrency;
         End;
      Importe := FormatFloat('######.#0', xImporte);
      Entero := Copy(DM1.StrZero(Importe, 16), 1, 13);
      Decimal := Copy(DM1.StrZero(Importe, 16), 15, 2);
      Productos.FieldByName('MONTO').AsString := Format('%.6d', [StrToInt(Entero)]) + Decimal;
      Productos.FieldByName('APEPAT').AsString := DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString;
      Productos.FieldByName('APEMAT').AsString := DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString;
      Productos.FieldByName('NOMBRES').AsString := DM1.cdsQry6.FieldByName('ASONOMBRES').AsString;
      Productos.FieldByName('OBS').AsString := '1';

    {
      1  ANOMES      Car cter       6
      2  CODIGO      Car cter       2
      3  CODMOD      Car cter      10
      4  CARGO       Car cter       6
      5  PLAZA       Car cter       4
      6  TIPO        Car cter       1
      7  CODENT      Car cter       4
      8  MONTO       Car cter       8
      9  APEPAT      Car cter      40
     10  APEMAT      Car cter      40
     11  NOMBRES     Car cter      35
     12  OBS         Car cter       1
     13  CUOTA       Car cter       2
    }

      Productos.Post;
      DM1.cdsQry6.Next;
   End;
   Productos.Close;
   Productos.Free;
End;

Procedure Tfgenarcenv.generaTERCEROS(nomarc, tipcob: String);
Var
   Productos: TTable;
   xempresa, xSQL, Importe, Entero, Decimal: String;
   xImporte: Currency;
Begin
  {
  PERIODO     Car cter       6
  EMPRESA     Car cter       3
  CODMOD      Car cter      10
  CARGO       Car cter       6
  CARBEN      Car cter       4
  T_PLANI     Car cter       1
  CODDES      Car cter       4
  MONTODES    Car cter       8
  APEPATER    Car cter      40
  APEMATER    Car cter      40
  NOMBRE      Car cter      35
  }
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\TERCEROS.DBF')), (PChar(nomarc)), False);
   Productos := TTable.Create(Nil);
   Productos.TableName := nomarc;
   Productos.TableType := ttFoxPro;

   xempresa := DM1.StrZero(Trim(mecodemp.Text), 3);

   Productos.Open;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      Productos.Insert;
      Productos.FieldByName('PERIODO').AsString := DM1.cdsGrupos.FieldByName('PERIODO').AsString;
      Productos.FieldByName('EMPRESA').AsString := xempresa;
      Productos.FieldByName('CODMOD').AsString := DM1.cdsQry6.FieldByName('ASOCODMOD').AsString;
      Productos.FieldByName('CARGO').AsString := DM1.cdsQry6.FieldByName('CARGO').AsString;
      Productos.FieldByName('CARBEN').AsString := '0000';
      If DM1.cdsGrupos.FieldByName('ASOTIPID').AsString = 'DO' Then
         Productos.FieldByName('T_PLANI').AsString := 'A'
      Else
         Productos.FieldByName('T_PLANI').AsString := 'C';
      If rgtiparc.ItemIndex = 0 Then
      Begin
         Productos.FieldByName('CODDES').AsString := '0418';
         xImporte := DM1.cdsQry6.FieldByName('MONCUOENV').AsCurrency;
      End;
      If rgtiparc.ItemIndex = 1 Then
      Begin
         Productos.FieldByName('CODDES').AsString := '0006';
         xImporte := DM1.cdsQry6.FieldByName('MONAPOENV').AsCurrency;
      End;
      Importe := FormatFloat('######.#0', xImporte);
      Entero := Copy(DM1.StrZero(Importe, 16), 1, 13);
      Decimal := Copy(DM1.StrZero(Importe, 16), 15, 2);
      Productos.FieldByName('MONTODES').AsString := Format('%.6d', [StrToInt(Entero)]) + Decimal;
      Productos.FieldByName('APEPATER').AsString := DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString;
      Productos.FieldByName('APEMATER').AsString := DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString;
      Productos.FieldByName('NOMBRE').AsString := DM1.cdsQry6.FieldByName('ASONOMBRES').AsString;
      Productos.Post;
      DM1.cdsQry6.Next;
   End;
   Productos.Close;
   Productos.Free;
End;

Procedure Tfgenarcenv.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin

   DM1.cdsQry.Close;
   DM1.cdsQry.Filter := '';
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.Filtered := False;

   DM1.cdsQry2.Close;
   DM1.cdsQry2.Filter := '';
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Filtered := False;

   DM1.cdsQry1.Close;
   DM1.cdsQry1.Filter := '';
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Filtered := False;

   Action := caFree;

End;

Procedure Tfgenarcenv.generaUCA(nomarc, tipcob: String);
Var
   Productos: TTable;
   xsql: String;
Begin
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\UCAYALI.DBF')), (PChar(nomarc)), False);
   Productos := TTable.Create(Nil);
   Productos.TableName := nomarc;
   Productos.TableType := ttFoxPro;
   Productos.Open;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      xSql := ' SELECT MIN(CREFOTORG) CREFOTORG, SUM(NVL(A.CREMTOOTOR,0)) CREMTOOTOR'
         + ' FROM CRE301 A '
         + ' WHERE A.ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)
         + ' AND A.CREESTID = ''02''';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xsql);
      DM1.cdsQry1.Open;
      xSql := ' SELECT SUM(NVL(PENDIENTE,0)) PENDIENTE, SUM(NVL(PAGADOS,0)) PAGADOS, SUM(NVL(CUOTAS,0)) CUOTAS,'
         + '        MIN(CREFVEN) FECINI, MAX(CREFVEN) FECMAX '
         + ' FROM (SELECT CASE WHEN B.CREESTID IN (''02'',''11'',''14'',''19'', ''27'') THEN 1 END PENDIENTE, '
         + '              CASE WHEN B.CREESTID IN (''21'',''23'',''24'',''26'') THEN 1 END PAGADOS, '
         + '              1 CUOTAS, B.CREFVEN '
         + '       FROM CRE301 A, CRE302 B '
         + '       WHERE A.ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)
         + '         AND A.CREESTID = ''02'' '
         + '         AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID)';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xsql);
      DM1.cdsQry2.Open;
      Productos.Insert;
      Productos.FieldByName('ANOMES').AsString := DM1.cdsGrupos.FieldByName('PERIODO').AsString;
      Productos.FieldByName('DNI').AsString := DM1.cdsQry6.FieldByName('ASODNI').AsString;
      Productos.FieldByName('CODMOD').AsString := DM1.cdsQry6.FieldByName('ASOCODMOD').AsString;
      Productos.FieldByName('CARGO').AsString := DM1.cdsQry6.FieldByName('CARGO').AsString;
      Productos.FieldByName('APEPAT').AsString := DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString;
      Productos.FieldByName('APEMAT').AsString := DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString;
      Productos.FieldByName('NOMBRES').AsString := DM1.cdsQry6.FieldByName('ASONOMBRES').AsString;
      If tipcob = '0' Then Productos.FieldByName('MONENV').AsFloat := DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
      If tipcob = '1' Then Productos.FieldByName('MONENV').AsFloat := DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
      If tipcob = '2' Then Productos.FieldByName('MONENV').AsFloat := DM1.cdsQry6.FieldByName('MONTOTENV').AsFloat;
      Productos.FieldByName('MONCRE').AsFloat := DM1.cdsQry1.FieldByName('CREMTOOTOR').AsFloat;
      If DM1.cdsQry1.FieldByName('CREFOTORG').AsString <> '' Then
         Productos.FieldByName('FECOTO').AsFloat := DM1.cdsQry1.FieldByName('CREFOTORG').AsDateTime;
      Productos.FieldByName('TOTCUO').AsFloat := DM1.cdsQry2.FieldByName('CUOTAS').AsFloat;
      Productos.FieldByName('CUOPAG').AsFloat := DM1.cdsQry2.FieldByName('PAGADOS').AsFloat;
      Productos.FieldByName('CUOPEN').AsFloat := DM1.cdsQry2.FieldByName('PENDIENTE').AsFloat;
      If DM1.cdsQry2.FieldByName('FECINI').AsString <> '' Then
         Productos.FieldByName('FECPRIPAG').AsFloat := DM1.cdsQry2.FieldByName('FECINI').AsDateTime;
      If DM1.cdsQry2.FieldByName('FECMAX').AsString <> '' Then
         Productos.FieldByName('FECTERPAG').AsFloat := DM1.cdsQry2.FieldByName('FECMAX').AsDateTime;
      xSql := 'SELECT COUNT(*) CUO_PEN FROM CRE302 WHERE ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString) + ' AND CREESTID = ''14''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsql);
      DM1.cdsQry.Open;
      Productos.FieldByName('CUOPROCOB').AsFloat := DM1.cdsQry.FieldByName('CUO_PEN').AsFloat;
      Productos.Post;
      DM1.cdsQry6.Next;
   End;
   Productos.Close;
   Productos.Free;
End;

{
Estructura de la tabla: C:\SOLEXES\DBF_CO~1\HUANUCO.DBF
N§ de registros:               0
éltima actualizaci¢n:   15/07/1911
P g. de c¢digos:        0
Campo  Nombre      Tipo       Ancho    Dec    Öndice Ordenaci¢n
    1  ASOCODMOD   Car cter      10
    2  CARGO       Car cter       6
    3  APEPATER    Car cter      40
    4  APEMATER    Car cter      40
    5  NOMBRE      Car cter      35
    6  MONCUO      Num‚rico      10      2
    7  NUMCRE      Car cter      15
    8  FECCRE      Fecha          8
** Total **                     165
}

Procedure Tfgenarcenv.generaHUANUCO(xsnomarc, xstipcob: String);
Var
   xxproductos: TTable;
   xsql, xsfecha: String;
Begin
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\HUANUCO.DBF')), (PChar(xsnomarc)), False);
   xxproductos := TTable.Create(Nil);
   xxproductos.TableName := xsnomarc;
   xxproductos.TableType := ttFoxPro;
   xxproductos.Open;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      xxproductos.Insert;
      xxproductos.FieldByName('ASOCODMOD').AsString := DM1.cdsQry6.FieldByName('ASOCODMOD').AsString;
      xxproductos.FieldByName('CARGO').AsString := DM1.cdsQry6.FieldByName('CARGO').AsString;
      xxproductos.FieldByName('APEPATER').AsString := DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString;
      xxproductos.FieldByName('APEMATER').AsString := DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString;
      xxproductos.FieldByName('NOMBRE').AsString := DM1.cdsQry6.FieldByName('ASONOMBRES').AsString;
      If xstipcob = '0' Then xxproductos.FieldByName('MONCUO').AsFloat := DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
      If xstipcob = '1' Then xxproductos.FieldByName('MONCUO').AsFloat := DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
      If xstipcob = '2' Then xxproductos.FieldByName('MONCUO').AsFloat := DM1.cdsQry6.FieldByName('MONTOTENV').AsFloat;
      xsfecha := '';
      If xstipcob <> '1' Then
      Begin
         xsql := 'SELECT MAX(CREFOTORG) CREFOTORG FROM CRE301 WHERE ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString) + ' AND CREESTID = ''02''';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xsql);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            xsfecha := DM1.cdsQry.FieldByName('CREFOTORG').AsString;
            xsql := 'SELECT MAX(CREDID) CREDID FROM CRE301 WHERE ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString) + ' AND CREESTID = ''02''';
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest(xsql);
            DM1.cdsQry.Open;
            xxproductos.FieldByName('NUMCRE').AsString := DM1.cdsQry.fieldByName('CREDID').AsString;
            xxproductos.FieldByName('FECCRE').AsString := xsfecha;
         End;
      End;
      xxproductos.Post;
      DM1.cdsQry6.Next;
   End;
   xxproductos.Close;
   xxproductos.Free;
End;

// Inicio: DPP_201206_COB

Procedure Tfgenarcenv.generaLORETO(xsNomArc, xsTipCob: String);
Var
   Productos: TTable;
   xSQL: String;
   xSalDif, xSalAnt, xSalVen, xSalTot: currency;
   xfVenc, xfCalc: String;
Begin
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\LORETO.DBF')), (PChar(xsNomArc)), False);
   Productos := TTable.Create(Nil);
   Productos.TableName := xsNomArc;
   Productos.TableType := ttFoxPro;
   Productos.Open;

// Inicio: SPP_201402_COB                 :  Cambio a Socket
   pb1.Visible:=True;
   pb1.Max := DM1.cdsqry6.RecordCount;
   pb1.Position:=0;
   xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   DM1.cdsQry6.DisableControls;
// Fin: SPP_201402_COB                 :  Cambio a Socket

   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      DM1.cdsCuotas.Close;
      DM1.cdsCuotas.DataRequest('Select A.ASOID, A.CREDID, A.CRECUOTA, A.CREESTID, A.CREESTADO, A.CREANO, A.CREFVEN, '
         + '       A.CREAMORT, A.CREMTO, A.CREMTOCOB, A.CREFVENINI, A.CREAMORT, A.CREFLAT,  '
         + '       A.CREANO, A.CREMES '
         + '  from CRE302 A, CRE301 B '
         + ' where A.ASOID=' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)
         + '   and A.CREESTID in (''02'',''11'',''19'',''27'') '
         + '   and B.ASOID=A.ASOID and B.CREDID=A.CREDID and B.CREESTID=''02'' ');
      DM1.cdsCuotas.Open;
      DM1.cdsCuotas.First;

      xSalAnt := 0;
      xSalVen := 0;
      xSalDif := 0;
      xSalTot := 0;
// Inicio: SPP_201402_COB              :  Cambio a Socket
      //xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
// Fin: SPP_201402_COB                 :  Cambio a Socket
      While Not DM1.cdsCuotas.Eof Do
      Begin
         If (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString <> DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString)
            And ((DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02')
            Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11')
            Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27')) Then
         Begin
            xSalDif := xSalDif + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency
               - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
         End;

         If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02')
            Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11')
            Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27') Then
         Begin
            xfVenc := Trim(DM1.cdsCuotas.fieldbyname('CREANO').AsString + DM1.cdsCuotas.fieldbyname('CREMES').AsString);
            If (xfVenc > xfCalc) And (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) Then
            Begin
               xSalAnt := xSalAnt + (DM1.cdsCuotas.fieldbyname('CREAMORT').AsCurrency
                  + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency)
                  - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency;
            End
            Else
               If DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString Then
               Begin
                  xSalVen := xSalVen + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency
                     - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
               End;
         End;
         DM1.cdsCuotas.Next;
      End;
      xSalTot := xSalVen + xSalAnt + xSalDif;

      xSQL := ' Select min(CREFOTORG) CREFOTORG, sum(nvl(A.CREMTOOTOR,0)) CREMTOOTOR, min(CREDID) CREDID_REF '
         + '   from CRE301 A '
         + '  where A.ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)
         + '    and A.CREESTID = ''02''';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xsql);
      DM1.cdsQry1.Open;
      xSQL := ' Select sum(nvl(PENDIENTE,0)) PENDIENTE, sum(nvl(PAGADOS,0)) PAGADOS, sum(nvl(CUOTAS,0)) CUOTAS,'
         + '        min(CREFVEN) FECINI, max(CREFVEN) FECMAX, sum(CUODIFER) CUODIFER, sum(SALDO_DIF) SALDO_DIF '
         + '  from (Select case when B.CREESTID in (''02'',''11'',''14'',''19'',''27'') then 1 end PENDIENTE, '
         + '               case when B.CREESTID in (''21'',''23'',''24'',''26'') then 1 end PAGADOS, '
         + '               case when B.CREESTID in (''02'',''11'',''14'',''19'',''27'') '
         + '                     and B.CREFVEN<>B.CREFVENINI then 1 else 0 end CUODIFER, '
         + '               case when B.CREESTID IN (''02'',''11'',''14'',''19'',''27'') '
         + '                     and B.CREFVEN<>B.CREFVENINI then CRESALDO else 0 end SALDO_DIF, '
         + '               1 CUOTAS, B.CREFVEN '
         + '          from CRE301 A, CRE302 B '
         + '         where A.ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)
         + '           and A.CREESTID = ''02'' '
         + '           and A.ASOID = B.ASOID and A.CREDID = B.CREDID)';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;
      Productos.Insert;
      Productos.FieldByName('ANOMES').AsString := DM1.cdsGrupos.FieldByName('PERIODO').AsString;
      Productos.FieldByName('DNI').AsString := DM1.cdsQry6.FieldByName('ASODNI').AsString;
      Productos.FieldByName('CODMOD').AsString := DM1.cdsQry6.FieldByName('ASOCODMOD').AsString;
      Productos.FieldByName('CARGO').AsString := DM1.cdsQry6.FieldByName('CARGO').AsString;
      Productos.FieldByName('APEPAT').AsString := DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString;
      Productos.FieldByName('APEMAT').AsString := DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString;
      Productos.FieldByName('NOMBRES').AsString := DM1.cdsQry6.FieldByName('ASONOMBRES').AsString;
      Productos.FieldByName('TOTCUO').AsFloat := DM1.cdsQry2.FieldByName('CUOTAS').AsFloat;
      Productos.FieldByName('CUOPAG').AsFloat := DM1.cdsQry2.FieldByName('PAGADOS').AsFloat;
      Productos.FieldByName('CUOPEN').AsFloat := DM1.cdsQry2.FieldByName('PENDIENTE').AsFloat;

   // Cuotas en Proceso de Cobranza
      xSQL := 'Select count(*) CUO_PEN '
         + '  from CRE302 '
         + ' where ASOID = ' + QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)
         + '   and CREESTID = ''14'' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      Productos.FieldByName('CUOPROCOB').AsFloat := DM1.cdsQry.FieldByName('CUO_PEN').AsFloat;

   // Cuotas diferidas
      Productos.FieldByName('CUODIFER').AsFloat := DM1.cdsQry2.FieldByName('CUODIFER').AsFloat;
   // saldo de cuotas diferidas
      Productos.FieldByName('SALDO_DIF').AsFloat := DM1.cdsQry2.FieldByName('SALDO_DIF').AsFloat;

   // monto a enviar
      If xsTipCob = '0' Then Productos.FieldByName('MONENV').AsFloat := DM1.cdsQry6.FieldByName('MONCUOENV').AsFloat;
      If xsTipCob = '1' Then Productos.FieldByName('MONENV').AsFloat := DM1.cdsQry6.FieldByName('MONAPOENV').AsFloat;
      If xsTipCob = '2' Then Productos.FieldByName('MONENV').AsFloat := DM1.cdsQry6.FieldByName('MONTOTENV').AsFloat;

   // monto total otorgado
      Productos.FieldByName('MONCRE').AsFloat := DM1.cdsQry1.FieldByName('CREMTOOTOR').AsFloat;

   // menor número de Crédito
      If DM1.cdsQry1.FieldByName('CREDID_REF').AsString <> '' Then
         Productos.FieldByName('CREDID_REF').AsString := DM1.cdsQry1.FieldByName('CREDID_REF').AsString;

   // menor fecha de otorgamiento
      If DM1.cdsQry1.FieldByName('CREFOTORG').AsString <> '' Then
         Productos.FieldByName('FECOTO').AsFloat := DM1.cdsQry1.FieldByName('CREFOTORG').AsDateTime;

   // fecha de primer pago
      If DM1.cdsQry2.FieldByName('FECINI').AsString <> '' Then
         Productos.FieldByName('FECPRIPAG').AsFloat := DM1.cdsQry2.FieldByName('FECINI').AsDateTime;

   //
      If DM1.cdsQry2.FieldByName('FECMAX').AsString <> '' Then
         Productos.FieldByName('FECTERPAG').AsFloat := DM1.cdsQry2.FieldByName('FECMAX').AsDateTime;

   // Saldo Total Pendiente
      Productos.FieldByName('SALDO_TOT').AsFloat := xSalTot; //DM1.cdsQry1.FieldByName('CRESDOACT').AsFloat;

   // Inicio: SPP_201402_COB              :  Cambio a Socket
      pb1.Position:=pb1.Position+1;
      if pb1.Position mod 20 = 0 then
         MessageBoxTimeout(Application.Handle, 'Procesando Envío...', 'Envío', 0, 0, 10) ; //2000 son 2 segundos.
   // Fin: SPP_201402_COB                 :  Cambio a Socket

      Productos.Post;
      DM1.cdsQry6.Next;
   End;
   // Inicio: SPP_201402_COB              :  Cambio a Socket
   DM1.cdsQry6.EnableControls;
   // Fin: SPP_201402_COB                 :  Cambio a Socket

   Productos.Close;
   Productos.Free;
End;
// Fin: DPP_201206_COB


// Inicio: SPP_201406_COB
procedure Tfgenarcenv.generaCORONELPORTILLO(xsnomarc, xstipcob: String);
Var
   Productos: TTable;
   xSql, xcredid: String;
   xFecIni, xFecFin : TDate;
   xmontotcre, xsalcuonopag: Double;
   xnumcuonopag, xNumCuoCre: Integer;
begin
   CopyFile((PChar('C:\Solexes\DBF_COBRANZA\COR_PORT.DBF')), (PChar(xsNomArc)), False);
   Productos := TTable.Create(Nil);
   Productos.TableName := xsNomArc;
   Productos.TableType := ttFoxPro;
   Productos.Open;
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      xcredid := '';
      xSql := 'SELECT MIN(CREDID) CREDID FROM CRE301 WHERE ASOID = '+QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)
      +' AND CREFOTORG IN (SELECT MIN(CREFOTORG) FROM CRE301 WHERE ASOID = '+QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)+' AND CREESTID = ''02'') AND CREESTID = ''02''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xcredid := DM1.cdsQry.FieldByName('CREDID').AsString;
      xSql := 'SELECT MAX(CRENUMCUO ) CRENUMCUO, SUM(NVL(CREMTOOTOR,0)) MONOTO, MIN(TO_DATE(CREFINIPAG,''YYYYMMDD'')) FECHAINICIAL, MAX(TO_DATE(CREFFINPAG,''YYYYMMDD'')) FECHAFINAL'
      +' FROM CRE301 WHERE ASOID = '+QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)+' AND CREESTID = ''02''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xmontotcre := DM1.cdsQry.FieldByName('MONOTO').AsFloat;
      xFecIni := DM1.cdsQry.FieldByName('FECHAINICIAL').AsDateTime;
      xFecFin := DM1.cdsQry.FieldByName('FECHAFINAL').AsDateTime;
      xNumCuoCre := DM1.cdsQry.FieldByName('CRENUMCUO').AsInteger;
      xSql := 'SELECT SUM(NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0)) SAL_CUO_NO_PAG, COUNT(*) NUM_CUO_NO_PAG FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)+' AND A.CREESTID = ''02'''
      +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''14'',''27'') AND ((TO_CHAR(B.CREFVEN,''YYYYMM'') < '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+') OR (B.CREFVEN <> B.CREFVENINI))';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xnumcuonopag := DM1.cdsQry.FieldByName('NUM_CUO_NO_PAG').AsInteger;
      xsalcuonopag := DM1.cdsQry.FieldByName('SAL_CUO_NO_PAG').AsFloat;
      xSql := 'SELECT MIN(INICIO) INICIO,  MAX(FINAL) FINAL, SUM(NVL(PENDIENTE,0)) PENDIENTE, SUM(NVL(NUM_CUO_PAG,0)) NUM_CUO_PAG, SUM(NVL(CANCELADO,0)) CANCELADO FROM'
      +'(SELECT B.CREFVEN INICIO, B.CREFVEN FINAL, CASE WHEN B.CREESTID IN (''02'',''11'',''14'',''19'',''27'') THEN NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0) END PENDIENTE,'
      +' CASE WHEN B.CREESTID NOT IN (''02'',''11'',''14'', ''19'', ''27'') THEN 1 END NUM_CUO_PAG, NVL(B.CREMTOCOB,0) CANCELADO'
      +' FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString)+' AND A.CREESTID = ''02'' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID)';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If xcredid <> '' Then
      Begin
         Productos.Insert;
         Productos.FieldByName('CODMOD').AsString := DM1.cdsQry6.FieldByName('ASOCODMOD').AsString;
         Productos.FieldByName('ASOAPENOM').AsString := Trim(DM1.cdsQry6.FieldByName('ASOAPEPAT').AsString)+' '+Trim(DM1.cdsQry6.FieldByName('ASOAPEMAT').AsString)+' '+Trim(DM1.cdsQry6.FieldByName('ASONOMBRES').AsString);
         Productos.FieldByName('CREDITO').AsString := xcredid;
         Productos.FieldByName('MONTOTCRE').AsFloat := xmontotcre;
         Productos.FieldByName('CUOMENCRE').AsFloat := DM1.cdsQry6.FieldByName('CREMTOCUO').AsFloat;
         Productos.FieldByName('FECINICRE').AsDateTime := xFecIni;
         Productos.FieldByName('FECFINCRE').AsDateTime := xFecFin;
         Productos.FieldByName('NUMCUOPAG').AsInteger := DM1.cdsQry.FieldByName('NUM_CUO_PAG').AsInteger;
         Productos.FieldByName('DEUCAN').AsFloat :=  DM1.cdsQry.FieldByName('CANCELADO').AsFloat;
         Productos.FieldByName('DEUPEN').AsFloat :=  DM1.cdsQry.FieldByName('PENDIENTE').AsFloat;
         Productos.FieldByName('NCUONOPAG').AsInteger := xnumcuonopag;
         Productos.FieldByName('SCUONOPAG').AsFloat   := xsalcuonopag;
         Productos.FieldByName('NUMCUOCRE').AsInteger := xNumCuoCre;
         Productos.Post;
      End;
      DM1.cdsQry6.Next;
   End;
end;
// Fin: SPP_201406_COB

End.

