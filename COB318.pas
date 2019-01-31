unit COB318;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdbedit, Wwdbspin, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppStrtch, ppSubRpt, ppVar, ExtCtrls, Grids, DBGrids;

type
  TFMatrizdeRodamiento = class(TForm)
    GroupBox1        : TGroupBox;
    permes           : TwwDBSpinEdit;
    perano           : TwwDBSpinEdit;
    BitBtn1          : TBitBtn;
    bdep1            : TppBDEPipeline;
    RMatrizRodamiento: TppReport;
    ppHeaderBand1    : TppHeaderBand;
    ppDetailBand1    : TppDetailBand;
    ppShape1         : TppShape;
    ppShape2         : TppShape;
    ppShape3         : TppShape;
    ppShape4         : TppShape;
    ppShape5         : TppShape;
    ppShape6         : TppShape;
    ppShape7         : TppShape;
    ppShape8         : TppShape;
    ppShape9         : TppShape;
    ppShape10        : TppShape;
    ppShape13        : TppShape;
    ppShape28        : TppShape;
    ppLabel1         : TppLabel;
    ppLabel2         : TppLabel;
    ppLabel3         : TppLabel;
    ppLabel4         : TppLabel;
    ppLabel5         : TppLabel;
    ppLabel6         : TppLabel;
    ppLabel7         : TppLabel;
    ppLabel8         : TppLabel;
    ppLabel9         : TppLabel;
    ppLT1            : TppLabel;
    ppLabel11        : TppLabel;
    ppShape11        : TppShape;
    ppShape12        : TppShape;
    ppShape14        : TppShape;
    ppShape15        : TppShape;
    ppShape16        : TppShape;
    ppShape17        : TppShape;
    ppShape18        : TppShape;
    ppShape19        : TppShape;
    ppShape20        : TppShape;
    ppShape21        : TppShape;
    ppShape22        : TppShape;
    ppShape23        : TppShape;
    ppShape24        : TppShape;
    ppShape25        : TppShape;
    ppShape26        : TppShape;
    ppShape27        : TppShape;
    ppLT2            : TppLabel;
    ppLabel13        : TppLabel;
    ppLT3            : TppLabel;
    ppLabel15        : TppLabel;
    ppLT4            : TppLabel;
    ppLabel17        : TppLabel;
    PPLT5            : TppLabel;
    ppLabel19        : TppLabel;
    PPLT6            : TppLabel;
    ppLabel21        : TppLabel;
    PPLT7            : TppLabel;
    ppLabel23        : TppLabel;
    PPLT8            : TppLabel;
    ppLabel25        : TppLabel;
    PPLT9            : TppLabel;
    ppLabel27        : TppLabel;
    ppLabel28        : TppLabel;
    ppDBText1        : TppDBText;
    ppDBText2        : TppDBText;
    ppDBText3        : TppDBText;
    ppDBText4        : TppDBText;
    ppDBText5        : TppDBText;
    ppDBText6        : TppDBText;
    ppDBText7        : TppDBText;
    ppDBText8        : TppDBText;
    ppDBText9        : TppDBText;
    ppDBText10       : TppDBText;
    ppDBText11       : TppDBText;
    ppDBText12       : TppDBText;
    ppDBText13       : TppDBText;
    ppDBText14       : TppDBText;
    ppDBText15       : TppDBText;
    ppDBText16       : TppDBText;
    ppDBText17       : TppDBText;
    ppDBText18       : TppDBText;
    ppDBText19       : TppDBText;
    ppSummaryBand1   : TppSummaryBand;
    ppSubReport1     : TppSubReport;
    ppChildReport1   : TppChildReport;
    ppTitleBand1     : TppTitleBand;
    ppDetailBand2    : TppDetailBand;
    ppSummaryBand2   : TppSummaryBand;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    PPLT10   : TppLabel;
    ppLabel39: TppLabel;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppShape47: TppShape;
    ppShape48: TppShape;
    ppShape49: TppShape;
    ppShape50: TppShape;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppShape53: TppShape;
    ppShape54: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    PPLT11   : TppLabel;
    ppLabel41: TppLabel;
    PPLT12   : TppLabel;
    ppLabel43: TppLabel;
    PPLT13   : TppLabel;
    ppLabel45: TppLabel;
    PPLT14   : TppLabel;
    ppLabel47: TppLabel;
    PPLT15   : TppLabel;
    ppLabel49: TppLabel;
    PPLT16   : TppLabel;
    ppLabel51: TppLabel;
    PPLT17   : TppLabel;
    ppLabel53: TppLabel;
    PPLT18   : TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    GroupBox2 : TGroupBox;
    rbCapiatl : TRadioButton;
    rbSaldCapital: TRadioButton;
    ppDBCalc1: TppDBCalc;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppLine1  : TppLine;
    ppDBCalc2: TppDBCalc;
    ppShape59: TppShape;
    ppShape60: TppShape;
    ppLine2  : TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppLine3  : TppLine;
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppLine4  : TppLine;
    ppShape65: TppShape;
    ppShape66: TppShape;
    ppLine5  : TppLine;
    ppShape67: TppShape;
    ppShape68: TppShape;
    ppLine6  : TppLine;
    ppShape69: TppShape;
    ppShape70: TppShape;
    ppLine7  : TppLine;
    ppShape71: TppShape;
    ppShape72: TppShape;
    ppLine8  : TppLine;
    ppShape73: TppShape;
    ppShape74: TppShape;
    ppLine9  : TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppShape75: TppShape;
    ppShape76: TppShape;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppShape77: TppShape;
    ppShape78: TppShape;
    ppLine10: TppLine;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppShape79 : TppShape;
    ppShape80 : TppShape;
    ppLine11  : TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppShape81 : TppShape;
    ppShape82 : TppShape;
    ppLine12  : TppLine;
    ppShape83 : TppShape;
    ppShape84 : TppShape;
    ppLine13  : TppLine;
    ppShape85 : TppShape;
    ppShape86 : TppShape;
    ppLine14  : TppLine;
    ppShape87 : TppShape;
    ppShape88 : TppShape;
    ppLine15  : TppLine;
    ppShape89 : TppShape;
    ppShape90 : TppShape;
    ppLine16  : TppLine;
    ppShape91 : TppShape;
    ppShape92 : TppShape;
    ppLine17  : TppLine;
    ppShape93 : TppShape;
    ppShape94 : TppShape;
    ppLine18  : TppLine;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppShape95 : TppShape;
    ppShape96 : TppShape;
    ppLabel59 : TppLabel;
    ppLabel60 : TppLabel;
    ppShape97 : TppShape;
    ppShape98 : TppShape;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLabel61 : TppLabel;
    pplbPeriodo: TppLabel;
    pplbNota   : TppLabel;
    ppLabel62  : TppLabel;
    ppLabel63  : TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    Image2  : TImage;
    chkExcel: TCheckBox;
    DTGDATA : TDBGrid;
    btncerrar: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure permesExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btncerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMatrizdeRodamiento: TFMatrizdeRodamiento;

