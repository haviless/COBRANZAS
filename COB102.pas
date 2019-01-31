// Inicio: HPP_200920_COB - SAR2009-0432 - DAD-IR-2009-0112
// AUTOR: Isaac Revilla
// FECHA DE CAMBIO: 12/6/2009
// Mantenimiento de Ugeles
Unit COB102;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid,
   DBGrids, DB, RxMemDS, RxLookup, wwdblook, Wwdbdlg, Mask, ppEndUsr, ppDB,
   ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache,
   ppCtrls, ppVar, ppPrnabl, ppParameter;

Type
   TFMantenimientoUGEL = Class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      dbgUgeles: TwwDBGrid;
      btnUgelAdd: TwwIButton;
      btnAExcel: TBitBtn;
      btnSalir: TBitBtn;
      dtgData: TDBGrid;
      gbFiltro: TGroupBox;
      Label4: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      dblcdDepartamento: TwwDBLookupComboDlg;
      meDepartamento: TMaskEdit;
      meProvincia: TMaskEdit;
      dblcdProvincia: TwwDBLookupComboDlg;
      meOfides: TMaskEdit;
      dblcdOfides: TwwDBLookupComboDlg;
      dblcdUGEL: TwwDBLookupComboDlg;
      dblcdUPago: TwwDBLookupComboDlg;
      dblcdUPro: TwwDBLookupComboDlg;
      meUPago: TMaskEdit;
      meUPro: TMaskEdit;
      meUGEL: TMaskEdit;
      bbtnFiltrar: TBitBtn;
      bbtnLimpiarFiltro: TBitBtn;
      btnModUProceso: TBitBtn;
      btnModUPago: TBitBtn;
      chkHabil: TCheckBox;
      chkDeshabil: TCheckBox;
      btnEliminar: TBitBtn;
      btnImprimir: TBitBtn;
      ppReport1: TppReport;
      ppDBPipeline1: TppDBPipeline;
      ppDesigner1: TppDesigner;
      ppParameterList1: TppParameterList;
      edtDistrito: TMaskEdit;
      Label5: TLabel;
      bbtnBuscaDistrito: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
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
    ppLine1: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppDBText15: TppDBText;
    ppLabel15: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand1: TppFooterBand;
    lblNumReg: TLabel;
    ppLine2: TppLine;
    Label6: TLabel;
      Procedure btnUgelAddClick(Sender: TObject);
      Procedure dbgUgelesDblClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure btnSalirClick(Sender: TObject);
      Procedure btnAExcelClick(Sender: TObject);
      Procedure dbgUgelesTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcdUGELExit(Sender: TObject);
      Procedure bbtnFiltrarClick(Sender: TObject);
      Procedure bbtnLimpiarFiltroClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnModUProcesoClick(Sender: TObject);
      Procedure btnModUPagoClick(Sender: TObject);
      Procedure dblcdUProChange(Sender: TObject);
      Procedure dblcdUPagoChange(Sender: TObject);
      Procedure btnEliminarClick(Sender: TObject);
      Procedure btnImprimirClick(Sender: TObject);
      Procedure dblcdDepartamentoChange(Sender: TObject);
      Procedure dblcdProvinciaChange(Sender: TObject);
      Procedure dblcdOfidesChange(Sender: TObject);
      Procedure bbtnBuscaDistritoClick(Sender: TObject);
   Private
      Procedure cargarGrid();
      Procedure cargarDirDepartamentos;
      Procedure cargarDirProvincias;
      Procedure cargarOfides;
      Procedure cargarUGEL;
      Procedure cargarUPago;
      Procedure cargarUProceso;
      Procedure filtrarOfides(IDptoId: String; IProvId: String = ''; IDistId: String = '');
      Procedure filtrarProvincias(IDptoId: String);
      Procedure filtrarUGEL(IUProId, IUPagoId: String);
      Procedure filtrarUPago(IUProId: String);
      Procedure inicializar;
   Public
    { Public declarations }
   End;

Var
   FMantenimientoUGEL: TFMantenimientoUGEL;

Implementation

Uses COBDM1, COB103, COB105, COB104, COB106;

{$R *.dfm}

(******************************************************************************)

Procedure TFMantenimientoUGEL.cargarGrid();
Var
   xSQL: String;
