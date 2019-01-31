unit COB205;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls, DBCtrls, wwdbdatetimepicker, Wwdbdlg, Mask,
  wwdbedit, wwdblook, fcButton, fcImgBtn, fcShapeBtn, Buttons, Wwdbigrd,
  Grids, Wwdbgrid, ComCtrls, fcLabel,Db, dbiProcs,dbclient,wwclient;

type
  TFResoluciones = class(TForm)
    dbgResol: TwwDBGrid;
    wwIButton1: TwwIButton;
    pnlResolucion: TPanel;
    StaticText5: TStaticText;
    Panel11: TPanel;
    sbtnRAceptar: TfcShapeBtn;
    sbtnRCancelar: TfcShapeBtn;
    dblcRTipResol: TwwDBLookupCombo;
    edtRDescripcion: TEdit;
    dbeNroResol: TwwDBEdit;
    cbVigencia: TCheckBox;
    lbCodigo: TfcLabel;
    lbTitulo: TfcLabel;
    dbdtpRfecha: TwwDBDateTimePicker;
    procedure sbtnRCancelarClick(Sender: TObject);
    procedure wwIButton1Click(Sender: TObject);
    procedure dbgResolDblClick(Sender: TObject);
    procedure sbtnRAceptarClick(Sender: TObject);
    procedure dblcRTipResolExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgResolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dblcNotInList(Sender: TObject;
              LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    function ValidaDatosResol:Boolean;
  public
    { Public declarations }
    sSQL,xWhere:string;
    EstadoCB:Boolean;
  end;

var
  FResoluciones: TFResoluciones;

implementation

uses COBDM1,MsgDlgs, COB201;

{$R *.DFM}

procedure TFResoluciones.sbtnRCancelarClick(Sender: TObject);
begin
   DM1.wModo:='';
   DM1.cdsResol.CancelUpdates;
   pnlResolucion.Visible:=False;
end;

procedure TFResoluciones.wwIButton1Click(Sender: TObject);
begin
  DM1.wModo:='A';

  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtRDescripcion.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');

  pnlResolucion.Visible:=true;
  dblcRTipResol.SetFocus;

  cbVigencia.Checked:=False;
  EstadoCB:=False;
  DM1.cdsResol.Insert;
  edtRDescripcion.Text:='';
end;

procedure TFResoluciones.dbgResolDblClick(Sender: TObject);
begin
  If DM1.cdsResol.RecordCount=0 then
  Begin
    ErrorMsg('Error','No existen Registros a Editar');
    exit;
  End;

  DM1.wModo:='M';

  If DM1.cdsResol.FieldByName('RESFVIG').AsString='S' then cbVigencia.Checked:=True;
  If DM1.cdsResol.FieldByName('RESFVIG').AsString='N' then cbVigencia.Checked:=False;
  pnlResolucion.Visible:=true;
  dblcRTipResol.SetFocus;

  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtRDescripcion.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');

  DM1.cdsResol.edit;

  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtRDescripcion.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');
  EstadoCB:=cbVigencia.Checked;
end;

procedure TFResoluciones.sbtnRAceptarClick(Sender: TObject);
var
  xN,xX:string;
  xMarca:TBookmark;
begin
  // Screen.Cursor:=crHourGlass;
  If (DM1.cdsResol.Modified) or (DM1.cdsResol.ChangeCount > 0) or (cbVigencia.Checked<>EstadoCB) Then
  begin
    DM1.cdsResol.Edit;
    If (DM1.wModo='A') or (DM1.wModo='M') Then
    Begin
      If Not ValidaDatosResol then exit;

      DM1.cdsResol.Edit;
      DM1.cdsResol.FieldByName('ASOID').AsString:=DM1.cdsAso.FieldByName('ASOID').AsString;
      DM1.cdsResol.FieldByName('ASOCODMOD').AsString:=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      DM1.cdsResol.FieldByName('FREG').AsDateTime:=Date;
      DM1.cdsResol.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;;
      if (cbVigencia.Checked=True) Then
        DM1.cdsResol.FieldByName('RESFVIG').AsString:='X'
      else
        DM1.cdsResol.FieldByName('RESFVIG').AsString:='N';
      cdsPost(DM1.cdsResol);
      DM1.cdsResol.Post;
      DM1.ControlTran;

      If cbVigencia.Checked Then
      Begin
        DM1.cdsAso.Edit;
        DM1.cdsAso.FieldByName('RESID').AsString:=DM1.cdsResol.FieldByName('RESID').AsString;
        DM1.cdsAso.FieldByName('ASOTIPID').AsString:='DO';        
        DM1.cdsAso.FieldByName('ASORESNOM').AsString:=DM1.cdsResol.FieldByName('ASONRES').AsString;
        DM1.cdsAso.FieldByName('ASOFRESNOM').AsDateTime:=DM1.cdsResol.FieldByName('ASOFRES').AsDateTime;

        cdsPost(DM1.cdsAso);
        DM1.cdsAso.Post;
        DM1.ControlTran;

        xMarca:=DM1.cdsResol.GetBookmark;
        DM1.cdsResol.First;
        While Not DM1.cdsResol.Eof Do
        Begin
          If DM1.cdsResol.FieldByName('RESFVIG').AsString='S' Then
          Begin
            DM1.cdsResol.Edit;
            DM1.cdsResol.FieldByName('RESFVIG').AsString:='N';
            cdsPost(DM1.cdsResol);
            DM1.cdsResol.Post;
            DM1.ControlTran;
            xN:='S';
          End;
          If DM1.cdsResol.FieldByName('RESFVIG').AsString='X' Then
          Begin
            DM1.cdsResol.Edit;
            DM1.cdsResol.FieldByName('RESFVIG').AsString:='S';
            cdsPost(DM1.cdsResol);
            DM1.cdsResol.Post;
            DM1.ControlTran;
            xX:='S';
          End;
          If (xN='S') And (xX='S') Then break;

          DM1.cdsResol.Next;
        End;
        DM1.cdsResol.GotoBookmark(xMarca);
      End;
    end;
  end;
  //Screen.Cursor:=crArrow;
  ShowMessage('Registro Grabado');
end;

procedure TFResoluciones.dblcRTipResolExit(Sender: TObject);
begin
  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtRDescripcion.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');
end;

procedure TFResoluciones.FormActivate(Sender: TObject);
begin
  DM1.cdsTResol.Open;
  sSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASONRES, ASOFRES, RESID, RESFVIG, FREG, HREG '+
           'FROM APO205 WHERE ASOID='+DM1.cdsAso.FieldByName('ASOID').AsString;
  DM1.FiltraCDS(DM1.cdsResol,sSQL);

  dbgResol.Selected.Clear;
  dbgResol.Selected.Add('ASOID'#9'11'#9'Id~Socio');
  dbgResol.Selected.Add('ASOCODMOD'#9'11'#9'Cod~Modular');
  //dbgResol.Selected.Add('ASOCODAUX'#9'10'#9'Tipo~Resol.');
  dbgResol.Selected.Add('RESID'#9'3'#9'Tipo~Resol.');
  dbgResol.Selected.Add('ASONRES'#9'10'#9'Nº~Resol');
  dbgResol.Selected.Add('ASOFRES'#9'10'#9'Fecha~Resol');
  dbgResol.Selected.Add('RESFVIG'#9'5'#9'Vigente');
  //dbgResol.Selected.Add('FREG'#9'10'#9'Devuelto');
  dbgResol.Selected.Add('HREG'#9'20'#9'Fecha~Registro');
  dbgResol.RefreshDisplay;

  FResoluciones.lbTitulo.Caption:='Asociado : '+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
  FResoluciones.lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
end;

procedure TFResoluciones.dbgResolKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_DELETE) and (ssCtrl in Shift)  then
  begin
  	if DM1.cdsResol.RecordCount > 0 then
    Begin
      If Question(Caption, 'Esta Seguro de Eliminar?'+#13+#13+'Desea Continuar') Then
      begin
		    xBorrar:= '1';
  		  DM1.cdsResol.Delete;
        DM1.ControlTran;
		    xBorrar:= '0';
      end;
    End
    else
      ErrorMsg(Caption, ' No Existen Registros a Eliminar ');
	end;
	dbgResol.RefreshDisplay;
end;

function TFResoluciones.ValidaDatosResol:Boolean;
var
  Present: TDateTime;
  APresent: TDateTime;
  Year, Month, Day: Word;
  AYear, AMonth, ADay: Word;
begin
  result:=False;
  //Valida
  If length(edtRDescripcion.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Tipo de Resolución');
    dblcRTipResol.SetFocus;
    exit;
  End;
  If length(dbeNroResol.Text)=0 Then Begin
    ShowMessage('Registre el Número de Resolución');
    dbeNroResol.SetFocus;
    exit;
  End;
  If length(dbdtpRfecha.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha de la Resolución');
    dbdtpRfecha.SetFocus;
    exit;
  End;
  Present:= dbdtpRfecha.Date;
  DecodeDate(Present, Year, Month, Day);
  APresent:= Date;
  DecodeDate(APresent, AYear, AMonth, ADay);
  If (length(dbdtpRfecha.Text)<>0)  Then
  Begin
    If Year>AYear then
    begin
      ShowMessage('La Fecha dede ser menor o igual a la Fecha Actual');
      dbdtpRfecha.SetFocus;
      exit;
    end;
  End;
  // Fin Valida
  result:=True;
End;

procedure TFResoluciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  xWhere:='TIPRESID='''+FAsociados.dblcRTipResol.Text+'''';
  FAsociados.edtResolDescrip.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');
end;

procedure TFResoluciones.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  If (DM1.wModo='A') or (DM1.wModo='M') Then
  Begin
    If (DM1.cdsResol.ChangeCount > 0) or (DM1.cdsResol.Modified) Then
    Begin
      if MessageDlg('¿Desea Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        sbtnRAceptar.Click;
      End
      Else
      begin
        DM1.cdsResol.Cancel;
        DM1.cdsResol.CancelUpdates;
      end;
    End;
  End;
  DM1.wModo:='';
end;

procedure TFResoluciones.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  //Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFResoluciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

end.
