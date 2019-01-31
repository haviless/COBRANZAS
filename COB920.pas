unit COB920;
//Inicio de Estámdares 01/08/2011
//Unidad             : COB920
//Formulario         : fCtrlBanc
//Fecha de Creación  :
//Autor              : Ricardo Medina Zavaleta
//Objetivo           : Control de Operaciones Bancarias

//Actualizaciones    :
//HPC_201215_COB     : Debido a la implementación del Fondo de Desgravamen se
//                     adiciona la columna de desgravamen "MONCOBDESGRAV" en todos
//                     las consultas que acceden a la tabal CRE310
// DPP_201211_COB    : Pase se realiza de acuerdo al HPC_201215_COB
// HPC_201806_COB    : Exceso en Cronogramas Cerrados (ONP, BANCO)

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Db,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppSubRpt,
  // inicio HPP_201108_COB
  DBClient, ppEndUsr, ppParameter;
  // fin HPP_201108_COB

type
  TfCtrlBanc = class(TForm)
    gpOprBan: TGroupBox;
    BitSalir: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    BitMostrar: TBitBtn;
    rdbSeleccion: TRadioGroup;
    dtgBanGen: TwwDBGrid;
    dtgUseReg: TwwDBGrid;
    lblGrid01: TLabel;
    lblGrid02: TLabel;
    BitPrintDet: TBitBtn;
    BitPrintCon: TBitBtn;
    ppdbData: TppDBPipeline;
    ppRepDet: TppReport;
// inicio HPP_201108_COB
    DSBANCOS: TDataSource;
    CDSBANCOS: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine5: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine6: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    pds: TppDesigner;
    ppParameterList1: TppParameterList;
    ppParameterList2: TppParameterList;
    ppDBData01: TppDBPipeline;
    ppDBData02: TppDBPipeline;
    ppDBData03: TppDBPipeline;
    ppRepCon: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLblTit03: TppLabel;
    ppLblTit04: TppLabel;
    ppLabel25: TppLabel;
    ppLabel28: TppLabel;
    ppLabel43: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText82: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText16: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppDBCalc106: TppDBCalc;
    ppDBCalc107: TppDBCalc;
    ppDBCalc108: TppDBCalc;
    ppDBCalc109: TppDBCalc;
    ppDBCalc110: TppDBCalc;
    ppDBCalc111: TppDBCalc;
    ppLabel180: TppLabel;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel9: TppLabel;
    ppLabel26: TppLabel;
    ppLabel29: TppLabel;
    ppLabel44: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText1: TppDBText;
    ppDBText17: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppLabel190: TppLabel;
    ppDBCalc112: TppDBCalc;
    ppDBCalc113: TppDBCalc;
    ppDBCalc114: TppDBCalc;
    ppDBCalc115: TppDBCalc;
    ppDBCalc116: TppDBCalc;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLine3: TppLine;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine4: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel16: TppLabel;
    ppLabel27: TppLabel;
    ppLabel30: TppLabel;
    ppLabel45: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText2: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    ppLabel191: TppLabel;
    ppDBCalc117: TppDBCalc;
    ppDBCalc118: TppDBCalc;
    ppDBCalc119: TppDBCalc;
    ppDBCalc120: TppDBCalc;
    ppDBCalc121: TppDBCalc;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBText19: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppHeaderBand7: TppHeaderBand;
    ppLabel156: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLblTit01: TppLabel;
    ppLblTit02: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppDBCalc102: TppDBCalc;
    ppDBCalc103: TppDBCalc;
    ppDBCalc104: TppDBCalc;
    ppDBCalc105: TppDBCalc;
    ppLine37: TppLine;
    ppLabel150: TppLabel;
    ppLabel160: TppLabel;
    ppLine38: TppLine;
    ppDBCalc11: TppDBCalc;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppDBText83: TppDBText;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppDBCalc98: TppDBCalc;
    ppDBCalc99: TppDBCalc;
    ppDBCalc100: TppDBCalc;
    ppDBCalc101: TppDBCalc;
    ppLine33: TppLine;
    ppLabel151: TppLabel;
    ppLabel159: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppGroup16: TppGroup;
    ppGroupHeaderBand16: TppGroupHeaderBand;
    ppDBText84: TppDBText;
    ppGroupFooterBand16: TppGroupFooterBand;
    ppDBCalc94: TppDBCalc;
    ppDBCalc95: TppDBCalc;
    ppDBCalc96: TppDBCalc;
    ppDBCalc97: TppDBCalc;
    ppLabel152: TppLabel;
    ppLabel158: TppLabel;
    ppLine7: TppLine;
    ppDBCalc9: TppDBCalc;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    ppDBText85: TppDBText;
    ppGroupFooterBand17: TppGroupFooterBand;
    ppDBCalc90: TppDBCalc;
    ppDBCalc91: TppDBCalc;
    ppDBCalc92: TppDBCalc;
    ppDBCalc93: TppDBCalc;
    ppLine35: TppLine;
    ppLabel153: TppLabel;
    ppLabel157: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppGroup18: TppGroup;
    ppGroupHeaderBand18: TppGroupHeaderBand;
    ppDBText86: TppDBText;
    ppLine40: TppLine;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLine39: TppLine;
    ppLabel46: TppLabel;
    ppGroupFooterBand18: TppGroupFooterBand;
    ppDBCalc86: TppDBCalc;
    ppDBCalc87: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    ppDBCalc89: TppDBCalc;
    ppLine34: TppLine;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppDBCalc13: TppDBCalc;
    procedure BitSalirClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure rdbSeleccionClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DtpFecIniChange(Sender: TObject);
    procedure DtpFecFinChange(Sender: TObject);
    procedure dtgBanGenRowChanged(Sender: TObject);
    procedure dtgUseRegDblClick(Sender: TObject);
    procedure dtgBanGenDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgBanGenDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure dtgUseRegDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgUseRegDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure dtgBanGenDrawTitleCell(Sender: TObject; Canvas: TCanvas;
      Field: TField; Rect: TRect; var DefaultDrawing: Boolean);
    procedure dtgUseRegDrawTitleCell(Sender: TObject; Canvas: TCanvas;
      Field: TField; Rect: TRect; var DefaultDrawing: Boolean);
    procedure BitPrintDetClick(Sender: TObject);
    procedure BitPrintConClick(Sender: TObject);
// inicio HPP_201108_COB
    procedure dtgBanGenCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
// fin HPP_201108_COB
  private
    { Private declarations }
    procedure CarResBancos(xOrigen:Integer);
    procedure CarResUsuarios(xOrigen:Integer);
    procedure LimResBancos;
  public
    { Public declarations }
    procedure CarDetUsuarios(xOrigen:Integer; xFiltra: String);
  end;

var
  fCtrlBanc: TfCtrlBanc;

implementation

uses COBDM1, CRE921;

{$R *.dfm}

procedure TfCtrlBanc.BitSalirClick(Sender: TObject);
begin
   Close;
end;


procedure TfCtrlBanc.BitMostrarClick(Sender: TObject);
begin
// inicio HPP_201108_COB
  CDSBANCOS.EmptyDataSet;
// fin HPP_201108_COB
  CarResBancos(rdbSeleccion.ItemIndex);
end;

procedure TfCtrlBanc.CarResBancos(xOrigen: Integer);
var xSQL,xSeleccion:String;
    xCrecapital,xCremtoint,xCremtoflat,xCremtocob,xCremtoexc:Currency ;
    //Inicio: DPP_201211_COB
    //Variable que contendrá el importe de desgravamen
    xCremtoDesgravamen :Currency ;
    //Fin: DPP_201211_COB
// inicio HPP_201108_COB
    XCORR:Integer;
// fin HPP_201108_COB
begin

Screen.Cursor:=crHourGlass;
lblGrid01.Caption:=rdbSeleccion.Caption+' : '+rdbSeleccion.Items.Strings[xOrigen];
Case xOrigen Of
     0: xSeleccion:='AND ARCHIVOFTP IS NULL ';
     1: xSeleccion:='AND ARCHIVOFTP IS NOT NULL ';
     2: xSeleccion:=' ';
