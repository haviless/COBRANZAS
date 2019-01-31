unit COB944;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, wwdblook, Db, ComCtrls, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, DBGrids;

type
  TfDistGestion = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    Panel1: TPanel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    lblNomMes: TLabel;
    Shape1: TShape;
    Panel2: TPanel;
    Edit1: TEdit;
    lblRegistros: TLabel;
    Shape2: TShape;
    dtgDetGest: TwwDBGrid;
    BitCartas: TBitBtn;
    BitTelef: TBitBtn;
    Label8: TLabel;
    EdtBuscar: TEdit;
    Panel3: TPanel;
    txtDist: TEdit;
    Shape3: TShape;
    BitSinDatos: TBitBtn;
    BitPorVerif: TBitBtn;
    dtgData: TDBGrid;
    grpDetalle: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dblTipCalf: TwwDBLookupCombo;
    Panel4: TPanel;
    EdtDesCat: TEdit;
    chkMontos: TCheckBox;
    pnlMontos: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    dbeMtoIni: TwwDBEdit;
    dbeMtoFin: TwwDBEdit;
    BitMostrar: TBitBtn;
    Panel5: TPanel;
    EdtDpto: TEdit;
    dblDpto: TwwDBLookupCombo;
    Panel6: TPanel;
    EdtDesUse: TEdit;
    chkMstUses: TCheckBox;
    Label4: TLabel;
    dblUses: TwwDBLookupCombo;
    BitEnvSel: TBitBtn;
    BitMstSele: TBitBtn;
    grbProceso: TGroupBox;
    lblPor: TLabel;
    prbAvance: TProgressBar;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtBuscarChange(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure BitTelefClick(Sender: TObject);
    procedure BitCartasClick(Sender: TObject);
    procedure BitSinDatosClick(Sender: TObject);
    procedure BitPorVerifClick(Sender: TObject);
    procedure dtgDetGestDblClick(Sender: TObject);
    procedure dblTipCalfChange(Sender: TObject);
    procedure dbeMtoIniExit(Sender: TObject);
    procedure dbeMtoIniKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMtoFinKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMtoFinExit(Sender: TObject);
    procedure chkMontosClick(Sender: TObject);
    procedure chkMstUsesClick(Sender: TObject);
    procedure dblDptoChange(Sender: TObject);
    procedure dblUsesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitEnvSelClick(Sender: TObject);
    procedure BitMstSeleClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimpiaGrids;
    function CountReg(xIdDist:String):Longint;
    function CountRegF(xSQL:String):Longint;
  public
    { Public declarations }
    xIdDist:String;
  end;

var
  fDistGestion: TfDistGestion;

implementation

uses COBDM1, COB945, COB946;

{$R *.dfm}

procedure TfDistGestion.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfDistGestion.LimpiaGrids;
var xSQL:String;
begin
    Screen.Cursor := crHourglass;
    xSQL:='SELECT DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T  '+
          'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, '+
          'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  '+
          'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T FROM CFC001 A,  '+
          'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  '+
          'PERIODO='+QuotedStr('@#$%')+' AND IDDIST=''$%'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) '+
          'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY DPTODES,USENOM,ASOAPENOM ';
    DM1.cdsProvin.Close;
    DM1.cdsProvin.DataRequest(xSQL);
    DM1.cdsProvin.Open;
    dtgDetGest.Refresh; lblRegistros.Caption:=FormatFloat('###,###,##0',0); lblRegistros.Refresh; 
    Screen.Cursor := crDefault;

end;

procedure TfDistGestion.FormActivate(Sender: TObject);
begin
LimpiaGrids;
end;

function TfDistGestion.CountReg(xIdDist:String): Longint;
var xSQL:String;
begin
   xSQL:='SELECT NVL(COUNT(*),0) REGISTROS FROM (SELECT DPTODES "DEPARTAMENTO(LABORAL)",USENOM "USES/UGEL",ASOCODMOD "CODIGO MODULAR",ASOAPENOM "APELLIDOS Y NOMBRES", '+
         'ASODIR "DIRECCION DOMICILIARIA",DPTODIR "DEPARTAMENTO(DOMICILIO)",  CIUDDES "PROVINCIA(DOMICILIO)",ZIPDES "DISTRITO(DOMICILIO)",  '+
         'ASOTELF1 "TELEFONOS",SALDOS_FT "DEUDA(K)",SALDOS_T "DEUDA TOTAL(K+I+G)"  '+
         'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, '+
         'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  '+
         'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T FROM CFC001 A,  '+
         'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  '+
         'PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDDIST='+QuotedStr(xIdDist)+' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) '+
         'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) )';
         DM1.cdsQry4.Close;
         DM1.cdsQry4.DataRequest(xSQL);
         DM1.cdsQry4.Open;
         Result:= DM1.cdsQry4.fieldByName('REGISTROS').AsInteger;
