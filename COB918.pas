// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB918
// Formulario                    : fDetBancos
// Fecha de Creación             :
// Autor                         : Ricardo Medina Zavaleta
// Objetivo                      : Detalle de Pagos por Bancos

// Actualizaciones:
//                               : SAR2008JC-0079 (28/10/2008) DADIR20080014 (28/10/2008) SE AÑADE BOTON PARA EXPORTAR A EXCEL.
//                               : HPP_201108     -  RMEDINA - Se adiciona las devoluciones al FSC
//                               : HPC_201215_COB -  RMEDINA - Opcion de filtrado por Numero de Operacion con nuevo formato
// DPP_201211_COB                : Pase se realiza de acuerdo al HPC_201215_COB
// HPC_201305_COB                : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
// SPP_201307_COB                : Se realiza el pase a producción a partir del HPC_201305_COB
// HPC_201311_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte y eliminar columnas no necesarias
// SPP_201313_COB                : Se realiza el pase a producción a partir de lo indicado en el documento HPC_201311_COB.

unit COB918;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, wwdblook, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppProd,
  ppReport, ppVar, ppEndUsr, ppParameter, Grids, DBGrids;

type
  TfDetBancos = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    Label3: TLabel;
    rdbSeleccion: TRadioGroup;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    gbBanco: TGroupBox;
    DBLCBanco: TwwDBLookupCombo;
    EdtDesBan: TEdit;
    gbOfiDes: TGroupBox;
    DBLkOfiDes: TwwDBLookupCombo;
    EdtOfiDes: TEdit;
    DataBancos: TppDBPipeline;
    ppRepDetBan: TppReport;
    ppDesigner1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppLblTitulo01: TppLabel;
    ppLine17: TppLine;
    ppLblTitulo02: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine14: TppLine;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppLine15: TppLine;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppDBText36: TppDBText;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine13: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine10: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLine8: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppLabel53: TppLabel;
    ppLabel55: TppLabel;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppLine6: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine16: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine4: TppLine;
    DBGrid: TDBGrid;
    BitBtn1: TBitBtn;

    ppLabel3: TppLabel;
    ppRepDetBanFSC: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblTitFSC01: TppLabel;
    ppLine2: TppLine;
    ppLblTitFSC02: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine5: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText12: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine7: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine9: TppLine;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine11: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine12: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLine18: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel52: TppLabel;
    ppLine19: TppLine;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppDBText19: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBCalc26: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppLabel57: TppLabel;
    ppLabel88: TppLabel;
    ppLine20: TppLine;
    ppParameterList2: TppParameterList;
    rdbFechaRegistro: TRadioButton;
    rdbFechaOperacion: TRadioButton;
    ppRepDetBanFOperac: TppReport;
    ppParameterList3: TppParameterList;
    ppLabel97: TppLabel;
    ppDBText33: TppDBText;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppHeaderBand2: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppShape2: TppShape;
    ppLabel5: TppLabel;
    ppShape3: TppShape;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppShape4: TppShape;
    ppLabel51: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppShape5: TppShape;
    ppLabel95: TppLabel;
    pplblTitulo: TppLabel;
    pplblSubtitulo: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel108: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape7: TppShape;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
// Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte y eliminar columnas no necesarias

    ppDBText27: TppDBText;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppDBText32: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape6: TppShape;
    ppDBCalc2: TppDBCalc;
    ppLine22: TppLine;
    ppLabel107: TppLabel;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText24: TppDBText;
    ppShape8: TppShape;
    ppDBCalc9: TppDBCalc;
    ppLine33: TppLine;
    ppLine38: TppLine;
    ppLabel96: TppLabel;
    ppDBText31: TppDBText;
// Fin: SPP_201313_COB               : 30/10/2013 - Agregar nuevas columnas al Reporte y eliminar columnas no necesarias
    ppDBText35: TppDBText;
    ppLabel109: TppLabel;
    ppShape9: TppShape;
    ppLabel94: TppLabel;
    ppLabel110: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel111: TppLabel;
    ppDBText43: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppDBText56: TppDBText;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppDBText25: TppDBText;
    ppLabel93: TppLabel;
    ppGroupFooterBand13: TppGroupFooterBand;
    Panel1: TPanel;
// Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte y eliminar columnas no necesarias
    ppShape10: TppShape;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppLine27: TppLine;
    ppLine30: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
// Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte y eliminar columnas no necesarias

    procedure BitSalirClick(Sender: TObject);
    procedure rdbSeleccionClick(Sender: TObject);
    procedure DBLCBancoChange(Sender: TObject);
    procedure DBLkOfiDesChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetBancos: TfDetBancos;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDetBancos.BitSalirClick(Sender: TObject);
begin
 Close;
end;