implementation

uses COBDM1, ComObj;

{$R *.dfm}

procedure TFMatrizdeRodamiento.BitBtn1Click(Sender: TObject);
var
   xsql,xWhere,pplt:string;
   XPPLT: TppCustomText;
   i :Integer;

begin
   PERMES.Text:=DM1.StrZero(PERMES.Text,2);
   If rbCapiatl.Checked Then
   Begin
      xWhere          :=' AND CONTENIDO=''TOTALCAP'' ';
      pplbNota.Caption:='(Total del Capital)';
      pplt            :='Total Cap.';
   end
   Else
   Begin
      xWhere          :=' AND CONTENIDO=''SALDOCAP'' ';
      pplbNota.Caption:='(Saldo del Capital)';
      pplt            :='Saldo Cap.'
   end;
   
   Screen.Cursor := crHourGlass;
   xSQL:='Select a.*,nvl("1A60",0)+nvl("61A90",0)+nvl("91A120",0)+nvl("121A150",0)+nvl("151A180",0)+'
        +'       nvl("181A210",0)+nvl("211A300",0)+nvl("301A330",0)+nvl("331A360",0)+nvl("361A390",0)+'
        +'       nvl("391A751",0)+nvl("752A1080",0)+nvl("1081A2160",0)+nvl("2161A2190",0)+nvl("2191A3240",0)+'
        +'       nvl("3241A3330",0)+nvl("3331A5370",0)+nvl("5371AMAS",0) TOTAL1, '
        +'       nvl("C1A60",0)+nvl("C61A90",0)+nvl("C91A120",0)+nvl("C121A150",0)+nvl("C151A180",0)+'
        +'       nvl("C181A210",0)+nvl("C211A300",0)+nvl("C301A330",0)+nvl("C331A360",0)+nvl("C361A390",0)+'
        +'       nvl("C391A751",0)+nvl("C752A1080",0)+nvl("C1081A2160",0)+nvl("C2161A2190",0)+nvl("C2191A3240",0)+'
        +'       nvl("C3241A3330",0)+nvl("C3331A5370",0)+nvl("C5371AMAS",0) TOTAL2 '
        +'  From Cob_Matriz_rod a Where Periodo='''+perano.Text+permes.Text+''' '+xWhere;
   Dm1.cdsQry.Close;
   Dm1.cdsQry.DataRequest(xsql);
   Dm1.cdsQry.Open;
   If Dm1.cdsQry.RecordCount=0 Then
   Begin
      ShowMessage('No existe información procesada.');
      Screen.Cursor := crDefault;
      exit;
   End;

   pplbPeriodo.Caption :=perano.Text+'-'+permes.Text;
   PPLT1.Caption:=PPLT;PPLT2.Caption:=PPLT;PPLT3.Caption:=PPLT;PPLT4.Caption:=PPLT;PPLT5.Caption:=PPLT;
   PPLT6.Caption:=PPLT;PPLT7.Caption:=PPLT;PPLT8.Caption:=PPLT;PPLT9.Caption:=PPLT;PPLT10.Caption:=PPLT;
   PPLT11.Caption:=PPLT;PPLT12.Caption:=PPLT;PPLT13.Caption:=PPLT;PPLT14.Caption:=PPLT;PPLT15.Caption:=PPLT;
   PPLT16.Caption:=PPLT;PPLT17.Caption:=PPLT;PPLT18.Caption:=PPLT;

   If chkExcel.Checked Then
   Begin
   	try
         DTGDATA.DataSource := DM1.dsQry;
         Screen.Cursor := crHourGlass;
         DM1.HojaExcel('MATRIZ DE RODAMIENTO '+pplbPeriodo.Caption,DM1.dsQry, dtgData);
         Screen.Cursor := crDefault;
   	except
   	 on Ex: Exception do
   	  	 Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
 	   end;
   End
   else
   Begin
      bdep1.DataSource := Dm1.dsQry;
      RMatrizRodamiento.Print;
      RMatrizRodamiento.Stop;
   End;
   Screen.Cursor := crDefault;

end;

procedure TFMatrizdeRodamiento.FormActivate(Sender: TObject);
begin
rbCapiatl.Checked := tRUE;
end;

procedure TFMatrizdeRodamiento.permesExit(Sender: TObject);
begin
 PERMES.Text:=DM1.StrZero(PERMES.Text,2);
end;

procedure TFMatrizdeRodamiento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFMatrizdeRodamiento.btncerrarClick(Sender: TObject);
begin
  FMatrizdeRodamiento.Close;
end;

end.
