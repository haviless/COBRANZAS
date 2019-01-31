unit COBD02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB, Wwdatsrc,
  DBClient, wwclient, ExtCtrls;

type
  TFValidaRefi1 = class(TForm)
    dbgValida: TwwDBGrid;
    cdsValidaciones: TwwClientDataSet;
    dsValidaciones: TwwDataSource;
    stTitulo: TStaticText;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }

    sSQL : STring ;
    procedure AsignaSQLA(sCREDID,sASOID:String);
    procedure AsignaSQLB(sCREDID,sASOID:String);
    procedure AsignaSQLC(sCREDID,sASOID:String);
    procedure AsignaSQLD(sCREDID,sASOID:String);
    procedure AsignaSQLF(sCREDID,sASOID:String);
    procedure AsignaSQLG(sCREDID,sASOID:String);
    procedure ConfiguraPantallaA;
    procedure ConfiguraPantallaB;
    procedure ConfiguraPantallaC;
    procedure ConfiguraPantallaD;

    procedure RecuperaData;
  public
    { Public declarations }
    function ValidaA(sCREDID,sASOID:String) : boolean;
    function ValidaB(sCREDID,sASOID:String) : boolean;
    function ValidaC(sCREDID,sASOID:String) : boolean;
    function ValidaD(sCREDID,sASOID:String) : boolean;
    function ValidaF(sCREDID,sASOID:String) : boolean;
    function ValidaG(sCREDID,sASOID:String) : boolean;
    procedure MuestraA(sCREDID,sASOID:String);
    procedure MuestraB(sCREDID,sASOID:String);
    procedure MuestraC(sCREDID,sASOID:String);
    procedure MuestraD(sCREDID,sASOID:String);

  end;

var
  FValidaRefi1: TFValidaRefi1;

implementation

uses COBDM1;

{$R *.dfm}

{ TFValidaRefi1 }

procedure TFValidaRefi1.AsignaSQLA;
begin
  sSQL :=
     ' SELECT CRECUOTA,NVL(CREMTO,0) CREMTO, '
          +  ' (NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)) SUMA, '
          +  ' ABS(NVL(CREMTO,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0))) DIF ,'
          +  ' CREANO,CREMES,CREAMORT,CREINTERES,CREFLAT'
    + ' FROM CRE302 '
    + ' WHERE '
    + ' ASOID = ' +QuotedStr( sASOID )
    + ' AND CREDID = ' +QuotedStr( sCREDID )
//    + ' AND ABS(NVL(CREMTO,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)))>0.05 ' ;
    + ' AND ABS(NVL(CREMTO,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)))>0.00 ORDER BY CRECUOTA' ;
end;

procedure TFValidaRefi1.AsignaSQLB;
begin
  sSQL :=
       ' SELECT CRECUOTA,(NVL(CRECAPITAL,0) + NVL(CREMTOINT,0)+NVL(CREMTOFLAT,0) '
//    +  '  +NVL(CREMTOEXC,0)+NVL(CREAPLEXC,0)+NVL(CREMTODEV,0)) SUMACOB , NVL(CREMTOCOB,0) CREMTOCOB '
    +  '  +NVL(CREMTOEXC,0)) SUMACOB , NVL(CREMTOCOB,0) CREMTOCOB, '
    +  '  CREANO,CREMES,NVL(CRECAPITAL,0) CRECAPITAL,NVL(CREMTOINT,0) CREMTOINT,NVL(CREMTOFLAT,0) CREMTOFLAT,NVL(CREMTOEXC,0) CREMTOEXC '
    +  ' FROM CRE302 '
    +  ' WHERE '
    +  ' ASOID = ' +QuotedStr( sASOID )
    +  ' AND CREDID = ' +QuotedStr( sCREDID )
    +  ' AND (NVL(CRECAPITAL,0) + NVL(CREMTOINT,0)+NVL(CREMTOFLAT,0) '
//    +  '  +NVL(CREMTOEXC,0)+NVL(CREAPLEXC,0)+NVL(CREMTODEV,0)<>NVL(CREMTOCOB,0)) ' ;
    +  '  +NVL(CREMTOEXC,0)<>NVL(CREMTOCOB,0)) ' ;

end;

