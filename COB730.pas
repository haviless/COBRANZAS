unit COB730;
//GAR

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, db, Wwdatsrc, DBTables, StrContainer,
  ExtCtrls, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask,
  wwdbedit, Buttons, ComCtrls, Wwdbdlg, FileCtrl, wwdblook, Spin,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport;

type
  TFActBcoRec = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    Bevel1: TBevel;
    bbtnVerDbf: TBitBtn;
    bbtnVerTxt: TBitBtn;
    Panel3: TPanel;
    gbPorRuta: TGroupBox;
    dbeName: TwwDBEdit;
    dbgSitCtasBcos: TwwDBGrid;
    Panel2: TPanel;
    dbdtpFecRecep: TwwDBDateTimePicker;
    scFile: TStrContainer;
    odLeer: TOpenDialog;
    tbOrigen: TTable;
    ds1: TwwDataSource;
    sbtnCancelar: TfcShapeBtn;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    btnRenom: TBitBtn;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    pbData: TProgressBar;
    lblTReg: TLabel;
    GroupBox1: TGroupBox;
    bbtnTranDBF: TBitBtn;
    bbtnTranTexto: TBitBtn;
    sd1: TSaveDialog;
    bbtnObservaciones: TfcShapeBtn;
    procedure bbtnVerDbfClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnVerTxtClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtnTranDBFClick(Sender: TObject);
    procedure btnRenomClick(Sender: TObject);
    procedure bbtnObservacionesClick(Sender: TObject);
    procedure sbtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   FActBcoRec: TFActBcoRec;
   xDirect, xFile, xFile1 : String;
   xFileOrigen, xFileDestino : String;   

implementation

uses COBDM1, COB740;

{$R *.DFM}

procedure TFActBcoRec.bbtnVerDbfClick(Sender: TObject);
var
   xSQL : String;
