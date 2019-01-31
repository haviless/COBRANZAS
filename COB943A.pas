//Inicio de Estámdares 01/08/2011
//Unidad             : COB943A
//Formulario         : FPREAPRODEV
//Fecha de Creación  :
//Autor              : Ricardo Medina Zavaleta
//Objetivo           : Solicitud de Devoluciones y/o Aplicaciones de pagos

//Actualizaciones    :
//HPP_200917_COB     : No se estaba considerando devoluciones anuladas
//HPP_201103_COB     : Se modifica una serie de restricciones al poner los importes para la aprobación de la devoluciones/aplicaciones, se modifican mensajes
//HPC_201129_COB     : 04/11/2011 Se desactiva la posibilidad de poder aplicar pagos y devolver pagos que no sean excesos.
//HPP_201130_COB     : Se realiza el pase a producción a partir del HPC_201129_COB
//HPC_201201_COB     : 05/01/2012 Se modifica para que acepte tambien las devoluciones de pagos a cuotas que no sean excesos.
//DPP_201201_COB     : Se realiza el pase a producción a partir del pase HPC_201201_COB
//HPC_201215_COB     : 01/06/2012 Se corrige problema cuando se revierte el pago de una devolucion
//                     21/06/2012Debido a la implementación del Fondo de Desgravamen se
//                     adiciona la columna de desgravamen "MONCOBDESGRAV"
//DPP_201212_COB     : Pase a producción a partir del pase HPC_201217
//HPC_201707_COB     : Se adiciona datos de motivo y origen de devoluciones.
//HPC_201816_COB     : Se mantiene la distribucion actual en una devolución de un pago en una cuota con mas de un pago
//COB_201822_HPC     : Se adiciona la actualización de la Forma de Pago
Unit COB943A;
Interface
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, Db,
   fcButton, fcImgBtn, fcShapeBtn, DBClient, wwdblook, Wwdbdlg, DBGrids;
Type
   TfPreAproDev = Class(TForm)
      grbAsociados: TGroupBox;
      grbPrestamos: TGroupBox;
      grbCronograma: TGroupBox;
      Panel1: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      EdtCodMod: TEdit;
      BitBuscar: TBitBtn;
      dtgPrestamo: TwwDBGrid;
      DBGCUOTAS: TwwDBGrid;
      pnlSeleccion: TPanel;
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
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      edtAplica: TEdit;
      Panel2: TPanel;
      edtRevierte: TEdit;
      chkExtornaPrestamo: TCheckBox;
      Label6: TLabel;
      fcShapeBtn1: TfcShapeBtn;
      grbacciones: TGroupBox;
      Shape1: TShape;
      Label7: TLabel;
      Button1: TButton;
      CDSCUOTAS: TClientDataSet;
      DSCUOTAS: TDataSource;
      CDSCTASPAG: TClientDataSet;
      DSCTASPAG: TDataSource;
      pnlDetallePago: TPanel;
      dbgCuotasPag: TwwDBGrid;
      Shape2: TShape;
      Label8: TLabel;
      Button2: TButton;
      fcsbOtro: TfcShapeBtn;
      fcShapeBtn3: TfcShapeBtn;
      MotDevo: TMemo;
      Label9: TLabel;
      Panel3: TPanel;
      edtNomGen: TEdit;
      fcSBTodos2: TfcShapeBtn;
      fcShapeBtn2: TfcShapeBtn;
      Label11: TLabel;
      pnlTipodesembolso: TPanel;
      Shape3: TShape;
      DBLkuCTipDes: TwwDBLookupCombo;
      EdtTipDes: TEdit;
      DBLkCDAgencias: TwwDBLookupComboDlg;
      EdtCodAgen: TEdit;
      EdtDepGir: TEdit;
      BtnCerrar: TButton;
      BtnSalir: TBitBtn;
      Label21: TLabel;
      lblAgencia: TLabel;
      lblCtaAhorros: TLabel;
      EdtCtaAhorros: TEdit;
      EdtSitCta: TEdit;
      BtnDesembolso: TBitBtn;
      Label10: TLabel;
      pnlOficinas: TPanel;
      Panel4: TPanel;
      EdtOfiDes: TEdit;
      DBLkOfiDes: TwwDBLookupCombo;
      Label12: TLabel;
      Panel5: TPanel;
      edtDevuelve: TEdit;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
    dblMotivoDev: TwwDBLookupCombo;
    Panel6: TPanel;
    edtMotivoDev: TEdit;
    Label13: TLabel;
//Final HPC_201707_COB
      Procedure BitBuscarClick(Sender: TObject);
      Procedure EdtCodModKeyPress(Sender: TObject; Var Key: Char);
      Procedure crgPrestamos();
      Procedure LimPrestamos();
      Procedure rbtApeNomClick(Sender: TObject);
      Procedure rbtDniClick(Sender: TObject);
      Procedure rbtCuentaClick(Sender: TObject);
      Procedure rbtCodModClick(Sender: TObject);
      Procedure LimpiaGrids();
      Procedure BitMostrarClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgAsociadoDblClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure Cargadatos();
      Procedure Button2Click(Sender: TObject);
      Procedure DBGCUOTASDblClick(Sender: TObject);
      Procedure dbgCuotasPagDblClick(Sender: TObject);
      Function verifmarc(transintid, crecuota, nroope, key: String; cremtocob: currency): boolean;
      Procedure dbgCuotasPagAfterDrawCell(Sender: TwwCustomDBGrid;
         DrawCellInfo: TwwCustomDrawGridCellInfo);
      Procedure DBGCUOTASDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtDevuelveKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtDevuelveExit(Sender: TObject);
      Procedure edtAplicaExit(Sender: TObject);
      Procedure edtAplicaKeyPress(Sender: TObject; Var Key: Char);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure dtgPrestamoDblClick(Sender: TObject);
      Procedure fcsbOtroClick(Sender: TObject);
      Procedure LimCronograma();
      Procedure LimCDS();
      Procedure LimTedit();
      Procedure fcShapeBtn3Click(Sender: TObject);
      Function TotalPordevolver(): currency;
      Procedure EdtCodModChange(Sender: TObject);
      Procedure EdtCodModExit(Sender: TObject);
      Function verifdevpend(asoid, credid: String): boolean;
      Procedure dtgPrestamoDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure marctodo();
      Procedure desmtodo();
      Procedure fcSBTodos2Click(Sender: TObject);
      Procedure chkExtornaPrestamoClick(Sender: TObject);
      Procedure fcShapeBtn2Click(Sender: TObject);
      Procedure DBLkuCTipDesChange(Sender: TObject);
      Procedure DBLkuCTipDesKeyPress(Sender: TObject; Var Key: Char);
      Procedure BtnDesembolsoClick(Sender: TObject);
      Procedure BtnCerrarClick(Sender: TObject);
      Procedure DBLkCDAgenciasChange(Sender: TObject);
      Procedure BtnSalirClick(Sender: TObject);
      Procedure DBLkOfiDesChange(Sender: TObject);
      Procedure DBLkuCTipDesExit(Sender: TObject);
      procedure edtDevuelveChange(Sender: TObject);
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
    procedure dblMotivoDevExit(Sender: TObject);
    procedure dblMotivoDevChange(Sender: TObject);
    procedure MotDevoKeyPress(Sender: TObject; var Key: Char);
//Inicio HPC_201816_COB 
//Se cierran las CDS utilizados
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//Final HPC_201816_COB
//Final HPC_201707_COB
   Private
    { Private declarations }
      Function MontoCobrado(xOfiDes: String): Currency;
//Inicio HPC_201816_COB 
//Si existe exceso se debe priorizar la devolución del exceso
      Function ExisteExceso():Boolean;
//Final HPC_201816_COB	  
//Final HPC_201707_COB
   Public
    { Public declarations }
   End;
Var
   fPreAproDev: TfPreAproDev;
Implementation
Uses COB902, COBDM1;
{$R *.dfm}

Procedure TfPreAproDev.BitBuscarClick(Sender: TObject);
Begin
   pnlSeleccion.Visible := True;
   pnlSeleccion.Top := 144;
   pnlSeleccion.Left := 8;
   grbAsociados.Enabled := False;
   grbacciones.Enabled := False;
   DBLkuCTipDes.Text := '';
   rbtApeNomClick(SELF);
End;
//Carga prestamos

Procedure TfPreAproDev.crgPrestamos;
Var
   xAsoId, xsql: String;