procedure TFValidaRefi1.AsignaSQLC;
begin
  sSQL :=
     ' SELECT CRECUOTA,NVL(CREAMORT,0) CREAMORT, NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT,NVL(CREMTOEXC,0) CREMTOEXC, '
      + ' NVL(CREAPLEXC,0) CREAPLEXC,NVL(CREMTODEV,0) CREMTODEV, '
      + ' NVL(CREAMORT,0) + NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0) SUMA,NVL(CREMTOCOB,0) CREMTOCOB,CREANO,CREMES '
    + ' FROM CRE310 , CRE113 '
    + ' WHERE '
    + ' ASOID = ' +QuotedStr( sASOID )
    + ' AND CREDID = ' +QuotedStr( sCREDID )
    + ' AND (NVL(CREAMORT,0) + NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)<>NVL(CREMTOCOB,0)) '
    + ' AND NOT FORPAGOID IN (''06'',''10'') '
    + ' AND CRE310.CREESTID = CRE113.ESTID(+) '
    + ' AND NOT NVL(CRE113.FLGTIPO,''X'') IN (''A'',''E'') ' ;
end;

procedure TFValidaRefi1.AsignaSQLD;
begin
  sSQL :=
   ' SELECT '
  + ' ''Cronograma'' ORIGEN, A.CRECUOTA,A.CREANO,A.CREMES,MAX(NVL(A.CREMTOCOB,0)) CRONOCOB,SUM(NVL(B.CREMTOCOB,0)) DOCUCOB '
  + ' FROM CRE302 A,CRE310 B ,CRE113 C'
  + ' WHERE '
    + ' A.ASOID = ' +QuotedStr( sASOID )
    + ' AND A.CREDID = ' +QuotedStr( sCREDID )
  + ' AND NOT B.FORPAGOID IN (''06'',''10'') '
  + ' AND A.CREDID   = B.CREDID(+) '
  + ' AND A.ASOID    = B.ASOID(+) '
  + ' AND A.CRECUOTA = B.CRECUOTA(+) '
//
  + ' AND B.CREESTID = C.ESTID(+) '
  + ' AND NOT NVL(C.FLGTIPO,''X'') IN (''A'',''E'') '
//
  + ' AND NVL(A.CREMTOCOB,0)>0 '
  + ' GROUP BY A.CRECUOTA ,A.CREANO,A.CREMES'
  + ' HAVING MAX(NVL(A.CREMTOCOB,0))<>SUM(NVL(B.CREMTOCOB,0)) '
  + ' UNION ALL '
  + ' SELECT '
  + ' ''Cobranzas'' ORIGEN,A.CRECUOTA,A.CREANO,A.CREMES,MAX(NVL(B.CREMTOCOB,0)) CRONOCOB,SUM(NVL(A.CREMTOCOB,0)) DOCUCOB '
  + ' FROM CRE310 A,CRE302 B ,CRE113 C'
  + ' WHERE '
    + ' A.ASOID = ' +QuotedStr( sASOID )
    + ' AND A.CREDID = ' +QuotedStr( sCREDID )
  + ' AND NOT A.FORPAGOID IN (''06'',''10'') '
  + ' AND A.CREDID   = B.CREDID(+) '
  + ' AND A.ASOID    = B.ASOID(+) '
  + ' AND A.CRECUOTA = B.CRECUOTA(+) '
//
  + ' AND A.CREESTID = C.ESTID(+) '
  + ' AND NOT NVL(C.FLGTIPO,''X'') IN (''A'',''E'') '
//
  + ' AND B.CRECUOTA IS NULL '
  + ' GROUP BY A.CRECUOTA ,A.CREANO,A.CREMES'
  + ' HAVING MAX(NVL(B.CREMTOCOB,0))<>SUM(NVL(A.CREMTOCOB,0)) ';

end;

procedure TFValidaRefi1.AsignaSQLF(sCREDID, sASOID: String);
begin
  sSQL :=
   ' SELECT A.CREMTOCOB '
   + ' FROM CRE302 A, CRE310 B '
   + ' WHERE A.CREDID = B.CREDID(+) '
   + ' AND A.ASOID  = B.ASOID(+) '
   + ' AND A.CRECUOTA = B.CRECUOTA(+) '
   + ' AND NVL(A.CREMTOCOB,0) > 0 '
   + ' AND B.ASOID IS NULL '
   + ' AND A.ASOID = ' +QuotedStr( sASOID )
    + ' AND A.CREDID = ' +QuotedStr( sCREDID ) ;