End ;
// inicio HPP_201108_COB
    xCrecapital:=0;xCremtoint:=0;xCremtoflat:=0;xCremtocob:=0;xCremtoexc:=0;
    //Inicio: DPP_201211_COB
    //Inicializando la variable de Desgravamen
    xCremtoDesgravamen := 0;
    //Fin: DPP_201211_COB
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    // DESCARGO DE BANCOS CRONOGRAMA CERRADO
    xSQL:='SELECT A.BANCOID ,NVL(BANCONOM,''NO IDENTICADO'') BANCONOM,A.CCBCOID, '+
          '0 CREAMORT,0 CREINTERES,0 CREFLAT,0 MONCOBDESGRAV,'+
          'SUM(A.IMPORTE) CREMTOCOB,SUM(A.IMPORTE) CREMTOEXC '+
          'FROM COB_DES_CRO_CERRADO_DET A,TGE105 B '+
          'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'')  '+
          'AND A.FORPAGID=''03'' AND A.CCBCOID IS NOT NULL AND  A.FLGEST<>''13'' AND A.BANCOID=B.BANCOID(+) '+
          'GROUP BY A.BANCOID,BANCONOM,A.CCBCOID';

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    xcorr:=0;
    If Dm1.cdsQry.RecordCount>0 Then
    Begin
      While Not Dm1.cdsQry.Eof do
      Begin
          CDSBANCOS.Insert;
          xcorr:=xcorr+1;
          CDSBANCOS.FieldByName('Tipo').AsString       := '';
          CDSBANCOS.FieldByName('Corr').Asinteger      := XCORR;
          CDSBANCOS.FieldByName('Bancoid').AsString    := DM1.cdsQry.FieldByName('Bancoid').AsString;
          CDSBANCOS.FieldByName('BancoNom').AsString   := DM1.cdsQry.FieldByName('BancoNom').AsString;
          CDSBANCOS.FieldByName('Ccbcoid').AsString    := DM1.cdsQry.FieldByName('Ccbcoid').AsString;
          CDSBANCOS.FieldByName('Creamort').AsString   := DM1.cdsQry.FieldByName('Creamort').AsString;
          CDSBANCOS.FieldByName('Creinteres').AsString := DM1.cdsQry.FieldByName('Creinteres').AsString;
          CDSBANCOS.FieldByName('Creflat').AsString    := DM1.cdsQry.FieldByName('Creflat').AsString;
          CDSBANCOS.FieldByName('MONCOBDESGRAV').AsString    := DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsString;
          CDSBANCOS.FieldByName('Cremtocob').AsString  := DM1.cdsQry.FieldByName('Cremtocob').AsString;
          CDSBANCOS.FieldByName('CreMtoExc').AsString  := DM1.cdsQry.FieldByName('creMtoExc').AsString;
          Dm1.cdsQry.Next;
      End;
        CDSBANCOS.Insert;
        CDSBANCOS.FieldByName('Tipo').AsString     := '';
        CDSBANCOS.FieldByName('BancoNom').AsString := 'CRONOGRAMA CERRADO';
        CDSBANCOS.FieldByName('Corr').Asinteger    := 99;
    End;

// Fin HPC_201806_COB
// DESCARGO DE BANCOS EN CUOTAS
    xSQL:='SELECT A.BANCOID ,NVL(BANCONOM,''NO IDENTICADO'') BANCONOM,CCBCOID, '+
          //Inicio: DPP_201211_COB
          //Adicionando la columna de Desgravamen
          //'SUM(CREAMORT) CREAMORT,SUM(CREINTERES) CREINTERES,SUM(CREFLAT) CREFLAT, '+
          'SUM(CREAMORT) CREAMORT,SUM(CREINTERES) CREINTERES,SUM(CREFLAT) CREFLAT, SUM(MONCOBDESGRAV) MONCOBDESGRAV,'+
          //Fin: DPP_201211_COB
          'SUM(CREMTOCOB) CREMTOCOB,SUM(CREMTOEXC) CREMTOEXC '+
          'FROM CRE310 A,TGE105 B '+
          'WHERE FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'')  '+
          'AND FORPAGID=''03'' AND CCBCOID IS NOT NULL AND  CREESTID<>''13'' '+xSeleccion+' AND A.BANCOID=B.BANCOID(+) '+
          'GROUP BY A.BANCOID,BANCONOM,CCBCOID';


    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    xcorr:=0;

    If Dm1.cdsQry.RecordCount>0 Then
       Begin
      While Not Dm1.cdsQry.Eof do
        Begin
          CDSBANCOS.Insert;
          xcorr:=xcorr+1;
          CDSBANCOS.FieldByName('Tipo').AsString       := 'CUO';
          CDSBANCOS.FieldByName('Corr').Asinteger      := XCORR;
          CDSBANCOS.FieldByName('Bancoid').AsString    := DM1.cdsQry.FieldByName('Bancoid').AsString;
          CDSBANCOS.FieldByName('BancoNom').AsString   := DM1.cdsQry.FieldByName('BancoNom').AsString;
          CDSBANCOS.FieldByName('Ccbcoid').AsString    := DM1.cdsQry.FieldByName('Ccbcoid').AsString;
          CDSBANCOS.FieldByName('Creamort').AsString   := DM1.cdsQry.FieldByName('Creamort').AsString;
          CDSBANCOS.FieldByName('Creinteres').AsString := DM1.cdsQry.FieldByName('Creinteres').AsString;
          CDSBANCOS.FieldByName('Creflat').AsString    := DM1.cdsQry.FieldByName('Creflat').AsString;
          //Inicio: DPP_201211_COB
          //Actualizando la columna de Desgravamen
          CDSBANCOS.FieldByName('MONCOBDESGRAV').AsString    := DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsString;
          //Fin: DPP_201211_COB
          CDSBANCOS.FieldByName('Cremtocob').AsString  := DM1.cdsQry.FieldByName('Cremtocob').AsString;
          CDSBANCOS.FieldByName('CreMtoExc').AsString  := DM1.cdsQry.FieldByName('creMtoExc').AsString;
          Dm1.cdsQry.Next;
        End;

        CDSBANCOS.Insert;
        CDSBANCOS.FieldByName('Tipo').AsString     := 'CUO';
        CDSBANCOS.FieldByName('BancoNom').AsString := 'PAGO A CUOTAS';
        CDSBANCOS.FieldByName('Corr').Asinteger    := 99;

    End;


   If xOrigen<>1 Then

   Begin
    //DESCARGO DE BANCOS A DEVOLUCION DE FSC
      xSql:='SELECT A.BANCOID,NVL(B.BANCONOM,''NO IDENTICADO'') BANCONOM,A.CCBCOID, '+
            '       SUM(NVL(A.IMP_COB_DEU,0)) CREMTOCOB,SUM(NVL(A.IMP_EXC_DEU,0)) CREMTOEXC '+
            'FROM COB_FSC_PAGOS_AL_FSC A,TGE105 B '+
            'WHERE  A.FORPAGID=''03'' AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '+
            '       AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND '+
            '       A.EST_COB_COD NOT IN (''04'',''13'') AND A.BANCOID=B.BANCOID(+)   '+
            'GROUP BY A.BANCOID,BANCONOM,A.CCBCOID';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xcorr:=0;

      If Dm1.cdsQry.RecordCount>0 Then
         Begin
          While Not Dm1.cdsQry.Eof do
            Begin
             CDSBANCOS.Insert;
             xcorr:=xcorr+1;
             CDSBANCOS.FieldByName('Tipo').AsString       := 'FSC';
             CDSBANCOS.FieldByName('Corr').Asinteger      := XCORR;
             CDSBANCOS.FieldByName('Bancoid').AsString    := DM1.cdsQry.FieldByName('Bancoid').AsString;
             CDSBANCOS.FieldByName('BancoNom').AsString   := DM1.cdsQry.FieldByName('BancoNom').AsString;
             CDSBANCOS.FieldByName('Ccbcoid').AsString    := DM1.cdsQry.FieldByName('Ccbcoid').AsString;
             CDSBANCOS.FieldByName('Cremtocob').AsString  := DM1.cdsQry.FieldByName('Cremtocob').AsString;
             CDSBANCOS.FieldByName('CreMtoExc').AsString  := DM1.cdsQry.FieldByName('creMtoExc').AsString;
             Dm1.cdsQry.Next;
            End;
            CDSBANCOS.Insert;
            CDSBANCOS.FieldByName('Tipo').AsString     := 'FSC';
            CDSBANCOS.FieldByName('BancoNom').AsString := 'DEVOLUCION AL FSC';
            CDSBANCOS.FieldByName('Corr').Asinteger    := 99;
         End;
   End;

   TNumericField(CDSBANCOS.fieldbyname('CREAMORT')).DisplayFormat:='###,###.#0';
   TNumericField(CDSBANCOS.fieldbyname('CREINTERES')).DisplayFormat:='###,###.#0';
   TNumericField(CDSBANCOS.fieldbyname('CREFLAT')).DisplayFormat:='###,###.#0';
   //INICIO DPP_201211_COB
   //dando formato a la columna de Desgravamen
   TNumericField(CDSBANCOS.fieldbyname('MONCOBDESGRAV')).DisplayFormat:='###,###.#0';
   //FIN DPP_201211_COB
   TNumericField(CDSBANCOS.fieldbyname('CREMTOCOB')).DisplayFormat:='###,###.#0';
   TNumericField(CDSBANCOS.fieldbyname('CREMTOEXC')).DisplayFormat:='###,###.#0';
   If CDSBANCOS.RecordCount>0 Then
      Begin
        CDSBANCOS.First;
        While Not CDSBANCOS.Eof Do
         Begin
           xCrecapital:=xCrecapital + CDSBANCOS.FieldByName('CREAMORT').AsCurrency;
           xCremtoint:=xCremtoint + CDSBANCOS.FieldByName('CREINTERES').AsCurrency;
           xCremtoflat:=xCremtoflat + CDSBANCOS.FieldByName('CREFLAT').AsCurrency;
           //INICIO DPP_201211_COB
           //Acumulando la variable de Desgravamen
           xCremtoDesgravamen:=xCremtoDesgravamen + CDSBANCOS.FieldByName('MONCOBDESGRAV').AsCurrency;
           //FIN DPP_201211_COB
           xCremtocob:=xCremtocob + CDSBANCOS.FieldByName('CREMTOCOB').AsCurrency;
           xCremtoexc:=xCremtoexc + CDSBANCOS.FieldByName('CREMTOEXC').AsCurrency;
           CDSBANCOS.Next;
        End;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
        //SE COLOCÓ DE ESTA MANERA PORQUE AL INICIO NO PERMITE COLOCAR VALOR AL TIPO
        CDSBANCOS.First;
        while not CDSBANCOS.Eof do
        Begin
           If CDSBANCOS.FieldByName('Tipo').AsString='' Then
           Begin
              CDSBANCOS.Edit;
              CDSBANCOS.FieldByName('Tipo').AsString:='CCE';
              CDSBANCOS.Post;
           End;
           CDSBANCOS.Next;
        End;