Begin
   LimPrestamos;
   xAsoId := Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
   xsql := 'SELECT SubStr(a.Credid,11,5) as Numero, b.TIPCREDES, '
      + '       A.TIPCREID, A.ASOID, A.ASOCODMOD, A.ASOCODPAGO, A.ASOAPENOM, A.USEID, A.CREFOTORG,'
      + '       A.CREFECINI, A.CREMTOSOL, A.CREMTOOTOR, A.CREMTOGIR, A.CREINTERES, A.CREDFLAT,'
      + '       A.CRECUOTA, A.CRENUMCUO, A.CRELUGGIRO, A.BANCOID, A.CRENUMCTA, A.CREMTOPAG,'
      + '       A.CRESDOACT, A.CREPERGRA, A.CRECUOPAG, A.CRECUOENV, A.CREPERIODI, A.CREMTOTAL,'
      + '       A.CRECAPPGO, A.CRENEWID, A.CRESALDOT, A.USUARIO, A.FREG, A.HREG, A.OFDESID,'
      + '       A.CALIFICAID, A.APRUEBAID, A.CREESTADO, A.TMONID, A.CUOTAINI, A.UPAGOID, A.UPROID,'
      + '       A.DPTOID, A.LISTAID, A.CREDID, A.CRECOM, A.CRESEG, A.CREPOR, A.CREGADM, A.CRECOMP,'
      + '       A.CREMORA, A.FORPAGOID, A.CRETCALID, A.TMONABR, A.CRETCALABR, A.LISTAABR,'
      + '       A.FORPAGOABR, A.CIAID, A.CREFRECL, A.CREESTID, A.CREANOMES, A.NROPAGARE,'
      + '       A.NROAUTDES, A.TIPCREDES, A.GARAPENOM, A.GARASOID, A.ASOCODAUX, A.NRONABO, A.NUMREF,'
      + '       A.FECREF, A.TIPOREF, A.NROFICIO, A.CIUDID, A.ARCHIVOFTP, A.AGENBANCOID, A.DPTOGIRO,'
      + '       A.USEIDGAR, A.TIPDESEID, A.BCOGIRO, A.CREMTONABO, A.CREFFINPAG, A.CREFINIPAG,'
      + '       A.CREBLOQFEC, A.USUBLOQ, A.CREBLOQ, A.FLGCAJA, A.FECHACAJA, A.CRENUMCOMP, A.CCOSID,'
      + '       A.CUENTAH, A.CUENTAD, A.CREGENCOB, A.FLGAUTOMA, A.REFANOMES, A.NROREFINAN,'
      + '       A.CAJAUSU, A.HORACAJA, A.ASOTIPID, A.ASODNI, A.ANULACAJA, A.MEN_ANU, A.MOT_PRE,'
      + '       A.NUMREFI, A.FLGREFI, A.CREFCAN, A.FLGINCONSIS, A.PERCONTA, A.C_ABN, A.CNTANOMM,'
      + '       A.FEC_RCP, A.CRECAPLIQ, A.CREFDES, A.CREMENOBS, A.TIPOCONT, A.CNTFLAG, A.CREMTODEP,'
      + '       A.CREFANUL, A.USERANUL, A.CRESUMCUO, A.CREMOTEXT, A.NROFICIO_BCK, A.MIGRADO,'
      + '       A.USUAUTCRE, A.FECAUTCRE, A.ESTAUTCRE, A.COMAUTCRE, A.USUANUSUP, A.FECANUSUP,'
      + '       A.MOTANUSUP, A.ESTANUSUP, A.DOCID, A.CCSERIE, A.CCNODOC, A.CIASER, A.CREMONINS,'
      + '       A.IMPCON, A.DNIRUC, A.FECIMPCON, A.CODARCHIVO, A.CREMTOAPO, A.AUTDESCRE,'
      + '       A.FECAUTDES, A.USUAUTDES, A.IMPCARAUT, A.NROCARAUT, A.DIASPROC, A.DESCENV,'
      + '       A.AUTDESGES, A.USUDESGES, A.FECHORDESGES '
      + 'FROM CRE301 a,CRE110 b '
      + 'Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId))
      + ' Order By a.CREFOTORG ';
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest(xsql);
   DM1.cdsSolicitud.Open;
   If DM1.cdsSolicitud.RecordCount > 0 Then
   Begin
      grbPrestamos.Enabled := True;
      DM1.cdsSolicitud.Last;
   End
   Else
      grbPrestamos.Enabled := False;
   TNumericField(DM1.cdsSolicitud.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsSolicitud.fieldbyname('CRESDOACT')).DisplayFormat := '###,###.#0';
   EdtCodMod.Text := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   edtNomGen.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
End;

Procedure TfPreAproDev.EdtCodModKeyPress(Sender: TObject; Var Key: Char);
Var
   xCondicion: String;
Begin
   If Key = #13 Then
   Begin
      If Length(Trim(EdtCodMod.Text)) > 10 Then
      Begin
         MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
         EdtCodMod.Text := '';
         Exit;
      End;
      EdtCodMod.Text := Format('%.10d', [StrToInt(EdtCodMod.Text)]);
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest('Select ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
         + 'From APO201 '
         + 'Where ASOCODMOD like ' + QuotedStr(Trim(EdtCodMod.Text) + '%'));
      DM1.cdsAso.Open;
      If DM1.cdsAso.RecordCount = 1 Then
      Begin
         LimPrestamos;
         LimCronograma;
         LimCDS;
         LimTedit;
         crgPrestamos;
      End
      Else
         If DM1.cdsAso.RecordCount > 1 Then
         Begin
            LimPrestamos;
            LimCronograma;
            LimCDS;
            LimTedit;
            pnlSeleccion.Visible := True;
            pnlSeleccion.Top := 144;
            pnlSeleccion.Left := 8;
            grbAsociados.Enabled := False;
            grbacciones.Enabled := False;
         End
         Else
         Begin
            LimPrestamos;
            LimCronograma;
            LimCDS;
            LimTedit;
            MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
         End;
   End;
End;

//Limpia Prestamos
Procedure TfPreAproDev.LimPrestamos;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES, '
      + '       A.TIPCREID, A.ASOID, A.ASOCODMOD, A.ASOCODPAGO, A.ASOAPENOM, A.USEID, A.CREFOTORG,'
      + '       A.CREFECINI, A.CREMTOSOL, A.CREMTOOTOR, A.CREMTOGIR, A.CREINTERES, A.CREDFLAT,'
      + '       A.CRECUOTA, A.CRENUMCUO, A.CRELUGGIRO, A.BANCOID, A.CRENUMCTA, A.CREMTOPAG,'
      + '       A.CRESDOACT, A.CREPERGRA, A.CRECUOPAG, A.CRECUOENV, A.CREPERIODI, A.CREMTOTAL,'
      + '       A.CRECAPPGO, A.CRENEWID, A.CRESALDOT, A.USUARIO, A.FREG, A.HREG, A.OFDESID,'
      + '       A.CALIFICAID, A.APRUEBAID, A.CREESTADO, A.TMONID, A.CUOTAINI, A.UPAGOID, A.UPROID,'
      + '       A.DPTOID, A.LISTAID, A.CREDID, A.CRECOM, A.CRESEG, A.CREPOR, A.CREGADM, A.CRECOMP,'
      + '       A.CREMORA, A.FORPAGOID, A.CRETCALID, A.TMONABR, A.CRETCALABR, A.LISTAABR,'
      + '       A.FORPAGOABR, A.CIAID, A.CREFRECL, A.CREESTID, A.CREANOMES, A.NROPAGARE,'
      + '       A.NROAUTDES, A.TIPCREDES, A.GARAPENOM, A.GARASOID, A.ASOCODAUX, A.NRONABO, A.NUMREF,'
      + '       A.FECREF, A.TIPOREF, A.NROFICIO, A.CIUDID, A.ARCHIVOFTP, A.AGENBANCOID, A.DPTOGIRO,'
      + '       A.USEIDGAR, A.TIPDESEID, A.BCOGIRO, A.CREMTONABO, A.CREFFINPAG, A.CREFINIPAG,'
      + '       A.CREBLOQFEC, A.USUBLOQ, A.CREBLOQ, A.FLGCAJA, A.FECHACAJA, A.CRENUMCOMP, A.CCOSID,'
      + '       A.CUENTAH, A.CUENTAD, A.CREGENCOB, A.FLGAUTOMA, A.REFANOMES, A.NROREFINAN,'
      + '       A.CAJAUSU, A.HORACAJA, A.ASOTIPID, A.ASODNI, A.ANULACAJA, A.MEN_ANU, A.MOT_PRE,'
      + '       A.NUMREFI, A.FLGREFI, A.CREFCAN, A.FLGINCONSIS, A.PERCONTA, A.C_ABN, A.CNTANOMM,'
      + '       A.FEC_RCP, A.CRECAPLIQ, A.CREFDES, A.CREMENOBS, A.TIPOCONT, A.CNTFLAG, A.CREMTODEP,'
      + '       A.CREFANUL, A.USERANUL, A.CRESUMCUO, A.CREMOTEXT, A.NROFICIO_BCK, A.MIGRADO,'
      + '       A.USUAUTCRE, A.FECAUTCRE, A.ESTAUTCRE, A.COMAUTCRE, A.USUANUSUP, A.FECANUSUP,'
      + '       A.MOTANUSUP, A.ESTANUSUP, A.DOCID, A.CCSERIE, A.CCNODOC, A.CIASER, A.CREMONINS,'
      + '       A.IMPCON, A.DNIRUC, A.FECIMPCON, A.CODARCHIVO, A.CREMTOAPO, A.AUTDESCRE,'
      + '       A.FECAUTDES, A.USUAUTDES, A.IMPCARAUT, A.NROCARAUT, A.DIASPROC, A.DESCENV,'
      + '       A.AUTDESGES, A.USUDESGES, A.FECHORDESGES '
      + 'FROM CRE301 a,CRE110 b '
      + 'Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr('!@#$%^&*+/*')
      + ' Order By a.CREFOTORG ';
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest(xSQL);
   DM1.cdsSolicitud.Open;
End;

Procedure TfPreAproDev.rbtApeNomClick(Sender: TObject);
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

Procedure TfPreAproDev.rbtDniClick(Sender: TObject);
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

Procedure TfPreAproDev.rbtCuentaClick(Sender: TObject);
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

Procedure TfPreAproDev.rbtCodModClick(Sender: TObject);
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

Procedure TfPreAproDev.LimpiaGrids;
Begin
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest('Select ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
      + 'From APO201 Where ASOID=' + QuotedStr('@#$!*@/#&^'));
   DM1.cdsAso.Open;
End;

