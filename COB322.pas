unit COB322;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB322
// Formulario           : FAcuerdosMant
// Fecha de Creación    : 06/06/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Mantenimiento de Acuerdos de cobranza Adicional por Planilla
//
// Actualizaciones      :
// HPC_201307_COB       : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla - Mantenimiento
// SPP_201309_COB       : Se realiza el pase a producción a partir del HPC_201307_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, wwdbedit, Buttons, Spin,
  wwdbdatetimepicker, wwdblook, db, wwclearbuttongroup, wwradiogroup;

type
  TFAcuerdoMant = class(TForm)
    Panel1: TPanel;
    pnlAcuerdo: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    dbeNombres: TwwDBEdit;
    dbeTipo: TwwDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    dbeDNI: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    btncerrar: TBitBtn;
    Label5: TLabel;
    dbeSalTot: TwwDBEdit;
    Label6: TLabel;
    dbeSalVen: TwwDBEdit;
    Label7: TLabel;
    dbeSalDif: TwwDBEdit;
    Label8: TLabel;
    dbeSalAcu: TwwDBEdit;
    Label9: TLabel;
    dbeSalPen: TwwDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    mObser: TMemo;
    Label16: TLabel;
    Label18: TLabel;
    btnActualizar: TBitBtn;
    Bevel6: TBevel;
    Label19: TLabel;
    dbeAcuerdo: TwwDBEdit;
    Label20: TLabel;
    dbeFecAcu: TwwDBEdit;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    seNumCuo: TSpinEdit;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label15: TLabel;
    dbeTotAcu: TwwDBEdit;
    dblcPeriodo: TwwDBLookupCombo;
    Label24: TLabel;
    Panel6: TPanel;
    Label17: TLabel;
    dbeMonAcu: TwwDBEdit;
    Panel2: TPanel;
    dbeEstado: TwwDBEdit;
    Label25: TLabel;
    BitAnular: TBitBtn;
    Label26: TLabel;
    dbeMonEnv: TwwDBEdit;
    Panel7: TPanel;
    Label22: TLabel;
    dbeCuoPac: TwwDBEdit;
    Label21: TLabel;
    dtpFecIni: TwwDBDateTimePicker;
    Label23: TLabel;
    dtpFecFin: TwwDBDateTimePicker;
    Label27: TLabel;
    rgTipo: TwwRadioGroup;
    procedure btnActualizarClick(Sender: TObject);
    procedure seNumCuoChange(Sender: TObject);
    procedure dblcPeriodoExit(Sender: TObject);
    procedure dblcPeriodoNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure seNumCuoExit(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure BitAnularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sAsoIdAcu : String;
    function GeneraAcuerdo : Boolean;
  end;

var
  FAcuerdoMant: TFAcuerdoMant;

implementation

uses COBDM1;

{$R *.dfm}

function TFAcuerdoMant.GeneraAcuerdo : Boolean;
var
  xSQL : String;
begin
  Result:=False;
  xSQL:='SELECT ASOID, SUM(MONPEN) SALPEN, SUM(MONVEN) SALVEN, SUM(MONDIF) SALDIF, '
       +  'SUM(MONPEN)+SUM(MONVEN)+SUM(MONDIF) SALTOT, SUM(MONVEN)+SUM(MONDIF) SALACU '
       +'FROM ( '
       +    'SELECT ASOID, '
       +      'CASE WHEN CREFVEN<>CREFVENINI THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) ELSE 0 END MONDIF, '
       +      'CASE WHEN CREFVEN=CREFVENINI AND CREFVEN<=TO_DATE(SYSDATE) THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) ELSE 0 END MONVEN, '
       +      'CASE WHEN CREFVEN=CREFVENINI AND CREFVEN>TO_DATE(SYSDATE) THEN (CREAMORT+CREFLAT+MONPACDESGRAV)-CREMTOCOB ELSE CREMTO-CREMTOCOB END MONPEN '
       +    'FROM CRE302 WHERE ASOID='+ QuotedStr(Trim(sAsoIdAcu)) +'  AND  CREESTID IN (''02'',''11'',''27'',''31'')) '
       +'GROUP BY ASOID';
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(xSQL);
   DM1.cdsCuotas.Open;

   if DM1.cdsCuotas.FieldByname('SALACU').AsFloat<=0 then
   begin
      MessageDlg('El Asociado NO tiene Cuotas Vencidas ni Diferidas. '+chr(13)+chr(13)+'No Califica para generar Acuerdo', mtError,[mbOk], 0 );
      Result:=True;
      Exit;
   end;

   xSQL:='Select fecacu, nroacu from cob_acu_cob_pla '
       +' WHERE ASOID = '+ QuotedStr(Trim(sAsoIdAcu)) +' AND ESTVIG IN (''I'', ''P'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>=1 then
   begin
      MessageDlg('El Asociado tiene un acuerdo Vigente. '+chr(13)+chr(13)
                +'Acuerdo:  ' + DM1.cdsQry.FieldByname('NROACU').AsString+chr(13)
                +'Fecha  :  ' + DM1.cdsQry.FieldByname('FECACU').AsString , mtError,[mbOk], 0 );
      Result:=True;
      Exit;
   end;


  xSQL:='SELECT ASOID, CREFVEN, to_char(CREFVEN,''yyyymm'') PERIODO, last_day(sysdate) SALACU '
       +' FROM CRE302 '
       +' WHERE ASOID = '+ QuotedStr(Trim(sAsoIdAcu)) +' AND CREESTID IN (''02'', ''11'', ''27'', ''31'') '
       +  ' and CREFVEN > last_day(sysdate) '
       +' ORDER BY CREFVEN';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

  xSQL:='SELECT 0.00 CUOPAC, 0.00 MONACU, 0.00 MONENV, sysdate FECINIENV, sysdate FECFINENV '
       +' FROM DUAL ';
   DM1.cdsUtilidades.Close;
   DM1.cdsUtilidades.DataRequest(xSQL);
   DM1.cdsUtilidades.Open;

   DM1.cdsUtilidades.Edit;
   DM1.cdsUtilidades.FieldByname('MONACU').AsFloat:=DM1.cdsCuotas.FieldByname('SALACU').AsFloat;
   DM1.cdsUtilidades.Post;
end;

procedure TFAcuerdoMant.btnActualizarClick(Sender: TObject);
var
  xSQL, sAno, sTipo : String;
begin
  if Trim(dblcPeriodo.Text)='' then
  begin
     MessageDlg('Debe ingresar el Periodo de Inicio del Acuerdo !!!', mtError, [mbOk], 0);
     Exit;
  end;

  if rgTipo.ItemIndex<0 then
  begin
     MessageDlg('Debe ingresar el Tipo de Solicitud del Acuerdo !!!', mtError, [mbOk], 0);
     Exit;
  end;

  if Trim(mObser.Text)='' then
  begin
     MessageDlg('Debe ingresar la Observación !!!', mtError, [mbOk], 0);
     Exit;
  end;

  sTipo:='';
  if rgTipo.ItemIndex=0 then sTipo:='T' else sTipo:='C';

  xSQL:='select to_char(sysdate,''yyyy'') ANO from dual';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  sAno:=DM1.cdsQry.FieldByname('ANO').AsString;
  if dbeAcuerdo.Text='' then
  begin
  xSQL:='Insert Into cob_acu_cob_pla( '
       +   'asoid, fecacu, nroacu, saltot, salven, saldif, salacu, salpen, cuoacu, '
       +   'monacu, cuopac, fecinienv, fecfinenv, freg, hreg, usuario, obsacu, estvig, tipsolacu ) '
       +'select '''+sAsoIdAcu+''', to_char(sysdate,''dd/mm/yyyy''), nvl(max(nroacu),'''+sAno+'0000'')+1 nroacu, '
       +   Floattostr(DM1.cdsCuotas.FieldByName('SALTOT').Asfloat)+', '
       +   Floattostr(DM1.cdsCuotas.FieldByName('SALVEN').Asfloat)+', '
       +   Floattostr(DM1.cdsCuotas.FieldByName('SALDIF').Asfloat)+', '
       +   Floattostr(DM1.cdsCuotas.FieldByName('SALACU').Asfloat)+', '
       +   Floattostr(DM1.cdsCuotas.FieldByName('SALPEN').Asfloat)+', '
       +   Inttostr(seNumCuo.Value)+', '
       +   Floattostr(DM1.cdsUtilidades.FieldByName('MONACU').Asfloat)+', '
       +   Floattostr(DM1.cdsUtilidades.FieldByName('CUOPAC').Asfloat)+', '
       +   ''''+dtpFecIni.Text+''', '''+dtpFecFin.Text+''', '
       +   'sysdate, sysdate, '''+DM1.wUsuario+''', '
       +   ''''+Trim(mObser.Text)+''', ''I'', '''+sTipo+''' '
       +'from cob_acu_cob_pla where fecacu>=''01/01/'+sAno+'''';
  end
  else
  begin
  xSQL:='Update cob_acu_cob_pla '
       +   'Set cuoacu = '+Inttostr(seNumCuo.Value)+', '
       +       'monacu = '+floattostr(DM1.Valores( dbeMonAcu.text))+', '
       +       'fecinienv = '+''''+dtpFecIni.Text+''', '
       +       'fecfinenv = '+''''+dtpFecFin.Text+''', '
       +       'freg = sysdate, hreg = sysdate, usuario = '+''''+DM1.wUsuario+''', '
       +       'obsacu = '+''''+Trim(mObser.Text)+''', estvig = ''I'', tipsolacu = '''+sTipo+''' '
       +' where asoid = '''+sAsoIdAcu+''' and nroacu = '+dbeAcuerdo.Text;
  end;
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Execute;

  ShowMessage('Acuerdo Grabado');
  Close;
end;

procedure TFAcuerdoMant.seNumCuoChange(Sender: TObject);
begin
  if seNumCuo.Text='' then Exit;

  if seNumCuo.Value>0 then
  begin
     if dbeAcuerdo.Text='' then
     begin
        if not DM1.cdsUtilidades.Active then Exit;
        DM1.cdsUtilidades.Edit;
        DM1.cdsUtilidades.FieldByname('MONACU').AsFloat:=DM1.FRound( DM1.cdsCuotas.FieldByname('SALACU').AsFloat/seNumCuo.Value,15,2);
        DM1.cdsUtilidades.Post;
     end
     else
     begin
        DM1.cdsAcuerdos.Edit;
        DM1.cdsAcuerdos.FieldByname('MONACU').AsFloat:=DM1.FRound( DM1.cdsAcuerdos.FieldByname('SALACU').AsFloat/seNumCuo.Value,15,2);
        DM1.cdsAcuerdos.FieldByname('MONENV').AsFloat:=DM1.FRound( DM1.cdsAcuerdos.FieldByname('MONACU').AsFloat+DM1.cdsAcuerdos.FieldByname('CUOPAC').AsFloat,15,2);
        DM1.cdsAcuerdos.Post;
     end;
  end;
  if dblcPeriodo.Text<>'' then
     dblcPeriodoExit(Self);
end;

procedure TFAcuerdoMant.dblcPeriodoExit(Sender: TObject);
var
   sSQL : String;
begin
   if dbeAcuerdo.Text='' then
   begin
      DM1.cdsUtilidades.Edit;
      DM1.cdsUtilidades.FieldByname('FECINIENV').AsFloat:=DM1.cdsQry2.FieldByname('CREFVEN').AsDateTime;
      DM1.cdsUtilidades.Post;

      sSQL:='select add_months('''+dtpFecIni.Text+''', '+inttostr(seNumCuo.Value-1)+') FECFIN from dual';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;

      DM1.cdsUtilidades.Edit;
      DM1.cdsUtilidades.FieldByname('FECFINENV').AsFloat:=DM1.cdsQry.FieldByName('FECFIN').AsDateTime;
      DM1.cdsUtilidades.Post;

      // Cuando hay valor
      sSQL:='SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0)) CUOPAC FROM CRE302 '
           +'WHERE ASOID='''+sAsoIdAcu+''' '
           + ' AND CREFVEN='''+dtpFecIni.Text+''' '
           + ' AND CREESTID IN (''02'',''11'',''27'',''31'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;

      if DM1.cdsQry.FieldByname('CUOPAC').AsFloat=0 then
      begin
          // Si la anterior devuleve 0
          sSQL:='SELECT SUM(NVL(CRECUOTA,0)) CUOPAC FROM CRE301 '
               +'WHERE ASOID='''+sAsoIdAcu+''' '
               + ' AND CREESTID IN (''01'',''02'')';
          DM1.cdsQry.Close;
          DM1.cdsQry.DataRequest(sSQL);
          DM1.cdsQry.Open;
      end;
      DM1.cdsUtilidades.Edit;
      DM1.cdsUtilidades.FieldByname('CUOPAC').AsFloat:=DM1.cdsQry.FieldByname('CUOPAC').AsFloat;
      DM1.cdsUtilidades.FieldByname('MONENV').AsFloat:=DM1.FRound( DM1.cdsUtilidades.FieldByname('MONACU').AsFloat+DM1.cdsUtilidades.FieldByname('CUOPAC').AsFloat,15,2);
      DM1.cdsUtilidades.Post;
   end
   else
   begin
      DM1.cdsAcuerdos.Edit;
      DM1.cdsAcuerdos.FieldByname('FECINIENV').AsFloat:=DM1.cdsQry2.FieldByname('CREFVEN').AsDateTime;
      DM1.cdsAcuerdos.Post;

      sSQL:='select add_months('''+dtpFecIni.Text+''', '+inttostr(seNumCuo.Value-1)+') FECFIN from dual';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;

      DM1.cdsAcuerdos.Edit;
      DM1.cdsAcuerdos.FieldByname('FECFINENV').AsFloat:=DM1.cdsQry.FieldByName('FECFIN').AsDateTime;
      DM1.cdsAcuerdos.Post;

      // Cuando hay valor
      sSQL:='SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0)) CUOPAC FROM CRE302 '
           +'WHERE ASOID='''+sAsoIdAcu+''' '
           + ' AND CREFVEN='''+dtpFecIni.Text+''' '
           + ' AND CREESTID IN (''02'',''11'',''27'',''31'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;

      if DM1.cdsQry.FieldByname('CUOPAC').AsFloat=0 then
      begin
          // Si la anterior devuleve 0
          sSQL:='SELECT SUM(NVL(CRECUOTA,0)) CUOPAC FROM CRE301 '
               +'WHERE ASOID='''+sAsoIdAcu+''' '
               + ' AND CREESTID IN (''01'',''02'')';
          DM1.cdsQry.Close;
          DM1.cdsQry.DataRequest(sSQL);
          DM1.cdsQry.Open;
      end;
      DM1.cdsAcuerdos.Edit;
      DM1.cdsAcuerdos.FieldByname('CUOPAC').AsFloat:=DM1.cdsQry.FieldByname('CUOPAC').AsFloat;
      DM1.cdsAcuerdos.Post;
   end;
end;

procedure TFAcuerdoMant.dblcPeriodoNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept:=Lookuptable.locate(TwwDBCustomLookupCombo(Sender).Lookupfield,Newvalue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(sender).dropdown;
end;

procedure TFAcuerdoMant.seNumCuoExit(Sender: TObject);
begin
  if seNumCuo.Text='' then seNumCuo.Value:=1;
end;

procedure TFAcuerdoMant.btncerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TFAcuerdoMant.BitAnularClick(Sender: TObject);
var
  xSQL : String;
begin
  if MessageDlg('Esta Seguro de Anular el Acuerdo', mtconfirmation,[mbYes,MbNo],0)=mrYes then
  begin
    xSQL:='Update cob_acu_cob_pla '
         +   'Set freg = sysdate, hreg = sysdate, '
         +       'usuario = '+''''+DM1.wUsuario+''', estvig = ''A'' '
         +' where asoid = '''+sAsoIdAcu+''' AND nroacu = '+dbeAcuerdo.Text;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Execute;
    ShowMessage('Acuerdo Anulado');
    Close;
  end;

end;

end.