// Fin HPC_201806_COB 
     End;

   dtgBanGen.ColumnByName('CCBCOID').FooterValue :='Total';
   dtgBanGen.ColumnByName('CREAMORT').FooterValue := FloatToStrF(xCrecapital,ffNumber, 10, 2);
   dtgBanGen.ColumnByName('CREINTERES').FooterValue := FloatToStrF(xCremtoint,ffNumber, 10, 2);
   dtgBanGen.ColumnByName('CREFLAT').FooterValue := FloatToStrF(xCremtoflat,ffNumber, 10, 2);
   //INICIO DPP_201211_COB
   //mostrando el total del Desgravamen
   dtgBanGen.ColumnByName('MONCOBDESGRAV').FooterValue := FloatToStrF(xCremtoDesgravamen,ffNumber, 10, 2);
   //FIN DPP_201211_COB
   dtgBanGen.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtocob,ffNumber, 10, 2);
   dtgBanGen.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(xCremtoexc,ffNumber, 10, 2);
   dtgBanGenRowChanged(Self);
   dtgBanGen.SetFocus;
   Screen.Cursor:=crDefault;
// fin HPP_201108_COB
End;




procedure TfCtrlBanc.rdbSeleccionClick(Sender: TObject);
begin
// inicio HPP_201108_COB
 CDSBANCOS.EmptyDataSet;
// fin HPP_201108_COB
 CarResBancos(rdbSeleccion.ItemIndex);
end;


procedure TfCtrlBanc.FormActivate(Sender: TObject);
begin
    DtpFecIni.Date := DM1.FechaSys;
    DtpFecFin.Date := DM1.FechaSys;
    rdbSeleccion.ItemIndex:=2;
end;


procedure TfCtrlBanc.LimResBancos;
var xSQL,xSeleccion:String;
begin
xSQL:='SELECT A.BANCOID ,NVL(BANCONOM,''NO IDENTICADO'') BANCONOM,CCBCOID, '+
      //INICIO DPP_201211_COB
      //Adicionando la columna de Desgravamen
      //'SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT, '+
      'SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT, SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
      //FIN DPP_201211_COB
      'SUM(NVL(CREMTOCOB,0)) CREMTOCOB,SUM(NVL(CREMTOEXC,0)) CREMTOEXC '+
      'FROM CRE310 A,TGE105 B '+
      'WHERE FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'')  '+
      'AND FORPAGID=''XXXX'' AND CCBCOID IS NOT NULL AND  CREESTID<>''13'' '+xSeleccion+' AND A.BANCOID=B.BANCOID(+) '+
      'GROUP BY A.BANCOID,BANCONOM,CCBCOID';
DM1.cdsQry.Close;
DM1.cdsQry.DataRequest(xSQL);
DM1.cdsQry.Open;
dtgBanGen.ColumnByName('CCBCOID').FooterValue :='Total';
dtgBanGen.ColumnByName('CREAMORT').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgBanGen.ColumnByName('CREINTERES').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgBanGen.ColumnByName('CREFLAT').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
//INICIO DPP_201211_COB
//Formateando el monto de Desgravamen
dtgBanGen.ColumnByName('MONCOBDESGRAV').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
//FIN DPP_201211_COB
dtgBanGen.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgBanGen.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
xSQL:='SELECT A.USUARIO USUARIO,B.ORIGEN ORIGEN,NVL(OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,  '+
      //INICIO DPP_201211_COB
      //Adicionando la columna de Desgravamen
      //'NVL(USERNOM,''POR IDENTIFICAR'') USERNOM, SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) '+
      'NVL(USERNOM,''POR IDENTIFICAR'') USERNOM, SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREFLAT,0)) '+
      //FIN DPP_201211_COB
      'CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,SUM(NVL(CREMTOEXC,0)) CREMTOEXC '+
      'FROM CRE310 A,USERTABLE B,APO110 C  '+
      'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'')  AND FORPAGID=''XXXX'' '+
      'AND CREESTID<>''13'' '+xSeleccion+' AND BANCOID='+QuotedStr(DM1.cdsQry.FieldByName('BANCOID').AsString)+'AND CCBCOID='+QuotedStr(DM1.cdsQry.FieldByName('CCBCOID').AsString)+' '+
      'AND A.USUARIO=B.USERID(+) AND B.ORIGEN=C.OFDESID(+) '+
      'GROUP BY A.USUARIO,B.ORIGEN,NVL(OFDESNOM,''POR IDENTIFICAR''),NVL(USERNOM,''POR IDENTIFICAR'') '+
      'ORDER BY B.ORIGEN,A.USUARIO ';
DM1.cdsQry1.Close;
DM1.cdsQry1.DataRequest(xSQL);
DM1.cdsQry1.Open;
dtgUseReg.ColumnByName('USERNOM').FooterValue :='Total';
dtgUseReg.ColumnByName('CREAMORT').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgUseReg.ColumnByName('CREINTERES').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgUseReg.ColumnByName('CREFLAT').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
//INICIO DPP_201211_COB
//Formateando el monto de Desgravamen
dtgUseReg.ColumnByName('MONCOBDESGRAV').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
//FIN DPP_201211_COB
dtgUseReg.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgUseReg.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(0,ffNumber, 10, 2);


end;

procedure TfCtrlBanc.DtpFecIniChange(Sender: TObject);
begin
// inicio HPP_201108_COB
  CDSBANCOS.EmptyDataSet;
// fin HPP_201108_COB
  LimResBancos;
end;

procedure TfCtrlBanc.DtpFecFinChange(Sender: TObject);
begin
// inicio HPP_201108_COB
   CDSBANCOS.EmptyDataSet;
// fin HPP_201108_COB
   LimResBancos;
end;


procedure TfCtrlBanc.dtgBanGenRowChanged(Sender: TObject);
begin
// inicio HPP_201108_COB
 lblGrid02.Caption:= 'Banco :    '+CDSBANCOS.FieldByName('BANCONOM').AsString+'    Cuenta :    '+CDSBANCOS.FieldByName('CCBCOID').AsString;
// fin HPP_201108_COB 
 CarResUsuarios(rdbSeleccion.ItemIndex);
end;

// inicio HPP_201108_COB
procedure TfCtrlBanc.CarResUsuarios(xOrigen: Integer);
var xSQL,xSeleccion:String;
    xCrecapital,xCremtoint,xCremtoflat,xCremtocob,xCremtoexc:Currency ;
    //INICIO DPP_201211_COB
    //variable que contendrá el monto del Desgravamen
    xCremtoDesgravamen :Currency;
    //FIN DPP_201211_COB
begin
Case xOrigen Of
     0: xSeleccion:='AND A.ARCHIVOFTP IS NULL ';
     1: xSeleccion:='AND A.ARCHIVOFTP IS NOT NULL ';
     2: xSeleccion:=' ';
End ;

If  (Length(Trim(CDSBANCOS.FieldByName('TIPO').AsString))=0)  or
    (CDSBANCOS.FieldByName('CORR').AsInteger=99) or  (xOrigen=1)   Then
   Begin
      //INICIO DPP_201211_COB
      //Adicionando el importe del Desgravamen
      //xSQL:=' Select '' '' USUARIO,'' ''ORIGEN,'' '' OFDESNOM,'' '' USERNOM,  0 CREAMORT,0 CREINTERES,0 CREFLAT,0 CREMTOCOB,0 CREMTOEXC From Dual ';
      xSQL:=' Select '' '' USUARIO,'' ''ORIGEN,'' '' OFDESNOM,'' '' USERNOM,  0 CREAMORT,0 CREINTERES,0 CREFLAT,0 MONCOBDESGRAV ,0 CREMTOCOB,0 CREMTOEXC From Dual ';
      //FIN DPP_201211_COB
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xSQL);
      DM1.cdsQry1.Open;
   End