Procedure TfPreAproDev.BitMostrarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If Length(Trim(edtBuscar.Text)) > 0 Then
   Begin
      If rbtApeNom.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
            + 'FROM APO201 '
            + 'WHERE ASOAPENOMDNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      If rbtDni.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
            + 'FROM APO201 '
            + 'WHERE ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      If rbtCuenta.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
            + 'FROM APO201 '
            + 'WHERE ASONCTA LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      If rbtCodMod.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
            + 'FROM APO201 '
            + 'WHERE ASOCODMOD LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
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

Procedure TfPreAproDev.BitSalirClick(Sender: TObject);
Begin
   pnlSeleccion.Visible := False;
   pnlSeleccion.Top := 10;
   pnlSeleccion.Left := 8;
   grbAsociados.Enabled := True;
   grbacciones.Enabled := True;
End;

Procedure TfPreAproDev.dtgAsociadoDblClick(Sender: TObject);
Begin
   crgPrestamos;
   BitSalirClick(self);
End;

Procedure TfPreAproDev.Button1Click(Sender: TObject);
Begin
   pnlSeleccion.Visible := False;
   pnlSeleccion.Top := 449;
   pnlSeleccion.Left := 8;
   grbAsociados.Enabled := True;
   grbacciones.Enabled := True;
End;

Procedure TfPreAproDev.FormActivate(Sender: TObject);
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devolucion.
var Xsql:STring;
//Final  HPC_201707_COB
Begin
   LimPrestamos;
   LimCronograma;
   DM1.cdsFormPago.Close;
   DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR FROM CRE104 WHERE TIPDESEID IN (''04'',''05'',''06'') ORDER BY TIPDESEID');
   DM1.cdsFormPago.Open;
   DBLkuCTipDes.LookupTable := dm1.cdsFormPago;
   DM1.cdsAgenciaBco.Close;
   DM1.cdsAgenciaBco.DataRequest('Select a.AGENBCOID,a.AGENBCODES,A.DPTOID,B.DPTODES FROM COB102 A, APO158 B WHERE A.DPTOID=B.DPTOID ORDER BY A.DPTOID,A.AGENBCODES');
   DM1.cdsAgenciaBco.Open;
   DBLkCDAgencias.LookupTable := dm1.cdsAgenciaBco;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
   Xsql:='Select  CODTIPREF,CODREF,DESCRIPCION,USUCRE,FECCRE From DB2ADMIN.COB_REF_DEVOLUCIONES Where CODTIPREF=''MOT'' ';
   Dm1.cdsResol.Close;
   Dm1.cdsResol.DataRequest(Xsql);
   Dm1.cdsResol.Open;
   dblMotivoDev.LookupTable := Dm1.cdsResol;
   dblMotivoDev.LookupField := 'CODREF';
//Final HPC_201707_COB
   grbAsociados.Enabled := True;
   grbCronograma.Enabled := False;
   grbacciones.Enabled := False;
   EdtCodMod.SetFocus;
End;

//CARGA DATOS DEL CRE310 PARA DETEMINAR LA DEVOLUCION
Procedure TfPreAproDev.Cargadatos;
Var
   XSQL, xasoid, xcredid, xcrecuota: String;
Begin

   DM1.cdsQry.Close;
   DM1.cdsQry2.Close;
   DM1.cdsQry3.Close;
   xAsoId := DM1.cdsCuotas.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsCuotas.fieldbyname('CREDID').AsString;
   xCrecuota := DM1.cdsCuotas.fieldbyname('CRECUOTA').AsString;
 //Si tiene cuotas pagadas
   XSQL :=
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
      'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES,' +
      '       NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC,MONCOBDESGRAV,	' +
      '       NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,TRANSINTID,CREOBS,ROWID KEY,' +
      'FOPERAC,FORPAGID FROM CRE310 A ' +
      ' WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''' AND crecuota =''' + xCrecuota + ''' ' +
      ' AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' AND NOT EXISTS ' +
      '(SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC, DEV FROM ' +
      '  (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC, DEV FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,MAX(CREMTODEV) DEV ' +
      '   FROM CRE310  ' +
      '   WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + '''  AND crecuota =''' + xCrecuota + ''' AND creestid<>''13'' ' +
      '   GROUP  BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB) ' +
      '   WHERE DEV>0) B ' +
      ' WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.CREMTOCOB=B.CREMTOCOB) ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';
//Final HPC_201707_COB
   dm1.cdsQry2.Close;
   dm1.cdsQry2.DataRequest(xsql);
   dm1.cdsQry2.Open;
   CDSCTASPAG.EmptyDataSet;

//Adiciona cuotas pagadas ha anular en el CDS
   If dm1.cdsQry2.RecordCount > 0 Then
   Begin
      dm1.cdsQry2.First;
      While Not dm1.cdsQry2.Eof Do
      Begin
         If DM1.cdsQry2.FieldBYname('CREMTOCOB').AsCurrency - DM1.cdsQry2.FieldBYname('CREAPLEXC').AsCurrency > 0 Then
           //Si todo el Monto cobrado fue execeso y fue aplicado en su totalidad ya no procede devolucion
         Begin
            CDSCTASPAG.Insert;
            CDSCTASPAG.FieldByName('ASOID').AsString := DM1.cdsQry2.FieldByname('ASOID').AsString;
            CDSCTASPAG.FieldByName('CREDID').AsString := DM1.cdsQry2.FieldByname('CREDID').AsString;
            CDSCTASPAG.FieldByName('CRECUOTA').AsString := DM1.cdsQry2.FieldByname('CRECUOTA').AsString;
            CDSCTASPAG.FieldByName('CREAMORT').AsString := DM1.cdsQry2.FieldByname('CREAMORT').AsString;
            CDSCTASPAG.FieldByName('CREINTERES').AsString := DM1.cdsQry2.FieldByname('CREINTERES').AsString;
            CDSCTASPAG.FieldByName('CREFLAT').AsString := DM1.cdsQry2.FieldByname('CREFLAT').AsString;
            //Inicio: DPP_201212_COB
            //Adiciona el campo de Desgravamen
            CDSCTASPAG.FieldByName('MONCOBDESGRAV').AsString := DM1.cdsQry2.FieldByname('MONCOBDESGRAV').AsString;
            //Fin: DPP_201212_COB
            CDSCTASPAG.FieldByName('CREMTOCOB').AsString := CurrToStr(DM1.cdsQry2.FieldByname('CREMTOCOB').AsCurrency - DM1.cdsQry2.FieldBYname('CREAPLEXC').AsCurrency);
            CDSCTASPAG.FieldByName('CREMTOEXC').AsString := CurrToStr(DM1.cdsQry2.FieldBYname('CREMTOEXC').AsCurrency - DM1.cdsQry2.FieldBYname('CREAPLEXC').AsCurrency);
            CDSCTASPAG.FieldByName('CREAPLEXC').AsString := DM1.cdsQry2.FieldBYname('CREAPLEXC').AsString;
            CDSCTASPAG.FieldByName('CREFPAG').AsString := DM1.cdsQry2.FieldByname('CREFPAG').AsString;
            CDSCTASPAG.FieldByName('CREFLAGDEV').AsString := DM1.cdsQry2.FieldByname('CREFLAGDEV').AsString;
            CDSCTASPAG.FieldByName('CREESTID').AsString := DM1.cdsQry2.FieldByname('CREESTID').AsString;
            CDSCTASPAG.FieldByName('NROOPE').AsString := DM1.cdsQry2.FieldByname('NROOPE').AsString;
            CDSCTASPAG.FieldByName('FOPERAC').AsString := DM1.cdsQry2.FieldByname('FOPERAC').AsString;
            CDSCTASPAG.FieldByName('NRONABO').AsString := DM1.cdsQry2.FieldByname('NRONABO').AsString;
            CDSCTASPAG.FieldByName('FORPAGID').AsString := DM1.cdsQry2.FieldByname('FORPAGID').AsString;
            CDSCTASPAG.FieldByName('TRANSINTID').AsString := DM1.cdsQry2.FieldByname('TRANSINTID').AsString;
            CDSCTASPAG.FieldByName('KEY').AsString := DM1.cdsQry2.FieldByname('KEY').AsString;
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
            CDSCTASPAG.FieldByName('CREOBS').AsString := DM1.cdsQry2.FieldByname('CREOBS').AsString;
//Final HPC_201707_COB
         End;
         DM1.cdsQry2.Next;
      End;
      CDSCTASPAG.First;
   //Inicio: DPP_201201_COB
   //Se quita la restriccion de que solo sea exceso para devolver, tambien se podra devolver pagos de cuotas
   End;
   {Else
   Begin
     ShowMessage('No existe exceso para devolver..');
     exit;
   End;}
   //Final: DPP_201201_COB
End;

Procedure TfPreAproDev.Button2Click(Sender: TObject);
Begin

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
   CDSCUOTAS.DisableControls;
   CDSCUOTAS.First;
   MotDevo.Text :='';
   While not CDSCUOTAS.Eof DO
   Begin
    // If CDSCUOTAS.FieldByName('FLG').AsString='1' Then
         MotDevo.Text := Trim(CDSCUOTAS.Fieldbyname('CREOBS').AsString);
     CDSCUOTAS.Next;
   End;
   CDSCUOTAS.First;
   CDSCUOTAS.EnableControls;
//Final HPC_201707_COB

   pnlDetallePago.Visible := False;
   pnlSeleccion.Top := 435;
   pnlSeleccion.Left := 10;
   grbAsociados.Enabled := True;
   grbacciones.Enabled := True;
   grbCronograma.Enabled := True;
   DBGCUOTAS.SetFocus;
End;

