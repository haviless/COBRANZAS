// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB471
// Formulario           : FNueMesRep
// Fecha de Creación    : 02/01/2017
// Autor                : Isaac Revilla Chávez
// Objetivo             : Generación de nuevo mes de reprogramación.
// Actualizaciones      :
// HPC_201701           : Creación

unit COB471;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFNueMesRep = class(TForm)
    BitBtn3: TBitBtn;
    btnapertura: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    stanomesdeoroceso: TStaticText;
    stusuarioqueprocesa: TStaticText;
    stfechorproceso: TStaticText;
    procedure FormActivate(Sender: TObject);
    procedure btnaperturaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNueMesRep: TFNueMesRep;

implementation

uses COBDM1, COB449;

{$R *.dfm}

procedure TFNueMesRep.FormActivate(Sender: TObject);
Var xSql, xmespro, xmesproant :String;
begin
   stanomesdeoroceso.Caption := DM1.DesMes(StrToInt(Copy(DateToStr(DM1.FechaSys),4,2)),'N')+' / '+Copy(DateToStr(DM1.FechaSys),7,4);
   stusuarioqueprocesa.Caption := UpperCase(DM1.CrgDescrip('USERID = ' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   stfechorproceso.Caption := DateToStr(DM1.FechaSys)+' / '+DM1.HoraSys;
end;


procedure TFNueMesRep.btnaperturaClick(Sender: TObject);
var xSql, xcodidecar:String;
begin
   If MessageDlg('¿Seguro que desea aperturar un nuevo mes de proceso?', mtconfirmation,[mbYes,mbNo],0)=mrYes Then
   Begin
      xSql := 'SELECT TO_CHAR(SYSDATE,''YYYY'') ANO, LPAD(SUBSTR(MAX(IDEREP),5,5)+1,5,''0'') IDEREPCUO FROM COB_REP_CUO_MAE WHERE TO_CHAR(SYSDATE, ''YYYY'') = TO_CHAR(SYSDATE,''YYYY'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xcodidecar := DM1.cdsQry.FieldByName('ANO').AsString+Trim(DM1.cdsQry.FieldByName('IDEREPCUO').AsString);
      If Length(Trim(xcodidecar)) <> 9 Then
      Begin
         xcodidecar := DM1.cdsQry.FieldByName('ANO').AsString+'00001';
      End;
      xSql := 'INSERT INTO COB_REP_CUO_MAE(IDEREP, ANOMESREP, ESTREP, TIPREP, USUREG, FECREG)'
      +' VALUES ('+QuotedStr(xcodidecar)+', TO_CHAR(SYSDATE,''YYYYMM''), ''INICIO'',''DIF'','+QuotedStr(DM1.wUsuario)+', SYSDATE)';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      FRepCuotas.MueCab;
      FRepCuotas.MueDetGrupo;
      FRepCuotas.MueDetArchivo;
      MessageDlg('Se ha procedido a aperturar el mes de : '+DM1.DesMes(StrToInt(Copy(DateToStr(DM1.FechaSys),4,2)),'N')+' '+Copy(DateToStr(DM1.FechaSys),7,4), mtInformation,[mbOk],0);
   End;
   FNueMesRep.Close;
end;

end.