end;

procedure TfDistGestion.EdtBuscarChange(Sender: TObject);
begin
If Length(Trim(EdtBuscar.Text))>0 Then
  DM1.cdsProvin.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);

end;

procedure TfDistGestion.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
    Begin
      If Length(Trim(EdtBuscar.Text))>0 Then
         Begin
           EdtBuscar.Text:='';
           dtgDetGest.SetFocus;
         End
       Else
         Begin
           MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
           EdtBuscar.SetFocus;
         End;
    End;

end;

procedure TfDistGestion.BitTelefClick(Sender: TObject);
var xSQL:String;
begin
    LimpiaGrids; Screen.Cursor := crHourglass;
    txtDist.Text:=BitTelef.Caption; txtDist.Refresh; xIdDist:='02';
    lblRegistros.Caption:=FormatFloat('###,###,##0',CountReg('02')); lblRegistros.Refresh;
    xSQL:='SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  '+
          'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, '+
          'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  '+
          'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL  FROM CFC001 A,  '+
          'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  '+
          'PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDDIST=''02'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) '+
          'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
    DM1.cdsProvin.Close;   DM1.cdsProvin.DataRequest(xSQL);   DM1.cdsProvin.Open;
    If DM1.cdsProvin.RecordCount > 0 Then
       Begin
            grpDetalle.Enabled:=True;

       End;
       Screen.Cursor := crDefault;


end;

procedure TfDistGestion.BitCartasClick(Sender: TObject);
var xSQL:String;
begin
    LimpiaGrids; Screen.Cursor := crHourglass;
    txtDist.Text:=BitCartas.Caption; txtDist.Refresh;
    lblRegistros.Caption:=FormatFloat('###,###,##0',CountReg('01')); lblRegistros.Refresh; xIdDist:='01';
    xSQL:='SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  '+
          'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, '+
          'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  '+
          'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  '+
          'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  '+
          'PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDDIST=''01'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) '+
          'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
    DM1.cdsProvin.Close;   DM1.cdsProvin.DataRequest(xSQL);    DM1.cdsProvin.Open;
    Screen.Cursor := crDefault;
    If DM1.cdsProvin.RecordCount > 0 Then
       Begin
            grpDetalle.Enabled:=True;
       End;


end;

procedure TfDistGestion.BitSinDatosClick(Sender: TObject);
var xSQL:String;
begin
    LimpiaGrids; Screen.Cursor := crHourglass;
    txtDist.Text:=BitSinDatos.Caption; txtDist.Refresh;
    lblRegistros.Caption:=FormatFloat('###,###,##0',CountReg('03')); lblRegistros.Refresh; xIdDist:='03';
    xSQL:='SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  '+
          'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, '+
          'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  '+
          'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  '+
          'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  '+
          'PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDDIST=''03'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) '+
          'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
    DM1.cdsProvin.Close;   DM1.cdsProvin.DataRequest(xSQL);    DM1.cdsProvin.Open;
    Screen.Cursor := crDefault;
    If DM1.cdsProvin.RecordCount > 0 Then
       Begin
            grpDetalle.Enabled:=True;
       End;


end;

procedure TfDistGestion.BitPorVerifClick(Sender: TObject);
var xSQL:String;
begin
    LimpiaGrids; Screen.Cursor := crHourglass;
    txtDist.Text:=BitPorVerif.Caption; txtDist.Refresh;
    lblRegistros.Caption:=FormatFloat('###,###,##0',CountReg('04')); lblRegistros.Refresh;  xIdDist:='04';
    xSQL:='SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  '+
          'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, '+
          'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  '+
          'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  '+
          'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  '+
          'PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDDIST=''04'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) '+
          'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
    DM1.cdsProvin.Close;   DM1.cdsProvin.DataRequest(xSQL);    DM1.cdsProvin.Open;
    Screen.Cursor := crDefault;
    If DM1.cdsProvin.RecordCount > 0 Then
       Begin
            grpDetalle.Enabled:=True;
       End;


end;