end;

procedure TFValidaRefi1.AsignaSQLG(sCREDID, sASOID: String);
begin
  sSQL :=
     ' SELECT 1 '
   + ' FROM CRE302 A, CRE301 B '
   + ' WHERE B.ASOID = ' +QuotedStr( sASOID )
   + ' AND B.CREDID = ' +QuotedStr( sCREDID )
   +   ' AND A.CREDID = B.CREDID '
   +   ' AND A.ASOID  = B.ASOID '
   + ' HAVING SUM(A.CREAMORT) <> MAX(B.CREMTOOTOR) ' ;
end;

procedure TFValidaRefi1.ConfiguraPantallaA;
begin
   stTitulo.Caption := 'Distribución De Lo Pactado' ;
   dbgValida.selected.Clear;
   dbgValida.selected.Add('CRECUOTA'#9'2'#9'Nº~Cuota');
   dbgValida.selected.Add('CREANO'#9'6'#9'~Año');
   dbgValida.selected.Add('CREMES'#9'4'#9'~Mes');
   dbgValida.selected.Add('CREAMORT'#9'12'#9'~Amort.');
   dbgValida.selected.Add('CREINTERES'#9'12'#9'~Int.');
   dbgValida.selected.Add('CREFLAT'#9'12'#9'~Flat');
   dbgValida.selected.Add('SUMA'#9'12'#9'Suma~Distr.');
   dbgValida.selected.Add('CREMTO'#9'12'#9'Monto~Cuota');
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREAMORT')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREINTERES')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREFLAT')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREMTO')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('SUMA')).DisplayFormat := '###,##0.00' ;
   dbgValida.ApplySelected;
end;

procedure TFValidaRefi1.ConfiguraPantallaB;
begin

   stTitulo.Caption := 'Distribución De Lo Cobrado en el Cronograma' ;
   dbgValida.selected.Clear;
   dbgValida.selected.Add('CRECUOTA'#9'2'#9'Nº~Cuota');
   dbgValida.selected.Add('CREANO'#9'6'#9'~Año');
   dbgValida.selected.Add('CREMES'#9'4'#9'~Mes');
   dbgValida.selected.Add('CRECAPITAL'#9'12'#9'~Amort.');
   dbgValida.selected.Add('CREMTOINT'#9'12'#9'~Int.');
   dbgValida.selected.Add('CREMTOFLAT'#9'12'#9'~Flat');
   dbgValida.selected.Add('CREMTOEXC'#9'12'#9'~Exceso');
   dbgValida.selected.Add('SUMACOB'#9'12'#9'Suma~Distr.');
   dbgValida.selected.Add('CREMTOCOB'#9'12'#9'Monto~Cobrado');

   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CRECAPITAL')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREMTOINT')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREMTOFLAT')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREMTOCOB')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('SUMACOB')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREMTOEXC')).DisplayFormat := '###,##0.00' ;

   dbgValida.ApplySelected;

end;

procedure TFValidaRefi1.ConfiguraPantallaC;
begin

   stTitulo.Caption := 'Distribución De Lo Cobrado' ;
   dbgValida.selected.Clear;
   dbgValida.selected.Add('CRECUOTA'#9'2'#9'Nº~Cuota');
   dbgValida.selected.Add('CREANO'#9'6'#9'~Año');
   dbgValida.selected.Add('CREMES'#9'4'#9'~Mes');
   dbgValida.selected.Add('CREAMORT'#9'12'#9'~Amort.');
   dbgValida.selected.Add('CREINTERES'#9'12'#9'~Int.');
   dbgValida.selected.Add('CREFLAT'#9'12'#9'~Flat');
   dbgValida.selected.Add('CREMTOEXC'#9'12'#9'~Exceso');
   dbgValida.selected.Add('SUMA'#9'12'#9'Suma~Distr.');
   dbgValida.selected.Add('CREMTOCOB'#9'12'#9'Monto~Cobrado');

   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREAMORT')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREINTERES')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREFLAT')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREMTOCOB')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('SUMA')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CREMTOEXC')).DisplayFormat := '###,##0.00' ;

   dbgValida.ApplySelected;

end;

procedure TFValidaRefi1.ConfiguraPantallaD;
begin
{
  sSQL :=
   ' SELECT '
  + ' ''Cronograma'' ORIGEN, A.CRECUOTA,MAX(NVL(A.CREMTOCOB,0)) CRONOCOB,SUM(NVL(B.CREMTOCOB,0)) DOCUCOB '
  + ' FROM CRE302 A,CRE310 B ,CRE113 C'
}
   stTitulo.Caption := 'Comparación de lo Cobrado Entre el Cronograma y Las Cobranzas' ;
   dbgValida.selected.Clear;
   dbgValida.selected.Add('CRECUOTA'#9'2'#9'Nº~Cuota');
   dbgValida.selected.Add('CREANO'#9'6'#9'~Año');
   dbgValida.selected.Add('CREMES'#9'4'#9'~Mes');
   dbgValida.selected.Add('CRONOCOB'#9'12'#9'Cobrado~Cronograma');
   dbgValida.selected.Add('DOCUCOB'#9'12'#9'Cobrado~Cobranzas');

   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('CRONOCOB')).DisplayFormat := '###,##0.00' ;
   TFloatField(dbgvalida.DataSource.DataSet.FieldByName('DOCUCOB')).DisplayFormat  := '###,##0.00' ;

   dbgValida.ApplySelected;

end;

procedure TFValidaRefi1.MuestraA(sCREDID, sASOID: String);
begin
  AsignaSQLA(sCREDID, sASOID);
  RecuperaData;
  ConfiguraPantallaA;
  ShowModal ;
end;

procedure TFValidaRefi1.MuestraB(sCREDID, sASOID: String);
begin
  AsignaSQLb(sCREDID, sASOID);
  RecuperaData;
  ConfiguraPantallab;
  ShowModal ;
end;

procedure TFValidaRefi1.MuestraC(sCREDID, sASOID: String);
begin
  AsignaSQLc(sCREDID, sASOID);
  RecuperaData;
  ConfiguraPantallaC;
  ShowModal ;
end;

procedure TFValidaRefi1.MuestraD(sCREDID, sASOID: String);
begin
  AsignaSQLD(sCREDID, sASOID);
  RecuperaData;
  ConfiguraPantallaD;
  ShowModal ;
end;

procedure TFValidaRefi1.RecuperaData;
begin
  with cdsValidaciones do
  begin
    RemoteServer := dm1.dcom1 ;
    ProviderName := dm1.cdsQry.ProviderName ;
    Close ;
    DataRequest(sSQL);
    Open ;
  end ;
end;

function TFValidaRefi1.ValidaA(sCREDID, sASOID: String):boolean;
begin
  AsignaSQLA(sCREDID, sASOID);
  RecuperaData;
  result := (cdsValidaciones.RecordCount = 0 ) ;
end;

function TFValidaRefi1.ValidaB(sCREDID, sASOID: String):boolean;
begin
  AsignaSQLB(sCREDID, sASOID);
  RecuperaData;
  result := (cdsValidaciones.RecordCount = 0 ) ;  
end;

function TFValidaRefi1.ValidaC(sCREDID, sASOID: String):boolean;
begin
  AsignaSQLC(sCREDID, sASOID);
  RecuperaData;
  result := (cdsValidaciones.RecordCount = 0 ) ;  
end;

function TFValidaRefi1.ValidaD(sCREDID, sASOID: String):boolean;
begin
  AsignaSQLD(sCREDID, sASOID);
  RecuperaData;
  result := (cdsValidaciones.RecordCount = 0 ) ;
end;

function TFValidaRefi1.ValidaF(sCREDID, sASOID: String): boolean;
begin
  AsignaSQLF(sCREDID, sASOID);
  RecuperaData;
  result := (cdsValidaciones.RecordCount = 0 ) ;
end;

function TFValidaRefi1.ValidaG(sCREDID, sASOID: String): boolean;
begin
  AsignaSQLG(sCREDID, sASOID);
  RecuperaData;
  result := (cdsValidaciones.RecordCount = 0 ) ;
end;

end.
