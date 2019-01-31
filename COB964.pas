unit COB964;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Wwdbigrd, Buttons, StdCtrls, wwdblook, Grids, Wwdbgrid, Mask,
  wwdbedit, Wwdbspin,DB, ExtCtrls, ComCtrls, ToolEdit, CurrEdit, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppDBBDE, ppVar, DBClient, DBGrids, fcButton, fcImgBtn,
  fcShapeBtn, Wwkeycb, ppStrtch, ppMemo, Animate, GIFCtrl, ppSubRpt;


type
  TfGenDesPla = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dbgCabDesPla: TwwDBGrid;
    Label1: TLabel;
    dblUpro: TwwDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    dblUsuario: TwwDBLookupCombo;
    btnFiltra: TSpeedButton;
    perano: TwwDBSpinEdit;
    permes: TwwDBSpinEdit;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    dblUpro2: TwwDBLookupCombo;
    perano2: TwwDBSpinEdit;
    permes2: TwwDBSpinEdit;
    PnlGenerDesc: TPanel;
    Shape1: TShape;
    gbGeneracion: TGroupBox;
    btnProcesa: TSpeedButton;
    lblMsg: TLabel;
    Label4: TLabel;
    edtNumOficio: TEdit;
    prbavance: TProgressBar;
    Label7: TLabel;
    btnX: TButton;
    pnlDescPorcentual: TPanel;
    Shape2: TShape;
    Button1: TButton;
    Label8: TLabel;
    dbgDescPorcentual: TwwDBGrid;
    chkDesPeriodicos: TCheckBox;
    edtupro: TEdit;
    ppbDescPorc: TppBDEPipeline;
    pprDescPorc: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    pplUpro1: TppLabel;
    pplPeriodo1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel16: TppLabel;
    ppDBText7: TppDBText;
    pnlDscPorcRang: TPanel;
    Shape3: TShape;
    grb1: TGroupBox;
    grb2: TGroupBox;
    grb3: TGroupBox;
    grb4: TGroupBox;
    Label11: TLabel;
    curredtDel1: TCurrencyEdit;
    curredtAl1: TCurrencyEdit;
    curredtPorc1: TCurrencyEdit;
    curredtdel2: TCurrencyEdit;
    curredtal2: TCurrencyEdit;
    curredtPorc2: TCurrencyEdit;
    curredtdel3: TCurrencyEdit;
    curredtal3: TCurrencyEdit;
    curredtporc3: TCurrencyEdit;
    curredtdel4: TCurrencyEdit;
    curredtal4: TCurrencyEdit;
    curredtporc4: TCurrencyEdit;
    BtnDscPorcRang: TBitBtn;
    Button2: TButton;
    ppLabel17: TppLabel;
    ppDBText8: TppDBText;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    pnlProcesos: TPanel;
    GroupBox5: TGroupBox;
    btnCalcula: TBitBtn;
    cedtPorcentaje: TCurrencyEdit;
    GroupBox7: TGroupBox;
    BtnPorRango: TBitBtn;
    GroupBox6: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PnlDetalleEnvio: TPanel;
    Shape4: TShape;
    Button3: TButton;
    Label14: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgDetalleEnvio: TwwDBGrid;
    dbgResumen: TwwDBGrid;
    DSRESUMEN: TDataSource;
    CDSRESUMEN: TClientDataSet;
    ppDBText9: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel18: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel19: TppLabel;
    ppDBText10: TppDBText;
    pplTipAso: TppLabel;
    pplTipAso2: TppLabel;
    BitBtn7: TBitBtn;
    ppRepDescuento: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    pplUpro2: TppLabel;
    pplPeriodo2: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel40: TppLabel;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn3: TfcShapeBtn;
    fcShapeBtn4: TfcShapeBtn;
    ppDBCalc14: TppDBCalc;
    ppROfico: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    pplblMtoDesc: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel58: TppLabel;
    pplblnOficio: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    pplblSenores: TppLabel;
    pplblFecha: TppLabel;
    btnMarca: TBitBtn;
    rdbVer1: TRadioButton;
    BitBtn6: TBitBtn;
    rdbVer3: TRadioButton;
    curredtVal: TCurrencyEdit;
    GroupBox3: TGroupBox;
    rdbCalc1: TRadioButton;
    rdbCalc2: TRadioButton;
    rdbCalc3: TRadioButton;
    BitBtn5: TBitBtn;
    rdbVer2: TRadioButton;
    curredtVal2: TCurrencyEdit;
    pnlBusca: TPanel;
    edtBusca: TwwIncrementalSearch;
    bbtnClosePnl: TButton;
    Shape5: TShape;
    lbBusca: TLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel23: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel24: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    pplUpro3: TppLabel;
    BitBtn4: TBitBtn;
    pnlRepOfico: TPanel;
    Shape6: TShape;
    Button4: TButton;
    Label12: TLabel;
    EdtSenores: TEdit;
    BitBtn8: TBitBtn;
    memoPie: TMemo;
    Label13: TLabel;
    ppMPie: TppMemo;
    pnlMsgSave: TPanel;
    Label10: TLabel;
    ppmLinea: TppMemo;
    ppmTotLetras: TppMemo;
    fcShapeBtn6: TfcShapeBtn;
    RepResumenTotal: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel59: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppltitulo: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    rdgResumen: TRadioGroup;
    BitBtn9: TBitBtn;
    ppDBText21: TppDBText;
    ppDBDET1: TppDBText;
    ppDBDET2: TppDBText;
    ppDBDET3: TppDBText;
    ppDBDET4: TppDBText;
    ppDBDET5: TppDBText;
    ppDBDET6: TppDBText;
    ppDBDET7: TppDBText;
    ppDBDET8: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel68: TppLabel;
    ppbResumen: TppBDEPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel62: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel77: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel78: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    RepResuCobNoEfect: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppltitulo2: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppDetailBand6: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText39: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel94: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel104: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel105: TppLabel;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    Image1: TImage;
    chkExcel: TCheckBox;
    DTGDATA: TDBGrid;
    gbfiltro: TGroupBox;
    rdTodos: TRadioButton;
    rdCobrados: TRadioButton;
    rdNoCobrados: TRadioButton;
    rdEnviados: TRadioButton;
    rdNoEnviados: TRadioButton;
    chkExcel2: TCheckBox;
    Image2: TImage;
    BitBtn10: TBitBtn;
    rdbCalc4: TRadioButton;
    rbIncAportes: TRadioButton;
    rbIncAportAutDes: TRadioButton;
    Label9: TLabel;
    dblupagoid2: TwwDBLookupCombo;
    edtupago: TEdit;
    Label15: TLabel;
    dbluseid2: TwwDBLookupCombo;
    edtuse: TEdit;
    rbDocente: TRadioButton;
    rbCesante: TRadioButton;
    rgtiparc: TRadioGroup;
    fcShapeBtn5: TfcShapeBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnFiltraClick(Sender: TObject);
    procedure btnProcesaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtNumOficioExit(Sender: TObject);
    Function  SalCuoProCob(xAsoid,xCreano,xCremes:string):Currency;
    Function  SalCuoMasAntigua(xAsoid,xCreano,xCremes:string):Currency;
    Function  SalCuoVencida(xAsoid,xCreano,xCremes:string):Currency;
    Function  PerCartera():String;
    Procedure MarcaSegunDesc(xUproid,xCreano,xCremes:string);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblUproExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnXClick(Sender: TObject);
    procedure dbgDescPorcentualDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure dbgDescPorcentualDblClick(Sender: TObject);
    procedure btnCalculaClick(Sender: TObject);
    procedure cedtPorcentajeExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ActFoot1();
    procedure ActFoot2();
    procedure ActFoot3();
    procedure BitBtn2Click(Sender: TObject);
    procedure cedtPorcentajeTExit(Sender: TObject);
    procedure MarProCobVenc();
    procedure DesmarProcCob();
    procedure dbgCabDesPlaDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BtnDscPorcRangClick(Sender: TObject);
    procedure BtnPorRangoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure permes2Exit(Sender: TObject);
    procedure permesExit(Sender: TObject);
    Function  VerificaMarc():boolean;
    procedure dbgCabDesPlaDblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dbgDetalleEnvioDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure ppDBText9Print(Sender: TObject);
    procedure ppDBText10Print(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn4Click(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure fcShapeBtn5Click(Sender: TObject);
    procedure btnMarcaClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure rdbVer1Click(Sender: TObject);
    procedure rdbVer2Click(Sender: TObject);
    procedure dbgDescPorcentualTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure bbtnClosePnlClick(Sender: TObject);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure fcShapeBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure chkExcel2Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure dblUpro2Change(Sender: TObject);
    procedure dblupagoid2Change(Sender: TObject);
    procedure dbluseid2Change(Sender: TObject);
    procedure permes2Change(Sender: TObject);
    procedure rbCesanteClick(Sender: TObject);
    procedure rbDocenteClick(Sender: TObject);

  private
    { Private declarations }
  public
    xNumcuoPen,xNumcuoVen:integer;
    xindexo,xfindexo,xmarcunit,xgrabo,xAnoPerAnt,xMesPerAnt,XPN,XVARIASCUO:String;
    zTotal:Currency;
    { Public declarations }
  end;

var
  fGenDesPla: TfGenDesPla;

implementation

uses COBDM1, COB421B, Math, COB988;


{$R *.dfm}

procedure TfGenDesPla.FormActivate(Sender: TObject);
VAR XSQL:STRING;
begin
 perano2.BorderStyle := bsSingle;
 perano.BorderStyle  := bsSingle;
 permes2.BorderStyle := bsSingle;
 permes.BorderStyle  := bsSingle;

 xgrabo := 'N';
 dblUpro2.SetFocus ;


end;

procedure TfGenDesPla.btnFiltraClick(Sender: TObject);
VAR  xsql,xwhere,xPercobCon,xAnoCon,xMesCon:string;
begin
  If Length(Trim(permes.Text))>0 Then permes.Text:=Format('%.2d',[StrToInt(Trim(permes.Text))]) else permes.Text:='';
  xAnoCon    := Trim(perano.Text);
  xMesCon    := Format('%.2d',[StrToInt(Trim(permes.Text))]);
  xPerCobCon := xAnoCon+xMesCon;
  If  Length(trim(dblUsuario.Text))>5 then xwhere:=' And Usuario='''+dblUsuario.Text+'''' else xwhere:='';
  If  (Length(trim(perano.Text))=4) and (Length(Trim(permes.Text))=2) then xWhere:=xwhere+' And Periodo='''+xPerCobCon+'''';
  xSql:= 'SELECT UPROID,PERIODO,FECGEN,NOFID,NUMASO,MONCUOENV,MONAPOENV,MONCUOAPL,MONAPOAPL,MONCUOENV-MONCUOAPL SALCUO,'+
  ' FECGEN,CREUSER,HREG '+
  'FROM COB204 WHERE UPROID = '+QuotedStr(dblUpro.Text)+' '+xwhere+' ORDER BY PERIODO';
  dm1.cdsSolicitud.close;
  dm1.cdsSolicitud.DataRequest(xsql);
  dm1.cdsSolicitud.Open;

  TNumericField(DM1.cdsSolicitud.fieldbyname('MONCUOENV')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('SALCUO')).DisplayFormat   :='###,###,##0.#0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('MONCUOAPL')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('MONAPOENV')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('MONAPOAPL')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('NUMASO')).DisplayFormat   :='###,##0';
  dbgCabDesPla.DataSource := DM1.dsSolicitud;
end;

Procedure TfGenDesPla.btnProcesaClick(Sender: TObject);
Var xtipaso, xQry2, xasociado, xsql,xsql2,xsql3,xsql4,xPercob,xAporte,xAno,xMes,
    xSql5, xOficio,xWhereadi,xWhere1,xWhere2,xWhere3, xQry1 :string;
    xSaldoPen,xSaldoVen,xSaldoMasAnt:Currency;
Begin

  If Trim(dblUpro2.Text)    <> '' Then  xQry1 := 'UPROID = '+QuotedStr(dblUpro2.Text);
  If Trim(dblupagoid2.Text) <> '' Then  xQry1 := xQry1 + ' AND UPAGOID = '+QuotedStr(dblupagoid2.Text);
  If Trim(dbluseid2.Text)   <> '' Then  xQry1 := xQry1 + ' AND USEID = '+QuotedStr(dbluseid2.Text);

  If Trim(dblUpro2.Text)    <> '' Then  xQry2 := 'A.UPROID = '+QuotedStr(dblUpro2.Text);
  If Trim(dblupagoid2.Text) <> '' Then  xQry2 := xQry2 + ' AND A.UPAGOID = '+QuotedStr(dblupagoid2.Text);
  If Trim(dbluseid2.Text)   <> '' Then  xQry2 := xQry2 + ' AND A.USEID = '+QuotedStr(dbluseid2.Text);

  If rbDocente.Checked Then xtipaso := 'DO' Else xtipaso := 'CE';

  xAno   := Trim(perano2.Text);
  xMes   := Format('%.2d',[StrToInt(Trim(permes2.Text))]);

  xPerCob:= xAno+xMes;

  xOficio:= trim(edtNumOficio.Text);


  //Resto un mes al periodo actual, lo utilizo para no tomar los del periodo anterior en proceso de cobranza
  If StrToInt(permes2.Text)=1 Then
  Begin
    xAnoPerAnt := IntToStr(StrToInt(perano2.Text)-1);
    xMesPerAnt := '12';
  End
  Else
  Begin
    xAnoPerAnt := perano2.Text;
    xMesPerAnt := Format('%.2d',[StrToInt(permes2.Text)-1]);
  End;

  If MessageDlg('Esta seguro de Generar Descuento por Planilla',mtconfirmation,[mbYes,MbNo],0)=mrNo then exit;

  If Length(trim(xOficio))= 0 then
  Begin
    MessageDlg('Debe Ingresa el Numero de Oficio', mtError,[mbOk],0);
    edtNumOficio.SetFocus;
    Exit;
  End;

  //VERIFICA SI YA SE GENERO DESCUENTO PARA EL PERIODO **** ojo adicionar los campos necesarios en cob322 cob319 cob204
  xsql:= 'SELECT * FROM COB319 WHERE '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso)+' AND FORPAGOID= '+QuotedStr('01')+' AND COBANO='+QuotedStr(xAno)+' AND COBMES='+QuotedStr(xMes);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(XSQL);
  DM1.cdsQry.Open;

  If DM1.cdsQry.RecordCount > 0 then
  Begin
    If MessageDlg('Ya fue generado el descuento para este periodo'+#13+'Desea generarlo nuevamente',mtconfirmation,[mbYes,MbNo],0)=mrYes then
    Begin
      xsql:= 'Delete Cob322 Where Periodo='+QuotedStr(xAno+xMes)+' And ForPagoid = '+QuotedStr('01')+' AND '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      xsql:= 'Delete Cob319 Where  FORPAGOID = '+QuotedStr('01')+' AND COBANO = '+QuotedStr(xAno)+' AND COBMES = '+QuotedStr(xMes)+' AND '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      xsql:= 'Delete Cob204 Where   Periodo = '+QuotedStr(xAno+xMes)+' And FPagoid='+QuotedStr('01')+' AND '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    End
      else exit;
  End;

  prbavance.Min :=  0 ;
  prbavance.Max := 70 ;
  prbavance.Step:= 10 ;
  prbavance.Position := 0;
  PnlGenerDesc.Refresh;
  Screen.Cursor := crHourGlass;

  //SACA MONTO EL APORTE DEL MES
  xAporte := '0.00';
  If (rbIncAportAutDes.Checked) Or (rbIncAportes.Checked) Then
  Begin
    //Verifica si existe aporte del periodo a procesar
    xSql:= 'Select APOVALOR  from Apo117 where Apoano='''+perano2.Text+''' and Apomes='''+Format('%.2d',[StrToInt(Trim(permes2.Text))])+''' ' ;
    Dm1.cdsQry.Close;
    Dm1.cdsQry.DataRequest(xSql);
    Dm1.cdsQry.Open;
    If Dm1.cdsQry.RecordCount <=0 then
    Begin
      Dm1.cdsQry.Close;
      MessageDlg('No exite Importe de Aporte para el Periodo, Verifique..... ', mtError,[mbOk],0);
      Exit;
    End
    Else
      xAporte:= Dm1.cdsQry.FieldByName('APOVALOR').AsString;
  End;

  //GENERA DESCUENTO DE CUOTAS MARCADAS EN PROCESO DE COBRANZA Y VENCIDAS
  lblMsg.Caption := 'Generando Descuento'  ;
  prbavance.StepIt;
  PnlGenerDesc.Refresh;

  //GENERA SOLO DESCUENTO DE CUOTAS PENDIENTES Y VENCIDAS
  If chkDesPeriodicos.Checked Then
    xWhereadi := ''
  else
    xWhereadi := ' And nvl(Variascuot,''X'') <> ''S''';

  //Cuotas en Proceso de Cobranza (Pendientes)
  prbavance.StepIt;
  PnlGenerDesc.Refresh;
  Xsql:=
         'Select a.Asoid,a.Asocodmod,a.Asocodaux,a.Asocodpago,a.Asoapenom,a.Useid,a.Uproid,a.Upagoid,a.Asodni,a.Asoncta,a.cargo,a.asoapepat,a.asoapemat,a.asonombres,'+
         QuotedStr(trim(edtNumOficio.Text))+'Nofic,'+QuotedStr(xAno)+'Cobano,'+QuotedStr(xMes)+'Cobmes,a.ASOTIPID,''01'' Forpagoid,'+
         'nvl(b.Cremto,0)-nvl(b.Cremtocob,0) Cremtocuo,nvl(b.Cremto,0)-nvl(b.Cremtocob,0) Moncuoenvper,0 Moncuoenvven,1 Numcuoenvper,0 Numcuoenvven,0 Monapoenv,100 Porenvcuo,nvl(b.Cremto,0)-nvl(b.Cremtocob,0) Moncuoenv,'+
         'nvl(b.Cremto,0)-nvl(b.Cremtocob,0) Montotenv'+
         ' From Apo201 a,Cre302 b '+
         'Where '+xQry2+' AND (A.ASOTIPID = '+QuotedStr(xtipaso)+') and a.asoid=b.asoid and '+
         ' b.creano='+QuotedStr(xAno)+' and b.cremes='+QuotedStr(xMes)+' and b.creestid = ''14'' and (forpagoid=''01'')'+xWhereadi ;

        //Cuotas Vencidas
        prbavance.StepIt;
        PnlGenerDesc.Refresh;

        Xsql2:=
        'Select a.Asoid,a.Asocodmod,a.Asocodaux,a.Asocodpago,a.Asoapenom,a.Useid,a.Uproid,a.Upagoid,a.Asodni,a.Asoncta,a.cargo,a.asoapepat,a.asoapemat,a.asonombres,'+
         QuotedStr(trim(edtNumOficio.Text))+'Nofic,'+QuotedStr(xAno) +'Cobano,'+QuotedStr(xMes)+'Cobmes,a.ASOTIPID,''01'' Forpagoid,'+
        'b.Saldo Cremtocuo,0 Moncuoenvper,b.Saldo Moncuoenvven,0 Numcuoenvper,b.Numcuo Numcuoenvven,0 Monapoenv,100 Porenvcuo,b.Saldo Moncuoenv,b.saldo Montotenv '+
        ' From Apo201 a, '+
        '(select asoid,sum(saldo) Saldo,sum(NumCuo) Numcuo  From '+
        '(Select A.asoid,A.credid,sum(nvl(cremto,0)-nvl(A.cremtocob,0)) saldo,count(1) NumCuo '+
        ' From Cre302 A,(Select *  From Apo201 Where '+xQry1+' and (ASOTIPID ='+QuotedStr(xtipaso)+') ) C  '+
        ' Where A.asoid=C.Asoid and ( A.creestid in(''02'',''11'',''27'') or (A.creestid=''14'' and percob<'+QuotedStr(xAnoPerAnt+xMesPerAnt)+') ) and '+
        ' (A.Creano||A.Cremes<'+QuotedStr(xAno+xMes)+' and A.Creano||A.Cremes> ''199612'' and (A.Forpagoid=''01'') ) '+
        ' Group by A.asoid,A.credid having sum(nvl(A.cremto,0)-nvl(A.cremtocob,0)) >0) group by asoid) b '+
        ' Where a.Asoid=b.Asoid and (A.ASOTIPID='+QuotedStr(xtipaso)+') '+ xWhereadi;

        xSql5 := '';
        If rbIncAportAutDes.Checked Then
          xSql5 := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, A.ASOAPENOM, A.USEID,'
          +' A.UPROID, A.UPAGOID, A.ASODNI, A.ASONCTA, A.CARGO, A.ASOAPEPAT, A.ASOAPEMAT, A.ASONOMBRES'
          +','+QuotedStr(trim(edtNumOficio.Text))+'Nofic,'+QuotedStr(xAno) +'Cobano,'+QuotedStr(xMes)+'Cobmes,a.ASOTIPID,''01'' Forpagoid,'
          +'0 Cremtocuo,0 Moncuoenvper, 0 Moncuoenvven,0 Numcuoenvper, 0 Numcuoenvven,'+xAporte+' Monapoenv, 100 Porenvcuo, 0 Moncuoenv,'+xAporte+' Montotenv '
          +' FROM APO201 A WHERE '+xQry1+' AND ASOTIPID = ''DO'' AND NVL(AUTDESAPO, ''X'' ) = ''S''';

        If rbIncAportes.Checked Then
          xSql5 := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, A.ASOAPENOM, A.USEID,'
          +' A.UPROID, A.UPAGOID, A.ASODNI, A.ASONCTA, A.CARGO, A.ASOAPEPAT, A.ASOAPEMAT, A.ASONOMBRES'
          +','+QuotedStr(trim(edtNumOficio.Text))+'Nofic,'+QuotedStr(xAno) +'Cobano,'+QuotedStr(xMes)+'Cobmes,a.ASOTIPID,''01'' Forpagoid,'
          +'0 Cremtocuo,0 Moncuoenvper, 0 Moncuoenvven,0 Numcuoenvper, 0 Numcuoenvven,'+xAporte+' Monapoenv, 100 Porenvcuo, 0 Moncuoenv,'+xAporte+' Montotenv '
          +' FROM APO201 A WHERE '+xQry1+' AND ASOTIPID = ''DO''';


         xsql3 := 'Insert Into Cob319 (Asoid,Asocodmod,Asocodaux,Asocodpago,Asoapenom,Useid,Uproid,Upagoid,Asodni,Asoncta,cargo,asoapepat,asoapemat,asonombres,'+
        'Nroficio,Cobano,Cobmes,ASOTIPID,Usuario,Freg,Hreg,Forpagoid, Cremtocuo,Moncuoenvper,Moncuoenvven,Numcuoenvper,Numcuoenvven,Monapoenv,Porenvcuo,Moncuoenv,Montotenv)';
        prbavance.StepIt;
        PnlGenerDesc.Refresh;
        xsql4:=' Select Asoid,max(Asocodmod) Asocodmod,max(Asocodaux) Asocodaux,max(Asocodpago) Asocodpago,max(Asoapenom) Asoapenom,max(Useid) Useid,max(Uproid) Uproid,'+
               'max(Upagoid) Upagoid,max(Asodni) Asodni,max(Asoncta) Asoncta,max(Cargo) Cargo,max(Asoapepat)Asoapepat,max(Asoapemat)Asoapemat,max(Asonombres)Asonombres,' +
               'max(Nofic) Nofic,max(Cobano) Cobano,max(Cobmes) Cobmes,max(ASOTIPID) ASOTIPID,'+QuotedStr(DM1.wUsuario)+',To_char(sysdate,''dd/mm/yyyy''),sysdate,max(Forpagoid) Forpagoid,'+
               'sum(Cremtocuo) Cremtocuo,Sum(Moncuoenvper) Moncuoenvper,Sum(Moncuoenvven) Moncuoenvven,'+
               'sum(Numcuoenvper) Numcuoenvper ,Sum(Numcuoenvven) Numcuoenvven,Sum(Monapoenv) Monapoenv,max(Porenvcuo),sum(Moncuoenv) Moncuoenv,sum(Montotenv) Montotenv'+
               ' From ('+xsql+' union all '+xsql2;
               If xSql5 <> '' Then
                  xsql4 := xsql4 + ' union all '+xSql5;
               xsql4 := xsql4 + ' ) C Group by Asoid';

       DM1.DCOM1.AppServer.EjecutaSQL(xsql3+xsql4);

       // xSql := 'BEGIN DESCARGO_PLANILLA('+xsql3+xsql4+'); END;';
       // DM1.DCOM1.AppServer.EjecutaSQL(xSql);

       //Adiciono las cuotas mas atiguas y los aportes
       If chkDesPeriodicos.Checked then
         xsql:= 'SELECT * FROM COB319 WHERE FORPAGOID=''01'' AND COBANO='+QuotedStr(xAno)+' AND COBMES='+QuotedStr(xMes)+' AND '+xQry1
       Else
         xsql :='SELECT * FROM COB319 A, APO201 B WHERE A.FORPAGOID=''01'' AND A.COBANO='+QuotedStr(xAno)+' AND A.COBMES = '+QuotedStr(xMes)+' AND '+xQry2
         +' And a.Asoid=b.Asoid And nvl(b.Variascuot,''X'') <> ''S''';

       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(XSQL);
       DM1.cdsQry.Open;
         If Dm1.cdsQry.RecordCount>0 then
             Begin
                Dm1.cdsQry.First;
                While Not Dm1.cdsQry.Eof do
                   Begin
                     xSaldoMasAnt:=0;
                      xSaldoMasAnt := SalCuoMasAntigua(Dm1.cdsQry.FieldByName('Asoid').AsString,Dm1.cdsQry.FieldByName('Cobano').AsString,Dm1.cdsQry.FieldByName('Cobmes').AsString);
                      if (xSaldoMasAnt>0) Then
                          Begin
                            xsql:= 'Update Cob319 set Moncuomasant = '+CurrToStr(xSaldoMasAnt)
                            +' Where Asoid = '+QuotedStr(Dm1.cdsQry.FieldByName('Asoid').AsString)+' and '+xQry1
                            +' and Cobano = '+QuotedStr(Dm1.cdsQry.FieldByName('Cobano').AsString)
                            +' and Cobmes ='+QuotedStr(Dm1.cdsQry.FieldByName('Cobmes').AsString);
                             DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                          End;
                         Dm1.cdsQry.Next;
                   End;
             End
          Else
             Begin
               MessageDlg('No existe informacin del periodo para procesar...', mtError ,[mbOk],0);
               Dm1.cdsQry.Close;
               Dm1.cdsQry.IndexFieldNames:='';
               Exit;
             End;


       //MARCA DESCUENTOS EN FORMA PORCENTUAL
       lblMsg.Caption := 'Marcado Descuento Porcentual'  ;
       prbavance.StepIt;
       PnlGenerDesc.Refresh;
       XSQL :='UPDATE COB319 A SET IDTIPCOB =''03'' WHERE EXISTS'
       +' (SELECT ASOID,CFC_F FROM CFC000 WHERE A.ASOID=ASOID AND PERIODO='+QuotedStr(PerCartera)
       +' AND CFC_F IN (''B'',''C'',''D'') ) AND A.COBANO='+QuotedStr(xAno)
       +' AND A.COBMES='+QuotedStr(xMes)+ ' And '+xQry1+' And A.Cremtocuo > 0';

       DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       prbavance.StepIt;
       PnlGenerDesc.Refresh;

       //GENERA CABCERA COB322 CON TOTALES
       prbavance.StepIt;
       PnlGenerDesc.Refresh;
       xSql:=
       'INSERT INTO COB322 (CIAID,ITEM,PERIODO,USUARIO,FREG,UPROID,HREG,FORPAGOID,NOFID,ASOTIPID,MONCUOENV,MONAPOENV,NUMASO, UPAGOID, USEID) '+
       ' SELECT ''01'',NULL,'+QuotedStr(xAno+xMes)+','+QuotedStr(dm1.wUsuario)+',TO_CHAR(SYSDATE),'+QuotedStr(trim(dblUpro2.Text))+',SYSDATE,''01'','+
       QuotedStr(edtNumOficio.Text)+','+QuotedStr(xtipaso) +',SUM(NVL(MONCUOENV,0)),SUM(NVL(MONAPOENV,0)),COUNT(1),'+QuotedStr(dblupagoid2.Text)+','+QuotedStr(dbluseid2.Text)
       +' FROM COB319 WHERE Forpagoid = ''01'' AND COBANO = '+QuotedStr(xAno)+' AND COBMES = '+QuotedStr(xMes)+' AND ASOTIPID = '+QuotedStr(xtipaso)
       +' AND '+xQry1+' GROUP BY COBANO,COBMES,UPROID';
       DM1.DCOM1.AppServer.EjecutaSql(xSQL);

       // GENERA CABECERA DEL COB204 CON TOTALES
       prbavance.StepIt;
       PnlGenerDesc.Refresh;

       xSql := 'SELECT SUM(NVL(MONAPOENV,0)) MONAPOENV , SUM(NVL(MONCUOENV,0)) MONCUOENV'
       +' ,SUM(CASE WHEN NVL(MONAPOENV,0) <> 0 THEN 1 ELSE 0 END) NUMAPOENV ,'
       +'SUM(CASE WHEN NVL(MONCUOENV,0) <> 0 THEN 1 ELSE 0 END) NUMCUOENV, COUNT(1) TOTREG'
       +' FROM COB319 WHERE '+xQry1+' AND COBANO = '+QuotedStr(xAno)+' AND COBMES = '+QuotedStr(xMes)+' AND ASOTIPID = '+QuotedStr(xtipaso);
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xsql);
       DM1.cdsQry.Open;

       xSql:=
       'INSERT INTO COB204 (NOFID,MODOFIC,MONTOTOT,FREG,HREG,TMONID,CREMOD,CREUSER,CIAID,FPAGOID,OFIESTADO,CREANO,CREMES,'
       +'OFIGLOSA,UPROID,TOTREG,PERIODO,MONTOAC,ASOTIPID,MONCUOENV,MONAPOENV,NUMASO,FECGEN, UPAGOID, USEID)'
       +'VALUES ('+QuotedStr(edtNumOficio.Text)+', ''COB'','+DM1.cdsQry.FieldByName('MONAPOENV').AsString+'+'+DM1.cdsQry.FieldByName('MONCUOENV').AsString
       +', TO_DATE(SYSDATE, ''DD/MM/YYYY''), SYSDATE, ''N'', ''COB'','+QuotedStr(Dm1.wUsuario)+', ''01'', ''01'', ''INICIAL'''
       +','+QuotedStr(xAno)+','+QuotedStr(xMes)+', ''Glosa'','+QuotedStr(dblUpro2.Text)+','+DM1.cdsQry.FieldByName('TOTREG').AsString
       +','+QuotedStr(xAno+xMes)+','+DM1.cdsQry.FieldByName('MONAPOENV').AsString+'+'+DM1.cdsQry.FieldByName('MONCUOENV').AsString
       +','+QuotedStr(xtipaso)+','+DM1.cdsQry.FieldByName('MONCUOENV').AsString+','+DM1.cdsQry.FieldByName('MONAPOENV').AsString
       +','+DM1.cdsQry.FieldByName('TOTREG').AsString+', SYSDATE,'+QuotedStr(dblupagoid2.Text)+','+QuotedStr(dbluseid2.Text)+')';

       DM1.DCOM1.AppServer.EjecutaSql(xSQL);


       {
       ,count(1) TOTREG,'+QuotedStr(xAno+xMes)+' PERIODO, sum(NVL(MONTOTENV,0)) MONTOAC,'+QuotedStr(xtipaso)
       +' ASOTIPID, Sum(nvl(MONCUOENV,0)) MONCUOENV, sum(nvl(monapoenv,0)) MONAPOENV, count(1) NUMASO, to_char(sysdate,''dd/mm/yyyy'') FECGEN,'+QuotedStr(dblupagoid2.Text)+' UPAGOID,'+QuotedStr(dbluseid2.Text)+' USEID'
       +' From Cob319 Where Forpagoid = ''01'' and cobano = '+QuotedStr(xAno)+' and cobmes = '+QuotedStr(xMes)+' AND '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso)
       +' Group by cobano,cobmes, uproid, upagoid, useid, asotipid';

       }

       dblUpro.Text := dblUpro2.Text;
       perano.Text  := perano2.Text;
       permes.Text  := permes2.Text;
       btnFiltraClick(Self);
       Screen.Cursor := crDefault;
       MessageDlg('>> Generación de descuento concluida <<', mtInformation ,[mbOk],0);
       btnXClick(self);
