unit COB415;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, Spin, StdCtrls, ComCtrls, Buttons, ExtCtrls, wwdbedit, fcButton,
  fcImgBtn, fcShapeBtn, wwclient;

type
  TFToolDetalle = class(TForm)
    pnlTool: TPanel;
    GroupBox1: TGroupBox;
    bbtnEliminaL: TBitBtn;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    bbtnInserta: TBitBtn;
    bbtnEliminaC: TBitBtn;
    me1: TMaskEdit;
    seFinC: TSpinEdit;
    seIniC: TSpinEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    seIniC2: TSpinEdit;
    seFinC2: TSpinEdit;
    bbtnUnir: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Image1: TImage;
    pgPla: TProgressBar;
    seIniC3: TSpinEdit;
    seFinC3: TSpinEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Bevel8: TBevel;
    Bevel1: TBevel;
    Label11: TLabel;
    seIniC4: TSpinEdit;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    Label12: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    seIni: TSpinEdit;
    seFin: TSpinEdit;
    BitBtn5: TBitBtn;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    bbtnReemplaza: TBitBtn;
    Label1: TLabel;
    seIni3: TSpinEdit;
    seFin3: TSpinEdit;
    Label17: TLabel;
    Label18: TLabel;
    meBusca: TMaskEdit;
    meReemp: TMaskEdit;
    Label19: TLabel;
    cbMay: TCheckBox;
    Label20: TLabel;
    procedure bbtnEliminaLClick(Sender: TObject);
    procedure bbtnEliminaCClick(Sender: TObject);
    procedure bbtnInsertaClick(Sender: TObject);
    procedure bbtnUnirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure seIniCExit(Sender: TObject);
    procedure seFinCExit(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure bbtnReemplazaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Drawing: Boolean;
    Origin, MovePt: TPoint;
    xArchivoT : String;
    procedure DrawShape(TopLeft, BottomRight: TPoint; AMode: TPenMode);
  end;

var
  FToolDetalle: TFToolDetalle;

implementation

uses COBDM1, COB001, MsgDlgs;

{$R *.DFM}

procedure TFToolDetalle.bbtnEliminaLClick(Sender: TObject);
begin
  if not Question(Caption, 'Seguro de Eliminar Lineas'+#13+#13+'Desea Continuar') then
    Exit;

  try
    Screen.Cursor:=crHourGlass;
    pgPla.Visible:=True;
    pgPla.Max:=4;
    pgPla.min:=0;
    pgPla.Position:=1;
    xSQL:='DELETE FROM '+xArchivoT+' '
         +'WHERE '+MtxD.Filter+' AND FLAG=''S'' ';
    pgPla.Position:=pgPla.Position+1;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    pgPla.Position:=pgPla.Position+1;
    DM1.cdsQry.Execute;
    pgPla.Position:=pgPla.Position+1;
  Except
    Screen.Cursor:=crDefault;
    pgPla.Visible:=False;
    ShowMessage(' Error al Eliminar');
    Exit;
  End;

  MtxD.RefreshFilter;
  pgPla.Position:=pgPla.Position+1;
  pgPla.Visible:=False;
  Screen.Cursor:=crDefault;
  ShowMessage( 'Lineas Eliminadas');
end;

procedure TFToolDetalle.bbtnEliminaCClick(Sender: TObject);
begin
  if not Question(Caption, 'Seguro de Eliminar Columna'+#13+#13+'Desea Continuar') then
    Exit;
  try
    Screen.Cursor:=crHourGlass;
    pgPla.Visible:=True;
    pgPla.Max:=4;
    pgPla.min:=0;
    pgPla.Position:=1;

    xSQL:='UPDATE '+xArchivoT+' SET LINEA2=LINEA '
         +'WHERE '+MtxD.FMant.SQL_WHERE;
         //+'WHERE '+MtxD.Filter;
    DM1.cdsQry.Close;
    pgPla.Position:=pgPla.Position+1;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;

    xSQL:='UPDATE '+xArchivoT+' SET LINEA=SUBSTR(LINEA, 1, '+IntToStr(seIniC.Value-1)+')||'
         +'SUBSTR(LINEA, '+IntToStr(seFinC.Value+1) +', '
         + IntToStr(DM1.cdsEjecuta.FieldByName('LINEA').Size)+' ) '
         +'WHERE '+MtxD.FMant.SQL_WHERE;
    DM1.cdsQry.Close;
    pgPla.Position:=pgPla.Position+1;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;
    pgPla.Position:=pgPla.Position+1;
  except
    Screen.Cursor:=crDefault;
    pgPla.Visible:=False;
    ShowMessage(' Error ');
    Exit;
  end;

  MtxD.RefreshFilter;
  pgPla.Position:=pgPla.Position+1;
  pgPla.Visible:=False;
  Screen.Cursor:=crDefault;
  ShowMessage( 'Lineas Eliminadas');
end;

procedure TFToolDetalle.bbtnInsertaClick(Sender: TObject);
var
  xSQL : String;
begin
  if not Question(Caption, 'Seguro de Insertar Texto') then
    Exit;

  try
    Screen.Cursor:=crHourGlass;
    pgPla.Visible:=True;
    pgPla.Max:=4;
    pgPla.min:=0;
    pgPla.Position:=1;

    xSQL:='UPDATE '+xArchivoT+' SET LINEA2=LINEA '
         +'WHERE '+MtxD.FMant.SQL_WHERE;
         //+'WHERE '+MtxD.Filter;
    DM1.cdsQry.Close;
    pgPla.Position:=pgPla.Position+1;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;

    xSQL:='UPDATE '+xArchivoT+' SET LINEA=SUBSTR(LINEA, 1, '+IntToStr(seIniC4.Value-1)+')||'''
         + me1.text +'''||Trim(SUBSTR(LINEA, '+IntToStr(seIniC4.Value) +', '
         + IntToStr(DM1.cdsEjecuta.FieldByName('LINEA').Size)+' )) '
         +'WHERE '+MtxD.FMant.SQL_WHERE;
         //+'WHERE '+MtxD.Filter;

    DM1.cdsQry.Close;
    pgPla.Position:=pgPla.Position+1;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;
    pgPla.Position:=pgPla.Position+1;
  except
    Screen.Cursor:=crDefault;
    pgPla.Visible:=False;
    ShowMessage(' Error ');
    Exit;
  end;

  MtxD.RefreshFilter;
  pgPla.Position:=pgPla.Position+1;
  pgPla.Visible:=False;
  Screen.Cursor:=crDefault;
  ShowMessage( 'Columna Actualizada');
end;

procedure TFToolDetalle.bbtnUnirClick(Sender: TObject);
var
  xSQL, xLen1, xLen2 : String;
begin
   if not Question(Caption, 'Seguro de Unir Texto') then
    Exit;
   try
   Screen.Cursor:=crHourGlass;
   pgPla.Visible:=True;
   pgPla.Max:=6;
   pgPla.min:=0;
   pgPla.Position:=1;

   xLen1:=IntToStr( seFinC2.Value - seIniC2.Value + 1 );
   xLen2:=IntToStr( seFinC3.Value - seIniC3.Value + 1 );
   pgPla.Position:=pgPla.Position+1;

   xSQL:='UPDATE '+xArchivoT+' SET LINEA2=LINEA '
        +'WHERE '+MtxD.FMant.SQL_WHERE;
        //+'WHERE '+MtxD.Filter;
   DM1.cdsQry.Close;
   pgPla.Position:=pgPla.Position+1;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   xSQL:='UPDATE '+xArchivoT+' SET LINEA='
        +  'SUBSTR(LINEA, 1, '+IntToStr(seIniC2.Value-1)+')||'
        +  'SUBSTR( '
        +  'TRIM(SUBSTR( LINEA, '+IntToStr(seIniC2.Value) +', '+xLen1+' ))||'' ''||'
        +  'TRIM(SUBSTR( LINEA, '+IntToStr(seIniC3.Value)+', '+xLen2+' ))||'
        +  '''                                                                                '', '
        +  ' 1, ' + xlen1 + '+' + xLen2 +' ) '
        +  '||SUBSTR(LINEA, '+IntToStr(seFinC3.Value+1) +', '
        +  IntToStr(DM1.cdsEjecuta.FieldByName('LINEA').Size)+' ) '
        +'WHERE '+MtxD.FMant.SQL_WHERE;
        //+'WHERE '+MtxD.Filter;

   DM1.cdsQry.Close;
   pgPla.Position:=pgPla.Position+1;
   DM1.cdsQry.DataRequest(xSQL);
   pgPla.Position:=pgPla.Position+1;
   DM1.cdsQry.Execute;
   pgPla.Position:=pgPla.Position+1;
   except
      Screen.Cursor:=crDefault;
      pgPla.Visible:=False;
      ShowMessage(' Error ');
      Exit;
   end;

   MtxD.RefreshFilter;
   pgPla.Position:=pgPla.Position+1;
   pgPla.Visible:=False;
   Screen.Cursor:=crDefault;
   ShowMessage( 'Columna Actualizada');
end;

procedure TFToolDetalle.BitBtn2Click(Sender: TObject);
var
   xSQL : String;
begin
  Screen.Cursor:=crHourGlass;
  pgPla.Visible:=True;
  pgPla.Max:=4;
  pgPla.min:=0;
  pgPla.Position:=1;

  xSQL:='UPDATE '+xArchivoT+' SET FLAG=NULL '
       +'WHERE '+MtxD.Filter;
  pgPla.Position:=pgPla.Position+1;
  DM1.cdsQry.Close;
  pgPla.Position:=pgPla.Position+1;
  DM1.cdsQry.DataRequest(xSQL);
  try
  DM1.cdsQry.Execute;
  pgPla.Position:=pgPla.Position+1;
  except
     Screen.Cursor:=crDefault;
     pgPla.Visible:=False;
     ShowMessage(' Error ');
     Exit;
  end;

  MtxD.RefreshFilter;
  pgPla.Position:=pgPla.Position+1;
  pgPla.Visible:=False;
  Screen.Cursor:=crDefault;

  ShowMessage( 'Lineas Des-Marcadas');
end;

procedure TFToolDetalle.BitBtn3Click(Sender: TObject);
var
  xSQL : String;
begin
  Screen.Cursor:=crHourGlass;
  pgPla.Visible:=True;
  pgPla.Max:=4;
  pgPla.min:=0;
  pgPla.Position:=1;

  xSQL:='UPDATE '+xArchivoT+' SET FLAG=''S'' '
       +'WHERE '+MtxD.Filter+' AND '
       +'ITEM>='+IntToStr( seIni.Value )+' AND ITEM<='+IntToStr( seFin.Value );

  pgPla.Position:=pgPla.Position+1;
  DM1.cdsQry.Close;
  pgPla.Position:=pgPla.Position+1;
  DM1.cdsQry.DataRequest(xSQL);
  try
  DM1.cdsQry.Execute;
  pgPla.Position:=pgPla.Position+1;
  except
     Screen.Cursor:=crDefault;
     pgPla.Visible:=False;
     ShowMessage(' Error ');
     Exit;
  end;

  MtxD.RefreshFilter;
  pgPla.Position:=pgPla.Position+1;
  pgPla.Visible:=False;
  Screen.Cursor:=crDefault;
  ShowMessage( 'Lineas Des-Marcadas');
end;

procedure TFToolDetalle.BitBtn4Click(Sender: TObject);
var
   cdsTemp : TwwClientDataSet;
   xSQL    : String;
begin
   Screen.Cursor:=crHourGlass;
   pgPla.Visible:=True;
   pgPla.Max:=4;
   pgPla.min:=0;
   pgPla.Position:=1;

   cdsTemp:=TwwClientDataSet.Create(nil);
   cdsTemp.CloneCursor(dm1.cdsEjecuta, False);

   cdsTemp.Filtered:=False;
   cdsTemp.Filter  :='';
   cdsTemp.Filter  :='FLAG=''S''';
   cdsTemp.Filtered:=True;

   while not cdsTemp.Eof do
   begin
      xSQL:='UPDATE '+xArchivoT+' SET FLAG=''S'' '
           +'WHERE '+mtxD.Filter+' AND '
           +'NVL( TRIM( SUBSTR( LINEA , 3, 60 ) ), '' '' )='
           +'NVL( '''+Trim( Copy( cdsTemp.FieldByname('LINEA').AsString,3,60) )+''','' '' )';
           //+'COALESCE( RTRIM( SUBSTR( LINEA , 3, 60 ) ), '' '' )='
           //+'COALESCE( '''+TrimRight( Copy( cdsTemp.FieldByname('LINEA').AsString,3,60) )+''','' '' )';

      DM1.cdsQry.Close;
      pgPla.Position:=pgPla.Position+1;
      DM1.cdsQry.DataRequest(xSQL);
      pgPla.Position:=pgPla.Position+1;

      try
         DM1.cdsQry.Execute;
         pgPla.Position:=pgPla.Position+1;
      except
         Screen.Cursor:=crDefault;
         pgPla.Visible:=False;
         ShowMessage(' Error ');
         Exit;
      end;
      cdsTemp.Next;
   end;

   MtxD.RefreshFilter;
   pgPla.Position:=pgPla.Position+1;
   pgPla.Visible:=False;
   Screen.Cursor:=crDefault;
   ShowMessage( 'Lineas Iguales Marcadas');

   Exit;

/////////////////

   xSQL:='UPDATE '+xArchivoT+' SET FLAG=''S'' '
        +'WHERE '+mtxD.Filter+' and '
        +'NVL( TRIM( SUBSTR( LINEA , 2, 60 ) ), '' '' )='
        +'NVL( '''+Trim( Copy(DM1.cdsEjecuta.FieldByname('LINEA').AsString,2,60) )+''','' '' )';

   DM1.cdsQry.Close;
   pgPla.Position:=pgPla.Position+1;
   DM1.cdsQry.DataRequest(xSQL);
   pgPla.Position:=pgPla.Position+1;

   try
      DM1.cdsQry.Execute;
      pgPla.Position:=pgPla.Position+1;
   except
      Screen.Cursor:=crDefault;
      pgPla.Visible:=False;
      ShowMessage(' Error ');
      Exit;
   end;

   MtxD.RefreshFilter;
   pgPla.Position:=pgPla.Position+1;
   pgPla.Visible:=False;
   Screen.Cursor:=crDefault;
   ShowMessage( 'Lineas Iguales Marcadas');

end;

procedure TFToolDetalle.seIniCExit(Sender: TObject);
begin
 If Length(Trim(seIniC.Text))=0 Then seIniC.Text:='0';
end;

procedure TFToolDetalle.seFinCExit(Sender: TObject);
begin
 If Length(Trim(seFinC.Text))=0 Then seFinC.Text:='0';
end;

procedure TFToolDetalle.DrawShape(TopLeft, BottomRight: TPoint; AMode: TPenMode);
Begin
  with Image1.Canvas do
  begin
    Pen.Mode := AMode;
    Image1.Canvas.MoveTo(TopLeft.X, TopLeft.Y);
    Image1.Canvas.LineTo(BottomRight.X, BottomRight.Y);
  end;
end;

procedure TFToolDetalle.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Drawing := True;
  Image1.Canvas.MoveTo(X, Y);
  Origin := Point(X, Y);
  MovePt := Origin;
end;

procedure TFToolDetalle.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if Drawing then
  begin
    DrawShape(Origin, MovePt, pmNotXor);
    MovePt := Point(X, Y);
    DrawShape(Origin, MovePt, pmNotXor);
  end;
end;

procedure TFToolDetalle.Image1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Drawing then
  begin
    DrawShape(Origin, Point(X, Y), pmCopy);
    Drawing := False;
  end;
end;

procedure TFToolDetalle.BitBtn1Click(Sender: TObject);
begin
	//if MessageDlg('Des-Hacer Ultimo Proceso', mtconfirmation,[mbYes,MbNo],0)=mrNo then Exit;
  if not Question(Caption, 'Des-Hacer Ultimo Proceso') then
  	Exit;

  try
  	Screen.Cursor:=crHourGlass;
    xSQL:='UPDATE '+xArchivoT+' SET LINEA=LINEA2 '
         +'WHERE '+MtxD.FMant.SQL_WHERE+' AND LINEA2 IS NOT NULL';
         //+'Where '+MtxD.Filter;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;
  except
  	Screen.Cursor:=crDefault;
    ShowMessage( 'Error : No se puedo Ejecutar Des-Hacer' );
    Exit;
  end;
  MtxD.RefreshFilter;
  Screen.Cursor:=crDefault;
  ShowMessage( 'Columna Actualizada');
end;

procedure TFToolDetalle.BitBtn5Click(Sender: TObject);
var
   xSQL, xWhere : String;
   xLen : Integer;
begin
   if not Question(Caption, '¿ Esta Seguro de Marcar Todo ?') then
      Exit;

   Screen.Cursor:=crHourGlass;

   xWhere:='';

   xSQL:=MtxD.fmant.SQL;

   xLen:=Length( xSQL );

   if Pos( 'ORDER BY', UpperCase( xSQL ) )>0 then
      xLen:=Pos( 'ORDER BY', UpperCase( xSQL ) )-Pos( 'WHERE', UpperCase( xSQL ) );

   xWhere:=Copy( xSQL, Pos( 'WHERE', UpperCase( xSQL ) ), xLen );

   xSQL:='UPDATE '+xArchivoT+' SET FLAG=''S'' '+xWhere;

   DM1.cdsQry.Close;
   pgPla.Position:=pgPla.Position+1;
   DM1.cdsQry.DataRequest(xSQL);
   pgPla.Position:=pgPla.Position+1;

   try
      DM1.cdsQry.Execute;
      pgPla.Position:=pgPla.Position+1;
   except
      Screen.Cursor:=crDefault;
      pgPla.Visible:=False;
      ShowMessage(' Error ');
      Exit;
   end;

   MtxD.RefreshFilter;
   pgPla.Position:=pgPla.Position+1;
   pgPla.Visible:=False;
   Screen.Cursor:=crDefault;

   ShowMessage('Marcados todos los Registros');

end;

procedure TFToolDetalle.bbtnReemplazaClick(Sender: TObject);
var
  xSQL : String;
begin
  if not Question(Caption, 'Seguro de Insertar Texto') then
    Exit;

  try
    Screen.Cursor:=crHourGlass;
    pgPla.Visible:=True;
    pgPla.Max:=4;
    pgPla.min:=0;
    pgPla.Position:=1;

    xSQL:='UPDATE '+xArchivoT+' SET LINEA2=LINEA '
         +'WHERE '+MtxD.FMant.SQL_WHERE;
         //+'WHERE '+MtxD.Filter;
    DM1.cdsQry.Close;
    pgPla.Position:=pgPla.Position+1;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;

    if meBusca.Text<>'' then begin
       xSQL:='UPDATE '+xArchivoT+' '
            +'SET LINEA=SUBSTR( LINEA, 1, '+IntToStr(seIni3.Value-1)+' ) || '
            +          'REPLACE( SUBSTR( LINEA, '+IntToStr(seIni3.Value-1)+', '
            +                                     IntToStr(seFin3.Value-seIni3.Value+1)+'), '
            +                    ''''+meBusca.Text+''', '''+meReemp.Text+''' ) || '
            +          'SUBSTR( LINEA, '+IntToStr(seFin3.Value+1)+' ) '
            +'WHERE '+MtxD.FMant.SQL_WHERE;
            //+'WHERE '+MtxD.Filter;

       DM1.cdsQry.Close;
       pgPla.Position:=pgPla.Position+1;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Execute;
    end;

    if cbMay.Checked then begin
       xSQL:='UPDATE '+xArchivoT+' '
            +'SET LINEA=SUBSTR( LINEA, 1, '+IntToStr(seIni3.Value-1)+' ) || '
            //+          'UPPER( SUBSTR( LINEA, '+IntToStr(seIni3.Value-1)+', '
            +          'UPPER( SUBSTR( LINEA, '+IntToStr(seIni3.Value)+', '
            +                                     IntToStr(seFin3.Value-seIni3.Value+1)+') ) || '
            +          'SUBSTR( LINEA, '+IntToStr(seFin3.Value+1)+' ) '
            +'WHERE '+MtxD.FMant.SQL_WHERE;
            //+'WHERE '+MtxD.Filter;

       DM1.cdsQry.Close;
       pgPla.Position:=pgPla.Position+1;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Execute;
    end;

    pgPla.Position:=pgPla.Position+1;
  except
    Screen.Cursor:=crDefault;
    pgPla.Visible:=False;
    ShowMessage(' Error ');
    Exit;
  end;

  MtxD.RefreshFilter;
  pgPla.Position:=pgPla.Position+1;
  pgPla.Visible:=False;
  Screen.Cursor:=crDefault;
  ShowMessage( 'Columna Actualizada');
end;

end.