procedure TfDistGestion.dtgDetGestDblClick(Sender: TObject);
var xSQL:String;
begin
If dtgDetGest.DataSource.DataSet.RecordCount=0 Then Exit;
xSQL:='SELECT IDDIST,DESDIST FROM COB908 WHERE IDDIST NOT IN ('+QuotedStr(xIdDist)+')';
DM1.cdsTPension.Close;
DM1.cdsTPension.DataRequest(xSQL);
DM1.cdsTPension.Open;
  Try
    fCamGest := TfCamGest.Create(Self);
    fCamGest.EdtAsoCodMod.Text:= DM1.cdsProvin.FieldByName('ASOCODMOD').AsString;
    fCamGest.EdtAsoApeNom.Text:= DM1.cdsProvin.FieldByName('ASOAPENOM').AsString;
    fCamGest.EdtTelf.Text:= DM1.cdsProvin.FieldByName('ASOTELF1').AsString;
    fCamGest.mDireccion.Text:= DM1.cdsProvin.FieldByName('ASODIR').AsString;
    fCamGest.ShowModal;
  Finally
    fCamGest.Free;
  end;



end;

procedure TfDistGestion.dblTipCalfChange(Sender: TObject);
begin
If DM1.cdsConcre.Locate('RESUMEID',VarArrayof([dblTipCalf.Text]),[]) Then
   Begin
      EdtDesCat.Text  := DM1.cdsConcre.fieldbyname('RESUMEDES').AsString ;
   End
Else
   Begin
   if Length(dblTipCalf.Text) <> 1 then
      Begin
        Beep;
        EdtDesCat.Text  :='';
      End;
   End;

end;

procedure TfDistGestion.dbeMtoIniExit(Sender: TObject);
begin
dbeMtoIni.Text:=DM1.FormatoNumeros(dbeMtoIni.Text);
end;

procedure TfDistGestion.dbeMtoIniKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDistGestion.dbeMtoFinKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDistGestion.dbeMtoFinExit(Sender: TObject);
begin
   dbeMtoFin.Text:=DM1.FormatoNumeros(dbeMtoFin.Text);
end;

procedure TfDistGestion.chkMontosClick(Sender: TObject);
begin
LimpiaGrids;
If Not chkMontos.Checked Then
   Begin
       dbeMtoIni.Text:='0.00' ; dbeMtoFin.Text:='0.00';
       pnlMontos.Enabled:=False;
   End
Else
   Begin
       pnlMontos.Enabled:=True;
       dbeMtoIni.SetFocus;
   End;


end;

procedure TfDistGestion.chkMstUsesClick(Sender: TObject);
begin
If chkMstUses.Checked Then LimpiaGrids;
If Length(Trim(EdtDpto.Text))=0 Then
   Begin
      If chkMstUses.Checked Then
         Begin
           chkMstUses.Checked:=False;
           MessageDlg(' Debe Seleccionar Un Departamento..!!!!', mtError,[mbOk],0);
           Exit;
         End;
   End
Else
   If chkMstUses.Checked Then
      dblUses.Enabled:=True
   Else
      Begin
         dblUses.Text:='';  EdtDesUse.Text:='';
         dblUses.Enabled:=False;
      End;

end;

procedure TfDistGestion.dblDptoChange(Sender: TObject);
var xSQL:String;
begin
   LimpiaGrids;
   If DM1.cdsDFam.Locate('DPTOID',VarArrayof([dblDpto.text]),[]) Then
      Begin
        EdtDpto.Text := DM1.cdsDFam.FieldByName('DPTODES').Asstring;
        xSQL:='SELECT USEID,USENOM FROM APO101 WHERE DPTOID='+QuotedStr(dblDpto.text)+' AND (FLGACT<>''!'' OR FLGACT IS NULL)  ORDER BY USEID';
        DM1.cdsTUSE.Close;
        DM1.cdsTUSE.DataRequest(xSQL);
        DM1.cdsTUSE.Open;
      End
   Else
      Begin
        if Length(dblDpto.Text) <> 2 then
           Begin
              Beep;
              EdtDpto.Text  :='';
           End;
      End

end;

procedure TfDistGestion.dblUsesChange(Sender: TObject);
begin
   LimpiaGrids;
   If DM1.cdsTUse.Locate('USEID',VarArrayof([dblUses.text]),[]) Then
      Begin
        EdtDesUse.Text := DM1.cdsTUse.FieldByName('USENOM').Asstring;
      End
   Else
      Begin
        if Length(dblUses.Text) <> 2 then
           Begin
              Beep;
              EdtDesUse.Text  :='';
           End;
      End

end;