procedure TfDetBancos.rdbSeleccionClick(Sender: TObject);
Begin
Case rdbSeleccion.ItemIndex Of
   0: Begin
        DBLCBanco.Text:=''; EdtDesBan.Text := '';
        DBLkOfiDes.Text:=''; EdtOfiDes.Text := '' ;
        gbBanco.Visible := False;
        gbOfiDes.Visible := False;
        gbOfiDes.Enabled := False;
        gbBanco.Enabled := False;
       //Inicio: DPP_201211_COB
        rdbFechaRegistro.Checked  := True;
        rdbFechaOperacion.Checked := False;
        rdbFechaOperacion.Visible := True;
       //Fin: DPP_201211_COB
      End;
   1: Begin
        gbBanco.Visible := False;
        gbOfiDes.Visible := True;
        DBLCBanco.Text:=''; EdtDesBan.Text := '';
        DBLkOfiDes.Text:=''; EdtOfiDes.Text := '' ;
        gbOfiDes.Enabled := True;
        gbBanco.Enabled := False;
        DM1.cdsOfdes.Close;
        DM1.cdsOfdes.DataRequest('SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID');
        DM1.cdsOfdes.Open;


       //Inicio: DPP_201211_COB
        rdbFechaRegistro.Checked  := True;
        rdbFechaOperacion.Checked := False;
        rdbFechaOperacion.Visible := False;
       //Fin: DPP_201211_COB
      End;
 2,3: Begin

        gbBanco.Visible := True;
        gbOfiDes.Visible := False;
        DBLCBanco.Text:=''; EdtDesBan.Text := '';
        DBLkOfiDes.Text:=''; EdtOfiDes.Text := '' ;
        gbBanco.Enabled := True;
        gbOfiDes.Enabled := False;
        DM1.cdsCBcos.Close;
        // DM1.cdsCBcos.DataRequest('SELECT BANCOID,BANCONOM FROM TGE105 WHERE BANCOID IN (''03'',''04'',''05'') Order By BANCOID') ;
        DM1.cdsCBcos.DataRequest('SELECT BANCOID,BANCONOM FROM TGE105 WHERE  NVL(FLAVIGCOB, ''X'') = ''S'' Order By BANCOID') ;
        DM1.cdsCBcos.Open;
        DBLCBanco.LookupTable := DM1.cdsCBcos;
        DBLCBanco.LookupField := 'BANCOID';
       //Inicio: DPP_201211_COB
        rdbFechaRegistro.Checked  := True;
        rdbFechaOperacion.Checked := False;
        rdbFechaOperacion.Visible := False;
       //Fin: DPP_201211_COB
      End;
End;

end;

procedure TfDetBancos.DBLCBancoChange(Sender: TObject);
begin
   If DM1.cdsCBcos.Locate('BANCOID',VarArrayof([DBLCBanco.text]),[]) Then
      Begin
        EdtDesBan.Text  := DM1.cdsCBcos.fieldbyname('BANCONOM').AsString ;
      End
   Else
      Begin
        if Length(DBLCBanco.Text) <> 2 then
           Begin
              Beep;
              EdtDesBan.Text  :='';
           End;
      End

end;

procedure TfDetBancos.DBLkOfiDesChange(Sender: TObject);
begin
   If DM1.cdsOfdes.Locate('OFDESID',VarArrayof([DBLkOfiDes.Text]),[]) Then
      Begin
        EdtOfiDes.Text  := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString ;
      End
   Else
      Begin
        if Length(DBLkOfiDes.Text) <> 2 then
           Begin
              Beep;
              EdtOfiDes.Text  :='';
           End;
      End;

end;

procedure TfDetBancos.FormActivate(Sender: TObject);
begin
  If DM1.cdsCambios.Active = True Then DM1.cdsCambios.Close;
  rdbSeleccion.ItemIndex := 0;
  DtpFecIni.Date := DM1.FechaSys;
  DtpFecFin.Date := DM1.FechaSys;
  //Inicio: DPP_201211_COB
  rdbFechaRegistro.Checked := True;
  //Fin: DPP_201211_COB
end;

procedure TfDetBancos.BitPrintClick(Sender: TObject);
var
//Inicio: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
   xSQL,tSQL,xSeleccion, xSQL1, xSQL2 :String;
//Fin: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
begin
If rdbSeleccion.ItemIndex=1 Then
   Begin
   If Length(Trim(EdtOfiDes.Text))=0 Then
      Begin
         MessageDlg(' Faltan Seleccionar Una Oficina Desconcentrada ', mtError,[mbOk],0);
         Exit;
      End;
   End;

If rdbSeleccion.ItemIndex=2 Then
   Begin
   If Length(Trim(EdtDesBan.Text))=0 Then
      Begin
         MessageDlg(' Faltan Seleccionar Una Banco ', mtError,[mbOk],0);
         Exit;
      End;
   End;


Screen.Cursor := crHourglass;

Case rdbSeleccion.ItemIndex Of
   0: Begin tSQL:=' ';xSeleccion:=' ( EN GENERAL ) ' ; End;
   1: Begin tSQL:='AND B.ORIGEN='+QuotedStr(Trim(DBLkOfiDes.Text))+' '; xSeleccion:=' ( POR OFICINA DESC. ) '; End;
   2: Begin tSQL:='AND A.BANCOID='+QuotedStr(Trim(DBLCBanco.Text))+' ' ;xSeleccion:=' ( POR BANCO ) ';  End;

   3: Begin tSQL:='AND A.BANCOID='+QuotedStr(Trim(DBLCBanco.Text))+' ' ;xSeleccion:=' ( POR BANCO ) ';  End;

End;

  DM1.cdsCambios.IndexFieldNames :='';


