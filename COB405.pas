unit COB405;
//GAR

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Wwdotdot, StdCtrls, Wwdbspin, Mask, wwdbedit,
  wwdblook, ExtCtrls, wwdbdatetimepicker, fcButton, fcImgBtn, fcShapeBtn,
  StrContainer, Db, Wwdatsrc, DBTables, Buttons, ComCtrls;

type
  TFActBcoEnv = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    dbdtpFecEnvio: TwwDBDateTimePicker;
    scFile: TStrContainer;
    tbOrigen: TTable;
    ds1: TwwDataSource;
    sbtnCancelar: TfcShapeBtn;
    dbgSitCtasBcos: TwwDBGrid;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    bbtnTranDBF: TBitBtn;
    bbtnTranTexto: TBitBtn;
    rgPrestamos: TRadioGroup;
    gbPorRuta: TGroupBox;
    dbeNomArch: TwwDBEdit;
    GroupBox2: TGroupBox;
    bbtnVerDbf: TBitBtn;
    bbtnVerTxt: TBitBtn;
    SaveDialog1: TSaveDialog;
    pbGenerar: TProgressBar;
    lblGenera: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure bbtnVerDbfClick(Sender: TObject);
    procedure sbtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure bbtnTranDBFClick(Sender: TObject);
    procedure bbtnTranTextoClick(Sender: TObject);
    procedure bbtnVerTxtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   FActBcoEnv: TFActBcoEnv;
   xDirect : String;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFActBcoEnv.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFActBcoEnv.bbtnCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TFActBcoEnv.bbtnVerDbfClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   DM1.cdsQry2.First;
   dbgSitCtasBcos.DataSource := DM1.dsQry2;
   Screen.Cursor := crDefault;
end;

procedure TFActBcoEnv.sbtnCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TFActBcoEnv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.tbOrigen.Close;
   DM1.cdsQry2.Filter   := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry3.Filter   := '';
   DM1.cdsQry3.Filtered := False;
   DM1.cdsQry3.IndexFieldNames := '';
   DM1.cdsQry3.Close;
end;

procedure TFActBcoEnv.FormActivate(Sender: TObject);
var
   Present: TDateTime;
   xSQL : String;
begin
   Present := Now;
   dbdtpFecEnvio.Date := Present;
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
end;

procedure TFActBcoEnv.bbtnTranDBFClick(Sender: TObject);
var
   //xCont, xItem, xLen, xC : Integer;
   xSQL, xName, xNomArch, xRegistro : String;
   xRegDbf : ttable;
   xRegDb  : tdatabase;
   xi : Integer;
   xStr, xxx : string;   