Procedure TfPreAproDev.DBGCUOTASDblClick(Sender: TObject);
Begin
   Cargadatos;
   If CDSCTASPAG.RecordCount > 0 Then
   Begin
      pnlDetallePago.Visible := True;
      pnlDetallePago.Left := 27;
      pnlDetallePago.Top := 148;
      grbacciones.Enabled := False;
      grbAsociados.Enabled := False;
      grbCronograma.Enabled := False;
   End;
End;

Procedure TfPreAproDev.dbgCuotasPagDblClick(Sender: TObject);
Var
   xtotal: currency;
Begin
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
   dbgCuotasPag.Columns[0].ReadOnly  := True;
   dbgCuotasPag.Columns[1].ReadOnly  := True;
   dbgCuotasPag.Columns[2].ReadOnly  := True;
   dbgCuotasPag.Columns[3].ReadOnly  := True;
   dbgCuotasPag.Columns[4].ReadOnly  := True;
   dbgCuotasPag.Columns[5].ReadOnly  := True;
   dbgCuotasPag.Columns[6].ReadOnly  := True;
   dbgCuotasPag.Columns[7].ReadOnly  := True;
   dbgCuotasPag.Columns[8].ReadOnly  := True;
   dbgCuotasPag.Columns[9].ReadOnly  := True;
//Final HPC_201707_COB

//Inicio HPC_201816_COB 
//verifica si hay algun exceso por devolver debe terner prioridad
  If not ExisteExceso Then
  Begin
     ShowMessage('EXISTE UN EXCESO PARA DEVOLVER, NO PUEDE DEVOLVER OTRO PAGO ANTES DEL EXCESO');
     EXIT;
  end;
//Final HPC_201816_COB 
   If (Length(Trim(CDSCTASPAG.FieldByName('NRONABO').AsString)) <> 0) And (CDSCTASPAG.FieldByName('FORPAGID').AsString = '15') Then
   Begin
      ShowMessage('ESTA PAGO A SIDO CANCELADA POR NOTA DE ABONO:' + dm1.cdsQry2.FieldByName('NRONABO').AsString + ' SOLO PODRA SER EXTORNADA CUANDO SE EXTORNE EL PRESTAMO QUE LA GENERO');
      Exit;
   End;
   If Length(TRIM(edtRevierte.Text)) = 0 Then edtRevierte.Text := '0.00';
   CDSCTASPAG.Edit;
   If CDSCTASPAG.FieldByName('Flag').AsString = '1' Then
   Begin
         //Si ya esta marcado y lo estoy desmarcado debo tambien borrarlo de CDSCUOTAS
      If verifmarc(CDSCTASPAG.FieldByName('TRANSINTID').AsString, CDSCTASPAG.FieldByName('CRECUOTA').AsString, CDSCTASPAG.FieldByName('NROOPE').AsString, CDSCTASPAG.FieldByName('KEY').AsString, CDSCTASPAG.FieldByName('CREMTOCOB').Ascurrency) Then
      Begin
         xtotal := DM1.Valores(edtRevierte.text) - CDSCTASPAG.FieldByName('CREMTOCOB').Ascurrency;
         CDSCUOTAS.Edit;
         CDSCUOTAS.Delete;
      End;
      CDSCTASPAG.FieldByName('Flag').AsString := '';

      //Si ya no existe pagos marcados en la cuota
      If Not CDSCUOTAS.Locate('CRECUOTA',VarArrayOf([DM1.cdsCuotas.FieldByname('CRECUOTA').AsString]),[]) Then
      Begin
         DM1.cdsCuotas.Edit;
         DM1.cdsCuotas.FieldByName('FLAGVAR').AsString := '';
      End;

   End
   Else
   Begin
      CDSCTASPAG.FieldByName('Flag').AsString := '1';
      xtotaL := DM1.Valores(edtRevierte.text) + CDSCTASPAG.FieldByName('CREMTOCOB').AsCurrency;
      CDSCUOTAS.Insert;
      CDSCUOTAS.FieldByName('CRECUOTA').AsString := CDSCTASPAG.FieldByName('CRECUOTA').AsString;
      CDSCUOTAS.FieldByName('CREMTOCOB').AsCurrency := CDSCTASPAG.FieldByName('CREMTOCOB').AsCurrency;
      CDSCUOTAS.FieldByName('CREINTERES').AsCurrency := CDSCTASPAG.FieldByName('CREINTERES').AsCurrency;
      CDSCUOTAS.FieldByName('CREFLAT').AsCurrency := CDSCTASPAG.FieldByName('CREFLAT').AsCurrency;
      //Inicio: DPP_201212_COB
      //Adiciona el campo de Desgravamen
      CDSCUOTAS.FieldByName('MONCOBDESGRAV').AsCurrency := CDSCTASPAG.FieldByName('MONCOBDESGRAV').AsCurrency;
      //Fin: DPP_201212_COB
      CDSCUOTAS.FieldByName('NROOPE').AsString := CDSCTASPAG.FieldByName('NROOPE').AsString;
      CDSCUOTAS.FieldByName('FOPERAC').AsDateTime := CDSCTASPAG.FieldByName('FOPERAC').AsDateTime;
      CDSCUOTAS.FieldByName('CREFPAG').AsDateTime := CDSCTASPAG.FieldByName('CREFPAG').AsDateTime;
      CDSCUOTAS.FieldByName('TRANSINTID').AsString := CDSCTASPAG.FieldByName('TRANSINTID').AsString;
      CDSCUOTAS.FieldByName('KEY').AsString := CDSCTASPAG.FieldByName('KEY').AsString;
      //Inicio: DPP_201212_COB
      CDSCUOTAS.FieldByName('CREMTOEXC').AsCurrency := CDSCTASPAG.FieldByName('CREMTOEXC').AsCurrency;
      CDSCUOTAS.FieldByName('MONCOBDESGRAV').AsCurrency   := CDSCTASPAG.FieldByName('MONCOBDESGRAV').AsCurrency;
      CDSCUOTAS.FieldByName('CREFLAT').AsCurrency   := CDSCTASPAG.FieldByName('CREFLAT').AsCurrency;
      CDSCUOTAS.FieldByName('CREAMORT').AsCurrency  := CDSCTASPAG.FieldByName('CREAMORT').AsCurrency;
//Inicio COB_201822_HPC
//Se adiciona la actualización de la Forma de Pago
      CDSCUOTAS.FieldByName('FORPAGID').AsString  := CDSCTASPAG.FieldByName('FORPAGID').AsString;
//Fin COB_201822_HPC
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
      CDSCUOTAS.FieldByName('CREOBS').AsString      := CDSCTASPAG.FieldByName('CREOBS').AsString;
//Final  HPC_201707_COB
      CDSCUOTAS.Last;
      CDSCUOTAS.First;
      DM1.cdsCuotas.Edit;
      DM1.cdsCuotas.FieldByName('FLAGVAR').AsString := '1';
   End;
   edtRevierte.Text := FormatCurr('###,###,##0.00', xtotaL);
   edtDevuelve.Text := FormatCurr('###,###,##0.00', xtotaL);
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
//fPreAproDev.Refresh;
//Final  HPC_201707_COB
End;

//verifica si la cuota esta marcada
Function TfPreAproDev.verifmarc(transintid, crecuota, nroope, key: String; cremtocob: currency): boolean;
Begin
   If CDSCUOTAS.Locate('TRANSINTID;CRECUOTA;CREMTOCOB;NROOPE;KEY', VarArrayOf([transintid, crecuota, cremtocob, nroope, key]), []) Then
      Result := True
   Else
      Result := False;
End;

Procedure TfPreAproDev.dbgCuotasPagAfterDrawCell(Sender: TwwCustomDBGrid;
   DrawCellInfo: TwwCustomDrawGridCellInfo);
Begin
//PRIMERO VERIFICA SI FUE MARCADA
   If verifmarc(CDSCTASPAG.FieldByName('TRANSINTID').AsString, CDSCTASPAG.FieldByName('CRECUOTA').AsString, CDSCTASPAG.FieldByName('NROOPE').AsString, CDSCTASPAG.FieldByName('KEY').AsString, CDSCTASPAG.FieldByName('CREMTOCOB').AsCurrency) Then
   Begin
      CDSCTASPAG.Edit;
      CDSCTASPAG.FieldByName('Flag').AsString := '1';
   End;
End;

Procedure TfPreAproDev.DBGCUOTASDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If dm1.cdsCuotas.FieldByName('flagvar').AsString = '1' Then
   Begin
      DBGCUOTAS.Canvas.Font.Color := clRed;
      DBGCUOTAS.DefaultDrawDataCell(Rect, Field, State);
   End;
End;

Procedure TfPreAproDev.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TfPreAproDev.edtDevuelveKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TfPreAproDev.edtDevuelveExit(Sender: TObject);
Begin
   if length(trim(edtDevuelve.Text))=0 then edtDevuelve.Text:='0';
   if length(trim(edtAplica.Text))=0 then edtAplica.Text:='0';

   If dm1.Valores(edtDevuelve.Text) > dm1.Valores(edtRevierte.Text) Then
    Begin
      ShowMessage('El Importe a Devolver no debe ser mayor al Importe a Revertir');
      edtDevuelve.Text := '0.00';
    End;

   If Length(Trim(edtDevuelve.Text)) = 0 Then
   Begin
      edtDevuelve.Text := '0.00';
   End;
   edtDevuelve.Text := FormatFloat('##,###,##0.#0', DM1.Valores(edtDevuelve.Text));
   //Inicio: HPP_201130_COB
   //NO ELIMINAR ESTO PORQUE MAS ADELANTE SE PUEDE UTILIZAR SI SE CREA LOS PROCEDIMIENTOS PARA APLICAR
   //edtAplica.Text := FormatCurr('##,###,##0.#0', dm1.Valores(edtRevierte.Text) - dm1.Valores(edtDevuelve.Text));
   //Fin: HPP_201130_COB
   If DM1.Valores(edtDevuelve.Text) > 0 Then
      BtnDesembolso.Enabled := True
   Else
   Begin
      DBLkuCTipDes.Text := '';
      DBLkCDAgencias.Text := '';
      BtnDesembolso.Enabled := False;
   End;
