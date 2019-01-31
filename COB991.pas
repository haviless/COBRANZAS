unit COB991;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient,
  ExtCtrls;

type
  Tfincenvplacon = class(TForm)
    btncerrar: TBitBtn;
    dbginconsistencia: TwwDBGrid;
    btnactualiza: TBitBtn;
    rgtipact: TRadioGroup;
    btnprevio: TBitBtn;
    procedure btncerrarClick(Sender: TObject);
    procedure dbginconsistenciaDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure btnimportaClick(Sender: TObject);
    procedure btnprevioClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnactualizaClick(Sender: TObject);
    procedure rgtipactClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fincenvplacon: Tfincenvplacon;

implementation

uses COBDM1, COB996;

{$R *.dfm}

procedure Tfincenvplacon.btncerrarClick(Sender: TObject);
begin
  fincenvplacon.Close;
end;


procedure Tfincenvplacon.dbginconsistenciaDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  If Field.DisPlayName='Cód.mod.~importado' Then
  Begin
    dbginconsistencia.Canvas.Font.Color := clRed;
    dbginconsistencia.DefaultDrawDataCell(Rect, Field, State);
  End;
  If Field.DisPlayName='Apellidos y nombre(s)~importado' Then
  Begin
    dbginconsistencia.Canvas.Font.Color := clRed;
    dbginconsistencia.DefaultDrawDataCell(Rect, Field, State);
  End;
  If Field.DisPlayName='Cargo~importado' Then
  Begin
    dbginconsistencia.Canvas.Font.Color := clRed;
    dbginconsistencia.DefaultDrawDataCell(Rect, Field, State);
  End;
  If Field.DisPlayName='DNI~importado' Then
  Begin
    dbginconsistencia.Canvas.Font.Color := clRed;
    dbginconsistencia.DefaultDrawDataCell(Rect, Field, State);
  End;
  If Field.DisPlayName='Cuenta~importada' Then
  Begin
    dbginconsistencia.Canvas.Font.Color := clRed;
    dbginconsistencia.DefaultDrawDataCell(Rect, Field, State);
  End;
end;

procedure Tfincenvplacon.btnimportaClick(Sender: TObject);
begin
 If rgtipact.ItemIndex = 0 Then DM1.xtiparc := '0' Else DM1.xtiparc := '1';
 Try
    factinfdisquete := Tfactinfdisquete.create(Self);
    factinfdisquete.ShowModal;
 Finally
    factinfdisquete.Free;
 End;
end;

Procedure Tfincenvplacon.btnprevioClick(Sender: TObject);
Begin
  DM1.cdsinconsistencia.EmptyDataSet;
  If rgtipact.ItemIndex = -1 Then
  Begin
    MessageDlg('Seleccione tipo de actualización', mtConfirmation,[mbOk],0);
    rgtipact.SetFocus;
    Exit;
  End;
  If rgtipact.ItemIndex = 0 Then DM1.xtiparc := '0' Else DM1.xtiparc := '1';
  Try
    factinfdisquete := Tfactinfdisquete.create(Self);
    factinfdisquete.ShowModal;
  Finally
    factinfdisquete.Free;
  End;
  If DM1.cdsinconsistencia.RecordCount > 0 Then btnactualiza.Enabled := True;
End;

procedure Tfincenvplacon.FormActivate(Sender: TObject);
begin
  DM1.cdsinconsistencia.EmptyDataSet;
end;

procedure Tfincenvplacon.btnactualizaClick(Sender: TObject);
Var xSql, xasocodaux:String;
begin
  // Actualización en la tabla APO201
  If MessageDlg('¿ Seguro que desea actualizar los registros ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
  Begin
    Screen.Cursor := crHourGlass;
    If rgtipact.ItemIndex = 0 Then
    Begin
      DM1.cdsinconsistencia.First;
      While Not DM1.cdsinconsistencia.Eof Do
      Begin
        If Trim(DM1.cdsinconsistencia.FieldByName('CARGO_I').AsString) <> '' Then
        Begin

          xSql := 'UPDATE APO201 SET CARGO = '+QuotedStr(DM1.cdsinconsistencia.FieldByName('CARGO_I').AsString)
          +' WHERE ASOID = '+QuotedStr(DM1.cdsinconsistencia.FieldByName('ASOID').AsString);
//          DM1.DCOM1.AppServer.EjecutaSQL(xSql);

          xSql := 'UPDATE COB319 SET CARGO = '+QuotedStr(DM1.cdsinconsistencia.FieldByName('CARGO_I').AsString)
          +' WHERE ASOID = '+QuotedStr(DM1.cdsinconsistencia.FieldByName('ASOID').AsString)
          +' AND COBANO||COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString);
           DM1.DCOM1.AppServer.EjecutaSQL(xSql);

        End;
        DM1.cdsinconsistencia.Next;
      End;
    End
    Else
    Begin
      DM1.cdsinconsistencia.First;
      While Not DM1.cdsinconsistencia.Eof Do
      Begin
        If (Trim(DM1.cdsinconsistencia.FieldByName('ASOCODMOD_I').AsString) <> '') And
           (Trim(DM1.cdsinconsistencia.FieldByName('ASOCODMOD_I').AsString) <> Trim(DM1.cdsinconsistencia.FieldByName('ASOCODMOD').AsString)) Then
        Begin
          xSql := 'SELECT LPAD(MAX(ASOCODAUX)+1,2,''0'') ASOCODAUX FROM APO201 WHERE ASOCODMOD = '+QuotedStr(DM1.cdsinconsistencia.FieldByName('ASOCODMOD_I').AsString);
          DM1.cdsQry.Close;
          DM1.cdsQry.DataRequest(xSql);
          DM1.cdsQry.Open;
          xasocodaux := DM1.cdsQry.FieldByName('ASOCODAUX').AsString;

          xSql := 'UPDATE APO201 SET ASOCODMOD = '+QuotedStr(DM1.cdsinconsistencia.FieldByName('ASOCODMOD_I').AsString)
          +', ASOCODAUX = '+QuotedStr(xasocodaux)
          +' WHERE ASOID = '+QuotedStr(DM1.cdsinconsistencia.FieldByName('ASOID').AsString);
//          DM1.DCOM1.AppServer.EjecutaSQL(xSql);

          xSql := 'UPDATE COB319 SET ASOCODMOD = '+QuotedStr(DM1.cdsinconsistencia.FieldByName('ASOCODMOD_I').AsString)
          +' WHERE ASOID = '+QuotedStr(DM1.cdsinconsistencia.FieldByName('ASOID').AsString)
          +' AND COBANO||COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        End;
        DM1.cdsinconsistencia.Next;
      End;
    End;
    Screen.Cursor := crDefault;
    MessageDlg('Actualización concluida', mtConfirmation,[mbOk],0);
  End;
end;

procedure Tfincenvplacon.rgtipactClick(Sender: TObject);
begin
  DM1.cdsinconsistencia.EmptyDataSet;
end;

end.
