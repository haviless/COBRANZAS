unit CRE936;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : CRE936
// Formulario           : fNueAsociado
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Reasiganción de Asociados
// Actualizaciones      :
// HPC_201308_COB       : 17/07/2013 - Fecha de Ultima Actualización de Padrón
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, ExtCtrls, wwdblook, Buttons,
  wwdbdatetimepicker;

type
  TfNueAsociado = class(TForm)
    grpNueAso: TGroupBox;
    Panel1: TPanel;
    EdtAsoId: TwwDBEdit;
    Label2: TLabel;
    Pan01: TPanel;
    Label3: TLabel;
    DbLUniPro: TwwDBLookupCombo;
    Panel9: TPanel;
    dbeUproDes: TwwDBEdit;
    Pan02: TPanel;
    Label4: TLabel;
    DbLUniPag: TwwDBLookupCombo;
    Panel2: TPanel;
    dbeUpagDes: TwwDBEdit;
    Label5: TLabel;
    DbLUses: TwwDBLookupCombo;
    Panel3: TPanel;
    dbeUses: TwwDBEdit;
    Pan03: TPanel;
    Label1: TLabel;
    EdtCodMod: TwwDBEdit;
    EdtApePat: TwwDBEdit;
    Label6: TLabel;
    EdtApeMat: TwwDBEdit;
    Label16: TLabel;
    Pan04: TPanel;
    Label24: TLabel;
    EdtAsoNom: TwwDBEdit;
    BitGrabar: TBitBtn;
    BitMasDat: TBitBtn;
    BitSalir: TBitBtn;
    Panel4: TPanel;
    Label7: TLabel;
    dbeAsoTip: TwwDBEdit;
    Panel5: TPanel;
    Label8: TLabel;
    mecargo: TMaskEdit;
    pnlFecha: TPanel;
    lblFecUlt: TLabel;
    lblFecAct: TLabel;
    dtpFecha: TwwDBDateTimePicker;
    dtpFecAct: TwwDBDateTimePicker;
    procedure DbLUniProChange(Sender: TObject);
    procedure dbeUproDesChange(Sender: TObject);
    procedure DbLUniPagChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeUpagDesChange(Sender: TObject);
    procedure DbLUsesChange(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure EdtCodModExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    function AsignaAsoId(xTabla:String):String;
    function AsignaNroAux(xTabla,xAsoCodMod:String):String;
  end;

var
  fNueAsociado: TfNueAsociado;

implementation

uses COBDM1, CRE908, COB902;

{$R *.dfm}

procedure TfNueAsociado.DbLUniProChange(Sender: TObject);
begin
   If DM1.cdsUPro.Locate('UPROID',VarArrayof([DbLUniPro.text]),[]) Then
      Begin
        dbeUproDes.Text := DM1.cdsUPro.FieldByName('UPRONOM').Asstring
      End
   Else
      Begin
        if Length(DbLUniPro.Text) <> 3 then
           Begin
              Beep;
              dbeUproDes.Text  :='';
           End;
      End
end;

procedure TfNueAsociado.dbeUproDesChange(Sender: TObject);
var
   xSQL:String;
begin
   xSQL:='SELECT UPROID,UPAGOID,UPAGONOM '
        +'FROM APO103 '
        +'WHERE UPROID='+QuotedStr(Trim(DbLUniPro.Text));
   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
   DbLUniPag.Enabled := True;
end;

procedure TfNueAsociado.DbLUniPagChange(Sender: TObject);
begin
   If DM1.cdsUPago.Locate('UPAGOID',VarArrayof([DbLUniPag.Text]),[]) Then
      Begin
        dbeUpagDes.Text := DM1.cdsUPago.FieldByName('UPAGONOM').Asstring;
      End
   Else
      Begin
        if Length(DbLUniPag.Text) <> 2 then
           Begin
              Beep;
              dbeUpagDes.Text  :='';
           End;
      End
end;

procedure TfNueAsociado.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
end;

procedure TfNueAsociado.dbeUpagDesChange(Sender: TObject);
var
   xSQL:String;
begin
   xSQL:='SELECT USEID,USENOM '
        +'FROM APO101 '
        +'WHERE UPROID='+quotedstr(trim(DbLUniPro.Text))
        +'  and UPAGOID='+QuotedStr(Trim(DbLUniPag.Text))
        +'  and SUBSTR(USENOM,1,1)<>''X'' ';
   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSQL);
   DM1.cdsUSES.Open;
   DbLUses.Enabled := True;
end;

procedure TfNueAsociado.DbLUsesChange(Sender: TObject);
begin
   If DM1.cdsUseS.Locate('USEID',VarArrayof([DbLUses.Text]),[]) Then
      Begin
        dbeUses.Text := DM1.cdsUseS.FieldByName('USENOM').Asstring;
      End
   Else
      Begin
        if Length(DbLUses.Text) <> 2 then
           Begin
              Beep;
              dbeUses.Text  :='';
           End;
      End
end;

procedure TfNueAsociado.BitSalirClick(Sender: TObject);
begin
   Close;
