// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB986C
// Formulario                    : FInvCreOtorg
// Fecha de Creación             : 01/02/2016
// Autor                         : Ricardo Medina
// Objetivo                      : Consulta de Creditos Otorgados
//                               :
// Actualizaciones:
//Inicio HPC_201604_COB
unit COB986C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls,
  Grids, DBGrids,db,Wwdbigrd,wwdbdatetimepicker,ComCtrls,Mask, wwdblook, Wwdbdlg,
  Wwdbgrid;
type
  TFInvCreOtorg = class(TForm)
    GroupBox1: TGroupBox;
    fcShapeBtn3: TfcShapeBtn;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    chkAnulados: TCheckBox;
    chkContabilizados: TCheckBox;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    btnFiltrar: TBitBtn;
    rgtipaso: TRadioGroup;
    dbgCreditos: TwwDBGrid;
    dtgData: TDBGrid;
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbdtpInicioChange(Sender: TObject);
    procedure dbdtpFinalChange(Sender: TObject);
    procedure chkAnuladosClick(Sender: TObject);
    procedure rgtipasoClick(Sender: TObject);
    procedure chkContabilizadosClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Totalfoot1();
  public
    { Public declarations }
  end;

var
  FInvCreOtorg: TFInvCreOtorg;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFInvCreOtorg.btnFiltrarClick(Sender: TObject);
var xsql,xWhere:String;
begin
 Screen.Cursor := crHourglass;
 DM1.cdsQry6.EmptyDataSet;

 If dbdtpFinal.Date-dbdtpInicio.Date>31 Then
 Begin
  ShowMessage('El Rango de Fecha no debe exceder 31 días');
  Screen.Cursor := crDefault;
  exit
 End;

xWhere:='';
If rgtipaso.ItemIndex = 0 Then  xWhere := ' AND A.ASOTIPID = ''DO'' ';
If rgtipaso.ItemIndex = 1 Then  xWhere := ' AND A.ASOTIPID = ''CE'' ';
If rgtipaso.ItemIndex = 2 Then  xWhere := ' AND A.ASOTIPID = ''CO'' ';
If rgtipaso.ItemIndex = 3 Then  xWhere := '';
If Not chkAnulados.Checked   Then xWhere:=xWhere+' AND A.CREESTID NOT IN (''13'',''04'') ';
If chkContabilizados.Checked Then xWhere:=xWhere+' AND A.CNTFLAG=''S'' ';
                                
