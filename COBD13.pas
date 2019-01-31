unit COBD13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, wwdbdatetimepicker, Mask, Wwdbdlg, Buttons,
  ExtCtrls;

type
  TFRefiApeCie = class(TForm)
    Panel1: TPanel;
    bbtnApertura: TBitBtn;
    bbtnCierre: TBitBtn;
    pnlEstado: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtpFecha: TwwDBDateTimePicker;
    dblcUniDesc: TwwDBLookupCombo;
    edtunidesc: TEdit;
    Label3: TLabel;
    lblEstado: TMaskEdit;
    bbtnFiltra: TBitBtn;
    BitSalir: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure bbtnFiltraClick(Sender: TObject);
    procedure dblcUniDescExit(Sender: TObject);
    procedure dtpFechaExit(Sender: TObject);
    procedure bbtnAperturaClick(Sender: TObject);
    procedure bbtnCierreClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRefiApeCie: TFRefiApeCie;

implementation

uses COBDM1;

{$R *.dfm}

//////////////////////////////////////////////////////////////////////
// HPP_200903_COB (F1)
// forma modificada en HPP_200903_COB(F1) por Hugo Noriega
// el cambio se debe considerar como una forma nueva ya que
// el acceso se realiza desde el menú principal
// desde las opciones de:
//       Solicitud de Refinanciados (COBD12) FRefiBusca con parámetro 'S'
//       Aprobación de Refinanciados (COBD12) FRefiBusca  con parámetro 'A'
//////////////////////////////////////////////////////////////////////

procedure TFRefiApeCie.FormActivate(Sender: TObject);
begin
  DM1.cdsOfdes.Close;
  DM1.cdsOfdes.DataRequest('SELECT OFDESID,OFDESNOM FROM APO110 ORDER BY OFDESID');
  DM1.cdsOfdes.Open;

  lblEstado.Text:='';

  If DM1.Valores( DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' and AREA=''COB''' ,'USERTABLE','NIVEL') )>=3 then
  begin
     pnlEstado.Enabled     :=True;
     bbtnApertura.Visible  :=true;
     bbtnCierre.Visible    :=true;
     dblcUniDesc.Enabled   :=True;
  end
  else
  begin
     pnlEstado.Enabled    :=False;
     dblcUniDesc.Text:=DM1.xOfiDes;
     dblcUniDescExit(Self);
     dblcUniDesc.Enabled  :=False;
  end;
  dtpFecha.Date:=DM1.FechaSys;
end;

procedure TFRefiApeCie.bbtnFiltraClick(Sender: TObject);
var
   xSQL : String;
begin
   xSQL:='Select Fecha, USUAPE, USUCIE from EVAL_REF_APE_CIE '
           +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA='''+dtpFecha.Text+'''';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount<1 then
   begin
      lblEstado.Font.Color:=clBlue;
      lblEstado.text      :='NO Aperturado';
   end
   else
   begin
      if DM1.cdsQry.fieldByname('USUCIE').AsString<>'' then
      begin
         lblEstado.Font.Color:=clRed;
         lblEstado.Text      :='Cerrado';
      end
      else
      begin
         lblEstado.Font.Color:=clGreen;
         lblEstado.Text      :='Aperturado';
      end;
   end;

end;

procedure TFRefiApeCie.dblcUniDescExit(Sender: TObject);
var
   xSQL : String;
begin
   if length(dblcunidesc.Text)>0 then
   begin
      DM1.cdsOfDes.setkey;
      DM1.cdsOfDes.fieldbyname('OFDESID').AsString:=dblcunidesc.Text;
      if not DM1.cdsOfDes.gotokey then
      begin
         showmessage('Unidad Desconcentrada no es válida');
         edtunidesc.text:='';
         dblcunidesc.setfocus;
         exit;
      end;
      edtunidesc.text:=DM1.cdsOfDes.fieldbyname('OFDESNOM').AsString;

      bbtnFiltraClick(Self);
   end;
end;

procedure TFRefiApeCie.dtpFechaExit(Sender: TObject);
begin
  bbtnFiltraClick(Self);
end;

procedure TFRefiApeCie.bbtnAperturaClick(Sender: TObject);
var
   xSQL, xMensaje : String;
   Boton : Integer;