procedure TfDistGestion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfDistGestion.BitEnvSelClick(Sender: TObject);
var xSQL:String;
begin
If dtgDetGest.DataSource.DataSet.RecordCount=0 Then Exit;
Screen.Cursor:=crHourGlass;
grbProceso.Visible:=True; lblPor.Visible := True; prbAvance.Position := 0; prbAvance.Max:=DM1.cdsProvin.RecordCount; prbAvance.Position := 1;
DM1.cdsProvin.First;
While Not DM1.cdsProvin.Eof Do
Begin
     If DM1.cdsProvin.FieldByName('FLGSEL').AsString<>'S' Then
       Begin
          fDistGestion.Refresh; prbAvance.Position := prbAvance.Position + 1;
          xSQL:='UPDATE CFC001 SET FLGSEL=''S'',USUARIO='+QuotedStr(DM1.wUsuario)+',HREG=SYSDATE  WHERE ASOID='+QuotedStr(DM1.cdsProvin.FieldByName('ASOID').AsString)+' AND PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDDIST='+QuotedStr(xIdDist);
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
          lblPor.Caption:= FormatFloat('#,###,###',prbAvance.Position)+'  De  '+FormatFloat('#,###,###',prbAvance.Max)+'  Registros';
       End;
    DM1.cdsProvin.Next;
End;
prbAvance.Position:=0; grbProceso.Visible:=False; MessageDlg(' Proceso Termino Con EXITO..!!!!', mtInformation,[mbOk],0);
Screen.Cursor:=crDefault;
end;

procedure TfDistGestion.BitMstSeleClick(Sender: TObject);
var xSQL:String;
begin
 Try
    If dtgDetGest.DataSource.DataSet.RecordCount=0 Then Exit;
    fSelGest := TfSelGest.Create(Self);
    Screen.Cursor:=crHourGlass;
    xSQL:='SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T  '+
          'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, '+
          'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  '+
          'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  '+
          'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  '+
          'PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDDIST='+QuotedStr(xIdDist)+' AND FLGSEL=''S''  AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) '+
          'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
    DM1.cdsProvCta.Close;
    DM1.cdsProvCta.DataRequest(xSQL);
    DM1.cdsProvCta.Open;     
    fSelGest.lblRegistros.Caption:=FormatFloat('###,###,##0',CountRegf(xSQL)); lblRegistros.Refresh;
    Screen.Cursor:=crDefault;
    fSelGest.Caption:='ASOCIADOS SELECCIONADOS PARA GESTION DE COBRANZA';
    fSelGest.txtDist.Text:='PERIODO :  '+Trim(lblNomMes.Caption)+'-'+Trim(dbsAnoIni.Text)+'  /   TIPO DE GESTION : '+txtDist.Text;
    fSelGest.ShowModal;
  Finally
    fSelGest.Free;
  end;

end;

procedure TfDistGestion.BitMostrarClick(Sender: TObject);
var xSQL,xSQL1,xSQL2,xSQL3,xSQL4:String;
begin
  // If dtgDetGest.DataSource.DataSet.RecordCount=0 Then Exit;
   If Length( Trim(dblTipCalf.Text))>0 Then
     xSQL1:=' AND CFC_F='+QuotedStr(Trim(dblTipCalf.Text)) Else xSQL1:='';
   If (Length(Trim(dbeMtoIni.Text))>0) AND (Length(Trim(dbeMtoFin.Text))>0) Then
     xSQL2:=' AND SALDOS_FT BETWEEN '+FloatToStr(DM1.Valores(dbeMtoIni.Text))+' AND '+FloatToStr(DM1.Valores(dbeMtoFin.Text))  Else xSQL2:='';
   If Length( Trim(dblDpto.Text))>0 Then
     xSQL3:=' AND A.DPTOID='+QuotedStr(Trim(dblDpto.Text)) Else xSQL3:='';
   If Length( Trim(dblUses.Text))>0 Then
     xSQL4:=' AND A.USEID='+QuotedStr(Trim(dblUses.Text)) Else xSQL4:='';
     Screen.Cursor:=crHourGlass;
     xSQL:='SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  '+
           'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, '+
           'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  '+
           'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  '+
           'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  '+
           'PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDDIST='+QuotedStr(xIdDist)+xSQL1+xSQL2+xSQL3+xSQL4+' '+
           ' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) '+
           'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';

     lblRegistros.Caption:=FormatFloat('###,###,##0',CountRegF(xSQL)); lblRegistros.Refresh;
     DM1.cdsProvin.Close;
     DM1.cdsProvin.DataRequest(xSQL);
     DM1.cdsProvin.Open;
     Screen.Cursor:=crDefault;
     If DM1.cdsProvin.RecordCount > 0 Then
        Begin
        End;

end;

function TfDistGestion.CountRegF(xSQL: String): Longint;
var xSQL_:String;
begin
  xSQL_:='SELECT COUNT(*) REGISTROS FROM ('+xSQL+')';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSQL_);
  DM1.cdsQry4.Open;
  Result:= DM1.cdsQry4.fieldByName('REGISTROS').AsInteger;
end;

end.
