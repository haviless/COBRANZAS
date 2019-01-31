Unit CRE450;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Mask, ExtCtrls, wwdblook, Wwdbdlg, StdCtrls, wwdbdatetimepicker,
   Buttons, Grids, DBGrids, ppEndUsr, ppProd, ppClass, ppReport, ppComm,
   ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppCache,
   ppParameter, ppModule, daDataModule;

Type
   TFRepRefina = Class(TForm)
      rgTipo: TRadioGroup;
      btnimprimir: TBitBtn;
      btnaexcel: TBitBtn;
      btncerrar: TBitBtn;
      Label1: TLabel;
      Label2: TLabel;
      dtpFinal: TwwDBDateTimePicker;
      dtpInicio: TwwDBDateTimePicker;
      pnlUsuario: TPanel;
      Label4: TLabel;
      dblcdUsureg: TwwDBLookupComboDlg;
      pnlusureg: TPanel;
      meusureg: TMaskEdit;
      pnlOfides: TPanel;
      Label3: TLabel;
      dblcUniDesc: TwwDBLookupCombo;
      edtunidesc: TEdit;
      ppdb1: TppDBPipeline;
      ppr1: TppReport;
      ppd1: TppDesigner;
      DBGrid: TDBGrid;
      ppr2: TppReport;
      ppr3: TppReport;
      ppr4: TppReport;
      ppParameterList1: TppParameterList;
      ppParameterList2: TppParameterList;
      ppParameterList3: TppParameterList;
      ppParameterList4: TppParameterList;
      ppr5: TppReport;
      ppParameterList5: TppParameterList;
      ppr6: TppReport;
      ppParameterList6: TppParameterList;
      ppr7: TppReport;
      ppParameterList7: TppParameterList;
      ppr8: TppReport;
      ppParameterList8: TppParameterList;
      ppr9: TppReport;
      ppParameterList9: TppParameterList;
      ppHeaderBand2: TppHeaderBand;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable6: TppSystemVariable;
      ppDBText12: TppDBText;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      ppLine20: TppLine;
      ppDBCalc13: TppDBCalc;
      ppDBCalc14: TppDBCalc;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLine21: TppLine;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppGroupFooterBand3: TppGroupFooterBand;
      ppLine6: TppLine;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLabel25: TppLabel;
      ppHeaderBand4: TppHeaderBand;
      ppLabel36: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppSystemVariable10: TppSystemVariable;
      ppSystemVariable11: TppSystemVariable;
      ppSystemVariable12: TppSystemVariable;
      ppDBText19: TppDBText;
      ppLine14: TppLine;
      ppLine17: TppLine;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLabel45: TppLabel;
      ppDetailBand4: TppDetailBand;
      ppDBText23: TppDBText;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppDBText31: TppDBText;
      ppSummaryBand4: TppSummaryBand;
      ppGroup5: TppGroup;
      ppGroupHeaderBand5: TppGroupHeaderBand;
      ppGroupFooterBand5: TppGroupFooterBand;
      ppLine18: TppLine;
      ppDBCalc11: TppDBCalc;
      ppDBCalc12: TppDBCalc;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLine19: TppLine;
      ppHeaderBand3: TppHeaderBand;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppSystemVariable7: TppSystemVariable;
      ppSystemVariable8: TppSystemVariable;
      ppSystemVariable9: TppSystemVariable;
      ppDBText18: TppDBText;
      ppLine11: TppLine;
      ppLine12: TppLine;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLabel37: TppLabel;
      ppLabel30: TppLabel;
      ppDetailBand3: TppDetailBand;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBText24: TppDBText;
      ppDBText25: TppDBText;
      ppSummaryBand3: TppSummaryBand;
      ppLine15: TppLine;
      ppDBCalc9: TppDBCalc;
      ppDBCalc10: TppDBCalc;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLine16: TppLine;
      ppGroup4: TppGroup;
      ppGroupHeaderBand4: TppGroupHeaderBand;
      ppGroupFooterBand4: TppGroupFooterBand;
      ppLine13: TppLine;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppLabel117: TppLabel;
      ppHeaderBand8: TppHeaderBand;
      ppLabel89: TppLabel;
      ppLabel90: TppLabel;
      ppLabel91: TppLabel;
      ppSystemVariable22: TppSystemVariable;
      ppSystemVariable23: TppSystemVariable;
      ppSystemVariable24: TppSystemVariable;
      ppDBText54: TppDBText;
      ppLine37: TppLine;
      ppLine38: TppLine;
      ppLabel92: TppLabel;
      ppLabel93: TppLabel;
      ppLabel94: TppLabel;
      ppLabel95: TppLabel;
      ppLabel96: TppLabel;
      ppDetailBand8: TppDetailBand;
      ppDBText55: TppDBText;
      ppDBText56: TppDBText;
      ppDBText57: TppDBText;
      ppDBText58: TppDBText;
      ppDBText59: TppDBText;
      ppSummaryBand8: TppSummaryBand;
      ppLine39: TppLine;
      ppDBCalc30: TppDBCalc;
      ppDBCalc31: TppDBCalc;
      ppLabel97: TppLabel;
      ppLabel98: TppLabel;
      ppLine40: TppLine;
      ppGroup10: TppGroup;
      ppGroupHeaderBand10: TppGroupHeaderBand;
      ppGroupFooterBand10: TppGroupFooterBand;
      ppLine41: TppLine;
      ppDBCalc32: TppDBCalc;
      ppDBCalc33: TppDBCalc;
      ppLabel118: TppLabel;
      ppHeaderBand5: TppHeaderBand;
      ppLabel26: TppLabel;
      ppLabel50: TppLabel;
      ppLabel51: TppLabel;
      ppSystemVariable13: TppSystemVariable;
      ppSystemVariable14: TppSystemVariable;
      ppSystemVariable15: TppSystemVariable;
      ppDBText32: TppDBText;
      ppDBText33: TppDBText;
      ppLine10: TppLine;
      ppLine22: TppLine;
      ppLabel52: TppLabel;
      ppLabel53: TppLabel;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel58: TppLabel;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppDBText34: TppDBText;
      ppDBText35: TppDBText;
      ppDBText36: TppDBText;
      ppDBText37: TppDBText;
      ppDBText44: TppDBText;
      ppDBText46: TppDBText;
      ppDBText47: TppDBText;
      ppDBText48: TppDBText;
      ppSummaryBand5: TppSummaryBand;
      ppGroup6: TppGroup;
      ppGroupHeaderBand6: TppGroupHeaderBand;
      ppGroupFooterBand6: TppGroupFooterBand;
      ppLine23: TppLine;
      ppLabel71: TppLabel;
      ppLine24: TppLine;
      ppDBCalc15: TppDBCalc;
      ppDBCalc16: TppDBCalc;
      ppLabel72: TppLabel;
      ppLabel73: TppLabel;
      ppLine25: TppLine;
      ppDBCalc17: TppDBCalc;
      ppDBCalc18: TppDBCalc;
      ppDBCalc23: TppDBCalc;
      ppLabel74: TppLabel;
      ppLabel75: TppLabel;
      ppLabel76: TppLabel;
      ppGroup8: TppGroup;
      ppGroupHeaderBand8: TppGroupHeaderBand;
      ppGroupFooterBand8: TppGroupFooterBand;
      ppDBText49: TppDBText;
      ppLine31: TppLine;
      ppDBCalc24: TppDBCalc;
      ppDBCalc25: TppDBCalc;
      ppLabel77: TppLabel;
      ppLabel78: TppLabel;
      ppHeaderBand7: TppHeaderBand;
      ppLabel79: TppLabel;
      ppLabel80: TppLabel;
      ppLabel81: TppLabel;
      ppSystemVariable19: TppSystemVariable;
      ppSystemVariable20: TppSystemVariable;
      ppSystemVariable21: TppSystemVariable;
      ppDBText50: TppDBText;
      ppLine32: TppLine;
      ppLine33: TppLine;
      ppLabel82: TppLabel;
      ppLabel83: TppLabel;
      ppLabel84: TppLabel;
      ppLabel85: TppLabel;
      ppLabel86: TppLabel;
      ppDetailBand7: TppDetailBand;
      ppDBText51: TppDBText;
      ppDBText52: TppDBText;
      ppDBText53: TppDBText;
      ppDBText60: TppDBText;
      ppDBText61: TppDBText;
      ppSummaryBand7: TppSummaryBand;
      ppLine34: TppLine;
      ppDBCalc26: TppDBCalc;
      ppDBCalc27: TppDBCalc;
      ppLabel87: TppLabel;
      ppLabel88: TppLabel;
      ppLine35: TppLine;
      ppGroup9: TppGroup;
      ppGroupHeaderBand9: TppGroupHeaderBand;
      ppGroupFooterBand9: TppGroupFooterBand;
      ppLine36: TppLine;
      ppDBCalc28: TppDBCalc;
      ppDBCalc29: TppDBCalc;
      ppLabel120: TppLabel;
      ppHeaderBand6: TppHeaderBand;
      ppLabel59: TppLabel;
      ppLabel60: TppLabel;
      ppSystemVariable16: TppSystemVariable;
      ppSystemVariable17: TppSystemVariable;
      ppSystemVariable18: TppSystemVariable;
      ppDBText38: TppDBText;
      ppLine26: TppLine;
      ppLine27: TppLine;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppLabel67: TppLabel;
      ppLabel122: TppLabel;
      ppLabel123: TppLabel;
      ppDetailBand6: TppDetailBand;
      ppDBText39: TppDBText;
      ppDBText40: TppDBText;
      ppDBText41: TppDBText;
      ppDBText42: TppDBText;
      ppDBText43: TppDBText;
      ppDBText74: TppDBText;
      ppDBText75: TppDBText;
      ppSummaryBand6: TppSummaryBand;
      ppLine28: TppLine;
      ppDBCalc19: TppDBCalc;
      ppDBCalc20: TppDBCalc;
      ppLabel68: TppLabel;
      ppLabel119: TppLabel;
      ppLine29: TppLine;
      ppDBCalc21: TppDBCalc;
      ppDBCalc22: TppDBCalc;
      ppGroup7: TppGroup;
      ppGroupHeaderBand7: TppGroupHeaderBand;
      ppGroupFooterBand7: TppGroupFooterBand;
      ppLine30: TppLine;
      ppDBCalc41: TppDBCalc;
      ppDBCalc42: TppDBCalc;
      ppLabel121: TppLabel;
      ppDBCalc43: TppDBCalc;
      ppDBCalc44: TppDBCalc;
      daDataModule1: TdaDataModule;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel8: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText10: TppDBText;
      ppDBText7: TppDBText;
      ppDBText11: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLine7: TppLine;
      ppLabel14: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppLine8: TppLine;
      ppLabel9: TppLabel;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppDBText73: TppDBText;
      ppLine3: TppLine;
      ppDBCalc39: TppDBCalc;
      ppDBCalc40: TppDBCalc;
      ppLabel115: TppLabel;
      ppLabel116: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel61: TppLabel;
      ppLabel110: TppLabel;
      ppLabel112: TppLabel;
      ppLabel124: TppLabel;
      ppLabel125: TppLabel;
      ppLabel126: TppLabel;
    ppHeaderBand9: TppHeaderBand;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppSystemVariable25: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppSystemVariable27: TppSystemVariable;
    ppDBText62: TppDBText;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel127: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText6: TppDBText;
    ppDBText45: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppLabel111: TppLabel;
    ppLine44: TppLine;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppDBText63: TppDBText;
    ppLabel105: TppLabel;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppDBText72: TppDBText;
    ppLine47: TppLine;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
      Procedure FormActivate(Sender: TObject);
      Procedure btnimprimirClick(Sender: TObject);
      Procedure btnaexcelClick(Sender: TObject);
      Procedure rgTipoClick(Sender: TObject);
      Procedure dblcUniDescExit(Sender: TObject);
      Procedure dblcdUsuregChange(Sender: TObject);
      Procedure btncerrarClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
   Private
    { Private declarations }
      cRep: String;
      sLink: String;
   Public
    { Public declarations }
   End;

