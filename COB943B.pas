//Inicio de Estámdares 01/08/2011
//Unidad             : COB943B
//Formulario         : FAPRDEV
//Fecha de Creación  :
//Autor              : Ricardo Medina Zavaleta
//Objetivo           : Aprobación de Solicitud de Devoluciones y/o Aplicaciones de pagos

//Actualizaciones    :
//HPP_200903_COB     : 11/03/2009 Desembolso en Efectivo en otras oficinas
//HPP_200904_COB     : Opción de modificación de extornar todo el préstamo, anulación de la Solicitud de Devolución/Aplicación
//HPP_200928_COB     : Se adiciona la generación de hoja Excel, se quita el código del evento EXIT de la fecha de inicio y se pone en la fecha final
//HPP_200904_PRE     : Si se modifica que no se extorne el préstamo se finaliza la Devolución/aplicación
//                     Se modifica el filtrado de data de la TABLA PRE_APR_DEV
//                     Se pone la restriccion que el monto a devolver no sea mayor al importe a revertir
//                     Se modifica algunas mensajes
//                     Se adicionas verificaciones para consistenciar mejor el proceso.
//HPP_201113_COB     : Devolución de excesos al Fondo Solidario de Contingencia
//HPC_201129_COB     : Se deshabilita la posibilidad de modificar los importes de devolver o aplicar
//HPP_201130_COB     : Se realiza el pase a producción a partir del pase HPC_201129_COB
//HPC_201707_COB     : Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
//HPC_201735_COB     : Mejoras en el proceso de Aprobación de Devoluciones en efectivo
//HPC_201806_COB     : Exceso en Cronogramas Cerrados (ONP, BANCO)

Unit COB943B;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Wwdbdlg, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
   ComCtrls, fcButton, fcImgBtn, fcShapeBtn, wwdblook, Mask, wwdbedit,
   Wwdbspin, DB, DBClient, DBGrids, Buttons, ppComm, ppRelatv, ppProd,
   ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppDB, ppDBPipe,
   ppDBBDE, wwExport, shellapi, wwriched, wwdbdatetimepicker;

Type
   TfAprDev = Class(TForm)
      Panel1: TPanel;
      Label1: TLabel;
      grpDevPreAprobadas: TGroupBox;
      dbgDevPreAprobadas: TwwDBGrid;
      grbAprobacion: TGroupBox;
      pnlSeleccion: TPanel;
      Shape1: TShape;
      Label7: TLabel;
      GbAsociados: TGroupBox;
      BitMostrar: TBitBtn;
      gbBuscar: TGroupBox;
      edtBuscar: TEdit;
      dtgAsociado: TwwDBGrid;
      BitSalir: TBitBtn;
      rbtApeNom: TRadioButton;
      rbtDni: TRadioButton;
      rbtCuenta: TRadioButton;
      rbtCodMod: TRadioButton;
      Button1: TButton;
      grbMotivoDev: TGroupBox;
      MotivoDevolucion: TwwDBRichEdit;
      btAprueba: TBitBtn;
      btDesaprueba: TBitBtn;
      btOtro: TBitBtn;
      Shape2: TShape;
      Shape3: TShape;
      Label2: TLabel;
      Label3: TLabel;
      Shape4: TShape;
      Label4: TLabel;
      grbMotivoDesap: TGroupBox;
      memMotivoDesapro: TwwDBRichEdit;
      Shape5: TShape;
      Label5: TLabel;
      grbPorFecha: TGroupBox;
      dtpFechaIni: TwwDBDateTimePicker;
      rdgFiltro: TRadioGroup;
      grbAsociados: TGroupBox;
      EdtCodMod: TEdit;
      BitBuscar: TBitBtn;
      Panel3: TPanel;
      edtNomGen: TEdit;
      btnFlitrar: TBitBtn;
      fcShapeBtn2: TfcShapeBtn;
      Shape6: TShape;
      Label6: TLabel;
      fcShapeBtn1: TfcShapeBtn;
      pnlAdvertencias: TPanel;
      Shape15: TShape;
      Label48: TLabel;
      Shape16: TShape;
      lblextorno: TLabel;
      wwDBGrid2: TwwDBGrid;
      BitBtn5: TBitBtn;
      CDSAPRUEBA: TClientDataSet;
      DSAPRUEBA: TDataSource;
      BitBtn1: TBitBtn;
      pnlModificaciones: TPanel;
      BitBtn3: TBitBtn;
      BitBtn4: TBitBtn;
      BitBtn6: TBitBtn;
      Shape8: TShape;
      Label11: TLabel;
      pnlTipodesembolso: TPanel;
      Shape9: TShape;
      Label21: TLabel;
      lblAgencia: TLabel;
      lblCtaAhorros: TLabel;
      Label12: TLabel;
      DBLkuCTipDes: TwwDBLookupCombo;
      EdtTipDes: TEdit;
      DBLkCDAgencias: TwwDBLookupComboDlg;
      EdtCodAgen: TEdit;
      EdtDepGir: TEdit;
      BtnCerrar: TButton;
      BtnSalir: TBitBtn;
      EdtCtaAhorros: TEdit;
      EdtSitCta: TEdit;
      pnlOficinas: TPanel;
      Label13: TLabel;
      Panel4: TPanel;
      EdtOfiDes: TEdit;
      DBLkOfiDes: TwwDBLookupCombo;
      Button2: TButton;
      pnlModifica: TPanel;
      Shape7: TShape;
      Label24: TLabel;
      Label10: TLabel;
      lblImpRev: TLabel;
      lblSuma: TLabel;
      GroupBox1: TGroupBox;
      Label8: TLabel;
      Label9: TLabel;
      edtDevolver: TEdit;
      edtAplicar: TEdit;
      btnAceptarModifica: TBitBtn;
      BitBtn2: TBitBtn;
      dtpFechaFin: TwwDBDateTimePicker;
      Label14: TLabel;
      rdbProcDev: TRadioButton;
      rdbDesaprobado: TRadioButton;
      rdbAprobado: TRadioButton;
      rdbAnulado: TRadioButton;
      rdbPorAprobar: TRadioButton;
      fcShapeBtn3: TfcShapeBtn;
      rdbTodos: TRadioButton;
      BitBtn7: TBitBtn;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
    Panel6: TPanel;
    edtMotivoDev: TEdit;
    dblMotivoDev: TwwDBLookupCombo;
    Label15: TLabel;
    grborigino: TGroupBox;
    dblOrigenDev: TwwDBLookupCombo;
    Panel2: TPanel;
    edtOrigeanDev: TEdit;
    pnlDevxOFi: TPanel;
    Shape10: TShape;
    Shape11: TShape;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Shape12: TShape;
    lblactual: TLabel;
    lbldevxofi: TLabel;
//Final HPC_201707_COB
//Inicio HPC_201735_COB: nuevo objeto
    lblCargo: TLabel;
//Fin HPC_201735_COB
      Procedure BitMostrarClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgAsociadoDblClick(Sender: TObject);
      Procedure crgDevPreAprob();
      Procedure BitBuscarClick(Sender: TObject);
      Procedure rbtDniClick(Sender: TObject);
      Procedure rbtCuentaClick(Sender: TObject);
      Procedure rbtCodModClick(Sender: TObject);
      Procedure rbtApeNomClick(Sender: TObject);
      Procedure LimpiaGrids();
      Procedure FormActivate(Sender: TObject);
      Procedure dbgDevPreAprobadasDblClick(Sender: TObject);
      Procedure btDesapruebaClick(Sender: TObject);
      Procedure EdtCodModExit(Sender: TObject);
      Procedure btOtroClick(Sender: TObject);
      Procedure dbgDevPreAprobadasDrawDataCell(Sender: TObject; Const Rect: TRect; Field: TField; State: TGridDrawState);
      Procedure btApruebaClick(Sender: TObject);
      Procedure rdgFiltroClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnFlitrarClick(Sender: TObject);
      Procedure fcShapeBtn2Click(Sender: TObject);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure edtDevolverKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtAplicarKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtDevolverExit(Sender: TObject);
      Procedure btnAceptarModificaClick(Sender: TObject);
      Procedure edtAplicarExit(Sender: TObject);
      Procedure edtDevolverChange(Sender: TObject);
      Procedure edtAplicarChange(Sender: TObject);
      Procedure BitBtn5Click(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure BitBtn3Click(Sender: TObject);
      Procedure BitBtn4Click(Sender: TObject);
      Procedure BtnSalirClick(Sender: TObject);
      Procedure DBLkuCTipDesChange(Sender: TObject);
      Procedure DBLkuCTipDesExit(Sender: TObject);
      Procedure DBLkCDAgenciasChange(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure DBLkOfiDesChange(Sender: TObject);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure BtnCerrarClick(Sender: TObject);
      Procedure Button2Click(Sender: TObject);
      Function TotalPordevolver(): currency;
      Procedure BitBtn6Click(Sender: TObject);
      procedure fcShapeBtn3Click(Sender: TObject);
      Procedure Opciones(AOptions: TwwExportOptions);
      procedure rdbProcDevClick(Sender: TObject);
      procedure rdbDesaprobadoClick(Sender: TObject);
      procedure rdbAprobadoClick(Sender: TObject);
      procedure rdbPorAprobarClick(Sender: TObject);
      procedure rdbAnuladoClick(Sender: TObject);
      procedure rdbTodosClick(Sender: TObject);
      procedure dtpFechaFinExit(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BitBtn7Click(Sender: TObject);
      procedure dbgDevPreAprobadasCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
      procedure Button1Click(Sender: TObject);
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
    procedure dblOrigenDevExit(Sender: TObject);
    procedure dblOrigenDevChange(Sender: TObject);
    procedure dblMotivoDevExit(Sender: TObject);
    procedure dblMotivoDevChange(Sender: TObject);
    procedure dbgDevPreAprobadasRowChanged(Sender: TObject);
//Final HPC_201707_COB
   Private
    { Private declarations }
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
    Function verificaDevxOfi():Boolean;
//Final HPC_201707_COB
//Inicio HPC_201735_COB: Nuevas funciones
    Function GetMensajeApr():string;
    Function GetNivApr():string;
    Function GetIsValidCargo():Boolean;
    Function GetIsApproved():Boolean;
//Fin HPC_201735_COB
   Public
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   vforpagid : String;
//Final HPC_201707_COB
   //Inicio HPC_201735_COB: Nuevas variables públicas
   vCargo: String;
   vNivApr: String;
   //Fin HPC_201735_COB
    { Public declarations }
   End;

Var
   fAprDev: TfAprDev;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TfAprDev.BitMostrarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If Length(Trim(edtBuscar.Text)) > 0 Then
   Begin
      If rbtApeNom.Checked Then
         xSQL := 'SELECT * FROM APO201 WHERE ASOAPENOMDNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');

      If rbtDni.Checked Then
         xSQL := 'SELECT * FROM APO201 WHERE ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');

      If rbtCuenta.Checked Then
         xSQL := 'SELECT * FROM APO201 WHERE ASONCTA LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');

      If rbtCodMod.Checked Then
         xSQL := 'SELECT * FROM APO201 WHERE ASOCODMOD LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');

      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest(xSQL);
      DM1.cdsAso.Open;
   End
   Else
   Begin
      MessageDlg('Debe Ingresar Un Criterio Para La Busqueda', mtError, [mbOk], 0);
      edtBuscar.SetFocus;
   End;
End;

