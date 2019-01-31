// Unidad               : COB455
// Formulario           : FDetDesONP
// Fecha de Creación    : 28/02/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Mostrar el detalle  de los Oficios enviados a la ONP, tambien permite imprimir y enviar a excel este listado.
// Actualizaciones      :
// HPC_201303_COB       : 13/03/2013 - Creación de la opción.
// SPP_201305_COB       : Se realiza el pase a producción a partir del HPC_201303_COB
// HPC_201306_COB       : Autorizacion de la Cobranza por ONP a cesantes por la Ley 19990
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201402_COB       : Grabar Excesos en forma automatica
// SPP_201402_COB       : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201513_COB       : Mejoras al envio y descargo cesantes 19990 - ONP
// HPC_201601_COB       : Se modifica para mostrar e imprimir el envío a descuento por ONP deudas al FSC
unit COB455;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Spin, DB,
  ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppVar, ExtCtrls;

type
 
  TFDetDesONP = class(TForm)
    DBGDetalleEnvio: TwwDBGrid;
    dbgcabconIButton: TwwIButton;
    btnCerrar: TBitBtn;
    btnaexcel: TBitBtn;
    Btnimprimir: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppRDetPrevio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    pplTituloPrevio: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel12: TppLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    pnlAnoMes: TPanel;
    ppSummaryBand1: TppSummaryBand;
    Label3: TLabel;
    pnlNumOfi: TPanel;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    pnlGenArc: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    pnlEnvArc: TPanel;
    pnlRetCob: TPanel;
    Label5: TLabel;
    pnlFenGen: TPanel;
    Label6: TLabel;
    pnldescob: TPanel;
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
    shpInconsistencia: TShape;
    lblInconsistencia: TLabel;
    chbInconsistencias: TCheckBox;
// Inicio HPC_201601_COB - Variables
    ppdbTipo: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel15: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    pplblTipo: TppLabel;
