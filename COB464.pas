unit COB464;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB464
// Formulario           : FCastigadosFSC
// Fecha de Creación    : 18/05/2013
// Autor                : Hugo Noriega.
// Objetivo             : Asociados castigados por el FSC
//
// Actualizaciones      :
// HPC_201306_COB       : Asociados castigados por el FSC
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, db;

type
  TFCastigadosFSC = class(TForm)
    dbgFSC: TwwDBGrid;
    Panel2: TPanel;
    btncerrar: TBitBtn;
    btnCargo: TBitBtn;
    BitBtn1: TBitBtn;
    pnlapenom: TPanel;
    Label3: TLabel;
    pnlasoapenomdni: TPanel;
    edtBuscarDet: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure dbgFSCDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCargoClick(Sender: TObject);
    procedure edtBuscarDetChange(Sender: TObject);
    procedure edtBuscarDetClick(Sender: TObject);
    procedure edtBuscarDetKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    nAPORTE : Double;
  public
    { Public declarations }
  end;

var
  FCastigadosFSC: TFCastigadosFSC;

implementation

uses COBDM1, COB463, COB989;

{$R *.dfm}

procedure TFCastigadosFSC.FormActivate(Sender: TObject);
var
   sSQL, sAno, sMes : String;
begin

  sAno:=Ftrainfpro.sAno;
  sMes:=Ftrainfpro.sMes;

  // Valor de Aporte
   sSQL:='SELECT nvl(APOVALOR,0) APOVALOR FROM APO117 '
       +'WHERE APOANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
       + ' AND APOMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;
  nAPORTE:=DM1.cdsQry.FieldByName('APOVALOR').AsFloat;

  // Código de Padron
  sSQL:='SELECT max(CODPAD) CODPAD FROM ASO_PAD_DET_HIS';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;

  sSql:='SELECT ''N'' FLAG, A.ASOID, A.ASODNI, A.ASOCODMOD, A.CARGO, A.ASOCODPAGO, A.ASOAPENOM, A.ASOTIPID, NVL(AUTDESAPO, ''X'') AUTDESAPO,  '
      + '    (NVL(B.IMP_APL_FSC, 0) - NVL(B.IMP_COB_FSC, 0)) SALACT, B.CRECUOENV, '
      + '     NVL(B.AUTDESGES, ''N'') AUTDESGES, B.USUDESGES, B.FECHORDESGES, '
      + '     HABER, DESCUENTO, LIQUIDO, '
      + '     NVL(RESULTADO,''No está en Resultados'') RESULTADO, MONENV, MONCOB, SALDIS, '
      + '     D.CODPAD, D.CARGO, D.PLANILLA, D.USEID, D.USENOM, D.SITUACION, '
      + '     NVL(HABER, 0) - nvl(DESCUENTO,0) - (NVL(HABER,0)*0.25) + NVL(MONCOB,0) DISPONIBLE_PADRON '
      + '  FROM APO201 A, '
      + '       (SELECT ASOID, IMP_APL_FSC, IMP_COB_FSC, CRECUOENV, AUTDESGES, USUDESGES, FECHORDESGES '
      + '          FROM COB_FSC_DEUDA_FSC_CAB '
      + '         WHERE ID_EST_FSC  IN (''02'',''27'') '
      + '           AND (NVL(IMP_APL_FSC, 0) - NVL(IMP_COB_FSC, 0)) > 0) B, '
      + '   ASO_PAD_DET_HIS D, '
      + '  ( '
      + ' SELECT IDECON, A.COBANO,A.COBMES,A.ASOID, NVL(RESULTADO,''No está en Resultados'') RESULTADO, MONCUOENV MONENV, MONCOB, SALDIS '
      + ' FROM COB_INF_PLA_DET A, COB319 B '
      + ' WHERE A.COBANO='''+sAno+''' AND A.COBMES='''+sMes+''' AND A.TIPO=''2'' '
      + '   AND A.ASOID=B.ASOID(+) AND B.IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
      + '   AND  B.COBANO='''+sAno+''' AND B.COBMES='''+sMes+''' '
      + '  ) E, '
      + ' (SELECT UPROID, UPAGOID, USEID FROM COB_CON_det A where IDECON='+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+' ) F '
      + ' WHERE A.ASOTIPID = ' + QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)
      + '   AND A.UPROID = '   + QuotedStr(Ftrainfpro.sUPRO)
      + '   AND NVL(A.FALLECIDO, ''N'') = ''N'' ';
  if DM1.cdsGrupos.FieldByName('ASOTIPID').AsString='CE' then
     sSQL := sSQL+ ' AND A.REGPENID=''01'' '; // sólo Régimen de Pensión 20530
  sSQL := sSQL
      + '   AND A.ASOID = B.ASOID '
      + '   AND D.CODPAD='''+DM1.cdsQry.FieldByname('CODPAD').AsString+'''  AND A.ASOID=D.ASOID(+) AND A.CARGO=D.CARGO(+) '
      + '   AND A.ASOID = E.ASOID(+) '
      + '   AND A.USEID=F.USEID '
      + ' ORDER BY A.ASODNI';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(sSql);
  DM1.cdsQry2.Open;
  dbgFSC.DataSource := DM1.dsQry2;
  dbgFSC.Selected.Clear;
  dbgFSC.SetControlType('FLAG',fctCheckBox,'S;N');
  dbgFSC.Selected.Add('FLAG'#9'3'#9' X'#9#9);
  dbgFSC.Selected.Add('ASODNI'#9'10'#9'DNI~del asociado'#9#9);
  dbgFSC.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.~del asociado'#9#9);
  dbgFSC.Selected.Add('CARGO'#9'8'#9'Código~cargo'#9#9);
  dbgFSC.Selected.Add('ASOCODPAGO'#9'10'#9'Código~de pago'#9#9);
  dbgFSC.Selected.Add('ASOAPENOM'#9'36'#9'Apellidos y Nombre(s)'#9#9);
  dbgFSC.Selected.Add('SALACT'#9'12'#9'Saldo~actual'#9#9);
  dbgFSC.Selected.Add('CRECUOENV'#9'10'#9'Cuota a~Cobrar'#9#9);
  dbgFSC.Selected.Add('HABER'#9'10'#9'Bruto'#9'F'#9'Haberes');
  dbgFSC.Selected.Add('DESCUENTO'#9'10'#9'Descuento'#9'F'#9'Haberes');
  dbgFSC.Selected.Add('LIQUIDO'#9'10'#9'Liquido'#9'F'#9'Haberes');

  dbgFSC.Selected.Add('CFCDES_F'#9'15'#9'Ultima~Clasificación'#9#9);
  dbgFSC.Selected.Add('RESULTADO'#9'25'#9'Resultado'#9#9);
  dbgFSC.Selected.Add('MONENV'#9'12'#9'Monto~Enviado'#9#9);
  dbgFSC.Selected.Add('MONCOB'#9'12'#9'Monto~Cobrado'#9#9);
  dbgFSC.Selected.Add('SALDIS'#9'12'#9'Saldo~Dsiponible'#9#9);
  dbgFSC.Selected.Add('CODPAD'#9'10'#9'Periodo~Padrón'#9#9);
  dbgFSC.Selected.Add('CARGO'#9'8'#9'Código~Cargo'#9#9);
  dbgFSC.Selected.Add('SITUACION'#9'7'#9'Situación'#9#9);
  dbgFSC.Selected.Add('PLANILLA'#9'7'#9'Tipo~Planilla'#9#9);
  dbgFSC.Selected.Add('USEID'#9'3'#9'UGEL~id'#9#9);
  dbgFSC.Selected.Add('USENOM'#9'25'#9'UGEL~Nombre'#9#9);
  dbgFSC.Selected.Add('HABER'#9'12'#9'Bruto'#9'F'#9'Haberes');
  dbgFSC.Selected.Add('DESCUENTO'#9'12'#9'Descuento'#9'F'#9'Haberes');
  dbgFSC.Selected.Add('LIQUIDO'#9'12'#9'Liquido'#9'F'#9'Haberes');
  dbgFSC.Selected.Add('DISPONIBLE_PADRON'#9'12'#9'Disponible~En Padrón'#9#9);
  dbgFSC.Selected.Add('CUODIF'#9'10'#9'Cuotas~Diferidas'#9#9);
  dbgFSC.Selected.Add('SALDIF'#9'10'#9'Saldo~Diferido'#9#9);

  dbgFSC.ApplySelected;
  dbgFSC.GroupFieldName := 'ASODNI';
  TNumericField(DM1.cdsQry2.FieldByName('SALACT')).DisplayFormat := '##,##0.00';
  dbgFSC.ColumnByName('ASODNI').FooterValue := 'REGISTROS :';
  dbgFSC.ColumnByName('ASOCODMOD').FooterValue := FloatToStrF(DM1.cdsQry2.RecordCount, ffNumber, 5, 0);

  TNumericField(DM1.cdsQry2.FieldByName('SALACT')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsQry2.FieldByName('CRECUOENV')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsQry2.FieldByName('HABER')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsQry2.FieldByName('DESCUENTO')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsQry2.FieldByName('LIQUIDO')).DisplayFormat    := '##,###,##0.00';
  TNumericField(DM1.cdsQry2.FieldByName('DISPONIBLE_PADRON')).DisplayFormat    := '##,###,##0.00';
  DM1.cdsQry2.IndexFieldNames := 'ASOAPENOM';
  DM1.cdsQry2.First;
end;

procedure TFCastigadosFSC.btncerrarClick(Sender: TObject);
begin
   DM1.cdsQry2.IndexFieldNames:= '';
   DM1.cdsQry2.Close;
   Close;
end;

procedure TFCastigadosFSC.dbgFSCDblClick(Sender: TObject);
begin
   DM1.cdsQry2.Edit;
   if DM1.cdsQry2.FieldByName('FLAG').AsString='S' then
      DM1.cdsQry2.FieldByName('FLAG').AsString:='N'
   else
      DM1.cdsQry2.FieldByName('FLAG').AsString:='S';
   DM1.cdsQry2.Post;
end;

procedure TFCastigadosFSC.BitBtn1Click(Sender: TObject);
var
  xSQL : String;
  sMONAPO, sMonCuo, sAno, sMes : String;
  nCon : integer;
begin
// HAYAR EL APORTE
  sAno:=DM1.cdsGrupos.FieldByName('CREANO').AsString;
  sMes:=DM1.cdsGrupos.FieldByName('CREMES').AsString;

  nCon:=0;
  DM1.cdsQry2.First;
  while not DM1.cdsQry2.Eof do
  begin
     If (DM1.cdsQry2.FieldByName('FLAG').AsString='S') and (DM1.cdsQry2.FieldByName('CRECUOENV').Asfloat>0) Then
     Begin
        xSQL:='select ASOID FROM COB319 A '
             +'where A.IDECON   = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
             + ' and A.COBANO   = '+QuotedStr(sAno)
             + ' and A.COBMES   = '+QuotedStr(sMes)
             + ' and A.ASOID    = '+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString   )
             + ' and A.ASOTIPID = '+QuotedStr(DM1.cdsQry2.FieldByName('ASOTIPID').AsString);
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest( xSQL );
        DM1.cdsQry.Open;

        sMonCuo:=FloatToStrF(DM1.cdsQry2.FieldByName('CRECUOENV').Asfloat, ffFixed, 15, 2);
        sMONAPO:='0';
        if ((DM1.cdsQry2.FieldByName('ASOTIPID').AsString='DO') OR (DM1.cdsQry2.FieldByName('ASOTIPID').AsString='VO')) AND (DM1.cdsQry2.FieldByName('AUTDESAPO').AsString='S') then
           sMONAPO  := FloatToStrF(nAPORTE, ffFixed, 15, 2);

        if DM1.cdsQry.RecordCount<=0 then
        begin
            xSQL:='Insert Into Cob319 ( Asoid,Asocodmod,Asocodaux,Asocodpago,Asoapenom,Useid,Uproid,Upagoid,Asodni,Asoncta, '
                 +   'cargo, asoapepat, asoapemat, asonombres, idecon, '
                 +   'Nroficio, Cobano, Cobmes, ASOTIPID, Forpagoid, Usuario, Freg, Hreg, '
                 +   'Moncuoenvven, Moncuoenvper, Numcuoenvper, Numcuoenvven, MonCuoEnv, '
                 +   'MonCuoMasAnt, MonDeuPer, SalMaxCuoVen, SalMaxCuoRep, '
                 +   'CREMTOCUOFSC, MONCUOENVFSC, CREMTOAPO, MONAPOENV, Montotenv ) ';
            xSQL:=xSQL
                 +'Select a.Asoid, a.Asocodmod, a.Asocodaux, a.Asocodpago, a.Asoapenom, a.Useid, a.Uproid, a.Upagoid, '
                 +   'a.Asodni,a.Asoncta, a.cargo, a.asoapepat, a.asoapemat, a.asonombres, '
                 +   QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+', '
                 +   QuotedStr(trim(DM1.cdsRegCob.FieldByName('NROFICIO').AsString))+' Nofic, '
                 +   QuotedStr(sAno)+' Cobano, '
                 +   QuotedStr(sMes)+' Cobmes, '
                 +   ''''+DM1.cdsQry2.FieldByName('ASOTIPID').AsString+''', ''01'' Forpagoid, '
                 +   ''''+DM1.wUsuario+''', sysdate, sysdate, '
                 +   '0 Moncuoenvven, 0 Moncuoenvper, 0 Numcuoenvper,  0 Numcuoenvven, 0 MonCuoEnv, '
                 +   '0 MonCuoMasAnt, 0 MonDeuPer, 0 SalMaxCuoVen, 0 SalMaxCuoRep, '
                 +   sMonCuo+' CREMTOCUOFSC, '+sMonCuo+' MONCUOENVFSC, '
                 +   sMONAPO+', ' +sMONAPO+', ('+sMonCuo+'+'+sMONAPO+') Montotenv '
                 +'From Apo201 a '
                 +'Where A.ASOID='''+DM1.cdsQry2.FieldByName('ASOID').AsString+''' ';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            nCon:=nCon+1;
        end
        else
        begin
           if DM1.cdsQry.RecordCount=1 then
           begin
              xSQL:='update Cob319 '
                   +   'set CREMTOCUOFSC='+sMonCuo+', MONCUOENVFSC='+sMonCuo+', CREMTOAPO='+sMONAPO+', '
                   +       'MONAPOENV='+sMONAPO+', Montotenv='+sMonCuo+'+'+sMONAPO+', '
                   +        'Usuario='''+DM1.wUsuario+''', Freg=sysdate, Hreg=sysdate '
                   + 'where IDECON   = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
                   +  ' and COBANO   = '+QuotedStr(sAno)
                   +  ' and COBMES   = '+QuotedStr(sMes)
                   +  ' and ASOID    = '+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString   )
                   +  ' and ASOTIPID = '+QuotedStr(DM1.cdsQry2.FieldByName('ASOTIPID').AsString);
              DM1.DCOM1.AppServer.EjecutaSQL(xSql);
              nCon:=nCon+1;
           end;
        end;

     end;
     DM1.cdsQry2.Next;
  end;
  DM1.cdsQry2.First;
  ShowMessage('Se Transfirieron : ' + Inttostr( nCon )+' Registros...' );
end;

procedure TFCastigadosFSC.btnCargoClick(Sender: TObject);
begin
  fDatosFSC:=TfDatosFSC.Create(self);
  fDatosFSC.ShowModal;
  fDatosFSC.Free;
end;

procedure TFCastigadosFSC.edtBuscarDetChange(Sender: TObject);
begin
  If Length(Trim(edtBuscarDet.Text))>0 Then
    DM1.cdsQry2.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscarDet.Text)]), [loPartialKey]);
end;

procedure TFCastigadosFSC.edtBuscarDetClick(Sender: TObject);
begin
  DM1.cdsQry2.IndexFieldNames:= 'ASOAPENOM';
  DM1.cdsQry2.First;
end;

procedure TFCastigadosFSC.edtBuscarDetKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key=#13 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
    Begin
      edtBuscarDet.Text := '';
      dbgFSC.SetFocus;
    End
    Else
    Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
      edtBuscarDet.SetFocus;
    End;
  End;
end;

procedure TFCastigadosFSC.FormCreate(Sender: TObject);
begin
  DM1.cdsQry2.Close;
end;

procedure TFCastigadosFSC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry2.Close;
  DM1.cdsQry2.IndexFieldNames := '';
end;

end.
