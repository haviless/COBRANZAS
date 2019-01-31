unit CRE942;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, ExtCtrls ;

type
  TfAuditoria = class(TForm)
    GroupBox1: TGroupBox;
    dtgCampo: TwwDBGrid;
    BitSalir: TBitBtn;
    dtgMstCampos: TwwDBGrid;
    BitOfiDes: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtgCampoDblClick(Sender: TObject);
    procedure BitOfiDesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgMstCamposDblClick(Sender: TObject);
    procedure dtgMstCamposDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
    procedure LimpiaGrids();
  public
    { Public declarations }
  end;

var
  fAuditoria: TfAuditoria;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfAuditoria.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfAuditoria.FormCreate(Sender: TObject);
begin
dtgCampo.SetControlType('MARCAR',fctCheckBox, 'S;X');
end;

procedure TfAuditoria.dtgCampoDblClick(Sender: TObject);
var xSQL:String;
    xRegistro: TBookmark;
begin
   xRegistro:=DM1.cdsEgrCaja.GetBookmark;
   If DM1.cdsEgrCaja.FieldByName('MARCAR').AsString='S' Then
      xSQL:='UPDATE SIS001 SET MARCAR=NULL WHERE CAMPO='+QuotedStr(DM1.cdsEgrCaja.FieldByName('CAMPO').AsString)
   Else
      xSQL:='UPDATE SIS001 SET MARCAR=''S'' WHERE CAMPO='+QuotedStr(DM1.cdsEgrCaja.FieldByName('CAMPO').AsString);

   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   xSQL:='SELECT TABLA,GRUPO,CAMPO,COMPONENTE,CAMPODES,NVL(MARCAR,''X'') MARCAR FROM SIS001 WHERE CAMPO NOT IN (''TITULO'',''BOTON'') AND TABLA=''Asociados'' ORDER BY CAMPODES';
   DM1.cdsEgrCaja.Close; DM1.cdsEgrCaja.DataRequest(xSQL);  DM1.cdsEgrCaja.Open;
   DM1.cdsEgrCaja.GotoBookmark(xRegistro);
end;

procedure TfAuditoria.BitOfiDesClick(Sender: TObject);
var xSQL:String;
begin
   xSQL:='SELECT CAMPO FROM SIS001 WHERE MARCAR=''S'' ';
   DM1.cdsConsulta.Close;
   DM1.cdsConsulta.DataRequest(xSQL);
   DM1.cdsConsulta.Open;xSQL:='';
   If DM1.cdsConsulta.RecordCount > 0 Then
      Begin
          dtgMstCampos.Selected.Clear;
          DM1.cdsConsulta.First;
          While Not DM1.cdsConsulta.Eof Do
          Begin
              If DM1.cdsConsulta.RecordCount=1 Then
                 xSQL:= xSQL + DM1.cdsConsulta.FieldByName('CAMPO').AsString
              Else
                 If DM1.cdsConsulta.RecNo=DM1.cdsConsulta.RecordCount Then
                    xSQL:= xSQL + DM1.cdsConsulta.FieldByName('CAMPO').AsString
                 Else
                    xSQL:= xSQL + DM1.cdsConsulta.FieldByName('CAMPO').AsString+',';


              DM1.cdsConsulta.Next;
          End;
          xSQL:='SELECT USUARIO_AUD,REGISTRO_AUD,SECUENCIA,'+xSQL+' FROM APO201_LOG WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' ORDER BY REGISTRO_AUD DESC';
          DM1.cdsInt.Close;
          DM1.cdsInt.DataRequest(xSQL);
          DM1.cdsInt.Open;
      End
   Else
      Begin

          MessageDlg(' Debe Seleccionar Por Lo Menos Un Campo Para La Consulta', mtError, [mbOk], 0);
          Exit;
      End;
end;

procedure TfAuditoria.LimpiaGrids;
var xSQL:String;
begin
   xSQL:='SELECT * FROM APO201_LOG WHERE ASOID=''%@#$&*!*^$''  ';
   DM1.cdsInt.Close;
   DM1.cdsInt.DataRequest(xSQL);
   DM1.cdsInt.Open;
end;

procedure TfAuditoria.FormActivate(Sender: TObject);
begin
LimpiaGrids;
end;

procedure TfAuditoria.dtgMstCamposDblClick(Sender: TObject);
begin
ShowMessage('Usuario Auditado : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.cdsInt.FieldByName('USUARIO_AUD').AsString)),'USERTABLE','USERNOM'));
end;

procedure TfAuditoria.dtgMstCamposDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 If (Field.FieldName = 'USUARIO_AUD') Or (Field.FieldName = 'REGISTRO_AUD') Or (Field.FieldName = 'SECUENCIA') Then
     Begin
        dtgMstCampos.Canvas.Font.Color := clRed;
        dtgMstCampos.DefaultDrawDataCell(rect,Field,State);
     End;

end;

end.


