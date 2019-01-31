unit COB204;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, wwriched, wwdbdatetimepicker, Wwdbdlg, Mask,
  wwdbedit, wwdblook, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls,
  Db, DBCtrls;

type
  TFConvenios = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    dblcCobertura: TwwDBLookupCombo;
    Panel2: TPanel;
    dbeestado: TwwDBEdit;
    dblcEstado: TwwDBLookupCombo;
    dblcconvid: TwwDBLookupComboDlg;
    dbdtpfecini: TwwDBDateTimePicker;
    dbdtpfecfin: TwwDBDateTimePicker;
    GroupBox1: TGroupBox;
    dbeDeApePat: TwwDBEdit;
    dbeDeApeMat: TwwDBEdit;
    dbeDeNombre: TwwDBEdit;
    dblcDeTipdoc: TwwDBLookupCombo;
    GroupBox2: TGroupBox;
    dbeConApePat: TwwDBEdit;
    dbeConApeMat: TwwDBEdit;
    dbeConNombre: TwwDBEdit;
    dblcReTipdoc: TwwDBLookupCombo;
    edtproceso: TEdit;
    edtDetdocdes: TEdit;
    edtRetdocdes: TEdit;
    dbeDendoc: TwwDBEdit;
    dbeConndoc: TwwDBEdit;
    bbtnCancelaCabecera: TfcShapeBtn;
    lblconvenio: TLabel;
    bbtnAceptaCabecera: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    DBMemo1: TDBMemo;
    procedure Consistenciadatos;
    procedure Edita;
    procedure bbtnCancelaCabeceraClick(Sender: TObject);
    procedure dblcCoberturaExit(Sender: TObject);
    procedure dblcDeTipdocExit(Sender: TObject);
    procedure dblcReTipdocExit(Sender: TObject);
    procedure dblcEstadoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnAceptaCabeceraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbdtpfecfinExit(Sender: TObject);
    //procedure dbeDeApePatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    //procedure dbeDeApePatKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDeApePatKeyPress(Sender: TObject; var Key: Char);
    procedure dbeConApePatKeyPress(Sender: TObject; var Key: Char);
    //procedure dbeDeApePatKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDeApeMatKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDeNombreKeyPress(Sender: TObject; var Key: Char);
    procedure dbeConApeMatKeyPress(Sender: TObject; var Key: Char);
    procedure dbeConNombreKeyPress(Sender: TObject; var Key: Char);
    procedure dbdtpfeciniExit(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure dblcNotInList(sender:TObject;Lookuptable:TDataset;NewValue:string;var Accept:Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    //procedure dblcDeTipdocNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
  private
    { Private declarations }
    xcrea:boolean;
    codconvenio:string;
    flag:string;
  public
    { Public declarations }
  end;

var
  FConvenios: TFConvenios;
  XSQL : string;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFConvenios.bbtnCancelaCabeceraClick(Sender: TObject);
begin
  Self.Close;
  dbeEstado.text:='';
  edtDetdocdes.text:='';
  edtRetdocdes.text:='';
  edtproceso.text:='';
end;

procedure TFConvenios.dblcNotInlist(Sender:TObject;Lookuptable:TDataset;Newvalue:String;var Accept:Boolean);
begin
  Accept:=Lookuptable.locate(TwwDBCustomLookupCombo(Sender).Lookupfield,Newvalue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(sender).dropdown;
end;

procedure TFConvenios.dblcCoberturaExit(Sender: TObject);
var
  xCondicion:string;
begin
  if dblcEstado.Focused then exit;
  xCondicion:='UPROID='''+dblcCobertura.Text+'''';
  edtproceso.text:=DM1.DisplayDescrip('prvSQL','APO102','*',xCondicion,'UPRONOM');
end;

procedure TFConvenios.dblcDeTipdocExit(Sender: TObject);
var
  xcondicion : string;
begin
  xCondicion:='TIPDOCCOD='''+dblcDeTipdoc.Text+'''';
  edtDetdocdes.text:=DM1.DisplayDescrip('prvSQL','TGE159','*',xCondicion,'TIPDOCDES');
end;

procedure TFConvenios.dblcReTipdocExit(Sender: TObject);
var
  xcondicion : string;
begin
  xCondicion:='TIPDOCCOD='''+dblcReTipdoc.Text+'''';
  edtRetdocdes.text:=DM1.DisplayDescrip('prvSQL','TGE159','*',xCondicion,'TIPDOCDES');
end;

procedure TFConvenios.dblcEstadoExit(Sender: TObject);
begin
  if xcrea then exit;
  dbeestado.text:=dm1.cdsestado.fieldbyname('DESCRIP').asstring;
  if length(dbeestado.text)<> 0 then
    dblcCobertura.setfocus;
end;

procedure TFConvenios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.cdsConvenio.CancelUpdates;
end;

procedure TFConvenios.Edita;
var
  xcondicion : string;
begin
  if DM1.wModo = 'M' then
  begin
    if dm1.cdsConvenio.fieldbyname('CONVEST').asstring='S' then
      dbeestado.text:='VIGENTE';

    if dm1.cdsConvenio.fieldbyname('CONVEST').asstring='N' then
      dbeestado.text:='NO VIGENTE';

    xCondicion:='UPROID='''+dm1.cdsConvenio.fieldbyname('UPROID').asstring+'''';
    edtproceso.text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xCondicion,'UPRONOM');

    xCondicion:='TIPDOCCOD='''+dm1.cdsConvenio.fieldbyname('DERETDOCID').asstring+'''';
    edtDetdocdes.text:=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',xCondicion,'TIPDOCDES');

    xCondicion:='TIPDOCCOD='''+dm1.cdsConvenio.fieldbyname('CONRETDOC').asstring+'''';
    edtRetdocdes.text:=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',xCondicion,'TIPDOCDES');
  end;
end;

procedure TFConvenios.Consistenciadatos;
begin
  if length(dblcEstado.text)=0 then
  begin
    dblcEstado.SetFocus;
    Raise Exception.Create('Debe seleccionar el Estado del Registro')
  end;

  if length(dbeEstado.text)=0 then
  begin
    dbeEstado.SetFocus;
    Raise Exception.Create('Debe seleccionar el Estado del Registro')
  end;

  if length(dbdtpfecini.text)=0 then
  begin
    dbdtpfecini.SetFocus;
    Raise Exception.Create('Debe seleccionar la Fecha de Inicio')
  end;

  if length(dbdtpfecfin.text)=0 then
  begin
    dbdtpfecfin.SetFocus;
    Raise Exception.Create('Debe seleccionar la Fecha de Término')
  end;

  if length(dblcCobertura.text)=0 then
  begin
    dblcCobertura.SetFocus;
    Raise Exception.Create('Debe seleccionar la Unidad de Proceso')
  end;

  if length(edtproceso.text)=0 then
  begin
    edtproceso.SetFocus;
    Raise Exception.Create('Debe seleccionar la Unidad de Proceso')
  end;

  if length(dbeDeApePat.text)=0 then
  begin
    dbeDeApePat.SetFocus;
    Raise Exception.Create('Debe Ingresar el Apellido Paterno del Representante de Derrama');
  end;

  if length(dbeDeApeMat.text)=0 then
  begin
    dbeDeApeMat.SetFocus;
    Raise Exception.Create('Debe Ingresar el Apellido Materno del Representante de Derrama');
  end;

  if length(dbeDeNombre.text)=0 then
  begin
    dbeDeNombre.SetFocus;
    Raise Exception.Create('Debe Ingresar los Nombres del Representante de Derrama');
  end;

  if length(dblcDeTipdoc.text)=0 then
  begin
    dblcDeTipdoc.SetFocus;
    Raise Exception.Create('Debe seleccionar el Tipo de Documento del Representante de Derrama');
  end;

  if length(edtDetdocdes.text)=0 then
  begin
    edtDetdocdes.SetFocus;
    Raise Exception.Create('Debe seleccionar el Tipo de Documento del Representante de Derrama');
  end;

  if length(dbeDendoc.text)=0 then
  begin
    dbeDendoc.SetFocus;
    Raise Exception.Create('Debe ingresar el Número de Documento del Representante de Derrama');
  end;

  if length(dbeConApePat.text)=0 then
  begin
    dbeConApePat.SetFocus;
    Raise Exception.Create('Debe Ingresar el Apellido Paterno del Representante del Convenio');
  end;

  if length(dbeConApeMat.text)=0 then
  begin
    dbeConApeMat.SetFocus;
    Raise Exception.Create('Debe Ingresar el Apellido Materno del Representante del Convenio');
  end;

  if length(dbeConNombre.text)=0 then
  begin
    dbeConNombre.SetFocus;
    Raise Exception.Create('Debe Ingresar los Nombres del Representante del Convenio');
  end;

  if length(dblcReTipdoc.text)=0 then
  begin
    dblcReTipdoc.SetFocus;
    Raise Exception.Create('Debe seleccionar el Tipo de Documento del Representante del Convenio');
  end;

  if length(edtRetdocdes.text)=0 then
  begin
    edtRetdocdes.SetFocus;
    Raise Exception.Create('Debe seleccionar el Tipo de Documento del Representante del Convenio');
  end;

  if length(dbeConndoc.text)=0 then
  begin
    dbeConndoc.SetFocus;
    Raise Exception.Create('Debe ingresar el número de Documento del Representante del Convenio');
  end;
end;

procedure TFConvenios.bbtnAceptaCabeceraClick(Sender: TObject);
var
  sql : string;
begin
  Consistenciadatos;
  dm1.cdsConvenio.edit;
  if  dm1.cdsconvenio.fieldbyname('CONVOBSE').isnull then
    dm1.cdsconvenio.fieldbyname('CONVOBSE').asstring:=' ';
  DM1.AplicaDatos(DM1.cdsConvenio, 'CONVENIO');
  if DM1.wModo = 'M' then
  begin
    if flag='A' then
    begin
        dm1.DCOM1.AppServer.iniciatransaccion;
        try
          sql:='UPDATE COB202 SET FLAGREN=''R'' WHERE FLAGREN=''A'' AND CONVID='''+CODCONVENIO+'''';
          dm1.cdsqry.close;
          dm1.cdsqry.datarequest(sql);
          dm1.cdsqry.execute;
          dm1.DCOM1.AppServer.grabatransaccion;
        except
          dm1.DCOM1.AppServer.regresatransaccion;
        end;
    end;
  end;
  fcShapeBtn2.enabled:=true;
  fcShapeBtn1.enabled:=false;
end;

procedure TFConvenios.FormActivate(Sender: TObject);
begin
  xcrea:=true;
  CODCONVENIO:='';
  panel1.enabled:=true;
  panel2.enabled:=true;
  lblconvenio.visible:=false;
  if DM1.wModo = 'A' then
  begin
    pnlcabecera.enabled:=true;    
    panel1.enabled:=true;
    panel2.enabled:=true;

    dblcEstado.enabled:=true;
    dblcEstado.setfocus;
    dm1.filtracds(dm1.cdsUPro,'SELECT * FROM APO102');
    dm1.filtracds(dm1.cdsTdoc,'SELECT * FROM TGE159');

    dbeEstado.text:='';
    edtDetdocdes.text:='';
    edtRetdocdes.text:='';
    edtproceso.text:='';
    bbtnAceptaCabecera.enabled:=true;
    dm1.cdsConvenio.fieldbyname('CONVFINI').AsDateTime:=Date;
    dm1.cdsConvenio.fieldbyname('CONVFFIN').AsDateTime:=Date;
    dm1.cdsConvenio.fieldbyname('CONVHREG').AsDateTime:=Date+Time;
    fcShapeBtn2.enabled:=false;
    fcShapeBtn1.enabled:=false;
  end
  else
  if DM1.wModo = 'M' then
  begin
    if dm1.cdsconvenio.fieldbyname('FLAGREN').asstring='A' then
    begin
      panel1.enabled:=false;
      panel2.enabled:=false;
      lblconvenio.visible:=true;
      pnlCabecera.enabled:=true;
      bbtnAceptaCabecera.enabled:=false;
      fcShapeBtn1.enabled:=true;
      fcShapeBtn2.enabled:=false;
      lblconvenio.Caption:='Convenio Aprobado';
    end
    else
    begin
      if dm1.cdsconvenio.fieldbyname('FLAGREN').asstring='R' then
      begin
        panel1.enabled:=false;
        panel2.enabled:=false;
        pnlcabecera.enabled:=false;
        lblconvenio.visible:=true;
        lblconvenio.Caption:='Convenio Renovado';
      end
      else
      begin
        panel1.enabled:=true;
        panel2.enabled:=true;
        pnlcabecera.enabled:=true;
        bbtnAceptaCabecera.enabled:=true;
        fcShapeBtn2.enabled:=true;
        fcShapeBtn1.enabled:=false;
      end;
    end;
  end;

  xSQL := 'SELECT ''S'' ESTADO, ''VIGENTE'' DESCRIP FROM TGE101 '+
          'UNION '+
          'SELECT ''N'' ESTADO, ''NO VIGENTE'' DESCRIP FROM TGE101';
  DM1.cdsEstado.DataRequest(xSQL);
  DM1.cdsEstado.Open;

  dblcEstado.LookupField := '' ;
  dblcEstado.LookupTable := dm1.cdsEstado ;
  dblcEstado.LookupField := 'ESTADO' ;

  dblcEstado.Selected.Clear;
  dblcEstado.Selected.Add('ESTADO'#9'5'#9'Código'#9'F');
  dblcEstado.Selected.Add('DESCRIP'#9'20'#9'Descripción'#9'F');

  dblcCobertura.Selected.Clear;
  dblcCobertura.Selected.Add('UPROID'#9'5'#9'Código'#9'F');
  dblcCobertura.Selected.Add('UPRONOM'#9'32'#9'Descripción'#9'F');

  dblcDeTipdoc.Selected.Clear;
  dblcDeTipdoc.Selected.Add('TIPDOCCOD'#9'5'#9'Código'#9'F');
  dblcDeTipdoc.Selected.Add('TIPDOCDES'#9'32'#9'Descripción'#9'F');

  dblcReTipdoc.Selected.Clear;
  dblcReTipdoc.Selected.Add('TIPDOCCOD'#9'5'#9'Código'#9'F');
  dblcReTipdoc.Selected.Add('TIPDOCDES'#9'32'#9'Descripción'#9'F');

  xcrea:=false;
end;

procedure TFConvenios.dbdtpfecfinExit(Sender: TObject);
begin
  if dbdtpfecfin.date < dbdtpfecini.date  then
  begin
    dbdtpfecfin.SetFocus;
    Raise Exception.Create('La Fecha de Término debe ser mayor a la Fecha de Inicio');
  end;
end;

procedure TFConvenios.dbeConApePatKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['1','2','3','4','5','6','7','8','9','0']  then
  begin
     Raise Exception.Create('Debe ingresar letras');
  end;
end;

procedure TFConvenios.dbeDeApePatKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['1','2','3','4','5','6','7','8','9','0']  then
  begin
    Raise Exception.Create('Debe ingresar letras');
  end;
end;

procedure TFConvenios.dbeDeApeMatKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['1','2','3','4','5','6','7','8','9','0']  then
  begin
     Raise Exception.Create('Debe ingresar letras');
  end;
end;

procedure TFConvenios.dbeDeNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['1','2','3','4','5','6','7','8','9','0']  then
  begin
     Raise Exception.Create('Debe ingresar letras');
  end;
end;

procedure TFConvenios.dbeConApeMatKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['1','2','3','4','5','6','7','8','9','0']  then
  begin
     Raise Exception.Create('Debe ingresar letras');
  end;
end;

procedure TFConvenios.dbeConNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['1','2','3','4','5','6','7','8','9','0']  then
  begin
     Raise Exception.Create('Debe ingresar letras');
  end;
end;

procedure TFConvenios.dbdtpfeciniExit(Sender: TObject);
begin
  if length(dbdtpfecfin.text) >0 then
  begin
    if dbdtpfecini.date > dbdtpfecfin.date then
    begin
      dbdtpfecini.SetFocus;
      Raise Exception.Create('La Fecha de Inicio debe ser menor a a la Fecha de Término ');
    end;
  end;
end;

procedure TFConvenios.fcShapeBtn2Click(Sender: TObject);
begin
  if MessageDlg('Esta Seguro que desea Aprobar el convenio',mtconfirmation,[mbYes,MbNo],0)=mrYes then
  begin
    dm1.cdsConvenio.Edit;
    dm1.cdsConvenio.FieldByName('FLAGREN').asstring:='A';
    DM1.AplicaDatos(DM1.cdsConvenio, 'CONVENIO');
    showmessage('Convenio Aprobado');
    fcShapeBtn2.enabled:=false;
    fcShapeBtn1.enabled:=true;
    lblconvenio.visible:=true;
    lblconvenio.Caption:='Convenio Aprobado';
    panel1.enabled:=false;
    panel2.enabled:=false;
    bbtnAceptaCabecera.enabled:=false;
  end;
end;

procedure TFConvenios.fcShapeBtn1Click(Sender: TObject);
var
  uproceso,deapp,deapm,denombres,detipdoc,denumdoc,conapp:string;
  conapm,dettipdoc,connombres,connumdoc,observacion:string;
  //fecini,fecfin:tdatetime;
begin
  panel1.enabled:=true;
  panel2.enabled:=true;
  lblconvenio.Caption:='';
  codconvenio:=dm1.cdsconvenio.fieldbyname('CONVID').asstring;
  flag:=dm1.cdsconvenio.fieldbyname('FLAGREN').asstring;
  uproceso:=dm1.cdsconvenio.fieldbyname('UPROID').asstring;
  deapp:=dm1.cdsconvenio.fieldbyname('DERREPAT').asstring;
  deapm:=dm1.cdsconvenio.fieldbyname('DERREMAT').asstring;
  denombres:=dm1.cdsconvenio.fieldbyname('DERRENOM').asstring;
  dettipdoc:=dm1.cdsconvenio.fieldbyname('DERETDOCID').asstring;
  denumdoc:=dm1.cdsconvenio.fieldbyname('DERRENDOC').asstring;
  conapp:=dm1.cdsconvenio.fieldbyname('CONVREPAT').asstring;
  conapm:=dm1.cdsconvenio.fieldbyname('CONVREMAT').asstring;
  connombres:=dm1.cdsconvenio.fieldbyname('CONVRENOM').asstring;
  detipdoc:=dm1.cdsconvenio.fieldbyname('CONRETDOC').asstring;
  connumdoc:=dm1.cdsconvenio.fieldbyname('CONVRENDOC').asstring;
  observacion:=dm1.cdsconvenio.fieldbyname('CONVOBSE').asstring;

  dbeestado.text:='';
  edtDetdocdes.text:='';
  edtRetdocdes.text:='';
  dm1.cdsConvenio.Insert;
  DM1.cdsConvenio.FieldByName('CONVID').AsString:=dm1.strZero(DM1.MaxSQL('COB202','CONVID',''),5);
  dblcConvid.Text:=DM1.cdsConvenio.FieldByName('CONVID').AsString;
  dm1.cdsconvenio.fieldbyname('UPROID').asstring:=uproceso;
  dm1.cdsconvenio.fieldbyname('CONVIDORI').asstring:=codconvenio;
  dblcCoberturaExit(sender);
  dm1.cdsconvenio.fieldbyname('DERREPAT').asstring:=deapp;
  dm1.cdsconvenio.fieldbyname('DERREMAT').asstring:=deapm;
  dm1.cdsconvenio.fieldbyname('DERRENOM').asstring:=denombres;
  dm1.cdsconvenio.fieldbyname('DERETDOCID').asstring:=detipdoc;
  dblcDeTipdocExit(sender);
  dm1.cdsconvenio.fieldbyname('DERRENDOC').asstring:=denumdoc;

  dm1.cdsconvenio.fieldbyname('CONVREPAT').asstring:=conapp;
  dm1.cdsconvenio.fieldbyname('CONVREMAT').asstring:=conapm;
  dm1.cdsconvenio.fieldbyname('CONVRENOM').asstring:=connombres;
  dm1.cdsconvenio.fieldbyname('CONRETDOC').asstring:=detipdoc;
  dblcReTipdocExit(sender);
  dm1.cdsconvenio.fieldbyname('CONVRENDOC').asstring:=connumdoc;
  dm1.cdsconvenio.fieldbyname('CONVOBSE').asstring:=observacion;

  bbtnAceptaCabecera.enabled:=true;
  fcShapeBtn1.enabled:=false;
  fcShapeBtn2.enabled:=false;
end;

procedure TFConvenios.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
    if Self.ActiveControl Is TDBMemo then Exit;
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

end.

