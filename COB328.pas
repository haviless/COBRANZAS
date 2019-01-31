unit COB328;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB328
// Formulario                    : FAnulaChequeEdit
// Fecha de Creación             : 26/09/2013
// Autor                         : Sistemas
// Objetivo                      : Detalle de Cheques Anulados

// Actualizaciones               :
// HPC_201310_COB    26/09/2013  : Detalle de Cheques Anulados
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201406_COB                : Correción de formato de edición y visualización de los montos por cheques anulados.
// SPP_201405_COB                : Se realiza el pase a producción a partir del HPC_201406_COB.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, wwdbedit, fcButton, fcImgBtn,
  fcShapeBtn, wwdbdatetimepicker, DBCtrls, Buttons, wwdblook, DB;

type
  TFAnulaChequeEdit = class(TForm)
    Panel1: TPanel;
    pnlE1: TPanel;
    pnlE2: TPanel;
    Panel4: TPanel;
    wwDBEdit1: TwwDBEdit;
    dbeChqNum: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    gbE3: TGroupBox;
    dbeNumChe1: TwwDBEdit;
    dbeNumOpe1: TwwDBEdit;
    dbeMonChe1: TwwDBEdit;
    Label1: TLabel;
    dbeMonTot: TwwDBEdit;
    dbeNumMem: TwwDBEdit;
    dtpFecCon: TwwDBDateTimePicker;
    dbeNumOfi: TwwDBEdit;
    dtpFecOfi: TwwDBDateTimePicker;
    cbE1: TCheckBox;
    cbE3: TCheckBox;
    gbE4: TGroupBox;
    dbeNumChe2: TwwDBEdit;
    dbeNumOpe2: TwwDBEdit;
    dbeMonChe2: TwwDBEdit;
    gbE5: TGroupBox;
    dbeNumChe3: TwwDBEdit;
    dbeNumOpe3: TwwDBEdit;
    dbeMonChe3: TwwDBEdit;
    gbE6: TGroupBox;
    dbeNumChe4: TwwDBEdit;
    dbeNumOpe4: TwwDBEdit;
    dbeMonChe4: TwwDBEdit;
    cbE4: TCheckBox;
    cbE5: TCheckBox;
    cbE6: TCheckBox;
    cbE2: TCheckBox;
    dtpFecRec: TwwDBDateTimePicker;
    dbeFecChe1: TwwDBDateTimePicker;
    dbeFecChe2: TwwDBDateTimePicker;
    dbeFecChe3: TwwDBDateTimePicker;
    dbeFecChe4: TwwDBDateTimePicker;
    pnl1: TPanel;
    bbtnG1: TfcShapeBtn;
    bbtnC1: TfcShapeBtn;
    pnl2: TPanel;
    bbtnG2: TfcShapeBtn;
    bbtnC2: TfcShapeBtn;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    bbtnG3: TfcShapeBtn;
    bbtnC3: TfcShapeBtn;
    bbtnG4: TfcShapeBtn;
    bbtnC4: TfcShapeBtn;
    bbtnG5: TfcShapeBtn;
    bbtnC5: TfcShapeBtn;
    bbtnG6: TfcShapeBtn;
    bbtnC6: TfcShapeBtn;
    Panel2: TPanel;
    BtnCerrar: TBitBtn;
    dblcObs1: TwwDBLookupCombo;
    dblcObs2: TwwDBLookupCombo;
    dblcObs3: TwwDBLookupCombo;
    dblcObs4: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    bbtnRegula: TBitBtn;
    bdeTotCheq: TwwDBEdit;	  // SPP_201405_COB
    procedure cbE1Click(Sender: TObject);
    procedure bbtnC1Click(Sender: TObject);
    procedure bbtnG1Click(Sender: TObject);
    procedure cbE2Click(Sender: TObject);
    procedure bbtnG2Click(Sender: TObject);
    procedure bbtnC2Click(Sender: TObject);
    procedure cbE3Click(Sender: TObject);
    procedure cbE4Click(Sender: TObject);
    procedure cbE5Click(Sender: TObject);
    procedure cbE6Click(Sender: TObject);
    procedure bbtnG3Click(Sender: TObject);
    procedure bbtnC3Click(Sender: TObject);
    procedure bbtnG4Click(Sender: TObject);
    procedure bbtnG5Click(Sender: TObject);
    procedure bbtnG6Click(Sender: TObject);
    procedure bbtnC4Click(Sender: TObject);
    procedure bbtnC5Click(Sender: TObject);
    procedure bbtnC6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCerrarClick(Sender: TObject);
    procedure bbtnRegulaClick(Sender: TObject);
  private
    { Private declarations }
    procedure FiltrarRegistro;
    procedure LimpiaFechas;
    procedure LeerCampoMemo( sTexto : String; sNum : String );
    procedure EditaRegistro;
    procedure RefrescaData;
    procedure FiltraEstados;
    procedure SumaCheques;
  public
    { Public declarations }
  end;