If rdbSeleccion.ItemIndex = 3 Then //Fondo Solidario por Banco
   Begin
   xSql:='SELECT A.FEC_CRE_COB_FSC FREG,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, A.USU_COB_DEU USUARIO,'+
         '       NVL(B.USERNOM,''POR IDENTIFICAR'') USERNOM, A.BANCOID,NVL(D.BANCONOM,''POR IDENTIFICAR'') BANCONOM, '+
         '       A.CCBCOID,A.USEID,A.ASOID, A.ASOCODMOD,NUM_DEU NROPRESTAMO,'+
         '       A.ASOAPENOM,NROOPE CREDOCPAG,A.FEC_COB_DEU CREFPAG,SUM(NVL(A.IMP_COB_DEU,0)) CREMTOCOB,'+
         '       0 CREAMORT,0 CREINTERES, 0 CREFLAT,0 MONCOBDESGRAV,SUM(NVL(A.IMP_EXC_DEU,0)) CREMTOEXC '+
         'FROM COB_FSC_PAGOS_AL_FSC A,USERTABLE B,APO110 C,TGE105 D '+
         'WHERE  A.FORPAGID=''03'' AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '+
         '       AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND '+
         '       A.EST_COB_COD NOT IN (''04'',''13'') '+tSQL+' AND A.USU_COB_DEU=B.USERID(+) AND '+
         '       B.ORIGEN=C.OFDESID(+) AND A.BANCOID=D.BANCOID(+)   '+
         'GROUP BY A.FEC_CRE_COB_FSC,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR''),A.USU_COB_DEU,NVL(B.USERNOM,''POR IDENTIFICAR''),'+
         '         A.BANCOID,NVL(D.BANCONOM,''POR IDENTIFICAR''),A.CCBCOID,A.USEID,A.ASOID,'+
         '         A.ASOCODMOD,NUM_DEU,A.ASOAPENOM,A.NROOPE,A.FEC_COB_DEU '+
         'ORDER BY A.FEC_CRE_COB_FSC,B.ORIGEN,A.USU_COB_DEU,A.BANCOID,A.CCBCOID,A.FEC_COB_DEU,A.NROOPE ';
    ppLblTitFSC01.Caption := 'DEVOLUCIONES AL FSC PAGADAS POR BANCO, REGIS.DEL: '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
    ppLblTitFSC02.Caption := 'Fondo Solidario de Contingencia (FSC)- '+xSeleccion;
   End
Else
   If rdbFechaRegistro.Checked Then
   Begin
//Inicio: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
    xSQL:='SELECT A.FREG,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, '+
    'A.USUARIO,NVL(B.USERNOM,''POR IDENTIFICAR'') USERNOM, '+
    'A.BANCOID,NVL(D.BANCONOM,''POR IDENTIFICAR'') BANCONOM,A.CCBCOID,A.UPROID, A.USEID,A.ASOID, A.ASOCODMOD,'+
    'SUBSTR(A.CREDID,7,2)||''-''||SUBSTR(A.CREDID,9,7)||''-''||SUBSTR(A.CREDID,3,4) NROPRESTAMO, '+
    'A.ASOAPENOM,A.CREDOCPAG,A.CREFPAG,SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB, '+
    'SUM(NVL(A.CREAMORT,0)) CREAMORT,SUM(NVL(A.CREINTERES,0)) CREINTERES,  '+
    'SUM(NVL(A.CREFLAT,0)) CREFLAT,SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC   '+
    'FROM CRE310 A,USERTABLE B,APO110 C,TGE105 D '+
    'WHERE  A.FORPAGID=''03'' AND A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '+
    'AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.CREESTID NOT IN (''04'',''13'') '+ tSQL+' '+
    'AND A.USUARIO=B.USERID(+) AND B.ORIGEN=C.OFDESID(+) AND A.BANCOID=D.BANCOID(+) '+
    'GROUP BY A.FREG,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR''),  '+
    'A.USUARIO,NVL(B.USERNOM,''POR IDENTIFICAR''),  '+
    'A.BANCOID,NVL(D.BANCONOM,''POR IDENTIFICAR''),A.CCBCOID,A.UPROID,A.USEID,A.ASOID, A.ASOCODMOD, '+
    'SUBSTR(A.CREDID,7,2)||''-''||SUBSTR(A.CREDID,9,7)||''-''||SUBSTR(A.CREDID,3,4),  '+
    'A.ASOAPENOM,A.CREDOCPAG,A.CREFPAG  '+
    'ORDER BY A.FREG,B.ORIGEN,A.USUARIO,A.BANCOID,A.CCBCOID,A.CREFPAG,A.CREDOCPAG';
