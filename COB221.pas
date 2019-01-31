unit COB221;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB221
// Formulario                    : FSepArc
// Fecha de Creación             :
// Autor                         : Sistemas
// Objetivo                      : Herramientas de Descarga de Archivos

// Actualizaciones               :
// HPC_201402_COB                : 28/06/2014  : Cambio de DCOM a Socket
// SPP_201402_COB                : Se realiza el pase a producción a partir del HPC_201402_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, DB, ExtCtrls;

type
  TFSepArc = class(TForm)
    GroupBox1: TGroupBox;
    dbgparticiona: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    btnasigna: TBitBtn;
    btnCerrar: TBitBtn;
    GroupBox2: TGroupBox;
    lblnomarc: TLabel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnasignaClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    xtotgen, xtotcuo, xtotapo :Double;
    xmonapo:Double;
    procedure sumtot;

    { Public declarations }
  end;

var
  FSepArc: TFSepArc;

implementation

uses COBDM1;

{$R *.dfm}

Procedure TFSepArc.FormActivate(Sender: TObject);
Var xSql:String;
Begin
  xSql:= 'SELECT APOVALOR FROM APO117 WHERE APOANO = '+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,1,4))
  +' AND APOMES = '+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,5,2));
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xmonapo := DM1.cdsQry.FieldByName('APOVALOR').AsFloat;

  lblnomarc.Caption := DM1.cdsDetalle.FieldByName('ARCHIVO').AsString;

  // Ejecutando por BLOQUE
  xSql := 'UPDATE COB310 A SET (A.MONCUO, A.MONAPO, FL_VERIFICADO) =(SELECT B.CREMTOCUO, B.CREMTOAPO, ''S'''
  +' FROM COB319 B WHERE A.ASOID = B.ASOID AND A.TRANSANO = B.COBANO AND A.TRANSMES = B.COBMES AND A.UPROID=B.UPROID AND A.UPAGOID=B.UPAGOID '
  +' AND NVL(A.TRANSMTO,0) = NVL(B.CREMTOCUO,0)+NVL(B.CREMTOAPO,0)) WHERE A.ARCHIVO = '+QuotedStr(DM1.cdsDetalle.FieldByName('ARCHIVO').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);

  xSql := 'SELECT * FROM COB310 A WHERE ARCHIVO = '+QuotedStr(DM1.cdsDetalle.FieldByName('ARCHIVO').AsString)
  +' AND TRANSANO = '+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,1,4))
  +' AND TRANSMES = '+QuotedStr(Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,5,2));
