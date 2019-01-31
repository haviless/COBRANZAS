// Inicio Uso Estándares    :	01/08/2011
// Unidad		             :	COB230.pas
// Formulario		          :	FConfirmarEstadoFallecido
// Fecha de Creación	       :	21/06/2012
// Autor			             :	Juver De la Cruz
// Objetivo		             : opcion de aprobacion de fallecidos para el fondo de desgravamen
// Actualizaciones:
// HPC_201215_COB  21/06/2012 JDCRUZ Creación del formulario FSolApliFD.

Unit COB230;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid;

Type
   TFSolApliFD = Class(TForm)
      pnl1: TPanel;
      pInferior: TPanel;
      btnAExcel: TBitBtn;
      btnCerrar: TBitBtn;
      btnPrint: TBitBtn;
      gbx1: TGroupBox;
      rgbusca: TRadioGroup;
      edBuscar: TMaskEdit;
      btnBuscar: TBitBtn;
      dbgPrincipal: TwwDBGrid;
      lblRegistros: TLabel;
      btnValidarAplicacion: TButton;
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure btnBuscarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dbgPrincipalDblClick(Sender: TObject);
      Procedure edBuscarKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnValidarAplicacionClick(Sender: TObject);
   Private
      xsSqlBusqueda: String;
      Procedure fn_colocar_numero_registros_grid; // para que se pueda buscar al retornar de la pantalla detalle
   Public
    { Public declarations }
   End;

Var
   FSolApliFD: TFSolApliFD;

Implementation
Uses COBDM1, COB231;
{$R *.dfm}

(******************************************************************************)

Procedure TFSolApliFD.FormActivate(Sender: TObject);
Begin
   btnBuscarClick(btnBuscar);
End;

(******************************************************************************)

Procedure TFSolApliFD.btnBuscarClick(Sender: TObject);
Var
   xsWhere: String;
Begin
   Screen.Cursor := crHourGlass;
   Case rgbusca.ItemIndex Of
      0:
         Begin
            xsWhere := ' WHERE DET.ASOAPENOMDNI LIKE ' + QuotedStr(trim(edBuscar.Text) + '%');
         End;
      1:
         Begin
            xsWhere := ' WHERE APO.ASOCODMOD = ' + QuotedStr(trim(edBuscar.Text));
         End;
      2:
         Begin
            xsWhere := ' WHERE DET.ASODNI = ' + QuotedStr(trim(edBuscar.Text));
         End;
   End;

   xsSqlBusqueda :=
      'SELECT DET.IDEGESFAL, DET.ASOID, DET.ASODNI, DET.ASOAPENOMDNI, DET.FECFALGES, '
      + '     DET.ESTAPRDES, DET.USUAPRDES, DET.FECAPRDES, SUBSTR(DET.SUSAPRDES,1,100) SUSAPRDES, '
      + '     DET.ESTAPRFAL, DET.USUAPRFAL, DET.FECAPRFAL, SUBSTR(DET.SUSAPRFAL,1,100) SUSAPRFAL, '
      + '     DET.ESTADO, CAB.IDEGESFAL, CAB.AREGES, CAB.NUMMEM, '
      + '     CAB.FECMEM, SUBSTR(CAB.OBSMEM,1,100) OBSMEM, CAB.USUREG, '
      + '     TRUNC(CAB.FECREG) FECREG, CAB.PVSTIPBEN, CAB.TIPCANFON, APO.ASOCODMOD, '
      + '     TBEN.BENEFDES '
      + 'FROM ASO_FAC_GES_DET DET, ASO_FAC_GES_CAB CAB, APO201 APO, TGE186 TBEN '
      + xsWhere
      + '  AND DET.ESTADO = ''02''' //02 activo / 13 anulado
      + '  AND DET.ESTAPRFAL = ''CONFIRMADO'' '
      + '  AND NVL(DET.ESTAPRDES,''POR APLICAR'') = ''POR APLICAR''' // estado de aprobacion de desgravamen
      + '  AND DET.ASOID = APO.ASOID '
      + '  AND DET.IDEGESFAL = CAB.IDEGESFAL '
      + '  AND CAB.TIPCANFON = ''FDD'' ' // DIFERENCIA A LOS FDD Y FSC
      + '  AND CAB.PVSTIPBEN IN (''02'',''03'')' // fallecidos e invalidos
      + '  AND CAB.PVSTIPBEN = TBEN.TIPBENEF '
      + 'ORDER BY DET.ASOAPENOMDNI '; // el campo TIPCANFON es indistinto en este caso

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSqlBusqueda);
   DM1.cdsQry1.Open;
   dbgPrincipal.DataSource := DM1.dsQry1;

   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9#9);
   dbgPrincipal.Selected.Add('ASOAPENOMDNI'#9'30'#9'Asociado'#9#9);
   dbgPrincipal.Selected.Add('BENEFDES'#9'20'#9'Ocurrencia'#9#9);
   dbgPrincipal.Selected.Add('FECFALGES'#9'12'#9'Fecha~Ocurrencia'#9#9);
   dbgPrincipal.Selected.Add('USUREG'#9'12'#9'Solicitado por'#9#9);
   dbgPrincipal.Selected.Add('FECREG'#9'12'#9'Fecha~Solicitud'#9#9);
   dbgPrincipal.Selected.Add('OBSMEM'#9'40'#9'Observacion'#9#9);
   dbgPrincipal.ApplySelected;

   //lblRegistros.Caption := IntToStr(DM1.cdsQry1.RecordCount) + ' Registros';
   fn_colocar_numero_registros_grid();
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TFSolApliFD.fn_colocar_numero_registros_grid();
Begin
   lblRegistros.Caption := IntToStr(DM1.cdsQry1.RecordCount) + ' Registros';
End;

(******************************************************************************)

Procedure TFSolApliFD.dbgPrincipalDblClick(Sender: TObject);
Begin
   btnValidarAplicacionClick(btnValidarAplicacion);
End;

(******************************************************************************)

Procedure TFSolApliFD.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   Action := caFree;
End;

(******************************************************************************)

Procedure TFSolApliFD.edBuscarKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then btnBuscarClick(btnBuscar);
End;

(******************************************************************************)

Procedure TFSolApliFD.btnValidarAplicacionClick(Sender: TObject);
Var
   xxFrm: TFSolApliFDDetalle;
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xxFrm := TFSolApliFDDetalle.create(self);
      Try
         If (xxFrm.showmodal = mrOK) Then
         Begin
            DM1.cdsQry1.Close;
            DM1.cdsQry1.DataRequest(xsSqlBusqueda);
            DM1.cdsQry1.Open;
            fn_colocar_numero_registros_grid();
         End;
      Finally
         xxFrm.free;
      End;
   End;
End;
(******************************************************************************)
End.

