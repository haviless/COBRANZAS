unit COBD019;
// Inicio Uso Estándares: 01/08/2011
// Unidad               : COBD019
// Formulario           : fProcReversion100DiferidosDet
// Fecha de Creación    : 03/03/2017
// Autor                : Ricardo Medina Z.
// Objetivo             : Reversión de los diferimientos de créditos 100% diferidos
// Actualizaciones      :
//HPC_201706_COB        : Creación del Formulario
//HPC_201709_COB        : Uso de CARTERA NO OFICIAL
//HPC_201714_COB        : Mejora en el proceso de generación de cartera de 100% diferidos
//Inicio HPC_201706_COB       }
//Reversión de los diferimientos de créditos 100% diferidos
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  DBGrids, ExtCtrls;

type
  TfProcReversion100DiferidosDet = class(TForm)
    grbDetalle: TGroupBox;
    CDSDETREV100DIF: TClientDataSet;
    DSDETREV100DIF: TDataSource;
    DBGDETREV100DIF: TwwDBGrid;
    dtgData: TDBGrid;
    Label3: TLabel;
    Panel2: TPanel;
    edtNumeroReversion: TEdit;
    grbPie: TGroupBox;
    btnProcRev: TBitBtn;
    grbmarca: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnMarca: TBitBtn;
    edtDias: TEdit;
    chkDesmarca: TCheckBox;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    Label8: TLabel;
    Panel4: TPanel;
    edtmarca: TEdit;
    pnlDescripcion: TPanel;
    Shape1: TShape;
    edtdescripcion: TEdit;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    btnSalirgrabacion: TButton;
    chksolomarcados2: TCheckBox;
    lblESTADO: TLabel;
    btnImprime: TSpeedButton;
    btnExcel: TBitBtn;
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
    cbTipoAso: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    edtcrerev: TEdit;
    chkRevertidos: TCheckBox;
//Final HPC_201714_COB
    procedure BitSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGDETREV100DIFDblClick(Sender: TObject);
    procedure btnMarcaClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure edtDiasKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure btnSalirgrabacionClick(Sender: TObject);
    procedure edtdescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure chksolomarcados2Click(Sender: TObject);
    procedure btnProcRevClick(Sender: TObject);
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
    procedure DBGDETREV100DIFCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
    procedure chkRevertidosClick(Sender: TObject);
    procedure chkDesmarcaClick(Sender: TObject);
//Final HPC_201714_COB
//Final HPC_201709_COB
  private
    { Private declarations }
    procedure cargadatos();
    Function regismarcados():Boolean;
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
    procedure filtradata();
//Final HPC_201714_COB
  public
    { Public declarations }
    vsumaregistros: Integer;
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
    vsumacrerev:Integer;
    xflag,xrev:String;
//Final HPC_201714_COB    
    numlineas : Integer;
  end;

var
  fProcReversion100DiferidosDet: TfProcReversion100DiferidosDet;

implementation

uses COBDM1,COBD018,COB524A;

{$R *.dfm}

