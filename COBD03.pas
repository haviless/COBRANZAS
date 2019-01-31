unit COBD03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, DBClient, wwclient,
  StdCtrls, Buttons;

type
  TFValidaRefi2 = class(TForm)
    dbgCronograma: TwwDBGrid;
    dbgCalculo: TwwDBGrid;
    dbgCobrado: TwwDBGrid;
    cdsCRE302Inconsis: TwwClientDataSet;
    cdsCRE310Inconsis: TwwClientDataSet;
    dsCRE302Inconsis: TwwDataSource;
    dsCRE310Inconsis: TwwDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    stTitulo: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure cdsCRE302InconsisAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FValidaRefi2: TFValidaRefi2;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFValidaRefi2.cdsCRE302InconsisAfterScroll(DataSet: TDataSet);
var
  sSQL : String ;
begin
  if dataset.Eof then
   exit ;
  if dataset.RecordCount > 0 then
  begin
     sSQL := 'SELECT * FROM CRE310 WHERE ASOID =' + QuotedStr(DataSet.fIELDbynAME('ASOID').AsString)
           + ' AND CREDID = ' + QuotedStr(DataSet.fIELDbynAME('CREDID').AsString)
           + ' AND CREANO = ' + QuotedStr(DataSet.fIELDbynAME('CREANO').AsString)
           + ' AND CREMES = ' + QuotedStr(DataSet.fIELDbynAME('CREMES').AsString)
           + ' ORDER BY FREG,CREFPAG ' ;
     cdsCRE310Inconsis.Close;
     cdsCRE310Inconsis.DataRequest(sSQL);
     cdsCRE310Inconsis.Open;
  end
end;

procedure TFValidaRefi2.FormCreate(Sender: TObject);
begin
  cdsCRE310Inconsis.Close;
  cdsCRE310Inconsis.RemoteServer := dm1.dcom1;
  cdsCRE310Inconsis.ProviderName := dm1.cdsQry.providername ;
end;

procedure TFValidaRefi2.FormShow(Sender: TObject);
begin
  if dbgCronograma.DataSource.DataSet.Active then
     if dbgCronograma.DataSource.DataSet.Recordcount > 0 then
        dbgCronograma.DataSource.DataSet.First ;
  TwwClientDataset(dbgCronograma.DataSource.DataSet).ReadOnly := True ;
  TwwClientDataset(dbgCobrado.DataSource.DataSet).ReadOnly := True ;
end;

end.
