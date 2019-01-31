unit COB990;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ToolEdit, CurrEdit, ExtCtrls;

type
  TFfilinfsegcri = class(TForm)
    btnmartod: TBitBtn;
    btncerrar: TBitBtn;
    btnlimpiar: TBitBtn;
    GroupBox1: TGroupBox;
    rgcoleva: TRadioGroup;
    rgcri: TRadioGroup;
    gbmonto: TGroupBox;
    memonto: TCurrencyEdit;
    btnsegcri: TBitBtn;
    procedure btncerrarClick(Sender: TObject);
    procedure btnmartodClick(Sender: TObject);
    procedure btnlimpiarClick(Sender: TObject);
    procedure btnsegcriClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ffilinfsegcri: TFfilinfsegcri;

implementation

uses COBDM1, COB989;

{$R *.dfm}

procedure TFfilinfsegcri.btncerrarClick(Sender: TObject);
begin
  Ffilinfsegcri.Close;
end;

procedure TFfilinfsegcri.btnmartodClick(Sender: TObject);
begin
  Dm1.cdsRegCob.IndexFieldNames := '';
  DM1.cdsRegCob.First;
  While Not DM1.cdsRegCob.Eof Do
  Begin
    DM1.cdsRegCob.Edit;
    DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
    DM1.cdsRegCob.Next;
  End;
end;

procedure TFfilinfsegcri.btnlimpiarClick(Sender: TObject);
begin
  DM1.cdsRegCob.First;
  While Not DM1.cdsRegCob.Eof Do
  Begin
    DM1.cdsRegCob.Edit;
    DM1.cdsRegCob.FieldByName('FLAG').AsString := 'N';
    DM1.cdsRegCob.Next;
  End;
end;

Procedure TFfilinfsegcri.btnsegcriClick(Sender: TObject);
Var xQry:String;
Begin
  Dm1.cdsRegCob.IndexFieldNames := '';
  If rgcoleva.ItemIndex = -1 Then
  Begin
    MessageDlg('Seleccione el tipo de campo', mtInformation,[mbOk],0);
    rgcoleva.SetFocus;
    Exit;
  End;
  If rgcri.ItemIndex = -1 Then
  Begin
    MessageDlg('Seleccione el tipo criterio', mtInformation,[mbOk],0);
    rgcri.SetFocus;
    Exit;
  End;
  If Trim(memonto.Text) = '' Then
  Begin
    MessageDlg('Ingrese un monto', mtInformation,[mbOk],0);
    memonto.SetFocus;
    Exit;
  End;
  {
    (0) MONCUOMASANT  = Saldo de la(s) cuota(s) más antigua(s)
    (1) MONCUOENVPER  = Saldo de la(s) cuota(s) del periodo
    (2) MONCUOENVVEN  = Saldo de la(s) cuota(s) vencida(s)
    (3) MONDEUPER     =  Saldo al periodo de cobranza
    (4) SALMAXCUOVEN  =  Cuota(s) con saldo más alto de la(s) cuota(s) vencida(s)
    (5) MONCUOENV     =  Cuota a enviar
  }
  {
    (0) >
    (1) =
    (2) <
    (3) >=
    (4) <>
    (5) <=
  }
