unit COB321;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB321
// Formulario           : FAcuerdosAdic
// Fecha de Creación    : 06/06/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Mantenimiento de Acuerdos de cobranza Adicional por Planilla
//
// Actualizaciones      :
// HPC_201307_COB       : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla
// SPP_201309_COB       : Se realiza el pase a producción a partir del HPC_201307_COB
// HPC_201311_COB       : 30/10/2013 - Exportar a Excel
// SPP_201313_COB       : Se realiza el pase a producción a partir de lo indicado en el documento HPC_201311_COB.


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, ExtCtrls, Grids, Wwdbgrid, db;

type
  TFAcuerdosAdic = class(TForm)
    dbgAcuerdos: TwwDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    wwDBGrid1IButton: TwwIButton;
    btncerrar: TBitBtn;
    rgEstado: TRadioGroup;
    pnlapenom: TPanel;
    Label3: TLabel;
    pnlasoapenomdni: TPanel;
    edtBuscarDet: TEdit;
// Inicio: SPP_201313_COB    : 30/10/2013 - Exportar a Excel
    btnExcel: TBitBtn;
// Fin: SPP_201313_COB       : 30/10/2013 - Exportar a Excel
    procedure btncerrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwDBGrid1IButtonClick(Sender: TObject);
    procedure dbgAcuerdosDblClick(Sender: TObject);
    procedure dbgAcuerdosTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure rgEstadoClick(Sender: TObject);
    procedure edtBuscarDetClick(Sender: TObject);
    procedure edtBuscarDetChange(Sender: TObject);
    procedure edtBuscarDetKeyPress(Sender: TObject; var Key: Char);
// Inicio: SPP_201313_COB    : 30/10/2013 - Exportar a Excel
    procedure btnExcelClick(Sender: TObject);
// Fin: SPP_201313_COB       : 30/10/2013 - Exportar a Excel
  private
    { Private declarations }
    procedure MuestraAcuerdos;
  public
    { Public declarations }
  end;

var
  FAcuerdosAdic: TFAcuerdosAdic;

implementation

uses COBDM1, COB902, COB322;

{$R *.dfm}

procedure TFAcuerdosAdic.btncerrarClick(Sender: TObject);
begin
  DM1.cdsAcuerdos.Close;
  DM1.cdsAcuerdos.IndexFieldNames:='';
  Close;
end;

procedure TFAcuerdosAdic.FormActivate(Sender: TObject);
begin
   MuestraAcuerdos;
end;


procedure TFAcuerdosAdic.MuestraAcuerdos;
var
   sSQL, sEstado : String;
   sSALACU, sMONACU : Double;