Else

   Begin
    If (CDSBANCOS.FieldByName('TIPO').AsString='CUO') AND (CDSBANCOS.FieldByName('CORR').AsInteger<>99) Then
       xSQL:='SELECT A.USUARIO USUARIO,B.ORIGEN ORIGEN,NVL(OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,  '+
             //INICIO DPP_201211_COB
             //Adicionando la columna del Desgravamen
             //'NVL(USERNOM,''POR IDENTIFICAR'') USERNOM, SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) '+
             'NVL(USERNOM,''POR IDENTIFICAR'') USERNOM, SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREFLAT,0)) '+
             //FIN DPP_201211_COB
             'CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,SUM(NVL(CREMTOEXC,0)) CREMTOEXC '+
             'FROM CRE310 A,USERTABLE B,APO110 C  '+
             'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'')  AND FORPAGID=''03'' '+
             'AND CREESTID<>''13'' '+xSeleccion+' AND BANCOID='+QuotedStr(CDSBANCOS.FieldByName('BANCOID').AsString)+'AND CCBCOID='+QuotedStr(CDSBANCOS.FieldByName('CCBCOID').AsString)+' '+
             'AND A.USUARIO=B.USERID(+) AND B.ORIGEN=C.OFDESID(+) '+
             'GROUP BY A.USUARIO,B.ORIGEN,NVL(OFDESNOM,''POR IDENTIFICAR''),NVL(USERNOM,''POR IDENTIFICAR'') '+
             'ORDER BY B.ORIGEN,A.USUARIO ';

   If (CDSBANCOS.FieldByName('TIPO').AsString='FSC') AND (CDSBANCOS.FieldByName('CORR').AsInteger<>99) Then
       xSql:='SELECT A.USU_COB_DEU USUARIO,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, '+
             //INICIO DPP_201211_COB
             //Adicionando la columna del Desgravamen
             //'       NVL(B.USERNOM,''POR IDENTIFICAR'') USERNOM,0 CREAMORT,0 CREINTERES, 0 CREFLAT, '+
             '       NVL(B.USERNOM,''POR IDENTIFICAR'') USERNOM,0 CREAMORT,0 CREINTERES,0 MONCOBDESGRAV, 0 CREFLAT, '+
             //FIN DPP_201211_COB
             '       SUM(NVL(A.IMP_COB_DEU,0)) CREMTOCOB,SUM(NVL(A.IMP_EXC_DEU,0)) CREMTOEXC '+
             'FROM COB_FSC_PAGOS_AL_FSC A,USERTABLE B,APO110 C '+
             'WHERE  A.FORPAGID=''03'' AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND '+
             '       To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND '+
             '       A.BANCOID='+QuotedStr(CDSBANCOS.FieldByName('BANCOID').AsString)+'AND A.CCBCOID='+QuotedStr(CDSBANCOS.FieldByName('CCBCOID').AsString) + ' AND '+
             '       A.EST_COB_COD NOT IN (''04'',''13'') AND A.USU_COB_DEU=B.USERID(+) AND '+
             '       B.ORIGEN=C.OFDESID(+)'+
             'GROUP BY A.USU_COB_DEU,B.ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR''),NVL(B.USERNOM,''POR IDENTIFICAR'') '+
             'ORDER BY B.ORIGEN,A.USU_COB_DEU ';

// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
   //CRONOGRAMA CERRADO
   If (CDSBANCOS.FieldByName('TIPO').AsString='CCE') AND (CDSBANCOS.FieldByName('CORR').AsInteger<>99) Then
        xSQL:='SELECT A.USERID USUARIO,B.ORIGEN ORIGEN,NVL(OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,  '+
             'NVL(USERNOM,''POR IDENTIFICAR'') USERNOM, 0 CREAMORT,0 CREINTERES,0 MONCOBDESGRAV,0 '+
             'CREFLAT,SUM(NVL(A.IMPORTE,0)) CREMTOCOB,SUM(NVL(A.IMPORTE,0)) CREMTOEXC '+
             'FROM COB_DES_CRO_CERRADO_DET A,USERTABLE B,APO110 C  '+
             'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'')  AND FORPAGID=''03'' '+
             'AND A.FLGEST<>''13'' AND A.BANCOID='+QuotedStr(CDSBANCOS.FieldByName('BANCOID').AsString)+'AND A.CCBCOID='+QuotedStr(CDSBANCOS.FieldByName('CCBCOID').AsString)+' '+
             'AND A.USERID=B.USERID(+) AND B.ORIGEN=C.OFDESID(+) '+
             'GROUP BY A.USERID,B.ORIGEN,NVL(OFDESNOM,''POR IDENTIFICAR''),NVL(USERNOM,''POR IDENTIFICAR'') '+
             'ORDER BY B.ORIGEN,A.USERID ';
// Fin HPC_201806_COB 
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
  End;

  TNumericField(DM1.cdsQry1.fieldbyname('CREAMORT')).DisplayFormat  :='###,###.#0';
  TNumericField(DM1.cdsQry1.fieldbyname('CREINTERES')).DisplayFormat:='###,###.#0';
  TNumericField(DM1.cdsQry1.fieldbyname('CREFLAT')).DisplayFormat   :='###,###.#0';
  //INICIO DPP_201211_COB
  //dando el formato a la columna del Desgravamen
  TNumericField(DM1.cdsQry1.fieldbyname('MONCOBDESGRAV')).DisplayFormat   :='###,###.#0';
  //FIN DPP_201211_COB
  TNumericField(DM1.cdsQry1.fieldbyname('CREMTOCOB')).DisplayFormat :='###,###.#0';
  TNumericField(DM1.cdsQry1.fieldbyname('CREMTOEXC')).DisplayFormat :='###,###.#0';
  xCrecapital:=0;xCremtoint:=0;xCremtoflat:=0;xCremtocob:=0;xCremtoexc:=0;
  //INICIO DPP_201211_COB
  //Inicializando la variable del Desgravamen
  xCremtoDesgravamen := 0;
  //FIN DPP_201211_COB
  If DM1.cdsQry1.RecordCount>0 Then
     Begin
      DM1.cdsQry1.First;
      While Not DM1.cdsQry1.Eof Do
      Begin
         xCrecapital:=xCrecapital+ DM1.cdsQry1.FieldByName('CREAMORT').AsCurrency;
         xCremtoint:=xCremtoint  + DM1.cdsQry1.FieldByName('CREINTERES').AsCurrency;
         xCremtoflat:=xCremtoflat+ DM1.cdsQry1.FieldByName('CREFLAT').AsCurrency;
         //INICIO DPP_201211_COB
         //Acumulando el monto del Desgravamen
         xCremtoDesgravamen:=xCremtoDesgravamen+ DM1.cdsQry1.FieldByName('MONCOBDESGRAV').AsCurrency;
         //FIN DPP_201211_COB
         xCremtocob:=xCremtocob  + DM1.cdsQry1.FieldByName('CREMTOCOB').AsCurrency;
         xCremtoexc:=xCremtoexc  + DM1.cdsQry1.FieldByName('CREMTOEXC').AsCurrency;
         DM1.cdsQry1.Next;
      End;
     End;

   dtgUseReg.ColumnByName('USERNOM').FooterValue    := 'Total';
   dtgUseReg.ColumnByName('CREAMORT').FooterValue   := FloatToStrF(xCrecapital,ffNumber, 10, 2);
   dtgUseReg.ColumnByName('CREINTERES').FooterValue := FloatToStrF(xCremtoint,ffNumber, 10, 2);
   dtgUseReg.ColumnByName('CREFLAT').FooterValue    := FloatToStrF(xCremtoflat,ffNumber, 10, 2);
   //INICIO DPP_201211_COB
   //Obteniendo el importe del Desgravamen
   dtgUseReg.ColumnByName('MONCOBDESGRAV').FooterValue    := FloatToStrF(xCremtoDesgravamen,ffNumber, 10, 2);
   //FIN DPP_201211_COB
   dtgUseReg.ColumnByName('CREMTOCOB').FooterValue  := FloatToStrF(xCremtocob,ffNumber, 10, 2);
   dtgUseReg.ColumnByName('CREMTOEXC').FooterValue  := FloatToStrF(xCremtoexc,ffNumber, 10, 2);
end;
// fin HPP_201108_COB

procedure TfCtrlBanc.dtgUseRegDblClick(Sender: TObject);
begin

If dtgUseReg.DataSource.DataSet.RecordCount = 0 Then Exit;

  Try
    fDetRegBan := TfDetRegBan.Create(Self);
    fDetRegBan.lblGrid03.Caption :=lblGrid02.Caption;
    fDetRegBan.lblGrid04.Caption :='Usuario     : '+DM1.cdsQry1.FieldByName('USERNOM').AsString+'        Origen De Registro     : '+DM1.cdsQry1.FieldByName('OFDESNOM').AsString;
    CarDetUsuarios(rdbSeleccion.ItemIndex,'G');
    fDetRegBan.ShowModal;
  Finally
    fDetRegBan.Free;
  end;

end;

procedure TfCtrlBanc.CarDetUsuarios(xOrigen: Integer; xFiltra: String);
var xSQL,xSeleccion,xFlitraQry:String;
begin
Case xOrigen Of
     0: xSeleccion:='AND ARCHIVOFTP IS NULL ';
     1: xSeleccion:='AND ARCHIVOFTP IS NOT NULL ';
     2: xSeleccion:=' ';
End ;

If xFiltra='G' Then
   xFlitraQry:=''
Else If xFiltra='M' Then
   xFlitraQry:='AND TO_CHAR(CREFPAG,''YYYYMM'')=TO_CHAR(FREG,''YYYYMM'') '
Else If xFiltra='D' Then
   xFlitraQry:='AND TO_CHAR(CREFPAG,''YYYYMM'')<>TO_CHAR(FREG,''YYYYMM'') ';


xSQL:='SELECT ASOCODMOD,SUBSTR(ASOAPENOM,1,24) ASOAPENOM,CREFPAG,CREDOCPAG,FREG,SUM(NVL(CREAMORT,0)) CREAMORT, '+
      //INICIO DPP_201211_COB
      //Adicionando la columna de Desgravamen
      //'SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
      'SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
      //FIN DPP_201211_COB
      'SUM(NVL(CREMTOEXC,0)) CREMTOEXC FROM CRE310 '+
      'WHERE FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'')  AND FORPAGID=''03'' '+xFlitraQry+' '+
      //INICIO DPP_201211_COB