Var
   FRepRefina: TFRepRefina;

Implementation

{$R *.dfm}
//////////////////////////////////////////////////////////////////////
// HPP_200903_COB (F1)
// forma modificada en HPP_200903_COB(F1) por Hugo Noriega
// el cambio se debe considerar como una forma nueva
// reporte de Refinanciados
//////////////////////////////////////////////////////////////////////

Uses COBDM1;

Procedure TFRepRefina.FormActivate(Sender: TObject);
Var
   xSQL: String;
Begin

   cRep := 'S';
   //sLink := '@dbprodlee ';
   sLink := '';

   dtpInicio.Date := Date;
   dtpFinal.Date := Date;

   DM1.cdsOfdes.Close;
   DM1.cdsOfdes.DataRequest('SELECT OFDESID,OFDESNOM FROM APO110 ORDER BY OFDESID');
   DM1.cdsOfdes.Open;

   xSQL := 'SELECT USERID, UPPER(USERNOM) USERNOM FROM USERTABLE WHERE AREA = ''COB''';
   DM1.cdsUser.Close;
   DM1.cdsUser.DataRequest(xSql);
   DM1.cdsUser.Open;
   dblcdusureg.LookupTable := DM1.cdsUser;
   dblcdusureg.LookupField := 'USERID';
   dblcdusureg.Selected.Clear;
   dblcdusureg.Selected.Add('USERID'#9'15'#9'Código'#9#9);
   dblcdusureg.Selected.Add('USERNOM'#9'30'#9'Descripción'#9#9);
End;

Procedure TFRepRefina.btnimprimirClick(Sender: TObject);
Var
   xSQL: String;
Begin
   DM1.cdsReporte.Close;

   If dtpInicio.Date = 0 Then
   Begin
      ShowMessage('Error : Debe ingresar la fecha de Inicio');
      Exit;
   End;
   If dtpFinal.Date = 0 Then
   Begin
      ShowMessage('Error : Debe ingresar la fecha Final');
      Exit;
   End;

   If dtpFinal.Date < dtpInicio.Date Then
   Begin
      ShowMessage('Error : Fecha Final debe ser mayor o igual a fecha de Inicio');
      Exit;
   End;

   If rgTipo.ItemIndex < 0 Then
   Begin
      ShowMessage('Error : Debe elegir un tipo de Reporte');
      Exit;
   End;

   If rgTipo.ItemIndex = 0 Then
   Begin
      If meusureg.Text = '' Then
      Begin
         ShowMessage('Error : Debe ingresar un Usuario');
         Exit;
      End;

      xSQL := 'Select USEID, ASOCODMOD, ASOTIPID, ASOAPENOM, CREDID, CRENUMCUO, TMONID, '
         + 'CREMTOOTOR, TIPCREID, CREFOTORG, USUARIO, FREG, OFDESID, CREESTADO ESTADO, ';
      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';
      xSQL := xSQL
         + 'From CRE301' + sLink + ' '
         + 'Where CREFOTORG>=''' + dtpInicio.text + ''' and CREFOTORG<=''' + dtpFinal.Text + ''' '
         + ' and NOT CREESTID IN (''13'',''04'') '
         + ' and FLGREFI=''R'' ';
      xSQL := xSQL
         + ' and USUARIO=''' + dblcdUsureg.Text + ''' '
         + 'ORDER BY USUARIO, CREFOTORG, ASOAPENOM';
      ppd1.Report := ppr1;
   End;

   If rgTipo.ItemIndex = 1 Then
   Begin
      xSQL := 'Select USUARIO, USERNOM, COUNT(*) NUM_CRE, SUM(CREMTOOTOR) CREMTOOTOR, CREFOTORG, ';

      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';

      xSQL := xSQL
         + 'From CRE301' + sLink + ' A, TGE006 B '
         + 'Where CREFOTORG>=''' + dtpInicio.text + ''' and CREFOTORG<=''' + dtpFinal.Text + ''' '
         + ' and NOT CREESTID IN (''13'',''04'') '
         + ' and FLGREFI=''R'' '
         + ' and A.USUARIO=B.USERID(+) '
         + 'Group by USUARIO, USERNOM, CREFOTORG '
         + 'Order by USUARIO, USERNOM, CREFOTORG';
      ppd1.Report := ppr2;
   End;

   If rgTipo.ItemIndex = 2 Then
   Begin
      If edtunidesc.Text = '' Then
      Begin
         ShowMessage('Error : Debe ingresar una Oficina');
         Exit;
      End;

      xSQL := 'Select a.OFDESID, B.OFDESNOM, a.USUARIO, c.USERNOM,  COUNT(*) NUM_CRE, SUM(CREMTOOTOR) CREMTOOTOR, CREFOTORG, ';

      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';

      xSQL := xSQL
         + 'From CRE301' + sLink + ' A, APO110 B, TGE006 C '
         + 'Where CREFOTORG>=''' + dtpInicio.text + ''' and CREFOTORG<=''' + dtpFinal.Text + ''' '
         + ' and NOT CREESTID IN (''13'',''04'') '
         + ' and FLGREFI=''R'' '
         + ' and a.ofdesid=''' + dblcUniDesc.Text + ''' '
         + ' and a.ofdesid=b.ofdesid(+) '
         + ' and a.USUARIO=c.USERID(+) '
         + 'Group by a.OFDESID, B.OFDESNOM, CREFOTORG, a.USUARIO, c.USERNOM '
         + 'Order by a.OFDESID, B.OFDESNOM, CREFOTORG, a.USUARIO';
      ppd1.Report := ppr3;
   End;

   If rgTipo.ItemIndex = 3 Then
   Begin
      xSQL := 'Select a.OFDESID, B.OFDESNOM, COUNT(*) NUM_CRE, SUM(CREMTOOTOR) CREMTOOTOR, CREFOTORG, ';

      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';

      xSQL := xSQL
         + 'From CRE301' + sLink + ' A, APO110 B '
         + 'Where CREFOTORG>=''' + dtpInicio.text + ''' and CREFOTORG<=''' + dtpFinal.Text + ''' '
         + ' and FLGREFI=''R'' '
         + ' and NOT CREESTID IN (''13'',''04'') '
         + ' and a.ofdesid=b.ofdesid(+) '
         + 'Group by a.OFDESID, B.OFDESNOM, CREFOTORG '
         + 'Order by a.OFDESID, B.OFDESNOM, CREFOTORG';
      ppd1.Report := ppr4;
   End;

   If rgTipo.ItemIndex = 4 Then
   Begin
      xSQL := 'Select e.dptoid, f.dptodes, COUNT(*) NUM_CRE, SUM(CREMTOOTOR) CREMTOOTOR, CREFOTORG, ';

      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';

      xSQL := xSQL
         + 'From CRE301' + sLink + ' A, APO110 B, APO201' + sLink + ' D, APO101 E, APO158 F '
         + 'Where CREFOTORG>=''' + dtpInicio.text + ''' and CREFOTORG<=''' + dtpFinal.Text + ''' '
         + ' and FLGREFI=''R'' '
         + ' and NOT CREESTID IN (''13'',''04'') '
         + ' and a.ofdesid=b.ofdesid(+) '
         + ' and a.asoid=d.asoid(+) '
         + ' and d.useid=e.useid(+) and d.uproid=e.uproid(+) and d.upagoid=e.upagoid(+) '
         + ' and e.dptoid=f.dptoid '
         + 'Group by e.dptoid, f.dptodes, CREFOTORG '
         + 'Order by e.dptoid, f.dptodes, CREFOTORG';
      ppd1.Report := ppr8;
   End;

   If rgTipo.ItemIndex = 5 Then
   Begin

      If meusureg.Text = '' Then
      Begin
         ShowMessage('Error : Debe ingresar un Usuario');
         Exit;
      End;

      xSQL := 'Select USEID, ASOCODMOD, ASOTIPID, ASOAPENOM, CREDID, NUMCUO CRENUMCUO, ''N'' TMONID, '
         + '  NUESAL CREMTOOTOR, '' '' TIPCREID, '
         + 'CASE WHEN IDRESEVAL=''0'' THEN ''SOLICITUD'' WHEN IDRESEVAL=''1'' THEN ''APROBADA'' ELSE ''DESAAPROBADA'' END ESTADO, '
         + 'CASE WHEN IDRESEVAL=''0'' THEN 1 ELSE 0 END ESTSOL, '
         + 'CASE WHEN IDRESEVAL=''1'' THEN 1 ELSE 0 END ESTAPR, '
         + 'CASE WHEN IDRESEVAL=''2'' THEN 1 ELSE 0 END ESTANU, '
         + 'CREFOTORG, A.USUARIO, A.FREG, OFDESID, ';
      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';

      xSQL := xSQL
         + 'From EVAL_REF_CAB A, APO201 B '
         + 'Where FECEVAL>=''' + dtpInicio.text + ''' and FECEVAL<=''' + dtpFinal.Text + ''' ';
      xSQL := xSQL
         + ' and A.USUARIO=''' + dblcdUsureg.Text + ''' '
         + ' and A.ASOID=B.ASOID(+) '
         + 'ORDER BY USUARIO, CREFOTORG, ASOAPENOM';
      ppd1.Report := ppr5;
   End;

   If rgTipo.ItemIndex = 6 Then
   Begin
      xSQL := 'Select a.OFDESID, B.OFDESNOM, a.USUARIO, c.USERNOM, '
         + 'COUNT(*) NUM_CRE, SUM(NUESAL) CREMTOOTOR, FECEVAL CREFOTORG, '
         + 'SUM( CASE WHEN IDRESEVAL=''0'' THEN 1 ELSE 0 END ) ESTSOL, '
         + 'SUM( CASE WHEN IDRESEVAL=''1'' THEN 1 ELSE 0 END ) ESTAPR, '
         + 'SUM( CASE WHEN IDRESEVAL=''2'' THEN 1 ELSE 0 END ) ESTANU, ';

      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';

      xSQL := xSQL
         + 'From EVAL_REF_CAB A, APO110 B, TGE006 C '
         + 'Where FECEVAL>=''' + dtpInicio.text + ''' and FECEVAL<=''' + dtpFinal.Text + ''' '
         + 'and a.ofdesid=b.ofdesid(+) '
         + 'and a.USUARIO=c.USERID(+) '
         + 'Group by a.OFDESID, B.OFDESNOM, FECEVAL, a.USUARIO, c.USERNOM '
         + 'Order by a.OFDESID, B.OFDESNOM, FECEVAL, a.USUARIO';
      ppd1.Report := ppr6;
   End;

   If rgTipo.ItemIndex = 7 Then
   Begin
      xSQL := 'Select e.dptoid, f.dptodes, a.USUARIO, c.USERNOM, '
         + 'COUNT(*) NUM_CRE, SUM(NUESAL) CREMTOOTOR, FECEVAL CREFOTORG, '
         + 'SUM( CASE WHEN IDRESEVAL=''0'' THEN 1 ELSE 0 END ) ESTSOL, '
         + 'SUM( CASE WHEN IDRESEVAL=''1'' THEN 1 ELSE 0 END ) ESTAPR, '
         + 'SUM( CASE WHEN IDRESEVAL=''2'' THEN 1 ELSE 0 END ) ESTANU, ';

      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';

      xSQL := xSQL
         + 'From EVAL_REF_CAB A, APO110 B, TGE006 C, APO201 D, APO101 E, APO158 F  '
         + 'Where FECEVAL>=''' + dtpInicio.text + ''' and FECEVAL<=''' + dtpFinal.Text + ''' '
         + 'and a.ofdesid=b.ofdesid(+) '
         + 'and a.USUARIO=c.USERID(+) '
         + 'and a.asoid=d.asoid(+) '
         + 'and d.useid=e.useid(+) and d.uproid=e.uproid(+) and d.upagoid=e.upagoid(+) '
         + 'and e.dptoid=f.dptoid '
         + 'Group by e.dptoid, f.dptodes, FECEVAL, a.USUARIO, c.USERNOM '
         + 'Order by e.dptoid, f.dptodes, FECEVAL, a.USUARIO';
      ppd1.Report := ppr7;
   End;

   If rgTipo.ItemIndex = 8 Then
   Begin
      xSQL := 'Select A.USEID, A.ASOCODMOD, A.ASOTIPID, A.ASOAPENOM, A.CREDID, '
             +'       A.CRENUMCUO, A.TMONID, A.CREMTOOTOR, A.TIPCREID, A.CREFOTORG, '
             +'       A.USUARIO, A.FREG, A.OFDESID, B.MENCREANU, B.FECCREANU, ';
      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';
      xSQL := xSQL
         + ' From CRE301 A ' + sLink+','
         + '      EVAL_REF_CAB B '
         + ' Where A.CREFOTORG>=''' + dtpInicio.text + ''' and A.CREFOTORG<=''' + dtpFinal.Text + ''' '
         + '   and A.CREESTID IN (''13'',''04'') '
         + '   and A.FLGREFI=''R'' '
         + '   and B.ASOID(+)=A.ASOID and B.CREDNEW(+)=A.CREDID '
         + ' ORDER BY A.CREFOTORG, A.ASOAPENOM ';
      ppd1.Report := ppr9;
   End;

   screen.Cursor := crHourGlass;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   screen.Cursor := crDefault;

   If DM1.cdsReporte.Recordcount <= 0 Then
   Begin
      ShowMessage('No existe información para el filtro seleccionado');
      Exit;
   End;

   If cRep = 'N' Then Exit;

   ppDB1.DataSource := DM1.dsReporte;

   If rgTipo.ItemIndex = 0 Then ppr1.Print;
   If rgTipo.ItemIndex = 1 Then ppr2.Print;
   If rgTipo.ItemIndex = 2 Then ppr3.Print;
   If rgTipo.ItemIndex = 3 Then ppr4.Print;
   If rgTipo.ItemIndex = 4 Then ppr8.Print;
   If rgTipo.ItemIndex = 5 Then ppr5.Print;
   If rgTipo.ItemIndex = 6 Then ppr6.Print;
   If rgTipo.ItemIndex = 7 Then ppr7.Print;
   If rgTipo.ItemIndex = 8 Then ppr9.Print;
//  ppd1.ShowModal;

   ppDB1.DataSource := Nil;
End;

Procedure TFRepRefina.btnaexcelClick(Sender: TObject);
Begin
   cRep := 'N';
   btnimprimirClick(Self);
   cRep := 'S';

   If Not DM1.cdsReporte.Active Then Exit;

   If DM1.cdsReporte.Recordcount > 0 Then
      DM1.HojaExcel('REPORTE', DM1.dsReporte, DBGrid);
End;

Procedure TFRepRefina.rgTipoClick(Sender: TObject);
Begin
   pnlUsuario.Visible := False;
   pnlOfides.Visible := False;
   If (rgTipo.ItemIndex = 0) Or (rgTipo.ItemIndex = 5) Then
   Begin
      pnlUsuario.Visible := True;
   End;
   If rgTipo.ItemIndex = 2 Then
   Begin
      pnlOfides.Visible := True;
   End;
End;

Procedure TFRepRefina.dblcUniDescExit(Sender: TObject);
Begin
   If length(dblcunidesc.Text) > 0 Then
   Begin
      DM1.cdsOfDes.setkey;
      DM1.cdsOfDes.fieldbyname('OFDESID').AsString := dblcunidesc.Text;
      If Not DM1.cdsOfDes.gotokey Then
      Begin
         showmessage('Unidad Desconcentrada no es válida');
         edtunidesc.text := '';
         dblcunidesc.setfocus;
         exit;
      End;
      edtunidesc.text := DM1.cdsOfDes.fieldbyname('OFDESNOM').AsString;
   End;
End;

Procedure TFRepRefina.dblcdUsuregChange(Sender: TObject);
Begin
   If Trim(dblcdusureg.Text) = '' Then
   Begin
      dblcdusureg.Text := '';
      meusureg.Text := '';
   End;

   If DM1.cdsUser.Locate('USERID', dblcdusureg.Text, []) Then
      meusureg.Text := DM1.cdsUser.FieldByName('USERNOM').AsString
End;

Procedure TFRepRefina.btncerrarClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFRepRefina.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsUser.Close;
   DM1.cdsOfdes.Close;
   DM1.cdsReporte.Close;
   Action := caFree;
End;

procedure TFRepRefina.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppD1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

End.

