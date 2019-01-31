{
Para esta Opcion se Requieren :
-CREDID
-ASOID
-Cçodigo para recuperac
-se genere un nçumero temporal de credito
}
unit COBD05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, DBClient, wwclient, ComCtrls, wwrcdpnl, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, Buttons;

type
  TFPreliminarRefinanciado = class(TForm)
    cdsCRE301: TwwClientDataSet;
    cdsCRE310: TwwClientDataSet;
    cdsCRE302: TwwClientDataSet;
    cdsCRE303: TwwClientDataSet;
    dsCRE301: TwwDataSource;
    dsCRE310: TwwDataSource;
    dsCRE303: TwwDataSource;
    dsCRE302: TwwDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    wwRecordViewPanel1: TwwRecordViewPanel;
    wwRecordViewPanel2: TwwRecordViewPanel;
    wwDBGrid3: TwwDBGrid;
    cdsCRE302NAbono: TwwClientDataSet;
    dsCRE302NAbono: TwwDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure cdsCRE302NAbonoAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MuestraPrevio(sASOID,sCREDID,sCREDIDORI:String);
  end;

var
  FPreliminarRefinanciado: TFPreliminarRefinanciado;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFPreliminarRefinanciado.cdsCRE302NAbonoAfterScroll(DataSet: TDataSet);
begin
  //Recupera CRE310
  if not Dataset.Active then
     Exit;
  if DataSet.RecordCount = 0 then
  begin
     if cdscre310.Active then
       if cdsCRE310.RecordCount <> 0 then
          cdsCRE310.Close ;
  end
  else
  begin
    cdsCRE310.Filter    := 'CREDID='
                            + QuotedStr(Dataset.FieldByName('CREDID').AsString)
                            + ' AND ASOID = ' + QuotedStr(Dataset.FieldByName('ASOID').AsString)
                            + ' AND CRECUOTA = ' + QuotedStr(Dataset.FieldByName('CRECUOTA').AsString);                            
    cdsCRE310.Filtered  := True ;
  end ;
end;

procedure TFPreliminarRefinanciado.MuestraPrevio(sASOID, sCREDID,sCREDIDORI: String);
begin
    //Recupera Datos
    cdsCRE301.DataRequest('SELECT * FROM CRE318 WHERE CREDID='+QuotedStr(sCREDID)+' AND ASOID='+QuotedStr(sASOID));
    cdsCRE301.OPen;
    cdsCRE302.DataRequest('SELECT * FROM CRE319 WHERE CREDID='+QuotedStr(sCREDID)+' AND ASOID='+QuotedStr(sASOID)
                          + ' ORDER BY CREANO,CREMES');
    cdsCRE302.Open;
    cdsCRE303.DataRequest('SELECT * FROM CRE320 WHERE CREDID='+QuotedStr(sCREDID)+' AND ASOID='+QuotedStr(sASOID));
    cdsCRE303.OPen;
    cdsCRE310.DataRequest('SELECT CREMTOCOB,CREAMORT,CREINTERES,CREFLAT,CREMTOEXC,CRE321.* FROM CRE321 WHERE CREDID='+QuotedStr(sCREDIDORI)+' AND ASOID='+QuotedStr(sASOID)
                          +' ORDER BY FREG,CREFPAG');
    cdsCRE310.Open;
    cdsCRE302NAbono.DataRequest('SELECT CREANO ANO,CREMES MES,CREMTO,CREAMORT PA,CREINTERES PI,CREFLAT PF,CREMTOCOB ,CRECAPITAL CA,CREMTOINT CI,CREMTOFLAT CF,CREMTOEXC CE,CRE319.* FROM CRE319 WHERE CREDID='+QuotedStr(sCREDIDORI)+' AND ASOID='+QuotedStr(sASOID)+ ' ORDER BY CREANO,CREMES ') ;
    cdsCRE302NAbono.Open;

    ShowModal;

end;

procedure TFPreliminarRefinanciado.FormCreate(Sender: TObject);
begin
    cdsCRE301.RemoteServer := DM1.DCOM1;
    cdsCRE302.RemoteServer := DM1.DCOM1;
    cdsCRE303.RemoteServer := DM1.DCOM1;
    cdsCRE310.RemoteServer := DM1.DCOM1;
    cdsCRE302NAbono.RemoteServer := DM1.DCOM1;

    cdsCRE301.ProviderName := dm1.cdsqry.ProviderName;
    cdsCRE302.ProviderName := dm1.cdsqry.ProviderName;
    cdsCRE303.ProviderName := dm1.cdsqry.ProviderName;
    cdsCRE310.ProviderName := dm1.cdsqry.ProviderName;
    cdsCRE302NAbono.ProviderName := dm1.cdsqry.ProviderName;
end;

end.
 