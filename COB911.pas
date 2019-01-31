// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB911
// Formulario                    : fNueOficio
// Fecha de Creación             :
// Autor                         : Sistemas
// Objetivo                      : Generación un nuevo oficio

// Actualizaciones               :
// HPC_201402_COB                : Cambio de DCOM a Socket
// SPP_201402_COB                : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201707_COB                : Se adiciona control de número de devoluciones por oficio para tipo de desembolso 06
unit COB911;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdblook, ComCtrls, Db;

type
  TfNueOficio = class(TForm)
    GroupBox1: TGroupBox;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBLkuCTipDes: TwwDBLookupCombo;
    EdtTipDes: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure DBLkuCTipDesChange(Sender: TObject);
    procedure DBLkuCTipDesKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
  private
    { Private declarations }
    procedure CrgOficio;
    function GnrCOficio(xFrmDes:String):String;
    procedure GnrFOficio(xFecIni,xFecFin:TDateTime;xFrmDes:String);
  public
    { Public declarations }
  end;

var
  fNueOficio: TfNueOficio;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfNueOficio.FormActivate(Sender: TObject);
begin
 DtpFecIni.Date := DM1.FechaSys;
 DtpFecFin.Date := DM1.FechaSys;
 DM1.cdsFormPago.Close;
 DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR FROM CRE104 WHERE TIPDESEID IN (''05'',''06'') ORDER BY TIPDESEID' );
 DM1.cdsFormPago.Open;
end;

procedure TfNueOficio.DBLkuCTipDesChange(Sender: TObject);
begin
   If DM1.cdsFormPago.Locate('TIPDESEID',VarArrayof([DBLkuCTipDes.text]),[]) Then
        EdtTipDes.Text  := DM1.cdsFormPago.fieldbyname('TIPDESEABR').AsString
   Else
      Begin
        if Length(DBLkuCTipDes.Text) <> 2 then
           Begin
              Beep;
              EdtTipDes.Text  :='';
           End;
      End

end;

procedure TfNueOficio.DBLkuCTipDesKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;
end;

procedure TfNueOficio.BitSalirClick(Sender: TObject);
begin
 Close;
end;

procedure TfNueOficio.BitGrabarClick(Sender: TObject);
Var Boton:Integer;
begin
Boton := Application.MessageBox (' ¿Está Seguro De Generar El Oficio De Desembolso? ',
                              'Oficios',MB_YESNO+MB_ICONQUESTION);

If Boton = ID_YES Then
   Begin
     If Length(Trim(EdtTipDes.Text))>0 Then
        Begin
          GnrFOficio(DtpFecIni.Date, DtpFecFin.Date,Trim(DBLkuCTipDes.Text));
          CrgOficio;
          Close;
        End
     Else
        MessageDlg('Debe Seleccionar Alguna Forma De Desembolso..! ', mtError, [mbOk], 0);
   End;
end;

procedure TfNueOficio.CrgOficio;
 var xSQL:String;
begin
  xSQL:='SELECT CODDES,NOMDES,FECINI,FECFIN,FECOPE,NUMOFI,ANOOFI,TOTREG,MONOFI,OFIESTADO FROM MDEVOFI ORDER BY CODDES,ANOOFI,NUMOFI';
  DM1.cdsOfDes.Close;
  DM1.cdsOfDes.DataRequest(xSQL);
  DM1.cdsOfDes.Open;
  TNumericField(DM1.cdsOfDes.fieldbyname('TOTREG')).DisplayFormat:='###,###';
  TNumericField(DM1.cdsOfDes.fieldbyname('MONOFI')).DisplayFormat:='###,###.#0';
end;


// Inicio: SPP_201402_COB       Cambio de DCOM a Socket
function TfNueOficio.GnrCOficio(xFrmDes:String): String;
var xCorrAct:Integer;
    xCorrOfi, xSQL, xWhere :String;
begin
DM1.cdsFEfec.Close;
If xFrmDes='05' Then
//   DM1.cdsFEfec.DataRequest('SELECT CREAREA,TIPO,NROFICIO,CORREANO,ROWID FROM CRE206 WHERE CREAREA=''COB'' AND CTACTE=''05-BN'' AND CORREANO='+QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)),7,4))+' AND NROFICIO IS NOT NULL')
   xWhere:=' WHERE CREAREA=''COB'' AND CTACTE=''05-BN'' AND CORREANO='+QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)),7,4))+' AND NROFICIO IS NOT NULL '
Else
   xWhere:=' WHERE CREAREA=''COB'' AND CTACTE=''06-BN'' AND CORREANO='+QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)),7,4))+' AND NROFICIO IS NOT NULL ';

// DM1.cdsFEfec.DataRequest('SELECT CREAREA,TIPO,NROFICIO,CORREANO,ROWID FROM CRE206 WHERE CREAREA=''COB'' AND CTACTE=''06-BN'' AND CORREANO='+QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)),7,4))+' AND NROFICIO IS NOT NULL');

