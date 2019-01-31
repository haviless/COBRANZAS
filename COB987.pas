
// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB987
// Formulario           : FGeninfpla
// Fecha de Creación    : 16/09/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Generación de información de planilla
// Actualizaciones      :
// HPC_201402_COB       : Control para prestamos aprobados y sin cronograma.
// SPP_201402_COB       : Se realiza el pase a producción a partir del HPC_201402_COB

Unit COB987;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, wwdblook, Wwdbdlg, Buttons, Mask, Grids,
   Wwdbigrd, Wwdbgrid, db, wwdbedit, Wwdbspin;

Type
   TFGeninfpla = Class(TForm)
      GroupBox1: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      pnldespla: TPanel;
      edtdescon: TEdit;
      btngenerar: TBitBtn;
      btnCerrar: TBitBtn;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      GroupBox2: TGroupBox;
      dbgugels: TwwDBGrid;
      btnprevio: TBitBtn;
      Label7: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Panel2: TPanel;
      mefecini: TMaskEdit;
      Panel3: TPanel;
      mefecfin: TMaskEdit;
      Panel4: TPanel;
      mediacorte: TMaskEdit;
      Panel5: TPanel;
      meaplica: TMaskEdit;
      Panel6: TPanel;
      meaplicuoapo: TMaskEdit;
      pnlprecaucion: TPanel;
      lblconvenio: TLabel;
      Timer1: TTimer;
      Panel8: TPanel;
      edtcodcon: TEdit;
      rgtipaso: TRadioGroup;
      seanopro: TwwDBSpinEdit;
      semespro: TwwDBSpinEdit;
      Procedure btnCerrarClick(Sender: TObject);
      Procedure btngenerarClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnprevioClick(Sender: TObject);
      Procedure Timer1Timer(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure edtdesconExit(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure edtdesconChange(Sender: TObject);
   Private
      xAnopro, xMespro: String;
      Procedure limpiaantesdeprocesar;
    { Private declarations }
   Public
    { Public declarations }
   End;
Var
   FGeninfpla: TFGeninfpla;

Implementation

Uses COBDM1, COB986, COB997, COB998, COB975;

{$R *.dfm}

Procedure TFGeninfpla.btnCerrarClick(Sender: TObject);
Begin
   FGeninfpla.Close;
End;

Procedure TFGeninfpla.btngenerarClick(Sender: TObject);
Var
   xtipaso, xSql, xtipdescuo: String;
   xcansincodcar: Integer;
   xpri3dig, xult3dig, xflg: String;
// inicio HPP_201105_COB
   xCantReg : integer;
   xTurno : string;
   xMsg : string;
// fin HPP_201105_COB

Begin
   xtipdescuo := DM1.cdsConvenio.FieldByName('TIPDESCUO').AsString;
   If rgtipaso.ItemIndex = 0 Then
      xtipaso := 'DO'
   Else
      xtipaso := 'CE';
   xcansincodcar := 0;
  // Se verifica los códigos de cargo para el caso de los docentes
   If xtipaso = 'DO' Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.Eof Do
      Begin
         If (Trim(DM1.cdsQry2.FieldByName('CODCARGODO').AsString) = '') Or (Trim(DM1.cdsQry2.FieldByName('DIGMASREPDO').AsString) = '') Then
            xcansincodcar := xcansincodcar + 1;
         DM1.cdsQry2.Next;
      End;
      If xcansincodcar > 0 Then
      Begin
         MessageDlg('EXISTEN ' + IntToStr(xcansincodcar) + ' UGEL(ES) SIN CÓDIGO DE CARGO' + #13 + 'ACTUALICE ANTES DE CONTINUAR', mtInformation, [mbOk], 0);
         Exit;
      End;
    // Se procede a verificar si los digitos constantes son los que más se repiten en la tabla
    // de asociados.
      xSql := 'SELECT A.UPROID, A.UPAGOID, A.USEID, B.USENOM,'
         + ' NVL(B.CODCARGODO,''   '') CODCARGODO,  NVL(B.DIGMASREPDO,''    '') DIGMASREPDO,  ''   '' PRI3DIG, ''   '' ULT3DIG'
         + '  FROM COB_CON_DET A, APO101 B WHERE IDECON = ' + QuotedStr(edtcodcon.Text)
         + ' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID';
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xSql);
      DM1.cdsQry4.Open;
      xflg := 'N';
      While Not DM1.cdsQry4.Eof Do
      Begin
         xSql := 'SELECT PRI3DIG, CANTIDAD FROM (SELECT SUBSTR(CARGO,1,3) PRI3DIG, COUNT(*) CANTIDAD  '
               + '  FROM APO201'
               + ' WHERE ASOTIPID = ' + QuotedStr(xtipaso)
               + '   AND UPROID   = ' + QuotedStr(DM1.cdsQry4.FieldByName('UPROID').AsString)
               + '   AND UPAGOID  = ' + QuotedStr(DM1.cdsQry4.FieldByName('UPAGOID').AsString)
               + '   AND USEID    = ' + QuotedStr(DM1.cdsQry4.FieldByName('USEID').AsString)
               + ' GROUP BY SUBSTR(CARGO,1,3) ORDER BY CANTIDAD DESC ) WHERE ROWNUM = 1';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         xpri3dig := DM1.cdsQry.FieldByName('PRI3DIG').AsString;
         xSql := 'SELECT ULT3DIG, CANTIDAD FROM (SELECT SUBSTR(CARGO,4,3) ULT3DIG, COUNT(*) CANTIDAD  '
               + '  FROM APO201'
               + ' WHERE ASOTIPID = ' + QuotedStr(xtipaso)
               + '   AND UPROID   = ' + QuotedStr(DM1.cdsQry4.FieldByName('UPROID').AsString)
               + '   AND UPAGOID  = ' + QuotedStr(DM1.cdsQry4.FieldByName('UPAGOID').AsString)
               + '   AND USEID    = ' + QuotedStr(DM1.cdsQry4.FieldByName('USEID').AsString)
               + ' GROUP BY SUBSTR(CARGO,4,3) ORDER BY CANTIDAD DESC ) WHERE ROWNUM = 1';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         xult3dig := DM1.cdsQry.FieldByName('ULT3DIG').AsString;
         DM1.cdsQry4.Edit;
         DM1.cdsQry4.FieldByName('PRI3DIG').AsString := xpri3dig;
         DM1.cdsQry4.FieldByName('ULT3DIG').AsString := xult3dig;
         If (DM1.cdsQry4.FieldByName('CODCARGODO').AsString <> DM1.cdsQry4.FieldByName('PRI3DIG').AsString) Or
            (DM1.cdsQry4.FieldByName('DIGMASREPDO').AsString <> DM1.cdsQry4.FieldByName('ULT3DIG').AsString) Then
            xflg := 'S'
         Else
            DM1.cdsQry4.Delete;
         DM1.cdsQry4.Next;
      End;
   End;
  // Se verifica los códigos de cargo para el caso de los cesantes
   If xtipaso = 'CE' Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.Eof Do
      Begin
         If (Trim(DM1.cdsQry2.FieldByName('CODCARGOCE').AsString) = '') Or (Trim(DM1.cdsQry2.FieldByName('DIGMASREPCE').AsString) = '') Then
            xcansincodcar := xcansincodcar + 1;
         DM1.cdsQry2.Next;
      End;
      If xcansincodcar > 0 Then
      Begin
         MessageDlg('EXISTEN ' + IntToStr(xcansincodcar) + ' UGEL(ES) SIN CÓDIGO DE CARGO' + #13 + 'ACTUALICE ANTES DE CONTINUAR', mtInformation, [mbOk], 0);
         Exit;
      End;
    // Se procede a verificar si los digitos constantes son los que más se repiten en la tabla
    // de asociados.
      xSql := 'SELECT A.UPROID, A.UPAGOID, A.USEID, B.USENOM,'
         + ' NVL(B.CODCARGOCE,''   '') CODCARGOCE,  NVL(B.DIGMASREPCE,''    '') DIGMASREPCE,  ''   '' PRI3DIG, ''   '' ULT3DIG'
         + '  FROM COB_CON_DET A, APO101 B '
         + ' WHERE IDECON = ' + QuotedStr(edtcodcon.Text)
         + '   AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID';
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xSql);
      DM1.cdsQry4.Open;
      xflg := 'N';
      While Not DM1.cdsQry4.Eof Do
      Begin
         xSql := 'SELECT PRI3DIG, CANTIDAD FROM (SELECT SUBSTR(CARGO,1,3) PRI3DIG, COUNT(*) CANTIDAD  '
               + '  FROM APO201'
               + ' WHERE ASOTIPID = ' + QuotedStr(xtipaso)
               + '   AND UPROID   = ' + QuotedStr(DM1.cdsQry4.FieldByName('UPROID').AsString)
               + '   AND UPAGOID  = ' + QuotedStr(DM1.cdsQry4.FieldByName('UPAGOID').AsString)
               + '   AND USEID    = ' + QuotedStr(DM1.cdsQry4.FieldByName('USEID').AsString)
               + ' GROUP BY SUBSTR(CARGO,1,3) ORDER BY CANTIDAD DESC ) WHERE ROWNUM = 1';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         xpri3dig := DM1.cdsQry.FieldByName('PRI3DIG').AsString;
         xSql := 'SELECT ULT3DIG, CANTIDAD FROM (SELECT SUBSTR(CARGO,4,3) ULT3DIG, COUNT(*) CANTIDAD  '
               + '  FROM APO201'
               + ' WHERE ASOTIPID = ' + QuotedStr(xtipaso)
               + '   AND UPROID   = ' + QuotedStr(DM1.cdsQry4.FieldByName('UPROID').AsString)
               + '   AND UPAGOID  = ' + QuotedStr(DM1.cdsQry4.FieldByName('UPAGOID').AsString)
               + '   AND USEID    = ' + QuotedStr(DM1.cdsQry4.FieldByName('USEID').AsString)
               + ' GROUP BY SUBSTR(CARGO,4,3) ORDER BY CANTIDAD DESC ) WHERE ROWNUM = 1';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         xult3dig := DM1.cdsQry.FieldByName('ULT3DIG').AsString;
         DM1.cdsQry4.Edit;
         DM1.cdsQry4.FieldByName('PRI3DIG').AsString := xpri3dig;
         DM1.cdsQry4.FieldByName('ULT3DIG').AsString := xult3dig;
         If (DM1.cdsQry4.FieldByName('CODCARGOCE').AsString <> DM1.cdsQry4.FieldByName('PRI3DIG').AsString) Or
            (DM1.cdsQry4.FieldByName('DIGMASREPCE').AsString <> DM1.cdsQry4.FieldByName('ULT3DIG').AsString) Then
            xflg := 'S'
         Else
            DM1.cdsQry4.Delete;
         DM1.cdsQry4.Next;
      End;
   End;
   If xflg = 'S' Then
   Begin
      Try
         finccar := Tfinccar.Create(Self);
         finccar.ShowModal;
      Finally
         finccar.Free;
      End;
   End;
// inicio HPP_201105_COB
// insertar registro que indica la programacion para la generacion de la planilla
   //If MessageDlg('¿ Seguro de procesar información para descuento ?', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then


// Inicio: SPP_201402_COB

//   -- CON CRONOGRAMA
      xSQL:='SELECT ASOID FROM CRE301 A WHERE  '+
            'CREFOTORG<TO_DATE(SYSDATE) AND CREESTID=''01'' AND EXISTS (SELECT ASOID FROM CRE302 '+
            'WHERE A.ASOID=ASOID AND A.CREDID=CREDID) ';
      If DM1.CountReg(xSQL) > 0 Then
         Begin
             xSQL:='UPDATE CRE301 A SET CREESTID=''02'',CREESTADO=''POR COBRAR'' '+
                   'WHERE CREFOTORG<TO_DATE(SYSDATE) AND CREESTID=''01'' AND EXISTS (SELECT ASOID FROM CRE302 '+
                   'WHERE A.ASOID=ASOID AND A.CREDID=CREDID) ';
             DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         End;
//   -- SIN CRONOGRAMA
      xSQL:='SELECT ASOID FROM CRE301 A WHERE  '+
            'CREFOTORG<TO_DATE(SYSDATE) AND CREESTID=''01'' AND NOT EXISTS (SELECT ASOID FROM CRE302 '+
            'WHERE A.ASOID=ASOID AND A.CREDID=CREDID) ';
      If DM1.CountReg(xSQL) > 0 Then
         Begin
            MessageDlg('NO SE PUEDE PROGRAMAR GENERACION DE ENVIO, EXISTEN CREDITOS SIN CRONGRAMA,COMINIQUESE CON CREDITOS', mtError, [mbOk], 0);
            Exit;
         End;


// Fin: SPP_201402_COB


   If MessageDlg('¿Confirma que desea Programar el Proceso para descuento ?', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
   Begin
      If rgtipaso.ItemIndex = 0 Then
         xtipaso := 'DO'
      Else
         xtipaso := 'CE';
      Timer1.Enabled := False;
      pnlprecaucion.Visible := False;
      DM1.xcodcon := edtcodcon.Text;
      Screen.Cursor := crHourGlass;
      (*
      //PASOS PARA LA GENERACION DEL ENVIO:

      //1.- limpia proceso de cobranza
      xSql := 'BEGIN PCK_GEN_PLA_CON.SP_LIM_PRO_COB(' + QuotedStr(edtcodcon.Text) + ',' + QuotedStr(xAnopro + xMespro) + ',' + QuotedStr(xtipaso) + '); END;';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);

      //2.- Marca proceso de cobranza del Periodo
      // inicio: HPP_200943_COB por RMEDINA
      // Memorándum 853-2009-DM-COB - SR-2009-0771 - DAD-RM-2009-0132
      // se cambia invocación de procedimiento almacenado, se incluye xtipdescuo tomado del campo TIPDESCUO
      // de la tabla de convenios COB_CON_CAB, como parámetro nuevo.
      // xSql := 'BEGIN PCK_GEN_PLA_CON.SP_MAR_PRO_COB_PER(' + QuotedStr(edtcodcon.Text) + ',' + QuotedStr(xAnopro + xMespro) + ',' + QuotedStr(xtipaso) + '); END;';
      xSql := 'BEGIN PCK_GEN_PLA_CON.SP_MAR_PRO_COB_PER(' + QuotedStr(edtcodcon.Text) + ',' + QuotedStr(xAnopro + xMespro) + ',' + QuotedStr(xtipaso) + ',' + QuotedStr(xtipdescuo) +'); END;';
      // fin: HPP_200943_COB
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);

      //3.- Genera la planilla para el envio
      xSql := 'BEGIN PCK_GEN_PLA_CON.SP_GEN_PLA(' + QuotedStr(edtcodcon.Text) + ',' + QuotedStr(xAnopro) + ',' + QuotedStr(xMespro)
         + ',' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(xtipaso) + ',' + QuotedStr(xtipdescuo) + '); END;';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);

      Screen.Cursor := crDefault;
      MessageDlg('Información del convenio generada satisfactoriamente', mtInformation, [mbOk], 0);
      *)

      xSql := 'SELECT COUNT(*) CANT '
             +'  FROM APO201 APO '
             +' WHERE  ';
      if (xtipaso='DO') then
         xSql := xSql + ' ASOTIPID IN (''CO'', ''DO'', ''VO'') '
      else // xtipaso = 'CE'
         xSql := xSql + ' ASOTIPID = ''CE'' ';
      xSql := xSql + ' AND FALLECIDO = ''N'' '
             +'   AND EXISTS (SELECT A.IDECON '
             +'                 FROM COB_CON_CAB A, COB_CON_DET B '
             +'                WHERE A.IDECON = ' + QuotedStr(edtcodcon.Text)
             +'                  AND A.IDECON = B.IDECON '
             +'                  AND B.UPROID = APO.UPROID '
             +'                  AND B.UPAGOID = APO.UPAGOID '
             +'                  AND B.USEID = APO.USEID) ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xCantReg := DM1.cdsQry.FieldByName('CANT').AsInteger;
      //if (xCantReg>1000) then
      if (xCantReg>0) then// para q todo se genere en la noche
      begin
        xTurno := 'N';
        xMsg:= 'Se programo la Generación para el Turno : NOCHE';
      end
      else
      begin
        xTurno := 'T';
        xMsg:= 'Se programo la Generación para el Turno : TARDE';
      end;
      xSql := 'INSERT INTO COB_PRO_GEN_PLA_CON '
             +'    (IDECON, ANOPRO, MESPRO, ASOTIPID, '
             +'     TIPAUTDESCUO, USUARIO, FREG, HREG, '
             +'     ESTADO, NUMREG, TURNO) '
             +' VALUES '
             +'    (' + QuotedStr(edtcodcon.Text) + ',' + QuotedStr(xAnopro) + ', ' + QuotedStr(xMespro) + ', ' + QuotedStr(xtipaso) + ', '
             +'     ' + QuotedStr(xtipdescuo) + ', ' + QuotedStr(DM1.wUsuario) + ', TRUNC(SYSDATE), SYSDATE, '
             +'      ''PROGR'',' + inttostr(xCantReg) + ', ' + QuotedStr(xTurno) + ') ';

      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      Screen.Cursor := crDefault;
      MessageDlg(xMsg, mtInformation, [mbOk], 0);
      FGeninfpla.Close;
   End;
