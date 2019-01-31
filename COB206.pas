
unit COB206;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdbdatetimepicker, Wwdbdlg, Mask, wwdbedit, wwdblook, StdCtrls,
  fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, fcLabel,ComCtrls, Wwdbcomb,Wwdotdot,
  Db, dbiProcs,dbclient,wwclient;


type
  TFDLab = class(TForm)
    dbgDatosLaborales: TwwDBGrid;
    btnDLaborales: TwwIButton;
    pnlDatosLaborales: TPanel;
    StaticText1: TStaticText;
    pnlDLab: TPanel;
    sbtnDLabAceptar: TfcShapeBtn;
    sbtnDLabCancelar: TfcShapeBtn;
    gbCEdu: TGroupBox;
    lbTitulo: TfcLabel;
    lbCodigo: TLabel;
    edtDLabUPago: TEdit;
    cbVigencia: TCheckBox;
    dbeDLCodPago: TwwDBEdit;
    dblcDLabUPro: TwwDBLookupCombo;
    edtDLabUProc: TEdit;
    dblcDLabUSE: TwwDBLookupCombo;
    edtDLabUSE: TEdit;
    dblcbdCEdu: TwwDBLookupComboDlg;
    Label5: TLabel;
    dbdtpDLFinicio: TwwDBDateTimePicker;
    dbdtpDLFFin: TwwDBDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    dblcCargo: TwwDBLookupCombo;
    edtCargo: TEdit;
    dblcDLabEstLab: TwwDBLookupCombo;
    edtDLabEstLab: TEdit;
    dblcDLabUPago: TwwDBLookupCombo;
    edtCEdu: TEdit;
    dbeCodigoModular: TwwDBEdit;
    procedure btnDLaboralesClick(Sender: TObject);
    procedure sbtnDLabCancelarClick(Sender: TObject);
    procedure dbgDatosLaboralesDblClick(Sender: TObject);
    procedure dblcDLabUSEExit(Sender: TObject);
    procedure sbtnDLabAceptarClick(Sender: TObject);
    procedure dblcDLabProvExit(Sender: TObject);
    procedure dblcDLabUPagoExit(Sender: TObject);
    procedure dblcDLabUProExit(Sender: TObject);
    procedure dblcDLabDptoExit(Sender: TObject);
    procedure dblcDLabDistExit(Sender: TObject);
    procedure dblcDLabEstLabExit(Sender: TObject);
    procedure dblcCargoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcbdCEduExit(Sender: TObject);
    procedure dbgDatosLaboralesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcNotInList(Sender: TObject;
    LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure LipiaEditsDL;
    function ValidaDatosLab:Boolean;
  public
    { Public declarations }
    sSQL,xWhere:string;
    EstadoCB:Boolean;
  end;

var
  FDLab: TFDLab;

implementation

uses COBDM1,MsgDlgs, COB201;

{$R *.DFM}

procedure TFDLab.btnDLaboralesClick(Sender: TObject);
begin
  DM1.wModo := 'A';


  sSQL :='SELECT CEDUID,CEDUDES '+
         'FROM APO108 ORDER BY CEDUID';
  DM1.FiltraCDS(DM1.cdsCEdu,sSQL);

  pnlDatosLaborales.Visible:=True;
  dbeCodigoModular.SetFocus;

  DM1.cdsDLabo.Insert;

  LipiaEditsDL;

  dblcCargo.Text:='03';
  DM1.cdsDLabo.FieldByName('ASOCARID').AsString:='03';
  xWhere:='CARGOID='''+dblcCargo.Text+'''';
  edtCargo.Text:=DM1.DisplayDescrip('prvSQL','APO111','CARGODES',xWhere,'CARGODES');
  

  dblcDLabEstLab.Text:='AC';
  DM1.cdsDLabo.FieldByName('ASOSITID').AsString:='AC';
  xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
  edtDLabEstLab.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');
  cbVigencia.Checked:=False;

{  If cbVigencia.Checked=True then
    Begin
      EstadoCB:=True  //EstadoCB= Variable para saber si cambio el estado inicial del CheckBox Princiapl
    End
  Else
    Begin
      EstadoCB:=False                             // SC= Si Cambio, NC = No Cambio
    End;
 }
end;

procedure TFDLab.sbtnDLabCancelarClick(Sender: TObject);
begin
   DM1.wModo:='';
   DM1.cdsDLabo.CancelUpdates;
   pnlDatosLaborales.Visible:=False;

end;

procedure TFDLab.dbgDatosLaboralesDblClick(Sender: TObject);
begin

  If DM1.cdsDLabo.RecordCount=0 then
  Begin
    ErrorMsg('Error','No existen Registros a Editar');
    exit;
  End;
  DM1.wModo := 'M';

  xWhere:='USEID='''+dblcDLabUSE.Text+'''';
  edtDLabUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');

   xWhere:='UPAGOID ='''+dblcDLabUPago.Text+'''';
  edtDLabUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');

  xWhere:='UPROID='''+dblcDLabUPro.Text+'''';
  edtDLabUProc.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');

//  xWhere:='DPTOID='''+dblcDLabDpto.Text+'''';
//  edtDLabDpto.Text:=DM1.DisplayDescrip('prvSQL','APO158','DPTODES',xWhere,'DPTODES');

//  xWhere:='CIUDID='''+dblcDLabProv.Text+'''';
//  edtDLabProv.Text:=DM1.DisplayDescrip('prvSQL','APO123','CIUDDES',xWhere,'CIUDDES');

//  xWhere:='ZIPID='''+dblcDLabDist.Text+'''';
//  edtDLabDist.Text:=DM1.DisplayDescrip('prvSQL','APO122','ZIPDES',xWhere,'ZIPDES');

  xWhere:='CARGOID='''+dblcCargo.Text+'''';
  edtCargo.Text:=DM1.DisplayDescrip('prvSQL','APO111','CARGODES',xWhere,'CARGODES');

  sSQL :='SELECT CEDUID,CEDUDES '+
         'FROM APO108';
  DM1.FiltraCDS(DM1.cdsCEdu,sSQL);

  xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
  edtDLabEstLab.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');

  xWhere:='CEDUID='''+dblcbdCEdu.Text+'''';
  edtCEdu.Text:=DM1.DisplayDescrip('prvSQL','APO108','CEDUDES',xWhere,'CEDUDES');

  If DM1.cdsDLabo.FieldByName('FVIGENTE').AsString='S' then cbVigencia.Checked:=True;
  If DM1.cdsDLabo.FieldByName('FVIGENTE').AsString='N' then cbVigencia.Checked:=False;

  If cbVigencia.Checked=True then
    Begin
      EstadoCB:=True
    End
  Else
    Begin
      EstadoCB:=False
    End;

  DM1.cdsDLabo.Edit;
  pnlDatosLaborales.visible:=true;
  dbeDLCodPago.SetFocus;

end;

procedure TFDLab.dblcDLabUSEExit(Sender: TObject);
begin
  dblcDLabUPago.Text:='';
  edtDLabUPago.Text:='';

  dblcDLabUPro.Text:='';
  edtDLabUProc.Text:='';

  xWhere:='USEID='+QuotedStr(dblcDLabUSE.Text);
  edtDLabUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');

  sSQL := 'SELECT * '+
          'FROM APO103 WHERE UPAGOID='+QuotedStr(dblcDLabUSE.Text);

  DM1.FiltraCDS(DM1.cdsUPago,sSQL);

  xWhere:='UPAGOID ='+QuotedStr(DM1.cdsUPago.FieldByName('UPAGOID').AsString);
  edtDLabUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM,UPAGOID',xWhere,'UPAGONOM');

  dblcDLabUPago.Text:=DM1.cdsQry.FieldByName('UPAGOID').AsString;
  DM1.cdsDLabo.Edit;
  DM1.cdsDLabo.FieldByName('UPAGOID').AsString:=DM1.cdsQry.FieldByName('UPAGOID').AsString;;

  sSQL := 'SELECT * '+
          'FROM APO102 WHERE UPROID='+QuotedStr(DM1.cdsUSES.FieldByName('UPROID').AsString);

  DM1.FiltraCDS(DM1.cdsUPro,sSQL);

  xWhere:='UPROID='''+DM1.cdsUPro.FieldByName('UPROID').AsString+'''';
  edtDLabUProc.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM,UPROID',xWhere,'UPRONOM');

  dblcDLabUPro.Text:=DM1.cdsQry.FieldByName('UPROID').AsString;
  DM1.cdsDLabo.Edit;
  DM1.cdsDLabo.FieldByName('UPROID').AsString:=DM1.cdsQry.FieldByName('UPROID').AsString;;

end;

procedure TFDLab.sbtnDLabAceptarClick(Sender: TObject);
var
  xN,xX:string;
  xMarca: TBookmark;
begin
  //Screen.Cursor:=crHourGlass;
  If (DM1.cdsDLabo.Modified=True) or (DM1.cdsDLabo.ChangeCount > 0) or (cbVigencia.Checked<>EstadoCB) Then
  begin
  DM1.cdsDLabo.Edit;
  If (DM1.wModo='A') or (DM1.wModo='M') Then
  Begin

    If Not ValidaDatosLab then exit;

    DM1.cdsDLabo.FieldByName('ASOID').AsString:=DM1.cdsAso.FieldByName('ASOID').AsString;
    DM1.cdsDLabo.FieldByName('ASOCODMOD').AsString:=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
//    DM1.cdsDLabo.FieldByName('CEDUID').AsString:=dblcbdCEdu.Text;
    DM1.cdsDLabo.FieldByName('CEDUDES').AsString:=edtCEdu.Text;
    DM1.cdsDLabo.FieldByName('UPAGOID').AsString;
    DM1.cdsDLabo.FieldByName('UPROID').AsString;
    DM1.cdsDLabo.FieldByName('FREG').AsDateTime:=Date;
    DM1.cdsDLabo.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;;


    If cbVigencia.Checked Then
    Begin
      DM1.cdsDLabo.FieldByName('FVIGENTE').AsString:='X'
    End
    Else
    Begin
      DM1.cdsDLabo.FieldByName('FVIGENTE').AsString:='N'
    End;

    cdsPost(DM1.cdsDLabo);

    DM1.ControlTran;

    If cbVigencia.Checked Then
    Begin
      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByName('ASOCODMOD').AsString:=DM1.cdsDLabo.FieldByName('ASOCODMOD').AsString;
      DM1.cdsAso.FieldByName('ASOCODPAGO').AsString:=DM1.cdsDLabo.FieldByName('ASOCODPAGO').AsString;
      DM1.cdsAso.FieldByName('USEID').AsString:=DM1.cdsDLabo.FieldByName('USEID').AsString;
      DM1.cdsAso.FieldByName('UPAGOID').AsString:=DM1.cdsDLabo.FieldByName('UPAGOID').AsString;
      DM1.cdsAso.FieldByName('UPROID').AsString:=DM1.cdsDLabo.FieldByName('UPROID').AsString;
      cdsPost(DM1.cdsAso);
      DM1.cdsAso.Post;
      DM1.ControlTran;

      xMarca:=DM1.cdsDLabo.GetBookmark;
      DM1.cdsDLabo.First;
      While Not DM1.cdsDLabo.Eof Do
      Begin
        If DM1.cdsDLabo.FieldByName('FVIGENTE').AsString='S' Then
          Begin
            DM1.cdsDLabo.Edit;
            DM1.cdsDLabo.FieldByName('FVIGENTE').AsString:='N';
            cdsPost(DM1.cdsDLabo);
            DM1.cdsDLabo.Post;
            DM1.ControlTran;
            xN:='S';
          End;
        If DM1.cdsDLabo.FieldByName('FVIGENTE').AsString='X' Then
          Begin
            DM1.cdsDLabo.Edit;
            DM1.cdsDLabo.FieldByName('FVIGENTE').AsString:='S';
            cdsPost(DM1.cdsDLabo);
            DM1.cdsDLabo.Post;
            DM1.ControlTran;
            xX:='S';
          End;
        If (xN='S') And (xX='S') Then break;

        DM1.cdsDLabo.Next;
      End;
      DM1.cdsDLabo.GotoBookmark(xMarca);
    End;
  end;
 end;
//Screen.Cursor:=crArrow;
ShowMessage('Registro Grabado');
end;

procedure TFDLab.dblcDLabProvExit(Sender: TObject);
begin
{  xWhere:='CIUDID='''+dblcDLabProv.Text+'''';
  edtDLabProv.Text:=DM1.DisplayDescrip('prvSQL','APO123','CIUDDES',xWhere,'CIUDDES');}

end;

procedure TFDLab.dblcDLabUPagoExit(Sender: TObject);
begin
  xWhere:='UPAGOID ='''+dblcDLabUPago.Text+'''';
  edtDLabUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');

end;

procedure TFDLab.dblcDLabUProExit(Sender: TObject);
begin
  xWhere:='UPROID='''+dblcDLabUPro.Text+'''';
  edtDLabUProc.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');

end;

procedure TFDLab.dblcDLabDptoExit(Sender: TObject);
begin
{  xWhere:='DPTOID='''+dblcDLabDpto.Text+'''';
  edtDLabDpto.Text:=DM1.DisplayDescrip('prvSQL','APO158','DPTODES',xWhere,'DPTODES');}

end;

procedure TFDLab.dblcDLabDistExit(Sender: TObject);
begin
{  xWhere:='ZIPID='''+dblcDLabDist.Text+'''';
  edtDLabDist.Text:=DM1.DisplayDescrip('prvSQL','APO122','ZIPDES',xWhere,'ZIPDES');}
end;

procedure TFDLab.dblcDLabEstLabExit(Sender: TObject);
begin
  xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
  edtDLabEstLab.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');
end;

procedure TFDLab.dblcCargoExit(Sender: TObject);
begin
  xWhere:='CARGOID='''+dblcCargo.Text+'''';
  edtCargo.Text:=DM1.DisplayDescrip('prvSQL','APO111','CARGODES',xWhere,'CARGODES');
end;

procedure TFDLab.FormActivate(Sender: TObject);
begin
  sSQL := 'SELECT ASOSITID,ASOSITDES,ASOSITABR,ASOFACT,HREG,FREG,USUARIO FROM APO106'+
          ' ORDER BY ASOSITID';
  DM1.FiltraCDS(DM1.cdsSAso,sSQL);

  xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
  edtDLabEstLab.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');

  xWhere:='UPAGOID ='''+dblcDLabUPago.Text+'''';
  edtDLabUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');

  FDLab.lbTitulo.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
  FDLab.lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

  sSQL := 'SELECT ASOID, ASOCODMOD, ASOCODPAGO, USEID, UPROID, UPAGOID, '+
          'CEDUID, CEDUDES, ASOFINI, ASOFFIN, ASOCARID, ASOSITID, FVIGENTE, FREG, HREG '+
          'FROM APO202 WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
  DM1.FiltraCDS(DM1.cdsDLabo,sSQL);

  dbgDatosLaborales.Selected.Clear;
  dbgDatosLaborales.Selected.Add('ASOID'#9'11'#9'Id~Socio');
  dbgDatosLaborales.Selected.Add('ASOCODMOD'#9'11'#9'Cod~Modular');
  dbgDatosLaborales.Selected.Add('ASOCODAUX'#9'10'#9'Tipo~Resol.');
  dbgDatosLaborales.Selected.Add('RESID'#9'3'#9'Tipo~Resol.');
  dbgDatosLaborales.Selected.Add('ASONRES'#9'10'#9'Nº~Resol');
  dbgDatosLaborales.Selected.Add('ASOFRES'#9'10'#9'Fecha~Resol');
  dbgDatosLaborales.Selected.Add('RESFVIG'#9'5'#9'Vigente');
  dbgDatosLaborales.Selected.Add('FREG'#9'10'#9'Devuelto');
  dbgDatosLaborales.Selected.Add('HREG'#9'20'#9'Fecha~Registro');
  dbgDatosLaborales.RefreshDisplay;
  dbgDatosLaborales.RefreshDisplay;
end;

procedure TFDLab.dblcbdCEduExit(Sender: TObject);
begin
  xWhere:='CEDUID='''+dblcbdCEdu.Text+'''';     
  edtCEdu.Text:=DM1.DisplayDescrip('prvSQL','APO108','CEDUDES',xWhere,'CEDUDES');
end;

procedure TFDLab.dbgDatosLaboralesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_DELETE) and (ssCtrl in Shift)  then
  begin
  	if DM1.cdsDLabo.RecordCount > 0 then
    Begin
  		DM1.cdsDLabo.Delete;
      DM1.ControlTran;
      ShowMessage('Registro Eliminado');
    End
    else
      ErrorMsg(Caption, ' No Existen Registros a Eliminar ');
	end;
	dbgDatosLaborales.RefreshDisplay;
end;

procedure TFDLab.dblcNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
//  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFDLab.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  If (DM1.wModo='A') or (DM1.wModo='M') Then
    Begin
   	  If (DM1.cdsDLabo.ChangeCount > 0) or (DM1.cdsDLabo.Modified) Then
      Begin
          if MessageDlg('¿Desea Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                sbtnDLabAceptar.Click;
            End
          Else
            begin
                DM1.cdsDLabo.Cancel;
                DM1.cdsDLabo.CancelUpdates;
            end;
      End;
   End;
   DM1.wModo:='';
end;

procedure TFDLab.LipiaEditsDL;
begin
//****
dbeDLCodPago.Text:='';
edtDLabUProc.Text:='';
edtDLabUSE.Text:='';
edtDLabUPago.Text:='';
dbdtpDLFinicio.Date:=Date;
dbdtpDLFFin.Date:=Date;
edtDLabUSE.Text:='';
edtCEdu.text:='';
{dbeDireccion.Text:='';
edtDLabDpto.Text:='';
edtDLabProv.Text:='';
edtDLabDist.Text:='';}
//***
end;

function TFDLab.ValidaDatosLab:Boolean;
var
  Present,FPresent: TDateTime;
  Year, Month, Day, FYear, FMonth, FDay: Word;
begin
     result:=False;

     If length(dbeCodigoModular.Text)=0 Then Begin
        ShowMessage('Registre el Código Modular');
        dbeCodigoModular.SetFocus;
        exit;
      End;

     If length(dbeDLCodPago.Text)=0 Then Begin
        ShowMessage('Registre el Código de Pago');
        dbeDLCodPago.SetFocus;
        exit;
      End;
      If length(edtDLabUSE.Text)=0 Then Begin
        ShowMessage('Seleccione la USE');
        dblcDLabUSE.SetFocus;
        exit;
      End;
      If length(edtDLabUProc.Text)=0 Then Begin
        ShowMessage('Seleccione la Unidad de Proceso');
        dblcDLabUPro.SetFocus;
        exit;
      End;
      If length(edtDLabUPago.Text)=0 Then Begin
        ShowMessage('Seleccione la Unidad de Pago');
        dblcDLabUPago.SetFocus;
        exit;
      End;
{      If length(edtDLRegimen.Text)=0 Then Begin
        ShowMessage('Seleccione el Régimen de Pensión');
        dblcDLRegimen.SetFocus;
        exit;
      End;}

      If length(edtCEdu.Text)=0 Then Begin
        ShowMessage('Registre el Nombre del Centro Educativo');
        dblcbdCEdu.SetFocus;
        exit;
      End;

      If (length(dbdtpDLFinicio.Text)<>0) And (length(dbdtpDLFFin.Text)<>0) Then
      Begin
          Present:= dbdtpDLFInicio.Date;
          DecodeDate(Present, Year, Month, Day);

          FPresent:=dbdtpDLFFin.Date;
          DecodeDate(FPresent,FYear, FMonth, FDay);

          If Year>Date then
          begin
            ShowMessage('La Fecha de Inicio debe ser menor a la Fecha Actual');
            dbdtpDLFInicio.SetFocus;
            exit;
          end;

          If Year>FYear then
          begin
            ShowMessage('La Fecha de Inicio debe ser menor a la Fecha de Fin');
            dbdtpDLFInicio.SetFocus;
            exit;
          end;

          If FYear>Date then
          begin
            ShowMessage('La Fecha de Fin debe ser menor a la Fecha Actual');
            dbdtpDLFInicio.SetFocus;
            exit;
          end;

      End;
      If (length(dbdtpDLFinicio.Text)<>0) And (length(dbdtpDLFFin.Text)=0) Then
      Begin
            Present:= dbdtpDLFinicio.Date;
            FPresent:=dbdtpDLFFin.Date;
            DecodeDate(Present, Year, Month, Day);
            DecodeDate(FPresent,FYear, FMonth, FDay);

            If Year>Date then
            begin
              ShowMessage('La Fecha de Inicio debe ser menor a la Fecha Actual');
              dbdtpDLFinicio.SetFocus;
              exit;
            end;
       End;
      If (length(dbdtpDLFinicio.Text)=0) And (length(dbdtpDLFFin.Text)<>0) Then
      Begin
              ShowMessage('Debe registrar la Feha de Inicio');
              dbdtpDLFinicio.SetFocus;
              exit;
      End;


    {      If length(edtDLabDpto.Text)=0 Then Begin
            ShowMessage('Seleccione el Departamento');
            dblcDLabDpto.SetFocus;
            exit;
          End;}
    {      If length(edtDLabProv.Text)=0 Then Begin
            ShowMessage('Seleccione la Provincia');
            dblcDLabProv.SetFocus;
            exit;
          End;}
    {      If length(edtDLabDist.Text)=0 Then Begin
            ShowMessage('Seleccione el Distrito');
            dblcDLabDist.SetFocus;
            exit;
          End;}
    {      If length(dbeDireccion.Text)=0 Then Begin
            ShowMessage('Registre la Dirección');
            dbeDireccion.SetFocus;
            exit;
          End;}
   result:=true;
End;


procedure TFDLab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  xWhere:='UPROID='''+FAsociados.dblcUProceso.Text+'''';
  FAsociados.edtUProceso.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');

  xWhere:='USEID='''+FAsociados.dblcUSE.Text+'''';
  FAsociados.edtUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');

  xWhere:='UPAGOID ='''+FAsociados.dblcUPago.Text+'''';
  FAsociados.edtUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');

end;

procedure TFDLab.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

end.
