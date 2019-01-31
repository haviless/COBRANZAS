unit CRE943;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, wwdblook, Mask, wwdbedit, Buttons, Grids,
  Wwdbigrd, Wwdbgrid;

type
  TfDatosSocEco = class(TForm)
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DbLEstCiv: TwwDBLookupCombo;
    Panel7: TPanel;
    edtEstCiv: TEdit;
    Label1: TLabel;
    dblGradIns: TwwDBLookupCombo;
    Panel1: TPanel;
    EdtGraInst: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeIngreso: TwwDBEdit;
    dbeIngresoNeto: TwwDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    dblEstViv: TwwDBLookupCombo;
    Panel2: TPanel;
    EdtConViv: TEdit;
    Label7: TLabel;
    rdbProp: TRadioGroup;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    rdgNegocio: TRadioGroup;
    rdgVehiculo: TRadioGroup;
    dbeTipNeg: TwwDBEdit;
    dbeTipVei: TwwDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    dbeAnoVei: TwwDBEdit;
    dblParent: TwwDBLookupCombo;
    Panel3: TPanel;
    EdtCargaDes: TEdit;
    Label16: TLabel;
    dbeNroHijos: TwwDBEdit;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    procedure DbLEstCivChange(Sender: TObject);
    procedure dblGradInsChange(Sender: TObject);
    procedure dblEstVivChange(Sender: TObject);
    procedure rdbPropClick(Sender: TObject);
    procedure rdgNegocioClick(Sender: TObject);
    procedure rdgVehiculoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblParentChange(Sender: TObject);
    procedure dbeNroHijosKeyPress(Sender: TObject; var Key: Char);
    procedure dbeAnoVeiKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
    procedure dbeIngresoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeIngresoNetoKeyPress(Sender: TObject; var Key: Char);
    procedure BitGrabarClick(Sender: TObject);
  private
    { Private declarations }
    function Items(xAsoid:String):String;
  public
    { Public declarations }
  end;

var
  fDatosSocEco: TfDatosSocEco;

implementation

uses COBDM1, COB901;

{$R *.dfm}

procedure TfDatosSocEco.DbLEstCivChange(Sender: TObject);
begin
  If DM1.cdsEstCiv.Locate('ESTCIVID',DbLEstCiv.Text,[]) then
  Begin
    edtEstCiv.Text := DM1.cdsEstCiv.FieldByName('ESTCIVDES').asstring;
  End
  Else
  Begin
    if Length(DbLEstCiv.Text) <> 2 then
    Begin
      Beep;
      edtEstCiv.Text  :='';
    End;
  End;
end;

procedure TfDatosSocEco.dblGradInsChange(Sender: TObject);
begin
   If DM1.cdsGradoI.Locate('GRAINSID',dblGradIns.Text,[]) then
      Begin
    //  Irc
    //  EdtGraInst.Text := DM1.cdsUse.FieldByName('GRAINSABR').asstring;
        EdtGraInst.Text := DM1.cdsGradoI.FieldByName('GRAINSABR').asstring;

      End
   Else
      Begin
        if Length(DbLEstCiv.Text) <> 2 then
           Begin
              Beep;
              EdtGraInst.Text  :='';
           End;
      End

end;

procedure TfDatosSocEco.dblEstVivChange(Sender: TObject);
begin
   If DM1.cdsCViv.Locate('TIPVIVID',dblEstViv.Text,[]) then
      Begin
      //Irc
      //  EdtConViv.Text := DM1.cdsUPago.FieldByName('TIPVIVABR').asstring;
          EdtConViv.Text := DM1.cdsCViv.FieldByName('TIPVIVABR').asstring;

      End
   Else
      Begin
        if Length(dblEstViv.Text) <> 2 then
           Begin
              Beep;
              EdtConViv.Text  :='';
           End;
      End

end;

procedure TfDatosSocEco.rdbPropClick(Sender: TObject);
begin
Case rdbProp.ItemIndex Of
    0:Begin
      End;
    1:Begin
      End;
    2:Begin
      End;
End;


end;

procedure TfDatosSocEco.rdgNegocioClick(Sender: TObject);
begin
Case rdgNegocio.ItemIndex Of
    0:Begin
         dbeTipNeg.Enabled := False;
      End;
    1:Begin
         dbeTipNeg.Enabled := True;  dbeTipNeg.SetFocus;
      End;
End;


end;