// fin HPP_201105_COB
End;

Procedure TFGeninfpla.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      If (ActiveControl Is TCheckBox) Then
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End
      Else
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End;
End;

Procedure TFGeninfpla.btnprevioClick(Sender: TObject);
Var
   xtipaso, xaplica, xsql: String;
   xtotal: Double;
   xCantReg : integer; //HPP_201105_COB
Begin
   xAnopro := DM1.StrZero(seanopro.Text, 4);
   xMespro := DM1.StrZero(semespro.Text, 2);
   If rgtipaso.ItemIndex = 0 Then
      xtipaso := 'DO'
   Else
      xtipaso := 'CE';
  //limpiaantesdeprocesar;
   If Trim(edtcodcon.Text) = '' Then
   Begin
      MessageDlg('Ingrese el nombre del convenio', mtInformation, [mbOk], 0);
      edtdescon.SetFocus;
      Exit;
   End;
   If Trim(seanopro.Text) = '' Then
   Begin
      seanopro.SetFocus;
      MessageDlg('Ingrese el año a procesar', mtInformation, [mbOk], 0);
      Exit;
   End;
   If Trim(semespro.Text) = '' Then
   Begin
      semespro.SetFocus;
      MessageDlg('Ingrese el mes a procesar', mtInformation, [mbOk], 0);
      Exit;
   End;
   If rgtipaso.ItemIndex = -1 Then
   Begin
      semespro.SetFocus;
      MessageDlg('Seleccione tipo de asociado', mtInformation, [mbOk], 0);
      Exit;
   End;
  // Verificando los procesos de cobranzas
   Try
      Finfprocob := TFinfprocob.Create(Self);
      Finfprocob.ShowModal;
   Finally
      Finfprocob.Free;
   End;

