//inicio HPP_201105_COB
//Visor de Procesos programados
Unit COB987A;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, Mask, wwdbedit, Wwdbspin, ExtCtrls, StdCtrls, Buttons, DBCtrls,
    wwdblook, Grids, Wwdbigrd, Wwdbgrid, dbcgrids;

Type
    TFProgProcInfpla = Class(TForm)
        GroupBox1: TGroupBox;
        Label3: TLabel;
        Label4: TLabel;
        rgtipaso: TRadioGroup;
        seanopro: TwwDBSpinEdit;
        semespro: TwwDBSpinEdit;
        btnBuscar: TBitBtn;
        dbCboEstado: TwwDBLookupCombo;
        dbgPrincipal: TwwDBGrid;
        gbAnular: TGroupBox;
        Label1: TLabel;
        btnAnular: TBitBtn;
        mObservacion: TMemo;
        Procedure FormCreate(Sender: TObject);
        Procedure btnBuscarClick(Sender: TObject);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
        Procedure dbCboEstadoChange(Sender: TObject);
        Procedure rgtipasoClick(Sender: TObject);
        Procedure seanoproChange(Sender: TObject);
        Procedure semesproChange(Sender: TObject);
        Procedure btnAnularClick(Sender: TObject);
    Private
        Procedure limpiar;
        Procedure pintarCabeceraGrid;
    { Private declarations }
    Public
    { Public declarations }
    End;

Var
    FProgProcInfpla: TFProgProcInfpla;

Implementation

Uses COBDM1;

{$R *.dfm}
(******************************************************************************)
Procedure TFProgProcInfpla.FormCreate(Sender: TObject);
Var
    xSql: String;