//      'AND CREESTID<>''13'' '+xSeleccion+' AND BANCOID='+QuotedStr(DM1.cdsQry.FieldByName('BANCOID').AsString)+'AND CCBCOID='+QuotedStr(DM1.cdsQry.FieldByName('CCBCOID').AsString)+' AND USUARIO='+QuotedStr(DM1.cdsQry1.fieldbyname('USUARIO').AsString)+' '+
      'AND CREESTID<>''13'' '+xSeleccion
      +' AND BANCOID='+QuotedStr(CDSBANCOS.FieldByName('Bancoid').AsString)
      +' AND CCBCOID='+QuotedStr(CDSBANCOS.FieldByName('Ccbcoid').AsString)
      +' AND USUARIO='+QuotedStr(DM1.cdsQry1.fieldbyname('USUARIO').AsString)+' '+
      //FIN DPP_201211_COB
      'GROUP BY ASOCODMOD,ASOAPENOM,CREFPAG,CREDOCPAG,FREG '+
      'ORDER BY CREFPAG,FREG';
DM1.cdsQry2.Close;
DM1.cdsQry2.DataRequest(xSQL);
DM1.cdsQry2.Open;
TNumericField(DM1.cdsQry2.fieldbyname('CREAMORT')).DisplayFormat:='###,###.#0';
TNumericField(DM1.cdsQry2.fieldbyname('CREINTERES')).DisplayFormat:='###,###.#0';
TNumericField(DM1.cdsQry2.fieldbyname('CREFLAT')).DisplayFormat:='###,###.#0';
//INICIO DPP_201211_COB
//dando el formato a la columna del Desgravamen
TNumericField(DM1.cdsQry2.fieldbyname('MONCOBDESGRAV')).DisplayFormat:='###,###.#0';
//FIN DPP_201211_COB
TNumericField(DM1.cdsQry2.fieldbyname('CREMTOCOB')).DisplayFormat:='###,###.#0';
TNumericField(DM1.cdsQry2.fieldbyname('CREMTOEXC')).DisplayFormat:='###,###.#0';

end;


procedure TfCtrlBanc.dtgBanGenDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 if Field.FieldName = 'CREMTOCOB' then
    Begin
      dtgBanGen.Canvas.Font.Color := clRed;
      dtgBanGen.DefaultDrawDataCell(rect,Field,State);
    End;

end;

procedure TfCtrlBanc.dtgBanGenDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
begin
 if Field.FieldName = 'CREMTOCOB' then
    Begin
      dtgBanGen.Canvas.Font.Color := clRed;
    End;

end;

procedure TfCtrlBanc.dtgUseRegDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 If Field.FieldName = 'CREMTOCOB' then
    Begin
      dtgUseReg.Canvas.Font.Color := clRed;
      dtgUseReg.DefaultDrawDataCell(rect,Field,State);
    End;

end;

procedure TfCtrlBanc.dtgUseRegDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
begin
 if Field.FieldName = 'CREMTOCOB' then
    Begin
      dtgUseReg.Canvas.Font.Color := clRed;
    End;

end;

procedure TfCtrlBanc.dtgBanGenDrawTitleCell(Sender: TObject;
  Canvas: TCanvas; Field: TField; Rect: TRect;
  var DefaultDrawing: Boolean);
begin
 if Field.FieldName = 'CREMTOCOB' then
    Begin
      dtgBanGen.Canvas.Font.Color := clRed;
    End;

end;

procedure TfCtrlBanc.dtgUseRegDrawTitleCell(Sender: TObject;
  Canvas: TCanvas; Field: TField; Rect: TRect;
  var DefaultDrawing: Boolean);
begin
 if Field.FieldName = 'CREMTOCOB' then
    Begin
      dtgUseReg.Canvas.Font.Color := clRed;
    End;

end;

// inicio HPP_201108_COB
procedure TfCtrlBanc.BitPrintDetClick(Sender: TObject);
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
var xSQL,xSQL2,xSQL3:String;
// Fin HPC_201806_COB 
begin
Screen.Cursor:=crHourGlass;
xSQL:='SELECT ''CUO'' TIPO,ORIGEN,OFDESNOM,BANCOID,BANCONOM,CCBCOID,ASOCODMOD,ASOAPENOM,CREDOCPAG, '+
      //INICIO DPP_201211_COB
      //Adicionando la columna del Desgravamen
      //'USUARIO,FILTRA,CREFPAG,FREG,CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,CREMTOEXC FROM ( '+
      'USUARIO,FILTRA,CREFPAG,FREG,CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREMTOCOB,CREMTOEXC FROM ( '+
      //FIN DPP_201211_COB
      'SELECT NVL(B.ORIGEN,''00'') ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,A.BANCOID, '+
      'NVL(D.BANCONOM,''POR IDENTIFICAR'') BANCONOM,A.CCBCOID,A.ASOCODMOD, '+
      'A.ASOAPENOM,A.CREDOCPAG,CREFPAG,A.FREG,A.USUARIO, '+
      'CASE WHEN TO_CHAR(CREFPAG,''YYYYMM'')=TO_CHAR(A.FREG,''YYYYMM'') THEN ''A.- Fechas De Documento y Registro del Mismo Mes (CUOTAS)'' ELSE  ''B.- Fechas De Documento y Registro de  Meses Diferentes (CUOTAS)''  END AS FILTRA , '+
      'SUM(NVL(CREAMORT,0)) CREAMORT, '+
      //INICIO DPP_201211_COB
      //Adicionando la columna del Desgravamen
      //'SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
      'SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
      //FIN DPP_201211_COB
      'SUM(NVL(CREMTOEXC,0)) CREMTOEXC '+
      'FROM CRE310 A,USERTABLE B,APO110 C,TGE105 D '+
      'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
      'AND FORPAGID=''03'' AND CREESTID<>''13'' AND A.USUARIO=B.USERID(+) '+
      'AND B.ORIGEN=C.OFDESID(+) AND A.BANCOID=D.BANCOID(+) '+
      'GROUP BY '+
      'NVL(B.ORIGEN,''00''),NVL(C.OFDESNOM,''POR IDENTIFICAR''),A.BANCOID, '+
      'NVL(D.BANCONOM,''POR IDENTIFICAR''),A.CCBCOID,A.ASOCODMOD, '+
      'A.ASOAPENOM,A.CREDOCPAG,CREFPAG,A.FREG,A.USUARIO, '+
      'CASE WHEN TO_CHAR(CREFPAG,''YYYYMM'')=TO_CHAR(A.FREG,''YYYYMM'') THEN ''A.- Fechas De Documento y Registro del Mismo Mes (CUOTAS) '' ELSE  ''B.- Fechas De Documento y Registro de  Meses Diferentes (CUOTAS) ''  END ) ';
//    'ORDER BY ORIGEN,OFDESNOM,BANCOID,BANCONOM,CCBCOID,FILTRA';

xSQL2:='SELECT ''FSC''TIPO,ORIGEN,OFDESNOM,BANCOID,BANCONOM,CCBCOID,ASOCODMOD,ASOAPENOM,NROOPE, USU_COB_DEU,FILTRA,FEC_COB_DEU,FEC_CRE_COB_FSC,'+
      //INICIO DPP_201211_COB
      //Adicionando la columna del Desgravamen
      //'CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,CREMTOEXC FROM ('+
      'CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREMTOCOB,CREMTOEXC FROM ('+
      //FIN DPP_201211_COB
      'SELECT NVL(B.ORIGEN,''00'') ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,A.BANCOID, '+
      'NVL(D.BANCONOM,''POR IDENTIFICAR'') BANCONOM,A.CCBCOID,A.ASOCODMOD, '+
      'A.ASOAPENOM,A.NROOPE,FEC_COB_DEU, A.FEC_CRE_COB_FSC,A.USU_COB_DEU, '+
      'CASE WHEN TO_CHAR(FEC_COB_DEU,''YYYYMM'')=TO_CHAR(A.FEC_CRE_COB_FSC,''YYYYMM'') THEN ''A.- Fechas De Documento y Registro del Mismo Mes (DEV FSC)'' ELSE  ''B.- Fechas De Documento y Registro de  Meses Diferentes (DEV FSC)''  END AS FILTRA , '+
      //INICIO DPP_201211_COB
      //Adicionando la columna del Desgravamen
      //' 0 CREAMORT, 0CREINTERES,0 CREFLAT, SUM(NVL(IMP_COB_DEU,0)) CREMTOCOB, SUM(NVL(IMP_EXC_DEU,0)) CREMTOEXC '+
      ' 0 CREAMORT, 0 CREINTERES,0 CREFLAT,0 MONCOBDESGRAV, SUM(NVL(IMP_COB_DEU,0)) CREMTOCOB, SUM(NVL(IMP_EXC_DEU,0)) CREMTOEXC '+
      //FIN DPP_201211_COB
      'FROM COB_FSC_PAGOS_AL_FSC A,USERTABLE B,APO110 C,TGE105 D '+
      'WHERE A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
      'AND FORPAGID=''03''  AND EST_COB_COD<>''13'' AND A.USU_COB_DEU=B.USERID(+) '+
      'AND B.ORIGEN=C.OFDESID(+) AND A.BANCOID=D.BANCOID(+) '+
      'GROUP BY '+
      'NVL(B.ORIGEN,''00''),NVL(C.OFDESNOM,''POR IDENTIFICAR''),A.BANCOID, NVL(D.BANCONOM,''POR IDENTIFICAR''),  '+
      ' A.CCBCOID,A.ASOCODMOD, A.ASOAPENOM,A.NROOPE,FEC_COB_DEU,A.FEC_CRE_COB_FSC,A.USU_COB_DEU, '+
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
      'CASE WHEN TO_CHAR(FEC_COB_DEU,''YYYYMM'')=TO_CHAR(A.FEC_CRE_COB_FSC,''YYYYMM'') THEN ''A.- Fechas De Documento y Registro del Mismo Mes (DEV FSC) '' ELSE  ''B.- Fechas De Documento y Registro de  Meses Diferentes (DEV FSC)''  END ) ';
      //'ORDER BY ORIGEN,OFDESNOM,BANCOID,BANCONOM,TIPO,CCBCOID,FILTRA ';