end;

procedure TfGenDesPla.FormCreate(Sender: TObject);
VAR XSQL:STRING;
begin

    xSql:='SELECT UPROID,PERIODO,FECGEN,NOFID,NUMASO,MONCUOENV,MONAPOENV,MONCUOAPL,MONAPOAPL,MONCUOENV-MONCUOAPL SALCUO,' +
          ' FECGEN,CREUSER,HREG '+
          'FROM cob204 WHERE UPROID=''XXX'' ORDER BY PERIODO';
    DM1.cdsSolicitud.Close;
    DM1.cdsSolicitud.DataRequest(xSQL);
    DM1.cdsSolicitud.Open;

    TNumericField(DM1.cdsSolicitud.fieldbyname('MONCUOENV')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsSolicitud.fieldbyname('SALCUO')).DisplayFormat   :='###,###,##0.#0';
    TNumericField(DM1.cdsSolicitud.fieldbyname('MONCUOAPL')).DisplayFormat:='###,###,##0.#0';

    TNumericField(DM1.cdsSolicitud.fieldbyname('MONAPOENV')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsSolicitud.fieldbyname('MONAPOAPL')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsSolicitud.fieldbyname('NUMASO')).DisplayFormat   :='###,##0';

    dbgCabDesPla.DataSource := DM1.dsSolicitud;

    XSQL:= 'SELECT UPROID,UPRONOM, CODDEP FROM APO102';
    DM1.cdsUPro.Close;
    DM1.cdsUPro.DataRequest(XsQL);
    DM1.cdsUPro.Open;

    dblUpro.LookupTable := DM1.CdsUPro;
    dblUpro.LookupField := 'UPROID';

    dblUpro2.LookupTable := DM1.cdsUPro;
    dblUpro2.LookupField := 'UPROID';

    XSQL:= 'SELECT USERID,USERNOM FROM USERTABLE WHERE AREA=''COB'' ';
    DM1.cdsUser.Close;
    DM1.cdsUser.DataRequest(XSQL);
    DM1.cdsUser.Open;

    dblUsuario.LookupTable := DM1.cdsUser;
    dblUsuario.LookupField := 'USERID';

    xindexo:='N';

End;

procedure TfGenDesPla.edtNumOficioExit(Sender: TObject);
begin
 if Length(trim(edtNumOficio.Text)) <> 0 then
    Begin
     edtNumOficio.Text := Format('%.5d',[StrToInt(Trim(edtNumOficio.Text))]);
    End
end;