end;

function TfNueAsociado.AsignaAsoId(xTabla: String): String;
var
   xSQL:String;
begin
   xSQL:='SELECT MAX(ASOID) ASOID FROM '+xTabla;
   DM1.cdsAsoX.Close;
   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   If Length(Trim(DM1.cdsAsoX.FieldByName('ASOID').AsString))=0 Then
      Begin
         Result:='0000000001';
      End
   Else
      Begin
         Result:=Format('%.10d',[DM1.cdsAsoX.FieldByName('ASOID').AsInteger+1]);
      End;
   DM1.cdsAsoX.Close;
end;

procedure TfNueAsociado.EdtCodModExit(Sender: TObject);
begin
   EdtCodMod.Text:=Format('%.10d',[StrToInt(EdtCodMod.Text)]);
end;


function TfNueAsociado.AsignaNroAux(xTabla, xAsoCodMod: String): String;
var
   xSQL:String;
   xNumero:Integer;
begin
   xSQL:='SELECT ASOCODMOD,ASOCODAUX FROM '+xTabla+' WHERE ASOCODMOD='+QuotedStr(xAsoCodMod)+' AND ASOCODAUX IS NOT NULL ORDER BY ASOCODAUX';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      Begin
         DM1.cdsQry.First; xNumero := 0;
         While Not DM1.cdsQry.Eof Do
         Begin
            xNumero := xNumero + 1;
            If xNumero<>DM1.cdsQry.FieldByName('ASOCODAUX').AsInteger Then
               Begin
                  Result:=Format('%.2d',[xNumero]);
                  Exit;
               End;
            DM1.cdsQry.Next;
         End;
         If DM1.cdsQry.Eof Then
            Begin
               Result:=Format('%.2d',[xNumero+1]);
               Exit;
            End;
      End
   Else
      Result := '01';

   DM1.cdsQry.Close;
end;

procedure TfNueAsociado.FormActivate(Sender: TObject);
var
   xSQL : String;
begin
   EdtAsoId.Text:=DM1.cdsAso.fieldbyname('ASOID').AsString;
   DbLUniPro.Text:=DM1.cdsAso.fieldbyname('UPROID').AsString;
   DbLUniPag.Text:=DM1.cdsAso.fieldbyname('UPAGOID').AsString;
   DbLUses.Text:=DM1.cdsAso.fieldbyname('USEID').AsString;
   EdtCodMod.Text:=DM1.cdsAso.fieldbyname('ASOCODMOD').AsString;
   EdtApePat.Text:=DM1.cdsAso.fieldbyname('ASOAPEPAT').AsString;
   EdtApeMat.Text:=DM1.cdsAso.fieldbyname('ASOAPEMAT').AsString;
   EdtAsoNom.Text:=DM1.cdsAso.fieldbyname('ASONOMBRES').AsString;
   mecargo.Text := DM1.cdsAso.FieldByName('CARGO').AsString;

   pnlFecha.Visible:=False;

   //  DADHN2008-0001  /  SAR2008JC-0006  /  09/10/2008
   xSQL:='SELECT ASOID, MAX(FHVERIFICA) FHVERIFICA FROM ASO003 '
        +'WHERE ASOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString))
        + ' AND IDESTADO=''02'' and nvl(REASIGNACION,''N'')=''S'' GROUP BY ASOID' ;
   DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL); DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   begin
      pnlFecha.Visible:=True;
      pnlFecha.Height :=32;
      dtpFecha.Visible:=True;
      dtpFecAct.Visible:=False;
      lblFecUlt.Caption:='Ultima Fecha Reasignación';
      lblFecAct.Caption:='';
      dtpFecha.DateTime:=DM1.cdsQry.FieldByName('FHVERIFICA').AsDateTime;
   end
   else
   begin
      pnlFecha.Visible:=True;
      pnlFecha.Height :=61;
      dtpFecha.Visible:=False;
      lblFecUlt.Caption:='Ultima Fecha Reasignación  :  Sin Fecha';
      lblFecAct.Caption:='Ultima Fecha Actualización';
      dtpFecAct.Visible:=True;
// Inicio: SPP_201310_COB       : 17/07/2013 - Fecha de Ultima Actualización de Padrón
      if DM1.cdsAso.FieldByName('FECACTPAD').AsDateTime<DM1.cdsAso.FieldByName('HREG').AsDateTime then
         dtpFecAct.DateTime:=DM1.cdsAso.FieldByName('HREG').AsDateTime
      else
         dtpFecAct.DateTime:=DM1.cdsAso.FieldByName('FECACTPAD').AsDateTime;
// Fin: SPP_201310_COB       : 17/07/2013 - Fecha de Ultima Actualización de Padrón
   end;

   dbeAsoTip.Text:=DM1.RecuperaDatos('APO107','ASOTIPID',DM1.cdsAso.fieldbyname('ASOTIPID').AsString,'ASOTIPDES');
end;

procedure TfNueAsociado.FormCreate(Sender: TObject);
begin
//  DM1.BlqComponentes(Self);
end;

end.