begin
   odLeer.Title      := 'Leer DBF para Vista Previa';
   odLeer.DefaultExt := '*.DBF';
   odLeer.Filter     := 'Archivos DBFs|*.DBF';
   odLeer.FileName   := '';
   odLeer.InitialDir := xDirect+DM1.wUsuario+'\';

   If Not odLeer.Execute Then Exit;

   Screen.Cursor := crHourGlass;

   dbeName.Text  := odLeer.FileName;
   xFile         := odLeer.FileName;
   xFile1        := odLeer.FileName;

   While Pos(':', odLeer.FileName ) > 0 do
    begin
     odLeer.FileName := Copy( odLeer.FileName, Pos( ':', odLeer.FileName )+1, Length( odLeer.FileName ));
    end;

   DM1.tbOrigen.Close;
   xSQL := 'Select * From '''+odLeer.FileName+'''';
   DM1.tbOrigen.DataRequest(xSQL);
   Try
    DM1.tbOrigen.Open;
    lblTReg.Caption := IntToStr( DM1.tbOrigen.RecordCount );
   Except
    Screen.Cursor := crDefault;
    Exit;
   end;

   dbgSitCtasBcos.DataSource := DM1.ds1;
   Screen.Cursor := crDefault;
end;

procedure TFActBcoRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.tbOrigen.Close;
   DM1.cdsQry2.Filter               := '';
   DM1.cdsQry2.Filtered             := False;
   DM1.cdsQry2.IndexFieldNames      := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry3.Filter               := '';
   DM1.cdsQry3.Filtered             := False;
   DM1.cdsQry3.IndexFieldNames      := '';
   DM1.cdsQry3.Close;
   DM1.cdsQry4.Filter               := '';
   DM1.cdsQry4.Filtered             := False;
   DM1.cdsQry4.IndexFieldNames      := '';
   DM1.cdsQry4.Close;
   DM1.cdsAso.Filter                := '';
   DM1.cdsAso.Filtered              := False;
   DM1.cdsAso.IndexFieldNames       := '';
   DM1.cdsAso.Close;
   DM1.cdsCtasBco.Filter            := '';
   DM1.cdsCtasBco.Filtered          := False;
   DM1.cdsCtasBco.IndexFieldNames   := '';
   DM1.cdsCtasBco.Close;
   DM1.cdsCuentaEst.Filter          := '';
   DM1.cdsCuentaEst.Filtered        := False;
   DM1.cdsCuentaEst.IndexFieldNames := '';
   DM1.cdsCuentaEst.Close;
end;

procedure TFActBcoRec.bbtnVerTxtClick(Sender: TObject);
var
   xSQL : String;                                                                   
begin
   odLeer.Title      := 'Leer Texto para Vista Previa';
   odLeer.DefaultExt := '*.TXT';
   odLeer.Filter     := 'Archivos TXT|*.TXT|Archivos LIS|*.LIS';
   odLeer.FileName   := '';
   odLeer.InitialDir := xDirect+DM1.wUsuario+'\';

   If Not odLeer.Execute Then Exit;

   Screen.Cursor := crHourGlass;

   dbeName.Text  := odLeer.FileName;

   While Pos(':', odLeer.FileName ) > 0 do
    begin
     odLeer.FileName := Copy( odLeer.FileName, Pos( ':', odLeer.FileName )+1, Length( odLeer.FileName ));
    end;

   DM1.tbOrigen.Close;
   xSQL := 'Select * From '''+odLeer.FileName+'''';
   DM1.tbOrigen.DataRequest(xSQL);
   Try
    DM1.tbOrigen.Open;
   Except
    Screen.Cursor := crDefault;
    Exit;
   end;

   dbgSitCtasBcos.DataSource := DM1.ds1;
end;

procedure TFActBcoRec.FormActivate(Sender: TObject);
var
   Present: TDateTime;
begin
   Present := Now;
   dbdtpFecRecep.Date := Present;
end;

procedure TFActBcoRec.bbtnTranDBFClick(Sender: TObject);
var
   xSQL, xWhere : String;
   xItem, xCont : Integer;
begin
//Leer la Data y Comparar con el APO201 y APO207 y APO208
   If Length(dbeName.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese el Nombre del Archivo Origen', mtInformation, [mbOk], 0);
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   xSQL := 'Select Cast(''AAAA'' As Varchar2(15)) ASOID,'
          +' Cast(''AAAA'' As Varchar2(90)) ASOAPENOM,'
          +' Cast(''AAAA'' As Varchar2(20)) ASONCTA,'
          +' Cast(''AAAA'' As Varchar2(3)) SITCTA,'
          +' Cast(''AAAA'' As Varchar2(10)) ASODNI From TGE901';

//Para Guardar los Datos que No Fueron Modificados
   DM1.cdsQry3.Filter   := '';
   DM1.cdsQry3.Filtered := False;
   DM1.cdsQry3.IndexFieldNames := '';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.Delete;

//Para Guardar los Datos que Fueron Modificados
   DM1.cdsQry4.Filter   := '';
   DM1.cdsQry4.Filtered := False;
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   DM1.cdsQry4.Delete;

   xSQL := 'Select ASOID, ASOAPENOM, ASONCTA, SITCTA, ASODNI From APO201';
   DM1.FiltraCDS(DM1.cdsAso, xSQL);

   xSQL := 'Select * From APO207';
   DM1.FiltraCDS(DM1.cdsCtasBco, xSQL);

   xSQL := 'Select * From APO208';
   DM1.FiltraCDS(DM1.cdsCuentaEst, xSQL);

   If DM1.tbOrigen.Active = False Then
    begin
     xFile := dbeName.Text;

     While Pos(':', xFile) > 0 do
      begin
//       odLeer.FileName := Copy( odLeer.FileName, Pos( ':', odLeer.FileName )+1, Length( odLeer.FileName ));
       xFile := Copy( xFile, Pos( ':', xFile)+1, Length( xFile ));
      end;

     DM1.tbOrigen.Close;
     xSQL := 'Select * From '''+xFile+'''';
     DM1.tbOrigen.DataRequest(xSQL);
     Try
      DM1.tbOrigen.Open;
      lblTReg.Caption := IntToStr( DM1.tbOrigen.RecordCount );
     Except
      Screen.Cursor := crDefault;
      Exit;
     end;

     dbgSitCtasBcos.DataSource := DM1.ds1;
     Screen.Cursor := crDefault;
    end;

//Para Guardar Asociados que No Existen
   xSQL := 'Select Cast(''AAAA'' As Varchar2(10)) COD_MOD,'
          +' Cast(''AAAA'' As Varchar2(2)) NRO_VEZ,'
          +' Cast(''AAAA'' As Varchar2(40)) NOM_GEN,'
          +' Cast(''AAAA'' As Varchar2(10)) CUENTA,'
          +' Cast(''AAAA'' As Varchar2(1)) SITANT,'
          +' Cast(''AAAA'' As Varchar2(1)) SITACT,'
          +' Cast(''AAAA'' As Varchar2(8)) LIBELE,'
          +' Cast(''AAAA'' As Varchar2(35)) NOMB1,'
          +' Cast(''AAAA'' As Varchar2(1)) SIT From TGE901';

   DM1.cdsQry2.Filter   := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;
   DM1.cdsQry2.Delete;

   xSQL := 'Select COUNT(ARCHIVO) TOTAL FROM COB334'
          +' Where ARCHIVO ='+Quotedstr(xFile);

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;

   If DM1.cdsQry4.FieldByName('TOTAL').AsFloat > 0 Then
    begin
     Beep;
     MessageDlg('La Data ya fué Transferida', mtInformation, [mbOk], 0);
     Exit;
    end
   Else
    begin
     xSQL := 'Select * From COB334';
     DM1.FiltraCDS(DM1.cdsQry4, xSQL);
    end;

   xCont := 0;
   pbData.Max      := DM1.tbOrigen.RecordCount;
   pbData.Position := 0;
   pbData.Min      := 0;
   pbData.Refresh;

//   DM1.tbOrigen.DisableControls;
   DM1.tbOrigen.First;
   While Not DM1.tbOrigen.EOF do
    begin
     xWhere := 'ASOAPENOM Like '+QuotedStr(DM1.tbOrigen.FieldByName('NOM_GEN').AsString+'%');
     If Length(DM1.DisplayDescrip('prvASO', 'APO201', 'ASOID, ASOAPENOM, ASONCTA, ASODNI, SITCTA', xWhere, 'ASOAPENOM')) > 0 Then
      begin
       If (DM1.cdsAso.FieldByName('ASONCTA').AsString <> DM1.tbOrigen.FieldByName('CUENTA').AsString) Or
          (DM1.cdsAso.FieldByName('SITCTA').AsString  <> DM1.tborigen.FieldByName('SIT').AsString) Then
        begin
         //Para los Asociados No Modificados
         DM1.cdsQry3.Append;
         DM1.cdsQry3.FieldByName('ASOID').AsString     := DM1.cdsAso.FieldByName('ASOID').AsString;
         DM1.cdsQry3.FieldByName('ASOAPENOM').AsString := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
         DM1.cdsQry3.FieldByName('ASONCTA').AsString   := DM1.cdsAso.FieldByName('ASONCTA').AsString;
         DM1.cdsQry3.FieldByName('SITCTA').AsString    := DM1.cdsAso.FieldByName('SITCTA').AsString;
         DM1.cdsQry3.FieldByName('ASODNI').AsString    := DM1.cdsAso.FieldByName('ASODNI').AsString;
         //Para los Asociado Modificados
         DM1.cdsQry4.Append;
         DM1.cdsQry4.FieldByName('ASOID').AsString     := DM1.cdsAso.FieldByName('ASOID').AsString;
         DM1.cdsQry4.FieldByName('ASOAPENOM').AsString := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
         DM1.cdsQry4.FieldByName('ASONCTA').AsString   := DM1.tbOrigen.FieldByName('CUENTA').AsString;
         DM1.cdsQry4.FieldByName('SITCTA').AsString    := DM1.tbOrigen.FieldByName('SIT').AsString;
         DM1.cdsQry4.FieldByName('ASODNI').AsString    := DM1.cdsAso.FieldByName('ASODNI').AsString;

         DM1.cdsAso.Edit;
         DM1.cdsAso.FieldByName('ASONCTA').AsString    := DM1.tbOrigen.FieldByName('CUENTA').AsString;
         DM1.cdsAso.FieldByName('SITCTA').AsString     := DM1.tbOrigen.FieldByName('SIT').AsString;
         //Para Adicionar en el APO207
         xWhere := 'ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
                  +' And BANCOID ='+QuotedStr('04')
                  +' And ASONCTA ='+QuotedStr(DM1.tbOrigen.FieldByName('CUENTA').AsString);

         If Length(DM1.DisplayDescrip('prvSQL', 'APO207', 'ASOID, BANCOID, ASONCTA, SITCTA', xWhere, 'ASOID')) = 0 Then
          begin
           DM1.cdsCtasBco.Append;
           DM1.cdsCtasBco.FieldByName('ASOID').AsString     := DM1.cdsAso.FieldByName('ASOID').AsString;
           DM1.cdsCtasBco.FieldByName('ASOCODMOD').AsString := DM1.tbOrigen.FieldByName('COD_MOD').AsString;
           DM1.cdsCtasBco.FieldByName('ASOCODAUX').AsString := DM1.StrZero(DM1.tbOrigen.FieldByName('NRO_VEZ').AsString, 2);
           DM1.cdsCtasBco.FieldByName('ASOAPENOM').AsString := DM1.tbOrigen.FieldByName('NOM_GEN').AsString;
           DM1.cdsCtasBco.FieldByName('ASONCTA').AsString   := DM1.tbOrigen.FieldByName('CUENTA').AsString;
           DM1.cdsCtasBco.FieldByName('SITCTA').AsString    := DM1.tbOrigen.FieldByName('SIT').AsString;
           DM1.cdsCtasBco.FieldByName('USUARIO').AsString   := DM1.wUsuario;
           DM1.cdsCtasBco.FieldByName('FREG').AsDateTime    := Date+Time;
           DM1.cdsCtasBco.FieldByName('HREG').AsDateTime    := Date;
          end
         Else
          begin
           If DM1.cdsQry.FieldByName('SITCTA').AsString <> DM1.tbOrigen.FieldByName('SIT').AsString Then
            begin
             DM1.cdsCtasBco.Edit;
             DM1.cdsCtasBco.FieldByName('SITCTA').AsString := DM1.tbOrigen.FieldByName('SIT').AsString;
             DM1.cdsCuentaEst.Append;
             DM1.cdsCuentaEst.FieldByName('ASOID').AsString   := DM1.cdsAso.FieldByName('ASOID').AsString;
             DM1.cdsCuentaEst.FieldByName('BANCOID').AsString := '04';
             DM1.cdsCuentaEst.FieldByName('ASONCTA').AsString := DM1.tbOrigen.FieldByName('CUENTA').AsString;
             DM1.cdsCuentaEst.FieldByName('SITCTA').AsString  := DM1.tbOrigen.FieldByName('SIT').AsString;
             DM1.cdsCuentaEst.FieldByName('USUARIO').AsString := DM1.wUsuario;
             DM1.cdsCuentaEst.FieldByName('FREG').AsDateTime  := Date+Time;
             DM1.cdsCuentaEst.FieldByName('HREG').AsDateTime  := Date;
            end;
          end;
        end
       Else //Si el Número de Cuenta y la Situación Son Iguales 
        begin
        end;
      end
     Else //Si No encuentra el Asociado
      begin
      end;
     DM1.tbOrigen.Next;
     xCont := xCont + 1;
     If (xCont = 20000) Or (DM1.tbOrigen.EOF) Then
      begin
      //Actualiza APO201
      cdsPost(DM1.cdsAso);
      DM1.cdsAso.Post;
      DM1.AplicaDatos(DM1.cdsAso, 'ASOCIADOS');
      //Actualiza APO207
      cdsPost(DM1.cdsCtasBco);
      DM1.cdsCtasBco.Post;
      DM1.AplicaDatos(DM1.cdsCtasBco, 'CTASBCO');
      //Actualiza APO208
      cdsPost(DM1.cdsCuentaEst);
      DM1.cdsCuentaEst.Post;
      DM1.AplicaDatos(DM1.cdsCuentaEst, 'DETCUENTAS');
       xCont := 0;
      end;
     pbData.Position := pbData.Position+1;
    end;

{   DM1.tbOrigen.First;
   While Not DM1.tbOrigen.EOF do
    begin
     xWhere := 'ASOAPENOM Like '+QuotedStr(DM1.tbOrigen.FieldByName('NOM_GEN').AsString+'%');
     If Length(DM1.DisplayDescrip('prvASO', 'APO201', 'ASOID, ASOAPENOM, ASONCTA, ASODNI, SITCTA', xWhere, 'ASOAPENOM')) > 0 Then
      begin //Si el Nro Cuenta del Archivo es Igual al Nro Cuenta del APO201
       If DM1.cdsAso.FieldByName('ASONCTA').AsString = DM1.tbOrigen.FieldByName('CUENTA').AsString Then
        begin //Si la Situación del Archivo es Igual a la Situación del APO201
         If DM1.cdsAso.FieldByName('SITCTA').AsString = DM1.tbOrigen.FieldByName('SIT').AsString Then
          begin
           //Para Adicionar en el APO207
           xWhere := 'ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
                    +' And BANCOID ='+QuotedStr('04')
                    +' And ASONCTA ='+QuotedStr(DM1.tbOrigen.FieldByName('CUENTA').AsString);

           If Length(DM1.DisplayDescrip('prvSQL', 'APO207', 'ASOID, BANCOID, ASONCTA, SITCTA', xWhere, 'ASOID')) = 0 Then
            begin
             DM1.cdsCtasBco.Append;
             DM1.cdsCtasBco.FieldByName('ASOID').AsString     := DM1.cdsAso.FieldByName('ASOID').AsString;
             DM1.cdsCtasBco.FieldByName('ASOCODMOD').AsString := DM1.tbOrigen.FieldByName('COD_MOD').AsString;
             DM1.cdsCtasBco.FieldByName('ASOCODAUX').AsString := DM1.StrZero(DM1.tbOrigen.FieldByName('NRO_VEZ').AsString, 2);
             DM1.cdsCtasBco.FieldByName('ASOAPENOM').AsString := DM1.tbOrigen.FieldByName('NOM_GEN').AsString;
             DM1.cdsCtasBco.FieldByName('ASONCTA').AsString   := DM1.tbOrigen.FieldByName('CUENTA').AsString;
             DM1.cdsCtasBco.FieldByName('SITCTA').AsString    := DM1.tbOrigen.FieldByName('SIT').AsString;
             DM1.cdsCtasBco.FieldByName('USUARIO').AsString   := DM1.wUsuario;
             DM1.cdsCtasBco.FieldByName('FREG').AsDateTime    := Date+Time;
             DM1.cdsCtasBco.FieldByName('HREG').AsDateTime    := Date;
            end
           Else
            begin
             If DM1.cdsQry.FieldByName('SITCTA').AsString <> DM1.tbOrigen.FieldByName('SIT').AsString Then
              begin
               DM1.cdsCtasBco.Edit;
               DM1.cdsCtasBco.FieldByName('SITCTA').AsString := DM1.tbOrigen.FieldByName('SIT').AsString;
               DM1.cdsCuentaEst.Append;
               DM1.cdsCuentaEst.FieldByName('ASOID').AsString   := DM1.cdsAso.FieldByName('ASOID').AsString;
               DM1.cdsCuentaEst.FieldByName('BANCOID').AsString := '04';
               DM1.cdsCuentaEst.FieldByName('ASONCTA').AsString := DM1.tbOrigen.FieldByName('CUENTA').AsString;
               DM1.cdsCuentaEst.FieldByName('SITCTA').AsString  := DM1.tbOrigen.FieldByName('SIT').AsString;
               DM1.cdsCuentaEst.FieldByName('USUARIO').AsString := DM1.wUsuario;
               DM1.cdsCuentaEst.FieldByName('FREG').AsDateTime  := Date+Time;
               DM1.cdsCuentaEst.FieldByName('HREG').AsDateTime  := Date;
              end;
            end;
          end
         Else //Si la Situación del Archivo es Diferente a la Situación del APO201
          begin
           DM1.cdsAso.Edit;
           DM1.cdsAso.FieldByName('SITCTA').AsString := DM1.tbOrigen.FieldByName('SIT').AsString;
           //Para Adicionar en el APO207
           xWhere := 'ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
                    +' And BANCOID ='+QuotedStr('04')
                    +' And ASONCTA ='+QuotedStr(DM1.tbOrigen.FieldByName('CUENTA').AsString);

           If Length(DM1.DisplayDescrip('prvSQL', 'APO207', 'ASOID, BANCOID, ASONCTA, SITCTA', xWhere, 'ASOID')) = 0 Then
            begin
             DM1.cdsCtasBco.Append;
             DM1.cdsCtasBco.FieldByName('ASOID').AsString     := DM1.cdsAso.FieldByName('ASOID').AsString;
             DM1.cdsCtasBco.FieldByName('ASOCODMOD').AsString := DM1.tbOrigen.FieldByName('COD_MOD').AsString;
             DM1.cdsCtasBco.FieldByName('ASOCODAUX').AsString := DM1.StrZero(DM1.tbOrigen.FieldByName('NRO_VEZ').AsString, 2);
             DM1.cdsCtasBco.FieldByName('ASOAPENOM').AsString := DM1.tbOrigen.FieldByName('NOM_GEN').AsString;
             DM1.cdsCtasBco.FieldByName('ASONCTA').AsString   := DM1.tbOrigen.FieldByName('CUENTA').AsString;
             DM1.cdsCtasBco.FieldByName('SITCTA').AsString    := DM1.tbOrigen.FieldByName('SIT').AsString;
             DM1.cdsCtasBco.FieldByName('USUARIO').AsString   := DM1.wUsuario;
             DM1.cdsCtasBco.FieldByName('FREG').AsDateTime    := Date+Time;
             DM1.cdsCtasBco.FieldByName('HREG').AsDateTime    := Date;
            end
           Else
            begin
             If DM1.cdsQry.FieldByName('SITCTA').AsString <> DM1.tbOrigen.FieldByName('SIT').AsString Then
              begin
               DM1.cdsCtasBco.Edit;
               DM1.cdsCtasBco.FieldByName('SITCTA').AsString := DM1.tbOrigen.FieldByName('SIT').AsString;
               DM1.cdsCuentaEst.Append;
               DM1.cdsCuentaEst.FieldByName('ASOID').AsString   := DM1.cdsAso.FieldByName('ASOID').AsString;
               DM1.cdsCuentaEst.FieldByName('BANCOID').AsString := '04';
               DM1.cdsCuentaEst.FieldByName('ASONCTA').AsString := DM1.tbOrigen.FieldByName('CUENTA').AsString;
               DM1.cdsCuentaEst.FieldByName('SITCTA').AsString  := DM1.tbOrigen.FieldByName('SIT').AsString;
               DM1.cdsCuentaEst.FieldByName('USUARIO').AsString := DM1.wUsuario;
               DM1.cdsCuentaEst.FieldByName('FREG').AsDateTime  := Date+Time;
               DM1.cdsCuentaEst.FieldByName('HREG').AsDateTime  := Date;
              end;
            end;
          end;
        end
       Else //Si el Nro Cuenta del Archivo es Diferente al Nro Cuenta del APO201
        begin
         DM1.cdsAso.Edit;
         DM1.cdsAso.FieldByName('ASONCTA').AsString := DM1.tbOrigen.FieldByName('CUENTA').AsString;
         //Para Adicionar en el APO207
         //Para Adicionar en el APO207
         xWhere := 'ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
                  +' And BANCOID ='+QuotedStr('04')
                  +' And ASONCTA ='+QuotedStr(DM1.tbOrigen.FieldByName('CUENTA').AsString);

         If Length(DM1.DisplayDescrip('prvSQL', 'APO207', 'ASOID, BANCOID, ASONCTA, SITCTA', xWhere, 'ASOID')) = 0 Then
          begin
           DM1.cdsCtasBco.Append;
           DM1.cdsCtasBco.FieldByName('ASOID').AsString     := DM1.cdsAso.FieldByName('ASOID').AsString;
           DM1.cdsCtasBco.FieldByName('ASOCODMOD').AsString := DM1.tbOrigen.FieldByName('COD_MOD').AsString;
           DM1.cdsCtasBco.FieldByName('ASOCODAUX').AsString := DM1.StrZero(DM1.tbOrigen.FieldByName('NRO_VEZ').AsString, 2);
           DM1.cdsCtasBco.FieldByName('ASOAPENOM').AsString := DM1.tbOrigen.FieldByName('NOM_GEN').AsString;
           DM1.cdsCtasBco.FieldByName('ASONCTA').AsString   := DM1.tbOrigen.FieldByName('CUENTA').AsString;
           DM1.cdsCtasBco.FieldByName('SITCTA').AsString    := DM1.tbOrigen.FieldByName('SIT').AsString;
           DM1.cdsCtasBco.FieldByName('USUARIO').AsString   := DM1.wUsuario;
           DM1.cdsCtasBco.FieldByName('FREG').AsDateTime    := Date+Time;
           DM1.cdsCtasBco.FieldByName('HREG').AsDateTime    := Date;
          end
         Else
          begin
           If DM1.cdsQry.FieldByName('SITCTA').AsString <> DM1.tbOrigen.FieldByName('SIT').AsString Then
            begin
             DM1.cdsCtasBco.Edit;
             DM1.cdsCtasBco.FieldByName('SITCTA').AsString := DM1.tbOrigen.FieldByName('SIT').AsString;
             DM1.cdsCuentaEst.Append;
             DM1.cdsCuentaEst.FieldByName('ASOID').AsString   := DM1.cdsAso.FieldByName('ASOID').AsString;
             DM1.cdsCuentaEst.FieldByName('BANCOID').AsString := '04';
             DM1.cdsCuentaEst.FieldByName('ASONCTA').AsString := DM1.tbOrigen.FieldByName('CUENTA').AsString;
             DM1.cdsCuentaEst.FieldByName('SITCTA').AsString  := DM1.tbOrigen.FieldByName('SIT').AsString;
             DM1.cdsCuentaEst.FieldByName('USUARIO').AsString := DM1.wUsuario;
             DM1.cdsCuentaEst.FieldByName('FREG').AsDateTime  := Date+Time;
             DM1.cdsCuentaEst.FieldByName('HREG').AsDateTime  := Date;
            end;
          end;
        end;
      end
     Else //Si el Asociado No Existe
      begin
       DM1.cdsQry2.Append;
       DM1.cdsQry2.FieldByName('COD_MOD').AsString := DM1.tbOrigen.FieldByName('COD_MOD').AsString;
       DM1.cdsQry2.FieldByName('NRO_VEZ').AsString := DM1.tbOrigen.FieldByName('NRO_VEZ').AsString;
       DM1.cdsQry2.FieldByName('NOM_GEN').AsString := DM1.tbOrigen.FieldByName('NOM_GEN').AsString;
       DM1.cdsQry2.FieldByName('CUENTA').AsString  := DM1.tbOrigen.FieldByName('CUENTA').AsString;
       DM1.cdsQry2.FieldByName('SITANT').AsString  := DM1.tbOrigen.FieldByName('SITANT').AsString;
       DM1.cdsQry2.FieldByName('SITACT').AsString  := DM1.tbOrigen.FieldByName('SITACT').AsString;
       DM1.cdsQry2.FieldByName('LIBELE').AsString  := DM1.tbOrigen.FieldByName('LIBELE').AsString;
       DM1.cdsQry2.FieldByName('NOMB1').AsString   := DM1.tbOrigen.FieldByName('NOMB1').AsString;
       DM1.cdsQry2.FieldByName('SIT').AsString     := DM1.tbOrigen.FieldByName('SIT').AsString;
      end;
     DM1.tbOrigen.Next;
     xCont := xCont + 1;
     If (xCont = 20000) Or (DM1.tbOrigen.EOF) Then
      begin
      //Actualiza APO201
      cdsPost(DM1.cdsAso);
      DM1.cdsAso.Post;
      DM1.AplicaDatos(DM1.cdsAso, 'ASOCIADOS');
      //Actualiza APO207
      cdsPost(DM1.cdsCtasBco);
      DM1.cdsCtasBco.Post;
      DM1.AplicaDatos(DM1.cdsCtasBco,'CTASBCO');
      //Actualiza APO208
      cdsPost(DM1.cdsCuentaEst);
      DM1.cdsCuentaEst.Post;
      DM1.AplicaDatos(DM1.cdsCuentaEst, 'DETCUENTAS');
       xCont := 0;
      end;
     pbData.Position := pbData.Position+1;
    end;
}

   xSQL := 'Select MAX(ITEM) ITEM From COB334';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger+1;

   DM1.cdsQry4.Insert;
   DM1.cdsQry4.FieldByname('ITEM').AsInteger     := xItem;
   DM1.cdsQry4.FieldByname('ARCHIVO').AsString   := odLeer.FileName;
   DM1.cdsQry4.FieldByname('USUARIO').AsString   := DM1.wUsuario;
   DM1.cdsQry4.FieldByname('FREG').AsDateTime    := Date;
   DM1.cdsQry4.FieldByname('FL_BAJADO').AsString := 'S';
   DM1.AplicaDatos( DM1.cdsQry4, '' );
//   DM1.tbOrigen.EnableControls;
   bbtnObservaciones.Enabled := True;
   Screen.Cursor := crDefault;
   Beep;
   MessageDlg('Datos Transferidos', mtCustom, [mbOk], 0);
   bbtnObservaciones.Enabled := True;
end;

procedure TFActBcoRec.btnRenomClick(Sender: TObject);
begin
   If Length(dbeName.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese el Nombre del Archivo a Renombrar', mtInformation, [mbOk], 0);
     dbeName.SetFocus;
     Exit;
    end
   Else
    begin
     odLeer.Title      := 'Renombrar Archivo';
     odLeer.DefaultExt := '*.DBF';
     odLeer.Filter     := 'Archivos DFF|*.DBF';
     odLeer.FileName   := '';
     odLeer.InitialDir := xDirect+DM1.wUsuario+'\';

     If not odLeer.Execute Then Exit;

     Screen.Cursor := crHourGlass;
     xFileOrigen  := xFile1;
     xFileDestino := odLeer.FileName;

     While Pos('.', xFileOrigen ) > 0 do
      begin
       xFileOrigen := Copy( xFileOrigen, Pos( '.', xFileOrigen )+1, Length( xFileOrigen ));
      end;

     xFileOrigen := xFile1;

     If FileExists(xFileDestino) Then
      begin
      //if not Question(Caption, 'El Archivo  '+xFile+'  ya Existe '+#13+#13+'Desea Sobreescribir ') then
      //begin
       Screen.Cursor := crDefault;
       Beep;
       MessageDlg('El Archivo  '+xFile+'  ya Existe '+#13+#13+' No Puede Continuar con la Operación ', mtInformation, [mbOk], 0);
       Exit;
      //end;
      end;

     RenameFile((PChar(xFileOrigen)),(PChar(xFileDestino)));
     dbeName.Text := xFileDestino

    end;
   Screen.Cursor := crDefault;
   Beep;
   MessageDlg('Ok : Archivo Renombrado', mtCustom, [mbOk], 0);
end;

procedure TFActBcoRec.bbtnObservacionesClick(Sender: TObject);
begin
   FObservaciones := TFObservaciones.Create(Self);
   With FObservaciones do
    Try
     ShowModal;
    Finally
     Free;
    end;
end;

procedure TFActBcoRec.sbtnCancelarClick(Sender: TObject);
begin
   Close;
end;

end.