// inicio HPP_201105_COB
// validar si el proceso ya esta programado
   xSql := 'SELECT COUNT(*) CANT '
          +'  FROM COB_PRO_GEN_PLA_CON '
          +' WHERE IDECON = ' + QuotedStr(edtcodcon.Text)
          +'   AND ANOPRO = ' + QuotedStr(xAnopro)
          +'   AND MESPRO = ' + QuotedStr(xMespro)
          +'   AND ASOTIPID = ' + QuotedStr(xtipaso)
          +'   AND ESTADO = ''PROGR''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xCantReg := DM1.cdsQry.FieldByName('CANT').AsInteger;
   if (xCantReg>0) then // PROGRAMADO
     begin
        showmessage('Ya existe un Proceso Programado para estos parametros');
        Exit;
     end;
// fin HPP_201105_COB

   xSql := 'SELECT * FROM COB204 '
         + ' WHERE IDECON  = ' + QuotedStr(edtcodcon.Text)
         + '  AND PERIODO  = ' + QuotedStr(Trim(xAnopro) + Trim(xMesPro))
         + '  AND ASOTIPID = ' + QuotedStr(xtipaso)
         + '  AND ESTADO  <> ''3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsql);
   DM1.cdsQry.Open;

   If DM1.cdsQry.RecordCount > 0 Then
   Begin