var
  FAnulaChequeEdit: TFAnulaChequeEdit;

implementation

uses COBDM1, MsgDlgs;

{$R *.dfm}

procedure TFAnulaChequeEdit.cbE1Click(Sender: TObject);
begin
   if not cbE1.Checked then exit;
   cbE1.Visible :=False;
   pnlE1.Enabled:=True;
   pnl1.Visible :=True;
end;

procedure TFAnulaChequeEdit.bbtnC1Click(Sender: TObject);
begin
   pnlE1.Enabled:=False;
   pnl1.Visible :=False;
   cbE1.Visible:=True;
   cbE1.Checked:=False;

   RefrescaData;
end;

procedure TFAnulaChequeEdit.bbtnG1Click(Sender: TObject);
var
   xSQL : String;
begin
   If trim(dbeNumMem.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Memorandum!!', mtError, [mbOk], 0);
      Exit;
   End;
   If dtpFecCon.Date=0 Then
   Begin
      MessageDlg('Debe ingresar la fecha del Memorandum!!', mtError, [mbOk], 0);
      Exit;
   End;
   If dtpFecRec.Date=0 Then
   Begin
      MessageDlg('Debe ingresar la fecha de Recepción del Memorandum!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Question(Caption, 'Esta Seguro de Grabar'#13 + #13 + 'Desea Continuar') Then
   Begin
       xSQL:='update cob_che_anu '
            +   'set feccon='''   +dtpFecCon.Text +''', '
            +      ' numcon='''   +dbeNumMem.Text +''', '
            +      ' fecrec='''   +dtpFecRec.Text +''', '
            +      ' usuregcon='''+DM1.wUsuario   +''', '
            +      ' fecregcon=sysdate '
            + 'where numreg = '+TRIM(DM1.cdsAcuerdos.FieldByName('NUMREG').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

       pnlE1.Enabled:=False;
       pnl1.Visible :=False;
       cbE1.Visible:=True;
       cbE1.Checked:=False;
       ShowMessage('Ok');

       EditaRegistro;
   end;
end;

procedure TFAnulaChequeEdit.cbE2Click(Sender: TObject);
begin
   if not cbE2.Checked then exit;
   cbE1.Visible:=False;
   cbE2.Visible:=False;
   pnlE2.Enabled:=True;
   pnl2.Visible :=True;
end;

procedure TFAnulaChequeEdit.bbtnG2Click(Sender: TObject);
var
   xSQL : String;
begin
   If trim(dbeNumOfi.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Oficio!!', mtError, [mbOk], 0);
      Exit;
   End;
   If dtpFecOfi.Date=0 Then
   Begin
      MessageDlg('Debe ingresar la fecha del Oficio!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Question(Caption, 'Esta Seguro de Grabar'#13 + #13 + 'Desea Continuar') Then
   Begin
       xSQL:='update cob_che_anu '
            +   'set fecofi='''   +dtpFecOfi.Text +''', '
            +      ' numofi='''   +dbeNumOfi.Text +''', '
            +      ' usuregofi='''+DM1.wUsuario   +''', '
            +      ' fecregofi=sysdate '
            + 'where numreg = '+TRIM(DM1.cdsAcuerdos.FieldByName('NUMREG').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       ShowMessage('Ok');
       pnlE2.Enabled:=False;
       pnl2.Visible :=False;
       cbE2.Visible:=True;
       cbE2.Checked:=False;

       EditaRegistro;
  end;     
end;

procedure TFAnulaChequeEdit.bbtnC2Click(Sender: TObject);
begin
   pnlE2.Enabled:=False;
   pnl1.Visible :=False;
   cbE2.Visible:=True;
   cbE2.Checked:=False;

   RefrescaData;
end;

procedure TFAnulaChequeEdit.cbE3Click(Sender: TObject);
begin
   if not cbE3.Checked then exit;
   cbE3.Visible:=False;
   gbE3.Enabled:=True;
   pnl3.Visible :=True;
end;

procedure TFAnulaChequeEdit.cbE4Click(Sender: TObject);
begin
   if not cbE4.Checked then exit;
   if trim(DM1.cdsUtilidades.FieldByName('numche1').AsString)='' then
   begin
      Information(Caption, 'Tiene que registrar primero el Cheque 1');
      cbE4.Checked:=False;
      Exit;
   end;

   cbE4.Visible:=False;
   gbE4.Enabled:=True;
   pnl4.Visible :=True;
end;

procedure TFAnulaChequeEdit.cbE5Click(Sender: TObject);
begin
   if not cbE5.Checked then exit;
   if trim(DM1.cdsUtilidades.FieldByName('numche2').AsString)='' then
   begin
      Information(Caption, 'Tiene que registrar primero el Cheque 2');
      cbE5.Checked:=False;
      Exit;
   end;

   cbE5.Visible:=False;
   gbE5.Enabled:=True;
   pnl5.Visible :=True;
end;

procedure TFAnulaChequeEdit.cbE6Click(Sender: TObject);
begin
   if not cbE6.Checked then exit;
   if trim(DM1.cdsUtilidades.FieldByName('numche3').AsString)='' then
   begin
      Information(Caption, 'Tiene que registrar primero el Cheque 3');
      cbE6.Checked:=False;
      Exit;
   end;

   cbE6.Visible:=False;
   gbE6.Enabled:=True;
   pnl6.Visible :=True;
end;

procedure TFAnulaChequeEdit.bbtnG3Click(Sender: TObject);
var
   sCheque : String;
   xSQL : String;
begin
   If trim(dbeNumChe1.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Cheque!!', mtError, [mbOk], 0);
      Exit;
   End;
   If dbeFecChe1.Date=0 Then
   Begin
      MessageDlg('Debe ingresar la fecha del Cheque!!', mtError, [mbOk], 0);
      Exit;
   End;
   If trim(dbeNumOpe1.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Operación!!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.Valores(dbeMonChe1.Text) <= 0 Then
   Begin
      MessageDlg('El monto del cheque debe ser Mayor a Cero (0) !!', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.Valores(dbeMonChe1.Text) > DM1.Valores(dbeMonTot.Text) Then
   Begin
      MessageDlg('La suma de los importes de los cheques reprogramados, no puede ser mayor al Importe del Cheque Anulado !!', mtError, [mbOk], 0);
      Exit;
   End;

   If trim(dblcObs1.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el observacion!!', mtError, [mbOk], 0);
      Exit;
   End;


   If Question(Caption, 'Esta Seguro de Grabar'#13 + #13 + 'Desea Continuar') Then
   Begin
     sCheque:=Trim(dbeNumChe1.Text)+'||'+Trim(dbeFecChe1.Text)+'||'+Trim(dbeNumOpe1.Text)+'||'
             +stringReplace(Trim(dbeMonChe1.Text),',','',[rfReplaceAll])+'||'+Trim(dblcObs1.Text)+'||';
     xSQL:='update cob_che_anu '
          +   'set numcheuno='''+sCheque     +''', '
          +      ' usureguno='''+DM1.wUsuario+''', '
          +      ' fecreguno=sysdate, '
          +      ' estreg = ''P'' '
          + 'where numreg = '+TRIM(DM1.cdsAcuerdos.FieldByName('NUMREG').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     gbE3.Enabled:=False;
     pnl3.Visible :=False;
     cbE3.Visible:=True;
     cbE3.Checked:=False;

     SumaCheques;
     EditaRegistro;
   end;
end;

procedure TFAnulaChequeEdit.SumaCheques;
begin
   DM1.cdsUtilidades.Edit;
   DM1.cdsUtilidades.FieldByName('TOTAL').AsFloat:=DM1.Valores(dbeMonChe1.Text)
                                                  +DM1.Valores(dbeMonChe2.Text)
                                                  +DM1.Valores(dbeMonChe3.Text)
                                                  +DM1.Valores(dbeMonChe4.Text);
   DM1.cdsUtilidades.Post;

   bbtnRegula.Visible:=False;
   If DM1.Valores(dbeMonChe1.Text)+DM1.Valores(dbeMonChe2.Text)+DM1.Valores(dbeMonChe3.Text)+DM1.Valores(dbeMonChe4.Text) = DM1.Valores(dbeMonTot.Text) Then
   Begin
      if not ( DM1.cdsAcuerdos.FieldByName('estreg').AsString='S') then
         bbtnRegula.Visible:=True;
   End;

   // Inicio: SPP_201405_COB
   bdeTotCheq.Text:=DM1.FormatoNumeros(bdeTotCheq.Text);
   dbeMonChe1.Text:= DM1.FormatoNumeros(dbeMonChe1.Text);
   dbeMonChe2.Text:= DM1.FormatoNumeros(dbeMonChe2.Text);
   dbeMonChe3.Text:= DM1.FormatoNumeros(dbeMonChe3.Text);
   dbeMonChe4.Text:= DM1.FormatoNumeros(dbeMonChe4.Text);
   // Fin: SPP_201405_COB
end;


procedure TFAnulaChequeEdit.bbtnC3Click(Sender: TObject);
begin
   gbE3.Enabled:=False;
   pnl3.Visible :=False;
   cbE3.Visible:=True;
   cbE3.Checked:=False;

   RefrescaData;
end;

procedure TFAnulaChequeEdit.bbtnG4Click(Sender: TObject);
var
   sCheque : String;
   xSQL : String;
begin
   If trim(dbeNumChe2.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Cheque!!', mtError, [mbOk], 0);
      Exit;
   End;
   If dbeFecChe2.Date=0 Then
   Begin
      MessageDlg('Debe ingresar la fecha del Cheque!!', mtError, [mbOk], 0);
      Exit;
   End;
   If trim(dbeNumOpe2.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Operación!!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.Valores(dbeMonChe2.Text) <= 0 Then
   Begin
      MessageDlg('El monto del cheque debe ser Mayor a Cero (0) !!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.Valores(dbeMonChe1.Text)+DM1.Valores(dbeMonChe2.Text) > DM1.Valores(dbeMonTot.Text) Then
   Begin
      MessageDlg('La suma de los importes de los cheques reprogramados, no puede ser mayor al Importe del Cheque Anulado !!', mtError, [mbOk], 0);
      Exit;
   End;


   If trim(dblcObs2.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el observacion!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Question(Caption, 'Esta Seguro de Grabar'#13 + #13 + 'Desea Continuar') Then
   Begin
     sCheque:=trim(dbeNumChe2.Text)+'||'+trim(dbeFecChe2.Text)+'||'+trim(dbeNumOpe2.Text)
             +'||'+stringReplace(trim(dbeMonChe2.Text),',','',[rfReplaceAll])+'||'+dblcObs2.Text+'||';
     xSQL:='update cob_che_anu '
          +   'set numchedos='''+sCheque     +''', '
          +      ' usuregdos='''+DM1.wUsuario+''', '
          +      ' fecregdos=sysdate, '
          +      ' estreg = ''P'' '
          + 'where numreg = '+TRIM(DM1.cdsAcuerdos.FieldByName('NUMREG').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     gbE4.Enabled:=False;
     pnl4.Visible :=False;
     cbE4.Visible:=True;
     cbE4.Checked:=False;

     SumaCheques;
     EditaRegistro;
   end;
end;

procedure TFAnulaChequeEdit.bbtnG5Click(Sender: TObject);
var
   sCheque : String;
   xSQL : String;
begin
   If trim(dbeNumChe3.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Cheque!!', mtError, [mbOk], 0);
      Exit;
   End;
   If dbeFecChe3.Date=0 Then
   Begin
      MessageDlg('Debe ingresar la fecha del Cheque!!', mtError, [mbOk], 0);
      Exit;
   End;
   If trim(dbeNumOpe3.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Operación!!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.Valores(dbeMonChe3.Text) <= 0 Then
   Begin
      MessageDlg('El monto del cheque debe ser Mayor a Cero (0) !!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.Valores(dbeMonChe1.Text)+DM1.Valores(dbeMonChe2.Text)+DM1.Valores(dbeMonChe3.Text) > DM1.Valores(dbeMonTot.Text) Then
   Begin
      MessageDlg('La suma de los importes de los cheques reprogramados, no puede ser mayor al Importe del Cheque Anulado !!', mtError, [mbOk], 0);
      Exit;
   End;
   If trim(dblcObs3.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el observacion!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Question(Caption, 'Esta Seguro de Grabar'#13 + #13 + 'Desea Continuar') Then
   Begin
     sCheque:=Trim(dbeNumChe3.Text)+'||'+Trim(dbeFecChe3.Text)+'||'+Trim(dbeNumOpe3.Text)
             +'||'+stringReplace(Trim(dbeMonChe3.Text),',','',[rfReplaceAll])+'||'+Trim(dblcObs3.Text)+'||';
     xSQL:='update cob_che_anu '
          +   'set numchetres='''+sCheque     +''', '
          +      ' usuregtres='''+DM1.wUsuario+''', '
          +      ' fecregtres=sysdate, '
          +      ' estreg = ''P'' '
          + 'where numreg = '+TRIM(DM1.cdsAcuerdos.FieldByName('NUMREG').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     gbE5.Enabled:=False;
     pnl5.Visible :=False;
     cbE5.Visible:=True;
     cbE5.Checked:=False;

     SumaCheques;
     EditaRegistro;
   end;
end;

procedure TFAnulaChequeEdit.bbtnG6Click(Sender: TObject);
var
   sCheque : String;
   xSQL : String;
begin
   If trim(dbeNumChe4.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Cheque!!', mtError, [mbOk], 0);
      Exit;
   End;
   If dbeFecChe4.Date=0 Then
   Begin
      MessageDlg('Debe ingresar la fecha del Cheque!!', mtError, [mbOk], 0);
      Exit;
   End;
   If trim(dbeNumOpe4.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el número de Operación!!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.Valores(dbeMonChe4.Text) <= 0 Then
   Begin
      MessageDlg('El monto del cheque debe ser Mayor a Cero (0) !!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.Valores(dbeMonChe1.Text)+DM1.Valores(dbeMonChe2.Text)+DM1.Valores(dbeMonChe3.Text)+DM1.Valores(dbeMonChe4.Text) > DM1.Valores(dbeMonTot.Text) Then
   Begin
      MessageDlg('La suma de los importes de los cheques reprogramados, no puede ser mayor al Importe del Cheque Anulado !!', mtError, [mbOk], 0);
      Exit;
   End;
   If trim(dblcObs4.Text)='' Then
   Begin
      MessageDlg('Debe ingresar el observacion!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Question(Caption, 'Esta Seguro de Grabar'#13 + #13 + 'Desea Continuar') Then
   Begin
     sCheque:=Trim(dbeNumChe4.Text)+'||'+Trim(dbeFecChe4.Text)+'||'+Trim(dbeNumOpe4.Text)
             +'||'+stringReplace(trim(dbeMonChe4.Text),',','',[rfReplaceAll])+'||'+Trim(dblcObs4.Text)+'||';
     xSQL:='update cob_che_anu '
          +   'set numchecuatro='''+sCheque     +''', '
          +      ' usuregcuatro='''+DM1.wUsuario+''', '
          +      ' fecregcuatro=sysdate, '
          +      ' estreg = ''P'' '
          + 'where numreg = '+TRIM(DM1.cdsAcuerdos.FieldByName('NUMREG').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     gbE6.Enabled:=False;
     pnl6.Visible :=False;
     cbE6.Visible:=True;
     cbE6.Checked:=False;

     SumaCheques;
     EditaRegistro;
   end;
end;

procedure TFAnulaChequeEdit.bbtnC4Click(Sender: TObject);
begin
   gbE4.Enabled:=False;
   pnl4.Visible :=False;
   cbE4.Visible:=True;
   cbE4.Checked:=False;

   RefrescaData;
end;

procedure TFAnulaChequeEdit.bbtnC5Click(Sender: TObject);
begin
   gbE5.Enabled:=False;
   pnl5.Visible :=False;
   cbE5.Visible:=True;
   cbE5.Checked:=False;

   RefrescaData;
end;

procedure TFAnulaChequeEdit.bbtnC6Click(Sender: TObject);
begin
   gbE6.Enabled:=False;
   pnl6.Visible :=False;
   cbE6.Visible:=True;
   cbE6.Checked:=False;

   RefrescaData;
end;

procedure TFAnulaChequeEdit.FormActivate(Sender: TObject);
begin
  FiltrarRegistro;

  FiltraEstados;

  LimpiaFechas;

  LeerCampoMemo( trim(DM1.cdsUtilidades.FieldByName('numcheuno').AsString), '1' );
  LeerCampoMemo( trim(DM1.cdsUtilidades.FieldByName('numchedos').AsString), '2' );
  LeerCampoMemo( trim(DM1.cdsUtilidades.FieldByName('numchetres').AsString), '3' );
  LeerCampoMemo( trim(DM1.cdsUtilidades.FieldByName('numchecuatro').AsString), '4' );

  SumaCheques;

  EditaRegistro;
end;


procedure TFAnulaChequeEdit.FiltraEstados;
var
  xSQL : String;
begin
  xSQL:='select ''TOTAL'' NOMBRE from dual '
       +'union all '
       +'select ''PARCIAL'' NOMBRE from dual';
  DM1.cdsQry11.Close;
  DM1.cdsQry11.DataRequest( xSQL );
  DM1.cdsQry11.Open;

  DM1.cdsQry10.Close;
  DM1.cdsQry10.DataRequest( xSQL );
  DM1.cdsQry10.Open;

  DM1.cdsQry26.Close;
  DM1.cdsQry26.DataRequest( xSQL );
  DM1.cdsQry26.Open;

  DM1.cdsQry30.Close;
  DM1.cdsQry30.DataRequest( xSQL );
  DM1.cdsQry30.Open;
end;


procedure TFAnulaChequeEdit.RefrescaData;
begin
  FiltrarRegistro;

  LimpiaFechas;

  LeerCampoMemo( DM1.cdsUtilidades.FieldByName('numcheuno').AsString, '1' );
  LeerCampoMemo( DM1.cdsUtilidades.FieldByName('numchedos').AsString, '2' );
  LeerCampoMemo( DM1.cdsUtilidades.FieldByName('numchetres').AsString, '3' );
  LeerCampoMemo( DM1.cdsUtilidades.FieldByName('numchecuatro').AsString, '4' );

  EditaRegistro;
end;


procedure TFAnulaChequeEdit.EditaRegistro;
begin
   if ( DM1.cdsAcuerdos.FieldByName('estreg').AsString='S') then
   begin
      cbE1.Visible:=False;
      cbE2.Visible:=False;
      cbE3.Visible:=False;
      cbE4.Visible:=False;
      cbE5.Visible:=False;
      cbE6.Visible:=False;
      Exit;
   end;


   if trim(dbeNumMem.Text)='' then
   begin
      cbE1.Visible:=True;
      cbE2.Visible:=False;
      cbE3.Visible:=False;
      cbE4.Visible:=False;
      cbE5.Visible:=False;
      cbE6.Visible:=False;
   end
   else
   begin
      if trim(dbeNumOfi.Text)='' then
      begin
         cbE1.Visible:=True;
         cbE2.Visible:=True;
         cbE3.Visible:=False;
         cbE4.Visible:=False;
         cbE5.Visible:=False;
         cbE6.Visible:=False;
      end
      else
      begin
         if trim(dbeNumChe1.Text)='' then
         begin
            cbE1.Visible:=False;
            cbE2.Visible:=False;
            cbE3.Visible:=True;
            cbE4.Visible:=False;
            cbE5.Visible:=False;
            cbE6.Visible:=False;
         end
         else
         begin
            if trim(dbeNumChe2.Text)='' then
            begin
               cbE1.Visible:=False;
               cbE2.Visible:=False;
               cbE3.Visible:=False;
               cbE4.Visible:=True;
               cbE5.Visible:=False;
               cbE6.Visible:=False;
            end
            else
            begin
                if trim(dbeNumChe3.Text)='' then
                begin
                   cbE1.Visible:=False;
                   cbE2.Visible:=False;
                   cbE3.Visible:=False;
                   cbE4.Visible:=False;
                   cbE5.Visible:=True;
                   cbE6.Visible:=False;
                end
                else
                begin
                    if trim(dbeNumChe4.Text)='' then
                    begin
                       cbE1.Visible:=False;
                       cbE2.Visible:=False;
                       cbE3.Visible:=False;
                       cbE4.Visible:=False;
                       cbE5.Visible:=False;
                       cbE6.Visible:=True;
                    end
                end;
            end;
         end;
      end;
   end;
end;


procedure TFAnulaChequeEdit.FiltrarRegistro;
var
  xSQL : String;
begin
  xSQL:='select numreg, perori, fecche, numche, monche, numope, monope, uproid, upagoid, useid, '
       +   'asotipid, rcobid, detrcobid, usuregche, fecregche, feccon, numcon, fecrec, usuregcon, '
       +   'fecregcon, fecofi, numofi, usuregofi, fecregofi, numcheuno, usureguno, fecreguno, '
       +   'numchedos, usuregdos, fecregdos, numchetres, usuregtres, fecregtres, numchecuatro, '
       +   'usuregcuatro, fecregcuatro, estreg, '
       +   ''''+'               '+''' numche1, '
       +   'to_date(sysdate)          fecche1, '
       +   ''''+'               '+''' numope1, '
       +   '0.00                      monche1, '
       +   'CAST( '' '' AS varchar2(150) ) observ1, '
       +   ''''+'               '+''' numche2, '
       +   'to_date(sysdate)          fecche2, '
       +   ''''+'               '+''' numope2, '
       +   '0.00                      monche2, '
       +   'CAST( '' '' AS varchar2(150) ) observ2, '
       +   ''''+'               '+''' numche3, '
       +   'to_date(sysdate)          fecche3, '
       +   ''''+'               '+''' numope3, '
       +   '0.00                      monche3, '
       +   'CAST( '' '' AS varchar2(150) ) observ3, '
       +   ''''+'               '+''' numche4, '
       +   'to_date(sysdate)          fecche4, '
       +   ''''+'               '+''' numope4, '
       +   '0.00                      monche4, '
       +   'CAST( '' '' AS varchar2(150) ) observ4,  '
       +   '0.00                      TOTAL '
       +'from cob_che_anu '
       +'where numreg='+TRIM(DM1.cdsAcuerdos.FieldByName('NUMREG').AsString);
  DM1.cdsUtilidades.Close;
  DM1.cdsUtilidades.DataRequest( xSQL );
  DM1.cdsUtilidades.Open;

// Inicio: SPP_201405_COB
{
  TNumericField(DM1.cdsUtilidades.FieldByName('TOTAL')).EditFormat   := '#######0.#0';
  TNumericField(DM1.cdsUtilidades.FieldByName('TOTAL')).DisplayFormat:= '##,###,##0.#0';

  TNumericField(DM1.cdsUtilidades.FieldByName('monche4')).EditFormat   := '#######0.#0';
  TNumericField(DM1.cdsUtilidades.FieldByName('monche4')).DisplayFormat:= '##,###,##0.#0';

  TNumericField(DM1.cdsUtilidades.FieldByName('monche3')).EditFormat   := '#######0.#0';
  TNumericField(DM1.cdsUtilidades.FieldByName('monche3')).DisplayFormat:= '##,###,##0.#0';

  TNumericField(DM1.cdsUtilidades.FieldByName('monche2')).EditFormat   := '########.#0';
  TNumericField(DM1.cdsUtilidades.FieldByName('monche2')).DisplayFormat:= '###,##0.##';

  TNumericField(DM1.cdsUtilidades.FieldByName('monche1')).EditFormat   := '#######0.##';
  TNumericField(DM1.cdsUtilidades.FieldByName('monche1')).DisplayFormat:= '##,###,##0.##';
  }
// Fin: SPP_201405_COB 
end;



procedure TFAnulaChequeEdit.LimpiaFechas;
begin
  DM1.cdsUtilidades.Edit;
  DM1.cdsUtilidades.FieldByName('fecche1').Clear;
  DM1.cdsUtilidades.FieldByName('fecche2').Clear;
  DM1.cdsUtilidades.FieldByName('fecche3').Clear;
  DM1.cdsUtilidades.FieldByName('fecche4').Clear;
  DM1.cdsUtilidades.Post;
end;


procedure TFAnulaChequeEdit.LeerCampoMemo( sTexto : String; sNum : String );
var
  nPos : Integer;
  sNumChe, sFecChe, sNumOpe, sMonChe, sObserv : String;
begin
  nPos:=Pos('||', sTexto);
  if length(sTexto)>0 then
  begin
     nPos:=Pos('||', sTexto);
     if nPos>0 then
     begin
        sNumChe:=Copy(sTexto,1,Pos('||', sTexto)-1);
        sTexto :=Copy(sTexto,Pos('||', sTexto)+2,200);
     end;

     nPos:=Pos('||', sTexto);
     if nPos>0 then
     begin
        sFecChe:=Copy(sTexto,1,Pos('||', sTexto)-1);
        sTexto :=Copy(sTexto,Pos('||', sTexto)+2,200);
     end;

     nPos:=Pos('||', sTexto);
     if nPos>0 then
     begin
        sNumOpe:=Copy(sTexto,1,Pos('||', sTexto)-1);
        sTexto :=Copy(sTexto,Pos('||', sTexto)+2,200);
     end;

     nPos:=Pos('||', sTexto);
     if nPos>0 then
     begin
        sMonChe:=stringReplace(Copy(sTexto,1,Pos('||', sTexto)-1),',','',[rfReplaceAll]);
        sTexto :=Copy(sTexto,Pos('||', sTexto)+2,200);
     end;

     nPos:=Pos('||', sTexto);
     if nPos>0 then
     begin
        sObserv:=Copy(sTexto,1,Pos('||', sTexto)-1);
        sTexto :=Copy(sTexto,Pos('||', sTexto)+2,200);
     end;

     DM1.cdsUtilidades.Edit;
     DM1.cdsUtilidades.FieldByName('numche'+sNum).AsString:=sNumChe;
     DM1.cdsUtilidades.FieldByName('fecche'+sNum).AsString:=sFecChe;
     DM1.cdsUtilidades.FieldByName('numope'+sNum).AsString:=sNumOpe;
     DM1.cdsUtilidades.FieldByName('monche'+sNum).AsString:=sMonChe;
     DM1.cdsUtilidades.FieldByName('observ'+sNum).AsString:=sObserv;
     DM1.cdsUtilidades.Post;
  end;
end;


procedure TFAnulaChequeEdit.BtnCerrarClick(Sender: TObject);
begin
  Close;
end;


procedure TFAnulaChequeEdit.bbtnRegulaClick(Sender: TObject);
var
  xSQL : String;
begin
  If DM1.Valores(dbeMonChe1.Text)+DM1.Valores(dbeMonChe2.Text)+DM1.Valores(dbeMonChe3.Text)+DM1.Valores(dbeMonChe4.Text) <> DM1.Valores(dbeMonTot.Text) Then
  Begin
      MessageDlg('La suma de los importes de los cheques reprogramados, debe ser igual al Importe del Cheque Anulado !!', mtError, [mbOk], 0);
      Exit;
  End;

  if Question(Caption, 'Esta Seguro de Grabar'#13 + #13 + 'Desea Continuar') Then
  begin
     xSQL:='update cob_che_anu '
          +   'set estreg = ''S'' '
          + 'where numreg = '+TRIM(DM1.cdsAcuerdos.FieldByName('NUMREG').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  end;
end;

end.