begin
   if dblcUniDesc.TEXT='' then
   begin
      ShowMessage('Error : Debe seleccionar Oficina...');
      Exit;
   end;

   xSQL:='Select FECHA, OFDESID, USUAPE, USUCIE '
        +'from EVAL_REF_APE_CIE '
        +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA<'''+dtpFecha.Text+''' and USUCIE IS NULL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
   begin
      ShowMessage('Faltan Cerrar '+datetostr(DM1.cdsQry.FieldByName('FECHA').AsDateTime));
      Exit;
   end;

   xSQL:='Select Fecha, OFDESID, USUAPE, USUCIE from EVAL_REF_APE_CIE '
        +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA='''+dtpFecha.Text+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if DM1.cdsQry.fieldByname('USUCIE').AsString<>'' then
   begin
      ShowMessage('Día ya fue Cerrado');
      Exit;
   end;

   if DM1.cdsQry.fieldByname('USUAPE').AsString<>'' then
   begin
      ShowMessage('Dia ya fue Aperturado');
      Exit;
   end;

   if strtodate(dtpFecha.Text)<DM1.FechaSys then
   begin
      ShowMessage('No se permite Aperturar una Fecha anterior a la de Hoy');
      Exit;
   end;

   xMensaje:=' ¿ Está Seguro de Aperturar el Día '+Trim(dtpFecha.Text)+' ? ';
   Boton := Application.MessageBox (pChar(xMensaje) ,'Refinanciación',MB_YESNO+MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
     xSQL:='INSERT INTO EVAL_REF_APE_CIE( FECHA, OFDESID, USUAPE, FECAPE ) '
          + 'Values( '''+dtpFecha.Text+''', '''+dblcUniDesc.TEXT+''', '''+dm1.wUsuario+''', SYSDATE )';
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest( xSQL );
     DM1.cdsQry.Execute;
     bbtnFiltraClick(Self);
     ShowMessage('Dia Aperturado');
   end;
end;

procedure TFRefiApeCie.bbtnCierreClick(Sender: TObject);
var
   xSQL, xMensaje : String;
   Boton : Integer;
begin
   if dblcUniDesc.TEXT='' then
   begin
      ShowMessage('Error : Debe seleccionar Oficina...');
      Exit;
   end;

   xSQL:='Select Fecha, USUAPE, USUCIE  from EVAL_REF_APE_CIE '
        +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA='''+dtpFecha.Text+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount<1 then
   begin
      ShowMessage('Dia NO fue Aperturado');
      Exit;
   end;

   if DM1.cdsQry.fieldByname('USUCIE').AsString<>'' then
   begin
      ShowMessage('Día ya fue Cerrado');
      Exit;
   end;

// se debe avisar de que hay solicitudes de refinanciamiento pendientes
   xSQL := 'Select IDEVAL from EVAL_REF_CAB '
          +'where OFDESID='+quotedstr(dblcUniDesc.Text)
          +'  and FECEVAL='+quotedstr(dtpFecha.Text)
          +'  and USUAUT is null '
          +'  and USUCREANU is null ';
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
      xMensaje:='Existen Solicitudes sin Aprobar '+chr(13)
   else
      xMensaje:='';

   xMensaje:=xMensaje+' ¿ Está Seguro de Cerrar el Día '+Trim(dtpFecha.Text)+' ? ';
   Boton := Application.MessageBox (pChar(xMensaje) ,'Refinanciación',MB_YESNO+MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
      xSQL:='update EVAL_REF_CAB set USUANU='''+dm1.wUsuario+''', '
           +  'FECANU='''+DateToStr(DM1.FechaSys)+''', '
           +  'MENANU=''Por Cierre Operativo'', IDRESEVAL=''2'' '
           +'where OFDESID='''+dblcUniDesc.TEXT+''' AND FECEVAL='''+dtpFecha.Text+''' AND IDRESEVAL=''0''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      dm1.cdsQry.Execute;

      xSQL:='Update EVAL_REF_APE_CIE set USUCIE='''+dm1.wUsuario+''', FECCIE=SYSDATE '
           +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA='''+dtpFecha.Text+'''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      DM1.cdsQry.Execute;
      bbtnFiltraClick(Self);
      ShowMessage('Dia Cerrado');
   end;
end;

procedure TFRefiApeCie.BitSalirClick(Sender: TObject);
begin
   Close;
end;

end.