procedure TfProcReversion100DiferidosDet.BitSalirClick(Sender: TObject);
begin

 If length(trim(edtNumeroReversion.Text))=0 Then
 Begin
 If MessageDlg('No grabó la información de 100% Diferidos, está seguro(a) de salir',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
 Begin
   Close;
 End
 End
 Else
 Begin
   If not regismarcados Then
   Begin
     If MessageDlg('¿Está seguro(a) de salir sin grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin
       Close;
     End
   End
   Else Close;
 End;


end;

procedure TfProcReversion100DiferidosDet.FormCreate(Sender: TObject);
begin

   DBGDETREV100DIF.Selected.Clear;
   DBGDETREV100DIF.Selected.Add('FLAG'#9'2'#9' '#9#9);
   DBGDETREV100DIF.Selected.Add('REGID'#9'3'#9'N°'#9#9);
   DBGDETREV100DIF.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Modular'#9#9);
   DBGDETREV100DIF.Selected.Add('CALCAR'#9'10'#9'Calificación'#9#9);
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
   DBGDETREV100DIF.Selected.Add('CAROFI'#9'1'#9'Cartera~Oficial'#9#9);   
//Final HPC_201709_COB
   DBGDETREV100DIF.Selected.Add('INTMAY65'#9'10'#9'Interinos~Mayores 65'#9#9);
   DBGDETREV100DIF.Selected.Add('ASOAPENOM'#9'40'#9'Apellidos y Nombres'#9#9);
   DBGDETREV100DIF.Selected.Add('ASOTIPID'#9'2'#9'Tip.~Asoc.~Cre.'#9#9);
   DBGDETREV100DIF.Selected.Add('CREDID'#9'15'#9'Num.Crédito'#9#9);
   DBGDETREV100DIF.Selected.Add('CREESTADO'#9'15'#9'Estado'#9'F'#9);
   DBGDETREV100DIF.Selected.Add('MONPROV'#9'10'#9'Importe~Provisión'#9#9);
   DBGDETREV100DIF.Selected.Add('NUMCUOBLO'#9'10'#9'Cuotas~Bloqueadas'#9#9);
   DBGDETREV100DIF.Selected.Add('MONSALCAP'#9'10'#9'Imp.~Saldo~Capital'#9#9);
   DBGDETREV100DIF.Selected.Add('MONSALTOT'#9'10'#9'Imp.~Saldo~Total'#9#9);
   DBGDETREV100DIF.Selected.Add('DIAATRANTREV'#9'10'#9'Días atraso~antes~reversión'#9#9);
   DBGDETREV100DIF.Selected.Add('MONVENANTREV'#9'10'#9'Imp. vencido~no diferido~ant. reversión'#9#9);
   DBGDETREV100DIF.Selected.Add('DIAATRDESREV'#9'10'#9'Días atraso~después~reversión'#9#9);
   DBGDETREV100DIF.Selected.Add('MONVENDESREV'#9'10'#9'Imp. vencido~no diferido~des. reversión'#9#9);
   DBGDETREV100DIF.Selected.Add('USUGENDAT'#9'15'#9'Usuario~genera~data'#9#9);
   DBGDETREV100DIF.Selected.Add('FECGENDAT'#9'10'#9'Fecha~genera~data'#9#9);
   DBGDETREV100DIF.Selected.Add('USUDEPDAT'#9'15'#9'Usuario~depura~data'#9#9);
   DBGDETREV100DIF.Selected.Add('FECDEPDAT'#9'10'#9'Fecha~depura~data'#9#9);
   DBGDETREV100DIF.Selected.Add('USUREVDIF'#9'20'#9'Usuario~revierte~diferido'#9#9);
   DBGDETREV100DIF.Selected.Add('FECREVDIF'#9'10'#9'Fecha~revierte~diferido'#9#9);

   TNumericField(CDSDETREV100DIF.FieldByName('MONPROV')).DisplayFormat      := '###,###,##0.00';
   TNumericField(CDSDETREV100DIF.FieldByName('MONSALCAP')).DisplayFormat    := '###,###,##0.00';
   TNumericField(CDSDETREV100DIF.FieldByName('MONSALTOT')).DisplayFormat    := '###,###,##0.00';
   TNumericField(CDSDETREV100DIF.FieldByName('MONVENANTREV')).DisplayFormat := '###,###,##0.00';
   TNumericField(CDSDETREV100DIF.FieldByName('MONVENDESREV')).DisplayFormat := '###,###,##0.00';
    Cargadatos;

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
   If lblESTADO.Caption='CERRADO'   Then
//Final HPC_201714_COB
   Begin
     lblESTADO.Font.Color := clRed;
     btnProcRev.Enabled := False;
     btnMarca.Enabled   := False;
     BitGrabar.Enabled  := False;
     grbmarca.Enabled   := False;
   End
   Else
   Begin
     lblESTADO.Font.Color := clGreen;
     btnProcRev.Enabled := True;
     btnMarca.Enabled   := True;
     BitGrabar.Enabled  := True;
     grbmarca.Enabled   := True;
   End;

   CDSDETREV100DIF.First;
   DBGDETREV100DIF.DataSource := DSDETREV100DIF;
end;

procedure TfProcReversion100DiferidosDet.DBGDETREV100DIFDblClick(
  Sender: TObject);
  VAR XSQL:String;
begin
   DBGDETREV100DIF.Columns[0].ReadOnly  := True;
   DBGDETREV100DIF.Columns[1].ReadOnly  := True;
   DBGDETREV100DIF.Columns[2].ReadOnly  := True;
   DBGDETREV100DIF.Columns[3].ReadOnly  := True;
   DBGDETREV100DIF.Columns[4].ReadOnly  := True;
   DBGDETREV100DIF.Columns[5].ReadOnly  := True;
   DBGDETREV100DIF.Columns[6].ReadOnly  := True;
   DBGDETREV100DIF.Columns[7].ReadOnly  := True;
   DBGDETREV100DIF.Columns[8].ReadOnly  := True;

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
   If (lblESTADO.Caption ='INICIAL') or (lblESTADO.Caption ='EN PROCESO') Then
   Begin
     If (CDSDETREV100DIF.FieldByName('FLAG').AsString = '1') and  (Length(TRIM(CDSDETREV100DIF.FieldByName('USUREVDIF').AsString))=0) Then
     Begin
        CDSDETREV100DIF.Edit;
        CDSDETREV100DIF.FieldByName('FLAG').AsString := '0';
        XSQL:='UPDATE  DB2ADMIN.COB_REV_DIFERIDOS_GTT SET  FLAG=''0'',USUDEPDAT='''+DM1.wUsuario+''',FECDUPDAT=SYSDATE WHERE CORREVDIF='''+CDSDETREV100DIF.FieldByName('REGID').AsString+''' ';
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        If  CDSDETREV100DIF.FieldByName('FLAG').AsString='0' Then   vsumaregistros:= vsumaregistros-1;
     End
     Else
     Begin
        If (Length(TRIM(CDSDETREV100DIF.FieldByName('USUREVDIF').AsString))=0) Then
        Begin
         CDSDETREV100DIF.Edit;
         CDSDETREV100DIF.FieldByName('FLAG').AsString := '1' ;
         XSQL:='UPDATE  DB2ADMIN.COB_REV_DIFERIDOS_GTT SET  FLAG=''1'',USUDEPDAT='''+DM1.wUsuario+''',FECDUPDAT=SYSDATE WHERE CORREVDIF='''+CDSDETREV100DIF.FieldByName('REGID').AsString+''' ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         If  CDSDETREV100DIF.FieldByName('FLAG').AsString='1' Then   vsumaregistros:=vsumaregistros+1;
        End;
     End;
//Final HPC_201714_COB
   End
   Else
   Begin
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
//    If lblESTADO.Caption='PROCESADO' Then
//      ShowMessage('Información ya fue procesada')
    If lblESTADO.Caption='CERRADO' Then
      ShowMessage('Cartera 100% diferidas se encuentra en estado CERRADO, debe existir una cartera EN PROCESO o en estado INICIAL.')
//Final HPC_201714_COB
    Else
      ShowMessage('Debe primero grabar para marcar un registro (estado INICIAL)');
   End;

   edtMarca.Text := FloatToStr(vsumaregistros);
   edtMarca.Text := FormatFloat('###,###.00', DM1.Valores(edtMarca.Text));

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
   edtcrerev.Text := FloatToStr(vsumacrerev);
   edtcrerev.Text := FormatFloat('###,###.00', DM1.Valores(edtcrerev.Text));
//Final HPC_201714_COB
end;

procedure TfProcReversion100DiferidosDet.cargadatos;
var XSQL:String;
begin

  CDSDETREV100DIF.EmptyDataSet;
  
  XSQL:='Select flag,codrevdif, correvdif regid, asoid, asocodmod, calcar, intmay65, asoapenom, asotipid, credid,'
       +'       creestado, monprovision, numcuoblo, monsalcap, monsaltot, diaatrantrev, mondifantrev, monvenantrev,'
       +'       monpenantrev, diaatrdesrev, mondifdesrev, monvendesrev, monpendesrev, usugendat, fecgendat, usudepdat,'
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
       +'       fecdupdat, userevdat, fecrevdat,NVL(carofi,''S'')carofi '
//Final HPC_201709_COB
       +'From db2admin.cob_rev_diferidos_gtt Where correvdif>0 ORDER BY   correvdif DESC ';
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(XSQL);
  Dm1.cdsQry.Open;

  edtNumeroReversion.Text:=DM1.cdsQry.FieldByName('codrevdif').AsString;

  Dm1.cdsQry.First;
  vsumaregistros := 0;
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
  vsumacrerev    := 0;
//Final HPC_201714_COB
  While not Dm1.cdsQry.Eof Do
  Begin
     CDSDETREV100DIF.Insert;
     CDSDETREV100DIF.FieldByName('FLAG').AsString := Dm1.cdsQry.FieldByname('FLAG').AsString;
     CDSDETREV100DIF.FieldByName('REGID').AsString := Dm1.cdsQry.FieldByname('REGID').AsString;
     CDSDETREV100DIF.FieldByName('ASOID').AsString := Dm1.cdsQry.FieldByname('ASOID').AsString;
     CDSDETREV100DIF.FieldByName('ASOCODMOD').AsString := Dm1.cdsQry.FieldByname('ASOCODMOD').AsString;
     CDSDETREV100DIF.FieldByName('CALCAR').AsString := Dm1.cdsQry.FieldByname('CALCAR').AsString;
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
     CDSDETREV100DIF.FieldByName('CAROFI').AsString := Dm1.cdsQry.FieldByname('CAROFI').AsString;
//Final HPC_201709_COB
     CDSDETREV100DIF.FieldByName('INTMAY65').AsString := Dm1.cdsQry.FieldByname('INTMAY65').AsString;
     CDSDETREV100DIF.FieldByName('ASOAPENOM').AsString := Dm1.cdsQry.FieldByname('ASOAPENOM').AsString;
     CDSDETREV100DIF.FieldByName('ASOTIPID').AsString := Dm1.cdsQry.FieldByname('ASOTIPID').AsString;
     CDSDETREV100DIF.FieldByName('CREDID').AsString := Dm1.cdsQry.FieldByname('CREDID').AsString;
     CDSDETREV100DIF.FieldByName('CREESTADO').AsString := Dm1.cdsQry.FieldByname('CREESTADO').AsString;
     CDSDETREV100DIF.FieldByName('MONPROV').AsFloat := Dm1.cdsQry.FieldByname('monprovision').AsFloat;
     CDSDETREV100DIF.FieldByName('NUMCUOBLO').AsInteger := Dm1.cdsQry.FieldByname('NUMCUOBLO').AsInteger;
     CDSDETREV100DIF.FieldByName('MONSALCAP').AsFloat := Dm1.cdsQry.FieldByname('MONSALCAP').AsFloat;
     CDSDETREV100DIF.FieldByName('MONSALTOT').AsFloat := Dm1.cdsQry.FieldByname('MONSALTOT').AsFloat;
     CDSDETREV100DIF.FieldByName('DIAATRANTREV').AsInteger := Dm1.cdsQry.FieldByname('DIAATRANTREV').AsInteger;
     CDSDETREV100DIF.FieldByName('MONVENANTREV').AsFloat := Dm1.cdsQry.FieldByname('monvenantrev').AsFloat;
     CDSDETREV100DIF.FieldByName('MONPENANTREV').AsFloat := Dm1.cdsQry.FieldByname('monpenantrev').AsFloat;
     CDSDETREV100DIF.FieldByName('DIAATRDESREV').AsInteger := Dm1.cdsQry.FieldByname('DIAATRDESREV').AsInteger;
     CDSDETREV100DIF.FieldByName('MONVENDESREV').AsFloat := Dm1.cdsQry.FieldByname('MONVENDESREV').AsFloat;
     CDSDETREV100DIF.FieldByName('MONPENDESREV').AsFloat := Dm1.cdsQry.FieldByname('MONPENDESREV').AsFloat;
     CDSDETREV100DIF.FieldByName('USUGENDAT').AsString := Dm1.cdsQry.FieldByname('USUGENDAT').AsString;
     CDSDETREV100DIF.FieldByName('FECGENDAT').AsDateTime := Dm1.cdsQry.FieldByname('FECGENDAT').AsDateTime;
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
     CDSDETREV100DIF.FieldByName('USUDEPDAT').AsString   := Dm1.cdsQry.FieldByname('USUDEPDAT').AsString;
     CDSDETREV100DIF.FieldByName('USUREVDIF').AsString   := Dm1.cdsQry.FieldByname('USEREVDAT').AsString;
 IF  Length(Trim(Dm1.cdsQry.FieldByname('FECREVDAT').AsString))<>0 Then
     CDSDETREV100DIF.FieldByName('FECREVDIF').AsDateTime := Dm1.cdsQry.FieldByname('FECREVDAT').AsDateTime;

 IF  Length(Trim(Dm1.cdsQry.FieldByname('FECDUPDAT').AsString))<>0 Then
     CDSDETREV100DIF.FieldByName('FECDEPDAT').AsDateTime := Dm1.cdsQry.FieldByname('FECDUPDAT').AsDateTime;

     If (CDSDETREV100DIF.FieldByName('FLAG').AsString='1') and
        (LENGTH(TRIM(CDSDETREV100DIF.FieldByName('USUREVDIF').AsString))=0)  Then
        vsumaregistros:= vsumaregistros+1;

     If (CDSDETREV100DIF.FieldByName('FLAG').AsString='1') and
        (LENGTH(TRIM(CDSDETREV100DIF.FieldByName('USUREVDIF').AsString))>0)  Then
        vsumacrerev:=vsumacrerev+1;
//Final HPC_201714_COB
     Dm1.cdsQry.Next;
   End;
   numlineas     := vsumaregistros;
   edtMarca.Text := FloatToStr(vsumaregistros);
   edtMarca.Text := FormatFloat('###,###.00', DM1.Valores(edtMarca.Text));

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
   edtcrerev.Text := FloatToStr(vsumacrerev);
   edtcrerev.Text := FormatFloat('###,###.00', DM1.Valores(edtcrerev.Text));
//Final HPC_201714_COB
   If length(trim(edtNumeroReversion.Text))=0 Then
        lblESTADO.Caption := ''
   Else lblESTADO.Caption := DM1.cdsModelo.FieldByname('ESTPRO').AsString;

   Dm1.cdsQry.First;
   CDSDETREV100DIF.First;
end;

procedure TfProcReversion100DiferidosDet.btnMarcaClick(Sender: TObject);
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
var XSQL,xWhere:String;
//Final HPC_201714_COB

begin

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
// If chkDesmarca.Checked Then
//  XSQL:='UPDATE db2admin.cob_rev_diferidos_gtt SET FLAG=''0'' WHERE DIAATRDESREV>'+trim(edtDias.Text)
// Else
//  XSQL:='UPDATE db2admin.cob_rev_diferidos_gtt SET FLAG=''1'' WHERE DIAATRDESREV>'+trim(edtDias.Text);

 If cbTipoAso.Text='Todos' Then xWhere:='' Else xWhere:=' and Asotipid='''+trim(cbTipoAso.Text)+''' ';
 If chkDesmarca.Checked Then
  XSQL:='UPDATE db2admin.cob_rev_diferidos_gtt SET FLAG=''0'' WHERE USEREVDAT IS NULL AND DIAATRDESREV>'+trim(edtDias.Text)+ xWhere
 Else
  XSQL:='UPDATE db2admin.cob_rev_diferidos_gtt SET FLAG=''1'' WHERE USEREVDAT IS NULL AND DIAATRDESREV>'+trim(edtDias.Text)+ xWhere;
//Final HPC_201714_COB

 DM1.DCOM1.AppServer.EjecutaSQL(XSQL);
 cargadatos;
 chkDesmarca.Checked := False;
 chksolomarcados2Click(sELF);
end;

procedure TfProcReversion100DiferidosDet.btnExcelClick(Sender: TObject);
begin

 dtgData.DataSource := DSDETREV100DIF;

 If CDSDETREV100DIF.RecordCount=0 Then
 Begin
  ShowMessage('No existe información para exportar');
  cargadatos;
  exit;
 End;

 If not regismarcados Then
 Begin
  exit;
 End;

 DM1.HojaExcel('100% diferidos',dtgData.DataSource,dtgData);
 cargadatos;

end;

procedure TfProcReversion100DiferidosDet.edtDiasKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
end;

procedure TfProcReversion100DiferidosDet.btnImprimeClick(
  Sender: TObject);

  var XSQL:String;
begin

     XSQL:='WITH CREDITOS AS '+
           '(SELECT ASOID,CREDID,SUM(NVL(SALDO,0)) CRESDOACT '+
           ' FROM('+
           'Select ASOID,CREDID,NVL(sum(NVL(CREMTO,0)-NVL(CREMTOCOB,0)),0)  SALDO '+ //VENCIDO
           'FROM CRE302 '+
           'WHERE ASOID= '''+CDSDETREV100DIF.FieldByname('ASOID').AsString+''' AND CREDID='''+CDSDETREV100DIF.FieldByname('CREDID').AsString+''' '+
           '   AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'') '+
           'GROUP BY ASOID,CREDID '+
           'UNION ALL '+
           'Select ASOID,CREDID,sum( (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0)) SALDO  '+ //PENDIENTE NO DIFERIDO
           'FROM CRE302 '+
           'WHERE ASOID= '''+CDSDETREV100DIF.FieldByname('ASOID').AsString+''' AND CREDID='''+CDSDETREV100DIF.FieldByname('CREDID').AsString+''' '+
           '   AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
           '      AND (CREFVEN=CREFVENINI or CREFVENINI IS NULL)'+
           'GROUP BY ASOID,CREDID '+
           ' UNION ALL '+
           'Select ASOID,CREDID,sum( NVL(CREMTO,0)- NVL(CREMTOCOB,0)) SALDO '+//PENDIENTE DIFERIDO
           'FROM CRE302 '+
           'WHERE ASOID= '''+CDSDETREV100DIF.FieldByname('ASOID').AsString+''' AND CREDID='''+CDSDETREV100DIF.FieldByname('CREDID').AsString+''' '+
           '      AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
           '      AND (CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) '+
           'GROUP BY ASOID,CREDID '+
           ')GROUP BY ASOID,CREDID )'+

           'SELECT A.ASOID,A.ASOCODMOD,A.CREDID,A.TIPCREDES,A.CREFOTORG,A.CREMTOOTOR,A.ASOTIPID,B.CRESDOACT '+
           'FROM   CRE301 A,CREDITOS B '+
           'WHERE  A.ASOID = '''+CDSDETREV100DIF.FieldByname('ASOID').AsString+''' AND A.CREDID='''+CDSDETREV100DIF.FieldByname('CREDID').AsString+''' '+
           '   AND A.CREESTID = ''02'' AND '+
           '       B.ASOID=A.ASOID AND B.CREDID=A.CREDID ';
     DM1.cdsConsulta.Close;
     DM1.cdsConsulta.DataRequest(XSQL);
     DM1.cdsConsulta.Open;

     FFSCCreditos := TFFSCCreditos.Create(Self);
     FFSCCreditos.imprCronograma;
     FFSCCreditos.Free;
End;
procedure TfProcReversion100DiferidosDet.BitBtn1Click(Sender: TObject);
var Xsql:String;
begin
   If length(trim(edtdescripcion.Text))=0 Then
   Begin
     ShowMessage('Debe ingresar alguna descripción de la reversión');
     edtdescripcion.SetFocus;
     exit;
   End;
   XSQL:='SELECT codrevdif, correvdif, flag, asoid, asocodmod, calcar, intmay65, asoapenom, asotipid, credid, creestado, monprovision,'
       + '      numcuoblo, monsalcap, monsaltot, diaatrantrev, mondifantrev, monvenantrev, monpenantrev, diaatrdesrev, mondifdesrev,'
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
       + '      monvendesrev, monpendesrev, usugendat, fecgendat, usudepdat, fecdupdat, userevdat, fecrevdat,NVL(carofi,''S'')carofi '
//Final HPC_201709_COB
       + 'FROM  db2admin.cob_rev_diferidos_gtt Where correvdif>0 ORDER BY  correvdif DESC ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.RecordCount=0 Then
   Begin
     ShowMessage('No existe información para grabar');
     pnlDescripcion.Visible := False;
     Exit;
   End;
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
   XSQL:='Begin SP_COB_DATA_REVERSION_DIFER(NULL,'''+DM1.wUsuario+''','''+Trim(edtNumeroReversion.Text)+''','''+Trim(edtdescripcion.Text)+''',''P1'','''+fProcReversion100Diferidos.XCAROFI+'''); End;';
//Final HPC_201709_COB
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   fProcReversion100Diferidos.cargacabecera;
   cargadatos;
   btnSalirgrabacionClick(Self);
end;

procedure TfProcReversion100DiferidosDet.BitGrabarClick(Sender: TObject);
begin
edtdescripcion.Text    := DM1.cdsModelo.Fieldbyname('DESBRE').AsString;
pnlDescripcion.Top     := 238;
pnlDescripcion.Left    := 328;
grbDetalle.Enabled     := False;
grbPie.Enabled         := False;
pnlDescripcion.Visible := True;
end;

procedure TfProcReversion100DiferidosDet.btnSalirgrabacionClick(Sender: TObject);
begin
    grbDetalle.Enabled     := True;
    grbPie.Enabled         := True;
    pnlDescripcion.Visible := False;
end;

procedure TfProcReversion100DiferidosDet.edtdescripcionKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key In [char(39),'"'] Then
      Key := #0;
end;

procedure TfProcReversion100DiferidosDet.chksolomarcados2Click(
  Sender: TObject);
begin
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
// If chksolomarcados2.Checked Then
// Begin
//   CDSDETREV100DIF.Filter :='FLAG=''1'' ';
//   CDSDETREV100DIF.Filtered := True;
// End
// Else  CDSDETREV100DIF.Filtered := False;
filtradata();
//Final HPC_201714_COB
 CDSDETREV100DIF.IndexFieldNames :='REGID';
end;

procedure TfProcReversion100DiferidosDet.btnProcRevClick(Sender: TObject);
var xsql:String;
begin

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
// If lblESTADO.Caption = 'PROCESADO' Then
// Begin
//   ShowMessage('Información ya fue procesada');
//   exit;
// End;
 If lblESTADO.Caption = 'CERRADO' Then
 Begin
   ShowMessage('Cartera 100% diferidos se encuentra CERRADA');
   exit;
 End;
//Final HPC_201714_COB

 If  DM1.Valores(trim(edtmarca.Text))=0 Then
 Begin
   ShowMessage('No marcó registros para revertir');
   exit;
 End;

 If not regismarcados Then
 Begin
   exit;
 End;

 If MessageDlg('Está seguro(a) de procesar la reversión de "100% Diferidos" ',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
 Begin
 //revierte diferidos
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
  XSQL:='Begin SP_COB_DATA_REVERSION_DIFER(null,'''+DM1.wUsuario+''','''+DM1.cdsModelo.FieldByname('CODREVDIF').AsString+''',null,''PR'','''+fProcReversion100Diferidos.XCAROFI+'''); End;';
//Final HPC_201709_COB
  Screen.Cursor := crHourGlass;
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  Screen.Cursor := crDefault;
  Close;
 End


end;

//Verifica que lo marcado en el grid está grabado.
function TfProcReversion100DiferidosDet.regismarcados: Boolean;
var XSQL:String;
    B: TBookmark;
begin

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
//XSQL:= 'SELECT asoid,credid FROM COB_REV_DIFERIDOS_DET WHERE CODREVDIF='''+DM1.cdsModelo.FieldByname('CODREVDIF').AsString+''' AND FLAG=''1'' ';
XSQL:= 'SELECT asoid,credid,flag,userevdat FROM COB_REV_DIFERIDOS_DET WHERE CODREVDIF='''+Trim(edtNumeroReversion.Text)+''' AND FLAG=''1'' ';
//Final HPC_201714_COB
DM1.cdsResol.Close;
DM1.cdsResol.DataRequest(XSQL);
DM1.cdsResol.Open;

CDSDETREV100DIF.DisableControls;
chkDesmarca.Checked:=False;
chksolomarcados2Click(self);
B:= CDSDETREV100DIF.GetBookmark;

CDSDETREV100DIF.First;
While NOT CDSDETREV100DIF.Eof dO
Begin
  If CDSDETREV100DIF.FieldByName('FLAG').AsString='1' Then
  Begin
  If NOT DM1.cdsResol.Locate('ASOID;CREDID',VarArrayOf([CDSDETREV100DIF.FieldByName('ASOID').AsString,CDSDETREV100DIF.FieldByName('CREDID').AsString]),[]) Then
  Begin
    ShowMessage('La información que marcó no está grabada, debe primero grabar');
    CDSDETREV100DIF.GotoBookmark(B);
    CDSDETREV100DIF.EnableControls;
    CDSDETREV100DIF.FreeBookmark(B);
    Result := False;
    exit;
  End;
  End;
  CDSDETREV100DIF.Next;
End;

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
{
DM1.cdsResol.First;
While NOT DM1.cdsResol.Eof DO
Begin
  If NOT CDSDETREV100DIF.Locate('ASOID;CREDID;FLAG',VarArrayOf([DM1.cdsResol.FieldByName('ASOID').AsString,DM1.cdsResol.FieldByName('CREDID').AsString,'1']),[]) Then
  Begin
    ShowMessage('La información que marcó no está grabada, debe primero grabar');
    CDSDETREV100DIF.GotoBookmark(B);
    CDSDETREV100DIF.EnableControls;
    CDSDETREV100DIF.FreeBookmark(B);
    Result := False;
    exit;
  End;
  DM1.cdsResol.Next;
End;
  CDSDETREV100DIF.GotoBookmark(B);
  CDSDETREV100DIF.EnableControls;
  CDSDETREV100DIF.FreeBookmark(B);
  Result := True;
end;
}
XSQL:= 'SELECT asoid,credid,flag,userevdat FROM COB_REV_DIFERIDOS_DET WHERE CODREVDIF='''+Trim(edtNumeroReversion.Text)+''' AND NVL(FLAG,''0'')<>''1'' ';
DM1.cdsResol.Close;
DM1.cdsResol.DataRequest(XSQL);
DM1.cdsResol.Open;
CDSDETREV100DIF.Filter   :='';
CDSDETREV100DIF.Filtered := False;
CDSDETREV100DIF.First;
While NOT CDSDETREV100DIF.Eof DO
Begin
  If (CDSDETREV100DIF.FieldByName('FLAG').AsString='0') or (CDSDETREV100DIF.FieldByName('FLAG').AsString='') Then
  Begin
  If NOT DM1.cdsResol.Locate('ASOID;CREDID',VarArrayOf([CDSDETREV100DIF.FieldByName('ASOID').AsString,CDSDETREV100DIF.FieldByName('CREDID').AsString]),[]) Then
  Begin
    ShowMessage('La información que marcó no está grabada, debe primero grabar');
    CDSDETREV100DIF.GotoBookmark(B);
    CDSDETREV100DIF.EnableControls;
    CDSDETREV100DIF.FreeBookmark(B);
    Result := False;
    exit;
  End;
  End;
  CDSDETREV100DIF.Next;
End;
filtradata;
CDSDETREV100DIF.IndexFieldNames :='REGID';


  CDSDETREV100DIF.GotoBookmark(B);
  CDSDETREV100DIF.EnableControls;
  CDSDETREV100DIF.FreeBookmark(B);
  Result := True;
end;
//Final HPC_201714_COB
//Inicio HPC_201709_COB 
//Uso de Cartera no Oficial
procedure TfProcReversion100DiferidosDet.DBGDETREV100DIFCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  If CDSDETREV100DIF.FieldByName('CAROFI').AsString='N' Then
  Begin
    if (Field.FieldName = 'CAROFI') then  AFont.Color :=  clRED;
  End
  Else
    if (Field.FieldName = 'CAROFI') then  AFont.Color :=  clBlack;
//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
   If Length(Trim(CDSDETREV100DIF.FieldByName('USUREVDIF').AsString))>0 Then
      ABrush.Color := $0000B9B9;
//Final HPC_201714_COB
End;
//Final HPC_201709_COB

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
procedure TfProcReversion100DiferidosDet.filtradata;
begin
If (chksolomarcados2.Checked) and (not chkRevertidos.Checked) Then
begin
   CDSDETREV100DIF.Filter   :='FLAG=''1'' and TRIM(USUREVDIF)='''' ';
   CDSDETREV100DIF.Filtered := True;
end;

If (chksolomarcados2.Checked) and (chkRevertidos.Checked) Then
begin
   CDSDETREV100DIF.Filter   :='(FLAG=''1'' and TRIM(USUREVDIF)='''') OR (FLAG=''1'' and TRIM(USUREVDIF)<>'''')' ;
   CDSDETREV100DIF.Filtered := True;
end;

If (not chksolomarcados2.Checked) and (not chkRevertidos.Checked) Then
begin
   CDSDETREV100DIF.Filter   :='';
   CDSDETREV100DIF.Filtered := False;
end;

If (not chksolomarcados2.Checked) and (chkRevertidos.Checked) Then
begin
   CDSDETREV100DIF.Filter   :='FLAG=''1'' and TRIM(USUREVDIF)<>'''' ';
   CDSDETREV100DIF.Filtered := True;
end;
end;
//Final HPC_201714_COB


//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
procedure TfProcReversion100DiferidosDet.chkRevertidosClick(
  Sender: TObject);
begin
filtradata();
CDSDETREV100DIF.IndexFieldNames :='REGID';
end;
//Final HPC_201714_COB

//Inicio HPC_201714_COB
//Mejora en el proceso de generación de cartera de 100% diferidos
procedure TfProcReversion100DiferidosDet.chkDesmarcaClick(Sender: TObject);
begin
 If chkDesmarca.Checked Then
      btnMarca.Caption :='Desmarca'
 Else btnMarca.Caption :='Marca';
end;
//Final HPC_201714_COB
end.
//Final HPC_201706_COB