begin
   if rgEstado.ItemIndex=0 then sEstado:=' ';
   if rgEstado.ItemIndex=1 then sEstado:=' and a.estvig = ''I'' ';
   if rgEstado.ItemIndex=2 then sEstado:=' and a.estvig = ''P'' ';
   if rgEstado.ItemIndex=3 then sEstado:=' and a.estvig = ''F'' ';
   if rgEstado.ItemIndex=4 then sEstado:=' and a.estvig = ''A'' ';

   sSQL:='Select a.asoid, fecacu, nroacu, saltot, salven, saldif, salacu, salpen, cuoacu, '
        +   'monacu, cuopac, fecinienv, fecfinenv, a.freg, a.hreg, a.usuario, a.obsacu, a.estvig, '
        +   'b.asoapenom, b.asocodmod, b.asodni, b.asotipid, monacu+cuopac monenv, a.tipsolacu, '
        +   'case when a.estvig=''I'' then ''INICIAL'' when a.estvig=''P'' then ''PROCESADO'' when a.estvig=''F'' then ''FINALIZADO'' when a.estvig=''A'' then ''ANULADO'' END ESTADO, '
        +   'case when a.tipsolacu=''T'' then ''TELEF'' when a.tipsolacu=''C'' then ''CARTA'' else ''    '' end TIPACUDES '
        +  'from cob_acu_cob_pla a, apo201 b '
        + 'where a.asoid=b.asoid '
        +  sEstado
        +' order by nroacu desc';
   DM1.cdsAcuerdos.Close;
   DM1.cdsAcuerdos.DataRequest( sSQL );
   DM1.cdsAcuerdos.Open;

   dbgAcuerdos.Selected.Add('NROACU'#9'08'#9'Número~Acuerdo'#9#9);
   dbgAcuerdos.Selected.Add('FECACU'#9'10'#9'Fecha~Acuerdo'#9#9);
   dbgAcuerdos.Selected.Add('TIPACUDES'#9'05'#9'Tip~Sol.'#9#9);
   dbgAcuerdos.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
   dbgAcuerdos.Selected.Add('ASODNI'#9'09'#9'D.N.I.'#9#9);
   dbgAcuerdos.Selected.Add('ASOTIPID'#9'03'#9'Tip~Aso'#9#9);
   dbgAcuerdos.Selected.Add('ASOAPENOM'#9'24'#9'Apellidos y Nombres'#9#9);
   dbgAcuerdos.Selected.Add('FECINIENV'#9'10'#9'Fecha~Inicio'#9#9);
   dbgAcuerdos.Selected.Add('SALACU'#9'10'#9'Total~Acuerdo'#9#9);
   dbgAcuerdos.Selected.Add('CUOACU'#9'5'#9'Nro.~Cuotas'#9#9);
   dbgAcuerdos.Selected.Add('MONACU'#9'09'#9'Cuota~Acuerdo'#9#9);
   dbgAcuerdos.Selected.Add('USUARIO'#9'12'#9'Usuario~Acuerdo'#9#9);
   dbgAcuerdos.Selected.Add('ESTADO'#9'11'#9'Estado'#9#9);
   dbgAcuerdos.ApplySelected;

   TNumericField(DM1.cdsAcuerdos.FieldByName('SALACU')).DisplayFormat := '###,##0.00';
   TNumericField(DM1.cdsAcuerdos.FieldByName('MONACU')).DisplayFormat := '###,##0.00';

   sSALACU:=0;
   sMONACU:=0;
   DM1.cdsAcuerdos.First;
   While Not DM1.cdsAcuerdos.Eof Do
   Begin
      sSALACU := sSALACU + DM1.cdsAcuerdos.FieldByName('SALACU').AsFloat;
      sMONACU := sMONACU + DM1.cdsAcuerdos.FieldByName('MONACU').AsFloat;
      DM1.cdsAcuerdos.Next;
   End;

   dbgAcuerdos.ColumnByName('FECACU').FooterValue   := 'REG : '+FloatToStrF(DM1.cdsAcuerdos.Recordcount, ffNumber, 6, 0);
   dbgAcuerdos.ColumnByName('ASOAPENOM').FooterValue:= 'TOTALES : ';
   dbgAcuerdos.ColumnByName('SALACU').FooterValue   := FloatToStrF(sSALACU, ffNumber, 12, 2);
   dbgAcuerdos.ColumnByName('MONACU').FooterValue   := FloatToStrF(sMONACU, ffNumber, 12, 2);


end;


procedure TFAcuerdosAdic.wwDBGrid1IButtonClick(Sender: TObject);
begin
   DM1.xSgr := 'COB321';
   fSeleccion := TfSeleccion.create(self);
   fSeleccion.gbbuscar.Width := 430;
   fSeleccion.gbbuscar.Height := 40;
   fSeleccion.edtBuscar.Width := 407;
   fSeleccion.edtBuscar.Height := 28;
   fSeleccion.Showmodal;
   fSeleccion.free;
   MuestraAcuerdos;
end;

procedure TFAcuerdosAdic.dbgAcuerdosDblClick(Sender: TObject);
var
   xSQL, sNumCuo : String;
begin
   if DM1.cdsAcuerdos.RecordCount<=0 then
   begin
     MessageDlg('No existe Información !!!', mtError, [mbOk], 0);
     Exit;
   end;

   xSQL:='SELECT ASOID, ASOTIPID, ASOAPENOM, ASODNI, ASOCODMOD FROM APO201 '
        +'WHERE ASOID = '+QuotedStr(DM1.cdsAcuerdos.FieldByName('ASOID').AsString);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSQL);
   DM1.cdsAso.Open;

   xSQL:='SELECT ASOID, CREFVEN, to_char(CREFVEN,''yyyymm'') PERIODO, last_day(sysdate) SALACU '
       +' FROM CRE302 '
       +' WHERE ASOID='+QuotedStr(DM1.cdsAcuerdos.FieldByName('ASOID').AsString)+' AND CREESTID IN (''02'', ''11'', ''27'', ''31'') '
       +  ' and CREFVEN > last_day(sysdate) '
       +' ORDER BY CREFVEN';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   FAcuerdoMant:=TFAcuerdoMant.Create(self);

   FAcuerdoMant.pnlAcuerdo.Enabled:=False;
   FAcuerdoMant.btnActualizar.Visible:=False;
   FAcuerdoMant.BitAnular.Visible:=False;
   if DM1.cdsAcuerdos.FieldByName('ESTVIG').AsString='I' then
   begin
      FAcuerdoMant.pnlAcuerdo.Enabled:=True;
      FAcuerdoMant.btnActualizar.Visible:=True;
      FAcuerdoMant.BitAnular.Visible:=True;
   end;

   sNumCuo:=DM1.cdsAcuerdos.FieldByName('NROACU').AsString;
   FAcuerdoMant.sAsoIdAcu:=DM1.cdsAcuerdos.FieldByName('ASOID').AsString;
   FAcuerdoMant.dbeAcuerdo.Text:=DM1.cdsAcuerdos.FieldByName('NROACU').AsString;
   FAcuerdoMant.dbeFecAcu.Text :=DM1.cdsAcuerdos.FieldByName('FECACU').AsString;
   FAcuerdoMant.dbeEstado.Text :=DM1.cdsAcuerdos.FieldByName('ESTADO').AsString;

   FAcuerdoMant.dbeSalTot.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.dbeSalVen.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.dbeSalDif.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.dbeSalAcu.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.dbeSalPen.DataSource:=DM1.dsAcuerdos;

   FAcuerdoMant.dbeTotAcu.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.seNumCuo.Value      :=DM1.cdsAcuerdos.FieldByName('CUOACU').AsInteger;
   FAcuerdoMant.dbeMonAcu.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.dblcPeriodo.Text    := Copy(DM1.cdsAcuerdos.FieldByName('FECINIENV').AsString,7,4)+Copy(DM1.cdsAcuerdos.FieldByName('FECINIENV').AsString,4,2);
   FAcuerdoMant.dtpFecIni.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.dtpFecFin.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.dbeCuoPac.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.dbeMonEnv.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.rgTipo.DataSource:=DM1.dsAcuerdos;
   FAcuerdoMant.mObser.Text         :=DM1.cdsAcuerdos.FieldByName('OBSACU').AsString;

   FAcuerdoMant.ShowModal;
   FAcuerdoMant.Free;
   MuestraAcuerdos;
   DM1.cdsAcuerdos.Locate('NROACU', VarArrayOf([TRIM(sNumCuo)]), [loPartialKey]);
end;

procedure TFAcuerdosAdic.dbgAcuerdosTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
   if AFieldName='NROACU' then
   begin
      DM1.cdsAcuerdos.IndexFieldNames:='';
      MuestraAcuerdos
   end
   else
      DM1.cdsAcuerdos.IndexFieldNames:=AFieldName;

end;

procedure TFAcuerdosAdic.rgEstadoClick(Sender: TObject);
begin
   MuestraAcuerdos;
end;

procedure TFAcuerdosAdic.edtBuscarDetClick(Sender: TObject);
begin
  DM1.cdsAcuerdos.IndexFieldNames:= 'ASOAPENOM';
  DM1.cdsAcuerdos.First;
end;

procedure TFAcuerdosAdic.edtBuscarDetChange(Sender: TObject);
begin
  If Length(Trim(edtBuscarDet.Text))>0 Then
    DM1.cdsAcuerdos.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscarDet.Text)]), [loPartialKey]);
end;

procedure TFAcuerdosAdic.edtBuscarDetKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key=#13 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
    Begin
      edtBuscarDet.Text := '';
      dbgAcuerdos.SetFocus;
    End
    Else
    Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
      edtBuscarDet.SetFocus;
    End;
  End;
end;


// Inicio: SPP_201313_COB       : 30/10/2013 - Exportar a Excel
procedure TFAcuerdosAdic.btnExcelClick(Sender: TObject);
var
  xArchivo : String;
begin
  If DM1.cdsAcuerdos.RecordCount<=0 then
  begin
     ShowMessage('No existe información para exportar');
     Exit;
  end;
  xArchivo:='Rep_Acuerdos';
  if FileExists(xArchivo+'.slk') then
     DeleteFile(xArchivo+'.slk');
  Screen.Cursor := crHourglass;
  DM1.ExportaGridExcel(dbgAcuerdos,xArchivo);
  Screen.Cursor := crDefault;

end;
// Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte

end.
