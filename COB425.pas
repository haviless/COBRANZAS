unit COB425;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdbedit, Spin, wwdblook, Wwdbdlg, ExtCtrls, Buttons;

type
  TFEditaDescarga = class(TForm)
    dblcdUPro: TwwDBLookupComboDlg;
    dblcdUPago: TwwDBLookupComboDlg;
    dbcTRecauda: TwwDBLookupCombo;
    Label7: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    dbeArchivo: TwwDBEdit;
    dbeAAMM: TwwDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    meRenombre: TMaskEdit;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    lblArchivo: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdUProExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditaDescarga: TFEditaDescarga;
  sSQL : String;

implementation

{$R *.DFM}

USES COBDM1, MsgDlgs;

procedure TFEditaDescarga.FormActivate(Sender: TObject);
begin
  dblcdUPro.LookupTable  :=DM1.cdsUPro;
  DM1.cdsUPro.IndexFieldNames:='UPROID';
  DM1.cdsUPro.SetKey;
  DM1.cdsUPro.FieldByName('UPROID').AsString := DM1.cdsDetalle.FieldByName('UPROID').AsString;

  //sSQL := 'SELECT * FROM TGE101';
  sSQL := 'SELECT * FROM APO103 WHERE UPROID='+QuotedStr(DM1.cdsDetalle.FieldByName('UPROID').AsString);
  DM1.FiltraCDS(DM1.cdsUPago,sSQL);
	dblcdUPago.LookupTable :=DM1.cdsUPago;
  DM1.cdsUPago.IndexFieldNames:='UPAGOID';
  DM1.cdsUPago.SetKey;
  DM1.cdsUPago.FieldByName('UPAGOID').AsString := DM1.cdsDetalle.FieldByName('UPAGOID').AsString;

  DM1.cdsTRecauda.IndexFieldNames:='RECAUDA';
  dbcTRecauda.LookupTable:=DM1.cdsTRecauda;

end;

procedure TFEditaDescarga.BitBtn3Click(Sender: TObject);
begin
	Close;
end;

procedure TFEditaDescarga.BitBtn1Click(Sender: TObject);
var
	xFile : String;
begin
	xFile:=dbeArchivo.Text;

  while Pos('.', xFile ) > 0 do
  begin
  	xFile:=Copy( xFile, Pos( '.', xFile )+1, Length( xFile ));
  end;
  if Length(Trim(xFile)) = 0 then
  begin
    ShowMessage('El Archivo no Cuenta con una Extensión');
    xFile:='';
  end;

  DM1.cdsTRecauda.SetKey;
  DM1.cdsTRecauda.FieldByname('RECAUDA').AsString  := DM1.cdsDetalle.FieldByName('RECAUDA').AsString;
  if DM1.cdsTRecauda.GotoKey then
  begin
    //xVar:=DM1.cdsTRecauda.FieldByName('RECPREF').AsString+dblcdUPro.Text+dblcdUPago.Text+dbeAAMM.Text+'.'+xFile
    meRenombre.Text:=DM1.cdsTRecauda.FieldByName('RECPREF').AsString+dblcdUPro.Text+dblcdUPago.Text+dbeAAMM.Text+'.'+xFile
  end
  else
  begin
    ShowMessage('No Se Encontro el Tipo de Recaudación');
  end;

end;

procedure TFEditaDescarga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsDetalle.CancelUpdates;
end;

procedure TFEditaDescarga.BitBtn2Click(Sender: TObject);
var
   xSQL : String;
begin
	if Length(Trim(meRenombre.Text)) = 0 then
  begin
    ErrorMsg(Caption, 'El Nombre del Nuevo Archivo no Puede estar en Blanco');
  	Exit;
  end;

  if dbeArchivo.text = meRenombre.Text then
  begin
  	ShowMessage('El Antiguo y el Nuevo Nombre son Iguales');
    Exit
  end;

  sSQL := 'ARCHIVO='+QuotedStr(Trim(meRenombre.Text));
  DM1.DisplayDescrip('prvTGE','COB312','ITEM, ARCHIVO',sSQL,'ARCHIVO');

  if DM1.cdsQry.RecordCount > 0 then
  begin
  	ShowMessage('En el Item '+DM1.cdsQry.FieldByName('ITEM').AsString+' ya Existe el Archivo '+#13+#13+
                '           '+Trim(meRenombre.Text)+#13+#13+
                '                      Verifique');
    Exit
  end;

  try
  	Screen.Cursor:=CrHourGlass;
		xSQL:='UPDATE COB306 SET ARCHIVO='''+meRenombre.Text+''', '
         +'UPROID=''' +DM1.cdsUPro.FieldByName('UPROID').AsString  +''', '
         +'UPAGOID='''+DM1.cdsUPago.FieldByName('UPAGOID').AsString+''' '
         +'WHERE ARCHIVO='''+Trim( DM1.cdsDetalle.FieldByname('ARCHIVO').AsString )+''' '
         +'AND PERIODO='''+DM1.cdsDetalle.FieldByname('PERIODO').AsString+'''';

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;

    xSQL:='UPDATE COB310 SET ARCHIVO='''+meRenombre.Text+''', '
         +'UPROID=''' +DM1.cdsUPro.FieldByName('UPROID').AsString  +''', '
         +'UPAGOID='''+DM1.cdsUPago.FieldByName('UPAGOID').AsString+''' '
         +'WHERE ARCHIVO='''+Trim( DM1.cdsDetalle.FieldByname('ARCHIVO').AsString )+''' '
         +'AND APOSEC=''' +DM1.cdsDetalle.FieldByname('PERIODO').AsString+'''';

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;

    DM1.cdsDetalle.Edit;
    DM1.cdsDetalle.FieldByname('ARCHIVO').AsString  := meRenombre.Text;
    DM1.cdsDetalle.FieldByname('UPAGOID').AsString  := DM1.cdsUPago.FieldByName('UPAGOID').AsString;
    DM1.cdsDetalle.FieldByname('UPROID').AsString   := DM1.cdsUPro.FieldByName('UPROID').AsString;
    DM1.cdsDetalle.FieldByname('RECAUDA').AsString  := dbcTRecauda.Text;
		//DM1.cdsDetalle.FieldByname('USUARIO').AsString  := dm1.wUsuario;
    DM1.cdsDetalle.FieldByname('FREG').AsDateTime   := DATE;
    DM1.AplicaDatos( DM1.cdsDetalle, '' );

    Screen.Cursor:=crDeFault;
    ShowMessage( 'Archivo Renombrado');
  except
  	Screen.Cursor:=crDefault;
    ShowMessage( 'Error al Renombrar');
    DM1.cdsDetalle.CancelUpdates;
    Close;
	end
end;

procedure TFEditaDescarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
    //if Self.ActiveControl Is TDBMemo then Exit;
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFEditaDescarga.dblcdUProExit(Sender: TObject);
var
  xUPagoAnt : String;
begin
  xUPagoAnt:=dblcdUPago.Text;
  sSQL := 'SELECT * FROM APO103 WHERE UPROID='+QuotedStr(DM1.cdsDetalle.FieldByName('UPROID').AsString);
  DM1.FiltraCDS(DM1.cdsUPago,sSQL);

  DM1.cdsUPago.IndexFieldNames:='UPAGOID';
  DM1.cdsUPago.SetKey;
  DM1.cdsUPago.FieldByName('UPAGOID').AsString := xUPagoAnt;

end;

end.