// Final HPC_201601_COB
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
    procedure FormActivate(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
    procedure BtnimprimirClick(Sender: TObject);
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
    procedure DBGDetalleEnvioDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure chbInconsistenciasClick(Sender: TObject);
//Inicio HPC_201601_COB - Tipo de impresora
    procedure ppdbTipoPrint(Sender: TObject);
//Final HPC_201601_COB
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
  private
   xCanTot, xMonTot : Double;
   xSql:String;
   // Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
    procedure MostrarGrid(xTipo:String);
   // Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
  public
    { Public declarations }
  end;
var
  FDetDesONP: TFDetDesONP;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFDetDesONP.FormActivate(Sender: TObject);
begin
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
{   pnlNumOfi.Caption := Copy(DM1.cdsRegCob.FieldByName('NUMOFI').AsString,1,4)+'-'+Copy(DM1.cdsRegCob.FieldByName('NUMOFI').AsString,5,2);
   pnlAnoMes.Caption := Copy(DM1.cdsRegCob.FieldByName('PERCOB').AsString,1,4)+'-'+UpperCase(DM1.DesMes(StrToInt(Copy(DM1.cdsRegCob.FieldByName('PERCOB').AsString,5,2)),'N'));
   pnlFenGen.Caption := DM1.cdsRegCob.FieldByName('FECGEN').AsString;
   If DM1.cdsRegCob.FieldByName('GENARC').AsString = 'S' Then pnlGenArc.Caption := 'SI' Else pnlGenArc.Caption := 'NO';
   If DM1.cdsRegCob.FieldByName('ENVARC').AsString = 'S' Then pnlEnvArc.Caption := 'SI' Else pnlEnvArc.Caption := 'NO';
   If DM1.cdsRegCob.FieldByName('RETARC').AsString = 'S' Then pnlRetCob.Caption := 'SI' Else pnlRetCob.Caption := 'NO';
   If DM1.cdsRegCob.FieldByName('FLADES').AsString = 'S' Then pnldescob.Caption := 'SI' Else pnldescob.Caption := 'NO';
    {// Inicio: SPP_201402_COB     - Grabar Excesos en forma automatica
       xSql := 'SELECT NUMOFI, ASOID, CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI, TIPDOCCOD, NUMDOCIDE, MONENVCOB, SOLPEN, INDALT '
             +   'FROM COB_ONP_PRO_DET WHERE NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)
             +  ' order by ASOAPENOMDNI';
    // Fin: SPP_201402_COB        - Grabar Excesos en forma automatica


   xSql := 'SELECT NUMOFI, X.ASOID, CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI, TIPDOCCOD, NUMDOCIDE, MONENVCOB, '+
           'SOLPEN, INDALT,TIPCREID FROM COB_ONP_PRO_DET X, '+
           '(SELECT ASOID,MAX(''S'') TIPCREID FROM CRE301 X WHERE '+
           'EXISTS (SELECT ASOID FROM COB_ONP_PRO_DET WHERE X.ASOID=ASOID AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+') '+
           'AND TIPCREID=''CE'' AND CREESTID=''02'' '+
           'GROUP BY ASOID) Y  WHERE NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+'  AND X.ASOID=Y.ASOID(+) ORDER BY ASOAPENOMDNI ';


   DM1.cdsDetRegCob.Close;
   DM1.cdsDetRegCob.DataRequest(xSql);
   DM1.cdsDetRegCob.Open;
   xCanTot := 0;
   xMonTot := 0;
   While Not DM1.cdsDetRegCob.Eof Do
   Begin
      xCanTot := xCanTot + 1;
      xMonTot := xMonTot + DM1.cdsDetRegCob.FieldByName('MONENVCOB').AsFloat;
      DM1.cdsDetRegCob.Next;
   End;
   DM1.cdsDetRegCob.First;
   DBGDetalleEnvio.Selected.Clear;
   DBGDetalleEnvio.Selected.Add('ASOID'#9'10'#9'Código~Derrama'#9#9);
   DBGDetalleEnvio.Selected.Add('CODPEN'#9'8'#9'Código de~pensión'#9#9);
   DBGDetalleEnvio.Selected.Add('CODLEYPEN'#9'2'#9'Ley de~pensión'#9#9);
   DBGDetalleEnvio.Selected.Add('CODPRE'#9'2'#9'Tipo de~prestación'#9#9);
   DBGDetalleEnvio.Selected.Add('ASOAPENOMDNI'#9'55'#9'Apellidos y nombres'#9#9);
   DBGDetalleEnvio.Selected.Add('TIPDOCCOD'#9'2'#9'Tipo de~documento'#9#9);
   DBGDetalleEnvio.Selected.Add('TIPCREID'#9'1'#9'Crédito~cesante~ONP'#9#9);
   DBGDetalleEnvio.Selected.Add('NUMDOCIDE'#9'9'#9'Número de~documento'#9#9);
   DBGDetalleEnvio.Selected.Add('MONENVCOB'#9'15'#9'Monto a~enviar'#9#9);
   // Inicio: SPP_201308_COB       : Reportes de la Cobranza por ONP a cesantes por la Ley 19990
   DBGDetalleEnvio.Selected.Add('SOLPEN'#9'6'#9'# Autorización~ONP'#9#9);
   // Fin: SPP_201308_COB       : Reportes de la Cobranza por ONP a cesantes por la Ley 19990
   DBGDetalleEnvio.Selected.Add('INDALT'#9'1'#9'Indicador~de alta'#9#9);
   DBGDetalleEnvio.ApplySelected;
   TNumericField(DM1.cdsDetRegCob.FieldByName('MONENVCOB')).DisplayFormat := '##,###,##0.00';
   DBGDetalleEnvio.ColumnByName('TIPDOCCOD').FooterValue :='Total';
   DBGDetalleEnvio.ColumnByName('NUMDOCIDE').FooterValue := FloatToStrF(xCanTot, ffNumber, 6, 0);
   DBGDetalleEnvio.ColumnByName('MONENVCOB').FooterValue := FloatToStrF(xMonTot, ffNumber, 10, 2);
   }

MostrarGrid('T');
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
End;


procedure TFDetDesONP.btnCerrarClick(Sender: TObject);
begin
  FDetDesONP.Close;
end;

procedure TFDetDesONP.btnaexcelClick(Sender: TObject);
Var  xArchivo : String;
  xAno, xMes, xDia : word;
begin
  Try
    DM1.cdsDetRegCob.First;
  Except
    MessageDlg('No existe información para esta opción', mtInformation,[mbOk],0);
    Exit;
  End;
  decodedate(DM1.FechaSys,xAno,xMes,xDia);
  xArchivo := 'DET_ENVIO_ONP_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
  xArchivo := xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
  xArchivo := xArchivo;
  If FileExists(xArchivo+'.slk') Then DeleteFile(xArchivo+'.slk');
  DM1.ExportaGridExcel(DBGDetalleEnvio,xArchivo);
End;

procedure TFDetDesONP.BtnimprimirClick(Sender: TObject);
begin
  pplTituloPrevio.Caption := 'REGISTROS A PROCESAR PARA EL ENVIO ONP - PERIODO : '+DM1.cdsRegCob.FieldByName('PERCOB').AsString;
  ppRDetPrevio.Print;
  ppRDetPrevio.Stop;
end;

// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
procedure TFDetDesONP.DBGDetalleEnvioDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
  var xCaracter:String;
begin
     If DBGDetalleEnvio.DataSource.DataSet.RecordCount>0 Then
        Begin
           xCaracter:=DM1.cdsDetRegCob.FieldByName('CODPEN').AsString;
           If Length(Trim(xCaracter[1]))=1 Then
           Begin
             If xCaracter[1] In ['A'..'Z','a'..'z'] Then
               Begin
                  DBGDetalleEnvio.Canvas.Font.Color := clNone;
                  DBGDetalleEnvio.DefaultDrawDataCell(rect, Field, State);
               End
             Else
               Begin
                  DBGDetalleEnvio.Canvas.Font.Color := clFuchsia;
                  DBGDetalleEnvio.DefaultDrawDataCell(rect, Field, State);
               End;
           End;
        End;
end;

procedure TFDetDesONP.chbInconsistenciasClick(Sender: TObject);
begin
    If chbInconsistencias.Checked Then
       MostrarGrid('I')
    Else
       MostrarGrid('T');
end;

procedure TFDetDesONP.MostrarGrid(xTipo:String);
begin
   pnlNumOfi.Caption := Copy(DM1.cdsRegCob.FieldByName('NUMOFI').AsString,1,4)+'-'+Copy(DM1.cdsRegCob.FieldByName('NUMOFI').AsString,5,2);
   pnlAnoMes.Caption := Copy(DM1.cdsRegCob.FieldByName('PERCOB').AsString,1,4)+'-'+UpperCase(DM1.DesMes(StrToInt(Copy(DM1.cdsRegCob.FieldByName('PERCOB').AsString,5,2)),'N'));
   pnlFenGen.Caption := DM1.cdsRegCob.FieldByName('FECGEN').AsString;
   If DM1.cdsRegCob.FieldByName('GENARC').AsString = 'S' Then pnlGenArc.Caption := 'SI' Else pnlGenArc.Caption := 'NO';
   If DM1.cdsRegCob.FieldByName('ENVARC').AsString = 'S' Then pnlEnvArc.Caption := 'SI' Else pnlEnvArc.Caption := 'NO';
   If DM1.cdsRegCob.FieldByName('RETARC').AsString = 'S' Then pnlRetCob.Caption := 'SI' Else pnlRetCob.Caption := 'NO';
   If DM1.cdsRegCob.FieldByName('FLADES').AsString = 'S' Then pnldescob.Caption := 'SI' Else pnldescob.Caption := 'NO';
//Inicio HPC_201601_COB - Se adiciona variable Tipo
// xSql := 'SELECT NUMOFI,ASOID,CODPEN,CODLEYPEN,CODPRE,ASOAPENOMDNI,TIPDOCCOD,NUMDOCIDE,MONENVCOB,SOLPEN,INDALT,TIPCREID,INCON '+
//         'FROM (SELECT NUMOFI, X.ASOID, CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI, TIPDOCCOD, NUMDOCIDE, MONENVCOB, '+
   xSql := 'SELECT TIPO,NUMOFI,ASOID,CODPEN,CODLEYPEN,CODPRE,ASOAPENOMDNI,TIPDOCCOD,NUMDOCIDE,MONENVCOB,SOLPEN,INDALT,TIPCREID,INCON '+
           'FROM (SELECT TIPO,NUMOFI, X.ASOID, CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI, TIPDOCCOD, NUMDOCIDE, MONENVCOB, '+
//Final HPC_201601_COB
           'SOLPEN, INDALT,TIPCREID, CASE WHEN LENGTH(TRIM(TRANSLATE(SUBSTR(CODPEN,1,1), '' +-.0123456789'', '' ''))) IS NULL '+
           '                               THEN ''N'' ELSE ''T'' END INCON '+
           'FROM COB_ONP_PRO_DET X, '+
           '(SELECT ASOID,MAX(''S'') TIPCREID FROM CRE301 X WHERE '+
           'EXISTS (SELECT ASOID FROM COB_ONP_PRO_DET WHERE X.ASOID=ASOID AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+') '+
           'AND TIPCREID=''CE'' AND CREESTID=''02'' '+
           'GROUP BY ASOID) Y  WHERE NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+'  AND X.ASOID=Y.ASOID(+) '+
//Inicio HPC_201601_COB - Ordena por tipo
//         'ORDER BY ASOAPENOMDNI)';
           'ORDER BY TIPO,ASOAPENOMDNI)';
//Final HPC_201601_COB

           If xTipo='I' Then
              xSql := xSql+' WHERE INCON=''N'' ';


   DM1.cdsDetRegCob.Close;
   DM1.cdsDetRegCob.DataRequest(xSql);
   DM1.cdsDetRegCob.Open;
   xCanTot := 0;
   xMonTot := 0;
   While Not DM1.cdsDetRegCob.Eof Do
   Begin
      xCanTot := xCanTot + 1;
      xMonTot := xMonTot + DM1.cdsDetRegCob.FieldByName('MONENVCOB').AsFloat;
      DM1.cdsDetRegCob.Next;
   End;
   DM1.cdsDetRegCob.First;
   DBGDetalleEnvio.Selected.Clear;
   DBGDetalleEnvio.Selected.Add('ASOID'#9'10'#9'Código~Derrama'#9#9);
   DBGDetalleEnvio.Selected.Add('CODPEN'#9'8'#9'Código de~pensión'#9#9);
   DBGDetalleEnvio.Selected.Add('CODLEYPEN'#9'2'#9'Ley de~pensión'#9#9);
   DBGDetalleEnvio.Selected.Add('CODPRE'#9'2'#9'Tipo de~prestación'#9#9);
   DBGDetalleEnvio.Selected.Add('ASOAPENOMDNI'#9'55'#9'Apellidos y nombres'#9#9);
   DBGDetalleEnvio.Selected.Add('TIPDOCCOD'#9'2'#9'Tipo de~documento'#9#9);
   DBGDetalleEnvio.Selected.Add('TIPCREID'#9'1'#9'Crédito~cesante~ONP'#9#9);
//Inicio HPC_201601_COB -- Envia detalle
   DBGDetalleEnvio.Selected.Add('TIPO'#9'1'#9'Tipo~Desc.'#9#9);
//Final HPC_201601_COB   
   DBGDetalleEnvio.Selected.Add('NUMDOCIDE'#9'9'#9'Número de~documento'#9#9);
   DBGDetalleEnvio.Selected.Add('MONENVCOB'#9'15'#9'Monto a~enviar'#9#9);
   DBGDetalleEnvio.Selected.Add('SOLPEN'#9'6'#9'# Autorización~ONP'#9#9);
   DBGDetalleEnvio.Selected.Add('INDALT'#9'1'#9'Indicador~de alta'#9#9);
   DBGDetalleEnvio.ApplySelected;
   TNumericField(DM1.cdsDetRegCob.FieldByName('MONENVCOB')).DisplayFormat := '##,###,##0.00';
   DBGDetalleEnvio.ColumnByName('TIPDOCCOD').FooterValue :='Total';
   DBGDetalleEnvio.ColumnByName('NUMDOCIDE').FooterValue := FloatToStrF(xCanTot, ffNumber, 6, 0);
   DBGDetalleEnvio.ColumnByName('MONENVCOB').FooterValue := FloatToStrF(xMonTot, ffNumber, 10, 2);
end;


// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
//Inicio HPC_201601_COB - Tipo de impresora
procedure TFDetDesONP.ppdbTipoPrint(Sender: TObject);
begin
If ppdbTipo.Text='C' Then pplblTipo.Caption := 'Créditos';
If ppdbTipo.Text='F' Then pplblTipo.Caption := 'Fondo Solidario de Contingencia';
end;
//Final HPC_201601_COB
end.