xsql:=
 'SELECT ROWNUM REG,ASOID,COD_MODULAR,APE_PAT,APE_MAT,NOMBRES,TIP_ASO_CREDITO,DPTO_LAB,PROV_LAB,DIS_LAB,'+
        'OFDESID,OFI_OTORGA,ESTADO,CONTABILIZADO,USU_OTORGA,USU_AUTORIZA,OFI_AUTORIZA,'+
        'FEC_OTORGA,USEID,USE_DESCRIPCION,FEC_INI_PAG,FEC_FIN_PAG,'+
        'NRO_AUT_ONP,CARGO,NUM_CREDITO,NUM_CUOTAS,MON_OTORGADO,MON_NOTA_ABO,MON_GIRADO,'+
        'NRO_CUO_CANC,MON_CUOTA,DNI,TIPDESEID,TIP_DESEMBOLSO,CUENTA,EST_PRI_CUO,FEC_VEN_PRI_CUO,TIPCREID,TIP_CREDITO,NUM_CRE_PARALELO,NVL(FSC,''N'') CAN_FSC '+
 'FROM '+
 '(SELECT A.ASOID,B.ASOCODMOD COD_MODULAR,B.ASOAPEPAT APE_PAT,B.ASOAPEMAT APE_MAT,B.ASONOMBRES NOMBRES,A.ASOTIPID TIP_ASO_CREDITO,'+
 'DPT.DPTODES DPTO_LAB,PRO.CIUDDES PROV_LAB,DIS.ZIPDES DIS_LAB,'+
 'A.OFDESID,OFD.OFDESNOM OFI_OTORGA,A.CREESTADO ESTADO,CASE WHEN CNTFLAG IS NOT NULL THEN ''S'' ELSE ''N'' END CONTABILIZADO,'+
 'A.USUARIO USU_OTORGA,A.USUAUTCRE USU_AUTORIZA,OFAUT.OFDESNOM OFI_AUTORIZA,'+
 'TO_CHAR(A.CREFOTORG,''DD/MON/YYYY'') FEC_OTORGA,A.USEID,C.USENOM USE_DESCRIPCION,'+
 '(SELECT MIN(CREFVEN) FROM CRE302 WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CREESTID NOT IN (''13'',''04'')) FEC_INI_PAG,'+
 '(SELECT ADD_MONTHS(MIN(CREFVEN),A.CRENUMCUO-1) FROM CRE302 WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CREESTID NOT IN (''13'',''04'')) FEC_FIN_PAG,'+
 'A.NROAUTONP NRO_AUT_ONP ,B.CARGO,A.CREDID NUM_CREDITO,A.CRENUMCUO NUM_CUOTAS,A.CREMTOOTOR MON_OTORGADO,A.CREMTONABO MON_NOTA_ABO,A.CREMTOGIR MON_GIRADO,'+
 '(SELECT COUNT(1) FROM CRE310 WHERE ASOID=A.ASOID AND FORPAGID=''15'' AND NROOPE=A.NRONABO AND CREESTID NOT IN (''13'',''04'')) NRO_CUO_CANC,'+
 ' A.CRECUOTA MON_CUOTA, B.ASODNI DNI,A.TIPDESEID,TIPDES.TIPDESEDES TIP_DESEMBOLSO,A.CRENUMCTA CUENTA,'+
 '(SELECT CREESTADO FROM CRE302 WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CRECUOTA=1) EST_PRI_CUO,'+
 '(SELECT CREFVEN   FROM CRE302 WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CRECUOTA=1) FEC_VEN_PRI_CUO,'+
 ' A.TIPCREID,TIPCRE.TIPCREDES TIP_CREDITO,'+
 '(SELECT COUNT(1) FROM CRE301 WHERE  ASOID=A.ASOID AND CREESTID=''02'' AND CREDID NOT IN (A.CREDID)) NUM_CRE_PARALELO, '+
 '(SELECT ''S''    FROM COB_FSC_DEUDA_FSC_DET DET,COB_FSC_DEUDA_FSC_CAB CAB '+
 ' WHERE DET.ASOID=A.ASOID AND DET.CRE_APL_FSC=A.CREDID AND CAB.NUM_DEU=DET.NUM_DEU AND CAB.ID_EST_FSC NOT IN (''13'',''04'') ) FSC '+
 ' FROM CRE301 A,APO201 B,APO101 C,ASO_CEN_EDU D,'+
 ' APO158 DPT,APO123 PRO,APO122 DIS,APO110 OFD,'+
 ' TGE006 USU,APO110 OFAUT,CRE104 TIPDES,CRE110 TIPCRE '+
 ' WHERE A.CREFOTORG>='''+dbdtpInicio.Text+''' AND  A.CREFOTORG<='''+dbdtpFinal.Text+''' '+ xWhere + ' AND '+
 ' B.ASOID=A.ASOID AND '+
 ' C.UPROID=A.UPROID AND C.UPAGOID=A.UPAGOID AND C.USEID=A.USEID AND '+
 ' D.CENEDUID(+)=B.CENEDUID AND '+
 ' DPT.DPTOID(+)=SUBSTR(D.UBIGEO_DIR,1,2) AND '+
 ' PRO.CIUDID(+)=SUBSTR(D.UBIGEO_DIR,1,4) AND '+
 ' DIS.ZIPID(+)=D.UBIGEO_DIR AND '+
 ' OFD.OFDESID(+)=A.OFDESID AND '+
 ' USU.USERID(+)=A.USUAUTCRE AND '+
 ' OFAUT.OFDESID(+)=USU.OFDESID AND '+
 ' TIPDES.TIPDESEID(+)=A.TIPDESEID AND '+
 ' TIPCRE.TIPCREID(+)= A.TIPCREID )';
 DM1.cdsQry6.Close;
 DM1.cdsQry6.DataRequest(XSQL);
 DM1.cdsQry6.Open;

 If  DM1.cdsQry6.RecordCount=0 Then
 Begin
  ShowMessage('No existe información para mostrar, verifique el filtro seleccionado');
  Screen.Cursor := crDefault;
  exit;
 End;
 dbgCreditos.DataSource := Dm1.dsQry6;
 TNumericField(DM1.cdsQry6.FieldByName('MON_OTORGADO')).DisplayFormat:='###,###,##0';
 TNumericField(DM1.cdsQry6.FieldByName('MON_NOTA_ABO')).DisplayFormat:='###,###,##0.00';
 TNumericField(DM1.cdsQry6.FieldByName('MON_GIRADO')).DisplayFormat:='###,###,##0.00';
 TNumericField(DM1.cdsQry6.FieldByName('MON_CUOTA')).DisplayFormat:='###,###,##0.00';
 Totalfoot1;
 Screen.Cursor := crDefault;

end;

procedure TFInvCreOtorg.FormShow(Sender: TObject);
var xsql:sTring;
begin



end;

procedure TFInvCreOtorg.FormCreate(Sender: TObject);
var xsql: String;
begin

 dbgCreditos.Selected.Clear;
 dbgCreditos.Selected.Add('REG'#9'4'#9'Reg.'#9#9);
 dbgCreditos.Selected.Add('ASOID'#9'10'#9'Cod.Asoc.'#9#9);
 dbgCreditos.Selected.Add('COD_MODULAR'#9'10'#9'Cod.Mod'#9#9);
 dbgCreditos.Selected.Add('DNI'#9'10'#9'DNI'#9#9); 
 dbgCreditos.Selected.Add('APE_PAT'#9'15'#9'Apellido Pat.'#9#9);
 dbgCreditos.Selected.Add('APE_MAT'#9'15'#9'Apellido Mat.'#9#9);
 dbgCreditos.Selected.Add('NOMBRES'#9'15'#9'Nombres'#9#9);
 dbgCreditos.Selected.Add('TIP_ASO_CREDITO'#9'02'#9'Tip~Aso~Cre.'#9#9);
 dbgCreditos.Selected.Add('DPTO_LAB'#9'15'#9'Dpto.Lab.'#9#9);
 dbgCreditos.Selected.Add('PROV_LAB'#9'15'#9'Prov.Lab.'#9#9);
 dbgCreditos.Selected.Add('DIS_LAB'#9'15'#9'Dis.Lab.'#9#9);
 dbgCreditos.Selected.Add('OFDESID'#9'02'#9'Of.'#9#9);
 dbgCreditos.Selected.Add('OFI_OTORGA'#9'15'#9'Of.Otorga'#9#9);
 dbgCreditos.Selected.Add('ESTADO'#9'10'#9'Estado'#9#9);
 dbgCreditos.Selected.Add('CAN_FSC'#9'2'#9'Can~FSC'#9#9);
 dbgCreditos.Selected.Add('CONTABILIZADO'#9'2'#9'Contab.'#9#9);
 dbgCreditos.Selected.Add('USU_OTORGA'#9'10'#9'Usuario~Otorga'#9#9);
 dbgCreditos.Selected.Add('USU_AUTORIZA'#9'10'#9'Usuario~Autoriza'#9#9);
 dbgCreditos.Selected.Add('OFI_AUTORIZA'#9'10'#9'Oficina~Autoriza'#9#9);
 dbgCreditos.Selected.Add('FEC_OTORGA'#9'10'#9'Fec.Otorga'#9#9);
 dbgCreditos.Selected.Add('USEID'#9'02'#9'Use'#9#9);
 dbgCreditos.Selected.Add('USE_DESCRIPCION'#9'10'#9'Use Descripción'#9#9);
 dbgCreditos.Selected.Add('FEC_INI_PAG'#9'10'#9'Fec.Inicio~Cronograma~Pactado'#9#9);
 dbgCreditos.Selected.Add('FEC_FIN_PAG'#9'10'#9'Fec.Final~Cronograma~Pactado'#9#9);
 dbgCreditos.Selected.Add('NRO_AUT_ONP'#9'10'#9'Nro.Aut~ONP'#9#9);
 dbgCreditos.Selected.Add('CARGO'#9'10'#9'Cargo'#9#9);
 dbgCreditos.Selected.Add('NUM_CREDITO'#9'15'#9'Número~Crédito'#9#9);
 dbgCreditos.Selected.Add('NUM_CUOTAS'#9'3'#9'Nro~Cuot.'#9#9);
 dbgCreditos.Selected.Add('MON_OTORGADO'#9'13'#9'Importe~Otorgado'#9#9);
 dbgCreditos.Selected.Add('MON_NOTA_ABO'#9'13'#9'Importe~Nota Abono'#9#9);
 dbgCreditos.Selected.Add('MON_GIRADO'#9'13'#9'Importe~Girado'#9#9);
 dbgCreditos.Selected.Add('NRO_CUO_CANC'#9'13'#9'Cuotas~Canceladas'#9#9);
 dbgCreditos.Selected.Add('MON_CUOTA'#9'10'#9'Importe~Cuota'#9#9);
 dbgCreditos.Selected.Add('TIPDESEID'#9'02'#9'Tip~Des'#9#9);
 dbgCreditos.Selected.Add('TIP_DESEMBOLSO'#9'10'#9'Desembolso'#9#9);
 dbgCreditos.Selected.Add('CUENTA'#9'10'#9'Cuenta'#9#9);
 dbgCreditos.Selected.Add('EST_PRI_CUO'#9'10'#9'Estado~Prim.Cuota'#9#9);
 dbgCreditos.Selected.Add('FEC_VEN_PRI_CUO'#9'10'#9'Fec.Venc~Prim.Cuota'#9#9);
 dbgCreditos.Selected.Add('TIPCREID'#9'02'#9'Tip~Cre'#9#9);
 dbgCreditos.Selected.Add('TIP_CREDITO'#9'10'#9'Tipo~Crédito'#9#9);
 dbgCreditos.ApplySelected;
 xsql:='SELECT 0 Reg,'+
       ' '' '' ASOID,'' ''COD_MODULAR,'' ''APE_PAT,'' '' APE_MAT,'' '' NOMBRES,'' '' TIP_ASO_CREDITO,'+
       ' '' '' DPTO_LAB,'' '' PROV_LAB,'' '' DIS_LAB,'' '' OFDESID,'' '' OFI_OTORGA,'' '' ESTADO,'+
       ' '' '' CONTABILIZADO,'' '' USU_OTORGA,'' '' USU_AUTORIZA,'' '' OFI_AUTORIZA,'+
       ' '' '' FEC_OTORGA,'' '' USEID,'' ''USE_DESCRIPCION,'' '' FEC_INI_PAG,'' '' FEC_FIN_PAG,'' '' NRO_AUT_ONP ,'' '' CARGO,'+
       ' '' '' NUM_CREDITO,'' '' NUM_CUOTAS,'' '' MON_OTORGADO,'' '' MON_NOTA_ABO,'' '' MON_GIRADO,'+
       ' '' '' NRO_CUO_CANC,'' '' MON_CUOTA,'' '' DNI,'' '' TIPDESEID,'' '' TIP_DESEMBOLSO,'' '' CUENTA,'+
       ' '' '' EST_PRI_CUO,'' '' FEC_VEN_PRI_CUO,'' '' TIPCREID,'' '' TIP_CREDITO FROM CRE301 WHERE 1=2 ';
 Dm1.cdsQry6.Close;
 Dm1.cdsQry6.DataRequest(xsql);
 Dm1.cdsQry6.Open;
 dbgCreditos.DataSource := Dm1.dsQry6;
 Totalfoot1;
 dbdtpInicio.Date := dm1.FechaSys;
 dbdtpFinal.Date  := dm1.FechaSys; 
end;

procedure TFInvCreOtorg.dbdtpInicioChange(Sender: TObject);
begin
TRY
 DM1.cdsQry6.EmptyDataSet;
Except
End;
end;

procedure TFInvCreOtorg.dbdtpFinalChange(Sender: TObject);
begin
Try
 DM1.cdsQry6.EmptyDataSet;
Except
End;
end;

procedure TFInvCreOtorg.chkAnuladosClick(Sender: TObject);
begin
 DM1.cdsQry6.EmptyDataSet;
end;

procedure TFInvCreOtorg.rgtipasoClick(Sender: TObject);
begin
 DM1.cdsQry6.EmptyDataSet;
end;

procedure TFInvCreOtorg.chkContabilizadosClick(Sender: TObject);
begin
 DM1.cdsQry6.EmptyDataSet;
end;

procedure TFInvCreOtorg.BitBtn5Click(Sender: TObject);
begin
   dtgData.DataSource:=Dm1.dsQry6 ;
   If Dm1.CdsQry6.RecordCount=0 Then
   Begin
    ShowMessage('No existen registros para exportar, verifique' );
    exit;
   End;
   DM1.HojaExcel('Inventario de Cred. Otorgados',dtgData.DataSource,dtgData);
end;

procedure TFInvCreOtorg.fcShapeBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFInvCreOtorg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Dm1.cdsQry6.Close;
end;

procedure TFInvCreOtorg.Totalfoot1;
 var B: TBookmark;
 ximp_girado,ximp_nota_abono,ximp_Otorgado: Currency;
begin

   B := DM1.cdsQry6.GetBookmark;
   DM1.cdsQry6.DisableControls;
   DM1.cdsQry6.First;

   ximp_girado      := 0;
   ximp_nota_abono  := 0;
   ximp_Otorgado    := 0;

   While NOT DM1.cdsQry6.Eof DO
   Begin
     ximp_girado      := ximp_girado+DM1.cdsQry6.FieldByname('MON_GIRADO').ascurrency;
     ximp_nota_abono  := ximp_nota_abono+DM1.cdsQry6.FieldByname('MON_NOTA_ABO').ascurrency;
     ximp_Otorgado    := ximp_Otorgado+DM1.cdsQry6.FieldByname('MON_OTORGADO').ascurrency;
     DM1.cdsQry6.Next;
   End;
   dbgCreditos.ColumnByName('USE_DESCRIPCION').FooterValue := 'Totales:';
   dbgCreditos.ColumnByName('MON_GIRADO').FooterValue   := FormatCurr('###,##0.#0', ximp_girado);
   dbgCreditos.ColumnByName('MON_NOTA_ABO').FooterValue := FormatCurr('###,##0.#0', ximp_nota_abono);
   dbgCreditos.ColumnByName('MON_OTORGADO').FooterValue := FormatCurr('###,##0.#0', ximp_Otorgado);

   DM1.cdsQry6.GotoBookmark(B);
   DM1.cdsQry6.EnableControls;
   DM1.cdsQry6.FreeBookmark(B);

end;

end.
//Final HPC_201604_COB
