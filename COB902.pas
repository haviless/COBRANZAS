Unit COB902;

// Inicio Uso Estándares   : 01/08/2011
// Unidad		          : COB902.pas
// Formulario		      : FSeleccion
// Fecha de Creación       : 01/01/2010
// Autor			       : Equipo de Sistemas
// Objetivo		        : Buscar Asociados.

// Actualizaciones:
// HPC_201305_COB          : 10/04/2012 - Busca Docentes para el Mantenimiento de Docentes que NO pagan por Planilla..
// SPP_201307_COB          : Se realiza el pase a producción a partir del HPC_201305_COB
// HPC_201307_COB          : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla
// SPP_201309_COB          : Se realiza el pase a producción a partir del HPC_201307_COB
// HPC_201719_COB          : Mejoras funcionales en el registro de la atención del asociado
// HPC_2017123_COB         : Modificación en la búsqueda por ASOID
// HPC_201820_COB          : Se añade condición para realizar busqueda de registro

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB,
  DBClient;

// DPP_201202_COB : Se realiza el pase a partir del HPC_201205

type
  TfSeleccion = class(TForm)
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
    procedure BitSalirClick(Sender: TObject);
    procedure dtgAsociadoDblClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCuentaClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
//Inicio: SPP_201307_COB : 10/04/2012 - Busca Docentes para el Mantenimiento de Docentes que NO pagan por Planilla..
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
//Fin: SPP_201307_COB : 10/04/2012 - Busca Docentes para el Mantenimiento de Docentes que NO pagan por Planilla..
  private
    { Private declarations }
    procedure LimpiaGrids;
  public
    { Public declarations }
  end;

var
  fSeleccion: TfSeleccion;

implementation

// Inicio: SPP_201309_COB          : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla
uses COBDM1, COB901, CRE908, COBD11, COB460, COB461, COB322;
// Fin: SPP_201309_COB          : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla

{$R *.dfm}

procedure TfSeleccion.BitSalirClick(Sender: TObject);
begin
   If DM1.xSgr='1' Then
   Begin
      DM1.LimpiaDatos;
      DM1.cdsAso.Close;
      fPagoCuotas.EdtCodMod.SetFocus;
   End;
   Close;
end;


procedure TfSeleccion.dtgAsociadoDblClick(Sender: TObject);
var xSQL, xAsoId:String;
begin
// Inicio HPP_200506_COB
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
  // Inicio: HPC_201820_COB
  // Se añade para poder buscar al asociado  
  // If DM1.xSgr = 'COB919A' Then
  If (DM1.xSgr = 'COB919A') Or (DM1.xSgr = 'COB832') Then
  // Fin: HPC_201820_COB
  BEGIN
     DM1.xSgr := '';
     close;
     exit;
  END;
// fin HPP_201006_COB


//Inicio: SPP_201307_COB : 10/04/2012 - Busca Docentes para el Mantenimiento de Docentes que NO pagan por Planilla..
  If DM1.xSgr = 'COB460' Then
  begin
     FMantAsoBan:=TFMantAsoBan.Create(self);
     FMantAsoBan.lblMotivo.Caption:='MOTIVO DE ACTIVACION';
     FMantAsoBan.btnDesactiva.Visible:=False;
     FMantAsoBan.btnActiva.Visible:=True;
     FMantAsoBan.pnlActiva.Visible:=False;
     FMantAsoBan.pnlNoActivo.Visible:=False;
     FMantAsoBan.Height:=FMantAsoBan.Height-160;
     FMantAsoBan.ShowModal;
     FMantAsoBan.Free;
     edtBuscar.Text:='';LimpiaGrids;
     exit;
  end;