Begin
    seanopro.Text := Copy(DateToStr(DM1.FechaSys), 7, 4);
    semespro.Text := Copy(DateToStr(DM1.FechaSys), 4, 2);

    xSql := 'SELECT CODIGO,DESCRIPCION FROM COB_PRO_GEN_PLA_CON_EST';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    dbCboEstado.LookupTable := DM1.cdsQry2;
    dbCboEstado.LookupField := 'DESCRIPCION';
    dbCboEstado.Selected.Clear;
    dbCboEstado.Selected.Add('CODIGO'#9'20'#9'Código'#9'F');
    dbCboEstado.Selected.Add('DESCRIPCION'#9'40'#9'Descripción'#9'F');
    dbgPrincipal.DataSource := DM1.dsQry3;
    limpiar();
End;

(******************************************************************************)
Procedure TFProgProcInfpla.limpiar();
Var
    xSql: String;
Begin
    //INICIO: HPP_201114_COB
    xSql := 'SELECT ROWID ROW_ID, IDECON, ANOPRO, MESPRO, ASOTIPID, TIPAUTDESCUO, NUMREG, TURNO, '
        + '         USUARIO, FREG, HREG, ESTADO, INIPRO, FINPRO, FECANU, OBSANU, USUANU, '
        + '         USUPROCOB, FECPROGPROCOB, INIPROCOB, FINPROCOB, FECANUPROCOB, OBSANUPROCOB, USUANUPROCOB '
        + '         ,'' '' DESCON '
        + '    FROM COB_PRO_GEN_PLA_CON '
        + '   WHERE 1 = 2';
    //FIN: HPP_201114_COB
    DM1.cdsQry3.Close;
    DM1.cdsQry3.DataRequest(xSql);
    DM1.cdsQry3.Open;
    pintarCabeceraGrid();
    gbAnular.Enabled := false;
    mObservacion.Text := '';
End;
(******************************************************************************)
Procedure TFProgProcInfpla.pintarCabeceraGrid();
Begin
    dbgPrincipal.Selected.Clear;
    //INICIO: HPP_201114_COB
    dbgPrincipal.Selected.Add('IDECON'#9'8'#9'Cod.Convenio');
    dbgPrincipal.Selected.Add('DESCON'#9'25'#9'Convenio');
    //FIN: HPP_201114_COB
    dbgPrincipal.Selected.Add('ANOPRO'#9'4'#9'Año~Proc.');
    dbgPrincipal.Selected.Add('MESPRO'#9'4'#9'Mes~Proc.');
    dbgPrincipal.Selected.Add('MESPRO'#9'4'#9'Mes~Proc.');
    dbgPrincipal.Selected.Add('ASOTIPID'#9'4'#9'Tip~Aso');
    dbgPrincipal.Selected.Add('ESTADO'#9'15'#9'Estado');

    If Trim(dbCboEstado.Text) = 'PROGR' Then
    Begin
        dbgPrincipal.Selected.Add('USUARIO'#9'10'#9'Usuario~Prog.Gen.');
        dbgPrincipal.Selected.Add('HREG'#9'23'#9'Fecha de Programación~de Proceso de Generación');
        dbgPrincipal.Selected.Add('TURNO'#9'5'#9'Turno de~Proceso');
    End
    Else
        If Trim(dbCboEstado.Text) = 'PROCE' Then
        Begin
            dbgPrincipal.Selected.Add('USUARIO'#9'10'#9'Usuario~Prog.Gen.');
            dbgPrincipal.Selected.Add('INIPRO'#9'23'#9'Inicio de~Proceso de Generación');
            dbgPrincipal.Selected.Add('FINPRO'#9'23'#9'Fin de~Proceso de Generación');
        End
        Else
            If Trim(dbCboEstado.Text) = 'ANULA' Then
            Begin
                dbgPrincipal.Selected.Add('USUANU'#9'20'#9'Usuario~Anul.Gen.');
                dbgPrincipal.Selected.Add('FECANU'#9'23'#9'Fecha de Anulacion~de Proceso de Generación');
                dbgPrincipal.Selected.Add('OBSANU'#9'40'#9'Motivo de Anulacion~de Proceso de Generación');
            End
            Else
                If Trim(dbCboEstado.Text) = 'PROGRPROCOB' Then
                Begin
                    dbgPrincipal.Selected.Add('USUPROCOB'#9'10'#9'Usuario~Prog.Pro.Cob.');
                    dbgPrincipal.Selected.Add('FECPROGPROCOB'#9'23'#9'Fecha de Programación~de Proceso de Cobranza');
                End
                Else
                    If Trim(dbCboEstado.Text) = 'PROCEPROCOB' Then
                    Begin
                        dbgPrincipal.Selected.Add('USUPROCOB'#9'10'#9'Usuario~Prog.Pro.Cob.');
                        dbgPrincipal.Selected.Add('INIPROCOB'#9'23'#9'Inicio de~Proceso de Cobranza');
                        dbgPrincipal.Selected.Add('FINPROCOB'#9'23'#9'Fin de~Proceso de Cobranza');
                    End
                    Else
                        If Trim(dbCboEstado.Text) = 'ANULAPROCOB' Then
                        Begin
                            dbgPrincipal.Selected.Add('USUANUPROCOB'#9'20'#9'Usuario~Anul.Pro.Cob.');
                            dbgPrincipal.Selected.Add('FECANUPROCOB'#9'23'#9'Fecha Anulación de~Proceso de Cobranza.');
                            dbgPrincipal.Selected.Add('OBSANUPROCOB'#9'40'#9'Motivo Anulación de~Proceso de Cobranza.');
                        End;
    dbgPrincipal.ApplySelected;
End;
(******************************************************************************)
Procedure TFProgProcInfpla.btnBuscarClick(Sender: TObject);
Var
    xSql: String;
    xAnoPro, xMesPro, xAsoTipId: String;
Begin
    xAnoPro := DM1.StrZero(seanopro.Text, 4);
    xMesPro := DM1.StrZero(semespro.Text, 2);
    If rgtipaso.ItemIndex = 0 Then
        xAsoTipId := 'DO'
    Else
        xAsoTipId := 'CE';
    If Trim(dbCboEstado.Text) = '' Then
    Begin
        MessageDlg('Seleccione el estado de los procesos que desea visualizar', mtInformation, [mbOk], 0);
        dbCboEstado.SetFocus;
        Exit;
    End;

    //INICIO: HPP_201114_COB
    xSql := 'SELECT A.ROWID ROW_ID, A.IDECON, A.ANOPRO, A.MESPRO, A.ASOTIPID, A.TIPAUTDESCUO, A.NUMREG, A.TURNO, '
        + '       A.USUARIO, A.FREG, A.HREG, A.ESTADO, A.INIPRO, A.FINPRO, A.FECANU, A.OBSANU, A.USUANU, '
        + '       A.USUPROCOB, A.FECPROGPROCOB, A.INIPROCOB, A.FINPROCOB, A.FECANUPROCOB, A.OBSANUPROCOB, A.USUANUPROCOB '
        + '       ,B.DESCON'
        + '  FROM COB_PRO_GEN_PLA_CON A,(SELECT IDECON, DESCON FROM COB_CON_CAB WHERE CODESTCON IN (''02'',''21'')) B '
        + ' WHERE A.ANOPRO = ' + QuotedStr(xAnoPro)
        + '   AND A.MESPRO = ' + QuotedStr(xMesPro)
        + '   AND A.ASOTIPID = ' + QuotedStr(xAsoTipId)
        + '   AND A.ESTADO = ' + QuotedStr(Trim(dbCboEstado.Text))
        + '   AND A.IDECON = B.IDECON(+) '
        + ' ORDER BY A.HREG DESC ';
    //FIN: HPP_201114_COB
    DM1.cdsQry3.Close;
    DM1.cdsQry3.DataRequest(xSql);
    DM1.cdsQry3.Open;
    pintarCabeceraGrid();
    gbAnular.Enabled := (dbCboEstado.Text = 'PROGR');
End;

(******************************************************************************)
Procedure TFProgProcInfpla.FormClose(Sender: TObject;
    Var Action: TCloseAction);
Begin
    DM1.cdsQry2.Close;
    DM1.cdsQry2.Filter := '';
    DM1.cdsQry2.IndexFieldNames := '';

    DM1.cdsQry3.Close;
    DM1.cdsQry3.Filter := '';
    DM1.cdsQry3.IndexFieldNames := '';

    Action := caFree;
End;

(******************************************************************************)
Procedure TFProgProcInfpla.dbCboEstadoChange(Sender: TObject);
Begin
    limpiar();
End;

(******************************************************************************)
Procedure TFProgProcInfpla.rgtipasoClick(Sender: TObject);
Begin
    limpiar();
End;

(******************************************************************************)
Procedure TFProgProcInfpla.seanoproChange(Sender: TObject);
Begin
    limpiar();
End;

(******************************************************************************)
Procedure TFProgProcInfpla.semesproChange(Sender: TObject);
Begin
    limpiar();
End;

(******************************************************************************)
Procedure TFProgProcInfpla.btnAnularClick(Sender: TObject);
Var
    xSql: String;
Begin
    If (DM1.cdsQry3.RecordCount <= 0) Then
    Begin
        showmessage('Seleccione un Programa');
        exit;
    End;
    If (DM1.cdsQry3.FieldByName('ESTADO').Value <> 'PROGR') Then
    Begin
        showmessage('Solo se pueden anular los registros Programados!');
        exit;
    End;
    If (trim(mObservacion.Text) = '') Then
    Begin
        showmessage('Ingrese el Motivo de la Anulacion!');
        mObservacion.SetFocus;
        exit;
    End;
    If MessageDlg('Confirma que desea Anular el Registro Programado con Convenio : ' + DM1.cdsQry3.FieldByName('IDECON').Value, mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
    Begin
        xSql := 'UPDATE COB_PRO_GEN_PLA_CON '
            + '     SET ESTADO = ' + QuotedStr('ANULA')
            + '        ,FECANU = SYSDATE '
            + '        ,OBSANU = ' + QuotedStr(UpperCase(Trim(mObservacion.Text)))
            + '        ,USUANU = ' + QuotedStr(DM1.wUsuario)
            + '   WHERE ROWID = ' + QuotedStr(DM1.cdsQry3.FieldByName('ROW_ID').Value);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        showmessage('Se anulo el Proceso. Lo puede encontrar dentro de los Registros Anulados!');
        limpiar();
        btnBuscarClick(btnBuscar);
    End;
End;
(******************************************************************************)
End.
//fin HPP_201105_COB
