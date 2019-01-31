unit CRE945;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook;

type
  TfEncuesta = class(TForm)
    GroupBox1: TGroupBox;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dblTipMet: TwwDBLookupCombo;
    Panel1: TPanel;
    EdtDesMet: TEdit;
    dblTipJus: TwwDBLookupCombo;
    Panel2: TPanel;
    EdtDesJus: TEdit;
    dblTipSol: TwwDBLookupCombo;
    Panel3: TPanel;
    EdtDesSol: TEdit;
    Edt02: TEdit;
    lbl01: TLabel;
    lbl02: TLabel;
    Edt01: TEdit;
    lbl03: TLabel;
    Edt03: TEdit;
    procedure BitSalirClick(Sender: TObject);
    procedure dblTipMetChange(Sender: TObject);
    procedure dblTipJusChange(Sender: TObject);
    procedure dblTipSolChange(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edt01Exit(Sender: TObject);
    procedure Edt02Exit(Sender: TObject);
    procedure Edt03Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEncuesta: TfEncuesta;

implementation

uses COBDM1;



{$R *.dfm}

procedure TfEncuesta.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfEncuesta.dblTipMetChange(Sender: TObject);
begin
   If DM1.cdsTMoneda.Locate('ID',VarArrayof([dblTipMet.Text]),[]) Then
      Begin
        EdtDesMet.Text  := DM1.cdsTMoneda.fieldbyname('DESCRIPCION').AsString;
        If Trim(dblTipMet.Text)='99' Then
           Begin
              Edt01.Enabled:=True;
              lbl01.Caption:=EdtDesMet.Text;
              Edt01.SetFocus;
           End Else Begin Edt01.Enabled:=False; Edt01.Text:=''; End;
      End
   Else
      Begin
        if Length(dblTipMet.Text) <> 2 then
           Begin
              Beep;
              EdtDesMet.Text  :='';
           End;
      End

end;

procedure TfEncuesta.dblTipJusChange(Sender: TObject);
begin
   If DM1.cdsTPension.Locate('ID',VarArrayof([dblTipJus.Text]),[]) Then
      Begin
        EdtDesJus.Text  := DM1.cdsTPension.fieldbyname('DESCRIPCION').AsString;
        If Trim(dblTipJus.Text)='99' Then
           Begin
              Edt02.Enabled:=True;
              lbl02.Caption:=EdtDesJus.Text;
              Edt02.SetFocus;
           End Else Begin Edt02.Enabled:=False; Edt02.Text:=''; End;
      End
   Else
      Begin
        if Length(dblTipJus.Text) <> 2 then
           Begin
              Beep;
              EdtDesJus.Text  :='';
           End;
      End


end;

procedure TfEncuesta.dblTipSolChange(Sender: TObject);
begin
   If DM1.cdsTransacciones.Locate('ID',VarArrayof([dblTipSol.Text]),[]) Then
      Begin
        EdtDesSol.Text  := DM1.cdsTransacciones.fieldbyname('DESCRIPCION').AsString;
        If Trim(dblTipSol.Text)='99' Then
           Begin
              Edt03.Enabled:=True;
              lbl03.Caption:=EdtDesSol.Text;
              Edt03.SetFocus;
           End Else Begin Edt03.Enabled:=False; Edt03.Text:=''; End;

      End
   Else
      Begin
        if Length(dblTipSol.Text) <> 2 then
           Begin
              Beep;
              EdtDesSol.Text  :='';
           End;
      End



end;

procedure TfEncuesta.BitGrabarClick(Sender: TObject);
var xAsoId,xSQL:String;
    Boton : Integer;
begin
xAsoId  := DM1.cdsAso.fieldbyname('ASOID').AsString;
If Length(Trim(EdtDesMet.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar Un Medio Por El Cual Se Entero De Su Morosidad ', mtError, [mbOk], 0);
      Exit;
   End;

If Length(Trim(EdtDesJus.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar Una Justificación Del Deudor', mtError, [mbOk], 0);
      Exit;
   End;

If Length(Trim(EdtDesSol.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar Una Solución Arribada', mtError, [mbOk], 0);
      Exit;
   End;


If Trim(dblTipMet.Text)='99' Then
   Begin
       If Length(Trim(Edt01.Text))=0 Then
          Begin
             MessageDlg(' Debe Ingresar El Motivo ', mtError, [mbOk], 0);
             Edt01.SetFocus;
             Exit;
          End;
   End;

If Trim(dblTipJus.Text)='99' Then
   Begin
       If Length(Trim(Edt02.Text))=0 Then
          Begin
             MessageDlg(' Debe Ingresar El Motivo ', mtError, [mbOk], 0);
             Edt02.SetFocus;
             Exit;
          End;
   End;

If Trim(dblTipSol.Text)='99' Then
   Begin
       If Length(Trim(Edt03.Text))=0 Then
          Begin
             MessageDlg(' Debe Ingresar El Motivo ', mtError, [mbOk], 0);
             Edt02.SetFocus;
             Exit;
          End;
   End;

                                                                                                                                                               



Boton := Application.MessageBox ('Seguro De Grabar Esta Encuesta ','Creditos',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin
      xSQL:='INSERT INTO COB907(IDMET, OTMET, IDJUS, OTJUS, IDSOL, OTOSOL, ASOID, USUARIO, FREG, HREG, OFDESID) '+
            'VALUES ('+QuotedStr(Trim(dblTipMet.Text))+','+QuotedStr(Copy(Trim(Edt01.Text),1,60))+','+QuotedStr(Trim(dblTipJus.Text))+','+QuotedStr(Copy(Trim(Edt02.Text),1,60))+','+QuotedStr(Trim(dblTipSol.Text))+','+QuotedStr(Copy(Trim(Edt03.Text),1,60))+' '+
            ','+QuotedStr(xAsoId)+','+QuotedStr(DM1.wUsuario)+','+QuotedStr(Datetostr(DM1.FechaSys))+',SYSDATE,'+QuotedStr(DM1.xOfiDes)+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      MessageDlg(' ENCUESTA SE GRABO CON EXITO  ', mtInformation, [mbOk], 0);
      Close;
  End;
end;

procedure TfEncuesta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

procedure TfEncuesta.Edt01Exit(Sender: TObject);
begin
If Length(Trim(Edt01.Text)) > 40 Then
   Begin
      MessageDlg(' El Número Maximo De Caracteres Es 40 ', mtError, [mbOk], 0);
      Edt01.SetFocus;
   End;
end;

procedure TfEncuesta.Edt02Exit(Sender: TObject);
begin
If Length(Trim(Edt02.Text)) > 40 Then
   Begin
      MessageDlg(' El Número Maximo De Caracteres Es 40 ', mtError, [mbOk], 0);
      Edt02.SetFocus;
   End;

end;

procedure TfEncuesta.Edt03Exit(Sender: TObject);
begin
If Length(Trim(Edt03.Text)) > 40 Then
   Begin
       MessageDlg(' El Número Maximo De Caracteres Es 40 ', mtError, [mbOk], 0);
       Edt03.SetFocus;
   End;
end;

end.