//(0) MONCUOMASANT  = Saldo de la(s) cuota(s) más antigua(s)
  If rgcoleva.ItemIndex = 0 Then
  Begin
    // (0) >
    If rgcri.ItemIndex = 0 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsCurrency > memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (1) =
    If rgcri.ItemIndex = 1 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsCurrency = memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (2) <
    If rgcri.ItemIndex = 2 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsCurrency >= 0) And (DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsCurrency < memonto.Value)  Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (3) >=
    If rgcri.ItemIndex = 3 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsCurrency >= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (4) <>
    If rgcri.ItemIndex = 4 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsCurrency <> memonto.Value) And (DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsCurrency <> 0) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (5) <=
    If rgcri.ItemIndex = 5 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsCurrency >= 0) And (DM1.cdsRegCob.FieldByName('MONCUOMASANT').AsCurrency <= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
  End;
//(1) MONCUOENVPER  = Saldo de la(s) cuota(s) del periodo
  If rgcoleva.ItemIndex = 1 Then
  Begin
    // (0) >
    If rgcri.ItemIndex = 0 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsCurrency > memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (1) =
    If rgcri.ItemIndex = 1 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsCurrency = memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (2) <
    If rgcri.ItemIndex = 2 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsCurrency >= 0) And (DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsCurrency < memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (3) >=
    If rgcri.ItemIndex = 3 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsCurrency >= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (4) <>
    If rgcri.ItemIndex = 4 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsCurrency <> 0) And (DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsCurrency <> memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (5) <=
    If rgcri.ItemIndex = 5 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin

        If (DM1.cdsRegCob.FieldByName('MONCUOENVPER').AsCurrency <= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
  End;
//(2) MONCUOENVVEN  = Saldo de la(s) cuota(s) vencida(s)
  If rgcoleva.ItemIndex = 2 Then
  Begin
    // (0) >
    If rgcri.ItemIndex = 0 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVVEN').AsCurrency > memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (1) =
    If rgcri.ItemIndex = 1 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVVEN').AsCurrency = memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (2) <
    If rgcri.ItemIndex = 2 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVVEN').AsCurrency < memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (3) >=
    If rgcri.ItemIndex = 3 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVVEN').AsCurrency >= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (4) <>
    If rgcri.ItemIndex = 4 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVVEN').AsCurrency <> memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (5) <=
    If rgcri.ItemIndex = 5 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENVVEN').AsCurrency <= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
  End;
//(3) MONDEUPER     =  Saldo al periodo de cobranza
  If rgcoleva.ItemIndex = 3 Then
  Begin
    // (0) >
    If rgcri.ItemIndex = 0 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONDEUPER').AsCurrency > memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (1) =
    If rgcri.ItemIndex = 1 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONDEUPER').AsCurrency = memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (2) <
    If rgcri.ItemIndex = 2 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONDEUPER').AsCurrency < memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (3) >=
    If rgcri.ItemIndex = 3 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONDEUPER').AsCurrency >= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (4) <>
    If rgcri.ItemIndex = 4 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONDEUPER').AsCurrency <> memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (5) <=
    If rgcri.ItemIndex = 5 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONDEUPER').AsCurrency <= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
  End;
//(4) SALMAXCUOVEN  =  Cuota(s) con saldo más alto de la(s) cuota(s) vencida(s)
  If rgcoleva.ItemIndex = 4 Then
  Begin
    // (0) >
    If rgcri.ItemIndex = 0 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('SALMAXCUOVEN').AsCurrency > memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (1) =
    If rgcri.ItemIndex = 1 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('SALMAXCUOVEN').AsCurrency = memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (2) <
    If rgcri.ItemIndex = 2 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('SALMAXCUOVEN').AsCurrency < memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (3) >=
    If rgcri.ItemIndex = 3 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('SALMAXCUOVEN').AsCurrency >= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (4) <>
    If rgcri.ItemIndex = 4 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('SALMAXCUOVEN').AsCurrency <> memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (5) <=
    If rgcri.ItemIndex = 5 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('SALMAXCUOVEN').AsCurrency <= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
  End;
//(5) MONCUOENV     =  Cuota a enviar
  If rgcoleva.ItemIndex = 5 Then
  Begin
    // (0) >
    If rgcri.ItemIndex = 0 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENV').AsCurrency > memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (1) =
    If rgcri.ItemIndex = 1 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENV').AsCurrency = memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (2) <
    If rgcri.ItemIndex = 2 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENV').AsCurrency < memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (3) >=
    If rgcri.ItemIndex = 3 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENV').AsCurrency >= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (4) <>
    If rgcri.ItemIndex = 4 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENV').AsCurrency <> memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
    // (5) <=
    If rgcri.ItemIndex = 5 Then
    Begin
      DM1.cdsRegCob.First;
      While Not DM1.cdsRegCob.Eof Do
      Begin
        If (DM1.cdsRegCob.FieldByName('MONCUOENV').AsCurrency <= memonto.Value) Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('FLAG').AsString := 'S';
        End;
        DM1.cdsRegCob.Next;
      End;
    End;
  End;
End;

procedure TFfilinfsegcri.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 Then
    If (ActiveControl is TCheckBox) then
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End
    Else
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End;
end;


end.