//Fin: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
    ppLblTitulo01.Caption := 'CUOTAS PAGADAS POR BANCO REGISTRADAS DEL : '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
    ppLblTitulo02.Caption := 'AMORTIZACION/INTERES/F.DESGRAVAMEN/GASTOS - '+xSeleccion;

   End;

   If rdbFechaOperacion.Checked Then
   Begin
    //Inicio: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
    XSQL1:='SELECT '' '' TIPO,ASOID, ASOCODMOD, ASOAPENOM, CREDOCPAG, CREFPAG, NUMOPE, CREMTOCOB, CREAMORT, CREINTERES,'+
          '       CREFLAT, MONCOBDESGRAV, CREMTOEXC, OFDESNOM, USUARIO, BANCONOM, CCBCOID, PAGOS, '+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '       USEID, UPROID, CUOPROCOB, SALDO_PEND, '+
          '       CUODIF, CUOPAC, CREPEN, CUOVEN '+
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          'FROM ( SELECT /*+ INDEX_JOIN(A) */ A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.CREDOCPAG, A.CREFPAG, MAX(A.FREG) FREG, '+
          '      SUBSTR(A.CREDOCPAG, 4) NUMOPE, SUM(NVL(A.CREMTOCOB, 0)) CREMTOCOB,'+
          '      SUM(NVL(A.CREAMORT, 0)) CREAMORT, SUM(NVL(A.CREINTERES, 0)) CREINTERES,'+
          '      SUM(NVL(A.CREFLAT, 0)) CREFLAT, SUM(NVL(A.MONCOBDESGRAV, 0)) MONCOBDESGRAV, SUM(NVL(A.CREMTOEXC, 0)) CREMTOEXC, B.ORIGEN,'+
          '      NVL(C.OFDESNOM, ''POR IDENTIFICAR'') OFDESNOM, A.USUARIO,'+
          '      NVL(D.BANCONOM, ''POR IDENTIFICAR'') BANCONOM, A.CCBCOID,'+
          '      MAX(PAGOS) PAGOS, A.USEID, A.UPROID, '+
          '      ( SELECT COUNT(*) FROM CRE302  WHERE CREESTID=''14'' AND A.ASOID=ASOID(+) ) CUOPROCOB, '+
          '      ( SELECT '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'') < TO_CHAR(SYSDATE, ''YYYYMM'')) AND (CREFVEN = CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'') = TO_CHAR(SYSDATE, ''YYYYMM'')) AND(CREFVEN = CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN <> CREFVENINI) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'')>TO_CHAR(SYSDATE, ''YYYYMM'')) AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0) END),0) SALDO_PEND'+
          '          FROM CRE302 WHERE A.ASOID = ASOID(+) '+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '      ) SALDO_PEND, ' +
          '(SELECT NVL(CRECUOTA, 0) CUOPAC FROM CRE301 WHERE A.ASOID = ASOID(+) AND A.CREDID = CREDID(+) ) CUOPAC, '+
          '(SELECT COUNT(1) CUODIF FROM CRE302 '+
          '  WHERE A.ASOID = ASOID(+) AND CREESTID IN (''02'', ''11'', ''27'') AND CREFVEN <> CREFVENINI AND CREFVENINI IS NOT NULL ) CUODIF, '+
          '(SELECT COUNT(1) CREPEN FROM CRE301 WHERE A.ASOID = ASOID(+) AND CREESTID IN (''02'', ''01'') ) CREPEN, '+
          '(SELECT count(*) FROM CRE302 '+
          '  WHERE A.ASOID=ASOID(+) AND A.CREDID=CREDID(+) AND CREESTID IN (''02'',''11'',''27'') AND CREANO||CREMES<=to_char(sysdate,''yyyymm'')) CUOVEN '+
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte

          '      FROM CRE310 A, USERTABLE B, APO110 C, TGE105 D, '+
          '      (SELECT ASOID, SUM(PAGOS) PAGOS ' +
          '       FROM (SELECT /*+ INDEX_JOIN(E) */ DISTINCT ASOID, CREFPAG,'+
          '             DENSE_RANK() OVER(PARTITION BY ASOID, CREFPAG ORDER BY ASOID, CREFPAG) PAGOS ' +
          '             FROM CRE310 E'+
          '             WHERE FORPAGID IN (''03'', ''02'') '+
          '                    AND TO_CHAR(CREFPAG,''YYYYMM'') BETWEEN '+
          '                        TO_CHAR(ADD_MONTHS(SYSDATE, -4),''YYYYMM'') AND '+
          '                        TO_CHAR(SYSDATE,''YYYYMM'') '+
          '                    AND CREESTID NOT IN (''13'',''04'')) '+
          '         GROUP BY ASOID) E '+
          ' WHERE A.FORPAGID = ''03'' '+
          '  AND A.FOPERAC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '+
          '  AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
          '  AND A.CREESTID NOT IN (''04'',''13'') '+
          '  AND A.USUARIO = B.USERID(+) '+
          '  AND B.ORIGEN = C.OFDESID(+) '+
          '  AND A.BANCOID = D.BANCOID(+)'+
          '  AND A.ASOID = E.ASOID(+) '+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          ' GROUP BY A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.CREDOCPAG, A.CREFPAG, SUBSTR(A.CREDOCPAG, 4),'+
          '         B.ORIGEN, NVL(C.OFDESNOM,''POR IDENTIFICAR''), A.USUARIO,'+
          '         NVL(D.BANCONOM, ''POR IDENTIFICAR''), A.CCBCOID, A.USEID, A.UPROID, A.CREDID)  ';
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
    XSQL2:=
          '  UNION ALL '+
          'SELECT ''FSC'' TIPO,ASOID, ASOCODMOD, ASOAPENOM,NROOPE,FOPERAC, NUMOPE,CREMTOCOB,CREAMORT,CREINTERES,'+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '       0 CREFLAT, 0 MONCOBDESGRAV, CREMTOEXC, OFDESNOM, USUARIO, BANCONOM, CCBCOID, PAGOS, USEID, UPROID, CUOPROCOB, SALDO_PEND, '+
          '       CUODIF, CUOPAC, CREPEN, CUOVEN '+
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          ' FROM (SELECT /*+ INDEX_JOIN(A) */ A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.NROOPE, A.FOPERAC, MAX(A.FEC_CRE_COB_FSC) FREG,'+
          '       SUBSTR(A.NROOPE, 4) NUMOPE, SUM(NVL(A.IMP_COB_DEU, 0)) CREMTOCOB,'+
          '       0 CREAMORT, 0 CREINTERES,0 CREFLAT,0 MONCOBDESGRAV, SUM(NVL(A.IMP_EXC_DEU, 0))CREMTOEXC, B.ORIGEN,'+
          '       NVL(C.OFDESNOM, ''POR IDENTIFICAR'') OFDESNOM, A.USU_COB_DEU USUARIO,'+
          '       NVL(D.BANCONOM, ''POR IDENTIFICAR'') BANCONOM, A.CCBCOID,'+
          '       MAX(PAGOS) PAGOS, A.USEID, A.UPROID, '+
          '      ( SELECT COUNT(*) FROM CRE302  WHERE CREESTID=''14'' AND A.ASOID=ASOID(+) ) CUOPROCOB, '+
          '      ( SELECT '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'') < TO_CHAR(SYSDATE, ''YYYYMM'')) AND (CREFVEN = CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'') = TO_CHAR(SYSDATE, ''YYYYMM'')) AND(CREFVEN = CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN <> CREFVENINI) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'')>TO_CHAR(SYSDATE, ''YYYYMM'')) AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0) END),0) SALDO_PEND'+
          '          FROM CRE302 WHERE A.ASOID = ASOID(+) '+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '      ) SALDO_PEND, ' +
          '0.00 CUOPAC, '+
          '0.00 CUODIF, '+
          '0.00 CREPEN, '+
          '0.00 CUOVEN '+
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '       FROM COB_FSC_PAGOS_AL_FSC A, USERTABLE B, APO110 C, TGE105 D,'+
          '       (SELECT ASOID, SUM(PAGOS) PAGOS '+
          '        FROM (SELECT /*+ INDEX_JOIN(E) */ DISTINCT ASOID, FOPERAC,'+
          '                      DENSE_RANK() OVER(PARTITION BY ASOID, FOPERAC ORDER BY ASOID, FOPERAC) PAGOS '+
          '              FROM COB_FSC_PAGOS_AL_FSC E'+
          '              WHERE FORPAGID IN (''03'',''02'') '+
          '                    AND TO_CHAR(FOPERAC,''YYYYMM'') BETWEEN '+
          '                        TO_CHAR(ADD_MONTHS(SYSDATE, -4),''YYYYMM'') AND '+
          '                        TO_CHAR(SYSDATE,''YYYYMM'') '+
          '                    AND EST_COB_COD NOT IN (''13'',''04'')) '+
          '         GROUP BY ASOID) E '+
          'WHERE A.FORPAGID =''03'' ' +
          '  AND A.FOPERAC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '+
          '  AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
          '  AND A.EST_COB_COD NOT IN (''04'',''13'') '+
          '  AND A.USU_COB_DEU = B.USERID(+) '+
          '  AND B.ORIGEN = C.OFDESID(+) '+
          '  AND A.BANCOID = D.BANCOID(+) '+
          '  AND A.ASOID = E.ASOID(+) '+
          ' GROUP BY A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.NROOPE, A.FOPERAC, SUBSTR(A.FOPERAC, 4),'+
          '          B.ORIGEN, NVL(C.OFDESNOM,''POR IDENTIFICAR''), A.USU_COB_DEU,'+
          '          NVL(D.BANCONOM, ''POR IDENTIFICAR''), A.CCBCOID, A.USEID, A.UPROID '+
          'ORDER BY BANCONOM, CCBCOID, USUARIO, FOPERAC, CREMTOCOB) ';
    xSQL := xSQL1 + xSQL2;
    pplblTitulo.Caption    := 'CUOTAS PAGADAS POR BANCO : '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
    pplblSubtitulo.Caption := 'AMORTIZACION/INTERES/F.DESGRAVAMEN/GASTOS - POR FECHA DE OPERACIÓN';
    DM1.cdsCambios.IndexFieldNames :='BANCONOM;CCBCOID;USUARIO;CREFPAG;CREMTOCOB';
    //Fin: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;

   End;

