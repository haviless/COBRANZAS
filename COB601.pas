unit COB601;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, StdCtrls;

type
  TFGenAsoc = class(TForm)
    pnlFooter: TPanel;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnSalir: TfcShapeBtn;
    dbgGenFile: TwwDBGrid;
    dbgFusionIButton: TwwIButton;
    pnlOpcion: TPanel;
    rdgOpcion: TRadioGroup;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    edtName: TEdit;
    lblNombre: TLabel;
    pnlpanel: TPanel;
    fcShapeBtn3: TfcShapeBtn;
    fcShapeBtn4: TfcShapeBtn;
    dbgSelecci: TwwDBGrid;
    wwIButton1: TwwIButton;
    Panel1: TPanel;
    Label1: TLabel;
    procedure Z2bbtnSalirClick(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn4Click(Sender: TObject);
    procedure rdgOpcionClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGenAsoc: TFGenAsoc;
  xSQL : String;

implementation

uses COBDM1, COB001, MsgDlgs, COB432;

{$R *.DFM}

procedure TFGenAsoc.Z2bbtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFGenAsoc.fcShapeBtn2Click(Sender: TObject);
begin
  pnlOpcion.Visible:=False;
end;

procedure TFGenAsoc.FormActivate(Sender: TObject);
begin
  pnlpanel.Visible:=False;
  pnlOpcion.Visible:=False;

  xSQL:='SELECT * FROM COB310 '+
        'WHERE '+MtxD.FMant.SQL_WHERE;
        {'WHERE ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
        'AND APOSEC=' +QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
        'AND FLAG='+QuotedStr('S');}
  DM1.cdsRepresentante.Close;
  DM1.cdsRepresentante.DataRequest(xSQL);

  dbgGenFile.DataSource:=DM1.dsRepresentante;
  dbgGenFile.Selected.Clear;
  dbgGenFile.Selected.Add('ASOID'#9'11'#9'Codigo~Asociado');
  dbgGenFile.Selected.Add('ASOCODMOD'#9'11'#9'Codigo~Modular');
  dbgGenFile.Selected.Add('ASOCODPAGO'#9'11'#9'Codigo~Pago');
  dbgGenFile.Selected.Add('UPROID'#9'3'#9'U.~Proc.');
  dbgGenFile.Selected.Add('UPAGOID'#9'3'#9'U.~Pago');
  dbgGenFile.Selected.Add('USEID'#9'3'#9'U.S.E.');
  dbgGenFile.Selected.Add('TRANSMTO'#9'10'#9'Importe');
  dbgGenFile.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y Nombres');
  dbgGenFile.Selected.Add('APOSEC'#9'6'#9'Periodo');
  dbgGenFile.RefreshDisplay;

  DM1.cdsRepresentante.Open;
  dbgGenFile.ColumnByName('TRANSMTO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsRepresentante , 'SUM(TRANSMTO)',''),ffNumber, 15, 2);
end;

procedure TFGenAsoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsRepresentante.Close;
  DM1.cdsPadre.Close;
  dbgGenFile.DataSource:=Nil;
  dbgSelecci.DataSource:=Nil;
end;

procedure TFGenAsoc.Z2bbtnAceptarClick(Sender: TObject);
begin
  pnlOpcion.Height:=152;
  pnlOpcion.Left:=201;
  pnlOpcion.Top:=144;
  pnlOpcion.Width:=398;
  pnlOpcion.Visible:=True;
end;

procedure TFGenAsoc.fcShapeBtn1Click(Sender: TObject);
var
  xItem : Integer;
  xName, xAAMM : String;
begin
  if rdgOpcion.ItemIndex = 0 then
  begin
    if Length(Trim(edtName.Text)) = 0 then
    begin
      ErrorMsg(Caption, 'Nombre de Archivo no Valido');
      edtName.SetFocus;
      Exit;
    end
    else
    begin
      xSQL:='SELECT ARCHIVO FROM COB312 WHERE ARCHIVO='+QuotedStr(Trim(edtName.Text));
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;

      if dm1.cdsQry.RecordCount > 0 then
      begin
        Information(Caption, 'Nombre de Archivo ya Existe');
        Exit;
      end;
    end;

    pnlOpcion.Visible:=False;

    if Question(Caption, 'Usted a Solicitado Generar un Nuevo Registro con '+#13+#13+
                      InttoStr(DM1.cdsRepresentante.RecordCount)+' Asociados con Monto de '+
                      dbgGenFile.ColumnByName('TRANSMTO').FooterValue+#13+#13+
                      'Desea Continuar') then
    begin
      Screen.Cursor:=crHourGlass;
      xSQL:='SELECT MAX(ITEM) ITEM FROM COB312 ';
      Dm1.cdsQry.Close;
      Dm1.cdsQry.DataRequest(xSql);
      Dm1.cdsQry.Open;

      xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger+1;
      xName := Trim(edtName.Text)+'.Tranf';
      xAAMM := DM1.cdsDetalle.FieldByname('PERIODO').AsString;

      xSQL:='INSERT INTO COB310(ARCHIVO, ASOID, USEID, ASOCODMOD, TRANSANO, TRANSMES, TRANSMTO, APOSEC, '+
            'ASOAPENOM, USUARIO, FREG, HREG, ASOCODPAGO, UPROID, UPAGOID) '+

            'SELECT '+QuotedStr(xName)+', ASOID, USEID, ASOCODMOD, TRANSANO, TRANSMES, TRANSMTO, APOSEC, '+
            'ASOAPENOM, '+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, '+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
            'ASOCODPAGO, '+QuotedStr(DM1.cdsDetalle.FieldByName('UPROID').AsString)+', UPAGOID '+
            'FROM COB310 '+
            'WHERE ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
            'AND APOSEC=' +QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
            'AND FLAG='+QuotedStr('S');

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Execute;

      xSQL:='INSERT INTO COB312(ITEM, ARCHIVO, PERIODO, USUARIO, FREG, FL_BAJADO, UPROID, FL_GENER) '+
            'VALUES ('+
            inttoStr(xItem)+', '+QuotedStr(xName)+', '+QuotedStr(xAAMM)+', '+QuotedStr(dm1.wUsuario)+', '+
            'TO_DATE(SYSDATE, '+QuotedStr('DD/MM/YYY')+'), ''S'', '+
            QuotedStr(DM1.cdsDetalle.FieldByName('UPROID').AsString)+', ''S'') ';

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Execute;

      xSQL:='DELETE FROM COB310 '+
            'WHERE ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
            'AND APOSEC=' +QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
            'AND FLAG='+QuotedStr('S');

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Execute;
      Screen.Cursor:=crDefault;
    end;
  end
  else
  if rdgOpcion.ItemIndex = 1 then
  begin
    Screen.Cursor:=crHourGlass;
    pnlOpcion.Visible:=False;

    xSQL:='SELECT * FROM COB312 '+
          'WHERE PERIODO='+QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
          'AND UPROID='+QuotedStr(DM1.cdsDetalle.FieldByname('UPROID').AsString)+' '+
          'AND ARCHIVO<>'+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
          'ORDER BY ITEM';
    DM1.cdsPadre.Close;
    DM1.cdsPadre.DataRequest(xSQL);

    dbgSelecci.DataSource:=DM1.dsPadre;
    dbgSelecci.Selected.Clear;
    dbgSelecci.Selected.Add('ITEM'#9'4'#9'Item');
    dbgSelecci.Selected.Add('ARCHIVO'#9'20'#9'Archivo');
    dbgSelecci.Selected.Add('USUARIO'#9'12'#9'Usuario');
    dbgSelecci.Selected.Add('UPROID'#9'5'#9'U.~Procec.');
    dbgSelecci.Selected.Add('RECAUDA'#9'15'#9'Tipo~Recaudación');
    dbgSelecci.RefreshDisplay;

    dm1.cdsPadre.Open;
    Screen.Cursor:=crDefault;
    if dm1.cdsPadre.RecordCount = 0 then
    begin
      Information(Caption,'No Existe Archivos que Cumplan con la Condición de :'+#13+#13+
                          'U. Proceso : '+DM1.cdsDetalle.FieldByname('UPROID').AsString+'  y '+#13+
                          'Periodo    : '+DM1.cdsDetalle.FieldByname('PERIODO').AsString+#13+#13+
                          'Tiene que Seleccionar la Opcion de ''''Archivo Nuevo''''');
      Exit;
    end;

    pnlpanel.Height:=325;
    pnlpanel.Left:=159;
    pnlpanel.Top:=58;
    pnlpanel.Width:=483;
    pnlpanel.Visible:=True;
    Screen.Cursor:=crDefault;    
  end;
end;

procedure TFGenAsoc.fcShapeBtn4Click(Sender: TObject);
begin
  pnlpanel.Visible:=False;
end;

procedure TFGenAsoc.rdgOpcionClick(Sender: TObject);
begin
  if rdgOpcion.ItemIndex = 0 then
  begin
    edtName.Text:='';
    edtName.Visible:=True;
    lblNombre.Visible:=True;    
  end
  else
  begin
    edtName.Visible:=False;
    lblNombre.Visible:=False;
  end;
end;

procedure TFGenAsoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then
  begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFGenAsoc.fcShapeBtn3Click(Sender: TObject);
begin
  if Question(Caption,'Desea Ingresar los Asociados Seleccionados al Achivo '+#13+#13+
                      DM1.cdsPadre.FieldByName('ARCHIVO').AsString+#13+#13+
                      'Desea Continuar') then
  begin
    Screen.Cursor:=crHourGlass;
    xSQL:='INSERT INTO COB310(ARCHIVO, ASOID, USEID, ASOCODMOD, TRANSANO, TRANSMES, TRANSMTO, APOSEC, '+
          'ASOAPENOM, USUARIO, FREG, HREG, ASOCODPAGO, UPROID, UPAGOID) '+
          'SELECT '+QuotedStr(DM1.cdsPadre.FieldByName('ARCHIVO').AsString)+', ASOID, USEID, ASOCODMOD, TRANSANO, TRANSMES, TRANSMTO, APOSEC, '+
          'ASOAPENOM, '+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, '+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
          'ASOCODPAGO, '+QuotedStr(DM1.cdsDetalle.FieldByName('UPROID').AsString)+', UPAGOID '+
          'FROM COB310 '+
          'WHERE ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
          'AND APOSEC=' +QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
          'AND FLAG='+QuotedStr('S');

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;

    xSQL:='DELETE FROM COB310 '+
          'WHERE ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
          'AND APOSEC=' +QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
          'AND FLAG='+QuotedStr('S');

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;
    Screen.Cursor:=crDefault;    
  end;
end;

end.