begin
   If Length(dbdtpFecEnvio.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese la Fecha de Envío', mtInformation, [mbOk], 0);
     dbdtpFecEnvio.SetFocus;
     Exit;
    end;

   SaveDialog1.DefaultExt := '*.DBF';
   SaveDialog1.Filter     := 'Archivos DBFs|*.DBF';
   SaveDialog1.FileName   := '';
   SaveDialog1.InitialDir := xDirect+DM1.wUsuario+'\';

   If not SaveDialog1.Execute Then Exit;

   Screen.Cursor := crHourGlass;
   dbeNomArch.Text    := SaveDialog1.FileName;   
   pbGenerar.Visible := True;
   lblGenera.Caption := 'Generando Archivo DBF';
   lblGenera.Visible := True;
   lblGenera.Refresh;   
   pbGenerar.Position := 1;
   If rgPrestamos.ItemIndex = 0 Then
    begin
     xSQL := 'Select Distinct A.ASOID, B.ASOCODMOD, B.ASOCODAUX,'
            +' B.ASOAPENOM, B.ASONCTA, B.SITCTA, B.ASODNI'
            +' From CRE302 A, APO201 B'
            +' Where A.ASOID = B.ASOID'
            +' And A.CREESTID = '+QuotedStr('02');
    end
   Else
    begin
     xSQL := 'Select A.ASOID, B.ASOCODMOD, B.ASOCODAUX,'
            +' B.ASOAPENOM, B.ASONCTA, B.SITCTA, B.ASODNI'
            +' From CRE302 A, APO201 B'
            +' Where A.ASOID = B.ASOID';
    end;

   DM1.cdsQry3.Filter   := '';
   DM1.cdsQry3.Filtered := False;
   DM1.cdsQry3.IndexFieldNames := '';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   DM1.cdsQry3.First;
   While Not DM1.cdsQry3.EOF do
    begin
     DM1.cdsQry2.Append;
     DM1.cdsQry2.FieldByName('COD_MOD').AsString := DM1.cdsQry3.FieldByName('ASOCODMOD').AsString;
     DM1.cdsQry2.FieldByName('NRO_VEZ').AsString := DM1.cdsQry3.FieldByName('ASOCODAUX').AsString;
     DM1.cdsQry2.FieldByName('NOM_GEN').AsString := DM1.cdsQry3.FieldByName('ASOAPENOM').AsString;
     DM1.cdsQry2.FieldByName('CUENTA').AsString  := DM1.cdsQry3.FieldByName('ASONCTA').AsString;
     DM1.cdsQry2.FieldByName('SITANT').AsString  := '';
     DM1.cdsQry2.FieldByName('SITACT').AsString  := DM1.cdsQry3.FieldByName('SITCTA').AsString;
     DM1.cdsQry2.FieldByName('LIBELE').AsString  := DM1.cdsQry3.FieldByName('ASODNI').AsString;
     DM1.cdsQry2.FieldByName('NOMB1').AsString   := '';
     DM1.cdsQry2.FieldByName('SIT').AsString     := '';
     DM1.cdsQry3.Next;
    end;

   //Para Generar Archivo DBF
   xRegDB   := TDatabase.Create(Self);
   xRegDBF  := TTable.Create(Self);
   xNomArch := SaveDialog1.FileName;
   Try
    xRegDB.Connected    := False;
    xRegDB.AliasName    := 'CtasBcos';
//    xRegDB.DatabaseName := 'xCtasBcos';
    xRegDB.DatabaseName := 'CtasBcos';
    xRegDB.LoginPrompt  := False;
    xRegDB.Connected    := True;

    xStr := Copy(SaveDialog1.FileName, 1, pos('\', SaveDialog1.FileName)-1);
    xRegDB.Directory := xStr;

    xRegDBF.Name         := 'xTablaDBF';
//    xRegDBF.DatabaseName := 'xCtasBcos';
    xRegDB.DatabaseName := 'CtasBcos';
    xRegDBF.TableName    := xNomArch;
    xRegDBF.TableType    := ttFoxPro;
    xRegDBF.Active       := False;

    If xRegDBF.Exists Then
     begin
      xxx:='000';
     end;

    With xRegDBF do
     begin
      With FieldDefs do
       begin
        Clear;
        For xi := 0 To DM1.cdsQry2.FieldCount-1 do
         begin
          With AddFieldDef do
           begin
            Name     := DM1.cdsQry2.Fields[xi].FieldName;
            DataType := DM1.cdsQry2.Fields[xi].datatype;
            Size     := DM1.cdsQry2.Fields[xi].size;
           end;
          DM1.cdsQry2.Next;
         end;
       end;
      CreateTable;
     end;

    xRegDBF.Open;

    DM1.cdsQry2.First;
    While not DM1.cdsQry2.EOF do
     begin
      xRegistro := '';
      xRegDBF.Insert;
      For xi := 0 To DM1.cdsQry2.FieldCount-1 do
       begin
        xName := DM1.cdsQry2.Fields[xi].FieldName;
        xRegDBF.FieldByName(xName).Value := DM1.cdsQry2.FieldByName(xName).Value;
       end;
     xRegDBF.Post;
     DM1.cdsQry2.Next;
    end;

    Try
//     xRegDBF.ApplyUpdates
    Except
    end;
   Finally
    xRegDBF.Free;
    xRegDB.Free;
   end;

   Beep;
   MessageDlg('Archivo Generado', mtCustom, [mbOk], 0);
   pbGenerar.Visible := False;
   lblGenera.Visible := False;
   Screen.Cursor := crDefault;
end;

procedure TFActBcoEnv.bbtnTranTextoClick(Sender: TObject);
var
   xSQL : String;
   xLinea : String;
begin
   If Length(dbdtpFecEnvio.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese la Fecha de Envío', mtInformation, [mbOk], 0);
     dbdtpFecEnvio.SetFocus;
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   lblGenera.Visible  := True;
   lblGenera.Caption  := 'Generando Archivo TXT';
   lblGenera.Refresh;   
   pbGenerar.Visible  := True;
   pbGenerar.Position := 1;
   If rgPrestamos.ItemIndex = 0 Then
    begin
     xSQL := 'Select Distinct A.ASOID, B.ASOCODMOD, B.ASOCODAUX,'
            +' B.ASOAPENOM, B.ASONCTA, B.SITCTA, B.ASODNI'
            +' From CRE302 A, APO201 B'
            +' Where A.CREESTID = '+QuotedStr('02')
            +' And A.ASOID = B.ASOID';
    end
   Else
    begin
     xSQL := 'Select A.ASOID, B.ASOCODMOD, B.ASOCODAUX,'
            +' B.ASOAPENOM, B.ASONCTA, B.SITCTA, B.ASODNI'
            +' From CRE302 A, APO201 B'
            +' Where A.ASOID = B.ASOID';
    end;

   DM1.cdsQry3.Filter   := '';
   DM1.cdsQry3.Filtered := False;
   DM1.cdsQry3.IndexFieldNames := '';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   pbGenerar.Max      := DM1.cdsQry3.RecordCount;

   pbGenerar.Position := pbGenerar.Position + 1;
   DM1.cdsQry3.First;
   While Not DM1.cdsQry3.EOF do
    begin
     xLinea := '';
     xLinea := DM1.cdsQry3.FieldByName('ASOCODMOD').AsString;
     xLinea := xLinea+DM1.cdsQry3.FieldByName('ASOCODAUX').AsString;
     xLinea := xLinea+DM1.cdsQry3.FieldByName('ASOAPENOM').AsString;
     xLinea := xLinea+DM1.cdsQry3.FieldByName('ASONCTA').AsString;
     xLinea := xLinea+'';
     xLinea := xLinea+DM1.cdsQry3.FieldByName('SITCTA').AsString;
     xLinea := xLinea+DM1.cdsQry3.FieldByName('ASODNI').AsString;
     xLinea := xLinea+'';
     xLinea := xLinea+'';
     scFile.Lines.Add(xLinea);
     DM1.cdsQry2.Append;
     DM1.cdsQry2.FieldByName('COD_MOD').AsString := DM1.cdsQry3.FieldByName('ASOCODMOD').AsString;
     DM1.cdsQry2.FieldByName('NRO_VEZ').AsString := DM1.cdsQry3.FieldByName('ASOCODAUX').AsString;
     DM1.cdsQry2.FieldByName('NOM_GEN').AsString := DM1.cdsQry3.FieldByName('ASOAPENOM').AsString;
     DM1.cdsQry2.FieldByName('CUENTA').AsString  := DM1.cdsQry3.FieldByName('ASONCTA').AsString;
     DM1.cdsQry2.FieldByName('SITANT').AsString  := '';
     DM1.cdsQry2.FieldByName('SITACT').AsString  := DM1.cdsQry3.FieldByName('SITCTA').AsString;
     DM1.cdsQry2.FieldByName('LIBELE').AsString  := DM1.cdsQry3.FieldByName('ASODNI').AsString;
     DM1.cdsQry2.FieldByName('NOMB1').AsString   := '';
     DM1.cdsQry2.FieldByName('SIT').AsString     := '';
     DM1.cdsQry3.Next;
     pbGenerar.Position := pbGenerar.Position + 1;
    end;

   SaveDialog1.DefaultExt := '*.TXT';
   SaveDialog1.Filter     := 'Archivos Txt|*.TXT';
   SaveDialog1.FileName   := '';
   SaveDialog1.InitialDir := xDirect+DM1.wUsuario+'\';

//   If not SaveDialog1.Execute Then Exit;

   If SaveDialog1.Execute Then
    begin
     dbeNomArch.Visible := True;
     dbeNomArch.Text    := SaveDialog1.FileName;
     scFile.Lines.SaveToFile(dbeNomArch.Text);
    end
   Else
    begin
     Screen.Cursor := crDefault;
     Exit;
    end;

   pbGenerar.Visible := False;
   lblGenera.Visible := False;
   Beep;
   MessageDlg('Archivo Generado', mtCustom, [mbOk], 0);
   Screen.Cursor := crDefault;
end;

procedure TFActBcoEnv.bbtnVerTxtClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   DM1.cdsQry2.First;
   dbgSitCtasBcos.DataSource := DM1.dsQry2;
   Screen.Cursor := crDefault;
end;

end.