Procedure TfAprDev.BitSalirClick(Sender: TObject);
Begin
   pnlSeleccion.Visible := False;
   pnlSeleccion.Top := 10;
   pnlSeleccion.Left := 8;
   grbAsociados.Enabled := True;
//grbacciones.Enabled  := True;
End;

//Carga Devoluciones Pre Aprobadas
Procedure TfAprDev.crgDevPreAprob;
Var
   XSQL: String;
Begin
  //XSQL:= 'Select substr(a.credid,9,7) credito,a.* from PRE_APR_DEV a where Asoid='''+ DM1.cdsAso.FieldByname('ASOID').ASSTRING+'''AND NVL(FLAANU,''X'')<>''S'' ';
   XSQL := 'Select substr(a.credid,9,7) credito,a.* '
      + 'from PRE_APR_DEV a '
      + 'where Asoid=''' + DM1.cdsAso.FieldByname('ASOID').ASSTRING + ''' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   dbgDevPreAprobadasRowChanged(Self);
//Final HPC_201707_COB   
   dbgDevPreAprobadas.Selected.Clear;
   dbgDevPreAprobadas.Selected.Add('ESTADO'#9'25'#9'Estado');
   dbgDevPreAprobadas.Selected.Add('ASOAPENOM'#9'35'#9'Nombres');
   dbgDevPreAprobadas.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.');
   dbgDevPreAprobadas.Selected.Add('CREDITO'#9'7'#9'Nº Crédito');
   dbgDevPreAprobadas.Selected.Add('TIPCREID'#9'3'#9'T.Cred.');
   dbgDevPreAprobadas.Selected.Add('IMPDEV'#9'8'#9'Imp.Devo');
   dbgDevPreAprobadas.Selected.Add('IMPAPL'#9'8'#9'Imp.Apli');
   dbgDevPreAprobadas.Selected.Add('FLAEXTPRE'#9'3'#9'Ext.');
   dbgDevPreAprobadas.Selected.Add('FORPAGID'#9'2'#9'F.Pag.');
   dbgDevPreAprobadas.Selected.Add('AGEBAN'#9'10'#9'Agencia');
   dbgDevPreAprobadas.Selected.Add('USUCRE'#9'20'#9'Usuario~Créditos');
   dbgDevPreAprobadas.Selected.Add('FECCRE'#9'14'#9'Fecha~Otorgamiento');
   dbgDevPreAprobadas.Selected.Add('HORCRE'#9'14'#9'Hora~Crédito');
   dbgDevPreAprobadas.Selected.Add('FLAAPR'#9'6'#9'Indica~Aprob');
   dbgDevPreAprobadas.Selected.Add('USUAPR'#9'20'#9'Usuario~Aprueba');
   dbgDevPreAprobadas.Selected.Add('FECAPR'#9'14'#9'Fecha~Aprob');
   dbgDevPreAprobadas.Selected.Add('HORAPR'#9'14'#9'Hora~Aprob');
   dbgDevPreAprobadas.Selected.Add('FLADEVEFE'#9'6'#9'Indica~Dev.Ef');
   dbgDevPreAprobadas.Selected.Add('FECDEV'#9'14'#9'Fecha~Dev');
   dbgDevPreAprobadas.Selected.Add('HORDEV'#9'14'#9'Hora~Dev');
   dbgDevPreAprobadas.Selected.Add('USUDEV'#9'20'#9'Usuario~Dev');
   //Inicio HPC_201735_COB: Nuevos datos a mostrar
   dbgDevPreAprobadas.Selected.Add('USUAPRSUB'#9'20'#9'SubJefe~Aprob');
   dbgDevPreAprobadas.Selected.Add('FECAPRSUB'#9'14'#9'SubJefe~Aprob Fecha');
   dbgDevPreAprobadas.Selected.Add('USUAPRJEF'#9'20'#9'Jefe~Aprob');
   dbgDevPreAprobadas.Selected.Add('FECAPRJEF'#9'14'#9'Jefe~Aprob Fecha');
   dbgDevPreAprobadas.Selected.Add('NIVAPR'#9'2'#9'Nivel~Aprob');
   //Fin HPC_201735_COB
   dbgDevPreAprobadas.ApplySelected;
   dbgDevPreAprobadas.DataSource := DM1.dsQry;
End;

Procedure TfAprDev.dtgAsociadoDblClick(Sender: TObject);
Begin
   crgDevPreAprob;
   BitSalirClick(self);
End;

Procedure TfAprDev.BitBuscarClick(Sender: TObject);
Begin
   pnlSeleccion.Visible := True;
   pnlSeleccion.Top := 161;
   pnlSeleccion.Left := 16;
   grbAsociados.Enabled := False;
   rbtApeNomClick(SELF);
End;

Procedure TfAprDev.rbtDniClick(Sender: TObject);
Begin
   edtBuscar.Text := '';
   LimpiaGrids;
   gbbuscar.Width := 137;
   gbbuscar.Height := 40;
   edtBuscar.Width := 114;
   edtBuscar.Height := 24;
   GbAsociados.Caption := 'Buscar Por ' + rbtDni.Caption;
   edtBuscar.SetFocus;
End;

Procedure TfAprDev.rbtCuentaClick(Sender: TObject);
Begin
   edtBuscar.Text := '';
   LimpiaGrids;
   gbbuscar.Width := 137;
   gbbuscar.Height := 40;
   edtBuscar.Width := 114;
   edtBuscar.Height := 24;
   GbAsociados.Caption := 'Buscar Por ' + rbtCuenta.Caption;
   edtBuscar.SetFocus;
End;

Procedure TfAprDev.rbtCodModClick(Sender: TObject);
Begin
   edtBuscar.Text := '';
   LimpiaGrids;
   gbbuscar.Width := 137;
   gbbuscar.Height := 40;
   edtBuscar.Width := 114;
   edtBuscar.Height := 24;
   GbAsociados.Caption := 'Buscar Por ' + rbtCodMod.Caption;
   edtBuscar.SetFocus;
End;

Procedure TfAprDev.rbtApeNomClick(Sender: TObject);
Begin
   edtBuscar.Text := '';
   LimpiaGrids;
   gbbuscar.Width := 430;
   gbbuscar.Height := 40;
   edtBuscar.Width := 407;
   edtBuscar.Height := 28;
   GbAsociados.Caption := 'Buscar Por ' + rbtApeNom.Caption;
   edtBuscar.SetFocus;
End;

Procedure TfAprDev.LimpiaGrids;
Begin
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest('Select * From APO201 Where ASOID=' + QuotedStr('@#$!*@/#&^'));
   DM1.cdsAso.Open;
End;

Procedure TfAprDev.FormActivate(Sender: TObject);
Var
   XSQL: String;
Begin
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
      Xsql:='Select  CODTIPREF,CODREF,DESCRIPCION,USUCRE,FECCRE From DB2ADMIN.COB_REF_DEVOLUCIONES Where CODTIPREF=''MOT'' ';
      Dm1.cdsReclamo.Close;
      Dm1.cdsReclamo.DataRequest(Xsql);
      Dm1.cdsReclamo.Open;

      Xsql:='Select  CODTIPREF,CODREF,DESCRIPCION,USUCRE,FECCRE From DB2ADMIN.COB_REF_DEVOLUCIONES Where CODTIPREF=''ORI'' ';
      Dm1.cdsResol.Close;
      Dm1.cdsResol.DataRequest(Xsql);
      Dm1.cdsResol.Open;
      dblOrigenDev.LookupTable := Dm1.cdsResol;
      dblOrigenDev.LookupField := 'CODREF';
//Final HPC_201707_COB


    rdbPorAprobar.Checked := True;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   XSQL := 'select ''   '' ESTADO, substr(A.CREDID,9,7) ASOID, CREDID, TIPCREID, ASOAPENOM, ASOCODMOD, IMPREV, IMPDEV, IMPAPL, '
          +'       FLAEXTPRE, USUCRE, FECCRE, HORCRE, FLAAPR, USUAPR, FECAPR, HORAPR, MOTDES, MOTDEV, FLADEVEFE, '
          +'       USUDEV, FECDEV, HORDEV, ANODEV, CORDEV, FLAANU, FECANU, HORANU, USUANU, FORPAGID, AGEBAN, DEVEFE, '
//        +'       APLEFE, FLAIMPREV, OFDESPAG '
          +'       APLEFE, FLAIMPREV, OFDESPAG,CODMOTDEV,CODORIDEV '
          //Inicio HPC_201735_COB: Nuevos campos a retornar
          +',      USUAPRSUB, to_char(FECAPRSUB,''dd/mm/yyyy hh24:mi:ss'') FECAPRSUB '
          +',      USUAPRJEF, to_char(FECAPRJEF,''dd/mm/yyyy hh24:mi:ss'') FECAPRJEF '
          +',      NIVAPR ' 
          //Fin HPC_201735_COB
          +'from PRE_APR_DEV a '
//Final HPC_201707_COB
          +'WHERE FECCRE=To_date(sysdate) AND NVL(FLAAPR,''X'')=''X'' AND NVL(FLAANU,''X'')=''X'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
      dbgDevPreAprobadasRowChanged(Self);
//Final HPC_201707_COB
   dbgDevPreAprobadas.Selected.Clear;
   dbgDevPreAprobadas.Selected.Add('ESTADO'#9'25'#9'Estado');
   dbgDevPreAprobadas.Selected.Add('ASOAPENOM'#9'35'#9'Nombres');
   dbgDevPreAprobadas.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.');
   dbgDevPreAprobadas.Selected.Add('CREDITO'#9'7'#9'Nº Crédito');
   dbgDevPreAprobadas.Selected.Add('TIPCREID'#9'3'#9'T.Cred.');
   dbgDevPreAprobadas.Selected.Add('IMPDEV'#9'8'#9'Imp.Devo');
   dbgDevPreAprobadas.Selected.Add('IMPAPL'#9'8'#9'Imp.Apli');
   dbgDevPreAprobadas.Selected.Add('FLAEXTPRE'#9'3'#9'Ext.');
   dbgDevPreAprobadas.Selected.Add('FORPAGID'#9'2'#9'F.Pag.');
   dbgDevPreAprobadas.Selected.Add('AGEBAN'#9'10'#9'Agencia');
   dbgDevPreAprobadas.Selected.Add('USUCRE'#9'20'#9'Usuario~Créditos');
   dbgDevPreAprobadas.Selected.Add('FECCRE'#9'14'#9'Fecha~Otorgamiento');
   dbgDevPreAprobadas.Selected.Add('HORCRE'#9'14'#9'Hora~Crédito');
   dbgDevPreAprobadas.Selected.Add('FLAAPR'#9'6'#9'Indica~Aprob');
   dbgDevPreAprobadas.Selected.Add('USUAPR'#9'20'#9'Usuario~Aprueba');
   dbgDevPreAprobadas.Selected.Add('FECAPR'#9'14'#9'Fecha~Aprob');
   dbgDevPreAprobadas.Selected.Add('HORAPR'#9'14'#9'Hora~Aprob');
   dbgDevPreAprobadas.Selected.Add('FLADEVEFE'#9'6'#9'Indica~Dev.Ef');
   dbgDevPreAprobadas.Selected.Add('FECDEV'#9'14'#9'Fecha~Dev');
   dbgDevPreAprobadas.Selected.Add('HORDEV'#9'14'#9'Hora~Dev');
   dbgDevPreAprobadas.Selected.Add('USUDEV'#9'20'#9'Usuario~Dev');
   //Inicio HPC_201735_COB: Nuevos datos a mostrar
   dbgDevPreAprobadas.Selected.Add('USUAPRSUB'#9'20'#9'SubJefe~Aprob');
   dbgDevPreAprobadas.Selected.Add('FECAPRSUB'#9'14'#9'SubJefe~Aprob Fecha');
   dbgDevPreAprobadas.Selected.Add('USUAPRJEF'#9'20'#9'Jefe~Aprob');
   dbgDevPreAprobadas.Selected.Add('FECAPRJEF'#9'14'#9'Jefe~Aprob Fecha');
   dbgDevPreAprobadas.Selected.Add('NIVAPR'#9'2'#9'Nivel~Aprob');
   //Fin HPC_201735_COB
   dbgDevPreAprobadas.ApplySelected;
   dbgDevPreAprobadas.DataSource := DM1.dsQry;
   MotivoDevolucion.DataSource := DM1.dsQry;
   MotivoDevolucion.DataField := 'MOTDEV';
   memMotivoDesapro.DataSource := DM1.dsQry;
   memMotivoDesapro.DataField := 'MOTDES';
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   dblMotivoDev.DataSource := DM1.dsQry;
   dblOrigenDev.DataSource := DM1.dsQry;
   dblMotivoDev.DataField  := 'CODMOTDEV';
   dblOrigenDev.DataField  := 'CODORIDEV';
//Final HPC_201707_COB
   rdgFiltro.ItemIndex := 0;
   grbPorFecha.Enabled := False;
   dtpFechaIni.Date := DM1.FechaSys;
   dtpFechaFin.Date := DM1.FechaSys;
   rdbTodos.Checked := True;
   EdtCodMod.SetFocus;
   //Inicio HPC_201735_COB: Se inicializa cargo
   XSQL:= 'SELECT (case when cargo is null and nivel = 3 then ''SECTORISTA'' else cargo end ) cargo FROM USERTABLE WHERE userid = ''' + DM1.wUsuario + '''';

   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(XSQL);
   DM1.cdsQry5.Open;

   vCargo :=  DM1.cdsQry5.FieldByName('cargo').AsString;
   lblCargo.Caption:= vCargo;
   //Fin HPC_201735_COB
End;

Procedure TfAprDev.dbgDevPreAprobadasDblClick(Sender: TObject);
Begin

   If Dm1.cdsQry.RecordCount=0 Then
   Begin
     ShowMessage('No existe Información procesable...');
     Exit;
   End;

   If dm1.cdsQry.FieldByName('FLAANU').AsString = 'S' Then
   Begin
      ShowMessage('Registro Anulado..');
      exit;
   End;

   If dm1.cdsQry.FieldByName('FLADEVEFE').AsString = 'S' Then
   Begin
      ShowMessage('La Devoluciòn ya fue Efectuada');
      exit;
   End;

   If dm1.cdsQry.FieldByName('FLAAPR').AsString = 'S' Then
   Begin
      ShowMessage('La Devoluciòn ya fue APROBADA');
      exit;
   End;

   If dm1.cdsQry.FieldByName('FLAAPR').AsString = 'N' Then
   Begin
      If MessageDlg('La Devolución fue desaprobada anteriormente, desea aprobarla ahora.', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
         exit;
      End;
   End;

   //Inicio HPC_201735_COB: Nueva validación
   If DM1.cdsQry.fieldbyname('FORPAGID').AsString ='04' Then
   Begin
      vNivApr:= GetNivApr();
      If Not GetIsValidCargo() Then
      Begin

          ShowMessage('No puede aprobar la Devolución, cargo no válido.' + #13 + #13 + GetMensajeApr());
          exit;
      End;

      If GetIsApproved() Then
      Begin

          ShowMessage('La Devolución ya fue aprobada por: ' + vCargo + '.' );
          exit;
      End;
   End;
   //Fin HPC_201735_COB

   grpDevPreAprobadas.Enabled := False;
   grbAsociados.Enabled := False;
   grbAprobacion.Enabled := True;
//Inicio HPC_201707_COB
   grborigino.Enabled    := True;
//Final HPC_201707_COB
   btAprueba.SetFocus;
End;


Procedure TfAprDev.btDesapruebaClick(Sender: TObject);
Var
   XSQL, ximporte, xcredito: String;

Begin

   memMotivoDesapro.Enabled := True;
   memMotivoDesapro.SetFocus;

   If Length(Trim(memMotivoDesapro.Lines.Text)) = 0 Then
   Begin
      ShowMessage('Debe ingresar motivo de desaprobaciòn.');
      memMotivoDesapro.SetFocus;
      exit;
   End;

   ximporte := FormatFloat('###,###.#0', dm1.cdsQry.FieldByName('IMPREV').AsFloat);
   xcredito := COPY(dm1.cdsQry.FieldByName('CREDID').AsString, 9, 7);
   If MessageDlg('Usted DESAPROBARA la Devoluciòn y/o Aplicaciòn del siguiente importe: ' + ximporte + ' en el siguiente crèdito:' + xcredito + ' esta seguro(a)..', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
      exit;
   End;

//ACTUALIZA EL FLAG DE APROBADO LA DEVOLUCION DE EXCESO DEL FSC
If Dm1.cdsQry.FieldByName('CREDITO').AsString = 'EXC FSC' then
   XSQL := ' UPDATE COB_SOLICITUD_DEV_EXC_FSC_CAB '
      + 'SET FLAAPR = ''N'' ,'
      + '    USUAPR =' + QuotedStr(DM1.wUsuario) + ','
      + '    FECAPR = TO_CHAR(SYSDATE,''dd/mm/yyyy''),'
      + '    HORAPR = TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),'
      + '    MOTDES = ' + QuotedStr(Trim(memMotivoDesapro.Lines.Text))
      + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
      + ' CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
      + ' ASOID= ''' + DM1.cdsQry.FieldByName('ASOID').AsString + ''' '
Else

   XSQL := 'UPDATE PRE_APR_DEV '
      + 'SET FLAAPR = ''N'' ,'
      + '    USUAPR =' + QuotedStr(DM1.wUsuario) + ','
      + '    FECAPR = TO_CHAR(SYSDATE,''dd/mm/yyyy''),'
      + '    HORAPR = TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),'
      + '    MOTDES = ' + QuotedStr(Trim(memMotivoDesapro.Lines.Text))
      + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
      + ' CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
      + ' CREDID= ''' + DM1.cdsQry.FieldByName('CREDID').AsString + ''' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  //ACTUALIZA EL CDS
   DM1.cdsQry.EDIT;
   DM1.cdsQry.FieldByName('FLAAPR').AsString := 'N';
   DM1.cdsQry.FieldByName('MOTDES').AsString := Trim(memMotivoDesapro.Lines.Text);
   btOtroClick(self);
End;

Procedure TfAprDev.EdtCodModExit(Sender: TObject);
Begin

   If Length(Trim(EdtCodMod.Text)) = 0 Then
   Begin
      exit;
   End;

   If Length(Trim(EdtCodMod.Text)) > 10 Then
   Begin
      MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
      EdtCodMod.Text := '';
      Exit;
   End;

   EdtCodMod.Text := Format('%.10d', [StrToInt(EdtCodMod.Text)]);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest('Select * From APO201 Where ASOCODMOD LIKE ' + QuotedStr(Trim(EdtCodMod.Text) + '%'));
   DM1.cdsAso.Open;
   If DM1.cdsAso.RecordCount = 1 Then
   Begin
      crgDevPreAprob;
   End
   Else
      If DM1.cdsAso.RecordCount > 1 Then
      Begin
         pnlSeleccion.Visible := True;
         pnlSeleccion.Top := 144;
         pnlSeleccion.Left := 8;
         grbAprobacion.Enabled := False;
         grpDevPreAprobadas.Enabled := True;
         grbAsociados.Enabled := True;
      End
      Else
      Begin
         MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
      End;

End;

Procedure TfAprDev.btOtroClick(Sender: TObject);
Begin
   grpDevPreAprobadas.Enabled := True;
   grbAsociados.Enabled := True;
   grbAprobacion.Enabled := False;
   memMotivoDesapro.Lines.Text := '';
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   dblOrigenDev.Text:='';
   edtOrigeanDev.Text:='';
   dbgDevPreAprobadasRowChanged(Self);
//Final HPC_201707_COB
   dbgDevPreAprobadas.SetFocus;
End;

Procedure TfAprDev.dbgDevPreAprobadasDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

   If dm1.cdsQry.FieldByName('FLAAPR').AsString = 'S' Then
   Begin
      dbgDevPreAprobadas.Canvas.Font.Color := clGreen;
      dbgDevPreAprobadas.DefaultDrawDataCell(Rect, Field, State);
   End;

   If dm1.cdsQry.FieldByName('FLAAPR').AsString = 'N' Then
   Begin
      dbgDevPreAprobadas.Canvas.Font.Color := $0000AAAA;
      dbgDevPreAprobadas.DefaultDrawDataCell(Rect, Field, State);
   End;

   If dm1.cdsQry.FieldByName('FLADEVEFE').AsString = 'S' Then
   Begin
      dbgDevPreAprobadas.Canvas.Font.Color := clBlue;
      dbgDevPreAprobadas.DefaultDrawDataCell(Rect, Field, State);
   End;

   If dm1.cdsQry.FieldByName('FLAANU').AsString = 'S' Then
   Begin
      dbgDevPreAprobadas.Canvas.Font.Color := clRed;
      dbgDevPreAprobadas.DefaultDrawDataCell(Rect, Field, State);
   End;

End;

Procedure TfAprDev.btApruebaClick(Sender: TObject);
Var
   XSQL: String;
Begin


//Si no exsite informacion procesable
   If Dm1.cdsQry.RecordCount=0 Then
   Begin
     ShowMessage('No existe Información procesable...');
     Exit;
   End;

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   If Length(Trim(dblOrigenDev.Text))=0 Then
   Begin
     ShowMessage('Debe seleccionar que originó la devolución' );
     dblOrigenDev.SetFocus;
     dblOrigenDev.DropDown;
     exit;
   End;

   If   DM1.cdsQry.fieldbyname('FORPAGID').AsString = '06' Then
     If not verificaDevxOfi Then
     BEGIN
        ShowMessage('El número  de devoluciones  a aprobar supera el número de Devolución por Oficio');
        Exit;
     END;    
//Final  HPC_201707_COB

   grbAprobacion.Enabled := False;
   CDSAPRUEBA.EmptyDataSet;

   If DM1.cdsQry.FieldByName('IMPAPL').AsCurrency > 0 Then
   Begin
      CDSAPRUEBA.Insert;
      CDSAPRUEBA.FieldByName('APRUEBA').AsString := 'APLICACION';
      CDSAPRUEBA.FieldByName('VALOR').AsString := DM1.cdsQry.FieldByName('IMPAPL').AsString;
   End;

   If DM1.cdsQry.FieldByName('IMPDEV').AsCurrency > 0 Then
   Begin

      If DM1.cdsQry.fieldbyname('FORPAGID').AsString = '04' Then
      Begin
         xSQL := 'SELECT OFDESID,OFDESNOM FROM APO110 WHERE OFDESID=''' + DM1.cdsQry.fieldbyname('OFDESPAG').AsString + ''' ';
         DM1.cdsOfDes.Close;
         DM1.cdsOfDes.DataRequest(xSQL);
         DM1.cdsOfDes.Open;
         CDSAPRUEBA.Insert;
         CDSAPRUEBA.FieldByName('APRUEBA').AsString := 'OFI DESEMBOLSA';
         CDSAPRUEBA.FieldByName('VALOR').AsString := DM1.cdsOfDes.FieldByName('OFDESNOM').AsString;
      End;

      xSQL := 'SELECT TIPDESEABR FROM CRE104 WHERE TIPDESEID=''' + DM1.cdsQry.fieldbyname('FORPAGID').AsString + ''' ';
      DM1.cdsTipDesem.Close;
      DM1.cdsTipDesem.DataRequest(xSQL);
      DM1.cdsTipDesem.Open;

      CDSAPRUEBA.Insert;
      CDSAPRUEBA.FieldByName('APRUEBA').AsString := 'FORMA DESEMBOLSO';
      CDSAPRUEBA.FieldByName('VALOR').AsString := DM1.cdsTipDesem.FieldByName('TIPDESEABR').AsString;

      CDSAPRUEBA.Insert;
      CDSAPRUEBA.FieldByName('APRUEBA').AsString := 'DESEMBOLSO';
      CDSAPRUEBA.FieldByName('VALOR').AsString := DM1.cdsQry.FieldByName('IMPDEV').AsString;

   End;

   If DM1.cdsQry.FieldByName('FLAEXTPRE').AsString = '1' Then
      lblextorno.Visible := True
   Else
      lblextorno.Visible := False;

   CDSAPRUEBA.First;
   pnlAdvertencias.left := 221;
   pnlAdvertencias.top := 196;
   pnlAdvertencias.Visible := true;

End;

Procedure TfAprDev.rdgFiltroClick(Sender: TObject);
Begin
   If rdgFiltro.ItemIndex = 0 Then
   Begin
      grbAsociados.Enabled := True;
      grbPorFecha.Enabled := False;
      EdtCodMod.SetFocus;
      dtpFechaIni.Text := '';
   End
   Else
   Begin
      grbAsociados.Enabled := False;
      grbPorFecha.Enabled := True;
      dtpFechaIni.Date := dm1.FechaSys;
      dtpFechaIni.SetFocus;
      
   End
End;

Procedure TfAprDev.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
End;

procedure TfAprDev.dtpFechaFinExit(Sender: TObject);
begin
 btnFlitrar.SetFocus;
end;

Procedure TfAprDev.btnFlitrarClick(Sender: TObject);
Var
   XSQL,XWHERE: String;
Begin

    screen.Cursor := crhourglass;
    If rdbAprobado.Checked Then
       xWhere := ' AND FLAAPR=''S'' AND  NVL(FLAANU,''X'')=''X'' AND  NVL(FLADEVEFE,''X'')=''X''  ';
    If rdbDesaprobado.Checked Then
       xWhere := ' AND FLAAPR=''N'' AND  NVL(FLAANU,''X'')=''X'' AND  NVL(FLADEVEFE,''X'')=''X''  ';
    If rdbProcDev.Checked Then
       xWhere := ' AND FLADEVEFE=''S'' AND  NVL(FLAANU,''X'')=''X'' ';
    If rdbAnulado.Checked Then
       xWhere := ' AND FLAANU=''S'' ';
    If rdbPorAprobar.Checked Then
       xWhere := ' AND NVL(FLAAPR,''X'')=''X'' AND NVL(FLAANU,''X'')=''X'' ';
    If rdbTodos.Checked Then
       xwhere := '';
    XSQL := 'Select substr(a.credid,9,7) CREDITO, '+
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
                   'NRO_OPE,FEC_OPE, '+
// Fin HPC_201806_COB
                   'CASE WHEN  FLAAPR=''S'' AND  NVL(FLAANU,''X'')=''X'' AND  NVL(FLADEVEFE,''X'')=''X'' THEN ''APROBADO'' '+
                   '     WHEN  FLAAPR=''N'' AND  NVL(FLAANU,''X'')=''X'' AND  NVL(FLADEVEFE,''X'')=''X'' THEN ''DESAPROBADO'' '+
                   '     WHEN  FLADEVEFE=''S'' AND  NVL(FLAANU,''X'')=''X'' THEN ''PROCESADO/DEVUELTO'' '+
                   '     WHEN  FLAANU=''S'' THEN ''ANULADO'' '+
                   '     WHEN  NVL(FLAAPR,''X'')=''X'' AND NVL(FLAANU,''X'')=''X'' THEN ''POR APROBAR '' END ESTADO, '+
                   'ASOAPENOM,ASOCODMOD,CREDID,TIPCREID,'+
                   'IMPDEV,IMPAPL,FLAEXTPRE,FORPAGID,AGEBAN,APLEFE,'+
                   'USUCRE,to_char(FECCRE,''dd/mm/yyyy'')FECCRE,to_char(HORCRE,''dd/mm/yyyy hh24:mi:ss'')HORCRE,'+
                   'FLAAPR,USUAPR,to_char(FECAPR,''dd/mm/yyyy'')FECAPR,FLAIMPREV,DEVEFE,OFDESPAG,'+
                   'to_char(HORAPR,''dd/mm/yyyy hh24:mi:ss'')HORAPR,MOTDEV,MOTDES,FLAANU,FLADEVEFE,to_char(FECDEV,''dd/mm/yyyy'')FECDEV ,'+
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
//                 'to_char(HORDEV,''dd/mm/yyyy hh24:mi:ss'')HORDEV,USUDEV,ASOID,ANODEV,CORDEV,IMPREV '+
                   'to_char(HORDEV,''dd/mm/yyyy hh24:mi:ss'')HORDEV,USUDEV,ASOID,ANODEV,CORDEV,IMPREV,CODMOTDEV,CODORIDEV '+
                   //Inicio HPC_201735_COB: Nuevos campos a retornar
                   ', USUAPRSUB, to_char(FECAPRSUB,''dd/mm/yyyy hh24:mi:ss'') FECAPRSUB ' +
                   ', USUAPRJEF, to_char(FECAPRJEF,''dd/mm/yyyy hh24:mi:ss'') FECAPRJEF ' +
                   ', NIVAPR ' +
                   //Fin HPC_201735_COB
                   'From PRE_APR_DEV a where Feccre>=''' +dtpFechaIni.Text+''' AND Feccre<='''+dtpFechaFin.Text+''' '+XWHERE+
            'UNION ALL '+
            'Select ''EXC FSC'' CREDITO, '+
// Inicio HPC_201806_COB
// Exceso en Cronogramas Cerrados (ONP, BANCO)
                   ''''' NRO_OPE,null FEC_OPE, '+
