unit COB422;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Mask, wwdbedit,
  DBCtrls, Wwdbspin, ComCtrls, wwdblook, variants;

type
  TFPlantMan2 = class(TForm)
    Panel1: TPanel;
    wwDBGrid2: TwwDBGrid;
    dbgCabec: TwwDBGrid;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    bbtnImportar: TBitBtn;
    dbgPlantilla: TwwDBGrid;
    wwDBGrid3IButton: TwwIButton;
    wwDBGrid2IButton: TwwIButton;
    wwDBGrid1IButton: TwwIButton;
    pnlCab: TPanel;
    pnlDet: TPanel;
    dbeCodigo: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    bbtnOkC: TBitBtn;
    bbtnCancC: TBitBtn;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    bbtnOkD: TBitBtn;
    bbtnCancD: TBitBtn;
    dbeItem: TwwDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    spLongCero: TwwDBSpinEdit;
    dbcbCero: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    spDesde: TwwDBSpinEdit;
    Label11: TLabel;
    spHasta: TwwDBSpinEdit;
    bbtnEliminar: TBitBtn;
    pgProc: TProgressBar;
    pnlPrevio: TPanel;
    dbgPrevio: TwwDBGrid;
    BitBtn3: TBitBtn;
    Label12: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Previo: TBitBtn;
    dblcCampo: TwwDBLookupCombo;
    procedure bbtnImportarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwDBGrid3IButtonClick(Sender: TObject);
    procedure bbtnCancCClick(Sender: TObject);
    procedure bbtnOkCClick(Sender: TObject);
    procedure wwDBGrid2IButtonClick(Sender: TObject);
    procedure bbtnOkDClick(Sender: TObject);
    procedure bbtnCancDClick(Sender: TObject);
    procedure dbgCabecDblClick(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgCabecKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwDBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbtnEliminarClick(Sender: TObject);
    procedure PrevioClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dblcCampoExit(Sender: TObject);
    procedure dbgCabecRowChanged(Sender: TObject);
  private
    { Private declarations }
    xModoPC : String;
    xSQL: String;
  public
    { Public declarations }
  end;

var
  FPlantMan2: TFPlantMan2;

implementation

{$R *.DFM}

USES COBDM1, MsgDlgs;


procedure TFPlantMan2.bbtnImportarClick(Sender: TObject);
var
  xSQL, xSelect1, xSelect2, xSelect3, xDesde, xHasta, xCeros : String;
begin
  if DM1.cdsDetalle.FieldByname('FL_IMPORT').AsString='S' then
  begin
    ShowMessage('Error: Archivo ya fue Importado');
    Exit;
  end;

  if not Question(Caption, 'Seguro de Transferir Archivo') then
    Exit;

  Screen.Cursor:=crHourGlass;
  xSelect1:='';
  xSelect2:='';
  xSelect3:='';
  xCeros:='0000000000';

  pgProc.Visible:=True;
  pgProc.Max:=DM1.cdsModelo.RecordCount+4;
  pgProc.Min:=0;
  pgProc.Position:=1;

  DM1.cdsModelo.First;
  while not DM1.cdsModelo.Eof do
  Begin
    Application.ProcessMessages;
    pgProc.Position:=pgProc.Position+1;
    if ( DM1.cdsModelo.FieldByName('DESDE').AsInteger>0 ) and
       ( DM1.cdsModelo.FieldByName('DESDE').AsInteger>0 ) then
    begin
      xDesde:=DM1.cdsModelo.FieldByName('DESDE').AsString;
      xHasta:=IntToStr( DM1.cdsModelo.FieldByName('HASTA').AsInteger - DM1.cdsModelo.FieldByname('DESDE').AsInteger + 1 );

      xSelect1:=xSelect1 + ', '+DM1.cdsModelo.FieldByName('CAMPO').AsString;

      if DM1.cdsModelo.FieldByName('TIPO').AsString='FLOAT' then
        xSelect2:=xSelect2 + ', TO_NUMBER( TRIM(Substr( LINEA, '+xDesde+', '+xHasta+' )), ''9999999.99'' ) '
      else
      begin
        if DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' then
        begin
          xSelect2:=xSelect2 + ',SUBSTR('''+xCeros+'''||Trim( Substr( LINEA, '+xDesde+', '+xHasta+' ) ), '
                                            +'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByname('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByname('LONGITUD').AsString+' ) ';
        end
        else
          xSelect2:=xSelect2 + ', TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) ';
      end;

    end;
    DM1.cdsModelo.Next;
  end;

  xSQL:='INSERT INTO COB332 ( ARCHIVO'+ xSelect1+', '
       +'APOSEC, USUARIO, FREG, HREG, TRANSANO, TRANSMES ) '

       +'SELECT COB328.ARCHIVO '+xSelect2+', '''+DM1.cdsDetalle.FieldByname('PERIODO').AsString+''', '
       +''''+DM1.wUsuario+''', SYSDATE, SYSDATE, '
       +'SUBSTR(PERIODO,1,4), SUBSTR(PERIODO,5,2) '
       +'FROM COB328 '
       +'WHERE COB328.ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' '
       +'AND COB328.PERIODO='''+DM1.cdsDetalle.FieldByname('PERIODO').AsString+''' ';

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  pgProc.Position:=pgProc.Position+1;
  Try
    DM1.cdsQry.Execute;
  Except
    Screen.Cursor:=crDefault;
    pgProc.Position:=0;
    ErrorMsg(Caption, 'Existe Data Erronea, Verifique Antes de Importar ');
    Exit;
  End;
  pgProc.Position:=pgProc.Position+1;


  DM1.cdsDetalle.Edit;
  DM1.cdsDetalle.FieldByname('FL_IMPORT').AsString:='S';
  pgProc.Position:=pgProc.Position+1;
  pgProc.Position:=pgProc.Position+1;
  DM1.cdsDetalle.Post;
  dm1.AplicaDatos( DM1.cdsDetalle, '' );
  Screen.Cursor:=crDefault;
  pgProc.Position:=pgProc.Position+1;
  pgProc.Visible:=False;
  ShowMessage('Transferencia Ok.');
end;

procedure TFPlantMan2.FormActivate(Sender: TObject);
var
  xSQL, xLin1, xLin2 : String;
  xCols : Integer;
begin
  DM1.cdsModelo.Close;
  DM1.cdsModelo.DataRequest('Select * from COB329');
  DM1.cdsModelo.Open;

  xSQL:='SELECT * FROM COB328 '
       +'WHERE ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' AND '
       +'PERIODO='''+DM1.cdsDetalle.FieldByname('PERIODO').AsString+'''';
  DM1.cdsEjecuta.Close;
  DM1.cdsEjecuta.PacketRecords:=100;
  DM1.cdsEjecuta.DataRequest(xSQL);
  DM1.cdsEjecuta.Open;

  xSQL:='SELECT * FROM COB330 ';
  DM1.cdsPlantilla.Close;
  DM1.cdsPlantilla.DataRequest(xSQL);
  DM1.cdsPlantilla.Open;

  xLin1:='1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';
  xLin2:='         1         2         3         4         5         6         7         8         9        10        11        12        13        14        15        16';
  xCols:=140;

  DM1.cdsEjecuta.FieldByName('LINEA').DisplayLabel:=Copy( xLin1,1,xCols)+'~'+Copy(xLin2,1,xCols);
  DM1.cdsEjecuta.FieldByName('LINEA').DisplayWidth:=xCols;

  DM1.cdsEjecuta.FieldByName('FLAG').Visible    :=False;
  DM1.cdsEjecuta.FieldByName('ITEM').Visible    :=False;
  DM1.cdsEjecuta.FieldByName('ARCHIVO').Visible :=False;
  DM1.cdsEjecuta.FieldByName('PERIODO').Visible :=False;
  DM1.cdsEjecuta.FieldByName('FREG').Visible    :=False;
  DM1.cdsEjecuta.FieldByName('LINEA2').Visible  :=False;
  DM1.cdsEjecuta.FieldByName('USEID').Visible   :=False;
  DM1.cdsEjecuta.FieldByName('UPAGOID').Visible :=False;
  DM1.cdsEjecuta.FieldByName('UPROID').Visible  :=False;

  dbgCabec.Selected.Clear;
  dbgCabec.Selected.Add('PLANTILLA'+#9+'5'+#9+'It');
  dbgCabec.Selected.Add('NOMBRE'+#9+'20'+#9+'Plantilla');

  DM1.cdsPlandet.Open;
end;

procedure TFPlantMan2.wwDBGrid3IButtonClick(Sender: TObject);
var
   xSQL : String;
begin
   pnlCab.Visible:=True;
   dbeCodigo.Enabled:=False;
   xSQL:='SELECT MAX( NVL(PLANTILLA,''0'') ) NUMERO FROM COB330';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;

   DM1.cdsPlantilla.Append;
   If (Length(Trim(DM1.cdsQry.FieldByName('NUMERO').AsString))=0) Or
      (DM1.cdsQry.FieldByName('NUMERO').AsString='0') then
      DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString:='00001'
   else begin
      DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString:=
        DM1.StrZero( IntToStr(StrToInt(DM1.cdsQry.FieldByName('NUMERO').AsString)+1),4 );
   end;
   xModoPC:='A';
end;

procedure TFPlantMan2.bbtnCancCClick(Sender: TObject);
begin
   pnlCab.Visible:=False;
   DM1.cdsPlantilla.CancelUpdates;
end;

procedure TFPlantMan2.bbtnOkCClick(Sender: TObject);
var
   xSQL : String;
begin
   pnlCab.Visible:=False;

   if xModoPC='A' then begin
      xSQL:='Insert Into COB331 ( PLANTILLA, ITEM, CAMPO, NOMBRE, USUARIO, CEROIZQ ) '
           +'Select '''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+''','
           +  'ITEM, CAMPO, NOMBRE, '''+DM1.wUsuario+''', ''N'' FROM COB329';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      DM1.cdsQry.Execute;

      xSQL:='SELECT * FROM COB331 '
           +'WHERE PLANTILLA='''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+''' '
           +'ORDER BY ITEM';
      DM1.cdsPlanDet.Close;
      DM1.cdsPlanDet.Datarequest( xSQL );
      DM1.cdsPlanDet.Open;
   end;

   DM1.cdsPlantilla.ApplyUpdates( 0 );

end;

procedure TFPlantMan2.wwDBGrid2IButtonClick(Sender: TObject);
var
   xSQL : String;
begin
  pnlDet.Visible :=True;
  dbeItem.Enabled:=False;

  dblcCampo.LookupField:='NOMBRE';
  dblcCampo.LookupTable:=DM1.cdsReporte;

  xSQL:='SELECT * FROM COB329 A '
       +'WHERE NOT EXISTS( SELECT * FROM COB331 B '
       +                  'WHERE PLANTILLA='''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+''' AND A.CAMPO=B.CAMPO )';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest( xSQL );
  DM1.cdsReporte.Open;

  DM1.cdsPlanDet.Insert;
  DM1.cdsPlanDet.FieldByName('PLANTILLA').AsString:=DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString;
  DM1.cdsPlanDet.FieldByname('CEROIZQ').AsString  :='N';
  dblcCampo.SetFocus;
end;

procedure TFPlantMan2.bbtnOkDClick(Sender: TObject);
begin
   If (Length(Trim(spDesde.Text))=0) Or
      (Trim(spDesde.Text)='0') Then
   Begin
    ShowMessage('Debe Ingresar un valor Diferente a cero');
    spDesde.SetFocus;
    exit;
   End;
   If (Length(Trim(spHasta.Text))=0) Or
      (Trim(spDesde.Text)='0') Then
   Begin
    ShowMessage('Debe Ingresar un valor Diferente a cero');
    spHasta.SetFocus;
    exit;
   End;
   If dbcbCero.Checked Then
   Begin
    If spLongCero.Value<(spHasta.Value-spDesde.value) Then
    Begin
      ShowMessage('La longitud total del campo debe ser mayor');
      spLongCero.SetFocus;
      exit;
    End;
   End;
   pnlDet.Visible:=False;
   DM1.cdsPlanDet.ApplyUpdates( 0 );
end;

procedure TFPlantMan2.bbtnCancDClick(Sender: TObject);
begin
  dblcCampo.DataSource:=nil;
  DM1.cdsPlanDet.CancelUpdates;
  pnlDet.Visible:=False;
end;

procedure TFPlantMan2.dbgCabecDblClick(Sender: TObject);
begin
  pnlCab.Visible:=True;
  dbeCodigo.Enabled:=False;
  DM1.cdsPlantilla.Edit;
end;

procedure TFPlantMan2.wwDBGrid2DblClick(Sender: TObject);
begin
  pnlDet.Visible:=True;
  dbeItem.Enabled:=False;
  DM1.cdsPlanDet.Edit;
end;

procedure TFPlantMan2.BitBtn2Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  pgProc.Visible:=True;
  pgProc.Max:=DM1.cdsModelo.RecordCount+
              DM1.cdsPlandet.RecordCount;
  pgProc.Min:=0;
  pgProc.Position:=1;
  DM1.cdsModelo.First;
  while not DM1.cdsModelo.Eof do begin
     Application.ProcessMessages;
     DM1.cdsModelo.Edit;
     DM1.cdsModelo.FieldByName('DESDE').AsInteger   :=0;
     DM1.cdsModelo.FieldByName('HASTA').AsInteger   :=0;
     DM1.cdsModelo.FieldByName('CEROIZQ').AsString  :='';
     DM1.cdsModelo.FieldByName('LONGITUD').AsInteger:=0;
     pgProc.Position:=pgProc.Position+1;
     DM1.cdsModelo.Next;
  end;

  DM1.cdsPlandet.First;
  while not DM1.cdsPlandet.Eof do begin
     Application.ProcessMessages;
     if DM1.cdsModelo.Locate('CAMPO',VarArrayOf([DM1.cdsPlanDet.FieldByname('CAMPO').AsString]),[]) then
     begin
        DM1.cdsModelo.Edit;
        DM1.cdsModelo.FieldByName('DESDE').AsString   :=DM1.cdsPlanDet.FieldByName('DESDE').AsString;
        DM1.cdsModelo.FieldByName('HASTA').AsString   :=DM1.cdsPlandet.FieldByName('HASTA').AsString;
        DM1.cdsModelo.FieldByName('CEROIZQ').AsString :=DM1.cdsPlanDet.FieldByName('CEROIZQ').AsString;
        DM1.cdsModelo.FieldByName('LONGITUD').AsString:=DM1.cdsPlanDet.FieldByName('LONGITUD').AsString;
        pgProc.Position:=pgProc.Position+1;
        DM1.cdsModelo.Post;
     end;
     DM1.cdsPlandet.Next;
  end;
  pgProc.Visible:=False;
  Screen.Cursor:=crDefault;
end;

procedure TFPlantMan2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsEjecuta.Close;
  DM1.cdsEjecuta.PacketRecords:=-1;
end;

procedure TFPlantMan2.dbgCabecKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  xSQL : String;
begin
  if (key=VK_Delete) and (ssCtrl in Shift) then
  begin
    if MessageDlg( ' ¿ Eliminar Plantilla ? ' ,mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    begin
      xSQL:='DELETE FROM COB331 WHERE PLANTILLA='''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+'''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
      
      DM1.cdsPlantilla.Delete;
      DM1.cdsPlantilla.ApplyUpdates( 0 );
    end
  end;
end;


procedure TFPlantMan2.wwDBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_Delete) and (ssCtrl in Shift) then
  begin
    if MessageDlg( ' ¿ Eliminar Registro ? ' ,mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    begin
      DM1.cdsPlandet.Delete;
      DM1.cdsPlanDet.ApplyUpdates( 0 );
    end
  end;
end;

procedure TFPlantMan2.bbtnEliminarClick(Sender: TObject);
begin
    if MessageDlg('¿Esta Seguro de Eliminar los Registros?', mtconfirmation,[mbYes,MbNo],0)=mrNo then Exit;

    Screen.Cursor:=crHourGlass;
    pgProc.Visible:=True;
    pgProc.Max:=6;
    pgProc.Min:=0;
    pgProc.Position:=1;

    xSQL:='DELETE COB332 '
         +'WHERE ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' '
         +'AND APOSEC='+Quotedstr(DM1.cdsDetalle.FieldByname('PERIODO').AsString);
{         +'AND TRANSANO=''' +Copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString,1,4)+''' '
         +'AND TRANSMES=''' +Copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString,5,2)+'''';}


    DM1.cdsQry.Close;

    pgProc.Position:=pgProc.Position+1;
    DM1.cdsQry.DataRequest(xSQL);
    pgProc.Position:=pgProc.Position+1;
    DM1.cdsQry.Execute;
    pgProc.Position:=pgProc.Position+1;

    DM1.cdsDetalle.Edit;
    pgProc.Position:=pgProc.Position+1;
    DM1.cdsDetalle.FieldByName('FL_IMPORT').Clear;
    pgProc.Position:=pgProc.Position+1;
    DM1.cdsDetalle.ApplyUpdates(-1);
    pgProc.Position:=pgProc.Position+1;
    pgProc.Visible:=False;
    Screen.Cursor:=crDefault;
    ShowMessage('Los Datos Importados se Eliminaron ');
end;


procedure TFPlantMan2.PrevioClick(Sender: TObject);
var
  xSQL, xSelect1, xSelect2, xSelect3, xDesde, xHasta, xCeros, xAde : String;
begin
  if DM1.cdsDetalle.FieldByname('FL_IMPORT').AsString='S' then
  begin
    ErrorMsg(Caption, 'Archivo ya fue Importado');
  end;

  Screen.Cursor:=crHourGlass;
  xSelect1:='';
  xSelect2:='';
  xSelect3:='';
  xCeros:='0000000000';

  pgProc.Visible:=True;
  pgProc.Max:=DM1.cdsModelo.RecordCount+4;
  pgProc.Min:=0;
  pgProc.Position:=1;

  xAde:='N';

  DM1.cdsModelo.First;
  while not DM1.cdsModelo.Eof do
  begin
    if ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) and
       ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) then
    begin

      if ( DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEID'  ) or
         ( DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEDES' ) then
      begin
         xAde:='S';
         Break;
      end;
    end;
    DM1.cdsModelo.Next;
  end;


  DM1.cdsModelo.First;
  while not DM1.cdsModelo.Eof do
  begin
    Application.ProcessMessages;

    pgProc.Position:=pgProc.Position+1;

    if ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) and
       ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) then
    begin
      xDesde:=DM1.cdsModelo.FieldByName('DESDE').AsString;
      xHasta:=IntToStr( DM1.cdsModelo.FieldByName('HASTA').AsInteger -
                        DM1.cdsModelo.FieldByname('DESDE').AsInteger + 1 );

      xSelect1:=xSelect1+', '+DM1.cdsModelo.FieldByName('CAMPO').AsString;

      if DM1.cdsModelo.FieldByName('TIPO').AsString='FLOAT' then
         xSelect2:=xSelect2+', TO_NUMBER(TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )), ''9999999.99'' ) '+DM1.cdsModelo.FieldByName('CAMPO').AsString
      else
      begin
         if DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' then
         begin
            xSelect2:=xSelect2+', SUBSTR('''+xCeros+'''||TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                              +  'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByname('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByname('LONGITUD').AsString+' ) '+DM1.cdsModelo.FieldByName('CAMPO').AsString;
         end
         else
            xSelect2:=xSelect2 + ', RTRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) '+ DM1.cdsModelo.FieldByName('CAMPO').AsString;
      end;
    end;
    DM1.cdsModelo.Next;
  end;

  xSelect2:=Copy( xSelect2, 2, Length( xSelect2 )-1 );

  xSQL:='SELECT '+xSelect2+' '
       +'FROM COB328 '
       +'WHERE COB328.ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' '
       +'AND COB328.PERIODO='''+DM1.cdsDetalle.FieldByname('PERIODO').AsString+''' ';


  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add( 'ASONCTA'+#9+'20'+#9+'Cuenta Corriente');
  dbgPrevio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Nombre Asociado');
  dbgPrevio.Selected.Add( 'IMPORTE'+#9+'12'+#9+'Cobrado');
  dbgPrevio.Selected.Add( 'COMISION'+#9+'12'+#9+'Comisión');

  DM1.cdsCambios.Close;
  DM1.cdsCambios.DataRequest(xSQL );
  DM1.cdsCambios.FetchOnDemand:=False;
  DM1.cdsCambios.PacketRecords:=100;
  DM1.cdsCambios.FetchOnDemand:=True;
  pgProc.Position:=pgProc.Position+1;
  try
    DM1.cdsCambios.Open;
  except
    Screen.Cursor:=crDefault;
    pgProc.Position:=0;
    ErrorMsg(Caption, 'Existe Data Erronea, Verifique Antes de Generar el Preliminar ');
    Exit;
  end;
  pgProc.Position:=pgProc.Position+1;

  pgProc.Position:=pgProc.Position+1;
  pgProc.Visible:=False;

  dbgPrevio.DataSource:=DM1.dsCambios;

  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add( 'ASONCTA'+#9+'20'+#9+'Cuenta Corriente');
  dbgPrevio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Nombre Asociado');
  dbgPrevio.Selected.Add( 'IMPORTE'+#9+'12'+#9+'Cobrado');
  dbgPrevio.Selected.Add( 'COMISION'+#9+'12'+#9+'Comisión');

  panel1.Enabled:=False;
  panel2.Enabled:=False;

  DM1.cdsCambios.FetchOnDemand:=False;
  DM1.cdsCambios.PacketRecords:=-1;
  DM1.cdsCambios.FetchOnDemand:=True;

  Screen.Cursor:=crDefault;
  pnlPrevio.Height:=252;
  pnlPrevio.Left:=24;
  pnlPrevio.Top:=208;

  pnlPrevio.Visible:=True;
end;

procedure TFPlantMan2.BitBtn3Click(Sender: TObject);
begin
   panel1.Enabled:=True;
   panel2.Enabled:=True;
   dbgPrevio.DataSource:=nil;
   pnlPrevio.Visible:=False;
end;

procedure TFPlantMan2.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFPlantMan2.BitBtn1Click(Sender: TObject);
begin
   dbgPlantilla.TitleFont.Size:=7;
   dbgPlantilla.Font.Size     :=7;
   dbgPlantilla.RefreshDisplay;

end;

procedure TFPlantMan2.BitBtn4Click(Sender: TObject);
begin
   dbgPlantilla.TitleFont.Size:=8;
   dbgPlantilla.Font.Size     :=8;
   dbgPlantilla.RefreshDisplay;
end;

procedure TFPlantMan2.dblcCampoExit(Sender: TObject);
begin
  if bbtnCancD.Focused then Exit;

   if dblcCampo.Text='' then begin
      ShowMessage('Error : Falta Ingresar Campo');
      dblcCampo.SetFocus;
      Exit
   end;
   DM1.cdsPlandet.Edit;
   DM1.cdsPlandet.FieldByname('CAMPO').AsString:=DM1.cdsReporte.FieldByname('CAMPO').AsString;
   DM1.cdsPlandet.FieldByname('ITEM').AsString :=DM1.cdsReporte.FieldByname('ITEM').AsString;
end;

procedure TFPlantMan2.dbgCabecRowChanged(Sender: TObject);
var
  xSQL : String;
begin
  xSQL:='SELECT * FROM COB331 '
       +'WHERE PLANTILLA='''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+''' '
       +'ORDER BY ITEM';
  DM1.cdsPlanDet.Close;
  DM1.cdsPlanDet.Datarequest( xSQL );
  DM1.cdsPlanDet.Open;
end;

end.