procedure TfDatosSocEco.rdgVehiculoClick(Sender: TObject);
begin
Case rdgVehiculo.ItemIndex Of
    0:Begin
         dbeTipVei.Enabled:=False; dbeAnoVei.Enabled:=False;
      End;
    1:Begin
         dbeTipVei.Enabled:=True; dbeAnoVei.Enabled := True; dbeTipVei.SetFocus;
      End;
End;

end;

procedure TfDatosSocEco.FormActivate(Sender: TObject);
Var xSQL :String;
begin
// Irc
   xSQL := 'SELECT * FROM APO206 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSQL);
   DM1.cdsDSocioE.Open;
   rdgVehiculo.ItemIndex:=0; rdgNegocio.ItemIndex:=0;
end;

procedure TfDatosSocEco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfDatosSocEco.dblParentChange(Sender: TObject);
begin
   If DM1.cdsTVia.Locate('PARENID',dblParent.Text,[]) then
      Begin
        EdtCargaDes.Text := DM1.cdsTVia.FieldByName('PARENABR').asstring;
      End
   Else
      Begin
        if Length(dblParent.Text) <> 2 then
           Begin
              Beep;
              EdtCargaDes.Text  :='';
           End;
      End




end;

procedure TfDatosSocEco.dbeNroHijosKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDatosSocEco.dbeAnoVeiKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDatosSocEco.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfDatosSocEco.dbeIngresoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDatosSocEco.dbeIngresoNetoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDatosSocEco.BitGrabarClick(Sender: TObject);
var xSQL,xTipProId,xItem:String;
begin

If Length(Trim(edtEstCiv.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar El Estado Civil ', mtError,[mbOk],0);
      Exit;
   End;

If Length(Trim(dblGradIns.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar El Grado De Instrucción ', mtError,[mbOk],0);
      Exit;
   End;

If Length(Trim(dblEstViv.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar La Condición De La Vivienda ', mtError,[mbOk],0);
      Exit;
   End;

If Length(Trim(dblParent.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar La Carga Familiar ', mtError,[mbOk],0);
      Exit;
   End;

If Length(Trim(dbeIngreso.Text))=0 Then
   Begin
      MessageDlg(' Debe Ingresar El Ingreso Total ', mtError,[mbOk],0);
      Exit;
   End;

If Length(Trim(dbeIngresoNeto.Text))=0 Then
   Begin
      MessageDlg(' Debe Ingresar El Ingreso Neto ', mtError,[mbOk],0);
      Exit;
   End;



xTipProId:='';
Case rdbProp.ItemIndex Of  0:xTipProId:='01';  1:xTipProId:='02';   2:xTipProId:='03'; End;
    xItem:=Items(DM1.cdsAso.fieldbyname('ASOID').AsString);
    xSQL:='INSERT INTO APO206(ITEM,ASOID,ASOCODMOD,ESTCIVID,GRAINSTID,AINGFAM,AINGMAG,CONVIVID,TIPPROID,INMUEBLE,VEHICULO,CRGFAMID,NROHIJOS,FREG,HREG) '+
          'VALUES ('+QuotedStr(xItem)+','+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+','+QuotedStr(DM1.cdsAso.fieldbyname('ASOCODMOD').AsString)+','+QuotedStr(DbLEstCiv.Text)+' '+
          ','+QuotedStr(dblGradIns.Text)+','+FloatToStr(DM1.Valores(dbeIngreso.Text))+','+FloatToStr(DM1.Valores(dbeIngresoNeto.Text))+','+QuotedStr(dblEstViv.Text)+' '+
          ','+QuotedStr(xTipProId)+','+QuotedStr(Trim(dbeTipNeg.Text))+','+QuotedStr(Trim(dbeTipVei.Text)+' / '+Trim(dbeAnoVei.Text))+','+QuotedStr(dblParent.Text)+','+QuotedStr(dbeNroHijos.Text)+','+QuotedStr(DateToStr(DM1.FechaSys))+',SYSDATE)';

    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    MessageDlg(' <<< Se Grabo Con Exito >>> ', mtInformation,[mbOk],0);
    Close;


end;

function TfDatosSocEco.Items(xAsoId: String): String;
var xSQL,tItem:String;
begin
    xSQL:='SELECT MAX(ITEM) ITEM FROM APO206 WHERE ASOID='+QuotedStr(xAsoId);
    DM1.cdsTZona.Close; DM1.cdsTZona.DataRequest(xSQL); DM1.cdsTZona.Open;
    If DM1.cdsTZona.FieldByName('ITEM').AsString<>'' Then
       Begin
          Result:=Format('%.2d',[DM1.cdsTZona.FieldByName('ITEM').AsInteger + 1]);
       End
    Else
       Result:='01';
end;

end.