End;

Procedure TfPreAproDev.edtAplicaExit(Sender: TObject);
Begin
   if length(trim(edtDevuelve.Text))=0 then edtDevuelve.Text:='0';
   if length(trim(edtAplica.Text))=0 then edtAplica.Text:='0';

   If dm1.Valores(edtAplica.Text) > dm1.Valores(edtRevierte.Text) Then
    Begin
      ShowMessage('El Importe a Aplicar no debe ser mayor al Importe a Revertir');
      edtAplica.Text := '0.00';
    End;

   If Length(Trim(edtAplica.Text)) = 0 Then
   Begin
      edtAplica.Text := '0.00';
   End;
   edtAplica.Text := FormatFloat('##,###,##0.#0', DM1.Valores(edtAplica.Text));
   edtDevuelve.Text := FormatCurr('##,###,##0.#0', dm1.Valores(edtRevierte.Text) - dm1.Valores(edtAplica.Text));
End;

Procedure TfPreAproDev.edtAplicaKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TfPreAproDev.fcShapeBtn1Click(Sender: TObject);
Var
   xmsg1, xflgExtorno, xsql: String;
   XCORR: INTEGER;

   function montoCobradoDetalle():Currency;
      var mtocob:Currency;
   begin
      mtocob:= 0;
         CDSCUOTAS.First;
         While Not CDSCUOTAS.Eof Do
         Begin
            mtocob := mtocob +CDSCUOTAS.FieldByName('CREMTOCOB').value;
            CDSCUOTAS.Next;
         End;
      result := mtocob;
   end;

Begin
   if length(trim(edtDevuelve.Text))=0 then edtDevuelve.Text:='0';
   if length(trim(edtAplica.Text))=0 then edtAplica.Text:='0';

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
   If  Length(Trim(dblMotivoDev.Text))=0 Then
   Begin
      ShowMessage('Debe seleccionar un Motivo de devolución.');
      dblMotivoDev.SetFocus;
      dblMotivoDev.DropDown;
      exit;
   End;
//Final HPC_201707_COB
   If Length(Trim(MotDevo.Lines.Text)) < 20 Then
   Begin
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
      ShowMessage('Debe ingresar una observación de devolución más consistente.');
//Final HPC_201707_COB
      MotDevo.SetFocus;
      exit;
   End;
   If (DBLkuCTipDes.Text = '06') And (Length(Trim(EdtCtaAhorros.Text)) = 0) Then
   Begin
      ShowMessage('Existe inconsistencia en el tipo de desembolso');
      MotDevo.SetFocus;
      exit;
   End;
   If DBLkuCTipDes.Text = '04' Then
   Begin
      If Length(trim(DBLkOfiDes.Text)) = 0 Then
      Begin
         ShowMessage('Debe ingresar la oficina que desembolsa');
         Exit;
      End;
   End;
   If (DM1.Valores(edtDevuelve.Text) > 0) And (Length(trim(DBLkuCTipDes.Text)) = 0) Then
   Begin
      ShowMessage('Debe ingresar el Tipo de Desembolso de la Devolución');
      if BtnDesembolso.Enabled=False then edtDevuelveExit(Sender);
      BtnDesembolso.SetFocus;
      exit;
   End;
//Inicio: HPP_201130_COB
  //NO ELIMINAR ESTO PORQUE MAS ADELANTE SE PUEDE UTILIZAR SI SE CREA LOS PROCEDIMIENTOS PARA APLICAR
  { If DM1.Valores(edtDevuelve.Text) + DM1.Valores(edtAplica.Text) > DM1.Valores(edtRevierte.Text) Then
   Begin
      ShowMessage('La suma de los Importes asignados para la Devolución y la Aplicación, es mayor al Importe a Revertir.');
      If DM1.Valores(edtDevuelve.Text) >= DM1.Valores(edtAplica.Text) Then
         edtDevuelve.SetFocus
      Else
         edtAplica.SetFocus;
      exit;
   End;}
//Fin: HPP_201130_COB

   If ((DM1.Valores(edtDevuelve.Text)<0) or (DM1.Valores(edtRevierte.Text)<0) or (DM1.Valores(edtAplica.Text)<0) ) then
   Begin
      ShowMessage('No se puede ingresar valores menores a cero.');
      exit;
   END;

//Inicio: HPP_201130_COB
   //NO ELIMINAR ESTO PORQUE MAS ADELANTE SE PUEDE UTILIZAR SI SE CREA LOS PROCEDIMIENTOS PARA APLICAR
   {If (DM1.Valores(edtDevuelve.Text) + DM1.Valores(edtAplica.Text) <> DM1.Valores(edtRevierte.Text)) Or
      (DM1.Valores(edtDevuelve.Text) + DM1.Valores(edtAplica.Text) = 0) Then
   Begin
        ShowMessage('La suma de los Importes asignados para la Devolución y la Aplicación, debe ser igual al Importe a Revertir.');
      If DM1.Valores(edtDevuelve.Text) >= DM1.Valores(edtAplica.Text) Then
         edtDevuelve.SetFocus
      Else
         edtAplica.SetFocus;
      exit;
   End;}
