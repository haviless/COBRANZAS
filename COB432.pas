unit COB432;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, wwclient, Db, Wwdatsrc;


type
  TFUnifAso = class(TForm)
    pnlFooter: TPanel;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnSalir: TfcShapeBtn;
    dbgFusion: TwwDBGrid;
    dbgFusionIButton: TwwIButton;
    dbgClon: TwwDBGrid;
    wwIButton1: TwwIButton;
    Panel1: TPanel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Z2bbtnSalirClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
   cdsOrigen, cdsDestino : TwwClientDataSet;
   dsOrigen, dsDestino : TwwDataSource;
  public
    { Public declarations }
  end;

var
  FUnifAso: TFUnifAso;
  xSQL : String;

implementation

uses COBDM1, COB001, MsgDlgs;

{$R *.DFM}

procedure TFUnifAso.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then
  begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFUnifAso.FormActivate(Sender: TObject);
begin
  //** cargo todos los datos duplicados a fusionar
  xSQL := 'SELECT A.*, '' '' DESTINO  '+
          'FROM COB310 A, '+
            '(SELECT ASOID, COUNT(ASOID) CONTA '+
            'FROM COB310 B '+
            'WHERE B.ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
            'AND B.APOSEC='+QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
            'AND NVL(B.ASOID,''N'')<>''N'' '+
            'AND NVL(B.FL_TRANSF,''N'')=''N'' '+
            'GROUP BY B.ASOID '+
            'HAVING COUNT(B.ASOID) > 1 '+
            ') XX '+
          'WHERE A.ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
          'AND A.APOSEC='+QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
          'AND XX.ASOID=A.ASOID';

  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSQL);

  //** seteo el grid
  dbgFusion.DataSource := DM1.dsQry1;
  dbgFusion.Selected.Add('ASOID'#9'11'#9'Código~Asociado');
  dbgFusion.Selected.Add('ASOCODMOD'#9'11'#9'Código~Modular');
  dbgFusion.Selected.Add('USEID'#9'4'#9'U.S.E');
  dbgFusion.Selected.Add('ASOAPENOM'#9'40'#9'Apellidos y Nombres');
  dbgFusion.Selected.Add('TRANSMTO'#9'10'#9'Monto');
  //dbgFusion.Selected.Add('ORIGEN'#9'6'#9'Origen');
  dbgFusion.Selected.Add('DESTINO'#9'6'#9'Destino');
  //dbgFusion.SetControlType('ORIGEN',fctCheckBox,'S;N');
  dbgFusion.SetControlType('DESTINO',fctCheckBox,'S;N');

  dbgClon.Selected.Add('ASOID'#9'11'#9'Código~Asociado');
  dbgClon.Selected.Add('ASOCODMOD'#9'11'#9'Código~Modular');
  dbgClon.Selected.Add('USEID'#9'4'#9'U.S.E');
  dbgClon.Selected.Add('ASOAPENOM'#9'40'#9'Apellidos y Nombres');
  dbgClon.Selected.Add('TRANSMTO'#9'10'#9'Monto');
  //dbgClon.Selected.Add('ORIGEN'#9'6'#9'Origen');
  dbgClon.Selected.Add('DESTINO'#9'6'#9'Destino');

  Try
    DM1.cdsQry1.Open ;
    DM1.cdsQry1.IndexFieldNames := 'ASOID';

    TNumericField(DM1.cdsQry1.FieldByName('TRANSMTO')).DisplayFormat:='###,###,##0.00';
    TNumericField(DM1.cdsQry1.FieldByName('TRANSMTO')).EditFormat:='########0.00';

    cdsDestino := TwwClientDataSet.Create(nil);
    dsDestino  := TwwDataSource.Create(nil);
    cdsDestino.CloneCursor(dm1.cdsQry1,False);

    cdsDestino.filter   := '';
    cdsDestino.Filtered := False;
    cdsDestino.filter   := 'DESTINO=''S''';
    cdsDestino.Filtered := True;

    dsDestino.DataSet   := cdsDestino;
    dbgClon.DataSource  := dsDestino;

    TNumericField(cdsDestino.FieldByName('TRANSMTO')).DisplayFormat:='###,###,##0.00';
    TNumericField(cdsDestino.FieldByName('TRANSMTO')).EditFormat:='########0.00';
  Except
    Screen.Cursor := crDefault;
    Exit;
  end;
end;

procedure TFUnifAso.Z2bbtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFUnifAso.Z2bbtnAceptarClick(Sender: TObject);
var
  xCont : Integer;
  xMonto: Double;
  xAsoc : String;
  xFile, xUsei, xCodM, xAno, xMes, xApoS, xNomb, xUsua, xCodP, xUpro, xPago : String;
begin
  if DM1.cdsQry1.State <> dsBrowse then
    DM1.cdsQry1.Post;
  cdsDestino.First;
  xAsoc := cdsDestino.FieldByName('ASOID').AsString;
  xCont := 0;
  while not cdsDestino.Eof do
  begin
    if xAsoc = cdsDestino.FieldByName('ASOID').AsString then
      xCont := xCont + 1
    else
      xCont := 0;

    if xCont > 1 then
    begin
      ErrorMsg(Caption, 'El Asociado : '+cdsDestino.FieldByName('ASOID').AsString+' - '+cdsDestino.FieldByName('ASOAPENOM').AsString+#13+#13+
                        'Esta Registrado Como Destino Mas de Una Vez'+#13+#13+
                        '                            Verifique');
      Exit;
    end;
    cdsDestino.Next;

    if xAsoc <> cdsDestino.FieldByName('ASOID').AsString then
    begin
      xAsoc := cdsDestino.FieldByName('ASOID').AsString;
      xCont := 0;
    end;
  end;

  if not Question(Caption,'Desea Unificar los Asociados Seleccionados'+#13+#13+
                          'Desea Continuar') then
    Exit;

  Screen.Cursor:=crHourGlass;

  cdsDestino.First;
  while not cdsDestino.Eof do
  begin
    xSQL := 'SELECT SUM(TRANSMTO) MONTO FROM COB310 '+
            'WHERE ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
            'AND APOSEC='+QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
            'AND ASOID='+QuotedStr(cdsDestino.FieldByName('ASOID').AsString);
    dm1.cdsPadre.Close;
    dm1.cdsPadre.DataRequest(xSQL);
    dm1.cdsPadre.Open;

    xMonto:= dm1.cdsPadre.FieldByName('MONTO').AsFloat;
    xFile := DM1.cdsDetalle.FieldByname('ARCHIVO').AsString;
    xAsoc := cdsDestino.FieldByname('ASOID').AsString;
    xUsei := cdsDestino.FieldByname('USEID').AsString;
    xCodM := cdsDestino.FieldByname('ASOCODMOD').AsString;
    xAno  := cdsDestino.FieldByname('TRANSANO').AsString;
    xMes  := cdsDestino.FieldByname('TRANSMES').AsString;
    xApoS := cdsDestino.FieldByname('APOSEC').AsString;
    xNomb := cdsDestino.FieldByname('ASOAPENOM').AsString;
    xUsua := DM1.wUsuario;
    xCodP := cdsDestino.FieldByname('ASOCODPAGO').AsString;
    xUpro := DM1.cdsDetalle.FieldByname('UPROID').AsString;
    xPago := DM1.cdsDetalle.FieldByname('UPAGOID').AsString;

    xSQL:='DELETE FROM COB310 '+
          'WHERE ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
          'AND APOSEC=' +QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
          'AND ASOID='+QuotedStr(xAsoc);

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;

    xSQL:='INSERT INTO COB310 (ARCHIVO, ASOID, USEID, ASOCODMOD, TRANSANO, TRANSMES, TRANSMTO, APOSEC, '+
          'ASOAPENOM, USUARIO, FREG, HREG, ASOCODPAGO, UPROID, UPAGOID) '+
          'VALUES ('+QuotedStr(xFile)+', '+QuotedStr(xAsoc)+', '+QuotedStr(xUsei)+', '+QuotedStr(xCodM)+', '+
          QuotedStr(xAno)+', '+QuotedStr(xMes)+', '+FloatToStr(xMonto)+', '+QuotedStr(xApoS)+', '+QuotedStr(xNomb)+', '+
          QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, '+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
          QuotedStr(xCodP)+', '+QuotedStr(xUpro)+', '+QuotedStr(xPago)+')';

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;

    cdsDestino.Next;
  end;

  xSQL := 'SELECT A.*, '' '' DESTINO  '+
          'FROM COB310 A, '+
            '(SELECT ASOID, COUNT(ASOID) CONTA '+
            'FROM COB310 B '+
            'WHERE B.ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
            'AND B.APOSEC='+QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
            'AND NVL(B.ASOID,''N'')<>''N'' '+
            'AND NVL(B.FL_TRANSF,''N'')=''N'' '+
            'GROUP BY B.ASOID '+
            'HAVING COUNT(B.ASOID) > 1 '+
            ') XX '+
          'WHERE A.ARCHIVO='+QuotedStr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)+' '+
          'AND A.APOSEC='+QuotedStr(DM1.cdsDetalle.FieldByname('PERIODO').AsString)+' '+
          'AND XX.ASOID=A.ASOID';

  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSQL);
  DM1.cdsQry1.Open;

  TNumericField(DM1.cdsQry1.FieldByName('TRANSMTO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry1.FieldByName('TRANSMTO')).EditFormat   :='########0.00';

  cdsDestino.Free;
  dsDestino.Free;

  cdsDestino := TwwClientDataSet.Create(nil);
  dsDestino  := TwwDataSource.Create(nil);
  cdsDestino.CloneCursor(dm1.cdsQry1,False);

  cdsDestino.filter   := '';
  cdsDestino.Filtered := False;
  cdsDestino.filter   := 'DESTINO=''S''';
  cdsDestino.Filtered := True;

  dsDestino.DataSet   := cdsDestino;
  dbgClon.DataSource  := dsDestino;

  TNumericField(cdsDestino.FieldByName('TRANSMTO')).DisplayFormat :='###,###,##0.00';
  TNumericField(cdsDestino.FieldByName('TRANSMTO')).EditFormat    :='########0.00';

  Screen.Cursor:=crDefault;
end;

procedure TFUnifAso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsDestino.Free;
  dsDestino.Free;
end;

end.