//Calcula Saldo de la cuota
function TfGenDesPla.SalCuoProCob(xAsoid,xCreano,xCremes: string): Currency;
var xsql:string;
begin
  xsql:='Select cremto,cremtocob from cre302 where asoid='''+xAsoid+''' and creestid=''14'' and (forpagoid=''01'')and creano='''+xCreano+''' and cremes='''+xCremes+''' ';
  dm1.cdsQry1.Close;
  dm1.cdsQry1.DataRequest(xsql);
  dm1.cdsQry1.Open;
  if dm1.cdsQry1.RecordCount>0 then
     Begin
       if dm1.cdsQry1.FieldByName('cremto').AsCurrency - dm1.cdsQry1.FieldByName('cremtocob').AsCurrency>0 then
          xNumcuoPen:=1 Else xNumcuoPen:=0;
       Result  := dm1.cdsQry1.FieldByName('cremto').AsCurrency - dm1.cdsQry1.FieldByName('cremtocob').AsCurrency
     End
  else
     Begin
      xNumcuoPen:=0;
      Result:= 0;
     End;
end;


//Saldo de Cuotas Vencidas
function TfGenDesPla.SalCuoVencida(xAsoid, xCreano,
  xCremes: string): Currency;
  var xSaldo:currency;
      xSql:string;
begin

    Xsql:= 'Select sum(nvl(cremto,0)-nvl(cremtocob,0)) saldo , count(1) NumCuo'+
           ' From Cre302 '+
           ' Where Asoid='''+xAsoid+''' and (Forpagoid=''01'') and creestid in (''02'',''11'',''14'',''27'') and '+
           ' Creano||Cremes<'+xCreano+xCremes +' And  Creano||Cremes>199612 ' ;
   dm1.cdsQry1.Close;
   dm1.cdsQry1.DataRequest(xsql);
   dm1.cdsQry1.Open;
   xnumcuoVen:= dm1.cdsQry1.FieldByName('Numcuo').AsInteger;

   if dm1.cdsQry1.RecordCount>0 then
     If Length(Trim(CurrToStr(dm1.cdsQry1.FieldByName('saldo').AsCurrency)))=0 then Result:=0 else Result:=Dm1.cdsQry1.FieldByName('saldo').AsCurrency
   else Result:= 0;

end;

//Periodo de la cartera
function TfGenDesPla.PerCartera: String;
var xSQL,xPerCar:String;
begin
  xSQL:='SELECT MAX(PERIODO) PERCAR FROM CFC000';
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(xSQL);
  DM1.cdsQry3.Open;
  If DM1.cdsQry3.RecordCount>0 Then
     xPerCar:=DM1.cdsQry3.FieldByName('PERCAR').AsString
  Else
     xPerCar:='000000';
  Result:=xPerCar;
  Dm1.cdsQry3.Close;
  Dm1.cdsQry3.IndexFieldNames:='';
end;



procedure TfGenDesPla.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;


procedure TfGenDesPla.dblUproExit(Sender: TObject);
begin
dblUpro.Text := UpperCase(dblUpro.Text);
end;

procedure TfGenDesPla.Button1Click(Sender: TObject);
begin

Dm1.cdsQry.Close;
Dm1.cdsQry.IndexFieldNames:='';
Dm1.cdsQry1.Close;
Dm1.cdsQry1.IndexFieldNames:='';
pnlDescPorcentual.Visible := False;

end;

procedure TfGenDesPla.btnXClick(Sender: TObject);
begin

Dm1.cdsQry.Close;
Dm1.cdsQry.IndexFieldNames:='';
Dm1.cdsQry1.Close;
Dm1.cdsQry1.IndexFieldNames:='';
PnlGenerDesc.Visible := False;
end;

procedure TfGenDesPla.dbgDescPorcentualDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

  if (Field.DisplayName='(%)') then
     begin
       dbgDescPorcentual.Canvas.Font.Color := clRed;
       dbgDescPorcentual.DefaultDrawDataCell(Rect, Field, State);
     end;


  if (Field.DisplayName='Tot.Cobro') then
     begin
       dbgDescPorcentual.Canvas.Font.Color := $00C08000;
       dbgDescPorcentual.DefaultDrawDataCell(Rect, Field, State);
     end;
  if (Field.DisplayName='Tot.Envio') then
     begin
       dbgDescPorcentual.Canvas.Font.Color := $00C08000;
       dbgDescPorcentual.DefaultDrawDataCell(Rect, Field, State);
     end;


  If Dm1.cdsQry1.FieldByName('FLACUOPER').AsString='S' then
     Begin
       If Field.DisPlayName='Sal.Periodo' Then
        Begin
         dbgDescPorcentual.Canvas.Font.Color := clGreen;
         dbgDescPorcentual.DefaultDrawDataCell(Rect, Field, State);
        End;
     End;

  If Dm1.cdsQry1.FieldByName('FLACUOMASANT').AsString='S' then
      Begin
        If Field.DisPlayName='Sal.Ven+Ant' Then
         Begin
           dbgDescPorcentual.Canvas.Font.Color := clGreen;
           dbgDescPorcentual.DefaultDrawDataCell(Rect, Field, State);
         End;
      End;


  If Dm1.cdsQry1.FieldByName('FLACUOPERVEN').AsString='S' then
      Begin
        If (Field.DisPlayName='Sal.Vencido') or (Field.DisPlayName='Sal.Periodo')  Then
          Begin
           dbgDescPorcentual.Canvas.Font.Color := clGreen;
           dbgDescPorcentual.DefaultDrawDataCell(Rect, Field, State);
          End;
      End;


  If Dm1.cdsQry1.FieldByName('FLACUOPERVENMASANT').AsString='S' then
      Begin
        If (Field.DisPlayName='Sal.Ven+Ant') or (Field.DisPlayName='Sal.Periodo')  Then
          Begin
           dbgDescPorcentual.Canvas.Font.Color := clGreen;
           dbgDescPorcentual.DefaultDrawDataCell(Rect, Field, State);
          End;
      End;


end;

procedure TfGenDesPla.dbgDescPorcentualDblClick(Sender: TObject);

begin

   Dm1.cdsQry1.Edit;
   If Dm1.cdsQry1.FieldByName('Flag').AsString='S' Then  Dm1.cdsQry1.FieldByName('Flag').AsString:='' else Dm1.cdsQry1.FieldByName('Flag').AsString:='S';
end;

procedure TfGenDesPla.btnCalculaClick(Sender: TObject);
var C:TBookmark;
begin


   If Not VerificaMarc Then
      Begin
         MessageDlg('No existe ningun registro marcado...' , mtError,[mbOk],0);
         Exit;
      End;

  Dm1.cdsQry1.IndexFieldNames:='';
  C:= Dm1.cdsQry1.GetBookmark;
  Dm1.cdsQry1.First;


  Dm1.cdsQry1.DisableControls;
  While not Dm1.cdsQry1.eof do
     Begin
       if Dm1.cdsQry1.FieldByName('FLAG').AsString='S' Then
          Begin
            if Length(trim(cedtPorcentaje.Text))=0 then cedtPorcentaje.Text:='000';
            DM1.cdsQry1.Edit;
            DM1.cdsQry1.FieldByName('Flag').AsString := '';
            DM1.cdsQry1.FieldByName('Porenvcuo').AsString := cedtPorcentaje.Text ;
            DM1.cdsQry1.FieldByName('Moncuoenv').AsString := CurrToStr(RoundTo((Dm1.cdsQry1.FieldByName('Cremtocuo').AsCurrency *(DM1.cdsQry1.FieldByName('Porenvcuo').AsCurrency/100)),-2));
          End;

       Dm1.cdsQry1.Next;
     End;

    btnMarca.Caption := 'Mrc.Tod.';

    Try Dm1.cdsQry1.GotoBookmark(C);
     Except
      ShowMessage('Existe un error de ordenamiento, salga de la opcin e ingrese nuevamente...  ');
      Dm1.cdsQry1.IndexFieldNames:='';
    End;
    Dm1.cdsQry1.EnableControls;
    Dm1.cdsQry1.FreeBookmark(C);
    cedtPorcentaje.Text :='000';
    curredtval2.Value   := 0; curredtval.Value   := 0;
    curredtVal2.Enabled := False; curredtval.Enabled := False;
    rdbCalc1.Checked := False ;rdbCalc2.Checked := False; rdbCalc3.Checked := False;
    rdbVer1.Checked  := False ; rdbVer2.Checked := False ; rdbVer3.Checked := False;

    ActFoot1;
    If xindexo='S' then Dm1.cdsQry1.IndexFieldNames:= xfindexo;
    dbgDescPorcentual.SetFocus;



end;

procedure TfGenDesPla.cedtPorcentajeExit(Sender: TObject);
begin
btnCalcula.SetFocus;
end;

procedure TfGenDesPla.BitBtn1Click(Sender: TObject);
var  xQry1, xsql,xasoid, xtipaso :string;
    B:TBookmark;
    xTotEnv,Xmonapoenv,Xmoncuoenv,Xmontotenv,xApoEnv :Currency;
begin
  If Trim(dblUpro2.Text)    <> '' Then  xQry1 := 'UPROID = '+QuotedStr(dblUpro2.Text);
  If Trim(dblupagoid2.Text) <> '' Then  xQry1 := xQry1 + ' AND UPAGOID = '+QuotedStr(dblupagoid2.Text);
  If Trim(dbluseid2.Text)   <> '' Then  xQry1 := xQry1 + ' AND USEID = '+QuotedStr(dbluseid2.Text);
  If rbDocente.Checked Then xtipaso := 'DO' Else xtipaso := 'CE';

  If MessageDlg('Esta seguro de grabar los cambios',mtconfirmation,[mbYes,MbNo],0)=mrYes then
  Begin
    Screen.Cursor := crHourGlass;
    Dm1.cdsQry1.IndexFieldNames:='';
    B:= Dm1.cdsQry1.GetBookmark;
    Dm1.cdsQry1.DisableControls;
    Dm1.cdsQry1.First;
    pnlMsgSave.Visible := True;
    pnlMsgSave.Refresh;
    While not Dm1.cdsQry1.Eof do
    Begin
      xasoid:=Dm1.cdsQry1.FieldByName('Asoid').AsString;
      If dm1.cdsQry1.FieldByName('Moncuoenv').AsCurrency=0 Then
      Begin
        xTotEnv:=0;
        xApoEnv:=0;
      End
      Else
      Begin
        xTotEnv:=dm1.cdsQry1.FieldByName('Moncuoenv').AsCurrency+dm1.cdsQry1.FieldByName('Cremtoapo').AsCurrency;
        xApoEnv:=dm1.cdsQry1.FieldByName('Cremtoapo').AsCurrency;
      End;
      xsql:= 'Update Cob319 set Monapoenv='+CurrToStr(xApoenv)+',Moncuoenv='+dm1.cdsQry1.FieldByName('Moncuoenv').AsString+', Porenvcuo=nvl('''+dm1.cdsQry1.FieldByName('Porenvcuo').AsString +''',''00'') '+
      ',Montotenv='+CurrToStr(xTotEnv)+
      ',Flacuoper='+QuotedStr(dm1.cdsQry1.FieldByName('Flacuoper').AsString)+',Flacuomasant='+QuotedStr(dm1.cdsQry1.FieldByName('Flacuomasant').AsString)+
      ',Flacuoperven='+QuotedStr(dm1.cdsQry1.FieldByName('Flacuoperven').AsString)+ ',Cremtocuo='+dm1.cdsQry1.FieldByName('Cremtocuo').AsString+
      ',Flacuopervenmasant='+ QuotedStr(dm1.cdsQry1.FieldByName('Flacuopervenmasant').AsString)+
      ' Where Asoid='+QuotedStr(xAsoid)+' And cobano='+QuotedStr(Perano2.Text)+' And cobmes='+QuotedStr(Format('%.2d',[StrToInt(Trim(Permes2.Text))]));
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      Dm1.cdsQry1.Next;
    End;
    //Actualizao el COB322 y COB204
    Xmonapoenv    := 0;
    Xmoncuoenv    := 0;
    Xmontotenv    := 0;
    Xsql:='Select Monapoenv,Moncuoenv,Montotenv From Cob319 Where Forpagoid=''01'' and Cobano='''+perano2.Text+''' And Cobmes='''+permes2.Text+''' And Uproid='''+dblUpro2.Text+'''';
    Dm1.cdsQry2.Close;
    Dm1.cdsQry2.DataRequest(Xsql);
    Dm1.cdsQry2.Open;
    If Dm1.cdsQry2.RecordCount > 0 Then
    Begin
      While Not Dm1.cdsQry2.Eof Do
      Begin
        Xmonapoenv := Xmonapoenv+ Dm1.cdsQry2.FieldByName('monapoenv').AsCurrency;
        Xmoncuoenv := Xmoncuoenv+ Dm1.cdsQry2.FieldByName('moncuoenv').AsCurrency;
        Xmontotenv := Xmontotenv+ Dm1.cdsQry2.FieldByName('montotenv').AsCurrency;
        Dm1.cdsQry2.Next;
      End;
    End;
    xsql := 'Update Cob322 set Moncuoenv = '+CurrToStr(Xmoncuoenv)+',Monapoenv = '+CurrToStr(Xmonapoenv)
    +' Where Periodo = '+QuotedStr(perano2.Text+permes2.Text)+' and ForPagoid = ''01'' and '+xQry1
    +' and asotipid = '+QuotedStr(xtipaso);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);

    xsql := 'Update Cob204 set Moncuoenv='+CurrToStr(Xmoncuoenv)+',Monapoenv='+CurrToStr(Xmonapoenv)+',Montotot='+CurrToStr(Xmontotenv)+',Montoac='+CurrToStr(Xmontotenv)+
    ' Where Periodo ='+QuotedStr(perano2.Text+permes2.Text)+' And Fpagoid=''01'' And '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);

    Dm1.cdsQry2.Close;
    Dm1.cdsQry2.IndexFieldNames :='';
    Dm1.cdsQry1.GotoBookmark(B);
    Dm1.cdsQry1.EnableControls;
    Dm1.cdsQry1.FreeBookmark(B);
    Screen.Cursor:=crDefault;
    dblUpro.Text := dblUpro2.Text;
    perano.Text  := perano2.Text;
    permes.Text  := permes2.Text;
    btnFiltraClick(Self);
    xgrabo := 'S';
    pnlMsgSave.Visible := False;
    Dm1.cdsQry1.IndexFieldNames:=xfindexo;
    MessageDlg(' >> Grabacin exitosa <<' , mtInformation,[mbOk],0);
End

end;

procedure TfGenDesPla.ActFoot1;

     var B:TBookmark;
     XCREMTOCUO,XMONCUOENV,XMONCUOENVPER,XMONCUOENVVEN,XNUMCUOENVPER,XNUMCUOENVVEN,XMONCUOMASANT :Currency;
begin

    dbgDescPorcentual.ColumnByName('Cremtocob').FooterValue    := '0.00';
    dbgDescPorcentual.ColumnByName('Moncuoenv').FooterValue    := '0.00';
    dbgDescPorcentual.ColumnByName('Moncuoenvper').FooterValue := '0.00';
    dbgDescPorcentual.ColumnByName('Moncuoenvven').FooterValue := '0.00';
    dbgDescPorcentual.ColumnByName('Moncuomasant').FooterValue := '0.00';
    dbgDescPorcentual.ColumnByName('Numcuoenvper').FooterValue := '0000';
    dbgDescPorcentual.ColumnByName('Numcuoenvven').FooterValue := '0000';

  //Guardo la posicion
    Dm1.cdsQry1.IndexFieldNames:='';
    B:= Dm1.cdsQry1.GetBookmark;
    Dm1.cdsQry1.DisableControls;

    Dm1.cdsQry1.First;
    XCREMTOCUO    := 0;
    XMONCUOENV    := 0;
    XMONCUOENVPER := 0;
    XMONCUOENVVEN := 0;
    XNUMCUOENVPER := 0;
    XNUMCUOENVVEN := 0;
    XMONCUOMASANT := 0;

    While not Dm1.cdsQry1.Eof do
      Begin
        XCREMTOCUO     := XCREMTOCUO+Dm1.cdsQry1.FieldByName('CREMTOCUO').ascurrency ;
        XMONCUOENV     := XMONCUOENV+Dm1.cdsQry1.FieldByName('MONCUOENV').ascurrency;
        XMONCUOENVPER  := XMONCUOENVPER+Dm1.cdsQry1.FieldByName('MONCUOENVPER').ascurrency;
        XMONCUOENVVEN  := XMONCUOENVVEN+Dm1.cdsQry1.FieldByName('MONCUOENVVEN').ascurrency;
        XNUMCUOENVPER  := XNUMCUOENVPER+Dm1.cdsQry1.FieldByName('NUMCUOENVPER').ascurrency;
        XNUMCUOENVVEN  := XNUMCUOENVVEN+Dm1.cdsQry1.FieldByName('NUMCUOENVVEN').ascurrency;
        XMONCUOMASANT  := XMONCUOMASANT+Dm1.cdsQry1.FieldByName('MONCUOMASANT').ascurrency;
        Dm1.cdsQry1.Next;
      End;

   dbgDescPorcentual.ColumnByName('CREMTOCUO').FooterValue   := FormatCurr('###,##0.#0',XCREMTOCUO);
   dbgDescPorcentual.ColumnByName('MONCUOENV').FooterValue   := FormatCurr('###,##0.#0',XMONCUOENV);
   dbgDescPorcentual.ColumnByName('MONCUOENVPER').FooterValue:= FormatCurr('###,##0.#0',XMONCUOENVPER);
   dbgDescPorcentual.ColumnByName('MONCUOENVVEN').FooterValue:= FormatCurr('###,##0.#0',XMONCUOENVVEN);
   dbgDescPorcentual.ColumnByName('MONCUOMASANT').FooterValue:= FormatCurr('###,##0.#0',XMONCUOMASANT);
   dbgDescPorcentual.ColumnByName('NUMCUOENVPER').FooterValue:= FormatCurr('#####',XNUMCUOENVPER);
   dbgDescPorcentual.ColumnByName('NUMCUOENVVEN').FooterValue:= FormatCurr('#####',XNUMCUOENVVEN);
   dbgDescPorcentual.ColumnByName('ASOAPENOM').FooterValue   := FormatCurr('#####',Dm1.cdsQry1.RecordCount);
  //Me posiciono nuevamente en el posicion marcada
    Dm1.cdsQry1.GotoBookmark(B);
    Dm1.cdsQry1.EnableControls;
    Dm1.cdsQry1.FreeBookmark(B);
    Dm1.cdsQry1.IndexFieldNames:=xfindexo;

end;


procedure TfGenDesPla.BitBtn2Click(Sender: TObject);
begin

//If xGrabo:='S' Then


Button1Click(self);
end;


procedure TfGenDesPla.cedtPorcentajeTExit(Sender: TObject);
begin
//btnCalculatodos.SetFocus;
end;


procedure TfGenDesPla.MarProCobVenc;
VAR XSQL,xWhereadi:STRING;
begin

   If chkDesPeriodicos.Checked then xWhereadi:='' else xWhereadi:=' And nvl(Variascuot,''X'')<>''S'' ';

   xsql:= 'Select A.* From Cre302 A,Apo201 B Where A.Asoid=B.Asoid  and (B.ASOTIPID=''DO'') and A.Creano||A.Cremes<'+Trim(perano2.Text)+Format('%.2d',[StrToInt(Trim(permes2.Text))])+
          ' And (A.Forpagoid=''01'') And A.Uproid='''+Trim(dblUpro2.Text)+''' And A.Creestid In (''02'',''11'',''27'') And (NVL(A.Cremto,0)-NVL(A.Cremtocob,0))>0  '+xWhereadi;
   Dm1.cdsQry4.Close;
   Dm1.cdsQry4.DataRequest(xsql);
   Dm1.cdsQry4.Open;

   Dm1.cdsQry4.First;
   If Dm1.cdsQry4.RecordCount > 0 then
      Begin
         While not Dm1.cdsQry4.eof do
            Begin
              xSql:='Update Cre302 Set CREESTID=''14'',CREESTADO=''EN PROCESO DE COBRANZA'',PERCOB='+QuotedStr(Trim(perano2.Text+Format('%.2d',[StrToInt(Trim(permes2.Text))])))+
                    'Where ASOID='''+Dm1.cdsQry4.FieldByName('Asoid').AsString+''' And Credid='''+Dm1.cdsQry4.FieldByName('Credid').AsString+''' And '+
                    'Crecuota='''+Dm1.cdsQry4.FieldByName('Crecuota').AsString +''' ';
              DM1.DCOM1.AppServer.EjecutaSql(xSQL);
              Dm1.cdsQry4.Next;
            End;
      End;
end;


procedure TfGenDesPla.dbgCabDesPlaDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

   if (Field.DisplayName='Mnt.Cuo.~Enviado') or (Field.DisplayName='Mnt.Apo.~Enviado') then
     begin
       dbgCabDesPla.Canvas.Font.Color := clrED;
       dbgCabDesPla.DefaultDrawDataCell(Rect, Field, State);
     end;
end;

procedure TfGenDesPla.BitBtn3Click(Sender: TObject);
begin

Dm1.cdsQry1.DisableControls;

pplUpro1.Caption            := edtUpro.Text ;
pplPeriodo1.Caption         := perano2.Text+'-'+permes2.Text;
Dm1.cdsQry1.IndexFieldNames := xfindexo;
ppbDescPorc.DataSource      := Dm1.dsQry1;
pprDescPorc.Print;
pprDescPorc.Stop;
ppbDescPorc.DataSource      :=nil;
curredtval2.Value   := 0; curredtval.Value   := 0;
curredtVal2.Enabled := False; curredtval.Enabled := False;
rdbCalc1.Checked := False ;rdbCalc2.Checked := False; rdbCalc3.Checked := False;
rdbVer1.Checked  := False ; rdbVer2.Checked := False ; rdbVer3.Checked := False;

Dm1.cdsQry1.EnableControls;
end;

procedure TfGenDesPla.BtnDscPorcRangClick(Sender: TObject);
var B:TBookmark;
    xAvanza:string;
begin

  Dm1.cdsQry1.IndexFieldNames := '';
  B := Dm1.cdsQry1.GetBookmark;
  Dm1.cdsQry1.DisableControls;
  Dm1.cdsQry1.First;
  If chk1.Checked then
  Begin
    If StrToCurr(curredtDel1.Text) > StrToCurr(curredtAl1.Text) then
    Begin
      MessageDlg('Los Ramgos(1) no son consistentes verifique ' , mtError,[mbOk],0);
      curredtDel1.SetFocus;
      Exit;
    End;
  End;
  If chk2.Checked then
  Begin
    If StrToCurr(curredtDel2.Text) > StrToCurr(curredtAl2.Text) then
    Begin
      MessageDlg('Los Ramgos(2) no son consistentes verifique ' , mtError,[mbOk],0);
      curredtDel2.SetFocus;
      Exit;
    End;
  End;
  If chk3.Checked then
  Begin
    If StrToCurr(curredtDel3.Text) > StrToCurr(curredtAl3.Text) then
    Begin
      MessageDlg('Los Ramgos(3) no son consistentes verifique ' , mtError,[mbOk],0);
      curredtDel3.SetFocus;
      Exit;
    End;
  End;
  If chk4.Checked then
  Begin
    If StrToCurr(curredtDel4.Text) > StrToCurr(curredtAl4.Text) then
    Begin
      MessageDlg('Los Ramgos(4) no son consistentes verifique ' , mtError,[mbOk],0);
      curredtDel4.SetFocus;
      Exit;
    End;
  End;

  While not Dm1.cdsQry1.eof do
  Begin
    xAvanza:='S';
    If (chk1.Checked) And
      (DM1.cdsQry1.FieldByName('CREMTOCUO').AsCurrency >=StrToCurr(curredtDel1.Text)) And
      (DM1.cdsQry1.FieldByName('CREMTOCUO').AsCurrency <=StrToCurr(curredtAl1.Text))  Then
    Begin
      DM1.cdsQry1.Edit;
      DM1.cdsQry1.FieldByName('Flag').AsString := '';
      DM1.cdsQry1.FieldByName('Porenvcuo').AsString := curredtPorc1.Text ;
      DM1.cdsQry1.FieldByName('Moncuoenv').AsString := CurrToStr(RoundTo((Dm1.cdsQry1.FieldByName('Cremtocuo').AsCurrency *(DM1.cdsQry1.FieldByName('Porenvcuo').AsCurrency/100)),-2));
      Dm1.cdsQry1.Next;
      xAvanza:='N';
    End
    Else if (chk2.Checked) And
            (DM1.cdsQry1.FieldByName('CREMTOCUO').AsCurrency >=StrToCurr(curredtDel2.Text)) And
            (DM1.cdsQry1.FieldByName('CREMTOCUO').AsCurrency <=StrToCurr(curredtAl2.Text))  Then
         Begin
           DM1.cdsQry1.Edit;
           DM1.cdsQry1.FieldByName('Flag').AsString := '';
           DM1.cdsQry1.FieldByName('Porenvcuo').AsString := curredtPorc2.Text ;
           DM1.cdsQry1.FieldByName('Moncuoenv').AsString := CurrToStr(RoundTo((Dm1.cdsQry1.FieldByName('Cremtocuo').AsCurrency *(DM1.cdsQry1.FieldByName('Porenvcuo').AsCurrency/100)),-2));
           Dm1.cdsQry1.Next;
           xAvanza:='N';
         End
         Else If (chk3.Checked) And
              (DM1.cdsQry1.FieldByName('CREMTOCUO').AsCurrency >=StrToCurr(curredtDel3.Text)) And
              (DM1.cdsQry1.FieldByName('CREMTOCUO').AsCurrency <=StrToCurr(curredtAl3.Text))  Then
              Begin
                DM1.cdsQry1.Edit;
                DM1.cdsQry1.FieldByName('Flag').AsString := '';
                DM1.cdsQry1.FieldByName('Porenvcuo').AsString := curredtPorc3.Text ;
                DM1.cdsQry1.FieldByName('Moncuoenv').AsString := CurrToStr(RoundTo((Dm1.cdsQry1.FieldByName('Cremtocuo').AsCurrency *(DM1.cdsQry1.FieldByName('Porenvcuo').AsCurrency/100)),-2));
                Dm1.cdsQry1.Next;
                xAvanza:='N';
              End
              Else if (chk4.Checked) And
                   (DM1.cdsQry1.FieldByName('CREMTOCUO').AsCurrency >=StrToCurr(curredtDel4.Text)) And
                   (DM1.cdsQry1.FieldByName('CREMTOCUO').AsCurrency <=StrToCurr(curredtAl4.Text))  Then
                   Begin
                     DM1.cdsQry1.Edit;
                     DM1.cdsQry1.FieldByName('Flag').AsString := '';
                     DM1.cdsQry1.FieldByName('Porenvcuo').AsString := curredtPorc4.Text ;
                     DM1.cdsQry1.FieldByName('Moncuoenv').AsString := CurrToStr(RoundTo((Dm1.cdsQry1.FieldByName('Cremtocuo').AsCurrency *(DM1.cdsQry1.FieldByName('Porenvcuo').AsCurrency/100)),-2));
                     Dm1.cdsQry1.Next;
                     xAvanza:='N';
                   End;


    If xAvanza='S' then Dm1.cdsQry1.Next;
  End;

  Dm1.cdsQry1.GotoBookmark(B);
  Dm1.cdsQry1.EnableControls;
  Dm1.cdsQry1.FreeBookmark(B);

  ActFoot1;
  If xindexo='S' Then Dm1.cdsQry1.IndexFieldNames:=xfindexo;

  MessageDlg('>> Proceso Concluido <<' , mtInformation,[mbOk],0);
  chk1.Checked := False;
  chk2.Checked := False;
  chk3.Checked := False;
  chk4.Checked := False;
  curredtAl1.Text   := '0.00';
  curredtDel1.Text  := '0.00';
  curredtAl2.Text   := '0.00';
  curredtDel2.Text  := '0.00';
  curredtAl3.Text   := '0.00';
  curredtDel3.Text  := '0.00';
  curredtAl4.Text   := '0.00';
  curredtDel4.Text  := '0.00';
  curredtPorc1.Text :='000';
  curredtPorc2.Text :='000';
  curredtPorc3.Text :='000';
  curredtPorc4.Text :='000';

  curredtval2.Value   := 0; curredtval.Value   := 0;
  curredtVal2.Enabled := False; curredtval.Enabled := False;
  rdbCalc1.Checked := False ; rdbCalc2.Checked := False; rdbCalc3.Checked := False;
  rdbVer1.Checked  := False ; rdbVer2.Checked := False ; rdbVer3.Checked := False;
  dbgDescPorcentual.SetFocus;

end;


//Busca el Saldo de la cuota mas antigua
function TfGenDesPla.SalCuoMasAntigua(xAsoid, xCreano,
  xCremes: string): Currency;
  var xSaldo:currency;
      xSql:string;
begin

   Xsql:= 'Select nvl(cremto,0)-nvl(cremtocob,0) saldo '+
           ' From Cre302 '+
           ' Where Asoid='''+xAsoid+''' and ( Forpagoid=''01'' ) and '+
           '( (creestid in (''02'',''11'',''27'')) or (creestid=''14'' and percob<'+xAnoPerAnt+xMesPerAnt+') ) and '+
           '(Creano||Cremes<'+xCreano+xCremes +' And  Creano||Cremes>199612) and nvl(cremto,0)-nvl(cremtocob,0)>0 order by Creano asc,Cremes asc' ;


   dm1.cdsQry1.Close;
   dm1.cdsQry1.DataRequest(xsql);
   dm1.cdsQry1.Open;

   dm1.cdsQry1.First;
   if dm1.cdsQry1.RecordCount>0 then
     If Length(Trim(CurrToStr(dm1.cdsQry1.FieldByName('saldo').AsCurrency)))=0 then Result:=0 else Result:=Dm1.cdsQry1.FieldByName('saldo').AsCurrency
   else Result:= 0;
   dm1.cdsQry1.Close;
   dm1.cdsQry1.IndexFieldNames:='';

end;



procedure TfGenDesPla.BtnPorRangoClick(Sender: TObject);
begin
    chk1.Checked := False;
    chk2.Checked := False;
    chk3.Checked := False;
    chk4.Checked := False;
    curredtAl1.Text   := '0.00';
    curredtDel1.Text  := '0.00';
    curredtAl2.Text   := '0.00';
    curredtDel2.Text  := '0.00';
    curredtAl3.Text   := '0.00';
    curredtDel3.Text  := '0.00';
    curredtAl4.Text   := '0.00';
    curredtDel4.Text  := '0.00';
    curredtPorc1.Text := '000';
    curredtPorc2.Text := '000';
    curredtPorc3.Text := '000';
    curredtPorc4.Text := '000';
pnlProcesos.Enabled := False;
pnlDscPorcRang.Visible := True;
end;

procedure TfGenDesPla.Button2Click(Sender: TObject);
begin
pnlDscPorcRang.Visible := False;
pnlProcesos.Enabled    := True;
end;

procedure TfGenDesPla.BitBtn5Click(Sender: TObject);
var D:TBookmark;
    xMonto,xmarc1,xmarc2,xmarc3,xmarc4:string;
    xMontoPendyVenc,xMontoPerioVenMasAnt:Currency;

begin

     If Not VerificaMarc Then
        Begin
           MessageDlg('No existe ningun registro marcado...' , mtError,[mbOk],0);
           Exit;
        End;

    If (not rdbCalc1.Checked) and (not rdbCalc2.Checked) and (not rdbCalc3.Checked) and (not rdbCalc4.Checked) Then
       Begin
         MessageDlg(' !! Debe selecionar una opcin ... ', mtError,[mbOk],0);
         Exit
       End;

     xGrabo:='S';
     xmarcunit:='';
     Dm1.cdsQry1.IndexFieldNames:='';
     D:= Dm1.cdsQry1.GetBookmark;
     Dm1.cdsQry1.DisableControls;

     Dm1.cdsQry1.First;
     While not Dm1.cdsQry1.eof do

        Begin
          If Dm1.cdsQry1.FieldByName('Flag').AsString ='S' Then

            Begin
             xMontoPendyVenc     :=(Dm1.cdsQry1.FieldByName('Moncuoenvper').AsCurrency+Dm1.cdsQry1.FieldByName('Moncuoenvven').AsCurrency);
             xMontoPerioVenMasAnt:=(Dm1.cdsQry1.FieldByName('Moncuoenvper').AsCurrency+Dm1.cdsQry1.FieldByName('Moncuomasant').AsCurrency);
             if      rdbCalc1.Checked  Then  xMonto:= DM1.cdsQry1.FieldByName('Moncuomasant').AsString  //Vencida mas Antigua
             else if rdbCalc2.Checked  Then  xMonto:= DM1.cdsQry1.FieldByName('Moncuoenvper').AsString  //Del Periodo
             else if rdbCalc3.Checked  Then  xMonto:= CurrtoStr(xMontoPendyVenc)                       //Del Periodo + Vencidas
             else if rdbCalc4.Checked  Then  xMonto:= CurrtoStr(xMontoPerioVenMasAnt);

             if      rdbCalc1.Checked  Then
                   Begin xmarc3:='' ; xmarc1:=''; xmarc2:='S'; xmarc4:=''; End
             else if rdbCalc2.Checked  Then
                   Begin xmarc3:='' ; xmarc1:='S'; xmarc2:=''; xmarc4:=''; End
             else if rdbCalc3.Checked  Then
                   Begin xmarc3:='S'; xmarc1:=''; xmarc2:=''; xmarc4:=''; End
             else if rdbCalc4.Checked  Then
                   Begin xmarc3:='' ; xmarc1:=''; xmarc2:=''; xmarc4:='S'; End;

             DM1.cdsQry1.Edit;
             DM1.cdsQry1.FieldByName('Flag').AsString               := '';
             DM1.cdsQry1.FieldByName('Porenvcuo').AsString          := '100' ;
             DM1.cdsQry1.FieldByName('Cremtocuo').AsString          := xMonto;
             DM1.cdsQry1.FieldByName('Moncuoenv').AsString          := xMonto;
             DM1.cdsQry1.FieldByName('FLACUOPER').AsString          := xmarc1;
             DM1.cdsQry1.FieldByName('FLACUOMASANT').AsString       := xmarc2;
             DM1.cdsQry1.FieldByName('FLACUOPERVEN').AsString       := xmarc3;
             DM1.cdsQry1.FieldByName('FLACUOPERVENMASANT').AsString := xmarc4;
           End;
             Dm1.cdsQry1.Next;
        End;

      btnMarca.Caption := 'Mrc.Tod.';
      Dm1.cdsQry1.First;
      Try Dm1.cdsQry1.GotoBookmark(D);
      Except
       ShowMessage('Existe un error de ordenamiento, salga de la opci n e ingrese nuevamente...  ');
       Dm1.cdsQry1.IndexFieldNames:='';
      End;
      Dm1.cdsQry1.EnableControls;
      Dm1.cdsQry1.FreeBookmark(D);
      curredtval2.Value   := 0; curredtval.Value := 0;
      curredtVal2.Enabled := False; curredtval.Enabled := False;
      //rdbCalc1.Checked := False ;rdbCalc2.Checked := False; rdbCalc3.Checked := False;
      rdbVer1.Checked  := False ; rdbVer2.Checked := False ; rdbVer3.Checked := False;

      ActFoot1;
      If xindexo='S' Then Dm1.cdsQry1.IndexFieldNames := xfindexo;
      dbgDescPorcentual.SetFocus;

end;

procedure TfGenDesPla.chk1Click(Sender: TObject);
begin
  if chk1.Checked then grb1.Enabled := True Else grb1.Enabled := False;
end;

procedure TfGenDesPla.chk2Click(Sender: TObject);
begin
  if chk2.Checked then grb2.Enabled := True Else grb2.Enabled := False;
end;

procedure TfGenDesPla.chk3Click(Sender: TObject);
begin
  if chk3.Checked then grb3.Enabled := True Else grb3.Enabled := False;
end;

procedure TfGenDesPla.chk4Click(Sender: TObject);
begin
  if chk4.Checked then grb4.Enabled := True Else  grb4.Enabled := False;
end;

procedure TfGenDesPla.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Dm1.cdsQry1.Close;
 Dm1.cdsQry1.IndexFieldNames:='';
end;

procedure TfGenDesPla.permes2Exit(Sender: TObject);
begin

If Length(Trim(permes2.Text))>0 Then permes2.Text:=Format('%.2d',[StrToInt(Trim(permes2.Text))]) else permes2.Text:='';

end;

procedure TfGenDesPla.permesExit(Sender: TObject);
begin
If Length(Trim(permes.Text))>0 Then permes.Text:=Format('%.2d',[StrToInt(Trim(permes.Text))]) else permes.Text:='';

end;


procedure TfGenDesPla.dbgCabDesPlaDblClick(Sender: TObject);
var Xsql,xUproid,xCobano,xCobmes:string;

begin

  xUproid:= dm1.cdsSolicitud.FieldByName('Uproid').AsString;
  xCobano:= Copy(dm1.cdsSolicitud.FieldByName('Periodo').AsString,1,4);
  xCobmes:= Copy(dm1.cdsSolicitud.FieldByName('Periodo').AsString,5,2);
  Screen.Cursor := crHourglass;
  //DETALLE
  Xsql:='Select A.*,(Montotenv-(Moncuoapl+Monapoapl)) SALDO ,CASE WHEN A.IDTIPCOB=''03'' THEN ''B,C,D''  END CALCART,B.Usenom from cob319 A,Apo101 B where A.Forpagoid=''01'' And Cobano='''+xCobano+''' and Cobmes='''+xCobmes+''' And  A.Uproid='''+xUproid+''' And A.Uproid=b.Uproid(+) And A.Upagoid=B.Upagoid(+) And A.Useid=b.Useid(+)  Order by Asoapenom';
  Dm1.cdsQry1.Close;
  Dm1.cdsQry1.DataRequest(xSql);
  Dm1.cdsQry1.Open;

  dbgDetalleEnvio.DataSource := Dm1.dsQry1;

  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENV')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONAPOENV')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONTOTENV')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOAPL')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONAPOAPL')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('SALDO')).DisplayFormat:='###,###,##0.#0';  

  //RESUMEN
  Xsql:='Select sum(aporte) aportes,sum(porcentual) porcentual,sum(normal) normal from '+
        '(Select sum(monapoenv) aporte,'+
        ' CASE WHEN nvl(A.IDTIPCOB,''01'')=''03'' THEN sum(moncuoenv) END porcentual,'+
        ' CASE WHEN nvl(A.IDTIPCOB,''01'')<>''03'' THEN sum(moncuoenv) END normal '+
        ' From cob319 A where Forpagoid=''01'' And Cobano='''+xCobano+''' and Cobmes='''+xCobmes+''' And Uproid='''+xUproid+''' and moncuoenv>0 '+
        ' Group by uproid,cobano,cobmes,idtipcob) ';
  Dm1.cdsQry2.Close;
  Dm1.cdsQry2.DataRequest(xsql);
  Dm1.cdsQry2.Open;
  CDSRESUMEN.EmptyDataSet;
  If Dm1.cdsQry2.RecordCount > 0 then
    Begin
      CDSRESUMEN.Insert;
      CDSRESUMEN.FieldByName('Descripcion').AsString := 'ENVIO A DESCUENTO APORTES DEL PERIODO';
      CDSRESUMEN.FieldByName('Totales').AsString := Dm1.cdsQry2.FieldByName('Aportes').AsString;
      CDSRESUMEN.Insert;
      CDSRESUMEN.FieldByName('Descripcion').AsString := 'ENVIO A DESCUENTO CATALOGADO NORMAL';
      CDSRESUMEN.FieldByName('Totales').AsString := Dm1.cdsQry2.FieldByName('Porcentual').AsString;
      CDSRESUMEN.Insert;
      CDSRESUMEN.FieldByName('Descripcion').AsString := 'ENVIO A DESCUENTO CATALOGADO PERDIDA';
      CDSRESUMEN.FieldByName('Totales').AsString := Dm1.cdsQry2.FieldByName('Normal').AsString;
      TNumericField(CDSRESUMEN.fieldbyname('Totales')).DisplayFormat:='###,###,##0.#0';
      CDSRESUMEN.First;
    End;
    Dm1.cdsQry2.close;
    Dm1.cdsQry2.IndexFieldNames:='';

  chkExcel2.Checked := False;
  chkExcel2Click(self);
  PnlDetalleEnvio.Top        := 0  ;
  PnlDetalleEnvio.Left       := 53 ;
  PnlDetalleEnvio.Visible    := True;
  PageControl1.TabIndex      := 0;
  ActFoot2;
  Screen.Cursor := crDefault;
end;


//Actualiza Foot
procedure TfGenDesPla.ActFoot2;
     var B:TBookmark;
     Xmonapoenv,Xmoncuoenv,Xmontotenv,Xmonapoapl,Xmoncuoapl,Xsaldo :Currency;
begin

    dbgDetalleEnvio.ColumnByName('monapoenv').FooterValue    := '0.00';
    dbgDetalleEnvio.ColumnByName('moncuoenv').FooterValue    := '0.00';
    dbgDetalleEnvio.ColumnByName('montotenv').FooterValue    := '0.00';
    dbgDetalleEnvio.ColumnByName('monapoapl').FooterValue    := '0.00';
    dbgDetalleEnvio.ColumnByName('moncuoapl').FooterValue    := '0.00';
    dbgDetalleEnvio.ColumnByName('saldo').FooterValue        := '0.00';

  //Guardo la posicion
    Dm1.cdsQry1.IndexFieldNames:='';
    B:= Dm1.cdsQry1.GetBookmark;
    Dm1.cdsQry1.DisableControls;

    Dm1.cdsQry1.First;
    Xmonapoenv    := 0;
    Xmoncuoenv    := 0;
    Xmontotenv    := 0;
    Xmonapoapl    := 0;
    Xmoncuoapl    := 0;
    XSaldo        := 0;


    zTotal        := 0;
    While not Dm1.cdsQry1.Eof do
      Begin
        Xmonapoenv     := Xmonapoenv+Dm1.cdsQry1.FieldByName('monapoenv').ascurrency ;
        Xmoncuoenv     := Xmoncuoenv+Dm1.cdsQry1.FieldByName('moncuoenv').ascurrency;
        Xmontotenv     := Xmontotenv+Dm1.cdsQry1.FieldByName('montotenv').ascurrency;

        Xmonapoapl     := Xmonapoapl+Dm1.cdsQry1.FieldByName('monapoapl').ascurrency ;
        Xmoncuoapl     := Xmoncuoapl+Dm1.cdsQry1.FieldByName('moncuoapl').ascurrency;
        Xsaldo         := Xsaldo+Dm1.cdsQry1.FieldByName('saldo').ascurrency;
        zTotal         := zTotal+Dm1.cdsQry1.FieldByName('montotenv').ascurrency;
        Dm1.cdsQry1.Next;
      End;


   dbgDetalleEnvio.ColumnByName('monapoenv').FooterValue   := FormatCurr('###,##0.#0',Xmonapoenv);
   dbgDetalleEnvio.ColumnByName('moncuoenv').FooterValue   := FormatCurr('###,##0.#0',Xmoncuoenv);
   dbgDetalleEnvio.ColumnByName('montotenv').FooterValue   := FormatCurr('###,##0.#0',Xmontotenv);

   dbgDetalleEnvio.ColumnByName('monapoapl').FooterValue   := FormatCurr('###,##0.#0',Xmonapoapl);
   dbgDetalleEnvio.ColumnByName('moncuoapl').FooterValue   := FormatCurr('###,##0.#0',Xmoncuoapl);
   dbgDetalleEnvio.ColumnByName('saldo').FooterValue       := FormatCurr('###,##0.#0',Xsaldo);



   dbgDetalleEnvio.Refresh;

  //Me posiciono nuevamente en el posicion marcada
    Dm1.cdsQry1.GotoBookmark(B);
    Dm1.cdsQry1.EnableControls;
    Dm1.cdsQry1.FreeBookmark(B);
    Dm1.cdsQry1.IndexFieldNames:=xfindexo;

End;


procedure TfGenDesPla.Button3Click(Sender: TObject);
begin
PnlDetalleEnvio.Visible    := False;
Dm1.cdsQry1.Close;
Dm1.cdsQry1.IndexFieldNames:='';
Dm1.cdsQry2.Close;
Dm1.cdsQry2.IndexFieldNames:='';
end;

procedure TfGenDesPla.dbgDetalleEnvioDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
     If Length(Trim(Dm1.cdsQry1.FieldByName('CALCART').AsString))> 0 Then
        Begin
         dbgDetalleEnvio .Canvas.Font.Color := clRed;
         dbgDetalleEnvio.DefaultDrawDataCell(Rect, Field, State);
        End;
end;


//.... Marca Segun descuento del Saldo Vencido por cobrar
procedure TfGenDesPla.MarcaSegunDesc(xUproid, xCreano, xCremes: string);
Var xSql,xAno,xMes:string;
    xSaldo:Currency;

begin

  //Periodo Anterior
   If StrToInt(permes2.Text)=1 Then
      Begin  xAno :=  IntToStr(StrToInt(perano2.Text)-1) ;
             xMes := '12';
      End
   Else
      Begin xAno  := perano2.Text;
            xMes  := DM1.StrZero(IntToStr(StrToInt(permes2.Text)-1),2);
      End;


 xSql:='Select * From Cob319 Where Forpagoid=''01'' And Cobano='''+xCreano+''' And Cobmes='''+xCremes+''' And Uproid='''+xUproid+''' And  nvl(montotenv,0)> 0  ';
 Dm1.cdsCEdu.Close;
 Dm1.cdsCEdu.DataRequest(xSql);
 Dm1.cdsCEdu.Open;

 If Dm1.cdsCEdu.RecordCount > 0 Then
   Begin
     While Not Dm1.cdsCEdu.Eof do
        Begin
        If Dm1.cdsCEdu.FieldByName('Flacuoper').AsString='S' Then //Marca solo Cuota del Periodo
           Begin
             xSql:='Update Cre302 Set CREESTID=''14'',CREESTADO=''EN PROCESO DE COBRANZA'',PERCOB='+QuotedStr(Trim(perano2.Text+Format('%.2d',[StrToInt(Trim(permes2.Text))])))+
                   'Where ASOID='''+Dm1.cdsCEdu.FieldByName('Asoid').AsString+''' And Creestid in (''02'',''11'',''14'',''27'') And '+
                   '(NVL(Cremto,0)-NVL(Cremtocob,0))>0 And '+
                   ' Creano||Cremes='+xCreano+xCremes+' And NVL(Percob,''XXXXXX'')<>'''+xAno+xMes+''' And Forpagoid=''01'' ';
             DM1.DCOM1.AppServer.EjecutaSql(xSQL);
           End
        Else If Dm1.cdsCEdu.FieldByName('Flacuomasant').AsString='S' Then //Marca solo cuota mas antigua
          Begin
             xSql:= 'Select * From Cre302 where Asoid='''+Dm1.cdsCEdu.FieldByName('Asoid').AsString+''' and creestid  in(''02'',''11'',''14'',''27'') and '+
                    '(NVL(Cremto,0)-NVL(Cremtocob,0))>0 And '+
                    ' NVL(Percob,''XXXXXX'')<>'''+xAnoPerAnt+xMesPerAnt+''' And '+
                    ' Creano||Cremes<'+xCreano+xCremes+' and Creano||Cremes>199612  order by creano asc,cremes asc';
             Dm1.cdsQry6.Close;
             Dm1.cdsQry6.DataRequest(xSql);
             Dm1.cdsQry6.Open;
             If Dm1.cdsQry6.RecordCount>0 Then
               Begin
                 xSql:='Update Cre302 Set CREESTID=''14'',CREESTADO=''EN PROCESO DE COBRANZA'',PERCOB='+QuotedStr(Trim(perano2.Text+Format('%.2d',[StrToInt(Trim(permes2.Text))])))+
                       'Where ASOID='''+Dm1.cdsCEdu.FieldByName('Asoid').AsString+''' And Creestid in (''02'',''11'',''14'',''27'') And '+
                       ' (NVL(Cremto,0)-NVL(Cremtocob,0))>0 And '+
                       ' Creano||Cremes='+Dm1.cdsQry6.FieldByName('Creano').AsString+Dm1.cdsQry6.FieldByName('Cremes').AsString +' And Forpagoid=''01'' ';
                 DM1.DCOM1.AppServer.EjecutaSql(xSQL);
               End;
          End
        Else If  (Length(Trim(Dm1.cdsCEdu.FieldByName('Flacuoperven').AsString))=0) or
                 (Dm1.cdsCEdu.FieldByName('Flacuoperven').AsString='S') or
                 (Dm1.cdsCEdu.FieldByName('Flacuopervenmasant').AsString='S')   Then //Marca Cuotas desde la mas antigua
          Begin
             xSql:= 'Select * From Cre302 where Asoid='''+Dm1.cdsCEdu.FieldByName('Asoid').AsString+''' and Creestid  in(''02'',''11'',''14'',''27'') and '+
                    ' (NVL(Cremto,0)-NVL(Cremtocob,0))>0 And '+
                    ' NVL(Percob,''XXXXXX'')<>'''+xAnoPerAnt+xMesPerAnt+''' And '+
                    ' Creano||Cremes<='+Dm1.cdsCEdu.FieldByName('Cobano').AsString+Dm1.cdsCEdu.FieldByName('Cobmes').AsString+' and Creano||Cremes>199612  and Forpagoid=''01'' '+
                    ' order by Creano asc,Cremes asc';
             Dm1.cdsQry6.Close;
             Dm1.cdsQry6.DataRequest(xSql);
             Dm1.cdsQry6.Open;
             If Dm1.cdsQry6.RecordCount>0 Then
               Begin
                  xSaldo:=Dm1.cdsCEdu.FieldbyName('MONCUOENV').AsCurrency ;
                  While not Dm1.cdsQry6.Eof do
                    Begin
                       If xSaldo>0 Then
                         Begin
                           xSql:='Update Cre302 Set CREESTID=''14'',CREESTADO=''EN PROCESO DE COBRANZA'',PERCOB='+QuotedStr(Trim(perano2.Text+Format('%.2d',[StrToInt(Trim(permes2.Text))])))+
                                 ' Where ASOID='''+Dm1.cdsQry6.FieldByName('Asoid').AsString+''' And Creestid in (''02'',''11'',''14'',''27'') And '+
                                 ' (NVL(Cremto,0)-NVL(Cremtocob,0))>0 And '+
                                 ' Credid='''+Dm1.cdsQry6.FieldByName('Credid').AsString+''' And Crecuota='''+Dm1.cdsQry6.FieldByName('Crecuota').AsString +''' '+
                                 ' And Forpagoid=''01'' ';
                           DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                           xSaldo:=xSaldo-(Dm1.cdsQry6.FieldByName('Cremto').asCurrency-Dm1.cdsQry6.FieldByName('Cremtocob').asCurrency);
                         End;
                      Dm1.cdsQry6.Next;
                    End;
               End;
          End;

         Dm1.cdsCEdu.Next
       End; //End While

   End; // End IF

end;

procedure TfGenDesPla.ppDBText9Print(Sender: TObject);
begin

if Dm1.cdsQry1.FieldByName('ASOTIPID').AsString='DO' then  pplTipAso.Caption := 'Asociado Docente'
Else if  Dm1.cdsQry1.FieldByName('ASOTIPID').AsString='CE' then  pplTipAso.Caption := 'Asociado Cesante'
Else  pplTipAso.Caption := 'Asociado Sin Tipo';

end;

procedure TfGenDesPla.ppDBText10Print(Sender: TObject);
begin
if Dm1.cdsQry1.FieldByName('ASOTIPID').AsString='DO' then  pplTipAso2.Caption := 'Asociado Docente'
Else if  Dm1.cdsQry1.FieldByName('ASOTIPID').AsString='CE' then  pplTipAso2.Caption := 'Asociado Cesante'
Else  pplTipAso2.Caption := 'Asociado Sin Tipo';
end;

procedure TfGenDesPla.BitBtn7Click(Sender: TObject);
var xFil,xsql,xUproid,xCobano,xCobmes:string;
begin
 Screen.Cursor := crHourGlass;
 Dm1.cdsQry1.DisableControls;
 If chkExcel2.Checked then
   Begin
     xUproid:= dm1.cdsSolicitud.FieldByName('Uproid').AsString;
     xCobano:= Copy(dm1.cdsSolicitud.FieldByName('Periodo').AsString,1,4);
     xCobmes:= Copy(dm1.cdsSolicitud.FieldByName('Periodo').AsString,5,2);
     if  rdTodos.Checked           then   xFil := ''
     Else if  rdNoEnviados.Checked then   xFil  := ' And nvl(MONTOTENV,0)= 0.00'
     Else if  rdNoCobrados.Checked then   xFil  := ' And nvl(MONCUOAPL,0)= 0.00'
     Else if  rdCobrados.Checked   then   xFil  := ' And nvl(MONCUOAPL,0)> 0.00'
     Else if  rdEnviados.Checked   then   xFil  := ' And nvl(MONTOTENV,0)> 0.00';

    Xsql:='Select A.ASOID,A.ASOCODMOD,A.ASOCODPAGO,A.CARGO,A.ASOAPENOM,A.UPROID,A.UPAGOID,A.USEID,B.USENOM,A.ASONCTA,'+
          'A.NROFICIO,A.COBANO,A.COBMES,A.MONAPOENV,A.MONCUOENV,A.MONAPOAPL,A.MONCUOAPL,A.MONTOTENV,(Montotenv-(Moncuoapl+Monapoapl)) SALDO ,CASE WHEN A.IDTIPCOB=''03'' THEN ''B,C,D''  END CALCART  '+
          'From cob319 A,Apo101 B  '+
          'Where A.Forpagoid=''01'' And Cobano='''+xCobano+''' and Cobmes='''+xCobmes+''' And  A.Uproid='''+xUproid+''' And A.Uproid=b.Uproid(+) And A.Upagoid=B.Upagoid(+) And A.Useid=b.Useid(+) '+xFil+
          ' Order by Asoapenom';
    Dm1.cdsDLabo .Close;
    Dm1.cdsDLabo.DataRequest(xSql);
    Dm1.cdsDLabo.Open;

     DTGDATA.DataSource := dm1.dsDLabo;
     Try  DM1.HojaExcel('Hoja de trabajo',DM1.dsDLabo, dtgData);
      except
      on Ex: Exception do
      Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	   end;
     DM1.CdsDLabo.Close;
     DM1.cdsDLabo.IndexFieldNames:='';
   End
 Else
  Begin
   pplUpro2.Caption            := edtUpro.Text ;
   pplUpro3.Caption            := edtUpro.Text ;
   pplPeriodo2.Caption         := perano2.Text+'-'+permes2.Text;
   Dm1.cdsQry1.Filter          := 'montotenv>0';
   Dm1.cdsQry1.Filtered        := True;
   Dm1.cdsQry1.IndexFieldNames := 'ASOTIPID;Uproid;Upagoid;Useid;Asoapenom';
   ppbDescPorc.DataSource      := Dm1.dsQry1;
   ppRepDescuento.Print;
   ppRepDescuento.Stop;
   ppbDescPorc.DataSource      :=nil;
   Dm1.cdsQry1.Filtered        := False;
  End;

 Dm1.cdsQry1.EnableControls ;
 Dm1.cdsQry1.IndexFieldNames:='';
 Screen.Cursor := crDefault;
end;

procedure TfGenDesPla.fcShapeBtn1Click(Sender: TObject);
var xQry1, xQry2, xSQL,xPeriodo,xPerCob,xfIni,xfFin,xMsgCambio,xWhereadi,xasotipid:String;
    Boton,xAno,xMes:Integer;
begin

  If Trim(dblUpro2.Text)    <> '' Then  xQry1 := 'UPROID = '+QuotedStr(dblUpro2.Text);
  If Trim(dblupagoid2.Text) <> '' Then  xQry1 := xQry1 + ' AND UPAGOID = '+QuotedStr(dblupagoid2.Text);
  If Trim(dbluseid2.Text)   <> '' Then  xQry1 := xQry1 + ' AND USEID = '+QuotedStr(dbluseid2.Text);

  If Trim(dblUpro2.Text)    <> '' Then xQry2 := 'B.UPROID = '+QuotedStr(dblUpro2.Text);
  If Trim(dblupagoid2.Text) <> '' Then  xQry2 := xQry2 + ' AND B.UPAGOID = '+QuotedStr(dblupagoid2.Text);
  If Trim(dbluseid2.Text)   <> '' Then  xQry2 := xQry2 + ' AND B.USEID = '+QuotedStr(dbluseid2.Text);

  If Length(TRim(dblUpro2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Unidad de Proceso' , mtError,[mbOk],0);
    dblUpro2.SetFocus;
    Exit;
  End;

  If Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Año de Periodo de Cobranza' , mtError,[mbOk],0);
    perano2.SetFocus;
    Exit;
  End;

  If Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Mes de Periodo de Cobranza' , mtError,[mbOk],0);
    permes2.SetFocus;
    Exit;
  End;

  XSQL:= 'Select nvl(Flacie,''X'')Flacie From COB204 Where '+xQry1+' And Creano ='+QuotedStr(perano2.Text)+' And Cremes = '+QuotedStr(permes2.text);

  // Uproid='+QuotedStr(dblUpro2.Text)
  // +' AND UPAGOID = '+QuotedStr(dblpagoid2.Text)+' AND USEID = '+QuotedStr(dbuseid2.Text)+' And Creano ='+QuotedStr(perano2.Text)+' And Cremes = '+QuotedStr(permes2.text);

  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSQL);
  DM1.cdsQry4.Open;

  If (Dm1.cdsQry4.RecordCount>0)  and (Dm1.cdsQry4.FieldByName('Flacie').AsString='S') Then
  Begin
    MessageDlg('El Periodo de Cobranza esta cerrado' , mtError,[mbOk],0);
    perano2.SetFocus;
    DM1.cdsQry4.Close;
    Exit;
  End;

  If MessageDlg('Esta seguro de Marcar en Proceso las Cuotas del Periodo',mtconfirmation,[mbYes,MbNo],0)=mrNo then  exit;
  Screen.Cursor := crHourglass;
  perano2.Refresh;
  permes2.Refresh;



  xSQL :=
  'SELECT ASOID,CREDID FROM CRE301 A WHERE CREFOTORG BETWEEN '+QuotedStr(xfIni)+' AND '+QuotedStr(xfFin)
  +' AND CREESTID NOT IN (''04'',''13'') AND NOT EXISTS ('
  +' SELECT ASOID,CREDID FROM CRE302 WHERE A.ASOID = ASOID AND A.CREDID=CREDID AND CREESTID NOT IN (''04'',''13''))';
  DM1.cdsTCredito.Close;
  DM1.cdsTCredito.DataRequest(xSQL);
  DM1.cdsTCredito.Open;
  If DM1.cdsTCredito.RecordCount > 0 Then
  Begin
    Screen.Cursor := crDefault;
    MessageDlg('Existen '+IntToStr(DM1.cdsTCredito.RecordCount)+' Prestamos Sin Cronogramas De Pago Del Periodo : '+xfIni+' - '+xfFin, mtError, [mbOk], 0);
    Exit;
  End;

  Screen.Cursor := crDefault;
  xMsgCambio:='Seguro De Marcar la Cuotas En Proceso De Cobranza Para El Periodo : '+perano2.Text+'-'+Format('%.2d',[StrToInt(Trim(permes2.Text))]);
  Boton := Application.MessageBox (pChar(xMsgCambio),'Tipo De Descuento',MB_YESNO+MB_ICONQUESTION);

  If Boton = ID_YES Then
  Begin
    { DesmarProcCob; se cambio por el store procedure}
    Screen.Cursor := crHourglass;
    If rbDocente.Checked Then
      xasotipid := 'DO'
    Else
      xasotipid := 'CE';

    //If chkIncluyeAportes.Checked Then
    If chkDesPeriodicos.Checked Then
      XVARIASCUO := 'S'
    Else
      XVARIASCUO := 'N';


    //Desmarca si ya fue marcado anteriormente con este procesos
    // rEVISAR
    //xSql := 'BEGIN GENERA_DESC_PLANILLA(NULL,'''+Trim(perano2.Text)+''','''+Format('%.2d',[StrToInt(Trim(permes2.Text))])+''','''+Trim(dblUpro2.Text)+''','''+Trim(dblupagoid2.Text)+''','''+Trim(dbluseid2.Text)+''','''+xasotipid+
    //''','''+XVARIASCUO+''',NULL,NULL,'''+dm1.wUsuario+''',''00''); END;';
    //DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    //Marca en proceso de cobranza
    //xSql := 'BEGIN GENERA_DESC_PLANILLA(NULL,'''+Trim(perano2.Text)+''','''+Format('%.2d',[StrToInt(Trim(permes2.Text))])+''','''+Trim(dblUpro2.Text)+''','''+Trim(dblupagoid2.Text)+''','''+Trim(dbluseid2.Text)+''','''+xasotipid+
    //''','''+XVARIASCUO+''',NULL,NULL,'''+dm1.wUsuario+''',''01''); END;';
    //DM1.DCOM1.AppServer.EjecutaSQL(xSql);

    //se cambio por el store procedure
    If chkDesPeriodicos.Checked Then
      xWhereadi:=''
    Else
      xWhereadi:='And nvl(Variascuot,''X'')<>''S'' ';

    xsql:= 'Select A.* From Cre302 A,Apo201 B Where A.Asoid=B.Asoid  And (B.ASOTIPID='+QuotedStr(xasotipid)+') And Creano='''+Trim(perano2.Text)+''' And Cremes='''+Format('%.2d',[StrToInt(Trim(permes2.Text))])+''' '+
    ' AND (A.Forpagoid=''01'' ) And '+xQry2+' And A.Creestid In (''02'',''11'',''27'') AND (NVL(A.Cremto,0)-NVL(A.Cremtocob,0))>0 '+xWhereadi ;
    Dm1.cdsQry4.Close;
    Dm1.cdsQry4.DataRequest(xsql);
    Dm1.cdsQry4.Open;

         Dm1.cdsQry4.First;
         If Dm1.cdsQry4.RecordCount > 0 then
            Begin
              While not Dm1.cdsQry4.eof do
                Begin
                  xSql:='Update Cre302 Set CREESTID=''14'',CREESTADO=''EN PROCESO DE COBRANZA'',PERCOB='+QuotedStr(Trim(perano2.Text+Format('%.2d',[StrToInt(Trim(permes2.Text))])))+
                        'Where ASOID='''+Dm1.cdsQry4.FieldByName('Asoid').AsString+''' And Credid='''+Dm1.cdsQry4.FieldByName('Credid').AsString+''' And '+
                        'Crecuota='''+Dm1.cdsQry4.FieldByName('Crecuota').AsString +''' ';
                  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                  Dm1.cdsQry4.Next;
                End;
            End;


         MessageDlg('El Proceso De MARCAR CUOTAS PARA EL DESCUENTO Ha Concluido Con Exito', mtInformation, [mbOk], 0);
         Screen.Cursor := crDefault;
         Dm1.cdsQry4.Close;
         Dm1.cdsQry4.IndexFieldNames:='';
    End;
End;


procedure TfGenDesPla.fcShapeBtn2Click(Sender: TObject);
var xQry1, xsql:string;
begin
  //rbIncAportes.Checked     := False;
  //rbIncAportAutDes.Checked := False;
  If Trim(dblUpro2.Text)     <> '' Then  xQry1 := 'UPROID = '+QuotedStr(dblUpro2.Text);
  If Trim(dblupagoid2.Text) <> '' Then  xQry1 := xQry1 + ' AND UPAGOID = '+QuotedStr(dblupagoid2.Text);
  If Trim(dbluseid2.Text)   <> '' Then  xQry1 := xQry1 + ' AND USEID = '+QuotedStr(dbluseid2.Text);
  if Length(TRim(dblUpro2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Unidad de Proceso' , mtError,[mbOk],0);
    dblUpro2.SetFocus;
    Exit;
  End;
  if Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Ao de Periodo de Cobranza' , mtError,[mbOk],0);
    perano2.SetFocus;
    Exit;
  End;
  if Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Mes de Periodo de Cobranza' , mtError,[mbOk],0);
    permes2.SetFocus;
    Exit;
  End;
  XSQL:= 'Select nvl(Flacie,''X'')Flacie From COB204  Where '+xQry1+' And Creano='+QuotedStr(perano2.Text)+' And Cremes='+QuotedStr(permes2.text);
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSQL);
  DM1.cdsQry4.Open;
  If (Dm1.cdsQry4.RecordCount>0)  and (Dm1.cdsQry4.FieldByName('Flacie').AsString='S') Then
  Begin
    MessageDlg('El Periodo de Cobranza esta cerrado' , mtError,[mbOk],0);
    perano2.SetFocus;
    DM1.cdsQry4.Close;
    Exit;
  End;

  edtNumOficio.Text    :='';
  PnlGenerDesc.Left    := 213;
  PnlGenerDesc.Top     := 98;
  prbavance.Min        :=  0 ;
  prbavance.Max        := 50 ;
  prbavance.Step       := 10 ;
  prbavance.Position   :=  0;
  PnlGenerDesc.Refresh;
  PnlGenerDesc.Visible := True;
end;

procedure TfGenDesPla.fcShapeBtn4Click(Sender: TObject);
 Var xSql:String;

begin
  if Length(TRim(dblUpro2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Unidad de Proceso' , mtError,[mbOk],0);
    dblUpro2.SetFocus;
    Exit;
  End;

  If Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar A o de Periodo de Cobranza' , mtError,[mbOk],0);
    perano2.SetFocus;
    Exit;
  End;

  If Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Mes de Periodo de Cobranza' , mtError,[mbOk],0);
    permes2.SetFocus;
    Exit;
  End;

  XSQL:= 'Select nvl(Flacie,''X'')Flacie From COB204  Where Uproid='''+dblUpro2.Text+''' And Creano='''+perano2.Text+''' And Cremes='''+permes2.text+''' ';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSQL);
  DM1.cdsQry4.Open;
  If (Dm1.cdsQry4.RecordCount>0)  and (Dm1.cdsQry4.FieldByName('Flacie').AsString='S') Then
  Begin
    MessageDlg('El Periodo de Cobranza esta cerrado' , mtError,[mbOk],0);
    perano2.SetFocus;
    DM1.cdsQry4.Close;
    Exit;
  End;

  If MessageDlg('Esta seguro de Marcar en Proceso de Cobranza las Cuotas a Descontar',mtconfirmation,[mbYes,MbNo],0)=mrNo then Exit;
  Screen.Cursor := crHourGlass;
  xSql:= 'Select * From COb319 Where Forpagoid=''01'' And Cobano='+QuotedStr(perano2.Text)+ ' And Cobmes='+QuotedStr(Format('%.2d',[StrToInt(Trim(permes2.Text))]))+
         'And Uproid ='+QuotedStr(dblUpro2.Text)+ ' And IdTipCob=''03'' And Cremtocuo>0 ';
  Dm1.cdsQry1.Close;
  Dm1.cdsQry1.DataRequest(xSql);
  Dm1.cdsQry1.Open;
  If Dm1.cdsQry1.RecordCount <= 0 Then
  Begin
    MessageDlg('No existe información para este proceso' , mtError,[mbOk],0);
    Exit;
  End;
  DesmarProcCob;  //Primero desmarca lo ya marcado
  MarcaSegunDesc(dblUpro2.Text,perano2.Text,permes2.Text); //Nuevamente Marca
  MessageDlg('>> Proceso Concluido <<' , mtInformation,[mbOk],0);
  Dm1.cdsQry1.Close;
  Dm1.cdsQry1.IndexFieldNames:='';
  Dm1.cdsQry6.Close;
  Dm1.cdsQry6.IndexFieldNames:='';
  Dm1.cdsCEdu.Close;
  Dm1.cdsCEdu.IndexFieldNames:='';
  Screen.Cursor := crDefault;
End;

Procedure TfGenDesPla.fcShapeBtn3Click(Sender: TObject);
Var xSql, xQry1, xtipaso:String;
Begin
  If Trim(dblUpro2.Text)    <> '' Then  xQry1 := 'UPROID = '+QuotedStr(dblUpro2.Text);
  If Trim(dblupagoid2.Text) <> '' Then  xQry1 := xQry1 + ' AND UPAGOID = '+QuotedStr(dblupagoid2.Text);
  If Trim(dbluseid2.Text)   <> '' Then  xQry1 := xQry1 + ' AND USEID = '+QuotedStr(dbluseid2.Text);
  If rbDocente.Checked Then xtipaso := 'DO' Else xtipaso := 'CE';
  If Length(TRim(dblUpro2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Unidad de Proceso' , mtError,[mbOk],0);
    dblUpro2.SetFocus;
    Exit;
  End;
  If Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar A o de Periodo de Cobranza' , mtError,[mbOk],0);
    perano2.SetFocus;
    Exit;
  End;
  If Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Mes de Periodo de Cobranza' , mtError,[mbOk],0);
    permes2.SetFocus;
    Exit;
  End;
  XSQL := 'SELECT NVL(FLACIE,''X'') FLACIE FROM COB204 WHERE '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso)+' AND CREANO = '+QuotedStr(perano2.Text)+' AND CREMES = '+QuotedStr(permes2.text);
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSQL);
  DM1.cdsQry4.Open;
  If (Dm1.cdsQry4.RecordCount>0)  and (Dm1.cdsQry4.FieldByName('FLACIE').AsString = 'S') Then
  Begin
    MessageDlg('El Periodo de Cobranza esta cerrado' , mtError,[mbOk],0);
    perano2.SetFocus;
    DM1.cdsQry4.Close;
    Exit;
  End;
  pnlDescPorcentual.Left := 8;
  pnlDescPorcentual.Top  := 2;
  XPN := 'P';
  xSql:= 'SELECT * FROM COB319 WHERE FORPAGOID = ''01'' AND COBANO = '+QuotedStr(perano2.Text)+ ' AND COBMES = '+QuotedStr(Format('%.2d',[StrToInt(Trim(permes2.Text))]))
  +' AND '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso)+' And IdTipCob= '+QuotedStr('03')+' AND NVL(MONCUOENV, 0) <> 0';
  Dm1.cdsQry1.Close;
  Dm1.cdsQry1.DataRequest(xSql);
  Dm1.cdsQry1.Open;
  TNumericField(Dm1.cdsqry1.fieldbyname('NUMCUOENVPER')).DisplayFormat:='###,###0';
  TNumericField(Dm1.cdsqry1.fieldbyname('NUMCUOENVVEN')).DisplayFormat:='###,###0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENVPER')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENVVEN')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOMASANT')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('CREMTOCUO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENV')).DisplayFormat:='###,###,##0.#0';
  If Dm1.cdsQry1.RecordCount<=0 Then
  Begin
    MessageDlg('No existe informacin del periodo para procesar...', mtError ,[mbOk],0);
    Dm1.cdsQry1.Close;
    Dm1.cdsQry.IndexFieldNames:='';
    Exit;
  End;

  Dm1.cdsQry1.First;
  dbgDescPorcentual.DataSource := DM1.dsQry1;
  dbgDescPorcentual.SetControlType('FLAG',fctCheckBox, 'S;N');
  Label8.Caption :='Descuento Porcentual Catalogados PERDIDA';
  pnlDescPorcentual.Visible    := True;
  ActFoot1;
  rdbCalc1.Checked := False ;rdbCalc2.Checked := False; rdbCalc3.Checked := False;
  rdbVer1.Checked  := False ; rdbVer2.Checked := False ; rdbVer3.Checked := False ;
End;

procedure TfGenDesPla.fcShapeBtn5Click(Sender: TObject);
var xupagoid, xuseid, xQry1, xtipaso,  xSql:string;
begin

  If Trim(dblUpro2.Text)    <> '' Then  xQry1 := 'UPROID = '+QuotedStr(dblUpro2.Text);
  If Trim(dblupagoid2.Text) <> '' Then  xQry1 := xQry1 + ' AND UPAGOID = '+QuotedStr(dblupagoid2.Text);
  If Trim(dbluseid2.Text)   <> '' Then  xQry1 := xQry1 + ' AND USEID = '+QuotedStr(dbluseid2.Text);
  If rbDocente.Checked Then xtipaso := 'DO' Else xtipaso := 'CE';

  If dblupagoid2.Text = '' Then xupagoid := '   ' Else xupagoid := dblupagoid2.Text;
  If dbluseid2.Text = ''   Then xuseid   := '   ' Else xuseid   := dblupagoid2.Text;
  xSql := 'SELECT '+QuotedStr(dblUpro2.Text)+' UPROID'
  +','+QuotedStr(xupagoid)+' UPAGOID'
  +','+QuotedStr(xuseid)+' USEID'
  +','+QuotedStr(xtipaso)+' ASOTIPID'
  +','+QuotedStr(perano2.Text)+' COBANO'
  +','+QuotedStr(permes2.Text)+' COBMES'
  +' FROM DUAL';
  DM1.cdsTRela.Close;
  DM1.cdsTRela.DataRequest(xSql);
  DM1.cdsTRela.Open;

  If Length(TRim(dblUpro2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Unidad de Proceso' , mtError,[mbOk],0);
    dblUpro2.SetFocus;
    Exit;
  End;
  If Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar A o de Periodo de Cobranza' , mtError,[mbOk],0);
    perano2.SetFocus;
    Exit;
  End;
  If Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Mes de Periodo de Cobranza' , mtError,[mbOk],0);
    permes2.SetFocus;
    Exit;
  End;

  XSQL:= 'Select nvl(Flacie,''X'')Flacie From COB204  Where Uproid='''+dblUpro2.Text+''' And Creano='''+perano2.Text+''' And Cremes='''+permes2.text+''' ';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSQL);
  DM1.cdsQry4.Open;
  If (Dm1.cdsQry4.RecordCount>0)  and (Dm1.cdsQry4.FieldByName('Flacie').AsString='S') Then
  Begin
    MessageDlg('El Periodo de Cobranza esta cerrado' , mtError,[mbOk],0);
    perano2.SetFocus;
    DM1.cdsQry4.Close;
    Exit;
  End;

  xsql:= 'Select Uproid, upagoid, useid, asotipid, Cobano, Cobmes, sum(moncuoenv) moncuoenv, sum(monapoenv) monapoenv,'
  +' sum(case when nvl(monapoenv,0)<> 0 then 1 else 0 end) numapoenv, sum(case when nvl(moncuoenv,0)<> 0 then 1 else 0 end) numcuoenv'
  +' FROM COB319 where Forpagoid = ''01'' And Cobano = '+QuotedStr(perano2.Text)+' And Cobmes = '+QuotedStr(permes2.Text)
  +' And '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso)
  +' Group by Uproid, upagoid, useid, asotipid, Cobano,Cobmes';
  Dm1.cdsQry1.Close;
  Dm1.cdsQry1.IndexFieldNames:='';
  Dm1.cdsQry1.DataRequest(xsql);
  Dm1.cdsQry1.Open;

  If (Dm1.cdsQry1.FieldByName('moncuoenv').AsFloat > 0) Or (Dm1.cdsQry1.FieldByName('monapoenv').AsFloat <> 0) Then
  Begin
    If rgtiparc.ItemIndex = 0 Then
    Begin
      Try
        FPlantEnv := TFPlantEnv.create(Self);
        FPlantEnv.ShowModal;
      Finally
        FPlantEnv.Free;
      End;
    End;
    If (rgtiparc.ItemIndex = 1) Then
    Begin
      // Generación de planillas
      // Verificar si existen archivos maestros
      If Not FileExists('C:\Solexes\SIGA.DBF') Then
      Begin
        MessageDlg('No existe el archivo C:\Solexes\SIGA.DBF !!!', mtError, [mbOk], 0);
        Exit;
      End;
      If Not FileExists('C:\Solexes\SUP.DBF') Then
      Begin
        MessageDlg('No existe el archivo C:\Solexes\SUP.DBF !!!', mtError, [mbOk], 0);
        Exit;
      End;
      Try
        fgenarcenv := Tfgenarcenv.create(Self);
        fgenarcenv.ShowModal;
      Finally
        fgenarcenv.Free;
      End;
    End;
  End
  Else
  Begin
      MessageDlg('No existe informacin para Procesar Diskette' , mtError,[mbOk],0);
      Exit;
  End;
End;



//Desmarca el Proceso de Cobranza para marcarlo nuevamente
procedure TfGenDesPla.DesmarProcCob;
Var Xsql:String;
begin

 //Esta parte ya no lo utilizo
 //Resto un mes al periodo actual, lo utilizo para no tomar los del periodo anterior en proceso de cobranza
   If StrToInt(permes2.Text)=1 Then
     Begin
        xAnoPerAnt := IntToStr(StrToInt(perano2.Text)-1);
        xMesPerAnt := '12';
     End
   Else
    Begin
       xAnoPerAnt := perano2.Text;
       xMesPerAnt := Format('%.2d',[StrToInt(permes2.Text)-1]);
    End;
 //-----------------------------------------------------------------------------------------------------------------
 // No toca el periodo anterior porque se supone que aun no se a descargado y debe seguir en proceso de cobranza //

  Xsql := 'Update Cre302 Set Creestid=''11'',Creestado=''NO PAGADO'',Percob=Null '+
          ' Where Percob='+perano2.Text+permes2.Text+' and Forpagoid=''01'' and Creestid=''14'' and Uproid='''+dblUpro2.Text +''' '+
          ' And Creano||Cremes<'+perano2.Text+permes2.Text +'And NVL(CremtoCob,0)=0 '  ;
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);


  Xsql := 'Update Cre302 Set Creestid=''27'',Creestado=''PARCIAL'',Percob=Null '+
          ' Where Percob='+perano2.Text+permes2.Text+' and Forpagoid=''01'' and Creestid=''14'' and Uproid='''+dblUpro2.Text +''' '+
          ' And Creano||Cremes<'+perano2.Text+permes2.Text +'And NVL(CremtoCob,0)>0 '  ;
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);


 Xsql := 'Update Cre302 Set Creestid=''02'',Creestado=''POR COBRAR'',Percob=null '+
          ' Where Percob='+perano2.Text+permes2.Text+' and Forpagoid=''01'' and Creestid=''14'' and Uproid='''+dblUpro2.Text +''' '+
          ' And Creano||Cremes='+perano2.Text+permes2.Text+' And NVL(Cremtocob,0)=0 ' ;
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);


  Xsql := 'Update Cre302 Set Creestid=''27'',Creestado=''PARCIAL'',Percob=null '+
          ' Where Percob='+perano2.Text+permes2.Text+' and Forpagoid=''01'' and Creestid=''14'' and Uproid='''+dblUpro2.Text +''' '+
          ' And Creano||Cremes='+perano2.Text+permes2.Text+' And NVL(Cremtocob,0)>0 ' ;
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);


end;

procedure TfGenDesPla.btnMarcaClick(Sender: TObject);
 var B:TBookmark;
 xflag : String;
begin
     Dm1.cdsQry1.IndexFieldNames:='';
     B:= Dm1.cdsQry1.GetBookmark;
     Dm1.cdsQry1.DisableControls;

     Dm1.cdsQry1.First;
    if btnMarca.Caption = 'Mrc.Tod.' then  xFlag:='S' else xFlag:='';
    btnMarca.Enabled := False;

     While Not Dm1.cdsQry1.Eof do
       Begin
         Dm1.cdsQry1.Edit;
         Dm1.cdsQry1.FieldByName('Flag').AsString := xFlag;
         Dm1.cdsQry1.Next;
       End;
     if btnMarca.Caption = 'Mrc.Tod.' then  btnMarca.Caption := 'DsM.Tod.' else  btnMarca.Caption := 'Mrc.Tod.';
     btnMarca.Enabled := True;
     Dm1.cdsQry1.GotoBookmark(B);
     Dm1.cdsQry1.EnableControls;
     Dm1.cdsQry1.FreeBookmark(B);
     Dm1.cdsQry1.IndexFieldNames:=xfindexo;

end;

procedure TfGenDesPla.BitBtn6Click(Sender: TObject);
Var xSql,xasoid,xWhere2:string;
 xTotEnv,xApoEnv:Currency;
begin


  If (not rdbVer1.Checked) and (not rdbVer2.Checked) and (not rdbVer3.Checked) Then
     Begin
       MessageDlg(' !! Debe selecionar una opci n ... ', mtError,[mbOk],0);
       Exit
     End;

//Primero Graba Cambios Realizados
  Screen.Cursor := crHourGlass;
  Dm1.cdsQry1.IndexFieldNames:='';
  Dm1.cdsQry1.DisableControls;
  Dm1.cdsQry1.First;

  pnlMsgSave.Visible := True;
  pnlMsgSave.Refresh;
  While not Dm1.cdsQry1.Eof do
     Begin
        xasoid:=Dm1.cdsQry1.FieldByName('Asoid').AsString;
        If dm1.cdsQry1.FieldByName('Moncuoenv').AsCurrency=0 Then
           Begin
             xTotEnv:=0;
             xApoEnv:=0;
           End
        Else
           Begin
             xTotEnv:=dm1.cdsQry1.FieldByName('Moncuoenv').AsCurrency+dm1.cdsQry1.FieldByName('Cremtoapo').AsCurrency;
             xApoEnv:=dm1.cdsQry1.FieldByName('Cremtoapo').AsCurrency;
           End;
        xsql:= 'Update Cob319 set  Monapoenv='+CurrToStr(xApoenv)+',Moncuoenv='+dm1.cdsQry1.FieldByName('Moncuoenv').AsString+', Porenvcuo='+dm1.cdsQry1.FieldByName('Porenvcuo').AsString +
               ',Montotenv='+CurrToStr(xTotEnv)+
               ',Flacuoper='+QuotedStr(dm1.cdsQry1.FieldByName('Flacuoper').AsString)+',Flacuomasant='+QuotedStr(dm1.cdsQry1.FieldByName('Flacuomasant').AsString)+
               ',Flacuoperven='+QuotedStr(dm1.cdsQry1.FieldByName('Flacuoperven').AsString)+ ',Cremtocuo='+dm1.cdsQry1.FieldByName('Cremtocuo').AsString+
               ',Flacuopervenmasant='+QuotedStr(dm1.cdsQry1.FieldByName('Flacuopervenmasant').AsString)+
               ' Where Asoid='+QuotedStr(xAsoid)+' And Uproid='+QuotedStr(dblUpro2.Text)+'And cobano='+QuotedStr(Perano2.Text)+' And cobmes='+QuotedStr(Format('%.2d',[StrToInt(Trim(Permes2.Text))]));
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        Dm1.cdsQry1.Next;
     End;
   pnlMsgSave.Visible := False;
   Dm1.cdsQry1.EnableControls;

 if XPN='P' then xWhere2:=' And IdTipCob=''03'' ' else xWhere2:=' And nvl(IdTipCob,''00'')<>''03'' ' ;

 If  rdbVer1.Checked then
   Begin
     xSql:= 'Select * From COb319 Where Forpagoid=''01'' And Cobano='+QuotedStr(perano2.Text)+ ' And Cobmes='+QuotedStr(Format('%.2d',[StrToInt(Trim(permes2.Text))]))+
            'And Uproid ='+QuotedStr(dblUpro2.Text)+ xWhere2 +' And Moncuoenv<='+currtostr(curredtVal.Value);
     curredtval.Value   := 0;
     curredtVal.Enabled := False;
     curredtval2.Value   := 0;
     curredtVal2.Enabled := False;
     xindexo:='N';
   End
 Else If rdbVer2.Checked then
   Begin
     xSql:= 'Select * From COb319 Where Forpagoid=''01'' And Cobano='+QuotedStr(perano2.Text)+ ' And Cobmes='+QuotedStr(Format('%.2d',[StrToInt(Trim(permes2.Text))]))+
            'And Uproid ='+QuotedStr(dblUpro2.Text)+ xWhere2 +' And Moncuoenv>='+currtostr(curredtVal2.Value);
     curredtval2.Value    := 0;
     curredtVal2.Enabled  := False;
     curredtval.Value     := 0;
     curredtVal.Enabled   := False;
     xindexo:='N';
   End
 Else If rdbVer3.Checked then
   Begin
     xSql:= 'Select * From COb319 Where Forpagoid=''01'' And Cobano='+QuotedStr(perano2.Text)+ ' And Cobmes='+QuotedStr(Format('%.2d',[StrToInt(Trim(permes2.Text))]))+
            'And Uproid ='+QuotedStr(dblUpro2.Text)+ xWhere2;
     curredtval.Value     := 0;
     curredtVal.Enabled   := False;
     curredtval2.Value    := 0;
     curredtVal2.Enabled  := False;
     xindexo:='N';
   End;

 Dm1.cdsQry1.Close;
 Dm1.cdsQry1.IndexFieldNames := '';
 Dm1.cdsQry1.DataRequest(xSql);
 Dm1.cdsQry1.Open;

 TNumericField(Dm1.cdsqry1.fieldbyname('NUMCUOENVPER')).DisplayFormat:='###,###0';
 TNumericField(Dm1.cdsqry1.fieldbyname('NUMCUOENVVEN')).DisplayFormat:='###,###0';
 TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENVPER')).DisplayFormat:='###,###,##0.#0';
 TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENVVEN')).DisplayFormat:='###,###,##0.#0';
 TNumericField(Dm1.cdsqry1.fieldbyname('CREMTOCUO')).DisplayFormat   :='###,###,##0.#0';
 TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENV')).DisplayFormat   :='###,###,##0.#0';
 TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOMASANT')).DisplayFormat:='###,###,##0.#0';

  ActFoot1;
  Screen.Cursor := crDefault;
  rdbCalc1.Checked := False ;rdbCalc2.Checked := False; rdbCalc3.Checked := False;
  rdbVer1.Checked  := False ; rdbVer2.Checked := False ; rdbVer3.Checked := False;



end;

procedure TfGenDesPla.rdbVer1Click(Sender: TObject);
begin
 if  rdbVer1.Checked then curredtVal.Enabled := True Else  curredtVal.Enabled := False;
end;

procedure TfGenDesPla.rdbVer2Click(Sender: TObject);
begin
 if  rdbVer2.Checked then curredtVal2.Enabled := True Else  curredtVal2.Enabled := False;
end;


procedure TfGenDesPla.dbgDescPorcentualTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin

   If AFieldName = 'ASOAPENOM' Then
    begin
      Screen.Cursor := crHourGlass;
      edtBusca.Text := '';
      DM1.cdsQry1.IndexFieldNames := 'ASOAPENOM';
      edtBusca.SearchField    := 'ASOAPENOM';
      pnlBusca.Visible        := True;
      lbBusca.Caption         := 'Apellidos y Nombres';
      dbgDescPorcentual.Enabled := False;
      edtBusca.SetFocus;
      Screen.Cursor := crDefault;
      xindexo :='S' ;
      xfindexo:= 'ASOAPENOM';
    end;

  If AFieldName ='MONCUOENV' Then
     Begin
       DM1.cdsQry1.IndexFieldNames := 'MONCUOENV';
       dbgDescPorcentual.SetFocus;
       xindexo :='S';
       xfindexo:='MONCUOENV';
     End;

  If AFieldName ='MONCUOMASANT' Then
     Begin
       DM1.cdsQry1.IndexFieldNames := 'MONCUOMASANT';
       dbgDescPorcentual.SetFocus;
       xindexo :='S';
       xfindexo:='MONCUOMASANT';
     End;

  If AFieldName ='MONCUOENVPER' Then
     Begin
       DM1.cdsQry1.IndexFieldNames := 'MONCUOENVPER';
       dbgDescPorcentual.SetFocus;
       xindexo :='S';
       xfindexo:='MONCUOENVPER';
     End;

  If AFieldName ='MONCUOENVVEN' Then
     Begin
       DM1.cdsQry1.IndexFieldNames := 'MONCUOENVVEN';
       dbgDescPorcentual.SetFocus;
       xindexo :='S';
       xfindexo:='MONCUOENVVEN';
     End;

  If AFieldName ='PORENVCUO' Then
     Begin
       DM1.cdsQry1.IndexFieldNames := 'PORENVCUO';
       dbgDescPorcentual.SetFocus;
       xindexo :='S';
       xfindexo:='PORENVCUO';
     End;

  If AFieldName ='CREMTOCUO' Then
     Begin
       DM1.cdsQry1.IndexFieldNames := 'CREMTOCUO';
       dbgDescPorcentual.SetFocus;
       xindexo :='S';
       xfindexo:='CREMTOCUO';
     End;

  If AFieldName ='NUMCUOENVPER' Then
     Begin
       DM1.cdsQry1.IndexFieldNames := 'NUMCUOENVPER';
       dbgDescPorcentual.SetFocus;
       xindexo :='S';
       xfindexo:='NUMCUOENVPER';
     End;

  If AFieldName ='NUMCUOENVVEN' Then
     Begin
       DM1.cdsQry1.IndexFieldNames := 'NUMCUOENVVEN';
       dbgDescPorcentual.SetFocus;
       xindexo :='S';
       xfindexo:='NUMCUOENVVEN';
     End;




end;

procedure TfGenDesPla.bbtnClosePnlClick(Sender: TObject);
begin
pnlBusca.Visible := False;
dbgDescPorcentual.Enabled := True;
end;

procedure TfGenDesPla.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) or (Key = #27) Then
    begin
     pnlBusca.Visible          := False;
     dbgDescPorcentual.Enabled := True;
     dbgDescPorcentual.SetFocus;
    end;
end;


procedure TfGenDesPla.BitBtn8Click(Sender: TObject);
var xint:Real;
    xmontotenv:currency;
Begin
  pplblnOficio.Caption := TRIM(DM1.cdsQry1.FieldByName('NROFICIO').AsString)+'-'+Trim(Dm1.cdsQry1.FieldByName('Cobano').AsString);
  pplblSenores.Caption := Trim(EdtSenores.Text);
  ppMPie.Lines         := memoPie.Lines;
  ppmLinea.Lines.Clear;
  ppmLinea.Lines.Text  := 'Por  lo  cual adjuntamos, la relacin de descuentos del mes de '+
                          Dm1.NombreMes(Dm1.cdsQry1.FieldByName('Cobmes').AsString)+' '+Trim(Dm1.cdsQry1.FieldByName('Cobano').AsString);
  pplblMtoDesc.Caption := dbgDetalleEnvio.ColumnByName('montotenv').FooterValue;
  pplblFecha.Caption   := 'Lima, '+copy(DateToStr(Dm1.FechaSys),1,2)+' de '+Dm1.NombreMes(copy(DateToStr(Dm1.FechaSys),4,2))+' del '+copy(DateToStr(Dm1.FechaSys),7,4);
  xint := int(zTotal);
  xmontotenv := zTotal;
  ppmTotLetras.Lines.Clear;
  ppmTotLetras.Lines.Text := '('+Dm1.xIntToLletras(StrToInt(FloatToStr(xInt)),DM1.Valores(FloatToStr(xmontotenv)))+')';
  ppROfico.Print;
  ppROfico.Stop;
end;

procedure TfGenDesPla.BitBtn4Click(Sender: TObject);
begin
pnlRepOfico.Left    := 160;
pnlRepOfico.Top     := 104;
pnlRepOfico.Visible := True;
end;


procedure TfGenDesPla.Button4Click(Sender: TObject);
begin
pnlRepOfico.Visible := False;
end;


procedure TfGenDesPla.ActFoot3;
var Xtotales:Currency;
begin
 CDSRESUMEN.First;

 xtotales:=0;
 While not CDSRESUMEN.Eof Do
    Begin
      Xtotales:=Xtotales+CDSRESUMEN.FieldByName('TOTALES').AsCurrency;
      CDSRESUMEN.Next
    End;

  dbgResumen.ColumnByName('Totales').FooterValue   := FormatCurr('##,###,##0.#0',Xtotales);

end;


procedure TfGenDesPla.PageControl1Change(Sender: TObject);
begin
ActFoot3;
end;


//Verifica si tiene marca
function TfGenDesPla.VerificaMarc: boolean;
var b:TBookmark;
    Cuenta:integer;
begin

    Dm1.cdsQry1.IndexFieldNames:='';
    B:= Dm1.cdsQry1.GetBookmark;
    Dm1.cdsQry1.DisableControls;

    Dm1.cdsQry1.First;
    cuenta:=0;

    While Not Dm1.cdsQry1.Eof Do
      Begin
       If Dm1.cdsQry1.FieldByName('Flag').Asstring='S' Then cuenta:=cuenta+1 ;
       Dm1.cdsQry1.Next;
      End;
    If cuenta>0 Then Result:=True Else Result:=False;

    Dm1.cdsQry1.GotoBookmark(B);
    Dm1.cdsQry1.EnableControls;
    Dm1.cdsQry1.FreeBookmark(B);
    Dm1.cdsQry1.IndexFieldNames := xfindexo;
end;

procedure TfGenDesPla.fcShapeBtn6Click(Sender: TObject);
Var xSql, xQry1, xtipaso :string;
begin
  If Trim(dblUpro2.Text)    <> '' Then  xQry1 := 'UPROID = '+QuotedStr(dblUpro2.Text);
  If Trim(dblupagoid2.Text) <> '' Then  xQry1 := xQry1 + ' AND UPAGOID = '+QuotedStr(dblupagoid2.Text);
  If Trim(dbluseid2.Text)   <> '' Then  xQry1 := xQry1 + ' AND USEID = '+QuotedStr(dbluseid2.Text);
  If rbDocente.Checked Then xtipaso := 'DO' Else xtipaso := 'CE';

  if Length(TRim(dblUpro2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Unidad de Proceso' , mtError,[mbOk],0);
    dblUpro2.SetFocus;
    Exit;
  End;
  if Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Ao de Periodo de Cobranza' , mtError,[mbOk],0);
    perano2.SetFocus;
    Exit;
  End;
  if Length(TRim(perano2.Text))=0 then
  Begin
    MessageDlg('Debe Ingresar Mes de Periodo de Cobranza' , mtError,[mbOk],0);
    permes2.SetFocus;
    Exit;
  End;
  XSQL:= 'Select nvl(Flacie,''X'') Flacie From COB204 Where '+xQry1
  +' AND ASOTIPID = '+QuotedStr(xtipaso)+' And Creano='+QuotedStr(perano2.Text)+' And Cremes='+QuotedStr(permes2.text);
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSQL);
  DM1.cdsQry4.Open;

  If (Dm1.cdsQry4.RecordCount>0)  and (Dm1.cdsQry4.FieldByName('Flacie').AsString='S') Then
  Begin
    MessageDlg('El Periodo de Cobranza esta cerrado' , mtError,[mbOk],0);
    perano2.SetFocus;
    DM1.cdsQry4.Close;
    Exit;
  End;

  pnlDescPorcentual.Left := 8;
  pnlDescPorcentual.Top  := 2;
  XPN:='N';
  xSql:= 'Select * From COb319 Where Forpagoid=''01'' And Cobano='+QuotedStr(perano2.Text)+ ' And Cobmes='+QuotedStr(Format('%.2d',[StrToInt(Trim(permes2.Text))]))
  +' AND '+xQry1+' AND ASOTIPID = '+QuotedStr(xtipaso)+' And nvl(IdTipCob,''00'')<>''03'' AND NVL(MONCUOENV, 0) <> 0';
  Dm1.cdsQry1.Close;
  Dm1.cdsQry1.DataRequest(xSql);
  Dm1.cdsQry1.Open;

  TNumericField(Dm1.cdsqry1.fieldbyname('NUMCUOENVPER')).DisplayFormat:='###,###0';
  TNumericField(Dm1.cdsqry1.fieldbyname('NUMCUOENVVEN')).DisplayFormat:='###,###0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENVPER')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENVVEN')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOMASANT')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('CREMTOCUO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(Dm1.cdsqry1.fieldbyname('MONCUOENV')).DisplayFormat:='###,###,##0.#0';

  If Dm1.cdsQry1.RecordCount<=0 Then
  Begin
    MessageDlg('No existe información del periodo para procesar...', mtError ,[mbOk],0);
    Dm1.cdsQry1.Close;
    Dm1.cdsQry.IndexFieldNames:='';
    Exit;
  End;

  Dm1.cdsQry1.First;
  dbgDescPorcentual.DataSource := DM1.dsQry1;
  dbgDescPorcentual.SetControlType('FLAG',fctCheckBox, 'S;N');
  Label8.Caption :='Descuento Porcentual Catalogados NORMAL';
  pnlDescPorcentual.Visible    := True;
  ActFoot1;
  rdbCalc1.Checked := False ;rdbCalc2.Checked := False; rdbCalc3.Checked := False;
  rdbVer1.Checked  := False ; rdbVer2.Checked := False ; rdbVer3.Checked := False ;
end;

procedure TfGenDesPla.BitBtn9Click(Sender: TObject);
var xsql1,xsql2:string;
begin

 Screen.Cursor := crHourGlass;
 If  rdgResumen.ItemIndex = 0 then
    Begin

     xsql1:='SELECT D.UPRONOM,SUM(NVL(REGENV,0))REGENV,SUM(NVL(REGCOB,0)) REGCOB,SUM(NVL(MONCUOENV,0)) MONCUOENV,'+
            'ROUND( (SUM(NVL(TRANSCUO,0))*100)/SUM(NVL(MONCUOENV,0)),2) Porc, SUM(NVL(MONCUOAPL,0))MONCUOAPL,SUM(NVL(TRANSCUO,0))TRANSCUO,'+
            '(SUM(NVL(MONCUOENV,0))-SUM(NVL(TRANSCUO,0)))MONNOCOB,SUM(NVL(REGENV,0))-SUM(NVL(REGCOB,0))REGNOCOB '+
            'FROM '+
            '(select A.UPROID,1 REGENV,CASE WHEN TRANSCUO>0 THEN 1 ELSE 0 END REGCOB , A.ASOID,NVL(A.ASOAPENOM,''XXX'')ASOAPENOM,A.MONCUOENV,A.MONCUOAPL,B.TRANSCUO FROM '+
            '(SELECT * FROM COB319 WHERE COBANO='+QuotedStr(perano.Text)+' AND COBMES='+QuotedStr(permes.text)+'  AND MONTOTENV>0) A, '+
            '(SELECT * FROM COB304 WHERE TRANSANO='+QuotedStr(perano.Text)+' AND TRANSMES='+QuotedStr(permes.Text)+' AND TRANSCUO>0) B '+
            'WHERE A.ASOID=B.ASOID(+) ORDER BY A.UPROID,A.ASOID) C,APO102 D '+
            'WHERE C.UPROID=D.UPROID(+)  '+
            'GROUP BY UPRONOM ORDER BY UPRONOM';

     xsql2:='SELECT CASE WHEN IDTIPCOB IS NULL AND FLACUOMASANT IS NULL THEN ''DESCUENTO NORMAL'' '+
                        'WHEN NVL(IDTIPCOB,''00'')=''03'' AND NVL(FLACUOMASANT,''X'')=''S'' THEN ''CUOTAS MAS ANTIGUA '' '+
                        'WHEN NVL(IDTIPCOB,''00'')=''03'' AND FLACUOMASANT IS NULL THEN ''COBRANZA PORCENTUAL (%)'' END DES, '+
            'SUM(NVL(REGENV,0))REGENV,SUM(NVL(REGCOB,0)) REGCOB,SUM(NVL(MONCUOENV,0)) MONCUOENV,'+
            'ROUND( (SUM(NVL(TRANSCUO,0))*100)/SUM(NVL(MONCUOENV,0)),2) Porc, SUM(NVL(MONCUOAPL,0))MONCUOAPL,SUM(NVL(TRANSCUO,0))TRANSCUO, '+
            '(SUM(NVL(MONCUOENV,0))-SUM(NVL(TRANSCUO,0)))MONNOCOB,SUM(NVL(REGENV,0))-SUM(NVL(REGCOB,0))REGNOCOB '+
            'FROM '+
            '(Select CASE WHEN NVL(FLACUOMASANT,''X'')=''S'' AND IDTIPCOB IS NULL THEN ''03'' ELSE IDTIPCOB END IDTIPCOB, '+
            'A.FLACUOMASANT,1 REGENV,CASE WHEN TRANSCUO>0 THEN 1 ELSE 0 END REGCOB , A.ASOID,NVL(A.ASOAPENOM,''XXX'')ASOAPENOM,A.MONCUOENV,A.MONCUOAPL,B.TRANSCUO FROM '+
            '(SELECT * FROM COB319 WHERE COBANO = '+QuotedStr(perano.Text)+' AND COBMES = '+QuotedStr(permes.Text)+' AND MONTOTENV>0) A, '+
            '(SELECT * FROM COB304 WHERE TRANSANO='+QuotedStr(perano.Text)+' AND TRANSMES='+QuotedStr(permes.Text)+' AND TRANSCUO>0) B '+
            ' WHERE A.ASOID=B.ASOID(+) ORDER BY A.IDTIPCOB,A.ASOID) '+
            ' GROUP BY IDTIPCOB,FLACUOMASANT ';

     DM1.cdsQry6.Close;
     DM1.cdsQry6.DataRequest(XSQL1);
     DM1.cdsQry6.Open;

     DM1.cdsQry5.Close;
     DM1.cdsQry5.DataRequest(XSQL2);
     DM1.cdsQry5.Open;

     ppbDescPorc.DataSource := Dm1.dsQry6;
     ppbResumen.DataSource  := DM1.dsQry5;

     If chkExcel.Checked Then
       Begin
       	try
        DTGDATA.DataSource := DM1.dsQry6 ;
        DM1.HojaExcel('RESUMEN POR UNIDAD DE PROCESO',DM1.dsQry6, dtgData);
        DTGDATA.DataSource := DM1.dsQry5 ;
        DM1.HojaExcel('RESUMEN POR TIPO DE DESCUENTO',DM1.dsQry5, dtgData);
      	except
     		 on Ex: Exception do
   			 Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	      end;
       End

    Else
       Begin
        ppltitulo.Caption := 'RESUMEN DE EFECTIVIDAD DE COBRANZA POR PLANILLA '+ perano.Text+'-'+permes.Text+' (ACTIVOS) ';
        RepResumenTotal.Print;
        RepResumenTotal.Stop;
       end;
    End;



 If rdgResumen.ItemIndex = 1 then
    Begin

    xsql1:='SELECT D.UPRONOM,SUM(NVL(REGENV,0))-SUM(NVL(REGCOB,0))REGENV,0 REGCOB,(SUM(NVL(MONCUOENV,0))-SUM(NVL(TRANSCUO,0))) MONCUOENV,'+
           ' 0 PORC, 0 MONCUOAPL,0 TRANSCUO,(SUM(NVL(MONCUOENV,0))-SUM(NVL(TRANSCUO,0)))MONNOCOB,SUM(NVL(REGENV,0))-SUM(NVL(REGCOB,0))REGNOCOB ' +
           'FROM '+
           '(select A.UPROID,1 REGENV,CASE WHEN TRANSCUO>0 THEN 1 ELSE 0 END REGCOB , A.ASOID,NVL(A.ASOAPENOM,''XXX'')ASOAPENOM,A.MONCUOENV,A.MONCUOAPL,B.TRANSCUO FROM '+
           '(SELECT * FROM COB319 WHERE COBANO='''+perano.Text+''' AND COBMES='''+permes.text+'''  AND MONTOTENV>0) A, '+
           '(SELECT * FROM COB304 WHERE TRANSANO='''+perano.Text+''' AND TRANSMES='''+permes.Text+''' AND TRANSCUO>0) B '+
           'WHERE A.ASOID=B.ASOID(+) ORDER BY A.UPROID,A.ASOID) C,APO102 D '+
           'WHERE C.UPROID=D.UPROID(+)  '+
           'GROUP BY UPRONOM ORDER BY UPRONOM ';

    xsql2:='SELECT CASE WHEN IDTIPCOB IS NULL AND FLACUOMASANT IS NULL THEN ''DESCUENTO NORMAL'' '+
                       'WHEN NVL(IDTIPCOB,''00'')=''03'' AND NVL(FLACUOMASANT,''X'')=''S'' THEN ''CUOTAS MAS ANTIGUA '' '+
                       'WHEN NVL(IDTIPCOB,''00'')=''03'' AND FLACUOMASANT IS NULL THEN ''COBRANZA PORCENTUAL (%)'' END DES, '+
           'SUM(NVL(REGENV,0))-SUM(NVL(REGCOB,0))REGENV,0 REGCOB,(SUM(NVL(MONCUOENV,0))-SUM(NVL(TRANSCUO,0))) MONCUOENV,'+
           '0 PORC, 0 MONCUOAPL,0 TRANSCUO, '+
           '(SUM(NVL(MONCUOENV,0))-SUM(NVL(TRANSCUO,0)))MONNOCOB,SUM(NVL(REGENV,0))-SUM(NVL(REGCOB,0))REGNOCOB '+
           'FROM '+
           '(Select CASE WHEN NVL(FLACUOMASANT,''X'')=''S'' AND IDTIPCOB IS NULL THEN ''03'' ELSE IDTIPCOB END IDTIPCOB, '+
           'A.FLACUOMASANT,1 REGENV,CASE WHEN TRANSCUO>0 THEN 1 ELSE 0 END REGCOB , A.ASOID,NVL(A.ASOAPENOM,''XXX'')ASOAPENOM,A.MONCUOENV,A.MONCUOAPL,B.TRANSCUO FROM '+
           '(SELECT * FROM COB319 WHERE COBANO='''+perano.Text+''' AND COBMES='''+permes.Text+'''   AND MONTOTENV>0) A, '+
           '(SELECT * FROM COB304 WHERE TRANSANO='''+perano.Text+''' AND TRANSMES='''+permes.Text+''' AND TRANSCUO>0) B '+
           ' WHERE A.ASOID=B.ASOID(+) ORDER BY A.IDTIPCOB,A.ASOID) '+
           ' GROUP BY IDTIPCOB,FLACUOMASANT ';

     DM1.cdsQry6.Close;
     DM1.cdsQry6.DataRequest(XSQL1);
     DM1.cdsQry6.Open;

     DM1.cdsQry5.Close;
     DM1.cdsQry5.DataRequest(XSQL2);
     DM1.cdsQry5.Open;

     ppbDescPorc.DataSource := Dm1.dsQry6;
     ppbResumen.DataSource  := DM1.dsQry5;

     If chkExcel.Checked Then
       Begin
       	try
        DTGDATA.DataSource := DM1.dsQry6 ;
        DM1.HojaExcel('RESUMEN POR UNIDAD DE PROCESO',DM1.dsQry6, dtgData);
        DTGDATA.DataSource := DM1.dsQry5 ;
        DM1.HojaExcel('RESUMEN POR TIPO DE DESCUENTO',DM1.dsQry5, dtgData);
      	except
     		 on Ex: Exception do
   			 Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	      end;
       End
     Else
       Begin
        ppltitulo2.Caption := 'RESUMEN DE COBRANZA NO EFECTUADA POR PLANILLA '+ perano.Text+'-'+permes.Text+' (ACTIVOS) ';
        RepResuCobNoEfect.Print;
        RepResuCobNoEfect.Stop;
       End;
    End;

    Screen.Cursor := crDefault;
end;

procedure TfGenDesPla.chkExcel2Click(Sender: TObject);
begin
  rdTodos.Checked := True;
  if chkExcel2.Checked then
      gbfiltro.Enabled := True
  else gbfiltro.Enabled := False;
end;

procedure TfGenDesPla.BitBtn10Click(Sender: TObject);
var xsql:string;
begin
  If Length(Trim(dblUpro2.Text))=0 Then
  Begin
    ShowMessage('Debe Ingresar Unidad de Proceso');
    Exit;
  End;
  If Length(Trim(perano2.Text))=0  Then
  Begin
    ShowMessage('Debe Ingresar Ao de Periodo');
    Exit;
  End;
  If Length(Trim(permes2.Text))=0  Then
  Begin
    ShowMessage('Debe Ingresar Mes de Periodo');
    Exit;
  End;
  XSQL:= 'Select nvl(Flacie,''X'')Flacie From COB204  Where Uproid='''+dblUpro2.Text+''' And Creano='''+perano2.Text+''' And Cremes='''+permes2.text+''' ';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSQL);
  DM1.cdsQry4.Open;
  If (Dm1.cdsQry4.RecordCount>0)  and (Dm1.cdsQry4.FieldByName('Flacie').AsString='S') Then
  Begin
    MessageDlg('El Periodo de Cobranza esta cerrado' , mtError,[mbOk],0);
    perano2.SetFocus;
    DM1.cdsQry4.Close;
    Exit;
  End;
  If MessageDlg('Esta seguro de cerrar el Periodo de Cobranza',mtconfirmation,[mbYes,MbNo],0)=mrNo then exit;
  xsql:='Update Cob204 set usucie='''+dm1.wUsuario+''',flacie=''S'',feccie=sysdate Where '+
       'Uproid='''+dblUpro2.Text+''' And Creano='''+perano2.Text+''' And Cremes='''+permes2.text+''' ';
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
end;

Procedure TfGenDesPla.dblUpro2Change(Sender: TObject);
Var xsql:string;
Begin
  edtUpro.Text :=  Dm1.cdsUPro.FieldByName('Upronom').AsString;
  dblupagoid2.Text := '';
  edtupago.Text    := '';
  dbluseid2.Text   := '';
  edtuse.Text      := '';
  If Length(Trim(dblUpro2.Text)) = 3 then
  Begin
     xsql:='SELECT UPAGOID,UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblUpro2.Text);
     DM1.CDSUPAGO.Close;
     DM1.CDSUPAGO.DataRequest(XSQL);
     DM1.CDSUPAGO.Open;
  End;
End;


Procedure TfGenDesPla.dblupagoid2Change(Sender: TObject);
Var XSQL:STRING;
Begin
  edtupago.Text := DM1.CDSUPAGO.FIELDBYNAME('UPAGONOM').AsString;
  dbluseid2.Text   := '';
  edtuse.Text      := '';
  If Trim(dblupagoid2.Text) <> '' then
  Begin
    xsql:='select USEID,USENOM from APO101 WHERE UPROID='+QuotedStr(dblUpro2.Text)
    +'AND UPAGOID= '+QuotedStr(dblupagoid2.Text);
     DM1.cdsUSES.Close;
     DM1.cdsUSES.DataRequest(XSQL);
     DM1.cdsUSES.Open;
  End;

end;

procedure TfGenDesPla.dbluseid2Change(Sender: TObject);
begin
  edtuse.Text := DM1.cdsUSES.FIELDBYNAME('USENOM').AsString;
end;

procedure TfGenDesPla.permes2Change(Sender: TObject);
begin
If Length(Trim(permes2.Text))>0 Then permes2.Text:=Format('%.2d',[StrToInt(Trim(permes2.Text))]) else permes2.Text:='';
end;

procedure TfGenDesPla.rbCesanteClick(Sender: TObject);
begin
  rbIncAportes.Enabled     := False;
  rbIncAportAutDes.Enabled := False;
end;

procedure TfGenDesPla.rbDocenteClick(Sender: TObject);
begin
  rbIncAportes.Enabled     := True;
  rbIncAportAutDes.Enabled := True;
end;

end.