xSQL3:='SELECT '
      +'''CCE'' TIPO,ORIGEN,OFDESNOM,BANCOID,BANCONOM,CCBCOID,ASOCODMOD,ASOAPENOM,CREDOCPAG, '
      +'USUARIO,FILTRA,CREFPAG,FREG,CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREMTOCOB,CREMTOEXC '
      +'FROM '
      +'( '
      +'SELECT NVL(B.ORIGEN,''00'') ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,A.BANCOID, '
      +'NVL(D.BANCONOM,''POR IDENTIFICAR'') BANCONOM,A.CCBCOID,A.ASOCODMOD, '
      +'A.ASOAPENOM,A.NRO_OPERACION CREDOCPAG,A.FEC_OPERACION CREFPAG,A.FREG,A.USERID USUARIO, '
      +'CASE WHEN TO_CHAR(A.FEC_OPERACION,''YYYYMM'')=TO_CHAR(A.FREG,''YYYYMM'') THEN ''A.- Fechas De Documento y Registro del Mismo Mes (CRONOGRAMAS CERRADOS)'' ELSE  ''B.- Fechas De Documento y Registro de  Meses Diferentes (CRONOGRAMAS CERRADOS)''  END AS FILTRA , '
      +'0 CREAMORT, '
      +'0 CREINTERES,0 CREFLAT,0 MONCOBDESGRAV,SUM(NVL(A.IMPORTE,0)) CREMTOCOB, '
      +'SUM(NVL(A.IMPORTE,0)) CREMTOEXC '
      +'FROM COB_DES_CRO_CERRADO_DET A,USERTABLE B,APO110 C,TGE105 D '
      +'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '
      +'AND FORPAGID=''03'' AND A.FLGEST<>''13'' AND A.USERID=B.USERID(+) '
      +'AND B.ORIGEN=C.OFDESID(+) AND A.BANCOID=D.BANCOID(+) '
      +'GROUP BY '
      +'NVL(B.ORIGEN,''00''),NVL(C.OFDESNOM,''POR IDENTIFICAR''),A.BANCOID, '
      +'NVL(D.BANCONOM,''POR IDENTIFICAR''),A.CCBCOID,A.ASOCODMOD, '
      +'A.ASOAPENOM,A.NRO_OPERACION,A.FEC_OPERACION,A.FREG,A.USERID, '
      +'CASE WHEN TO_CHAR(A.FEC_OPERACION,''YYYYMM'')=TO_CHAR(A.FREG,''YYYYMM'') THEN ''A.- Fechas De Documento y Registro del Mismo Mes (CRONOGRAMAS CERRADOS) '' ELSE ''B.- Fechas De Documento y Registro de  Meses Diferentes (CRONOGRAMAS CERRADOS)''   END ) '
      +'ORDER BY ORIGEN,OFDESNOM,BANCOID,BANCONOM,TIPO,CCBCOID,FILTRA ';
DM1.cdsEstado.Close;
DM1.cdsEstado.DataRequest(xSQL+' UNION ALL '+XSQL2 +' UNION ALL '+XSQL3);
// Fin HPC_201806_COB 
DM1.cdsEstado.Open;
If DM1.cdsEstado.RecordCount > 0 Then
   Begin
      ppLblTit01.Caption:='REPORTE DETALLADO DE CONTROL DE CUOTAS/DEV.FSC PAGADAS CON DEPOSITO EN BANCO';
      ppLblTit02.Caption:='PAGOS REGISTRADOS DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
      ppRepDet.Print;
      ppRepDet.Cancel;
      //pds.ShowModal;
   End
Else
  MessageDlg(' No Existe Información Para Este Rango ', mtError,[mbOk],0);

  Screen.Cursor:=crDefault;
  DM1.cdsEstado.Close;
end;
// fin HPP_201108_COB

// inicio HPP_201108_COB
procedure TfCtrlBanc.BitPrintConClick(Sender: TObject);
var xSQL:String;
begin
Screen.Cursor:=crHourGlass;
    xSQL:='SELECT ''CUO'' TIPO,ORIGEN,OFDESNOM||''(CUOTAS)'' OFDESNOM,NVL(COUNT(*),0) MOVIM,SUM(NVL(CREAMORT,0)) CREAMORT, '+
          //INICIO DPP_201211_COB
          //Adicionando la columna del desgravamen
          //'SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
          'SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
          //FIN DPP_201211_COB
          'SUM(NVL(CREMTOEXC,0)) CREMTOEXC FROM ( '+
          'SELECT ASOID,CREFPAG,CREDOCPAG,A.USUARIO,A.FREG,A.USEID,A.BANCOID,NVL(B.ORIGEN,''00'') ORIGEN,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, '+
          'SUM(NVL(CREAMORT,0)) CREAMORT, '+
          //INICIO DPP_201211_COB
          //Adicionando la columna del Desgravamen  
          //'SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
          'SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
          //FIN DPP_201211_COB
          'SUM(NVL(CREMTOEXC,0)) CREMTOEXC FROM CRE310 A,USERTABLE B,APO110 C ' +
          'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
          'AND FORPAGID=''03'' AND CREESTID<>''13'' AND A.USUARIO=B.USERID(+)  '+
          'AND B.ORIGEN=C.OFDESID(+)  GROUP BY '+
          'ASOID,CREFPAG,CREDOCPAG,A.USUARIO,A.FREG,A.USEID,A.BANCOID,NVL(B.ORIGEN,''00''),NVL(C.OFDESNOM,''POR IDENTIFICAR'') ) '+
          'GROUP BY ORIGEN,OFDESNOM '+   // 'ORDER BY ORIGEN ';
          ' UNION ALL '+
          //INICIO DPP_201211_COB
          //Adicionando la columna del Desgravamen
          //'SELECT ''FSC'' TIPO,ORIGEN,OFDESNOM||''(DEV FSC)'' OFDESNOM,NVL(COUNT(*),0) MOVIM,0 CREAMORT,0 CREINTERES,0 CREFLAT,SUM(NVL(CREMTOCOB,0)),SUM(NVL(CREMTOEXC,0)) '+
          'SELECT ''FSC'' TIPO,ORIGEN,OFDESNOM||''(DEV FSC)'' OFDESNOM,NVL(COUNT(*),0) MOVIM,0 CREAMORT,0 CREINTERES,0 CREFLAT,0 MONCOBDESGRAV ,SUM(NVL(CREMTOCOB,0)),SUM(NVL(CREMTOEXC,0)) '+
          //FIN DPP_201211_COB
          'FROM (SELECT ASOID,FEC_COB_DEU,NROOPE,A.USU_COB_DEU,A.FEC_CRE_COB_FSC,A.USEID,A.BANCOID,NVL(B.ORIGEN,''00'') ORIGEN, '+
          //INICIO DPP_201211_COB
          //Adicionando la columan del Desgravamen
          //'NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, 0 CREAMORT, 0 CREINTERES,0 CREFLAT, '+
          'NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, 0 CREAMORT, 0 CREINTERES,0 CREFLAT,0 MONCOBDESGRAV, '+
          //FIN DPP_201211_COB
          ' SUM(NVL(IMP_COB_DEU,0)) CREMTOCOB, SUM(NVL(IMP_EXC_DEU,0)) CREMTOEXC '+
          'FROM COB_FSC_PAGOS_AL_FSC A,USERTABLE B,APO110 C  '+
          'WHERE A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND FORPAGID=''03'' '+
          'AND EST_COB_COD<>''13'' AND A.USU_COB_DEU=B.USERID(+) AND B.ORIGEN=C.OFDESID(+) '+
          'GROUP BY ASOID,FEC_COB_DEU,NROOPE,A.USU_COB_DEU,A.FEC_CRE_COB_FSC,A.USEID,A.BANCOID,NVL(B.ORIGEN,''00''),NVL(C.OFDESNOM,''POR IDENTIFICAR'') )  '+
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
          //'GROUP BY ORIGEN,OFDESNOM --ORDER BY ORIGEN ';
          'GROUP BY ORIGEN,OFDESNOM '


          +'UNION ALL '
          +'SELECT ''CCE'' TIPO, '
          +'ORIGEN, '
          +'OFDESNOM || ''(CRO. CERR)'' OFDESNOM, '
          +'NVL(COUNT(ASOID), 0) MOVIM, '
          +'SUM(NVL(CREAMORT, 0)) CREAMORT, '
          +'SUM(NVL(CREINTERES, 0)) CREINTERES, '
          +'SUM(NVL(CREFLAT, 0)) CREFLAT, '
          +'SUM(NVL(MONCOBDESGRAV, 0)) MONCOBDESGRAV, '
          +'SUM(NVL(CREMTOCOB, 0)) CREMTOCOB, '
          +'SUM(NVL(CREMTOEXC, 0)) CREMTOEXC '
          +'FROM (SELECT ASOID, '
          +'A.FEC_OPERACION CREFPAG, '
          +'A.NRO_OPERACION CREDOCPAG, '
          +'A.USERID USUARIO, '
          +'A.FREG, '
          +'A.USEID, '
          +'A.BANCOID, '
          +'NVL(B.ORIGEN, ''00'') ORIGEN, '
          +'NVL(C.OFDESNOM, ''POR IDENTIFICAR'') OFDESNOM, '
          +'0 CREAMORT, '
          +'0 CREINTERES, '
          +'0 CREFLAT, '
          +'0 MONCOBDESGRAV, '
          +'SUM(NVL(A.IMPORTE, 0)) CREMTOCOB, '
          +'SUM(NVL(A.IMPORTE, 0)) CREMTOEXC '
          +'FROM COB_DES_CRO_CERRADO_DET A, USERTABLE B, APO110 C '
          +'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+', ''dd/mm/yyyy'') AND '
          +'To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+', ''dd/mm/yyyy'') '
          +'AND FORPAGID = ''03'' '
          +'AND FLGEST <> ''13'' '
          +'AND A.USERID = B.USERID(+) '
          +'AND B.ORIGEN = C.OFDESID(+) '
          +'GROUP BY ASOID,A.FEC_OPERACION,A.NRO_OPERACION,A.USERID,A.FREG,A.USEID,A.BANCOID,NVL(B.ORIGEN, ''00''),NVL(C.OFDESNOM, ''POR IDENTIFICAR'')) '
          +'GROUP BY ORIGEN, OFDESNOM '
          +'ORDER BY ORIGEN';
// Fin HPC_201806_COB 
DM1.cdsQry3.Close;
DM1.cdsQry3.DataRequest(xSQL);
DM1.cdsQry3.Open;

If DM1.cdsQry3.RecordCount > 0 Then
   Begin
      //INICIO DPP_201211_COB
      //Adicionando la columna del Desgravamen
      //xSQL:='SELECT ''CUO'' TIPO,FILTRA,NVL(COUNT(*),0) MOVIM,SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
      xSQL:='SELECT ''CUO'' TIPO,FILTRA,NVL(COUNT(*),0) MOVIM,SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
      //FIN DPP_201211_COB
            'SUM(NVL(CREMTOEXC,0)) CREMTOEXC FROM '+
            '(SELECT ASOID,CREFPAG,CREDOCPAG,USUARIO,FREG,USEID,A.BANCOID,CASE WHEN TO_CHAR(CREFPAG,''YYYYMM'')=TO_CHAR(A.FREG,''YYYYMM'') THEN ''A.-MISMO MES (CUOTAS)'' ELSE  ''B.-MES DISTINTO (CUOTAS)'' END AS FILTRA , '+
            //INICIO DPP_201211_COB
            //Adicionando la columna del Desgravamen
            //'SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
            'SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
            //FIN DPP_201211_COB
            'SUM(NVL(CREMTOEXC,0)) CREMTOEXC FROM CRE310 A '+
            'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
            'AND FORPAGID=''03'' AND CREESTID<>''13'' GROUP BY ASOID,CREFPAG,CREDOCPAG,USUARIO,FREG,USEID,A.BANCOID,CASE WHEN TO_CHAR(CREFPAG,''YYYYMM'')=TO_CHAR(A.FREG,''YYYYMM'') THEN ''A.-MISMO MES'' ELSE  ''B.-MES DISTINTO'' END ) '+
            'GROUP BY FILTRA '+
            ' UNION ALL '+
            //INICIO DPP_201211_COB
            //Adicionando la columna del Desgravamen
            //'SELECT ''FSC'' TIPO,FILTRA,NVL(COUNT(*),0) MOVIM,0 CREAMORT,0 CREINTERES,0 CREFLAT,SUM(NVL(CREMTOCOB,0)),SUM(NVL(CREMTOEXC,0)) '+
            'SELECT ''FSC'' TIPO,FILTRA,NVL(COUNT(*),0) MOVIM,0 CREAMORT,0 CREINTERES,0 CREFLAT, 0 MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)),SUM(NVL(CREMTOEXC,0)) '+
            //FIN DPP_201211_COB
            'FROM (SELECT ASOID,FEC_COB_DEU,NROOPE,A.USU_COB_DEU,A.FEC_CRE_COB_FSC,A.USEID,A.BANCOID, '+
            'CASE WHEN TO_CHAR(FEC_COB_DEU,''YYYYMM'')=TO_CHAR(A.FEC_CRE_COB_FSC,''YYYYMM'') THEN ''A.-MISMO MES (DEV FSC)'' ELSE  ''B.-MES DISTINTO (DEV FSC)'' END AS FILTRA ,'+
            //INICIO DPP_201211_COB
            //Adicionando la columna del Desgravamen
            //'0 CREAMORT, 0 CREINTERES,0 CREFLAT, SUM(NVL(IMP_COB_DEU,0)) CREMTOCOB, SUM(NVL(IMP_EXC_DEU,0)) CREMTOEXC FROM COB_FSC_PAGOS_AL_FSC A  '+
            '0 CREAMORT, 0 CREINTERES,0 CREFLAT, 0 MONCOBDESGRAV , SUM(NVL(IMP_COB_DEU,0)) CREMTOCOB, SUM(NVL(IMP_EXC_DEU,0)) CREMTOEXC FROM COB_FSC_PAGOS_AL_FSC A  '+
            //FIN DPP_201211_COB
            'WHERE A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
            'AND FORPAGID=''03'' AND EST_COB_COD<>''13'' GROUP BY ASOID,FEC_COB_DEU,NROOPE,A.USU_COB_DEU,A.FEC_CRE_COB_FSC,A.USEID,A.BANCOID, '+
            'CASE WHEN TO_CHAR(FEC_COB_DEU,''YYYYMM'')=TO_CHAR(A.FEC_CRE_COB_FSC,''YYYYMM'') THEN ''A.-MISMO MES (DEV DSC)'' ELSE  ''B.-MES DISTINTO (DEV FSC)'' END) '+
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
            'GROUP BY FILTRA '

            +'UNION ALL '
            +'SELECT ''CCE'' TIPO, '
            +'FILTRA, '
            +'NVL(COUNT(*), 0) MOVIM, '
            +'SUM(NVL(CREAMORT, 0)) CREAMORT, '
            +'SUM(NVL(CREINTERES, 0)) CREINTERES, '
            +'SUM(NVL(CREFLAT, 0)) CREFLAT, '
            +'SUM(NVL(MONCOBDESGRAV, 0)) MONCOBDESGRAV, '
            +'SUM(NVL(CREMTOCOB, 0)) CREMTOCOB, '
            +'SUM(NVL(CREMTOEXC, 0)) CREMTOEXC '
            +'FROM (SELECT ASOID, '
            +'A.FEC_OPERACION CREFPAG, '
            +'A.NRO_OPERACION CREDOCPAG, '
            +'A.USERID USUARIO, '
            +'FREG, '
            +'USEID, '
            +'A.BANCOID, '
            +'CASE '
            +'WHEN TO_CHAR(A.FEC_OPERACION, ''YYYYMM'') = TO_CHAR(A.FREG, ''YYYYMM'') THEN '
            +'''A.-MISMO MES (CRO. CERR)'' '
            +'ELSE '
            +'''B.-MES DISTINTO (CRO. CERR)'' '
            +'END AS FILTRA, '
            +'0 CREAMORT, '
            +'0 CREINTERES, '
            +'0 CREFLAT, '
            +'0 MONCOBDESGRAV, '
            +'SUM(NVL(A.IMPORTE, 0)) CREMTOCOB, '
            +'SUM(NVL(A.IMPORTE, 0)) CREMTOEXC '
            +'FROM COB_DES_CRO_CERRADO_DET A '
            +'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+', ''dd/mm/yyyy'') AND '
            +'To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+', ''dd/mm/yyyy'') '
            +'AND FORPAGID = ''03'' '
            +'AND FLGEST <> ''13'' '
            +'GROUP BY ASOID,A.FEC_OPERACION,A.NRO_OPERACION,USERID,FREG,USEID,A.BANCOID, '
            +'CASE '
            +'WHEN TO_CHAR(A.FEC_OPERACION, ''YYYYMM'') = '
            +'TO_CHAR(A.FREG, ''YYYYMM'') THEN '
            +'''A.-MISMO MES'' '
            +'ELSE '
            +'''B.-MES DISTINTO'' '
            +'END) '
            +'GROUP BY FILTRA';
// Fin HPC_201806_COB 
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xSQL);
      DM1.cdsQry4.Open;
      If DM1.cdsQry4.RecordCount > 0 Then
         Begin
             xSQL:='SELECT ''CUO'' TIPO,BANCONOM||''(CUOTAS)'' BANCONOM,NVL(COUNT(*),0) MOVIM,SUM(NVL(CREAMORT,0)) CREAMORT, SUM(NVL(CREINTERES,0)) CREINTERES, '+
                   //INICIO DPP_201211_COB
                   //Adicionando la columna del Desgravamen
                   //'SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,SUM(NVL(CREMTOEXC,0)) CREMTOEXC FROM '+
                   'SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,SUM(NVL(CREMTOEXC,0)) CREMTOEXC FROM '+
                   //FIN DPP_201211_COB
                   '(SELECT ASOID,CREFPAG,CREDOCPAG,USUARIO,FREG,A.USEID,NVL(D.BANCONOM,''POR IDENTIFICAR'') BANCONOM, '+
                   //INICIO DPP_201211_COB
                   //Adicionando la columna del Desgravamen
                   //'SUM(NVL(CREAMORT,0)) CREAMORT, SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
                   'SUM(NVL(CREAMORT,0)) CREAMORT, SUM(NVL(CREINTERES,0)) CREINTERES,SUM(NVL(CREFLAT,0)) CREFLAT,SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '+
                   //FIN DPP_201211_COB
                   'SUM(NVL(CREMTOEXC,0)) CREMTOEXC FROM CRE310 A,TGE105 D '+
                   'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
                   'AND FORPAGID=''03'' AND CREESTID<>''13'' AND A.BANCOID=D.BANCOID(+) GROUP BY ASOID,CREFPAG,CREDOCPAG,USUARIO,FREG,A.USEID,NVL(D.BANCONOM,''POR IDENTIFICAR'') ) '+
                   'GROUP BY BANCONOM '+
                   ' UNION ALL '+
                   //INICIO DPP_201211_COB
                   //Adicionando la columna del Desgravamen
                   //'SELECT ''FSC'' TIPO,BANCONOM||''(DEV FSC)'' BANCONOM,NVL(COUNT(*),0) MOVIM,0 CREAMORT,0 CREINTERES,0 CREFLAT,SUM(NVL(CREMTOCOB,0)),SUM(NVL(CREMTOEXC,0)) '+
                   'SELECT ''FSC'' TIPO,BANCONOM||''(DEV FSC)'' BANCONOM,NVL(COUNT(*),0) MOVIM,0 CREAMORT,0 CREINTERES,0 CREFLAT, 0 MONCOBDESGRAV,SUM(NVL(CREMTOCOB,0)),SUM(NVL(CREMTOEXC,0)) '+
                   //FIN DPP_201211_COB
                   'FROM (SELECT ASOID,FEC_COB_DEU,NROOPE,A.USU_COB_DEU,A.FEC_CRE_COB_FSC,A.USEID,NVL(D.BANCONOM,''POR IDENTIFICAR'') BANCONOM, '+
                   //INICIO DPP_201211_COB
                   //Adicionando la columna del Desgravamen
                   //'0 CREAMORT, 0 CREINTERES,0 CREFLAT, SUM(NVL(IMP_COB_DEU,0)) CREMTOCOB, SUM(NVL(IMP_EXC_DEU,0)) CREMTOEXC FROM COB_FSC_PAGOS_AL_FSC A,TGE105 D '+
                   '0 CREAMORT, 0 CREINTERES,0 CREFLAT, 0 MONCOBDESGRAV, SUM(NVL(IMP_COB_DEU,0)) CREMTOCOB, SUM(NVL(IMP_EXC_DEU,0)) CREMTOEXC FROM COB_FSC_PAGOS_AL_FSC A,TGE105 D '+
                   //FIN DPP_201211_COB
                   'WHERE A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
                   'AND FORPAGID=''03'' AND EST_COB_COD<>''13'' AND A.BANCOID=D.BANCOID(+) GROUP BY ASOID,FEC_COB_DEU,NROOPE,A.USU_COB_DEU,A.FEC_CRE_COB_FSC,A.USEID,NVL(D.BANCONOM,''POR IDENTIFICAR'') ) '+
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
                   'GROUP BY BANCONOM '

                   +'UNION ALL '
                   +'SELECT ''CCE'' TIPO, '
                   +'BANCONOM || ''(CRO. CERR)'' BANCONOM, '
                   +'NVL(COUNT(ASOID), 0) MOVIM, '
                   +'SUM(NVL(CREAMORT, 0)) CREAMORT, '
                   +'SUM(NVL(CREINTERES, 0)) CREINTERES, '
                   +'SUM(NVL(CREFLAT, 0)) CREFLAT, '
                   +'SUM(NVL(MONCOBDESGRAV, 0)) MONCOBDESGRAV, '
                   +'SUM(NVL(CREMTOCOB, 0)) CREMTOCOB, '
                   +'SUM(NVL(CREMTOEXC, 0)) CREMTOEXC '
                   +'FROM (SELECT ASOID, '
                   +'A.FEC_OPERACION CREFPAG, '
                   +'A.NRO_OPERACION CREDOCPAG, '
                   +'A.USERID USUARIO, '
                   +'FREG, '
                   +'A.USEID, '
                   +'NVL(D.BANCONOM, ''POR IDENTIFICAR'') BANCONOM, '
                   +'0 CREAMORT, '
                   +'0 CREINTERES, '
                   +'0 CREFLAT, '
                   +'0 MONCOBDESGRAV, '
                   +'SUM(NVL(A.IMPORTE, 0)) CREMTOCOB, '
                   +'SUM(NVL(A.IMPORTE, 0)) CREMTOEXC '
                   +'FROM COB_DES_CRO_CERRADO_DET A, TGE105 D '
                   +'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+', ''dd/mm/yyyy'') AND '
                   +'To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+', ''dd/mm/yyyy'') '
                   +'AND FORPAGID = ''03'' '
                   +'AND FLGEST <> ''13'' '
                   +'AND A.BANCOID = D.BANCOID(+) '
                   +'GROUP BY ASOID,A.FEC_OPERACION,A.NRO_OPERACION,A.USERID,FREG,A.USEID,NVL(D.BANCONOM, ''POR IDENTIFICAR'')) '
                   +'GROUP BY BANCONOM';
// Fin HPC_201806_COB 
             DM1.cdsQry5.Close;
             DM1.cdsQry5.DataRequest(xSQL);
             DM1.cdsQry5.Open;
             If DM1.cdsQry5.RecordCount > 0 Then
                Begin
                   ppLblTit03.Caption:='REPORTE CONSOLIDADO DE CUOTAS/DEV.FSC PAGADAS CON DEPOSITO EN BANCO';
                   ppLblTit04.Caption:='CUOTAS REGISTRADAS DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
                   ppRepCon.Print;
                   ppRepCon.Cancel;
                   //pds.ShowModal;
                End;
             DM1.cdsQry5.Close;
         End;
      DM1.cdsQry4.Close;

   End
Else
   MessageDlg(' No Existe Información Para Este Rango ', mtError,[mbOk],0);
   
 Screen.Cursor:=crDefault;
 DM1.cdsQry3.Close;
end;
// fin HPP_201108_COB

// inicio HPP_201108_COB
procedure TfCtrlBanc.dtgBanGenCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

   If CDSBANCOS.FieldByName('CORR').AsInteger=99 Then
      Begin
       AFont.Color := clWhite;
       ABrush.Color := $00136B0C;
       AFont.Size := 8;
       AFont.Style := [];
      End;


  { If (Field.FieldName = 'UPAGOID') Or (Field.FieldName = 'UPROID') Or (Field.FieldName = 'UPAGONOM') Then
     Begin
      AFont.Color := clWhite;
      ABrush.Color := $00136B0C;
      AFont.Size := 8;
      AFont.Style := [];
     End;

   If (Field.FieldName = 'ENVIO1')  Or (Field.FieldName = 'CANTIDA1')  Or
      (Field.FieldName = 'ENVIO3')  Or (Field.FieldName = 'CANTIDA3')  Or
      (Field.FieldName = 'ENVIO5')  Or (Field.FieldName = 'CANTIDA5')  Or
      (Field.FieldName = 'ENVIO7')  Or (Field.FieldName = 'CANTIDA7')  Or
      (Field.FieldName = 'ENVIO9')  Or (Field.FieldName = 'CANTIDA9')  Or
      (Field.FieldName = 'ENVIO11') Or (Field.FieldName = 'CANTIDA11') Then
   Begin
      ABrush.Color := $0047E93A;
   End;


   If (Field.FieldName = 'ENVIO2')  Or (Field.FieldName = 'CANTIDA2')  Or
      (Field.FieldName = 'ENVIO4')  Or (Field.FieldName = 'CANTIDA4')  Or
      (Field.FieldName = 'ENVIO6')  Or (Field.FieldName = 'CANTIDA6')  Or
      (Field.FieldName = 'ENVIO8')  Or (Field.FieldName = 'CANTIDA8')  Or
      (Field.FieldName = 'ENVIO10') Or (Field.FieldName = 'CANTIDA10') Or
      (Field.FieldName = 'ENVIO12') Or (Field.FieldName = 'CANTIDA12') Then
   Begin
      ABrush.Color := $0022BF15;
   End; }


end;
// fin HPP_201108_COB
end.