//Fin: SPP_201307_COB : 10/04/2012 - Busca Docentes para el Mantenimiento de Docentes que NO pagan por Planilla..
  // Inicio: SPP_201309_COB          : Acuerdos de Cobranza Adicional por Planilla
  If DM1.xSgr = 'COB321' Then
  begin
     FAcuerdoMant:=TFAcuerdoMant.Create(self);
     FAcuerdoMant.pnlAcuerdo.Enabled:=True;
     FAcuerdoMant.sAsoIdAcu:=DM1.cdsAso.FieldByName('ASOID').AsString;
     FAcuerdoMant.btnActualizar.Visible:=True;
     FAcuerdoMant.BitAnular.Visible:=False;
     if not FAcuerdoMant.GeneraAcuerdo then
        FAcuerdoMant.ShowModal;
     FAcuerdoMant.Free;
     exit;
  end;
  // Fin: SPP_201309_COB          : Acuerdos de Cobranza Adicional por Planilla

  If dtgAsociado.DataSource.DataSet.RecordCount > 0 Then
  Begin
    If DM1.xSgr = '9' Then
    Begin
      If Copy(DM1.cdsQry5.FieldByName('NUMDOCCOB').AsString,3,8) = Trim(DM1.cdsAso.FieldByName('ASODNI').AsString) Then
      Begin
        DM1.cdsQry5.Edit;
        DM1.cdsQry5.FieldByName('ASOID').AsString := DM1.cdsAso.FieldByName('ASOID').AsString;
        DM1.cdsQry5.Post;
      End
      Else
      Begin
        If MessageDlg('El DNI del asociado no concuerda con la información'+#13+'del banco. ¿ Estas Seguro de actualizar el dato ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
        Begin
          DM1.cdsQry5.Edit;
          DM1.cdsQry5.FieldByName('ASOID').AsString := DM1.cdsAso.FieldByName('ASOID').AsString;
          DM1.cdsQry5.FieldByName('NUMDOCCOB').AsString := '00'+DM1.cdsAso.FieldByName('ASODNI').AsString;
          DM1.cdsQry5.Post;
        End;
      End;
      Close;
      Exit;
    End;

    If DM1.xSgr='3' Then
    Begin
      Try
        xSQL:='SELECT * FROM TGE158';
        DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
        DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;
        xSQL:='SELECT ID,DESCRIP FROM TGE817 ';
        DM1.cdsSexo.Close;  DM1.cdsSexo.DataRequest(xSQL);   DM1.cdsSexo.Open;
        xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107';
        DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;
        xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
        DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;
        xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE SUBSTR(PROV,1,1)=''A'' ';
        DM1.cdsTCredito.Close; DM1.cdsTCredito.DataRequest(xSQL);  DM1.cdsTCredito.Open;
        fMatAso:= TfMatAso.create(self);
        fMatAso.lkcDpto.Text := DM1.cdsAso.fieldbyname('ASODPTO').AsString;
        fMatAso.lkcProv.Text := DM1.cdsAso.fieldbyname('CIUDID').AsString;
        fMatAso.lkcDist.Text := DM1.cdsAso.fieldbyname('ZIPID').AsString;
        fMatAso.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
        fMatAso.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
        fMatAso.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
        fMatAso.lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOM').AsString+' (Dato de Planillas)';
        fMatAso.EdtApePatDni.Enabled:=False;
        fMatAso.EdtApeMatDni.Enabled:=False;
        fMatAso.EdtAsoNomDni.Enabled:=False;
        fMatAso.dbeCodPag.Enabled:=False;
        fMatAso.dbeLibDni.Enabled:=False;
        fMatAso.BitModifica.Enabled:=False;
        DM1.xSgr:='CTR';
        FPagoCuotas:= TfPagoCuotas.create(self);

// inicio: DPP_201202_COB
        DM1.CargaImagenesDNI(trim(DM1.cdsAso.FieldByName('ASODNI').AsString), 'RegIndiv');
        //fPagoCuotas.CargaFoto(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
        //fPagoCuotas.CargaFirma(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
// fin: DPP_201202_COB

        FPagoCuotas.Free;
        fMatAso.ShowModal;
      Finally
        DM1.cdsPadre.Close; DM1.cdsHijo.Close; DM1.cdsCAso.Close; DM1.cdsRec.Close; DM1.cdsTRela.Close; DM1.cdsQry6.Close;
        DM1.cdsSexo.Close; DM1.cdsTAso.Close; DM1.cdsResol.Close; DM1.cdsTCredito.Close;
        fMatAso.Free;
      End;
    End
    Else
    Begin
      If DM1.xSgr='R' Then
      begin
   // Inicio: DPP_201202_COB
   //      fRefiSeleAso.CargaFoto(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
   //      fRefiSeleAso.CargaFirma(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
         DM1.CargaImagenesDNI(trim(DM1.cdsAso.FieldByName('ASODNI').AsString), 'Refinan');
   // Fin: DPP_201202_COB

         fRefiSeleAso.LimpiaDatosRef;
         fRefiSeleAso.CrgDatosRef;
         fRefiSeleAso.PageControl1.TabIndex := 0 ;
         fRefiSeleAso.ImagAso.Visible :=True;
         fRefiSeleAso.ImaFirma.Visible:=True;
         Close;
         // Inicio: DPP_201202_COB
         FPagoCuotas:= TfPagoCuotas.create(self);
         // Fin: DPP_201202_COB
      end
      else
      begin
         DM1.xSgr:='1';

// inicio: DPP_201202_COB
        //fPagoCuotas.CargaFoto(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
        //fPagoCuotas.CargaFirma(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
        DM1.CargaImagenesDNI(trim(DM1.cdsAso.FieldByName('ASODNI').AsString), 'RegIndiv');
// fin: DPP_201202_COB

         DM1.LimpiaDatos;
         DM1.CrgDatos;
         //Inicio HPC_2017123_COB
         //Modificación en la búsqueda por ASOID
         //Inicio HPC_201719_COB
         //Mejoras funcionales en el registro de la atención del asociado
         xSQL:='SELECT PERIODO,NVL(CFCDES_F,'''') CFCDES_F FROM CFC000 WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND PERIODO=(SELECT MAX(PERIODO) FROM CFC000 WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+')';
         DM1.cdsQryCalfCartera.DataRequest(xSQL);
         DM1.cdsQryCalfCartera.Open;
         fPagoCuotas.lblcalcartera.Caption:='Cal.Cartera '+DM1.cdsQryCalfCartera.fieldbyname('PERIODO').AsString;
         fPagoCuotas.edtCalCartera.Text:= DM1.cdsQryCalfCartera.fieldbyname('CFCDES_F').AsString;
         DM1.cdsQryCalfCartera.Close;
         // Fin HPC_201719_COB
         // Fin HPC_201723_COB
         fPagoCuotas.PageControl1.TabIndex := 0 ;
         Close;
      end;
    End;

  End;

// Inicio: DPP_201202_COB por RMEDINA
//   If DM1.xSgr<>'R' Then
      fPagoCuotas.ConFSC;
// Fin: DPP_201202_COB
End;


Procedure TfSeleccion.BitMostrarClick(Sender: TObject);
var xSQL:String;
begin
  If Length(Trim(edtBuscar.Text)) > 0 Then
     Begin
       If rbtApeNom.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       If rbtDni.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASODNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       If rbtCuenta.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASONCTA LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       If rbtCodMod.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       DM1.cdsAso.Close;
       DM1.cdsAso.DataRequest(xSQL);
       DM1.cdsAso.Open;
     End
   Else
      Begin
         MessageDlg('Debe Ingresar Un Criterio Para La Busqueda', mtError, [mbOk], 0);
         edtBuscar.SetFocus;
      End;
end;

procedure TfSeleccion.FormActivate(Sender: TObject);
begin
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
{
If (DM1.xSgr='1') Or (DM1.xSgr='3') or (DM1.xSgr='R') Then
}
  If (DM1.xSgr='1') Or (DM1.xSgr='3') or (DM1.xSgr='R')  or (DM1.xSgr = 'COB919A') Then
   Begin
      LimpiaGrids;
   End;
  If (DM1.xSgr = 'COB919A') Then rbtApeNomClick(nil);
// fin: HPP_201006_COB
end;

procedure TfSeleccion.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
If DM1.xSgr='1' Then
  If Key=#13 Then
     BitMostrar.OnClick(BitMostrar);

end;

procedure TfSeleccion.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;

end;


procedure TfSeleccion.rbtApeNomClick(Sender: TObject);
begin
edtBuscar.Text:='';LimpiaGrids;
fSeleccion.gbbuscar.Width:=430; fSeleccion.gbbuscar.Height :=40;
fSeleccion.edtBuscar.Width:=407; fSeleccion.edtBuscar.Height := 28;
GbAsociados.Caption:='Buscar Por '+rbtApeNom.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccion.rbtDniClick(Sender: TObject);
begin
edtBuscar.Text:='';LimpiaGrids;
fSeleccion.gbbuscar.Width:=137; fSeleccion.gbbuscar.Height :=40;
fSeleccion.edtBuscar.Width:=114; fSeleccion.edtBuscar.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtDni.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccion.rbtCuentaClick(Sender: TObject);
begin
edtBuscar.Text:='';LimpiaGrids;
fSeleccion.gbbuscar.Width:=137; fSeleccion.gbbuscar.Height :=40;
fSeleccion.edtBuscar.Width:=114; fSeleccion.edtBuscar.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtCuenta.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccion.rbtCodModClick(Sender: TObject);
begin
edtBuscar.Text:='';LimpiaGrids;
fSeleccion.gbbuscar.Width:=137; fSeleccion.gbbuscar.Height :=40;
fSeleccion.edtBuscar.Width:=114; fSeleccion.edtBuscar.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtCodMod.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccion.LimpiaGrids;
begin
 DM1.cdsAso.Close;
 DM1.cdsAso.DataRequest('Select * From APO201 Where ASOID='+QuotedStr('@#$!*@/#&^'));
 DM1.cdsAso.Open;
end;

//Inicio: SPP_201307_COB : 10/04/2012 - Busca Docentes para el Mantenimiento de Docentes que NO pagan por Planilla..
procedure TfSeleccion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if DM1.xSgr = 'COB460' Then
   begin
      DM1.xSgr := '';
   end;
end;
//Fin: SPP_201307_COB : 10/04/2012 - Busca Docentes para el Mantenimiento de Docentes que NO pagan por Planilla..


//Inicio: SPP_201307_COB : 10/04/2012 - Busca Docentes para el Mantenimiento de Docentes que NO pagan por Planilla..
procedure TfSeleccion.FormCreate(Sender: TObject);
begin
  if DM1.xSgr='COB460' then
      LimpiaGrids;
// Inicio: SPP_201309_COB       :  Acuerdos de Cobranza Adicional por Planilla
  if DM1.xSgr='COB321' then
      LimpiaGrids;
// Fin: SPP_201309_COB       :  Acuerdos de Cobranza Adicional por Planilla
end;
//Fin: SPP_201307_COB : 10/04/2012 - Busca Docentes para el Mantenimiento de Docentes que NO pagan por Planilla..

end.