Begin
   xSQL := 'select A.USEID, A.USENOM, A.USEABRE, A.USETELF, A.USEDIR, A.DIRDPTOID, A.DIRPROVID, A.DIRZIPID, A.DPTOID,'
      + '          A.CIUDID, A.ZONAID, A.UPROID, A.UPAGOID, A.TIPUSEID, A.CCOSID, A.USUARIO, to_char(a.hreg,''DD/MM/YYYY HH:MI AM'') HREG, A.CODANT,'
      + '          a.flgfusion, a.cuentaid, a.flgact, a.fdeshabilitado, a.ofdesid, a.digabc, a.abcid, a.zonoriope,'
      + '          a.ambito, a.codcargo, a.digmasrep, a.autdescuo, a.codcargodo, a.digmasrepdo, a.codcargoce,'
      + '          a.digmasrepce, a.flacar, a.capend, ' + QuotedStr(DM1.wUsuario) + ' UsuImpresion, d.ZIPDES'
      + '       from APO101 a, APO122 d'
      + '       where a.DIRDPTOID = d.DPTOID(+)'
      + '          AND a.DIRPROVID = d.CIUDID(+)'
      + '          AND a.DIRZIPID = d.ZIPID(+)'
      + '       order by a.USEID';
   DM1.cdsUsesMantUgel.Close;
   DM1.cdsUsesMantUgel.DataRequest(xSQL);
   DM1.cdsUsesMantUgel.Open;
   dbgUgeles.Selected.Clear;
   dbgUgeles.Selected.Add('DIRDPTOID'#9'5'#9'Dpto'#9#9);
   dbgUgeles.Selected.Add('DIRPROVID'#9'5'#9'Prov'#9#9);
   dbgUgeles.Selected.Add('UPROID'#9'5'#9'U. Proc'#9#9);
   dbgUgeles.Selected.Add('UPAGOID'#9'5'#9'U. Pago'#9#9);
   dbgUgeles.Selected.Add('USEID'#9'5'#9'Ugel'#9#9);
   dbgUgeles.Selected.Add('USEABRE'#9'15'#9'Abreviatura'#9#9);
   dbgUgeles.Selected.Add('USENOM'#9'25'#9'Nombre'#9#9);
   dbgUgeles.Selected.Add('OFDESID'#9'5'#9'Ofides'#9#9);
   dbgUgeles.Selected.Add('USETELF'#9'12'#9'Telefono'#9#9);
   dbgUgeles.Selected.Add('USEDIR'#9'25'#9'Direccion'#9#9);
   dbgUgeles.Selected.Add('CCOSID'#9'10'#9'C.Costo'#9#9);
   dbgUgeles.Selected.Add('FDESHABILITADO'#9'5'#9'Deshab.'#9#9);
   dbgUgeles.Selected.Add('USUARIO'#9'12'#9'Usuario'#9#9);
   dbgUgeles.Selected.Add('HREG'#9'18'#9'Fecha'#9#9);
   dbgUgeles.ApplySelected;
   bbtnFiltrar.Click;
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.FormCreate(Sender: TObject);
Begin
   self.cargarGrid();
   self.inicializar();
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.btnUgelAddClick(Sender: TObject);
Begin
   Try
      FMantUgel := TFMantUgel.create(self);
      FMantUgel.opcTipoIngreso := 'ADD';
      FMantUgel.showmodal();
      self.cargarGrid();
   Finally
      cargarUProceso;
      cargarUPago;
      FMantUgel.free;
   End;
End;
(******************************************************************************)

Procedure TFMantenimientoUGEL.dbgUgelesDblClick(Sender: TObject);
Var
   bmk: TBookMark;
Begin
   Try
      FMantUgel := TFMantUgel.create(self);
      FMantUgel.opcTipoIngreso := 'EDIT';
      FMantUgel.UProId := DM1.cdsUsesMantUgel.fieldByName('UPROID').Value;
      FMantUgel.UPagoId := DM1.cdsUsesMantUgel.fieldByName('UPAGOID').Value;
      FMantUgel.showmodal();
      bmk := DM1.cdsUsesMantUgel.GetBookmark;
      self.cargarGrid();
      DM1.cdsUsesMantUgel.GotoBookmark(bmk);
   Finally
      FMantUgel.free;
   End;
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.btnSalirClick(Sender: TObject);
Begin
   close();
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.btnAExcelClick(Sender: TObject);
Begin
   DM1.HojaExcel('Ugeles', self.dtgData.DataSource, self.dtgData);
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.dbgUgelesTitleButtonClick(Sender: TObject;
   AFieldName: String);
Var
   nombreIndice: String;
Begin
   nombreIndice := 'w2wTempIndex';
   If (DM1.cdsUsesMantUgel.IndexFieldNames = AFieldName) Then
   Begin
      DM1.cdsUsesMantUgel.IndexDefs.Update;
      If DM1.cdsUsesMantUgel.IndexDefs.IndexOf(nombreIndice) > -1 Then
      Begin
         DM1.cdsUsesMantUgel.DeleteIndex(nombreIndice);
         DM1.cdsUsesMantUgel.IndexDefs.Update;
      End;
      DM1.cdsUsesMantUgel.AddIndex(nombreIndice, AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
      DM1.cdsUsesMantUgel.IndexName := nombreIndice;
   End
   Else
   Begin
      DM1.cdsUsesMantUgel.IndexFieldNames := AFieldName;
   End;
   DM1.cdsUsesMantUgel.First;
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
// para retirar la ordenacion .. por si el cds se utiliza en algun otro lugar
   self.bbtnLimpiarFiltroClick(self.bbtnLimpiarFiltro);
   DM1.cdsUsesMantUgel.Close;
   DM1.cdsDptoMantUgel.Close;
   DM1.cdsQryMantUgel.Close;
   DM1.cdsQry1MantUgel.Close;
   DM1.cdsQry3MantUgel.Close;
   DM1.cdsQry4MantUgel.Close;
   DM1.cdsQry5MantUgel.Close;
   DM1.cdsQry6MantUgel.Close;
   Action := caFree;
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.inicializar;
Begin
   Screen.Cursor := crHourGlass;

   self.cargarOfides();
   self.cargarDirProvincias();
   self.cargarDirDepartamentos();

   self.dblcdDepartamento.text := '';
   self.meDepartamento.Text := '';

   self.filtrarProvincias('-.-');
   self.filtrarOfides('-.-', '-.-', '-.-');

   self.cargarUGEL();
   self.cargarUPago();
   self.cargarUProceso();

   self.dblcdUPro.text := '';
   self.meUPro.Text := '';

   self.filtrarUPago('-.-');
   self.filtrarUGEL('-.-', '-.-');

   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.cargarDirDepartamentos;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID ';
   DM1.cdsDptoMantUgel.Close;
   DM1.cdsDptoMantUgel.DataRequest(xSQL);
   DM1.cdsDptoMantUgel.Open;

   self.dblcdDepartamento.LookupField := '';
   self.dblcdDepartamento.LookupTable := DM1.cdsDptoMantUgel;
   self.dblcdDepartamento.LookupField := 'DPTOID';
   self.dblcdDepartamento.Selected.Clear;
   self.dblcdDepartamento.Selected.Add('DPTOID'#9'3'#9'ID'#9#9);
   self.dblcdDepartamento.Selected.Add('DPTODES'#9'20'#9'DESCRIPCION'#9#9);
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.cargarDirProvincias;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT DPTOID, CIUDID, CIUDDES FROM APO123 order by CIUDID ';
   DM1.cdsQry1MantUgel.Close;
   DM1.cdsQry1MantUgel.DataRequest(xSQL);
   DM1.cdsQry1MantUgel.Open;

   self.dblcdProvincia.LookupField := '';
   self.dblcdProvincia.LookupTable := DM1.cdsQry1MantUgel;
   self.dblcdProvincia.LookupField := 'CIUDID';
   self.dblcdProvincia.Selected.Clear;
   self.dblcdProvincia.Selected.Add('CIUDID'#9'6'#9'ID'#9#9);
   self.dblcdProvincia.Selected.Add('CIUDDES'#9'20'#9'DESCRIPCION'#9#9);
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.cargarOfides;
Var
   xSQL: String;
Begin
   xSQL := 'select DPTOID, PROVINID, DISTID, OFDESID, OFDESNOM from apo110 order by OFDESID';
   DM1.cdsQry3MantUgel.Close;
   DM1.cdsQry3MantUgel.DataRequest(xSQL);
   DM1.cdsQry3MantUgel.Open;

   self.dblcdOfides.LookupField := '';
   self.dblcdOfides.LookupTable := DM1.cdsQry3MantUgel;
   self.dblcdOfides.LookupField := 'OFDESID';
   self.dblcdOfides.Selected.Clear;
   self.dblcdOfides.Selected.Add('OFDESID'#9'6'#9'ID'#9#9);
   self.dblcdOfides.Selected.Add('OFDESNOM'#9'35'#9'DESCRIPCION'#9#9);
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.filtrarProvincias(IDptoId: String);
Begin
   DM1.cdsQry1MantUgel.Filtered := false;
   DM1.cdsQry1MantUgel.Filter := 'DPTOID=' + quotedstr(IDptoId);
   DM1.cdsQry1MantUgel.Filtered := true;
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.filtrarOfides(IDptoId, IProvId,
   IDistId: String);
Var
   cad: String;
Begin
   cad := 'DPTOID=' + quotedstr(IDptoId);
   If IProvId <> '' Then cad := cad + ' AND PROVINID= ' + quotedstr(IProvId);
   If IDistId <> '' Then cad := cad + ' AND DISTID= ' + quotedstr(IDistId);
   DM1.cdsQry3MantUgel.Filtered := false;
   DM1.cdsQry3MantUgel.Filter := cad;
   DM1.cdsQry3MantUgel.Filtered := true;
End;

Procedure TFMantenimientoUGEL.cargarUProceso;
Var
   xSQL: String;
Begin
   xSQL := 'select UPROID, UPRONOM, UPROABR, DPTOID from APO102 order by UPROID ';
   DM1.cdsQry4MantUgel.Close;
   DM1.cdsQry4MantUgel.DataRequest(xSQL);
   DM1.cdsQry4MantUgel.Open;

   self.dblcdUPro.LookupField := '';
   self.dblcdUPro.LookupTable := DM1.cdsQry4MantUgel;
   self.dblcdUPro.LookupField := 'UPROID';
   self.dblcdUPro.Selected.Clear;
   self.dblcdUPro.Selected.Add('UPROID'#9'5'#9'UPro'#9#9);
   self.dblcdUPro.Selected.Add('UPRONOM'#9'35'#9'Nombre'#9#9);
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.cargarUPago;
Var
   xSQL: String;
Begin
   xSQL := 'select UPROID, UPAGOID, UPAGONOM, UPAGOABR, DPTOID from APO103 order by UPAGOID';
   DM1.cdsQry5MantUgel.Close;
   DM1.cdsQry5MantUgel.DataRequest(xSQL);
   DM1.cdsQry5MantUgel.Open;

   self.dblcdUPago.LookupField := '';
   self.dblcdUPago.LookupTable := DM1.cdsQry5MantUgel;
   self.dblcdUPago.LookupField := 'UPAGOID';
   self.dblcdUPago.Selected.Clear;
   self.dblcdUPago.Selected.Add('UPAGOID'#9'5'#9'UPago'#9#9);
   self.dblcdUPago.Selected.Add('UPAGONOM'#9'35'#9'Nombre'#9#9);
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.cargarUGEL;
Var
   xSQL: String;
Begin
   xSQL := 'select UPROID, UPAGOID, USEID, USENOM, OFDESID from APO101 order by USEID';
   DM1.cdsQry6MantUgel.Close;
   DM1.cdsQry6MantUgel.DataRequest(xSQL);
   DM1.cdsQry6MantUgel.Open;

   self.dblcdUGEL.LookupField := '';
   self.dblcdUGEL.LookupTable := DM1.cdsQry6MantUgel;
   self.dblcdUGEL.LookupField := 'USEID';
   self.dblcdUGEL.Selected.Clear;
   self.dblcdUGEL.Selected.Add('USEID'#9'5'#9'Ugel'#9#9);
   self.dblcdUGEL.Selected.Add('USENOM'#9'35'#9'Nombre'#9#9);
End;
(******************************************************************************)

Procedure TFMantenimientoUGEL.filtrarUPago(IUProId: String);
Begin
   DM1.cdsQry5MantUgel.Filtered := false;
   DM1.cdsQry5MantUgel.Filter := 'UPROID = ' + quotedstr(IUProId);
   DM1.cdsQry5MantUgel.Filtered := true;
End;
(******************************************************************************)

Procedure TFMantenimientoUGEL.filtrarUGEL(IUProId, IUPagoId: String);
Begin
   DM1.cdsQry6MantUgel.Filtered := false;
   DM1.cdsQry6MantUgel.Filter := 'UPROID=' + quotedstr(IUProId) + ' AND UPAGOID= ' + quotedstr(IUPagoId);
   DM1.cdsQry6MantUgel.Filtered := true;
End;

Procedure TFMantenimientoUGEL.dblcdUGELExit(Sender: TObject);
Begin
   If DM1.cdsQry6MantUgel.Locate('USEID', VarArrayof([self.dblcdUGEL.text]), []) Then
   Begin
      self.meUGEL.Text := DM1.cdsQry6MantUgel.FieldByName('USEID').AsString;
   End
   Else
   Begin
      self.dblcdUGEL.text := '';
      self.meUGEL.text := '';
   End;
End;

Procedure TFMantenimientoUGEL.bbtnFiltrarClick(Sender: TObject);
Var
   cad: String;
Begin
   cad := '';
   With self Do
   Begin
      If dblcdDepartamento.Text <> '' Then
      Begin
         If cad <> '' Then cad := cad + ' AND ';
//         cad := cad + ' DPTOID = ' + QuotedStr(dblcdDepartamento.Text);
         cad := cad + ' DIRDPTOID = ' + QuotedStr(dblcdDepartamento.Text);
      End;
      If dblcdProvincia.Text <> '' Then
      Begin
         If cad <> '' Then cad := cad + ' AND ';
//         cad := cad + ' CIUDID = ' + QuotedStr(dblcdProvincia.Text);
         cad := cad + ' DIRPROVID = ' + QuotedStr(dblcdProvincia.Text);
      End;
      If dblcdOfides.Text <> '' Then
      Begin
         If cad <> '' Then cad := cad + ' AND ';
         cad := cad + ' OFDESID = ' + QuotedStr(dblcdOfides.Text);
      End;
      If trim(edtDistrito.Text) <> '' Then
      Begin
         If cad <> '' Then cad := cad + ' AND ';
         cad := cad + ' ZIPDES LIKE ' + QuotedStr('%' + trim(edtDistrito.Text) + '%');
      End;

      If dblcdUPro.Text <> '' Then
      Begin
         If cad <> '' Then cad := cad + ' AND ';
         cad := cad + ' UPROID = ' + QuotedStr(dblcdUPro.Text);
      End;
      If dblcdUPago.Text <> '' Then
      Begin
         If cad <> '' Then cad := cad + ' AND ';
         cad := cad + ' UPAGOID = ' + QuotedStr(dblcdUPago.Text);
      End;
      If dblcdUGEL.Text <> '' Then
      Begin
         If cad <> '' Then cad := cad + ' AND ';
         cad := cad + ' USEID = ' + QuotedStr(dblcdUGEL.Text);
      End;
      If (Not chkHabil.Checked) And (Not chkDeshabil.Checked) Then
      Begin
         showmessage('Debe seleccionar si se mostrarán las UGEL habilitadas y/o deshabilitadas');
         exit;
      End
      Else
      Begin
         If Not (chkHabil.Checked And chkDeshabil.Checked) Then
         Begin
          //si ambos están marcados no es necesario hacer un filtro
            If cad <> '' Then
               cad := cad + ' AND';
            If chkHabil.Checked Then
               cad := cad + ' FDESHABILITADO = ''N''';
            If chkDeshabil.Checked Then
               cad := cad + ' FDESHABILITADO = ''S''';
         End;
      End;

      If cad <> '' Then
      Begin
         DM1.cdsUsesMantUgel.Filtered := false;
         DM1.cdsUsesMantUgel.Filter := cad;
         DM1.cdsUsesMantUgel.Filtered := true;
         lblNumReg.Caption := inttostr(DM1.cdsUsesMantUgel.RecordCount);
      End;
   End;
End;

(******************************************************************************)

Procedure TFMantenimientoUGEL.bbtnLimpiarFiltroClick(Sender: TObject);
Var
   bmk: TBookMark;
Begin
   bmk := DM1.cdsUsesMantUgel.GetBookmark;
   self.dblcdDepartamento.Text := '';
   self.dblcdUPro.Text := '';
   edtDistrito.Clear;
   DM1.cdsUsesMantUgel.Filter := '';
   DM1.cdsUsesMantUgel.Filtered := False;
   DM1.cdsUsesMantUgel.IndexDefs.Clear;
   DM1.cdsUsesMantUgel.IndexFieldNames := '';
   DM1.cdsUsesMantUgel.GotoBookmark(bmk);

End;

Procedure TFMantenimientoUGEL.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFMantenimientoUGEL.btnModUProcesoClick(Sender: TObject);
Var
   tmp: String;
Begin
   If Trim(dblcdUPro.Text) = '' Then
   Begin
      ShowMessage('Debe seleccionar una Unidad de proceso para modificarla');
      exit;
   End;

   Try
      FMantUProcesoAdd := TFMantUProcesoAdd.create(self);
      FMantUProcesoAdd.edCodigo.Enabled := false;
      FMantUProcesoAdd.btnAdd.Visible := false;
      FMantUProcesoAdd.btnEdit.Visible := true;
      FMantUProcesoAdd.dblcdDepartamento.Text := DM1.cdsQry4MantUgel.FieldByName('DPTOID').AsString;
      FMantUProcesoAdd.edCodigo.Text := DM1.cdsQry4MantUgel.FieldByName('UPROID').AsString;
      FMantUProcesoAdd.edNombre.Text := DM1.cdsQry4MantUgel.FieldByName('UPRONOM').AsString;
      FMantUProcesoAdd.edAbreviatura.Text := DM1.cdsQry4MantUgel.FieldByName('UPROABR').AsString;
      If FMantUProcesoAdd.ShowModal = mrOk Then
      Begin
      //Refresca datos UProceso
         tmp := DM1.cdsQry4MantUgel.FieldByName('UPROID').AsString;
         cargarUProceso;
         dblcdUPro.Text := tmp;
      End;
   Finally
      FMantUProcesoAdd.Free;
   End;
End;

Procedure TFMantenimientoUGEL.btnModUPagoClick(Sender: TObject);
Var
   tmp: String;
Begin
   If Trim(dblcdUPago.Text) = '' Then
   Begin
      ShowMessage('Debe seleccionar una Unidad de pago para modificarla');
      exit;
   End;

   Try
      FMantUPagoAdd := TFMantUPagoAdd.create(self);
      FMantUPagoAdd.edCodigo.Enabled := false;
      FMantUPagoAdd.btnAdd.Visible := false;
      FMantUPagoAdd.btnEdit.Visible := true;
      FMantUPagoAdd.dblcdDepartamento.Text := DM1.cdsQry5MantUgel.FieldByName('DPTOID').AsString;
      FMantUPagoAdd.edCodigo.Text := DM1.cdsQry5MantUgel.FieldByName('UPAGOID').AsString;
      FMantUPagoAdd.edNombre.Text := DM1.cdsQry5MantUgel.FieldByName('UPAGONOM').AsString;
      FMantUPagoAdd.edAbreviatura.Text := DM1.cdsQry5MantUgel.FieldByName('UPAGOABR').AsString;
      If FMantUPagoAdd.ShowModal = mrOk Then
      Begin
      //Refresca datos UPago
         tmp := DM1.cdsQry5MantUgel.FieldByName('UPAGOID').AsString;
         cargarUPago;
         dblcdUPago.Text := tmp;
      End;
   Finally
      FMantUPagoAdd.Free;
   End;
End;

Procedure TFMantenimientoUGEL.dblcdUProChange(Sender: TObject);
Begin
   If DM1.cdsQry4MantUgel.Locate('UPROID', VarArrayof([self.dblcdUPro.text]), []) Then
   Begin
      self.meUPro.Text := DM1.cdsQry4MantUgel.FieldByName('UPRONOM').AsString;
      self.filtrarUPago(DM1.cdsQry4MantUgel.FieldByName('UPROID').AsString);
   End
   Else
   Begin
      self.meUPro.text := '';
      self.filtrarUPago('-.-');
   End;
   self.filtrarUGEL('-.-', '-.-');
   self.dblcdUPago.Text := '';
   self.meUPago.Text := '';
   self.dblcdUGEL.Text := '';
   self.meUGEL.Text := '';
End;

Procedure TFMantenimientoUGEL.dblcdUPagoChange(Sender: TObject);
Begin
   If DM1.cdsQry5MantUgel.Locate('UPAGOID', VarArrayof([self.dblcdUPago.text]), []) Then
   Begin
      self.meUPago.Text := DM1.cdsQry5MantUgel.FieldByName('UPAGONOM').AsString;
      self.filtrarUGEL(DM1.cdsQry4MantUgel.FieldByName('UPROID').AsString, DM1.cdsQry5MantUgel.FieldByName('UPAGOID').AsString);
   End
   Else
   Begin
      self.meUPago.text := '';
      self.filtrarUGEL('-.-', '-.-');
   End;
   self.dblcdUGEL.Text := '';
   self.meUGEL.Text := '';
End;

Procedure TFMantenimientoUGEL.btnEliminarClick(Sender: TObject);
Var
   xSql: String;
Begin
   Screen.Cursor := crHourGlass;
  //valida no hayan asociados de la ugel
   xSql := 'SELECT ASOID FROM APO201 WHERE UPROID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('USEID').AsString) + ' AND ROWNUM < 2';
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSql);
   DM1.cdsAso.Open;
   If DM1.cdsAso.RecordCount > 0 Then
   Begin
      DM1.cdsAso.Close;
      Screen.Cursor := crDefault;
      ShowMessage('Existen asociados que pertenecen a la UGEL, no puede ser eliminada');
      exit;
   End;

  //valida no hayan aportes de la ugel
   xSql := 'SELECT ASOID FROM APO301 WHERE UPROID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('USEID').AsString) + ' AND ROWNUM < 2';
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSql);
   DM1.cdsAso.Open;
   If DM1.cdsAso.RecordCount > 0 Then
   Begin
      DM1.cdsAso.Close;
      Screen.Cursor := crDefault;
      ShowMessage('Existen créditos asociados a la UGEL, no puede ser eliminada');
      exit;
   End;

  //valida no hayan créditos de la ugel
   xSql := 'SELECT ASOID FROM CRE301 WHERE UPROID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('USEID').AsString) + ' AND ROWNUM < 2';
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSql);
   DM1.cdsAso.Open;
   If DM1.cdsAso.RecordCount > 0 Then
   Begin
      DM1.cdsAso.Close;
      Screen.Cursor := crDefault;
      ShowMessage('Existen créditos asociados a la UGEL, no puede ser eliminada');
      exit;
   End;
   DM1.cdsAso.Close;

   If MessageDlg('¿Está Seguro de Eliminar la UGEL? ',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   begin
      Try
       //Elimina el registro
         xSql := 'DELETE FROM APO101 WHERE UPROID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('USEID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         xSql := 'SELECT USEID FROM APO101 WHERE UPROID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPAGOID').AsString) + ' AND ROWNUM < 2';
         DM1.cdsAso.Close;
         DM1.cdsAso.DataRequest(xSql);
         DM1.cdsAso.Open;
         If DM1.cdsAso.RecordCount <= 0 Then
         Begin
         //Si no existen mas Ugeles en la UPago
            xSql := 'SELECT UPAGOID FROM APO103 WHERE UPROID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPROID').AsString) + ' AND ROWNUM < 2';
            DM1.cdsAso.Close;
            DM1.cdsAso.DataRequest(xSql);
            DM1.cdsAso.Open;
            If DM1.cdsAso.RecordCount = 1 Then
            Begin
           //Si sólo existe una Unidad de pago en la Unidad de Proceso
           //Eliminamos las unidades de pago y proceso
               xSql := 'DELETE FROM APO103 WHERE UPROID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPAGOID').AsString);
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
               xSql := 'DELETE FROM APO102 WHERE UPROID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPROID').AsString);
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            End;
         End;
         DM1.cdsAso.Close;
         self.cargarGrid();
         Screen.Cursor := crDefault;
      Except
         ShowMessage('La Ugel no pudo ser eliminada.');
      End;
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFMantenimientoUGEL.btnImprimirClick(Sender: TObject);
Begin
   If DM1.cdsUsesMantUgel.IsEmpty Then
   Begin
      ShowMessage('No existen datos a imprimir');
      exit;
   End;
//   ppDesigner1.Report := ppReport1;
//   ppDesigner1.Show;
   ppReport1.Print;
   ppReport1.Stop;
End;

Procedure TFMantenimientoUGEL.dblcdDepartamentoChange(Sender: TObject);
Begin
   If DM1.cdsDptoMantUgel.Locate('DPTOID', VarArrayof([self.dblcdDepartamento.text]), []) Then
   Begin
      self.meDepartamento.Text := DM1.cdsDptoMantUgel.FieldByName('DPTODES').AsString;
      self.filtrarProvincias(DM1.cdsDptoMantUgel.FieldByName('DPTOID').AsString);
      self.filtrarOfides(DM1.cdsDptoMantUgel.FieldByName('DPTOID').AsString);
   End
   Else
   Begin
      self.meDepartamento.text := '';
      self.filtrarProvincias('-.-');
      self.filtrarOfides('-.-');
   End;

   self.dblcdProvincia.Text := '';
   self.dblcdOfides.Text := '';
End;

Procedure TFMantenimientoUGEL.dblcdProvinciaChange(Sender: TObject);
Begin
   If DM1.cdsQry1MantUgel.Locate('CIUDID', VarArrayof([self.dblcdProvincia.text]), []) Then
   Begin
      self.meProvincia.Text := DM1.cdsQry1MantUgel.FieldByName('CIUDDES').AsString;
   End
   Else
   Begin
      self.meProvincia.text := '';
   End;
End;

Procedure TFMantenimientoUGEL.dblcdOfidesChange(Sender: TObject);
Begin
   If DM1.cdsQry3MantUgel.Locate('OFDESID', VarArrayof([self.dblcdOfides.text]), []) Then
   Begin
      self.meOfides.Text := DM1.cdsQry3MantUgel.FieldByName('OFDESNOM').AsString;
   End
   Else
   Begin
      self.meOfides.text := '';
   End;
End;

Procedure TFMantenimientoUGEL.bbtnBuscaDistritoClick(Sender: TObject);
Var
   xSQL, cad: String;
Begin
   If trim(edtDistrito.Text) = '' Then
   Begin
      ShowMessage('Debe indicar al menos el Nombre del Distrito');
      edtDistrito.SetFocus;
      exit;
   End;
   cad := '';
   If dblcdDepartamento.Text <> '' Then
   Begin
      cad := cad + ' DISTRITOS.DPTOID = ' + QuotedStr(dblcdDepartamento.Text);
   End;
   If dblcdProvincia.Text <> '' Then
   Begin
      If cad <> '' Then cad := cad + ' AND ';
      cad := cad + ' DISTRITOS.CIUDID = ' + QuotedStr(dblcdProvincia.Text);
   End;
   If trim(edtDistrito.Text) <> '' Then
   Begin
      If cad <> '' Then cad := cad + ' AND ';
      cad := cad + ' DISTRITOS.ZIPDES LIKE ' + QuotedStr('%' + trim(edtDistrito.Text) + '%');
   End;
   xSQL := 'select DISTRITOS.DPTOID , DPTOS.DPTODES DEPARTAMENTO, '
      + '       DISTRITOS.CIUDID, PROVINCIAS.CIUDDES PROVINCIA, '
      + '       DISTRITOS.ZIPID DISTID, DISTRITOS.ZIPDES DISTRITO '
      + 'from APO122 DISTRITOS, APO158 DPTOS, APO123 PROVINCIAS '
      + 'where ' + cad
      + '  and DPTOS.DPTOID=DISTRITOS.DPTOID '
      + '  and PROVINCIAS.DPTOID=DISTRITOS.DPTOID and PROVINCIAS.CIUDID=DISTRITOS.CIUDID ';
   DM1.cdsQryMantUgel.Close;
   DM1.cdsQryMantUgel.DataRequest(xSQL);
   DM1.cdsQryMantUgel.Open;
   If DM1.cdsQryMantUgel.RecordCount = 0 Then
   Begin
      ShowMessage('Nombre del Distrito no Encontrado');
      edtDistrito.SetFocus;
      exit;
   End;

   Try
      FDistritos := TFDistritos.create(self);
      FDistritos.showmodal();
   Finally
      FDistritos.free;
   End;
End;
// Fin: HPP_200920_COB
End.