// Fin HPC_201806_COB
                  'CASE WHEN  FLAAPR=''S'' AND  NVL(FLAANU,''X'')=''X'' AND  NVL(FLADEVEFE,''X'')=''X'' THEN ''APROBADO'' '+
                   '    WHEN  FLAAPR=''N'' AND  NVL(FLAANU,''X'')=''X'' AND  NVL(FLADEVEFE,''X'')=''X'' THEN ''DESAPROBADO'' '+
                   '    WHEN  FLADEVEFE=''S'' AND  NVL(FLAANU,''X'')=''X'' THEN ''PROCESADO/DEVUELTO'' '+
                   '    WHEN  FLAANU=''S'' THEN ''ANULADO'' '+
                   '    WHEN  NVL(FLAAPR,''X'')=''X'' AND NVL(FLAANU,''X'')=''X'' THEN ''POR APROBAR '' END ESTADO, '+
                   'ASOAPENOM,ASOCODMOD,''''CREDID,''''TIPCREID,IMPDEV,IMPAPL,''''FLAEXTPRE,FORPAGID,AGEBAN,APLEFE,USUCRE,to_char(FECCRE,''dd/mm/yyyy'')FECCRE,'+
                   'to_char(HORCRE,''dd/mm/yyyy hh24:mi:ss'')HORCRE,FLAAPR,USUAPR,to_char(FECAPR,''dd/mm/yyyy'')FECAPR,FLAIMPREV,DEVEFE,OFDESPAG,'+
                   'to_char(HORAPR,''dd/mm/yyyy hh24:mi:ss'')HORAPR,MOTDEV,MOTDES,FLAANU,FLADEVEFE,to_char(FECDEV,''dd/mm/yyyy'')FECDEV ,'+
                   'to_char(HORDEV,''dd/mm/yyyy hh24:mi:ss'')HORDEV,USUDEV,ASOID,ANODEV,CORDEV,IMPREV,'' '' CODMOTDEV,'' ''CODORIDEV '+
//Final HPC_201707_COB                   
                   //Inicio HPC_201735_COB: Nuevos campos a retornar
                   ', USUAPRSUB, to_char(FECAPRSUB,''dd/mm/yyyy hh24:mi:ss'') FECAPRSUB ' +
                   ', USUAPRJEF, to_char(FECAPRJEF,''dd/mm/yyyy hh24:mi:ss'') FECAPRJEF ' +
                   ', NIVAPR ' +
                   //Fin HPC_201735_COB
            'From COB_SOLICITUD_DEV_EXC_FSC_CAB a where Feccre>=''' +dtpFechaIni.Text+''' AND Feccre<='''+dtpFechaFin.Text+''' '+XWHERE;
 

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

   If Dm1.cdsQry.RecordCount=0 Then
   Begin
     ShowMessage('No existe Información procesable...');
     screen.Cursor := crdefault;
     Exit;
   End;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   dbgDevPreAprobadasRowChanged(Self);
//Final HPC_201707_COB

   dbgDevPreAprobadas.DataSource := DM1.dsQry;
   dbgDevPreAprobadas.Selected.Clear;
   dbgDevPreAprobadas.Selected.Add('ESTADO'#9'25'#9'Estado');
   dbgDevPreAprobadas.Selected.Add('ASOAPENOM'#9'35'#9'Nombres');
   dbgDevPreAprobadas.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.');
   dbgDevPreAprobadas.Selected.Add('CREDITO'#9'7'#9'Nº Crédito');
   dbgDevPreAprobadas.Selected.Add('TIPCREID'#9'3'#9'T.Cred.');
   dbgDevPreAprobadas.Selected.Add('IMPDEV'#9'8'#9'Imp.Devo');
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
   dbgDevPreAprobadas.Selected.Add('NRO_OPE'#9'8'#9'Nro.Operación');
   dbgDevPreAprobadas.Selected.Add('FEC_OPE'#9'8'#9'Fec.Operación');
// Fin HPC_201806_COB 
   dbgDevPreAprobadas.Selected.Add('IMPAPL'#9'8'#9'Imp.Apli');
   dbgDevPreAprobadas.Selected.Add('FLAEXTPRE'#9'3'#9'Ext.');
   dbgDevPreAprobadas.Selected.Add('FORPAGID'#9'2'#9'F.Pag.');
   dbgDevPreAprobadas.Selected.Add('AGEBAN'#9'10'#9'Agencia');
   dbgDevPreAprobadas.Selected.Add('USUCRE'#9'20'#9'Usuario~Créditos');
   dbgDevPreAprobadas.Selected.Add('FECCRE'#9'14'#9'Fecha~Otorgamiento');
   dbgDevPreAprobadas.Selected.Add('HORCRE'#9'14'#9'Hora~Crédito');
   dbgDevPreAprobadas.Selected.Add('FLAAPR'#9'6'#9'Indica~Aprob');
   dbgDevPreAprobadas.Selected.Add('USUAPR'#9'20'#9'Usuario~Aprueba');
   dbgDevPreAprobadas.Selected.Add('FECAPR'#9'14'#9'Fecha~Aprob');
   dbgDevPreAprobadas.Selected.Add('HORAPR'#9'14'#9'Hora~Aprob');
   dbgDevPreAprobadas.Selected.Add('FLADEVEFE'#9'6'#9'Indica~Dev.Ef');
   dbgDevPreAprobadas.Selected.Add('FECDEV'#9'14'#9'Fecha~Dev');
   dbgDevPreAprobadas.Selected.Add('HORDEV'#9'14'#9'Hora~Dev');
   dbgDevPreAprobadas.Selected.Add('USUDEV'#9'20'#9'Usuario~Dev');
   //Inicio HPC_201735_COB: Nuevos datos a mostrar
   dbgDevPreAprobadas.Selected.Add('USUAPRSUB'#9'20'#9'SubJefe~Aprob');
   dbgDevPreAprobadas.Selected.Add('FECAPRSUB'#9'14'#9'SubJefe~Aprob Fecha');
   dbgDevPreAprobadas.Selected.Add('USUAPRJEF'#9'20'#9'Jefe~Aprob');
   dbgDevPreAprobadas.Selected.Add('FECAPRJEF'#9'14'#9'Jefe~Aprob Fecha');
   dbgDevPreAprobadas.Selected.Add('NIVAPR'#9'2'#9'Nivel~Aprob');
   //Fin HPC_201735_COB
   dbgDevPreAprobadas.ApplySelected;
   screen.Cursor := crdefault;
End;

Procedure TfAprDev.fcShapeBtn2Click(Sender: TObject);
Var
   XSQL, vasoid, vanodev, vcordev: String;

Begin

   vasoid := dm1.cdsQry.FieldByName('ASOID').AsString;
   vanodev := dm1.cdsQry.FieldByName('ANODEV').AsString;
   vcordev := dm1.cdsQry.FieldByName('CORDEV').AsString;

   If dm1.cdsQry.FieldByName('FLAIMPREV').AsString = 'S' Then 
   Begin
      ShowMessage('Importe ya fue revertido, no procede ANULACION');
      Exit;
   End
   Else
      If dm1.cdsQry.FieldByName('FLAANU').AsString = 'S' Then
      Begin
         ShowMessage('Solicitud de Devolución ya fue ANULADA');
         Exit;
      End
      Else
         If dm1.cdsQry.FieldByName('FLADEVEFE').AsString = 'S' Then
         Begin
            ShowMessage('Devolución ya fue efectuada, no procede ANULACION ');
            Exit;
         End
         Else
            If dm1.cdsQry.FieldByName('FLAAPR').AsString = 'N' Then
            Begin
               ShowMessage('Devolución a sido DESAPROBADA, no procede ANULACION');
               Exit;
            End
            Else
               If Length(trim(dm1.cdsQry.FieldByName('FLAAPR').AsString)) = 0 Then
               Begin
                  ShowMessage('En este momento la ANULACION está en la responsabilidad de quien generó la Solicitud');
                  Exit;
               End
               Else
                  If dm1.cdsQry.FieldByName('FLAAPR').AsString = 'S' Then
                  Begin
                     If MessageDlg('¿La Devolución Ya fue APROBADA, DESEA ANULARLA ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
                     Begin
                        //CONDICION PARA ACTUALIZAR TAMBIEN LA TABLA DE SOLICITUD DE DEVOLUCION DE EXCESOS DEL FSC
                        If Dm1.cdsQry.FieldByName('CREDITO').AsString = 'EXC FSC' then
                        xsql := 'UPDATE COB_SOLICITUD_DEV_EXC_FSC_CAB '
                        Else
                        xsql := 'UPDATE PRE_APR_DEV ';

                        xsql:=xsql+'SET FLAANU=''S'', FECANU=TO_CHAR(SYSDATE,''DD/MM/YYYY''), '
                                  +'    HORANU=SYSDATE,USUANU=''' + DM1.wUsuario + ''' '
                                  +'WHERE ASOID=''' + vasoid + ''' AND ANODEV=''' + vanodev + ''' '
                                  +'  AND CORDEV=''' + vcordev + ''' AND NVL(FLADEVEFE,''X'')<>''S'' '
                                  +'  AND NVL(FLAAPR,''X'')<>''N'' AND NVL(FLAANU,''X'')<>''S'' ';
                        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                     // ACTUALIZA EL CDS
                        DM1.cdsQry.EDIT;
                        DM1.cdsQry.FieldByName('FLAANU').AsString := 'S';
                        btOtroClick(self);
                     End;
                  End;
End;

Procedure TfAprDev.BitBtn2Click(Sender: TObject);
Begin
   pnlModifica.Visible := False;
End;

Procedure TfAprDev.edtDevolverKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TfAprDev.edtAplicarKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TfAprDev.edtDevolverExit(Sender: TObject);
Begin


   If StrToCurr(edtDevolver.Text)> dm1.cdsQry.FieldByName('IMPREV').AsCurrency Then
     Begin
       ShowMessage('Importe mayor al permitido..');
       Exit;
     End;

   If Length(Trim(edtDevolver.Text)) = 0 Then
   Begin
      edtDevolver.Text := '0.00';
   End;
   edtDevolver.Text := FormatFloat('##,###,##0.0#', DM1.Valores(edtDevolver.Text));
   edtAplicar.Text := FormatCurr('##,###,##0.0#', DM1.Valores(lblImpRev.Caption) - dm1.Valores(edtDevolver.Text));
End;

Procedure TfAprDev.btnAceptarModificaClick(Sender: TObject);
Var
   XSQL: String;
Begin

   If dm1.cdsQry.FieldByName('IMPREV').AsCurrency <> (dm1.valores(edtDevolver.Text) + dm1.valores(edtAplicar.Text)) Then
   Begin
      ShowMessage('La suma de los Importes Modificados no son iguales al Importe a Revertir');
      exit;
   End;

   If MessageDlg('Usted MODIFICARA los siguientes importes: DEVOLVER=' + edtDevolver.Text + 'APLICAR=' + edtAplicar.Text + ' esta seguro(a)..', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
      exit;
   End;

   XSQL := ' UPDATE PRE_APR_DEV '
      + ' SET IMPDEV = ' + CurrToStr(dm1.valores(edtDevolver.Text)) + ','
      + '     IMPAPL = ' + CurrToStr(dm1.valores(edtAplicar.Text))
      + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
      + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
      + '       CREDID= ''' + DM1.cdsQry.FieldByName('CREDID').AsString + ''' ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   XSQL:=' UPDATE DB2ADMIN.COB_DEV_POR_OFI SET NUMREGACT=NUMREGACT+1,USUMOD='''+Dm1.wUsuario+''',FECMOD=SYSDATE WHERE  NUMREGOFI>0 ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   verificaDevxOfi;
//Final HPC_201707_COB

  //ACTUALIZA EL CDS
   DM1.cdsQry.EDIT;
   DM1.cdsQry.FieldByName('IMPDEV').AsString := CurrToStr(dm1.valores(edtDevolver.Text));
   DM1.cdsQry.FieldByName('IMPAPL').AsString := CurrToStr(dm1.valores(edtAplicar.Text));
   

   btOtroClick(self);

End;

Procedure TfAprDev.edtAplicarExit(Sender: TObject);
Begin

   If StrToCurr(edtAplicar.Text)> dm1.cdsQry.FieldByName('IMPREV').AsCurrency Then
     Begin
       ShowMessage('Importe mayor al permitido..');
       Exit;
     End;

   If Length(Trim(edtAplicar.Text)) = 0 Then
   Begin
      edtAplicar.Text := '0.00';
   End;
   edtAplicar.Text := FormatFloat('##,###,##0.#0', DM1.Valores(edtAplicar.Text));
   edtDevolver.Text := FormatCurr('##,###,##0.#0', DM1.Valores(lblImpRev.Caption) - dm1.Valores(edtAplicar.Text));

End;

Procedure TfAprDev.edtDevolverChange(Sender: TObject);
Begin
   If Length(trim(edtDevolver.Text)) = 0 Then edtDevolver.Text := '0';
   If Length(trim(edtAplicar.Text)) = 0 Then edtAplicar.Text := '0';
   lblSuma.Caption := FormatCurr('##,###,###.#0', dm1.Valores(edtDevolver.Text) + dm1.Valores(edtAplicar.Text));
End;

Procedure TfAprDev.edtAplicarChange(Sender: TObject);
Begin
   If Length(trim(edtAplicar.Text)) = 0 Then edtAplicar.Text := '0';
   If Length(trim(edtDevolver.Text)) = 0 Then edtDevolver.Text := '0';
   lblSuma.Caption := FormatCurr('##,###,###.#0', dm1.Valores(edtDevolver.Text) + dm1.Valores(edtAplicar.Text));
End;

//Inicio HPC_201735_COB: Nueva función
Function TfAprDev.GetMensajeApr():String;
var xsql:String;
    xRetorno: String;
begin
   xRetorno:='';
   xsql:='SELECT texto01 ' +
         'FROM DB2ADMIN.COB_SOL_DEV_RAN_REF ' +
         'ORDER BY codran';

   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsql);
   DM1.cdsQry5.Open;

   If DM1.cdsQry5.RecordCount > 0 Then
   Begin
      DM1.cdsQry5.First;
      While Not DM1.cdsQry5.Eof Do
      Begin
          xRetorno := xRetorno + DM1.cdsQry5.FieldByname('texto01').AsString + #13 ;
          DM1.cdsQry5.Next;
      End;
   End;

   Result := xRetorno;
end;
//Fin HPC_201735_COB

//Inicio HPC_201735_COB: Nueva función
Function TfAprDev.GetNivApr():String;
var xsql:String;
    xRetorno: String;
begin
   xRetorno:='';
   xsql:='SELECT codran ' +
         'FROM DB2ADMIN.COB_SOL_DEV_RAN_REF a, ( select TO_NUMBER(''' + DM1.cdsQry.FieldByName('IMPDEV').AsString + ''') IMPDEV from dual ) b ' +
         'WHERE b.IMPDEV >= a.ranini AND ( b.IMPDEV <= a.ranfin OR a.ranfin IS NULL) ';

   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsql);
   DM1.cdsQry5.Open;

   If (DM1.cdsQry5.RecordCount > 0 ) Then
        xRetorno := DM1.cdsQry5.FieldByName('codran').AsString;

   Result := xRetorno;
end;
//Fin HPC_201735_COB

//Inicio HPC_201735_COB: Nueva función
Function TfAprDev.GetIsValidCargo():Boolean;
var xsql:String;
    xRetorno: Boolean;
begin
   xRetorno:=False;

   xsql:='SELECT COUNT(1) CUENTA ' +
         'FROM   DUAL ' +
         'WHERE  ''' +  vCargo +''' IN (select regexp_substr((SELECT regla04 FROM COB_SOL_DEV_RAN_REF WHERE codran=''' + vNivApr + '''),''[^,]+'', 1, level) from dual ' +
         ' connect by regexp_substr((SELECT regla04 FROM COB_SOL_DEV_RAN_REF WHERE codran=''' + vNivApr + '''), ''[^,]+'', 1, level) is not null )';

   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsql);
   DM1.cdsQry5.Open;

   If DM1.cdsQry5.FieldByName('CUENTA').AsInteger > 0 Then
      xRetorno := True;

   Result := xRetorno;
end;
//Fin HPC_201735_COB

//Inicio HPC_201735_COB: Nueva función
Function TfAprDev.GetIsApproved():Boolean;
var xsql, xSQLUser:String;
    xRetorno: Boolean;
begin
    xRetorno:=False;


    IF vCargo = 'SECTORISTA' Then
        xSQLUser :=  'USUAPR'

    ELSE IF vCargo = 'SUB JEFATURA' Then
        xSQLUser :=  'USUAPRSUB'

    ELSE IF vCargo = 'JEFATURA' Then
        xSQLUser :=  'USUAPRJEF';

    If Dm1.cdsQry.FieldByName('CREDITO').AsString = 'EXC FSC' then
        xSQL := ' SELECT ' + xSQLUser + ' USERAPR FROM COB_SOLICITUD_DEV_EXC_FSC_CAB '
              + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
              + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
              + '       ASOID= ''' + DM1.cdsQry.FieldByName('ASOID').AsString + ''' '

    Else
       xSQL := ' SELECT ' + xSQLUser + ' USERAPR FROM PRE_APR_DEV '
              + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
              + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
              + '       CREDID= ''' + DM1.cdsQry.FieldByName('CREDID').AsString + ''' ';



    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xsql);
    DM1.cdsQry5.Open;

    If LENGTH(DM1.cdsQry5.FieldByName('USERAPR').AsString) > 0 Then
        xRetorno := True;

    Result := xRetorno;
end;
//Fin HPC_201735_COB

//Inicio HPC_201735_COB: Mejoras en el proceso de Aprobación de Devoluciones en efectivo 
Procedure TfAprDev.BitBtn5Click(Sender: TObject);
Var
   xSQL, xSQLUser, xSqlSelect, xSqlRegla, xFlaApr, xCargo: String;
Begin

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   If DM1.cdsQry.fieldbyname('FORPAGID').AsString ='06' Then
     If not verificaDevxOfi Then
     Begin
       ShowMessage('El número  de devoluciones  a aprobar supera el número de Devolución por Oficio');
       Exit;
     End;
//Final  HPC_201707_COB

  If DM1.cdsQry.fieldbyname('FORPAGID').AsString ='04' Then
  Begin

    IF vCargo = 'SECTORISTA' Then
        xSQLUser :=  ' USUAPR =' + QuotedStr(DM1.wUsuario) + ',' +
                     ' FECAPR = TRUNC(SYSDATE,''DD''),' +
                     ' HORAPR = SYSDATE,'
    ELSE IF vCargo = 'SUB JEFATURA' Then
        xSQLUser :=  ' USUAPRSUB =' + QuotedStr(DM1.wUsuario) + ',' +
                     ' FECAPRSUB = SYSDATE,'
    ELSE IF vCargo = 'JEFATURA' Then
        xSQLUser :=  ' USUAPRJEF =' + QuotedStr(DM1.wUsuario) + ',' +
                     ' FECAPRJEF = SYSDATE,';

    If Dm1.cdsQry.FieldByName('CREDITO').AsString = 'EXC FSC' then
        xSQL := ' UPDATE COB_SOLICITUD_DEV_EXC_FSC_CAB '
              + ' SET ' + xSQLUser
              + '     MOTDES = '''''
              + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
              + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
              + '       ASOID= ''' + DM1.cdsQry.FieldByName('ASOID').AsString + ''' '

    Else
       xSQL := ' UPDATE PRE_APR_DEV '
              + ' SET ' + xSQLUser
              + '     MOTDES = '''','
              + '     CODORIDEV= '''+ DM1.cdsQry.FieldByName('CODORIDEV').AsString + ''' '
              + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
              + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
              + '       NVL(TRIM(CREDID),''X'') = NVL(TRIM('''+DM1.cdsQry.FieldByName('CREDID').AsString+'''),''X'')';
              //+ '       CREDID= ''' + DM1.cdsQry.FieldByName('CREDID').AsString + ''' ';
// Fin HPC_201806_COB 


    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    xSqlSelect:= 'SELECT regla01, regla02, regla03 FROM COB_SOL_DEV_RAN_REF WHERE codran = ''' + vNivApr + ''' ';

    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSqlSelect);
    DM1.cdsQry5.Open;

    xSqlSelect:= 'SELECT CASE WHEN ';
    xSqlRegla:='';

    If  LENGTH(DM1.cdsQry5.FieldByName('regla01').AsString) > 0 Then
        If LENGTH(xSqlRegla) = 0 Then
            xSqlRegla:= DM1.cdsQry5.FieldByName('regla01').AsString
        Else
            xSqlRegla:= xSqlRegla + ' AND ' + DM1.cdsQry5.FieldByName('regla01').AsString;

    If  LENGTH(DM1.cdsQry5.FieldByName('regla02').AsString) > 0 Then
        If LENGTH(xSqlRegla) = 0 Then
            xSqlRegla:= DM1.cdsQry5.FieldByName('regla02').AsString
        Else
            xSqlRegla:= xSqlRegla + ' AND ' + DM1.cdsQry5.FieldByName('regla02').AsString;

    If  LENGTH(DM1.cdsQry5.FieldByName('regla03').AsString) > 0 Then
        If LENGTH(xSqlRegla) = 0 Then
            xSqlRegla:= DM1.cdsQry5.FieldByName('regla03').AsString
        Else
            xSqlRegla:= xSqlRegla + ' AND ' + DM1.cdsQry5.FieldByName('regla03').AsString;

    If Dm1.cdsQry.FieldByName('CREDITO').AsString = 'EXC FSC' then
        xSqlSelect:= xSqlSelect + xSqlRegla +
                 ' THEN ''S'' ELSE ''N'' END FLAAPR ' +
                 ' FROM COB_SOLICITUD_DEV_EXC_FSC_CAB ' +
                 ' WHERE  ANODEV=''' + DM1.cdsQry.FieldByName('ANODEV').AsString  + '''' +
                 ' AND    CORDEV='''+ DM1.cdsQry.FieldByName('CORDEV').AsString + '''' +
                 ' AND    ASOID= ''' + DM1.cdsQry.FieldByName('ASOID').AsString + ''' '
    Else
        xSqlSelect:= xSqlSelect + xSqlRegla +
                 ' THEN ''S'' ELSE ''N'' END FLAAPR ' +
                 ' FROM PRE_APR_DEV ' +
                 ' WHERE  ANODEV=''' + DM1.cdsQry.FieldByName('ANODEV').AsString  + '''' +
                 ' AND    CORDEV='''+ DM1.cdsQry.FieldByName('CORDEV').AsString + '''' +
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
                 ' AND NVL(TRIM(CREDID),''X'') = NVL(TRIM(''' + DM1.cdsQry.FieldByName('CREDID').AsString + '''),''X'')';
// Fin HPC_201806_COB 
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSqlSelect);
    DM1.cdsQry5.Open;

    xFlaApr :=  DM1.cdsQry5.FieldByName('FLAAPR').AsString;

    If xFlaApr = 'S' Then
    Begin
      If Dm1.cdsQry.FieldByName('CREDITO').AsString = 'EXC FSC' then
          xSQL := ' UPDATE COB_SOLICITUD_DEV_EXC_FSC_CAB '
              + ' SET FLAAPR = ''' + xFlaApr + ''', NIVAPR =''' + vNivApr + ''' '
              + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
              + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
              + '       ASOID= ''' + DM1.cdsQry.FieldByName('ASOID').AsString + ''' '

      Else
          xSQL := ' UPDATE PRE_APR_DEV '
              + ' SET FLAAPR = ''' + xFlaApr + ''', NIVAPR =''' + vNivApr + ''' '
              + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
              + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
              + '       NVL(TRIM(CREDID),''X'') = NVL(TRIM(''' + DM1.cdsQry.FieldByName('CREDID').AsString + '''),''X'')';
// Fin HPC_201806_COB
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    End
  End
  Else
  Begin
    //CONDICION PARA ACTUALIZAR TAMBIEN LA TABLA DE SOLICITUD DE DEVOLUCION DE EXCESOS DEL FSC
    If Dm1.cdsQry.FieldByName('CREDITO').AsString = 'EXC FSC' then
      XSQL := ' UPDATE COB_SOLICITUD_DEV_EXC_FSC_CAB '
      + 'SET FLAAPR = ''S'' ,'
      + '    USUAPR =' + QuotedStr(DM1.wUsuario) + ','
      + '    FECAPR = TO_CHAR(SYSDATE,''dd/mm/yyyy''),'
      + '    HORAPR = TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),'
      + '    MOTDES = '''''
      + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
      + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
      + '       ASOID= ''' + DM1.cdsQry.FieldByName('ASOID').AsString + ''' '
    Else
      XSQL := 'UPDATE PRE_APR_DEV '
      + 'SET FLAAPR = ''S'' ,'
      + '    USUAPR =' + QuotedStr(DM1.wUsuario) + ','
      + '    FECAPR = TO_CHAR(SYSDATE,''dd/mm/yyyy''),'
      + '    HORAPR = TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),'
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
      + '    MOTDES = '''','
      + '    CODORIDEV= '''+ DM1.cdsQry.FieldByName('CODORIDEV').AsString + ''' '
//Final HPC_201707_COB
      + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
      + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
      //+ '       CREDID= ''' + DM1.cdsQry.FieldByName('CREDID').AsString + ''' ';
      + '       NVL(TRIM(CREDID),''X'') = NVL(TRIM(''' + DM1.cdsQry.FieldByName('CREDID').AsString + '''),''X'')';
// Fin HPC_201806_COB
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  End;

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
  If  DM1.cdsQry.fieldbyname('FORPAGID').AsString = '06' Then
  Begin
     XSQL:='UPDATE  DB2ADMIN.COB_DEV_POR_OFI SET NUMREGACT=NUMREGACT+1,USUMOD='''+Dm1.wUsuario+''',FECMOD=SYSDATE WHERE 1=1 ';
     Try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     Except
        ShowMessage ('Se ha producido un error al actualizar la tabla COB_DEV_POR_OFI');
        pnlAdvertencias.Visible := False;
        exit;
     End;
  End;
//Final  HPC_201707_COB

  DM1.cdsQry.EDIT;
  If DM1.cdsQry.fieldbyname('FORPAGID').AsString ='04' Then
  Begin
      If xFlaApr = 'S' Then
        DM1.cdsQry.FieldByName('FLAAPR').AsString := xFlaApr;
  End
  Else
      DM1.cdsQry.FieldByName('FLAAPR').AsString := 'S';

   btOtroClick(self);

   pnlAdvertencias.Visible := False;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
// grbAprobacion.Enabled := True;
   grbAprobacion.Enabled := False;
//Final HPC_201707_COB
   CDSAPRUEBA.EmptyDataSet;

End;
//Fin HPC_201735_COB

Procedure TfAprDev.BitBtn1Click(Sender: TObject);
Begin

   pnlAdvertencias.Visible := False;
   grbAprobacion.Enabled := True;
   CDSAPRUEBA.EmptyDataSet;

End;

Procedure TfAprDev.BitBtn3Click(Sender: TObject);

Begin

   If dm1.cdsQry.FieldByName('FLAAPR').AsString = 'N' Then
   Begin
      ShowMessage('No puede modificar Devolución Desaprobada..');
      exit;
   End;

   If dm1.cdsQry.FieldByName('FLADEVEFE').AsString = 'S' Then
   Begin
      ShowMessage('No puede modificar Devolucion Efectuada');
      exit;
   End;

   If dm1.cdsQry.FieldByName('FLAANU').AsString = 'S' Then
   Begin
      ShowMessage('No puede modificar Devolucion Anulada');
      exit;
   End;

   //VERIFICO QUE LOS IMPORTES MODIFICADOS AUN NO HALLAN SIDO OPERADOS
   If dm1.cdsQry.FieldByName('DEVEFE').AsCurrency > 0 Then
   Begin
      ShowMessage('No puede modificar, el desembolso ya fue ejecutada');
      exit;
   End;

   pnlModifica.Visible := True;
   pnlModifica.Top := 184;
   pnlModifica.Left := 192;

   edtDevolver.Text := dm1.cdsQry.FieldByName('IMPDEV').AsString;
   edtAplicar.Text := dm1.cdsQry.FieldByName('IMPAPL').AsString;
   lblImpRev.Caption := dm1.cdsQry.FieldByName('IMPREV').AsString;

   edtDevolver.SetFocus;
End;

Procedure TfAprDev.BitBtn4Click(Sender: TObject);
Begin

   If dm1.cdsQry.FieldByName('FLADEVEFE').AsString = 'S' Then
   Begin
      ShowMessage('No puede modificar Devolucion Efectuada');
      exit;
   End;

  //VERIFICO QUE LOS IMPORTES MODIFICADOS AUN NO HALLAN SIDO OPERADOS
   If dm1.cdsQry.FieldByName('DEVEFE').AsCurrency > 0 Then
   Begin
      ShowMessage('No puede modificar, el desembolso ya fue ejecutada');
      exit;
   End;

   EdtCtaAhorros.Text := '';
   EdtSitCta.Text := '';
   DBLkuCTipDes.Text := dm1.cdsQry.FieldbyName('FORPAGID').AsString;
   DBLkCDAgencias.Text := dm1.cdsQry.FieldbyName('AGEBAN').AsString;
   DBLkOfiDes.Text := dm1.cdsQry.FieldbyName('OFDESPAG').AsString;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   vforpagid:= Dm1.cdsQry.FieldByname('FORPAGID').AsString;
//Final HPC_201707_COB
   pnlTipodesembolso.left := 72;
   pnlTipodesembolso.Top := 251;
   pnlTipodesembolso.Visible := True;

End;

Procedure TfAprDev.BtnSalirClick(Sender: TObject);
Var
   xsql: String;

Begin

   If DBLkuCTipDes.Text = '04' Then
   Begin
      If Length(trim(DBLkOfiDes.Text)) = 0 Then
      Begin
         ShowMessage('Debe ingresar la oficina que desembolsa.');
         Exit;
      End;
   End;


//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
  If  vforpagid<>DBLkuCTipDes.Text Then
  Begin
     If  (vforpagid='06') and  (DBLkuCTipDes.Text<>'06') Then
     Begin
        XSQL:='UPDATE  DB2ADMIN.COB_DEV_POR_OFI SET NUMREGACT=NUMREGACT-1,USUMOD='''+Dm1.wUsuario+''',FECMOD=SYSDATE WHERE 1=1 ';
        Try
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        Except
        ShowMessage ('Se ha producido un error al actualizar la tabla COB_DEV_POR_OFI');
        pnlTipodesembolso.Visible := False;
        exit;
        End;
     End;

     If  (vforpagid<>'06') and  (DBLkuCTipDes.Text='06') Then
     Begin
        XSQL:='UPDATE DB2ADMIN.COB_DEV_POR_OFI SET NUMREGACT=NUMREGACT+1,USUMOD='''+Dm1.wUsuario+''',FECMOD=SYSDATE WHERE 1=1 ';
        Try
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        Except
        ShowMessage ('Se ha producido un error al actualizar la tabla COB_DEV_POR_OFI');
        pnlTipodesembolso.Visible := False;
        exit;
        End;
     End;
  End;
//Final HPC_201707_COB

//CONDICION PARA ACTUALIZAR LA TABLA DE SOLICITUD DE DEVOLUCION DE EXCESO DE FSC
   If Dm1.cdsQry.FieldByName('CREDITO').AsString = 'EXC FSC' then
       XSQL := ' UPDATE COB_SOLICITUD_DEV_EXC_FSC_CAB '
          + ' SET FORPAGID =''' + Trim(DBLkuCTipDes.Text) + ''','
          + '     AGEBAN =''' + Trim(DBLkCDAgencias.Text) + ''','
          + '     OFDESPAG =''' + Trim(DBLkOfiDes.Text) + ''''
          + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
          + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
          + '       ASOID= ''' + DM1.cdsQry.FieldByName('ASOID').AsString + ''' '
   Else
      XSQL := ' UPDATE PRE_APR_DEV '
         + ' SET FORPAGID =''' + Trim(DBLkuCTipDes.Text) + ''','
         + '     AGEBAN =''' + Trim(DBLkCDAgencias.Text) + ''','
         + '     OFDESPAG =''' + Trim(DBLkOfiDes.Text) + ''''
         + ' WHERE ANODEV= ''' + DM1.cdsQry.FieldByName('ANODEV').AsString + ''' AND '
         + '       CORDEV= ''' + DM1.cdsQry.FieldByName('CORDEV').AsString + ''' AND '
         + '       CREDID= ''' + DM1.cdsQry.FieldByName('CREDID').AsString + ''' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  //ACTUALIZA EL CDS
   DM1.cdsQry.EDIT;
   DM1.cdsQry.FieldbyName('Forpagid').AsString := DBLkuCTipDes.Text;
   DM1.cdsQry.FieldbyName('Ageban').AsString := DBLkCDAgencias.Text;
   DM1.cdsQry.FieldbyName('Ofdespag').AsString := DBLkOfiDes.Text;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
   dbgDevPreAprobadasRowChanged(Self);
//Final HPC_201707_COB

   btOtroClick(self);
   pnlTipodesembolso.Visible := False;

End;

Procedure TfAprDev.DBLkuCTipDesChange(Sender: TObject);
Var
   xSQL: String;
Begin

   If DM1.cdsFormPago.Locate('TIPDESEID', VarArrayof([DBLkuCTipDes.text]), []) Then
   Begin
      EdtTipDes.Text := DM1.cdsFormPago.fieldbyname('TIPDESEABR').AsString;
      pnlOficinas.Visible := False;

      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '04' Then
      Begin
         xSQL := 'SELECT OFDESID,OFDESNOM '
                +'FROM APO110 '
                +'WHERE SUBSTR(OFDESID,1,1)<>''M'' '
                +'ORDER BY OFDESID';
         DM1.cdsOfDes.Close;
         DM1.cdsOfDes.DataRequest(xSQL);
         DM1.cdsOfDes.Open;
         lblCtaAhorros.Enabled := False;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := '';
         EdtSitCta.Text := '';
         pnlOficinas.Visible := True;
      End;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '05' Then
      Begin
         lblAgencia.Enabled := True;
         DBLkCDAgencias.Enabled := True;
      End;
      lblCtaAhorros.Enabled := False;
      EdtCtaAhorros.Text := '';
      EdtSitCta.Text := '';
      BtnSalir.Enabled := True;
      BtnCerrar.Enabled := True;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '06' Then
      Begin
         If Trim(DM1.cdsAso.FieldByName('SITCTA').AsString) <> 'A' Then
         Begin
            ShowMessage('CUENTA NO ESTA ACTIVA');
            Exit;
         End;
         lblCtaAhorros.Enabled := True;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := DM1.cdsAso.FieldByName('ASONCTA').AsString;
                    // EdtSitCta.Text := DM1.CrgDescrip('SITCTAID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)),'COB103','SITCTADES');
         BtnSalir.Enabled := True;
         BtnCerrar.Enabled := True;
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
End;

Procedure TfAprDev.DBLkuCTipDesExit(Sender: TObject);
Begin
   DBLkuCTipDesChange(self);
End;

Procedure TfAprDev.DBLkCDAgenciasChange(Sender: TObject);
Begin

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
End;

Procedure TfAprDev.FormCreate(Sender: TObject);
Begin
   DM1.cdsFormPago.Close;
   DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR '
                              +'FROM CRE104 '
                              +'WHERE TIPDESEID IN (''04'',''05'',''06'') ORDER BY TIPDESEID');
   DM1.cdsFormPago.Open;
   DBLkuCTipDes.LookupTable := dm1.cdsFormPago;
   DM1.cdsAgenciaBco.Close;
   DM1.cdsAgenciaBco.DataRequest('Select a.AGENBCOID,a.AGENBCODES,A.DPTOID,B.DPTODES '
                                +'FROM COB102 A, APO158 B '
                                +'WHERE A.DPTOID=B.DPTOID '
                                +'ORDER BY A.DPTOID,A.AGENBCODES');
   DM1.cdsAgenciaBco.Open;
   DBLkCDAgencias.LookupTable := dm1.cdsAgenciaBco;

   DM1.cdsOfDes.Close;
   DM1.cdsOfDes.DataRequest('SELECT OFDESID,OFDESNOM '
                           +'FROM APO110 '
                           +'WHERE SUBSTR(OFDESID,1,1)<>''M'' '
                           +'ORDER BY OFDESID');
   DM1.cdsOfDes.Open;
End;

Procedure TfAprDev.DBLkOfiDesChange(Sender: TObject);
Begin

   If DM1.cdsOfdes.Locate('OFDESID', VarArrayof([DBLkOfiDes.Text]), []) Then
   Begin
      EdtOfiDes.Text := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString;
      If DBLkuCTipDes.Text = '04' Then
      Begin
         BtnSalir.Enabled := True;
         BtnCerrar.Enabled := True;
      End;
   End
   Else
   Begin
      If Length(DBLkOfiDes.Text) <> 2 Then
      Begin
         Beep;
         EdtOfiDes.Text := '';
      End;
   End;
End;

Procedure TfAprDev.fcShapeBtn1Click(Sender: TObject);
Var
   xsql: String;
Begin

   If dm1.cdsQry.FieldByName('FLAANU').AsString = 'S' Then
   Begin
      ShowMessage('Registro Anulado..');
      exit;
   End;

   If dm1.cdsQry.FieldByName('FLADEVEFE').AsString = 'S' Then
   Begin
      ShowMessage('La Devoluciòn ya fue Efectuada');
      exit;
   End;

   grpDevPreAprobadas.Enabled := False;
   grbAsociados.Enabled := False;
   grbAprobacion.Enabled := False;

   xsql := 'Select * from Apo201 where asoid=''' + dm1.cdsQry.fieldbyname('Asoid').asstring + ''' ';
   dm1.cdsAso.Close;
   dm1.cdsAso.DataRequest(xsql);
   dm1.cdsAso.Open;

   //CONDICION PARA LA MODIFICACIONES PERMITIDAS EL LA SOLICITUD DE DEVOLUCION DE EXCESOS AL FSC
     If Dm1.cdsQry.FieldByName('CREDITO').AsString= 'EXC FSC' Then
       Begin
         BitBtn3.Enabled := False;
         BitBtn6.Enabled := False;
       End
     Else
       Begin
    //Inicio: HPP_201130_COB
    //SE DESHABILITA EL BOTON DE MODIFICAR VALORES
    //NO ELIMINAR ESTO PORQUE MAS ADELANTE SE PUEDE UTILIZAR SI SE CREA LOS PROCEDIMIENTOS PARA APLICAR
    // BitBtn3.Enabled := True;
    // BitBtn6.Enabled := True;
    //Fin: HPP_201130_COB
       End;

   pnlModificaciones.Top := 250;
   pnlModificaciones.Left := 232;
   pnlModificaciones.Visible := true;

End;

Procedure TfAprDev.BtnCerrarClick(Sender: TObject);
Begin

   grpDevPreAprobadas.Enabled := True;
   grbAsociados.Enabled := True;
   grbAprobacion.Enabled := True;
   pnlTipodesembolso.Visible := False;
End;

Procedure TfAprDev.Button2Click(Sender: TObject);
Begin
   grpDevPreAprobadas.Enabled := True;
   grbAsociados.Enabled       := True;
   pnlModificaciones.Visible  := False;
End;

//Aqui calculo el total que deberia devolver para poder extornar todo el prestamo
Function TfAprDev.TotalPordevolver: currency;
Var
   xAsoid, xCredid, Xsql: String;
   xtotal: currency;
Begin
   DM1.cdsQry2.Close;
   xAsoId := DM1.cdsQry.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsQry.fieldbyname('CREDID').AsString;

 //Si tiene cuotas pagadas
   xSQL := 'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT, '
          +'       NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT, '
          +'       NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
          +'       NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV, '
          +'       CREESTID,NROOPE,FOPERAC '
          +'  FROM CRE310 A '
          +' WHERE ASOID='+quotedstr(xAsoid)
          +'   AND CREDID='+quotedstr(xCredid)
          +'   AND CREESTID<>''13'' and CREESTID<>''04'' '
          +'   AND CREESTID<>''99'' '
          +'   AND NOT EXISTS (SELECT * FROM '
          +'                      (SELECT * FROM '
          +'                          (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,'
          +'                                  FOPERAC,MAX(CREMTODEV) DEV '
          +'                           FROM CRE310 '
          +'                           WHERE ASOID='+quotedstr(xAsoid)
          +'                             AND CREDID='+quotedstr(xCredid)
          +'                           group by ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB) '
          +'                       WHERE DEV>0) B '
          +'                  WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
          +'                    AND A.CRECUOTA=B.CRECUOTA AND A.NROOPE=B.NROOPE '
          +'                    AND A.FOPERAC=B.FOPERAC) '
          +'ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';
   dm1.cdsQry2.Close;
   dm1.cdsQry2.DataRequest(xsql);
   dm1.cdsQry2.Open;
   xtotal := 0;
   If dm1.cdsQry2.RecordCount > 0 Then
   Begin
      While Not dm1.cdsQry2.Eof Do
      Begin
         xtotal := xtotal + DM1.cdsQry2.FieldByname('CREMTOCOB').AsCurrency - DM1.cdsQry2.FieldBYname('CREAPLEXC').AsCurrency;
         dm1.cdsQry2.Next;
      End;
   End;
   Result := xtotal;
End;

Procedure TfAprDev.BitBtn6Click(Sender: TObject);
Var
   XSQL: String;
Begin

   If dm1.cdsQry.FieldByName('FLADEVEFE').AsString = 'S' Then
   Begin
      ShowMessage('No puede modificar Devolución Efectuada');
      exit;
   End;

   If dm1.cdsQry.FieldByName('FLAEXTPRE').AsString = '1' Then
   Begin
      If MessageDlg('Esta marcado para extornar prestamo, DESEA DESMARCARLO..', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
         Exit;
      End;
      If (dm1.cdsQry.FieldByName('DEVEFE').AsString = dm1.cdsQry.FieldByName('IMPDEV').AsString) And
         (dm1.cdsQry.FieldByName('APLEFE').AsString = dm1.cdsQry.FieldByName('IMPAPL').AsString) Then
      Begin
         XSQL := 'UPDATE PRE_APR_DEV '
                +'SET FLAEXTPRE = NULL, '
                +'   FLADEVEFE=''S'' ' 
                +'WHERE ANODEV='+quotedstr(DM1.cdsQry.FieldByName('ANODEV').AsString)
                +'  AND CORDEV='+quotedstr(DM1.cdsQry.FieldByName('CORDEV').AsString)
                +'  AND CREDID='+quotedstr(DM1.cdsQry.FieldByName('CREDID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        // ACTUALIZA EL CDS
         DM1.cdsQry.EDIT;
         DM1.cdsQry.FieldByName('FLAEXTPRE').AsString := '';
         DM1.cdsQry.FieldByName('FLADEVEFE').AsString := 'S';
         

         btOtroClick(self);
       End
      Else 
      Begin
         XSQL := 'UPDATE PRE_APR_DEV '
                +'SET FLAEXTPRE = NULL '
                +'WHERE ANODEV='+quotedstr(DM1.cdsQry.FieldByName('ANODEV').AsString)
                +'  and CORDEV='+quotedstr(DM1.cdsQry.FieldByName('CORDEV').AsString)
                +'  and CREDID='+quotedstr(DM1.cdsQry.FieldByName('CREDID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        // ACTUALIZA EL CDS
         DM1.cdsQry.EDIT;
         DM1.cdsQry.FieldByName('FLAEXTPRE').AsString := '';
         

         btOtroClick(self);
      End;
   End

   Else
   Begin
      If TotalPordevolver() <> dm1.Valores(dm1.cdsQry.Fieldbyname('IMPREV').AsString) Then
      Begin
         ShowMessage('Para EXTORNAR el prestamo debe Devolver todas las cuota');
         Exit;
      End;

      If MessageDlg('Esta seguro(a) de marcar para EXTORNAR PRESTAMO...', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
         Exit;
      End;

      XSQL := 'UPDATE PRE_APR_DEV '
             +'SET FLAEXTPRE = ''1'' '
             +'WHERE ANODEV='+quotedstr(DM1.cdsQry.FieldByName('ANODEV').AsString)
             +'  AND CORDEV='+quotedstr(DM1.cdsQry.FieldByName('CORDEV').AsString)
             +'  AND CREDID='+quotedstr(DM1.cdsQry.FieldByName('CREDID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   // ACTUALIZA EL CDS
      DM1.cdsQry.EDIT;
      DM1.cdsQry.FieldByName('FLAEXTPRE').AsString := '1';
      fAprDev.Refresh;
   End;

End;

// Generación de hoja de Excel
procedure TfAprDev.fcShapeBtn3Click(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
   If Dm1.cdsQry.RecordCount=0 Then
   Begin
     ShowMessage('No existe Información procesable...');
     Exit;
   End;

   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='DEV'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);

   With dbgDevPreAprobadas, dbgDevPreAprobadas.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := xArchivo+'.slk';
      dbgDevPreAprobadas.ExportOptions.TitleName := grpDevPreAprobadas.Caption;
      Opciones(dbgDevPreAprobadas.ExportOptions);
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgDevPreAprobadas.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
end;


// Generación de hoja de Excel
procedure TfAprDev.Opciones(AOptions: TwwExportOptions);
begin
   AOptions.Options := [esoDblQuoteFields, esoShowFooter];
   AOptions.Options := AOptions.Options + [esoShowTitle];
   AOptions.Options := AOptions.Options + [esoShowHeader];
   AOptions.Options := AOptions.Options + [esoShowRecordNo];
   AOptions.Options := AOptions.Options + [esoEmbedURL];
   AOptions.Options := AOptions.Options + [esoDynamicColors];
   AOptions.Options := AOptions.Options + [esoShowAlternating];
end;


procedure TfAprDev.rdbProcDevClick(Sender: TObject);
begin
// Generacion de hoja de Excel
  rdbTodosClick(Self);
end;

procedure TfAprDev.rdbDesaprobadoClick(Sender: TObject);
begin
// Generacion de hoja de Excel
  rdbTodosClick(Self);
end;

procedure TfAprDev.rdbAprobadoClick(Sender: TObject);
begin
// Generacion de hoja de Excel
  rdbTodosClick(Self);
end;

procedure TfAprDev.rdbPorAprobarClick(Sender: TObject);
begin
// Generacion de hoja de Excel
  rdbTodosClick(Self);
end;

procedure TfAprDev.rdbAnuladoClick(Sender: TObject);
begin
// Generacion de hoja de Excel
 DM1.cdsQry.EmptyDataSet;
end;

procedure TfAprDev.rdbTodosClick(Sender: TObject);
begin
// Generacion de hoja de Excel
 If Dm1.cdsQry.Active Then
    Begin
     DM1.cdsQry.EmptyDataSet;
     btOtroClick(Self);
    End
end;


procedure TfAprDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 DM1.cdsFormPago.Close;
 DM1.cdsFormPago.IndexFieldNames:='';
 DM1.cdsAgenciaBco.Close;
 DM1.cdsAgenciaBco.IndexFieldNames:='';
 DM1.cdsOfDes.Close;
 DM1.cdsOfDes.IndexFieldNames:='';
 DM1.cdsQry.Close;
 DM1.cdsQry.IndexFieldNames  :='';
 DM1.cdsAso.Close;
 DM1.cdsAso.IndexFieldNames  :='';
 DM1.cdsQry2.Close;
 DM1.cdsQry2.IndexFieldNames :='';

end;

procedure TfAprDev.BitBtn7Click(Sender: TObject);
begin
 Close;
end;

procedure TfAprDev.dbgDevPreAprobadasCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);

begin
   if Highlight then
   begin
     ABrush.Color := $00F2CD4D;
  end;
end;

procedure TfAprDev.Button1Click(Sender: TObject);
begin
   pnlSeleccion.Visible := False;
   pnlSeleccion.Top := 10;
   pnlSeleccion.Left := 8;
   grbAsociados.Enabled := True;
end;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
procedure TfAprDev.dblOrigenDevExit(Sender: TObject);
begin
   If dm1.cdsResol.Locate('CODTIPREF;CODREF',VarArrayof(['ORI',dblOrigenDev.Text]), []) Then
      edtOrigeanDev.Text:=DM1.cdsResol.FieldByname('DESCRIPCION').AsString
   Else edtOrigeanDev.Text:= '';
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
Function TfAprDev.verificaDevxOfi():Boolean;
var xsql:String;
    xretorno: boolean;
begin
   xretorno:=True;
   XSQL:='SELECT NUMREGOFI,NUMREGACT,USUCRE,FECMOD FROM DB2ADMIN.COB_DEV_POR_OFI WHERE 1=1 ';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(XSQL);
   DM1.cdsDLabo.Open;
   lbldevxofi.Caption := DM1.cdsDLabo.Fieldbyname('NUMREGOFI').AsString;
   lblactual.Caption  := DM1.cdsDLabo.Fieldbyname('NUMREGACT').AsString;
   If (DM1.cdsDLabo.Fieldbyname('NUMREGACT').AsInteger)+1 >
      (DM1.cdsDLabo.Fieldbyname('NUMREGOFI').AsInteger)  Then
   Begin
     xretorno:= False;
   End;
   Result := xretorno;
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
procedure TfAprDev.dblOrigenDevChange(Sender: TObject);
begin
 dblOrigenDevExit(self);
end;
//Final HPC_201707_COB 

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
procedure TfAprDev.dblMotivoDevExit(Sender: TObject);
begin
   If dm1.cdsReclamo.Locate('CODTIPREF;CODREF',VarArrayof(['MOT',dblMotivoDev.Text]), []) Then
      edtMotivoDev.Text:=DM1.cdsReclamo.FieldByname('DESCRIPCION').AsString
   Else edtMotivoDev.Text:= '';
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
procedure TfAprDev.dblMotivoDevChange(Sender: TObject);
begin
dblMotivoDevExit(SELF);
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones, también control de número de devoluciones por oficio para forma de pago 06.
procedure TfAprDev.dbgDevPreAprobadasRowChanged(Sender: TObject);
begin
 dblOrigenDev.Text := Dm1.cdsQry.FieldByName('CODORIDEV').AsString;
 If  Dm1.cdsQry.FieldByName('FORPAGID').AsString ='06' Then
 Begin
      verificaDevxOfi;
      pnlDevxOFi.Visible := True;
 End
 Else pnlDevxOFi.Visible := False;
end;
//Final HPC_201707_COB

End.