xSQL:='SELECT CREAREA,TIPO,NROFICIO,CORREANO,ROWID FROM CRE206 '+xWhere;
DM1.cdsFEfec.Close;
DM1.cdsFEfec.DataRequest(xSQL);
DM1.cdsFEfec.Open;
If DM1.cdsFEfec.RecordCount=1 Then
   Begin
     xCorrAct:=StrToInt(DM1.cdsFEfec.fieldbyname('NROFICIO').AsString) + 1;
     xCorrOfi:=Format('%.9d',[xCorrAct]);
     xSQL:='UPDATE CRE206 SET NROFICIO='+QuotedStr(xCorrOfi)+' '+xWhere;
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         {
         DM1.cdsFEfec.Edit;
         DM1.cdsFEfec.fieldbyname('NROFICIO').AsString:=xCorrOfi;
         DM1.cdsFEfec.ApplyUpdates(0);
         }

     Result:=Copy(xCorrOfi,4,6);
   End;
DM1.cdsFEfec.Close;
end;
// Fin: SPP_201402_COB        Cambio de DCOM a Socket

procedure TfNueOficio.GnrFOficio(xFecIni, xFecFin: TDateTime;  xFrmDes: String);
Var xSQL,tSQL,xNroOfi,xAnoOfi:String;
    xNroReg:Integer;
    xMonOfi:Currency;
begin
//Inicio HPP_201113_COB
//SE ADICIONA EL FLAG FLGFSC EN EL SELECT PARA DIFERENCIAR LOS PAGOS POR DEVOLUCION DE EXCESOS DEL FSC
xSQL:='SELECT ASOID,ASOAPENOM,ASONUMDEV,ASOANODEV,ASOFECDEV,ASOMONDEV,TIPDESEID,DOCOFI,FLGFSC,ROWID FROM MDEVCAB WHERE ASOFECDEV BETWEEN To_Date('+QuotedStr(DateToStr(xFecIni))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(xFecFin))+',''dd/mm/yyyy'') AND TIPDESEID='+QuotedStr(Trim(xFrmDes))+' AND DOCOFI IS NULL ' ;
//Final HPP_201113_COB

DM1.cdsCambios.Close;
DM1.cdsCambios.DataRequest(xSQL);
DM1.cdsCambios.Open;
If DM1.cdsCambios.RecordCount > 0 Then
   Begin
       xNroOfi:=GnrCOficio(Trim(xFrmDes));
       xNroReg:=DM1.cdsCambios.RecordCount;
       xMonOfi:=0;
       xAnoOfi:=Copy(DateToStr(DM1.FechaSys),7,4);
       DM1.cdsCambios.First;
       While Not DM1.cdsCambios.Eof Do
       Begin
           xMonOfi:=xMonOfi + DM1.cdsCambios.FieldByName('ASOMONDEV').AsCurrency ;
           DM1.cdsCambios.Edit;
           DM1.cdsCambios.FieldByName('DOCOFI').AsString := xNroOfi ;
           DM1.cdsCambios.Next;
       End;
       DM1.cdsCambios.ApplyUpdates(0);
       tSQL:='INSERT INTO MDEVOFI (CODDES,NOMDES,FECINI,FECFIN,FECOPE,NUMOFI,ANOOFI,TOTREG,MONOFI,USUARIO,FREG,OFIESTADO) VALUES ('+QuotedStr(xFrmDes)+','+QuotedStr(Trim(EdtTipDes.Text))+','+QuotedStr(DateToStr(xFecIni))+','+QuotedStr(DateToStr(xFecFin))+','+QuotedStr(DateToStr(DM1.FechaSys))+','+QuotedStr(xNroOfi)+','+QuotedStr(xAnoOfi)+','+IntToStr(xNroReg)+','+FloatToStr(xMonOfi)+','+QuotedStr(DM1.wUsuario)+','+QuotedStr(DateToStr(DM1.FechaSys))+',''INICIAL''  )' ;
       DM1.DCOM1.AppServer.EjecutaSql(tSQL);
//Inicio HPC_201707_COB
// Se adiciona control de número de devoluciones por oficio para tipo de desembolso 06
       If DBLkuCTipDes.Text='06' Then
       Begin
       XSQL:='UPDATE  DB2ADMIN.COB_DEV_POR_OFI SET NUMREGACT=0 WHERE 1=1 ';
       Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       Except
          ShowMessage ('Se ha producido un error al actualizar la tabla COB_DEV_POR_OFI');
          exit;
       End;
       End;
//Final HPC_201707_COB

   End
Else
    MessageDlg('No Existe Información Para Ese Rango..! ', mtError, [mbOk], 0);

DM1.cdsCambios.Close;
end;

end.
