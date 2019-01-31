// Unidad               : COB459
// Formulario           : FGrabadiskette
// Fecha de Creación    : 13/03/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Grabar archivo texto
// Actualizaciones      :
// HPC_201303_COB       : 13/03/2013 - Creación de la opción.
// SPP_201305_COB       : Se realiza el pase a producción a partir del HPC_201303_COB.
// HPC_201310_COB       : 17/09/2013 - Modificar Datos de Archivo TXT
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB

unit COB459;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, FileCtrl, Buttons;

type
  TFGrabadiskette = class(TForm)
    GroupBox1: TGroupBox;
    btngrabar: TBitBtn;
    dlbruta: TDirectoryListBox;
    menombre: TMaskEdit;
    dcbdrive: TDriveComboBox;
    BitBtn1: TBitBtn;
    procedure btngrabarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGrabadiskette: TFGrabadiskette;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFGrabadiskette.btngrabarClick(Sender: TObject);
Var xSql, xnombre, xnombreruta, xmontot, xcantot, xnomarc, xlinea, fichero:String;
   f: textfile;
   i, xfalta:Integer;
begin
   If Length(Trim(menombre.Text))=0 Then
      Begin
        MessageDlg('Debe seleccionar un nombre para el archivo de texto !', mtError, [mbOk], 0);
        Exit;
      End;
   // Inicio: SPP_201312_COB        : 17/09/2013 - Modificar Datos de Archivo TXT
   xSql:='SELECT NUMOFI, ASOID, CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI,  TIPDOCCOD, NUMDOCIDE, MONENVCOB, SOLPEN, INDALT '
       + 'FROM COB_ONP_PRO_DET WHERE NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+' order by ASOAPENOMDNI';
   // Fin: SPP_201312_COB           : 17/09/2013 - Modificar Datos de Archivo TXT
   DM1.cdsDetRegCob.Close;
   DM1.cdsDetRegCob.DataRequest(xSql);
   DM1.cdsDetRegCob.Open;
   If DM1.cdsDetRegCob.RecordCount = 0 Then
   Begin
     MessageDlg('No existe información de envio para este periodo. ¡ VERIFIQUE !', mtInformation, [mbOk], 0);
     Exit;
   End;
   Screen.Cursor := crHourGlass;
   xnomarc := menombre.Text+'.TXT';
   xnombreruta :=  dlbruta.Directory+'\'+xnomarc;
   MessageDlg('El archivo Texto para el envio se guardara en : '+xnombreruta, mtInformation, [mbOk], 0);
   fichero := xnomarc;
   AssignFile(f, fichero);
   Rewrite(f);
   // Genera cabecera
   { 20 codigo derrama, 01 mes de proceso, 2013 año de proceso, 0000027826 Monto total, 00002 Numero de registros}
   xmontot := DM1.StrZero(FloatToStr(DM1.cdsRegCob.FieldByName('MONENV').AsFloat*100),10);
   xcantot := DM1.StrZero(FloatToStr(DM1.cdsRegCob.FieldByName('NUMENV').AsFloat),5);
// Inicio: SPP_201312_COB       : 17/09/2013 - Modificar Datos de Archivo TXT
   xlinea := '20'+Copy(DM1.cdsRegCob.FieldByName('PERCOB').AsString,5,2)+Copy(DM1.cdsRegCob.FieldByName('PERCOB').AsString,1,4)+xmontot+xcantot;
// Fin: SPP_201312_COB          : 17/09/2013 - Modificar Datos de Archivo TXT
   writeln(f, xlinea);
   While Not DM1.cdsDetRegCob.Eof Do
   Begin
     xlinea := '';
     xlinea := DM1.cdsDetRegCob.FieldByName('CODPEN').AsString;  // Código de pensión
     xlinea := xlinea  + DM1.cdsDetRegCob.FieldByName('CODLEYPEN').AsString;  // Ley Pensión
     xlinea := xlinea  + DM1.cdsDetRegCob.FieldByName('CODPRE').AsString;  // Código de prestación del servicio
     // Apellidos y nombre(s) del pensionista
     xfalta :=  115 - length(Trim(DM1.cdsDetRegCob.FieldByName('ASOAPENOMDNI').AsString));
     xnombre := Trim(DM1.cdsDetRegCob.FieldByName('ASOAPENOMDNI').AsString);
     for i:= 1 to xfalta do xnombre := xnombre + ' ';
     xlinea := xlinea  + xnombre;
     xlinea := xlinea  + DM1.cdsDetRegCob.FieldByName('TIPDOCCOD').AsString;  // Tipo de documento de identidad
     // Inicio: SPP_201312_COB       : 17/09/2013 - Modificar Datos de Archivo TXT
     xlinea := xlinea  + DM1.StrZero(DM1.cdsDetRegCob.FieldByName('NUMDOCIDE').AsString,8)+'  ';  // Número de documento de identidad
     xlinea := xlinea  + DM1.StrZero( FloatToStrF(DM1.cdsDetRegCob.FieldByName('MONENVCOB').AsFloat,ffNumber,7,2),10);  // Monto enviado a la cobranza
     xlinea := xlinea  + DM1.StrZero(DM1.cdsDetRegCob.FieldByName('SOLPEN').AsString,6);  // Número de documento de identidad
     // Fin: SPP_201312_COB          : 17/09/2013 - Modificar Datos de Archivo TXT
     xlinea := xlinea  + '1';  // Indicardor de alta
     writeln(f, xlinea);
     DM1.cdsDetRegCob.Next;
   End;
   DM1.cdsDetRegCob.First;
   CloseFile(f);
   // Actualizando cabecera
   xSql := 'UPDATE COB_ONP_PRO_CAB SET ENVARC = ''S'' WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   DM1.cdsRegCob.Edit;
   DM1.cdsRegCob.FieldByName('ENVARC').AsString := 'S';
   DM1.cdsRegCob.ApplyUpdates(0);
   Screen.Cursor := crDefault;
   MessageDlg('Se grabó con Exito en: '+xnombreruta, mtInformation, [mbOk], 0);
end;

procedure TFGrabadiskette.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

end.