DM1.cdsCambios.Close;
DM1.cdsCambios.DataRequest(xSQL);
DM1.cdsCambios.Open;
If DM1.cdsCambios.RecordCount > 0 Then
   Begin

     If rdbSeleccion.ItemIndex = 3 Then
        Begin
          ppRepDetBanFSC.Print;
          ppRepDetBanFSC.Stop;
         End
     Else
        Begin
          //Inicio: DPP_201211_COB
          If rdbFechaRegistro.Checked Then
          Begin
          //Fin: DPP_201211_COB
          ppRepDetBan.Print;
          //ppDesigner1.ShowModal;
          ppRepDetBan.Cancel;
          //Inicio: DPP_201211_COB
          End;
          //Fin: DPP_201211_COB

          //Inicio: DPP_201211_COB
          If rdbFechaOperacion.Checked Then
          Begin
           //ppDesigner1.Report := ppRepDetBanFOperac;
           //ppDesigner1.ShowModal;
           ppRepDetBanFOperac.Print;
           ppRepDetBanFOperac.Cancel;
          End;
          //Fin: DPP_201211_COB

        End;
   End
Else
   MessageDlg(' No Existe Información Para Este Rango ó El Criterio Seleccionado ', mtError,[mbOk],0);

   Screen.Cursor := crDefault;
//   DM1.cdsCambios.Close;
end;

procedure TfDetBancos.BitBtn1Click(Sender: TObject);
Var 
//Inicio: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
   xSQL,tSQL,xSeleccion, xSQL1, xSQL2 :String;
//Fin: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
begin
  If rdbSeleccion.ItemIndex=1 Then
  Begin
    If Length(Trim(EdtOfiDes.Text))=0 Then
    Begin
      MessageDlg(' Faltan Seleccionar Una Oficina Desconcentrada ', mtError,[mbOk],0);
      Exit;
    End;
  End;
  If rdbSeleccion.ItemIndex=2 Then
  Begin
    If Length(Trim(EdtDesBan.Text))=0 Then
    Begin
      MessageDlg(' Faltan Seleccionar Una Banco ', mtError,[mbOk],0);
      Exit;
    End;
  End;

  Screen.Cursor := crHourglass;
  Case rdbSeleccion.ItemIndex Of
    0: Begin tSQL:=' ';xSeleccion:=' ( EN GENERAL ) ' ; End;
    1: Begin tSQL:='AND B.ORIGEN='+QuotedStr(Trim(DBLkOfiDes.Text))+' '; xSeleccion:=' ( POR OFICINA DESC. ) '; End;
    2: Begin tSQL:='AND A.BANCOID='+QuotedStr(Trim(DBLCBanco.Text))+' ' ;xSeleccion:=' ( POR BANCO ) ';  End;

    3: Begin tSQL:='AND A.BANCOID='+QuotedStr(Trim(DBLCBanco.Text))+' ' ;xSeleccion:=' ( POR BANCO ) ';  End;

  End;

 //Inicio: DPP_201211_COB
   DM1.cdsCambios.IndexFieldNames :='';
 //Fin: DPP_201211_COB