// Inicio: SPP_201402_COB  : Cambio de DCOM a Socket
   DM1.cdsEjecuta.Close;
   DM1.cdsEjecuta.DataRequest(xSql);
   DM1.cdsEjecuta.Open;
   DM1.cdsEjecuta.First;

  While Not  DM1.cdsEjecuta.Eof Do
  Begin
    If  DM1.cdsEjecuta.FieldByName('FL_VERIFICADO').AsString <> 'S' Then
    Begin
      xSql := 'SELECT COUNT(1) CUENTA FROM APO201 WHERE ASOID = '+QuotedStr( DM1.cdsEjecuta.FieldByName('ASOID').AsString)
      +' AND NVL(AUTDESAPO, ''X'' ) = ''S''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('CUENTA').AsInteger = 1 Then
      Begin
        If  DM1.cdsEjecuta.FieldByName('TRANSMTO').AsFloat < xmonapo Then
        Begin
           DM1.cdsEjecuta.Edit;
           DM1.cdsEjecuta.FieldByName('MONAPO').AsFloat         :=  DM1.cdsEjecuta.FieldByName('TRANSMTO').AsFloat;
           DM1.cdsEjecuta.FieldByName('MONCUO').AsFloat         := 0;
           DM1.cdsEjecuta.FieldByName('FL_VERIFICADO').AsString := 'S';
        End
        Else
        Begin
           DM1.cdsEjecuta.Edit;
           DM1.cdsEjecuta.FieldByName('MONAPO').AsFloat := xmonapo;
           DM1.cdsEjecuta.FieldByName('MONCUO').AsFloat :=  DM1.cdsEjecuta.FieldByName('TRANSMTO').AsFloat - xmonapo;
           DM1.cdsEjecuta.FieldByName('FL_VERIFICADO').AsString := 'S';
        End;
      End
      Else
      Begin
         DM1.cdsEjecuta.Edit;
         DM1.cdsEjecuta.FieldByName('MONCUO').AsFloat:=  DM1.cdsEjecuta.FieldByName('TRANSMTO').AsFloat;
         DM1.cdsEjecuta.FieldByName('MONAPO').AsFloat:= 0;
         DM1.cdsEjecuta.FieldByName('FL_VERIFICADO').AsString := 'S';
      End;
    End;
     DM1.cdsEjecuta.Next;
  End;
  if DM1.cdsEjecuta.ApplyUpdates(0)>0 then
     ShowMessage('Error al grabar');


  dbgparticiona.Selected.Clear;
  dbgparticiona.Selected.Add('ASOID'#9'10'#9'Código de~asociado'#9#9);
  dbgparticiona.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
  dbgparticiona.Selected.Add('ASOAPENOM'#9'35'#9'Apellidos~y Nombres'#9#9);
  dbgparticiona.Selected.Add('USEID'#9'2'#9'Código de~UGEL'#9#9);
  dbgparticiona.Selected.Add('ASOCODPAGO'#9'8'#9'Código de~Pago'#9#9);
  dbgparticiona.Selected.Add('TRANSMTO'#9'12'#9'Monto'#9#9);
  dbgparticiona.Selected.Add('MONAPO'#9'12'#9'Monto del~aporte'#9#9);
  dbgparticiona.Selected.Add('MONCUO'#9'12'#9'Monto de la~cuota'#9#9);
  dbgparticiona.Selected.Add('FL_VERIFICADO'#9'1'#9'Verificado'#9#9);
  dbgparticiona.ApplySelected;
  TNumericField( DM1.cdsEjecuta.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
  TNumericField( DM1.cdsEjecuta.FieldByName('MONCUO')).DisplayFormat := '###,###,##0.00';
  TNumericField( DM1.cdsEjecuta.FieldByName('MONAPO')).DisplayFormat := '###,###,##0.00';
  sumtot;
// Fin: SPP_201402_COB : Cambio de DCOM a Socket

End;

Procedure TFSepArc.sumtot;
Begin
// Inicio: SPP_201402_COB  Cambio de DCOM a Socket
  xtotgen := 0; xtotcuo := 0; xtotapo := 0;
   DM1.cdsEjecuta.First;
  While Not  DM1.cdsEjecuta.Eof Do
  Begin
    xtotgen := xtotgen +  DM1.cdsEjecuta.FieldByName('TRANSMTO').AsFloat;
    xtotcuo := xtotcuo +  DM1.cdsEjecuta.FieldByName('MONCUO').AsFloat;
    xtotapo := xtotapo +  DM1.cdsEjecuta.FieldByName('MONAPO').AsFloat;
     DM1.cdsEjecuta.Next;
  End;
   DM1.cdsEjecuta.First;
  dbgparticiona.ColumnByName('TRANSMTO').FooterValue := FormatFloat('###,###0.00',xtotgen);
  dbgparticiona.ColumnByName('MONAPO').FooterValue := FormatFloat('###,###0.00',xtotapo);
  dbgparticiona.ColumnByName('MONCUO').FooterValue := FormatFloat('###,###0.00',xtotcuo);
// Fin: SPP_201402_COB : Cambio de DCOM a Socket
End;

procedure TFSepArc.Button1Click(Sender: TObject);
Begin
// Inicio: SPP_201402_COB  : 28/06/2014  : Cambio de DCOM a Socket
   DM1.cdsEjecuta.IndexFieldNames := 'FL_VERIFICADO';
// Fin: SPP_201402_COB  : 28/06/2014  : Cambio de DCOM a Socket
End;


Procedure TFSepArc.btnasignaClick(Sender: TObject);
Var xSql, xNomarcApo, xNomarcCuo :String;
  xItem:Integer;
  xCremto, xMonApo, xMonCuo:Double;
Begin
  If MessageDlg( ' ¿ Seguro de separar archivo ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
  Begin
    // Separar
    xSql := 'SELECT * FROM COB312 WHERE ARCHIVO = '+QuotedStr(DM1.cdsDetalle.FieldByName('ARCHIVO').AsString)
    +' AND PERIODO = '+QuotedStr(DM1.cdsDetalle.FieldByName('PERIODO').AsString);
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    // Insertando dos archivos
    // Aportes
    xNomarcApo := 'R'+Copy(DM1.cdsQry2.FieldByName('ARCHIVO').AsString, 2, Length(Trim(DM1.cdsQry2.FieldByName('ARCHIVO').AsString))-1);
    xSql :=' SELECT MAX(ITEM+1) ITEM FROM COB312';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger;
    xSql := 'INSERT INTO COB312 (CIAID, ITEM, ARCHIVO, PERIODO, USUARIO, FL_BAJADO, FL_IMPORT,'
    +' FL_VERIFI, FREG, USEID, UPAGOID, UPROID, FL_TRANSF, RECAUDA, FL_GENER) VALUES ('
    +' ''02'','+IntToStr(xItem)+','+QuotedStr(xNomarcApo)+','+QuotedStr(DM1.cdsQry2.FieldByName('PERIODO').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('USUARIO').AsString)+','+QuotedStr(DM1.cdsQry2.FieldByName('FL_BAJADO').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('FL_IMPORT').AsString)+','+QuotedStr(DM1.cdsQry2.FieldByName('FL_VERIFI').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+','+QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('FL_TRANSF').AsString)+','+QuotedStr('APORTE')
    +','+QuotedStr(DM1.cdsQry2.FieldByName('FL_GENER').AsString)+')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    // Cuotas
    xNomarcCuo := 'C'+Copy(DM1.cdsQry2.FieldByName('ARCHIVO').AsString, 2, Length(Trim(DM1.cdsQry2.FieldByName('ARCHIVO').AsString))-1);
    xSql :=' SELECT MAX(ITEM+1) ITEM FROM COB312';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger;
    xSql := 'INSERT INTO COB312 (CIAID, ITEM, ARCHIVO, PERIODO, USUARIO, FL_BAJADO, FL_IMPORT,'
    +' FL_VERIFI, FREG, USEID, UPAGOID, UPROID, FL_TRANSF, RECAUDA, FL_GENER) VALUES ('
    +' ''02'','+IntToStr(xItem)+','+QuotedStr(xNomarcCuo)+','+QuotedStr(DM1.cdsQry2.FieldByName('PERIODO').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('USUARIO').AsString)+','+QuotedStr(DM1.cdsQry2.FieldByName('FL_BAJADO').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('FL_IMPORT').AsString)+','+QuotedStr(DM1.cdsQry2.FieldByName('FL_VERIFI').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+','+QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)
    +','+QuotedStr(DM1.cdsQry2.FieldByName('FL_TRANSF').AsString)+','+QuotedStr('CUOTA')
    +','+QuotedStr(DM1.cdsQry2.FieldByName('FL_GENER').AsString)+')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    // Detalle de aportes
    xSql :=
    'INSERT INTO COB310 (ARCHIVO, ASOID, USEID, ASOCODMOD, TRANSANO, TRANSMES, TMONID, TRANSMTO, SEXO, APOSEC,'
    +' ASOAPENOM, USUARIO, FREG, HREG, ASOCODPAGO, USEIDA, ASOCODMODA, ASOCODPAGOA, ASOAPENOMA, UPROID, UPAGOID, CREMTO,'
    +' FL_TRANSF, FLAG, CARGO, ASODNI) SELECT '+QuotedStr(xNomarcApo)+', ASOID, USEID, ASOCODMOD, TRANSANO, TRANSMES, TMONID, MONAPO, SEXO,'
    +' APOSEC, ASOAPENOM, USUARIO, FREG, HREG, ASOCODPAGO, USEIDA, ASOCODMODA, ASOCODPAGOA, ASOAPENOMA, UPROID, UPAGOID,'
    +' CREMTO, FL_TRANSF, FLAG, CARGO, ASODNI FROM COB310 WHERE ARCHIVO = '+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
    +' AND NVL(MONAPO,0) <> 0 AND ARCHIVO = '+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
    +' AND TRANSANO = '+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString,1,4))
    +' AND TRANSMES = '+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString,5,2));
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    xSql :=
    'INSERT INTO COB310 (ARCHIVO, ASOID, USEID, ASOCODMOD, TRANSANO, TRANSMES, TMONID, TRANSMTO, SEXO, APOSEC,'
    +' ASOAPENOM, USUARIO, FREG, HREG, ASOCODPAGO, USEIDA, ASOCODMODA, ASOCODPAGOA, ASOAPENOMA, UPROID, UPAGOID, CREMTO,'
    +' FL_TRANSF, FLAG, CARGO, ASODNI) SELECT '+QuotedStr(xNomarcCuo)+', ASOID, USEID, ASOCODMOD, TRANSANO, TRANSMES, TMONID, MONCUO, SEXO,'
    +' APOSEC, ASOAPENOM, USUARIO, FREG, HREG, ASOCODPAGO, USEIDA, ASOCODMODA, ASOCODPAGOA, ASOAPENOMA, UPROID, UPAGOID,'
    +' CREMTO, FL_TRANSF, FLAG, CARGO, ASODNI FROM COB310 WHERE ARCHIVO = '+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
    +' AND NVL(MONCUO,0) <> 0 AND ARCHIVO = '+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
    +' AND TRANSANO = '+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString,1,4))
    +' AND TRANSMES = '+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString,5,2));
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);


    // Eliminando Archivos anteriores
    xSql := 'DELETE FROM COB310 WHERE ARCHIVO = '+QuotedStr(DM1.cdsDetalle.FieldByName('ARCHIVO').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    xSql := 'DELETE FROM COB312 WHERE ARCHIVO = '+QuotedStr(DM1.cdsDetalle.FieldByName('ARCHIVO').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  End;
  MessageDlg('Proceso de separación ha concluido', mtInformation,[mbOk],0);
  FSepArc.Close;
End;

procedure TFSepArc.btnCerrarClick(Sender: TObject);
begin
  FSepArc.Close;
end;

end.