// inicio HPP_201105_COB
//      If MessageDlg('Información de este convenio ya fue procesado en el mes,'#13'¿Seguro que desea volver a generar ?', mtconfirmation, [mbYes, MbNo], 0) = mrNo Then
      If MessageDlg('Información de este convenio ya fue procesado en el mes,'#13'¿Seguro que desea volver a Programar el Proceso ?', mtconfirmation, [mbYes, MbNo], 0) = mrNo Then
// fin HPP_201105_COB
         Exit;
   End;

   Screen.Cursor := crHourGlass;
   xsql := 'SELECT A.USEID, A.USENOM, A.CODCARGODO, A.DIGMASREPDO, A.CODCARGOCE, A.DIGMASREPCE,'
         + '       B.CANTIDAD, A.DPTOID '
         + '  FROM APO101 A, (SELECT B.UPROID, B.UPAGOID, B.USEID, COUNT(*) CANTIDAD'
         + '                    FROM COB_CON_DET A, APO201 B '
         + '                   WHERE A.IDECON   = ' + QuotedStr(edtcodcon.Text)
         + '                     AND A.UPROID   = B.UPROID '
         + '                     AND A.UPAGOID  = B.UPAGOID '
         + '                     AND A.USEID    = B.USEID '
         + '                     AND B.ASOTIPID = ' + QuotedStr(xtipaso)
         + '                   GROUP BY B.UPROID, B.UPAGOID, B.USEID '
         + '                 ) B'
         + ' WHERE A.UPROID  = B.UPROID '
         + '   AND A.UPAGOID = B.UPAGOID '
         + '   AND A.USEID   = B.USEID';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsql);
   DM1.cdsQry2.Open;
   DM1.cdsQry2.First;
   xtotal := 0;
   While Not DM1.cdsQry2.Eof Do
   Begin
      xtotal := xtotal + DM1.cdsQry2.FieldByName('CANTIDAD').AsInteger;
      DM1.cdsQry2.Next;
   End;
   dbgugels.Selected.Clear;
   dbgugels.Selected.Add('USEID'#9'3'#9'Unidad~Gestión'#9#9);
   dbgugels.Selected.Add('USENOM'#9'28'#9'Descripción~Gestión'#9#9);
   dbgugels.Selected.Add('CODCARGODO'#9'3'#9'pri.tres~dig.reg.(DO).'#9#9);
   dbgugels.Selected.Add('DIGMASREPDO'#9'3'#9'últ.tres~dig.reg.(DO)'#9#9);
   dbgugels.Selected.Add('CODCARGOCE'#9'3'#9'pri.tres~dig.reg.(CE)'#9#9);
   dbgugels.Selected.Add('DIGMASREPCE'#9'3'#9'últ.tres~dig.reg.(CE)'#9#9);

   dbgugels.Selected.Add('CANTIDAD'#9'12'#9'Cantidad~asociados'#9#9);
   dbgugels.ApplySelected;
   TNumericField(DM1.cdsQry2.FieldByName('CANTIDAD')).DisplayFormat := '##,##0';
   dbgugels.ColumnByName('CANTIDAD').FooterValue := FloatToStrF(xtotal, ffNumber, 5, 0);
   xaplica := '';
   If DM1.cdsConvenio.FieldByName('APLIDOC').AsString = 'S' Then xaplica := xaplica + 'DO';
   If DM1.cdsConvenio.FieldByName('APLICES').AsString = 'S' Then xaplica := xaplica + ' / CE';
   meaplica.Text := xaplica;
   xaplica := '';
   If DM1.cdsConvenio.FieldByName('APLICUO').AsString = 'S' Then xaplica := xaplica + 'CUO';
   If DM1.cdsConvenio.FieldByName('APLIAPO').AsString = 'S' Then xaplica := xaplica + ' / APO';
   meaplicuoapo.Text := xaplica;
   mefecini.Text := DM1.cdsConvenio.FieldByName('FECINI').AsString;
   mefecfin.Text := DM1.cdsConvenio.FieldByName('FECFIN').AsString;
   mediacorte.Text := DM1.cdsConvenio.FieldByName('DIACOR').AsString;
   If DM1.cdsConvenio.FieldByName('DIAFIN').AsInteger < 90 Then
   Begin
      lblconvenio.Caption := DM1.cdsConvenio.FieldByName('DIAFIN').AsString + ' DIAS PARA EL VENCIMIENTO DEL CONVENIO';
      lblconvenio.Alignment := taCenter;
      Timer1.Enabled := True;
   End;
   If DM1.cdsQry2.RecordCount > 0 Then btngenerar.Enabled := True;
   Screen.Cursor := crDefault;

End;

Procedure TFGeninfpla.Timer1Timer(Sender: TObject);
Begin
   If pnlprecaucion.Visible = True Then
      pnlprecaucion.Visible := False
   Else
      pnlprecaucion.Visible := True;
End;

Procedure TFGeninfpla.limpiaantesdeprocesar;
Begin
   btngenerar.Enabled := False;
   Timer1.Enabled := False;
   pnlprecaucion.Visible := False;
   mefecini.Text := '';
   mefecfin.Text := '';
   mediacorte.Text := '';
   meaplica.Text := '';
   meaplicuoapo.Text := '';
   edtcodcon.Text := '';
   seanopro.Text := Copy(DateToStr(DM1.FechaSys), 7, 4);
   semespro.Text := Copy(DateToStr(DM1.FechaSys), 4, 2);
   If DM1.cdsQry2.Active = True Then DM1.cdsQry2.Close;
End;

Procedure TFGeninfpla.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsConvenio.Close;
End;

Procedure TFGeninfpla.edtdesconExit(Sender: TObject);
Var
   xSql, xfecha: String;
Begin
   If Trim(edtdescon.Text) = '' Then
   Begin
      MessageDlg('Ingrese criterio de busqueda', mtInformation, [mbOk], 0);
      edtdescon.SetFocus;
      Exit;
   End;
   limpiaantesdeprocesar;
   Timer1.Enabled := False;
   pnlprecaucion.Visible := False;
   btngenerar.Enabled := False;
   xfecha := Copy(DateToStr(date), 7, 4) + Copy(DateToStr(date), 4, 2) + Copy(DateToStr(date), 1, 2);
   xSql := 'SELECT A.*, ROUND(A.FECFIN - SYSDATE,0) DIAFIN FROM COB_CON_CAB A WHERE CODESTCON IN (''02'',''21'')'
      + ' AND ' + QuotedStr(xfecha) + ' > TO_CHAR(FECINI, ''YYYYMMDD'') AND ' + QuotedStr(xfecha) + ' < TO_CHAR(FECFIN, ''YYYYMMDD'')'
      + ' AND DESCON LIKE ' + QuotedStr('%' + Trim(edtdescon.Text) + '%');
   DM1.cdsConvenio.Close;
   DM1.cdsConvenio.DataRequest(xSql);
   DM1.cdsConvenio.Open;
   Try
      FSelCon := TFSelCon.Create(Self);
      FSelCon.ShowModal;
   Finally
      FSelCon.Free;
   End;
   If Trim(edtcodcon.Text) = '' Then
   Begin
      MessageDlg('Ingrese el nombre del convenio', mtInformation, [mbOk], 0);
      edtdescon.Text := '';
      edtdescon.SetFocus;
      Exit;
   End;
End;

Procedure TFGeninfpla.FormActivate(Sender: TObject);
Begin
   DM1.xHis := '1';
   limpiaantesdeprocesar;
   edtdescon.SetFocus;
End;

Procedure TFGeninfpla.edtdesconChange(Sender: TObject);
Begin
   If Trim(edtdescon.Text) = '' Then limpiaantesdeprocesar;
   seanopro.Text := Copy(DateToStr(DM1.FechaSys), 7, 4);
   semespro.Text := Copy(DateToStr(DM1.FechaSys), 4, 2);
End;

End.