If rdbSeleccion.ItemIndex = 3 Then //Fondo Solidario por Banco
   Begin
   xSql:='SELECT A.FEC_CRE_COB_FSC FREG,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, A.USU_COB_DEU USUARIO,'+
         '       NVL(B.USERNOM,''POR IDENTIFICAR'') USERNOM, A.BANCOID,NVL(D.BANCONOM,''POR IDENTIFICAR'') BANCONOM, '+
         '       A.CCBCOID,A.USEID,A.ASOID, A.ASOCODMOD,NUM_DEU NROPRESTAMO,'+
         '       A.ASOAPENOM,NROOPE CREDOCPAG,A.FEC_COB_DEU CREFPAG,SUM(NVL(A.IMP_COB_DEU,0)) CREMTOCOB,'+
//Inicio: DPP_201211_COB
//       '       0 CREAMORT,0 CREINTERES, 0 CREFLAT,SUM(NVL(A.IMP_EXC_DEU,0)) CREMTOEXC '+
         '       0 CREAMORT,0 CREINTERES, 0 CREFLAT, 0 MONCOBDESGRAV, SUM(NVL(A.IMP_EXC_DEU,0)) CREMTOEXC '+
//Fin: DPP_201211_COB
         'FROM COB_FSC_PAGOS_AL_FSC A,USERTABLE B,APO110 C,TGE105 D '+
         'WHERE  A.FORPAGID=''03'' AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '+
         '       AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND '+
         '       A.EST_COB_COD NOT IN (''04'',''13'') '+tSQL+' AND A.USU_COB_DEU=B.USERID(+) AND '+
         '       B.ORIGEN=C.OFDESID(+) AND A.BANCOID=D.BANCOID(+)   '+
         'GROUP BY A.FEC_CRE_COB_FSC,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR''),A.USU_COB_DEU,NVL(B.USERNOM,''POR IDENTIFICAR''),'+
         '         A.BANCOID,NVL(D.BANCONOM,''POR IDENTIFICAR''),A.CCBCOID,A.USEID,A.ASOID,'+
         '         A.ASOCODMOD,NUM_DEU,A.ASOAPENOM,A.NROOPE,A.FEC_COB_DEU '+
         'ORDER BY A.FEC_CRE_COB_FSC,B.ORIGEN,A.USU_COB_DEU,A.BANCOID,A.CCBCOID,A.FEC_COB_DEU,A.NROOPE ';
    ppLblTitulo01.Caption := 'DEVOLUCIONES AL FSC PAGADAS POR BANCO, REGIS.DEL: '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
    ppLblTitulo02.Caption := 'Fondo Solidario de Contingencia (FSC)- '+xSeleccion;
   End
Else
   If rdbFechaRegistro.Checked Then
   Begin
//Inicio: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
    xSQL:='SELECT A.FREG,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, '+
    'A.USUARIO,NVL(B.USERNOM,''POR IDENTIFICAR'') USERNOM, '+
    'A.BANCOID,NVL(D.BANCONOM,''POR IDENTIFICAR'') BANCONOM,A.CCBCOID,A.UPROID, A.USEID,A.ASOID, A.ASOCODMOD,'+
    'SUBSTR(A.CREDID,7,2)||''-''||SUBSTR(A.CREDID,9,7)||''-''||SUBSTR(A.CREDID,3,4) NROPRESTAMO, '+
    'A.ASOAPENOM,A.CREDOCPAG,A.CREFPAG,SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB, '+
    'SUM(NVL(A.CREAMORT,0)) CREAMORT,SUM(NVL(A.CREINTERES,0)) CREINTERES,  '+
    'SUM(NVL(A.CREFLAT,0)) CREFLAT,SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC   '+
    'FROM CRE310 A,USERTABLE B,APO110 C,TGE105 D '+
    'WHERE  A.FORPAGID=''03'' AND A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '+
    'AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.CREESTID NOT IN (''04'',''13'') '+ tSQL+' '+
    'AND A.USUARIO=B.USERID(+) AND B.ORIGEN=C.OFDESID(+) AND A.BANCOID=D.BANCOID(+) '+
    'GROUP BY A.FREG,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR''),  '+
    'A.USUARIO,NVL(B.USERNOM,''POR IDENTIFICAR''),  '+
    'A.BANCOID,NVL(D.BANCONOM,''POR IDENTIFICAR''),A.CCBCOID,A.UPROID,A.USEID,A.ASOID, A.ASOCODMOD, '+
    'SUBSTR(A.CREDID,7,2)||''-''||SUBSTR(A.CREDID,9,7)||''-''||SUBSTR(A.CREDID,3,4),  '+
    'A.ASOAPENOM,A.CREDOCPAG,A.CREFPAG  '+
    'ORDER BY A.FREG,B.ORIGEN,A.USUARIO,A.BANCOID,A.CCBCOID,A.CREFPAG,A.CREDOCPAG';