//Fin: HPP_201130_COB

   If DM1.Valores(edtRevierte.Text) = 0 Then
   Begin
      ShowMessage('Los Importes a Revertir son CERO, seleccione cuotas.');
      DBGCUOTAS.SetFocus;
      exit;
   End;

   If MessageDlg('ESTA SEGURO DE GRABAR LA SOLICITUD DE DEVOLUCION ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      If (TotalPordevolver() = dm1.Valores(edtRevierte.Text)) And (chkExtornaPrestamo.Checked = False) Then
      Begin
         If MessageDlg('EXTORNAR PRESTAMO?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         Begin
            chkExtornaPrestamo.Checked := True;
         End;
      End;

      If chkExtornaPrestamo.Checked Then
      Begin
         If TotalPordevolver() <> dm1.Valores(edtRevierte.Text) Then
         Begin
            ShowMessage('Para EXTORNAR el prestamo debe Devolver todas las cuota');
            exit;
         End;
         xmsg1 := 'Prestamo a Extorna: ' + COPY(dm1.cdsCuotas.FieldByName('CREDID').AsString, 9, 7);
         xflgExtorno := '1';
      End
      Else
      Begin
         xmsg1 := '';
         xflgExtorno := '';
      End;

      if(DM1.Valores(edtRevierte.Text)<> montoCobradoDetalle()) then
      begin
          showmessage('Se ha detectado inconsistencia en los importes al momento de registrar la solicitud.'+chr(13)+'Por favor vuelva a registrar la Solicitud');
          exit;
      end;

      If MessageDlg('Importe a Devolver :' + edtDevuelve.Text + ', Importe a Aplicar:' + edtAplica.Text +
         ' ' + xmsg1 + ' Esta seguro(a) ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         //GENERA CORRELATIVO DE PRE APROBACION DE DEVOLUCION
         XSQL := 'SELECT ANODEV,MAX(CORDEV) CORDEV FROM PRE_APR_DEV WHERE ANODEV=''' + FormatDateTime('YYYY', DM1.FechaSys) + ''' GROUP BY ANODEV';
         DM1.cdsQry2.CLOSE;
         DM1.cdsQry2.DataRequest(XSQL);
         DM1.cdsQry2.Open;
         If DM1.cdsQry2.RecordCount = 0 Then
            XCORR := 1
         Else
            XCORR := StrToInt(DM1.cdsQry2.FieldByName('CORDEV').asstring) + 1;

         //GENERA REGISTRO DE PREAPROBACION   (CABECERA)
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
       //XSQL := 'INSERT INTO PRE_APR_DEV (ASOID,CREDID,TIPCREID,ASOAPENOM,ASOCODMOD,IMPREV,IMPDEV,IMPAPL,FLAEXTPRE,USUCRE,FECCRE,HORCRE,MOTDEV,ANODEV,CORDEV,FORPAGID,AGEBAN,OFDESPAG) VALUES (' +
         XSQL := 'INSERT INTO PRE_APR_DEV (ASOID,CREDID,TIPCREID,ASOAPENOM,ASOCODMOD,IMPREV,IMPDEV,IMPAPL,FLAEXTPRE,USUCRE,FECCRE,HORCRE,MOTDEV,CODMOTDEV,ANODEV,CORDEV,FORPAGID,AGEBAN,OFDESPAG) VALUES (' +
//Final HPC_201707_COB
            QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString) + ',' +
            QuotedStr(DM1.cdsSolicitud.FieldByName('CREDID').AsString) + ',' +
            QuotedStr(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + ',' +
            QuotedStr(DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString) + ',' +
            QuotedStr(DM1.cdsSolicitud.FieldByName('ASOCODMOD').AsString) + ',' +
            CurrToStr(DM1.Valores(edtRevierte.Text)) + ',' +
            CurrToStr(DM1.Valores(edtDevuelve.Text)) + ',' +
            CurrToStr(DM1.Valores(edtAplica.Text)) + ',' +
            QuotedStr(xflgExtorno) + ',' +
            QuotedStr(DM1.wUsuario) + ',' +
            QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
            'TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),' +
            QuotedStr(Trim(MotDevo.Lines.Text)) + ',' +
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
            QuotedStr(Trim(dblMotivoDev.Text)) + ',' +
//Final HPC_201707_COB
            QuotedStr(FormatDateTime('YYYY', DM1.FechaSys)) + ',' +
            QuotedStr(Format('%.10d', [XCORR])) + ',' +
            QuotedStr(TRIM(DBLkuCTipDes.Text)) + ',' +
            QuotedStr(TRIM(DBLkCDAgencias.Text)) + ',' + QuotedStr(TRIM(DBLkOfiDes.Text)) + ')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        //GENERA DETALLE DE PREAPROBACION
         CDSCUOTAS.First;
         While Not CDSCUOTAS.Eof Do
         Begin
            //Inicio: DPP_201212_COB
            //Adiciona el campo de Desgravamen
        //  XSQL := 'INSERT INTO PRE_APR_DEV_DET (ANODEV,CORDEV,ASOID,CREDID,CRECUOTA,MONREV,NROOPE,FOPERAC,TRANSINTID,CREMTOCOB,CREINTERES,CREFLAT,CREFPAG) VALUES (' +
//Inicio COB_201822_HPC
//Se adiciona la actualización de la Forma de Pago
            XSQL := 'INSERT INTO PRE_APR_DEV_DET (ANODEV,CORDEV,ASOID,CREDID,CRECUOTA,MONREV,FORPAGID,NROOPE,FOPERAC,TRANSINTID,CREMTOCOB,CREINTERES,CREFLAT,CREFPAG,CREAMORT,CREMTOEXC,MONCOBDESGRAV) VALUES (' +
            //Fin: DPP_201212_COB
               QuotedStr(FormatDateTime('YYYY', DM1.FechaSys)) + ',' +
               QuotedStr(Format('%.10d', [XCORR])) + ',' +
               QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString) + ',' +
               QuotedStr(DM1.cdsSolicitud.FieldByName('CREDID').AsString) + ',' +
               CDSCUOTAS.FieldByName('CRECUOTA').AsString + ',' +
               CDSCUOTAS.FieldByName('CREMTOCOB').AsString + ',' +
               QuotedStr(CDSCUOTAS.FieldByName('FORPAGID').AsString )+ ',' +
//Fin COB_201822_HPC
               QuotedStr(CDSCUOTAS.FieldByName('NROOPE').AsString) + ',' +
               QuotedStr(CDSCUOTAS.FieldByName('FOPERAC').AsString) + ',' +
               QuotedStr(CDSCUOTAS.FieldByName('TRANSINTID').AsString) + ',' +
               CDSCUOTAS.FieldByName('CREMTOCOB').AsString + ',' +
               CDSCUOTAS.FieldByName('CREINTERES').AsString + ',' +
               CDSCUOTAS.FieldByName('CREFLAT').AsString + ',' +
               //Inicio: DPP_201212_COB
               //Adiciona el campo de Desgravamen
               //QuotedStr(CDSCUOTAS.FieldByName('CREFPAG').AsString) + ')';
               QuotedStr(CDSCUOTAS.FieldByName('CREFPAG').AsString) + ',' +
               CDSCUOTAS.FieldByName('CREAMORT').AsString + ',' +
               CDSCUOTAS.FieldByName('CREMTOEXC').AsString + ',' +
               CDSCUOTAS.FieldByName('MONCOBDESGRAV').AsString + ')';
               //Fin: DPP_201212_COB
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            CDSCUOTAS.Next;
         End;
         fcsbOtroClick(self);
      End;
   End;
End;

Procedure TfPreAproDev.dtgPrestamoDblClick(Sender: TObject);
Var
   xsql, xasoid: String;
Begin
   If verifdevpend(dm1.cdsSolicitud.FieldByName('ASOID').AsString, dm1.cdsSolicitud.FieldByName('CREDID').AsString) Then
   Begin


      ShowMessage('Tiene Devoluciones sin resolver, mientras que no resuelva esas Devoluciones no podrá efectuar otra..');
      
      exit;
   End;
   xasoid := dm1.cdsSolicitud.FieldByName('ASOID').AsString;
   //Inicio: DPP_201201_COB
   //SE PODRA DEVOLVER TAMBIEN PAGO DE CUOTA, NO SOLO EXCESOS
   //xsql := 'SELECT ASOID,CREDID,CREANO,CREMES,CREFVEN,CRECAPITAL,CREMTOINT,CREMTOFLAT,NVL(CREMTOCOB,0) AS CREMTOCOB,NVL(CREMTO,0) AS CREMTO,CRECUOTA,CREESTADO,CREESTID,CREAMORT,CREFLAT,CREMTOEXC,CREAPLEXC,FLAGVAR FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('CREDID').AsString)) + ' AND NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0)>0 Order By CREDID,CRECUOTA';
   //Inicio: DPP_201212_COB
   //Adiciona el campo de Desgravamen
     //xsql := 'SELECT ASOID,CREDID,CREANO,CREMES,CREFVEN,CRECAPITAL,CREMTOINT,CREMTOFLAT,NVL(CREMTOCOB,0) AS CREMTOCOB,NVL(CREMTO,0) AS CREMTO,CRECUOTA,CREESTADO,CREESTID,CREAMORT,CREFLAT,CREMTOEXC,CREAPLEXC,FLAGVAR FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('CREDID').AsString)) + ' Order By CREDID,CRECUOTA';
     xsql := 'SELECT ASOID,CREDID,CREANO,CREMES,CREFVEN,CRECAPITAL,CREMTOINT,CREMTOFLAT,NVL(CREMTOCOB,0) AS CREMTOCOB,NVL(CREMTO,0) AS CREMTO,CRECUOTA,CREESTADO,CREESTID,CREAMORT,CREFLAT,CREMTOEXC,CREAPLEXC,FLAGVAR,MONPACDESGRAV,MONCOBDESGRAV	 FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('CREDID').AsString)) + ' Order By CREDID,CRECUOTA';
   //Fin: DPP_201212_COB
   //Final: DPP_201201_COB
   dm1.cdsCuotas.Close;
   dm1.cdsCuotas.DataRequest(xsql);
   dm1.cdsCuotas.Open;

   //Inicio: DPP_201201_COB
   //Se quita el mensaje si no existe exceso para devolver
   {If dm1.cdsCuotas.RecordCount=0 then
   Begin
      ShowMessage('No existe excesos para devolver');
      exit;
   End;}
   //Final: DPP_201201_COB

   TNumericField(dm1.cdsCuotas.fieldbyname('CRECAPITAL')).DisplayFormat := '###,###.#0';
   TNumericField(dm1.cdsCuotas.fieldbyname('CREMTOINT')).DisplayFormat := '###,###.#0';
   TNumericField(dm1.cdsCuotas.fieldbyname('CREMTOFLAT')).DisplayFormat := '###,###.#0';
   TNumericField(dm1.cdsCuotas.fieldbyname('CREMTOCOB')).DisplayFormat := '###,###.#0';
   TNumericField(dm1.cdsCuotas.fieldbyname('CREMTO')).DisplayFormat := '###,###.#0';
   DBGCuotas.DataSource := dm1.dsCuotas;
   grbPrestamos.Enabled := False;
   grbAsociados.Enabled := False;
   grbAcciones.Enabled := True;
   grbCronograma.Enabled := True;
   DBGCUOTAS.SetFocus;
End;

Procedure TfPreAproDev.fcsbOtroClick(Sender: TObject);
Begin
   LimCronograma;
   LimCDS;
   LimTedit;
   grbAsociados.Enabled := true;
   grbCronograma.Enabled := false;
   grbacciones.Enabled := false;
   fcSBTodos2.Caption := 'Marc. Todos';
   If dm1.cdsSolicitud.RecordCount > 0 Then
   Begin
      grbPrestamos.Enabled := true;
      grbPrestamos.SetFocus;
   End
   Else
      grbPrestamos.Enabled := false;
End;
//limpia cronogramas

Procedure TfPreAproDev.LimCronograma;
Var
   xsql: String;
Begin
   //Inicio: DPP_201212_COB
   //Adiciona el campo de Desgravamen
   //xsql := 'SELECT ASOID,CREDID,CREANO,CREMES,CREFVEN,CRECAPITAL,CREMTOINT,CREMTOFLAT,NVL(CREMTOCOB,0) AS CREMTOCOB,NVL(CREMTO,0) AS CREMTO,CRECUOTA,CREESTADO,CREESTID,CREAMORT,CREFLAT,CREMTOEXC,CREAPLEXC,FLAGVAR FROM CRE302 Where ASOID =' + QuotedStr('!@#$%^&*+/*') + ' And CREDID=' + QuotedStr('!@#$%^&*+/*') + ' Order By CREDID,CRECUOTA';
   xsql := 'SELECT ASOID,CREDID,CREANO,CREMES,CREFVEN,CRECAPITAL,CREMTOINT,CREMTOFLAT,NVL(CREMTOCOB,0) AS CREMTOCOB,NVL(CREMTO,0) AS CREMTO,CRECUOTA,CREESTADO,CREESTID,CREAMORT,CREFLAT,CREMTOEXC,CREAPLEXC,FLAGVAR, MONPACDESGRAV,MONCOBDESGRAV FROM CRE302 Where ASOID =' + QuotedStr('!@#$%^&*+/*') + ' And CREDID=' + QuotedStr('!@#$%^&*+/*') + ' Order By CREDID,CRECUOTA';
   //Fin: DPP_201212_COB
   dm1.cdsCuotas.Close;
   dm1.cdsCuotas.DataRequest(xsql);
   dm1.cdsCuotas.Open;
End;
//Limpia CDS

Procedure TfPreAproDev.LimCDS;
Begin
   CDSCUOTAS.EmptyDataSet;
   CDSCTASPAG.EmptyDataSet;
End;
//Limpia tedit

Procedure TfPreAproDev.LimTedit;
Begin
   edtDevuelve.Text := '0.00';
   edtAplica.Text := '0.00';
   edtRevierte.Text := '0.00';
   chkExtornaPrestamo.Checked := False;
   MotDevo.Lines.Text := '';
//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
   dblMotivoDev.Text :='';
   edtMotivoDev.Text :='';
//Final HPC_201707_COB
End;

Procedure TfPreAproDev.fcShapeBtn3Click(Sender: TObject);
Begin
   close;
End;

//Aqui calculo el total que deberia devolver para poder extornar todo el prestamo

Function TfPreAproDev.TotalPordevolver: currency;
Var
   xAsoid, xCredid, Xsql: String;
   xtotal: currency;
Begin
   DM1.cdsQry2.Close;
   xAsoId := DM1.cdsCuotas.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsCuotas.fieldbyname('CREDID').AsString;

 //Si tiene cuotas pagadas
   XSQL :=
      //Inicio: DPP_201212_COB
      //Adiciona el campo de Desgravamen
      //'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC,NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC FROM CRE310 A ' +
      'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC,NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC,MONCOBDESGRAV '+
      ' FROM CRE310 A ' +
      //Fin: DPP_201212_COB
      ' WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + '''' +
      ' AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' AND NOT EXISTS ' +
      '(SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC, DEV FROM ' +
      '  (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC, DEV  FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,MAX(CREMTODEV) DEV ' +
      '   FROM CRE310  ' +





      '   WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''' AND creestid<>''13'' ' +
      '   GROUP  BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB) ' +
      '   WHERE DEV>0) B ' +
      ' WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC) ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';
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

Procedure TfPreAproDev.EdtCodModChange(Sender: TObject);
Begin
   LimCDS;
   LimTedit;
End;

Procedure TfPreAproDev.EdtCodModExit(Sender: TObject);
Begin
   If Length(Trim(EdtCodMod.Text)) = 0 Then
   Begin
      BitBuscarClick(self);
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
   DM1.cdsAso.DataRequest('Select ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
      + 'From APO201 '
      + 'Where ASOCODMOD LIKE ' + QuotedStr(Trim(EdtCodMod.Text) + '%'));
   DM1.cdsAso.Open;
   If DM1.cdsAso.RecordCount = 1 Then
   Begin
      LimPrestamos;
      LimCronograma;
      LimCDS;
      LimTedit;
      crgPrestamos;
   End
   Else
      If DM1.cdsAso.RecordCount > 1 Then
      Begin
         LimPrestamos;
         LimCronograma;
         LimCDS;
         LimTedit;
         pnlSeleccion.Visible := True;
         pnlSeleccion.Top := 144;
         pnlSeleccion.Left := 8;
         grbAsociados.Enabled := False;
         grbacciones.Enabled := False;
      End
      Else
      Begin
         LimPrestamos;
         LimCronograma;
         LimCDS;
         LimTedit;
         MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
      End;

End;

//Verifica si tiene devoluciones pendiente
Function TfPreAproDev.verifdevpend(asoid, credid: String): boolean;
Var
   XSQL: String;
Begin
   XSQL := 'SELECT ASOID, CREDID, TIPCREID, ASOAPENOM, ASOCODMOD, IMPREV, IMPDEV, IMPAPL, '
      + '       FLAEXTPRE, USUCRE, FECCRE, HORCRE, FLAAPR, USUAPR, FECAPR, HORAPR, '
      + '       MOTDES, MOTDEV, FLADEVEFE, USUDEV, FECDEV, HORDEV, ANODEV, CORDEV, '
      + '       FLAANU, FECANU, HORANU, USUANU, FORPAGID, AGEBAN, DEVEFE, APLEFE, '
      + '       FLAIMPREV, OFDESPAG '
      + 'FROM PRE_APR_DEV '
      + 'WHERE ASOID=''' + asoid + ''' AND CREDID=''' + credid + ''' AND NVL(FLADEVEFE,''X'')<>''S'' '
      + '  AND NVL(FLAAPR,''X'')<>''N'' AND NVL(FLAANU,''X'')<>''S'' ';
   dm1.cdsCEdu.close;
   dm1.cdsCEdu.DataRequest(XSQL);
   dm1.cdsCEdu.Open;
   If dm1.cdsCEdu.RecordCount > 0 Then
      result := True
   Else
      result := False;
   dm1.cdsCEdu.Close;
End;

Procedure TfPreAproDev.dtgPrestamoDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '21') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '23') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '26') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '24') Then
   Begin
      dtgPrestamo.Canvas.Font.Color := clGreen;
      dtgPrestamo.DefaultDrawDataCell(rect, Field, State);
   End;
   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '12') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '22') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '29') Then
   Begin
      dtgPrestamo.Canvas.Font.Color := $00FF5BFF;
      dtgPrestamo.DefaultDrawDataCell(rect, Field, State);
   End;
   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '13') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '04') Then
   Begin
      dtgPrestamo.Canvas.Font.Color := clRed;
      dtgPrestamo.DefaultDrawDataCell(rect, Field, State);
   End;
End;
//Marca todo

Procedure TfPreAproDev.marctodo;
Begin
   DM1.cdsCuotas.First;
   While Not DM1.cdsCuotas.Eof Do
   Begin
      DBGCUOTASDblClick(self);
      While Not CDSCTASPAG.Eof Do
      Begin
         If verifmarc(CDSCTASPAG.FieldByName('TRANSINTID').AsString, CDSCTASPAG.FieldByName('CRECUOTA').AsString, CDSCTASPAG.FieldByName('NROOPE').AsString, CDSCTASPAG.FieldByName('KEY').AsString, CDSCTASPAG.FieldByName('CREMTOCOB').AsCurrency) Then
         Begin
            CDSCTASPAG.Edit;
            CDSCTASPAG.FieldByName('Flag').AsString := '1';
         End
         Else
            dbgCuotasPagDblClick(self);
         CDSCTASPAG.Next;
      End;
      Button2Click(self);
      DM1.cdsCuotas.Next;
   End;
End;

Procedure TfPreAproDev.fcSBTodos2Click(Sender: TObject);
Begin
   If trim(fcSBTodos2.Caption) = 'Marc. Todos' Then
   Begin
      fcSBTodos2.Caption := 'Desm. Todos';
      marctodo;
   End
   Else
   Begin
      If chkExtornaPrestamo.Checked Then
         chkExtornaPrestamo.Checked := False
      Else
      Begin
         fcSBTodos2.Caption := 'Marc. Todos';
          desmtodo;
      End;
   End;

   dm1.cdsCuotas.First;
End;

Procedure TfPreAproDev.chkExtornaPrestamoClick(Sender: TObject);
Begin
  //---- condisiones de estabilizacin de la opcion para que no ejecuta cuando no debe hacrelo.
   If (chkExtornaPrestamo.Checked) And (TotalPordevolver() = dm1.Valores(edtRevierte.Text)) Then exit;
   If (Not chkExtornaPrestamo.Checked) And (dm1.Valores(edtRevierte.Text) = 0) Then exit;
 //---

 //ha partir del 200509 se comienza ha marcar el CNTFLAG
   If (dm1.cdsSolicitud.FieldByName('CREANOMES').AsInteger > 200508) And
      (dm1.cdsSolicitud.FieldByName('CNTFLAG').AsString <> 'S') Then
   Begin
      ShowMessage('Solo se Extorna el Préstamo Contabilizado.');
      chkExtornaPrestamo.Checked := False;
      Exit;
   End;
   marctodo;
   If trim(fcSBTodos2.Caption) = 'Marc. Todos' Then
      fcSBTodos2.Caption := 'Desm. Todos'
   Else
      fcSBTodos2.Caption := 'Marc. Todos';
   dm1.cdsCuotas.First;
   If (chkExtornaPrestamo.Checked) And (TotalPordevolver() <> dm1.Valores(edtRevierte.Text)) Then
   Begin
      ShowMessage('Falta cuotas marcar para poder EXTORNAR');
      exit;
   End;
End;

Procedure TfPreAproDev.fcShapeBtn2Click(Sender: TObject);
Var
   XSQL, vasoid, vcredid, Fanu: String;
Begin
   vasoid := dm1.cdsSolicitud.FieldByName('ASOID').AsString;
   vcredid := dm1.cdsSolicitud.FieldByName('CREDID').AsString;
   Fanu := 'N';
   XSQL := 'SELECT ASOID, CREDID, TIPCREID, ASOAPENOM, ASOCODMOD, IMPREV, IMPDEV, IMPAPL, '
      + '       FLAEXTPRE, USUCRE, FECCRE, HORCRE, FLAAPR, USUAPR, FECAPR, HORAPR, '
      + '       MOTDES, MOTDEV, FLADEVEFE, USUDEV, FECDEV, HORDEV, ANODEV, CORDEV, '
      + '       FLAANU, FECANU, HORANU, USUANU, FORPAGID, AGEBAN, DEVEFE, APLEFE, '
      + '       FLAIMPREV, OFDESPAG '
      + 'FROM PRE_APR_DEV '
      + 'WHERE ASOID=''' + vasoid + ''' AND CREDID=''' + vcredid + ''' AND NVL(FLADEVEFE,''X'')<>''S'' '
      + '  AND NVL(FLAAPR,''X'')<>''N'' AND NVL(FLAANU,''X'')<>''S'' ';
   dm1.cdsCEdu.close;
   dm1.cdsCEdu.DataRequest(XSQL);
   dm1.cdsCEdu.Open;
   If dm1.cdsCEdu.RecordCount = 0 Then
   Begin
      ShowMessage('No existe Solicitud de Devolución para ANULAR.');
      exit;
   End;
   If dm1.cdsCEdu.FieldByName('FLAAPR').AsString = 'S' Then
   Begin
      ShowMessage('La Devolución ya fue Aprobada, Usted no puede Anularla.');
      exit;
   End
   Else
   Begin
      If MessageDlg('Desea anular la Solicitud de Devolución ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         Fanu := 'S';
      End;
   End;
   If fanu = 'S' Then
   Begin
      xsql := 'UPDATE PRE_APR_DEV SET FLAANU=''S'',FECANU=TO_CHAR(SYSDATE,''DD/MM/YYYY''),HORANU=SYSDATE,USUANU=''' + DM1.wUsuario + ''' ' +
         'WHERE ASOID=''' + vasoid + ''' AND CREDID=''' + vcredid + ''' AND NVL(FLADEVEFE,''X'')<>''S'' AND NVL(FLAAPR,''X'')<>''N'' AND NVL(FLAANU,''X'')<>''S'' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
End;

Procedure TfPreAproDev.DBLkuCTipDesChange(Sender: TObject);
Var
   xSQL: String;
Begin
   If DM1.cdsFormPago.Locate('TIPDESEID', VarArrayof([DBLkuCTipDes.text]), []) Then
   Begin
      EdtTipDes.Text := DM1.cdsFormPago.fieldbyname('TIPDESEABR').AsString;
      pnlOficinas.Visible := False;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '04' Then
      Begin
         xSQL := 'SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID';
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
         If DM1.xSgr = '1' Then
         Begin
            lblAgencia.Enabled := True;
            DBLkCDAgencias.Enabled := True;
         End;
         lblCtaAhorros.Enabled := False;
         EdtCtaAhorros.Text := '';
         EdtSitCta.Text := '';
         BtnSalir.Enabled := True;
         BtnCerrar.Enabled := True;
      End;
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
         EdtSitCta.Text := DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)), 'COB103', 'SITCTADES');
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

Procedure TfPreAproDev.DBLkuCTipDesKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TfPreAproDev.BtnDesembolsoClick(Sender: TObject);
Begin
   grbAsociados.Enabled := False;
   grbPrestamos.Enabled := False;
   grbCronograma.Enabled := False;
   grbacciones.Enabled := False;
   DM1.xSgr := '1'; //OJO FUERZO A QUE SEA 1 HASTA AVERIGUAR PARA QUE SIRVE
   EdtCtaAhorros.Text := '';
   EdtSitCta.Text := '';
   DBLkuCTipDes.Text := '';
   DBLkCDAgencias.Text := '';
   pnlTipodesembolso.left := 72;
   pnlTipodesembolso.Top := 251;
   pnlTipodesembolso.Visible := True;
End;

Procedure TfPreAproDev.BtnCerrarClick(Sender: TObject);
Begin
   grbCronograma.Enabled := True;
   grbacciones.Enabled := True;
   pnlTipodesembolso.Visible := False;
End;

Procedure TfPreAproDev.DBLkCDAgenciasChange(Sender: TObject);
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

Procedure TfPreAproDev.BtnSalirClick(Sender: TObject);
Begin
   grbCronograma.Enabled := True;
   grbacciones.Enabled := True;
   If DBLkuCTipDes.Text = '04' Then
   Begin
      If Length(trim(DBLkOfiDes.Text)) = 0 Then
      Begin
         ShowMessage('Debe ingresar la oficina que desembolsa.');
         Exit;
      End;
   End;
   pnlTipodesembolso.Visible := False;

End;

Procedure TfPreAproDev.DBLkOfiDesChange(Sender: TObject);
Begin

   If DM1.cdsOfdes.Locate('OFDESID', VarArrayof([DBLkOfiDes.Text]), []) Then
   Begin
      EdtOfiDes.Text := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString;
      If DBLkuCTipDes.Text = '04' Then
      Begin

         Begin
            BtnSalir.Enabled := True;
            BtnCerrar.Enabled := True;
         End;
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

Function TfPreAproDev.MontoCobrado(xOfiDes: String): Currency;
Var
   xSQL: String;
Begin
   Result := 0;
   xSQL := 'SELECT NVL(SUM(CREMTOCOB),0) IMPORTECOB FROM CRE310 WHERE CREFPAG=' + QuotedStr(DateToStr(DM1.FechaSys)) + ' AND OFDESID=' + QuotedStr(xOfiDes) + ' AND CREESTID NOT IN (''04'',''13'',''99'') ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   Result := DM1.cdsQry6.FieldByName('IMPORTECOB').AsInteger;
End;

Procedure TfPreAproDev.DBLkuCTipDesExit(Sender: TObject);
Begin
   DBLkuCTipDesChange(self);
End;


procedure TfPreAproDev.desmtodo;
var
   xtotal: currency;
Begin
   DM1.cdsCuotas.First;
   While Not DM1.cdsCuotas.Eof Do
   Begin
      If dm1.cdsCuotas.FieldByName('flagvar').AsString = '1' Then
        Begin
          DBGCUOTASDblClick(self);
          While Not CDSCTASPAG.Eof Do
           Begin
             If verifmarc(CDSCTASPAG.FieldByName('TRANSINTID').AsString, CDSCTASPAG.FieldByName('CRECUOTA').AsString, CDSCTASPAG.FieldByName('NROOPE').AsString, CDSCTASPAG.FieldByName('KEY').AsString, CDSCTASPAG.FieldByName('CREMTOCOB').AsCurrency) Then
               Begin
                  CDSCTASPAG.Edit;
                  CDSCTASPAG.FieldByName('Flag').AsString := '';
                  xtotal := DM1.Valores(edtRevierte.text) - CDSCTASPAG.FieldByName('CREMTOCOB').Ascurrency;
                  CDSCUOTAS.Edit;
                  CDSCUOTAS.Delete;
               End;

             edtRevierte.Text := FormatCurr('###,###,##0.00', xtotaL);
             fPreAproDev.Refresh;
             CDSCTASPAG.Next;
           End;
          Button2Click(self);
          dm1.cdsCuotas.edit;
          dm1.cdsCuotas.FieldByName('flagvar').AsString := '';
        End;

      DM1.cdsCuotas.Next;
   End;

   edtDevuelve.Text:='0';
   edtDevuelve.Text := FormatFloat('##,###,##0.#0', DM1.Valores(edtDevuelve.Text));

   edtAplica.Text:='0';
   edtAplica.Text := FormatCurr('##,###,##0.#0', DM1.Valores(edtAplica.Text));
End;


procedure TfPreAproDev.edtDevuelveChange(Sender: TObject);
begin


   If DM1.Valores(edtDevuelve.Text) > 0 Then
      BtnDesembolso.Enabled := True
   Else
   Begin
      DBLkuCTipDes.Text := '';
      DBLkCDAgencias.Text := '';
      BtnDesembolso.Enabled := False;
   End;
  
   
end;

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
procedure TfPreAproDev.dblMotivoDevExit(Sender: TObject);
begin
   If dm1.cdsResol.Locate('CODTIPREF;CODREF',VarArrayof(['MOT',dblMotivoDev.Text]), []) Then
      edtMotivoDev.Text:=DM1.cdsResol.FieldByname('DESCRIPCION').AsString
   Else edtMotivoDev.Text:= '';
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
procedure TfPreAproDev.dblMotivoDevChange(Sender: TObject);
begin
 dblMotivoDevExit(SELF);
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Se adiciona datos de motivo y origen de devoluciones.
procedure TfPreAproDev.MotDevoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key In [char(39),'"'] Then
      Key := #0;
end;
//Final HPC_201707_COB
//Inicio HPC_201816_COB 
//verifica si hay algun exceso por devolver debe terner prioridad
function TfPreAproDev.ExisteExceso: Boolean;
 VAR B: TBookmark;
begin
  If (CDSCTASPAG.FieldByName('cremtoexc').AsFloat=0) Then
  Begin
   B:=CDSCTASPAG.GetBookmark;
   CDSCTASPAG.DisableControls;
   CDSCTASPAG.First;
   WHILE NOT CDSCTASPAG.Eof DO
   BEGIN
     If (CDSCTASPAG.FieldByName('cremtoexc').AsFloat>0) and (CDSCTASPAG.FieldByName('flag').AsString<>'1') then
     begin
          CDSCTASPAG.GotoBookmark(B);
          CDSCTASPAG.EnableControls;
          CDSCTASPAG.FreeBookmark(B);
          Result := False;
          exit;
     end;
     CDSCTASPAG.Next;
   END;
   CDSCTASPAG.GotoBookmark(B);
   CDSCTASPAG.EnableControls;
   CDSCTASPAG.FreeBookmark(B);
  End; 
    Result := True
end;

procedure TfPreAproDev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DM1.cdsAso.Close;
 DM1.cdsAso.IndexFieldNames:='';
 DM1.cdsSolicitud.Close;
 DM1.cdsSolicitud.IndexFieldNames:='';
 DM1.cdsFormPago.Close;
 DM1.cdsFormPago.IndexFieldNames:='';
 DM1.cdsCuotas.Close;
 DM1.cdsCuotas.IndexFieldNames:='';
 DM1.cdsResol.Close;
 DM1.cdsResol.IndexFieldNames:='';
 DM1.cdsQry.Close;
 DM1.cdsQry.IndexFieldNames:='';
 DM1.cdsQry2.Close;
 DM1.cdsQry2.IndexFieldNames:='';
 DM1.cdsQry3.Close;
 DM1.cdsQry3.IndexFieldNames:='';
end;
//Final HPC_201816_COB
End.

