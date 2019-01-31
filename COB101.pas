unit COB101;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, wwdbedit, wwdblook, ExtCtrls,DB;

type
  TFVariableCuota = class(TForm)
    Panel1: TPanel;
    bbtnOk: TBitBtn;
    bbtnCancel: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dblcPerini: TwwDBLookupCombo;
    dblcPerFin: TwwDBLookupCombo;
    dblcFlag: TwwDBLookupCombo;
    edtNumCuo: TwwDBEdit;
    bbtnActMaes: TBitBtn;
    procedure bbtnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnCancelClick(Sender: TObject);
    procedure NotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure dblcPerFinExit(Sender: TObject);
    procedure dblcPeriniExit(Sender: TObject);
    procedure bbtnActMaesClick(Sender: TObject);
  private
    { Private declarations }
    procedure valida;
  public
    { Public declarations }
  end;

var
  FVariableCuota: TFVariableCuota;

implementation

uses COBDM1, MsgDlgs;

{$R *.DFM}

procedure TFVariableCuota.bbtnOkClick(Sender: TObject);
var sSQL:string;
begin
  Valida;
  if DM1.wModo='A' then
  begin
    sSQL:='SELECT COUNT(*) NUMERO FROM COB115';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(sSQL);
    DM1.cdsQry.Open;
    if DM1.cdsQry.FieldByName('NUMERO').AsInteger>0 then
    begin
      Raise Exception.Create('Solo puede haber un registro');
    end;
  end;
  sSQL:='SELECT COUNT(*) NUMERO FROM COB115 WHERE FLAGACT=''S'' ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(sSQL);
  DM1.cdsQry.Open;
  if (DM1.cdsQry.FieldByName('NUMERO').AsInteger>=1) AND (dblcFlag.text='S') then
  begin
    dblcFlag.SetFocus;
    Raise Exception.Create('Ya existe un registro marcado con S.');
  end;

  if (DM1.cdsQry.FieldByName('NUMERO').AsInteger=0) AND (dblcFlag.text='N') then
  begin
    dblcFlag.SetFocus;
    Raise Exception.Create('No existe ningún registro marcado con S.');
  end;

  DM1.cdsQry1.Edit;
  DM1.cdsQry1.FieldByName('USUARIO').AsString:=DM1.wUsuario;
  DM1.cdsQry1.FieldByName('FREG').AsDateTime:=Date;
  DM1.cdsQry1.FieldByName('HREG').AsDateTime:=Date+Time;
  DM1.cdsQry1.Post;

  DM1.AplicaDatos(DM1.cdsQry1,'xxx');
  bbtnActMaes.Enabled:=True;
  bbtnOk.Enabled:=False;
end;

procedure TFVariableCuota.valida;
var xnum:integer;
begin
  if dblcPerini.Text='' then
  begin
    dblcPerini.SetFocus;
    Raise Exception.Create('Ingrese Periodo Inicial');
  end;
  if dblcPerFin.Text='' then
  begin
    dblcPerFin.SetFocus;
    Raise Exception.Create('Ingrese Periodo Final');
  end;
  if dblcFlag.Text='' then
  begin
    dblcFlag.SetFocus;
    Raise Exception.Create('Ingrese Flag');
  end;
  try
    xnum:=StrToInt(edtNumCuo.text);
    if xNum<1 then
    begin
      edtNumCuo.SetFocus;
      Raise Exception.Create('Número de Cuotas tiene que ser Mayor que Cero');
    end;
  except
    edtNumCuo.SetFocus;
    Raise Exception.Create('Error en Número de Cuotas');
  end;

  if edtNumCuo.Text='' then
  begin
    edtNumCuo.SetFocus;
    Raise Exception.Create('Ingrese Número de Cuotas');
  end;

  if dblcPerini.Text>dblcPerFin.text then
  begin
    dblcPerini.SetFocus;
    Raise Exception.Create('El Periodo Final tiene que ser mayor que el Inicial');
  end;

end;

procedure TFVariableCuota.FormActivate(Sender: TObject);
begin
  bbtnActMaes.Enabled:=False;
  bbtnOk.Enabled:=True;
  dblcFlag.Selected.Clear;
  dblcFlag.Selected.Add('VALOR'#9'5'#9'Valor'#9'F');
  dblcFlag.Selected.Add('DESCRIP'#9'20'#9'Descripción'#9'F');
  TNumericField(DM1.cdsQry1.FieldByName('CRENCUOTA')).DisplayFormat:='########0';
  TNumericField(DM1.cdsQry1.FieldByName('CRENCUOTA')).EditFormat:='########0';

  if DM1.wModo='A' then
  begin
    DM1.cdsQry1.Insert;
  end;
end;

procedure TFVariableCuota.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFVariableCuota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (DM1.cdsQry1.ChangeCount>0) OR (DM1.cdsQry1.Modified) then
  begin
    DM1.cdsQry1.Cancel;
  end;
end;

procedure TFVariableCuota.bbtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFVariableCuota.NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept:=Lookuptable.locate(TwwDBCustomLookupCombo(Sender).Lookupfield,Newvalue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(sender).dropdown;
end;

procedure TFVariableCuota.dblcPerFinExit(Sender: TObject);
var xIni,xFin:integer;
begin
  if (Length(dblcPerini.text)>0) AND (Length(dblcPerFin.text)>0) then
  begin
    xIni:=StrToInt(copy(dblcPerini.text,5,2));
    xFin:=StrToInt(copy(dblcPerFin.text,5,2));
    edtNumCuo.text:=IntToSTr(xFin-xIni);
  end;
end;

procedure TFVariableCuota.dblcPeriniExit(Sender: TObject);
var xIni,xFin:integer;
begin
  if (Length(dblcPerini.text)>0) AND (Length(dblcPerFin.text)>0) then
  begin
    xIni:=StrToInt(copy(dblcPerini.text,5,2));
    xFin:=StrToInt(copy(dblcPerFin.text,5,2));
    edtNumCuo.text:=IntToSTr(xFin-xIni);
  end;
end;

procedure TFVariableCuota.bbtnActMaesClick(Sender: TObject);
var sSQL:string;
begin
  sSQL:='UPDATE APO201 SET CRENCUOTA='+edtNumCuo.text+
        ' WHERE VARIASCUOT=''S'' ';
  try
    if Question('Aviso','Este proceso puede demorar varios minutos'+#13+#13+
                      'Desea Continuar') then
    begin
      Screen.Cursor:=crHourGlass;
      DM1.DCOM1.AppServer.EjecutaSql(sSQL);
      Screen.Cursor:=crDefault;
      ShowMessage('Actualización OK.');
    end;
  except
    Screen.Cursor:=crDefault;
    ShowMessage('Error al actualizar maestro de Asociados.');
  end;
end;

end.