//Fin: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
    ppLblTitulo01.Caption := 'CUOTAS PAGADAS POR BANCO REGISTRADAS DEL : '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
    ppLblTitulo02.Caption := 'AMORTIZACION/INTERES/F.DESGRAVAMEN/GASTOS - '+xSeleccion;
   End;

   If rdbFechaOperacion.Checked Then
   Begin
    //Inicio: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
    XSQL1:='SELECT '' '' TIPO,ASOID, ASOCODMOD, ASOAPENOM, CREDOCPAG, CREFPAG, NUMOPE, CREMTOCOB, CREAMORT, CREINTERES,'+
          '       CREFLAT, MONCOBDESGRAV, CREMTOEXC, OFDESNOM, USUARIO, BANCONOM, CCBCOID, PAGOS, '+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '       USEID, UPROID, CUOPROCOB, SALDO_PEND, '+
          '       CUODIF, CUOPAC, CREPEN, CUOVEN '+
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          'FROM ( SELECT /*+ INDEX_JOIN(A) */ A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.CREDOCPAG, A.CREFPAG, MAX(A.FREG) FREG, '+
          '      SUBSTR(A.CREDOCPAG, 4) NUMOPE, SUM(NVL(A.CREMTOCOB, 0)) CREMTOCOB,'+
          '      SUM(NVL(A.CREAMORT, 0)) CREAMORT, SUM(NVL(A.CREINTERES, 0)) CREINTERES,'+
          '      SUM(NVL(A.CREFLAT, 0)) CREFLAT, SUM(NVL(A.MONCOBDESGRAV, 0)) MONCOBDESGRAV, SUM(NVL(A.CREMTOEXC, 0)) CREMTOEXC, B.ORIGEN,'+
          '      NVL(C.OFDESNOM, ''POR IDENTIFICAR'') OFDESNOM, A.USUARIO,'+
          '      NVL(D.BANCONOM, ''POR IDENTIFICAR'') BANCONOM, A.CCBCOID,'+
          '      MAX(PAGOS) PAGOS, A.USEID, A.UPROID, '+
          '      ( SELECT COUNT(*) FROM CRE302  WHERE CREESTID=''14'' AND A.ASOID=ASOID(+) ) CUOPROCOB, '+
          '      ( SELECT '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'') < TO_CHAR(SYSDATE, ''YYYYMM'')) AND (CREFVEN = CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'') = TO_CHAR(SYSDATE, ''YYYYMM'')) AND(CREFVEN = CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN <> CREFVENINI) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'')>TO_CHAR(SYSDATE, ''YYYYMM'')) AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0) END),0) SALDO_PEND'+
          '          FROM CRE302 WHERE A.ASOID = ASOID(+) '+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '      ) SALDO_PEND, ' +
          '(SELECT NVL(CRECUOTA, 0) CUOPAC FROM CRE301 WHERE A.ASOID = ASOID(+) AND A.CREDID = CREDID(+) ) CUOPAC, '+
          '(SELECT COUNT(1) CUODIF FROM CRE302 '+
          '  WHERE A.ASOID = ASOID(+) AND CREESTID IN (''02'', ''11'', ''27'') AND CREFVEN <> CREFVENINI AND CREFVENINI IS NOT NULL ) CUODIF, '+
          '(SELECT COUNT(1) CREPEN FROM CRE301 WHERE A.ASOID = ASOID(+) AND CREESTID IN (''02'', ''01'') ) CREPEN, '+
          '(SELECT count(*) FROM CRE302 '+
          '  WHERE A.ASOID=ASOID(+) AND A.CREDID=CREDID(+) AND CREESTID IN (''02'',''11'',''27'') AND CREANO||CREMES<=to_char(sysdate,''yyyymm'')) CUOVEN '+
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '      FROM CRE310 A, USERTABLE B, APO110 C, TGE105 D, '+
          '      (SELECT ASOID, SUM(PAGOS) PAGOS ' +
          '       FROM (SELECT /*+ INDEX_JOIN(E) */ DISTINCT ASOID, CREFPAG,'+
          '             DENSE_RANK() OVER(PARTITION BY ASOID, CREFPAG ORDER BY ASOID, CREFPAG) PAGOS ' +
          '             FROM CRE310 E'+
          '             WHERE FORPAGID IN (''03'', ''02'') '+
          '                    AND TO_CHAR(CREFPAG,''YYYYMM'') BETWEEN '+
          '                        TO_CHAR(ADD_MONTHS(SYSDATE, -4),''YYYYMM'') AND '+
          '                        TO_CHAR(SYSDATE,''YYYYMM'') '+
          '                    AND CREESTID NOT IN (''13'',''04'')) '+
          '         GROUP BY ASOID) E '+
          ' WHERE A.FORPAGID = ''03'' '+
          '  AND A.FOPERAC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '+
          '  AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
          '  AND A.CREESTID NOT IN (''04'',''13'') '+
          '  AND A.USUARIO = B.USERID(+) '+
          '  AND B.ORIGEN = C.OFDESID(+) '+
          '  AND A.BANCOID = D.BANCOID(+)'+
          '  AND A.ASOID = E.ASOID(+) '+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          ' GROUP BY A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.CREDOCPAG, A.CREFPAG, SUBSTR(A.CREDOCPAG, 4),'+
          '         B.ORIGEN, NVL(C.OFDESNOM,''POR IDENTIFICAR''), A.USUARIO,'+
          '         NVL(D.BANCONOM, ''POR IDENTIFICAR''), A.CCBCOID, A.USEID, A.UPROID, A.CREDID )  ';
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
    XSQL2:=
          '  UNION ALL '+
          'SELECT ''FSC'' TIPO,ASOID, ASOCODMOD, ASOAPENOM,NROOPE,FOPERAC, NUMOPE,CREMTOCOB,CREAMORT,CREINTERES,'+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '       0 CREFLAT, 0 MONCOBDESGRAV, CREMTOEXC, OFDESNOM, USUARIO, BANCONOM, CCBCOID, PAGOS, USEID, UPROID, CUOPROCOB, SALDO_PEND, '+
          '       CUODIF, CUOPAC, CREPEN, CUOVEN '+
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          ' FROM (SELECT /*+ INDEX_JOIN(A) */ A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.NROOPE, A.FOPERAC, MAX(A.FEC_CRE_COB_FSC) FREG,'+
          '       SUBSTR(A.NROOPE, 4) NUMOPE, SUM(NVL(A.IMP_COB_DEU, 0)) CREMTOCOB,'+
          '       0 CREAMORT, 0 CREINTERES,0 CREFLAT,0 MONCOBDESGRAV, SUM(NVL(A.IMP_EXC_DEU, 0))CREMTOEXC, B.ORIGEN,'+
          '       NVL(C.OFDESNOM, ''POR IDENTIFICAR'') OFDESNOM, A.USU_COB_DEU USUARIO,'+
          '       NVL(D.BANCONOM, ''POR IDENTIFICAR'') BANCONOM, A.CCBCOID,'+
          '       MAX(PAGOS) PAGOS, A.USEID, A.UPROID, '+
          '      ( SELECT COUNT(*) FROM CRE302  WHERE CREESTID=''14'' AND A.ASOID=ASOID(+) ) CUOPROCOB, '+
          '      ( SELECT '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'') < TO_CHAR(SYSDATE, ''YYYYMM'')) AND (CREFVEN = CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'') = TO_CHAR(SYSDATE, ''YYYYMM'')) AND(CREFVEN = CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN <> CREFVENINI) AND CREESTID IN (''02'', ''27'', ''11'') THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END ) ,0) + '+
                     'NVL( SUM( CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'')>TO_CHAR(SYSDATE, ''YYYYMM'')) AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) AND CREESTID IN (''02'', ''27'', ''11'') THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0) END),0) SALDO_PEND'+
          '          FROM CRE302 WHERE A.ASOID = ASOID(+) '+
          // Inicio: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '      ) SALDO_PEND, ' +
                '0.00 CUOPAC, '+
                '0.00 CUODIF, '+
                '0.00 CREPEN, '+
                '0.00 CUOVEN '+
          // Fin: SPP_201313_COB                : 30/10/2013 - Agregar nuevas columnas al Reporte
          '       FROM COB_FSC_PAGOS_AL_FSC A, USERTABLE B, APO110 C, TGE105 D,'+
          '       (SELECT ASOID, SUM(PAGOS) PAGOS '+
          '        FROM (SELECT /*+ INDEX_JOIN(E) */ DISTINCT ASOID, FOPERAC,'+
          '                      DENSE_RANK() OVER(PARTITION BY ASOID, FOPERAC ORDER BY ASOID, FOPERAC) PAGOS '+
          '              FROM COB_FSC_PAGOS_AL_FSC E'+
          '              WHERE FORPAGID IN (''03'',''02'') '+
          '                    AND TO_CHAR(FOPERAC,''YYYYMM'') BETWEEN '+
          '                        TO_CHAR(ADD_MONTHS(SYSDATE, -4),''YYYYMM'') AND '+
          '                        TO_CHAR(SYSDATE,''YYYYMM'') '+
          '                    AND EST_COB_COD NOT IN (''13'',''04'')) '+
          '         GROUP BY ASOID) E '+
          'WHERE A.FORPAGID =''03'' ' +
          '  AND A.FOPERAC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '+
          '  AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
          '  AND A.EST_COB_COD NOT IN (''04'',''13'') '+
          '  AND A.USU_COB_DEU = B.USERID(+) '+
          '  AND B.ORIGEN = C.OFDESID(+) '+
          '  AND A.BANCOID = D.BANCOID(+) '+
          '  AND A.ASOID = E.ASOID(+) '+
          ' GROUP BY A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.NROOPE, A.FOPERAC, SUBSTR(A.FOPERAC, 4),'+
          '          B.ORIGEN, NVL(C.OFDESNOM,''POR IDENTIFICAR''), A.USU_COB_DEU,'+
          '          NVL(D.BANCONOM, ''POR IDENTIFICAR''), A.CCBCOID, A.USEID, A.UPROID '+
          'ORDER BY BANCONOM, CCBCOID, USUARIO, FOPERAC, CREMTOCOB) ';
    xSQL := xSQL1 + xSQL2;
    //Fin: SPP_201307_COB : 15/04/2012 - Modificar reporte de Cuotas Pagas en Banco, agregar y mover columnas;
    pplblTitulo.Caption    := 'CUOTAS PAGADAS POR BANCO : '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
    pplblSubtitulo.Caption := 'AMORTIZACION/INTERES/F.DESGRAVAMEN/GASTOS - POR FECHA DE OPERACIÓN';
    DM1.cdsCambios.IndexFieldNames :='BANCONOM;CCBCOID;CREFPAG;CREMTOCOB';
   End;


  DM1.cdsCambios.Close;
  DM1.cdsCambios.DataRequest(xSQL);
  DM1.cdsCambios.Open;
  If DM1.cdsCambios.RecordCount = 0 Then
  Begin
    MessageDlg(' No Existe Información Para Este Rango ó El Criterio Seleccionado ', mtError,[mbOk],0);
    Exit;
  End;

  DBGrid.DataSource := DM1.dsCambios;
  DM1.HojaExcel('REPORTE', DM1.dsCambios, DBGrid);
  Screen.Cursor := crDefault;

end;

end.
