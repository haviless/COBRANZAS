// Por HERNAN
unit COB703;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, Grids, DBGrids, wwclient,
  StdCtrls, ComCtrls;

type
  TFToolCre = class(TForm)
    pnlTool: TPanel;
    bbtnSigue: TfcShapeBtn;
    pb: TProgressBar;
    lb: TLabel;
    procedure bbtnSigueClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure SumaCuotas(ASOID:String);
    procedure ExtraeCuotas(ASOID:String);
    procedure BuscaCredito(CREDID:String);
    procedure ActualizaMontoCredito(CREDID:String);
    procedure PonerEstadoCuotaPagado(Asoid,Credid:String; NumCuota:Integer);
    procedure PonerFlagS(ASOID:String);
  public
    xcdsCuotas,xcdsCredito:TwwClientDataSet;
  end;

var
  FToolCre: TFToolCre;
  SQL, xEstId, xEstDe : String;

implementation

uses COBDM1, COB001;

{$R *.DFM}
procedure EjecutaSQL(cds:TwwClientDataSet;SQL:String);
begin
   cds.Close;
   cds.DataRequest(SQL);
   cds.Open;
end;

procedure TFToolCre.SumaCuotas(ASOID:String);
begin
  xEstid := DM1.DisplayDescrip('prvSQL','CRE113','ESTID','FLGTIPO='+quotedstr('3'),'ESTID');

  SQL:='SELECT SUM(CREMTO) SUMA '+
       'FROM CRE302 '+
       'WHERE ASOID='''+ASOID+''' '+
       'AND CREESTID='+QuotedStr(xEstid)+' '+
       'GROUP BY ASOID';
  EjecutaSQL(xcdsCuotas,SQL);
end;

procedure TFToolCre.ExtraeCuotas(ASOID:String);
begin
  xEstid := DM1.DisplayDescrip('prvSQL','CRE113','ESTID','FLGTIPO='+quotedstr('3'),'ESTID');

  SQL:='SELECT ASOID, CREESTID, CREDID, CRECUOTA, CREMTO '+
       'FROM CRE302 '+
       'WHERE ASOID='''+ASOID+''' '+
       'AND CREESTID='+QuotedStr(xEstid)+' '+
       'ORDER BY CREDID,CRECUOTA';
  EjecutaSQL(xcdsCuotas,SQL);
end;

procedure TFToolCre.BuscaCredito(CREDID:String);
begin
  SQL:='SELECT CREMTOTAL, CRECUOPAG, CRESDOACT, CREMTOPAG '+
       'FROM CRE301 '+
       'WHERE CREDID='''+CREDID+'''';
  EjecutaSQL(XcdsCredito,SQL);
end;

procedure TFToolCre.ActualizaMontoCredito(CREDID:String);
begin
  SQL:='UPDATE CRE301 SET '+
       'CRECUOPAG=CRECUOPAG+1,'+
       'CREMTOPAG=CREMTOPAG+'+xcdsCuotas.FieldByName('CREMTO').AsString+','+
       'CRESDOACT=CREMTOTAL-(CREMTOPAG+'+xcdsCuotas.FieldByName('CREMTO').AsString+')'+
       'WHERE CREDID='''+CREDID+'''';
  Dm1.DCOM1.AppServer.ejecutaSQL(SQL);
end;

procedure TFToolCre.PonerEstadoCuotaPagado(Asoid, Credid: String; NumCuota:Integer);
begin
  xEstid := DM1.DisplayDescrip('prvSQL','CRE113','ESTID, ESTDES','FLGTIPO='+quotedstr('Y'),'ESTID');
  xEstDe := DM1.cdsQry.FieldByName('ESTDES').AsString;
  SQL:='UPDATE CRE302 SET '+
       'CREESTID='+QuotedStr(xEstid)+', '+
       'CREESTADO='+QuotedStr(xEstDe)+' '+
       'WHERE ASOID='+QuotedStr(Asoid)+' '+
       'AND CREDID='''+Credid+''' '+
       'AND CRECUOTA='''+IntToStr(NumCuota)+'''';
  Dm1.DCOM1.AppServer.ejecutaSQL(SQL);
end;

procedure TFToolCre.PonerFlagS(ASOID:String);
begin
  SQL:='UPDATE CRE400 SET '+
       'FLAGACT=''S'' '+
       'WHERE ASOID='''+ASOID+'''';
  Dm1.DCOM1.AppServer.ejecutaSQL(SQL);
end;

procedure TFToolCre.bbtnSigueClick(Sender: TObject);
begin
  lb.Visible:=True;
  pb.Visible:=True;
  pb.Position:=0;
  pb.Min:=0;
  pb.Max:=DM1.cdsQry.RecordCount;
  DM1.cdsQry.First;
  while Not DM1.cdsQry.Eof do
  begin
    pb.Position:=pb.Position+1;
    SumaCuotas(DM1.cdsQry.FieldByName('ASOID').AsString);
    if xcdsCuotas.FieldByName('SUMA').AsFloat=DM1.cdsQry.FieldByName('CREMTO').AsFloat then
    begin
      ExtraeCuotas(DM1.cdsQry.FieldByName('ASOID').AsString);
      if xcdsCuotas.RecordCount>0 then
      begin
        xcdsCuotas.First;
        while Not xcdsCuotas.Eof do
        begin
          BuscaCredito(xcdsCuotas.FieldByName('CREDID').AsString);
          PonerEstadoCuotaPagado(DM1.cdsQry.FieldByName('ASOID').AsString,
                                 xcdsCuotas.FieldByName('CREDID').AsString,
                                 xcdsCuotas.FieldByName('CRECUOTA').AsInteger);
          ActualizaMontoCredito(xcdsCuotas.FieldByName('CREDID').AsString);
          xcdsCuotas.Next;
        end;//While
        PonerFlagS(DM1.cdsQry.FieldByName('ASOID').AsString);
      end;// if 2
    end;//if 1
    DM1.cdsQry.Next;
  end;
  SQL:='SELECT ASOID, CREMTO, FLAGACT FROM CRE400 WHERE FLAGACT=''N''';
  lb.Visible:=False;
  pb.Visible:=False;
  FPrincipal.Mtx.UsuarioSQL.Clear;
  FPrincipal.Mtx.UsuarioSQL.Add(SQL);
  FPrincipal.Mtx.NewQuery;
end;

procedure TFToolCre.FormCreate(Sender: TObject);
begin
 xcdsCuotas:=TwwClientDataSet.Create(Self);
 xcdsCuotas.RemoteServer:=DM1.DCOM1;
 xcdsCuotas.ProviderName:='dspQry';

 xcdsCredito:=TwwClientDataSet.Create(Self);
 xcdsCredito.RemoteServer:=DM1.DCOM1;
 xcdsCredito.ProviderName:='dspQry';
end;

procedure TFToolCre.FormDestroy(Sender: TObject);
begin
 xcdsCuotas.Close;
 xcdsCuotas.Free;
 xcdsCredito.Close;
 xcdsCredito.Free;
end;

end.



//          ShowMessage('Actualiza '+xcdsCuotas['CREDID']+' '
//          +DM1.cdsQry['ASOID']+' '+xcdsCuotas.FieldByName('CREMTO').AsString);


