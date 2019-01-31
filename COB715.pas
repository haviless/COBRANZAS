unit COB715;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn,Math, StdCtrls, Spin,db,mant,
  Mask, wwdbedit, Wwdotdot, wwdbdatetimepicker, wwdblook, Wwdbdlg, ppCache,
  ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppBands, ppVar, ppCtrls, ppPrnabl, ppEndUsr;

type
  TFToolRefina = class(TForm)
    pnlRefinanciacion: TPanel;
    rgTipo: TRadioGroup;
    lblAlmes: TLabel;
    seAno: TSpinEdit;
    seMes: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbeDescOfDes: TwwDBEdit;
    dbdtpFechaSol: TwwDBDateTimePicker;
    dblcdOfDes: TwwDBLookupComboDlg;
    Timer1: TTimer;
    rgPago: TRadioGroup;
    z2bbtnVencidas: TfcShapeBtn;
    z2bbtnRefinan: TfcShapeBtn;
    z2bbtnSinRefinan: TfcShapeBtn;
    pprptARefinan: TppReport;
    ppdbepARefinan: TppBDEPipeline;
    z2bbtnBuscar: TfcShapeBtn;
    lblSegui: TLabel;
    edtSegui: TEdit;
    z2bbtnSegui: TfcShapeBtn;
    rgMes: TRadioGroup;
    pnlBuscaAso: TPanel;
    lblAso: TLabel;
    edtAsociado: TEdit;
    z2bbtnAcepta: TfcShapeBtn;
    ppDesigner1: TppDesigner;
    ppdbepDRefinan: TppBDEPipeline;
    ppdbepSRefinan: TppBDEPipeline;
    pprptDRefinan: TppReport;
    pprptSRefinan: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel11: TppLabel;
    ppLine5: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel12: TppLabel;
    ppLabel8: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    ppHeaderBand3: TppHeaderBand;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel31: TppLabel;
    ppLine9: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLine10: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine11: TppLine;
    ppLabel40: TppLabel;
    ppDBText46: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine12: TppLine;
    ppLabel41: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine13: TppLine;
    rgCambiar: TRadioGroup;
    ppHeaderBand2: TppHeaderBand;
    ppDBText13: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel18: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine1: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine6: TppLine;
    ppLabel26: TppLabel;
    ppDBText30: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine7: TppLine;
    ppLabel27: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine8: TppLine;
    procedure z2bbtnAceptaClick(Sender: TObject);
    procedure edtAsociadoExit(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dblcdOfDesExit(Sender: TObject);
    procedure dbdtpFechaSolExit(Sender: TObject);
    procedure z2bbtnVencidasClick(Sender: TObject);
    procedure z2bbtnRefinanClick(Sender: TObject);
    procedure z2bbtnSinRefinanClick(Sender: TObject);
    procedure z2bbtnBuscarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure z2bbtnSeguiClick(Sender: TObject);
    procedure edtSeguiExit(Sender: TObject);
    procedure rgCambiarClick(Sender: TObject);
  private
    { Private declarations }
    xTrue : Boolean;
    procedure CargaBusqueda; //** CARGA LA DATA DEL ASOCIADO
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
  public
    { Public declarations }
    xMesReg, xAnoReg, xDiaReg : Word;
    wTipoAso, wTipAsoId, wAsoCodPago, wAsoCodAux, wAsoApeNom, wAsoCodMod, wAsoId,
    wUseId, wUproId, wUpagoId, wAsoDni, wAsoDir, wEstCivId, wAsoTelf1, wAsoTelf2,
    wDptoidUse, wCedDir, wIngMensual, wCredidA, wFecCompro : String;
    CodigoAso, xTipoAsoA, xTipoAsoC, xForpago, xEstid1, xEstado1,xEstid0, xEstado0 : String;
    xEstid2, xEstado2, xEstid3, xEstado3 : String;
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
  end;

var
  FToolRefina: TFToolRefina;
  wTCambioRefe : Double;
  wNueForpago : String;

implementation

uses COBDM1, COB001, COB305, COB309;

{$R *.DFM}

procedure TFToolRefina.z2bbtnAceptaClick(Sender: TObject);
var
   sSQL, xSQL : String;
   xMesP, xAnoP : Integer;
begin
   If rgTipo.ItemIndex <= - 1 Then
    begin
     Beep;
     MessageDlg('Seleccione el Tipo de Refinanciamiento', mtInformation, [mbOk], 0);
     rgTipo.SetFocus;
     Exit;
    end;

   If rgTipo.ItemIndex = 1 Then
    begin
     If Length(Trim(edtAsociado.Text)) = 0 Then
      begin
       Beep;
       MessageDlg('Ingrese el Nombre del Asociado', mtInformation, [mbOk], 0);
       edtAsociado.SetFocus;
       Exit;
      end;
    end;

   If seAno.Value < 2000 Then
    begin
     Beep;
     MessageDlg('El Año debe ser Mayor a 2000', mtInformation, [mbOk], 0);
     seAno.SetFocus;
//     ShowMessage('Faltan Parámetros');
     Exit;
    end;
   If (seMes.Value < 1) or (seMes.Value > 12) Then
    begin
     Beep;
     MessageDlg('El Mes debe ser Mayor que 1 y Menor o Igual a 12', mtInformation, [mbOk], 0);
     seMes.SetFocus;
//     ShowMessage('Faltan Parámetros');
     Exit;
    end;
   If rgMes.ItemIndex <= - 1 Then
    begin
     Beep;
     MessageDlg('Seleccione el Mes de la 1ra Cuota', mtInformation, [mbOk], 0);
//     ShowMessage('Faltan Parámetros');
     Exit;
    end;

   if MessageDlg('Seguro(a) de Procesar el Refinanciamiento ?', mtConfirmation, [mbYes, MbNo], 0) = mrYes Then
    begin
     try
      Screen.Cursor := crHourGlass;
      FRefinanciacion := TFRefinanciacion.Create(Self);
      //** N me indica que SON NO PAGADOS O VENCIDOS
      xEstado0 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('N'), 'ESTDES');
      xEstid0  := DM1.cdsQry.FieldByName('ESTID').AsString;
      //** N me indica que SON NO PAGADOS O VENCIDOS
      xEstado1 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('V'), 'ESTDES');
      xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;

      //** N me indica que SON NO PAGADOS O VENCIDOS
      xEstado2 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('2'), 'ESTDES');
      xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;

      //** N me indica que SON NO PAGADOS O VENCIDOS
      xEstado3 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID','FLGTIPO ='+QuotedStr('3'), 'ESTDES');
      xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;

      xForpago := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID', 'FORPAGFAPO ='+QuotedStr('SDB'), 'FORPAGOID');

      xTipoAsoA := DM1.DisplayDescrip('prvSQL', 'APO107', 'ASOTIPID', 'ASOTIPO ='+QuotedStr('A'), 'ASOTIPID');
      xTipoAsoC := DM1.DisplayDescrip('prvSQL', 'APO107', 'ASOTIPID', 'ASOTIPO ='+QuotedStr('C'), 'ASOTIPID');

      Case rgTipo.ItemIndex of
       0 : begin
            xSQL := 'SELECT C.ASOID, C.ASOAPENOM, C.CREDID, SUM(CREMTO) CREMTO, ''N'' FLGHECHO FROM CRE302 A,'
                   +' (SELECT B.ASOID,B.CREDID FROM CRE302 B, CRE303 C'
                   +' Where '
                   +' C.CREESTID = '+QuotedStr(xEstid2)+' AND C.FORPAGOID = ';
            If rgPago.ItemIndex = 1 Then
             xSQL := xSQL + QuotedStr('18')
            Else
             xSQL := xSQL + QuotedStr('01');
            xSQL := xSQL + ' AND C.ASOID = B.ASOID AND C.CREDID = B.CREDID AND C.CRENUMCUO = B.CRECUOTA AND'+
                   ' B.CREANO <= '+QuotedStr(seAno.Text)+' AND B.CREMES <= '+QuotedStr(DM1.strzero(seMes.Text,2))+
                   ' AND TO_CHAR(C.CREFOTORG,''YYYY'') >= ''1998'' '+
                   ' AND (NVL(B.CREBLOQ,''N'') = ''N''  or B.CREBLOQ = ''0'') AND'+
                   ' NOT EXISTS (SELECT H.ASOID  FROM CRE302 H ,CRE303 I'+
                   ' Where '+
                   ' I.CREESTID = '+QuotedStr(xEstid2)+' AND I.FORPAGOID = ';
            If rgPago.ItemIndex = 1 Then
             xSQL := xSQL + QuotedStr('18')
            Else
             xSQL := xSQL + QuotedStr('01');
            xSQL := xSQL + ' AND H.ASOID = B.ASOID AND (I.ASOID = H.ASOID AND'+
                   ' I.CREDID = H.CREDID AND I.CRENUMCUO = H.CRECUOTA AND'+
                   ' ((H.CREANO = '+QuotedStr(seAno.Text)+' AND H.CREMES > '+QuotedStr(DM1.strzero(seMes.Text,2))+
                   ' ) OR (H.CREANO > '+QuotedStr(seAno.Text)+')) )'+
                   ' AND TO_CHAR(C.CREFOTORG,''YYYY'') >= ''1998'' '+
                   ' AND (NVL(B.CREBLOQ,''N'') = ''N''   or B.CREBLOQ = ''0'') GROUP BY H.ASOID)'+
                   ' GROUP BY B.ASOID, B.CREDID) B, CRE303 C,'+
                   ' (SELECT D.ASOID FROM APO201 D'+
                   ' WHERE '+
                   ' ((D.ASOTIPID ='+QuotedStr(xTipoAsoA)+') OR (D.ASOTIPID ='+QuotedStr(xTipoAsoC)+
                   ' AND D.REGPENID = ''01''))';
            If rgPago.ItemIndex = 1 Then
             xSQL := xSQL + ' AND D.SITCTA = ''A'' AND NVL(D.VARIASCUOT,''N'') = ''N'') D'
            Else
             begin
              If (seMes.Value - 1) = 0 Then
               begin
               xMesP := 12;
               xAnoP := seAno.Value -1;
               end
              Else
               begin
                xMesP := seMes.Value;
                xAnoP := seAno.Value;
               end;
              xSQL := xSQL +
                      ' AND NVL(D.VARIASCUOT,''N'') = ''N'') D, (SELECT E.ASOID FROM APO301 E WHERE APOSEC >= '+
                      QuotedStr(IntToStr(xAnoP))+'||'+QuotedStr(dm1.strzero(IntToStr(xMesP),2))+' ) E';
             end;

            xSQL := xSQL +
                   ' WHERE A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND'+
                   ' A.ASOID = C.ASOID AND A.CREDID = C.CREDID AND A.ASOID = D.ASOID AND';
            If rgPago.ItemIndex = 0 Then
             xSQL := xSQL + ' A.ASOID = E.ASOID AND ';

            xSQL := xSQL + ' (A.CREESTID = '+QuotedStr(xEstid0)+' OR A.CREESTID = '+
                    QuotedStr(xEstid1)+
                   ' OR A.CREESTID = '+QuotedStr(xEstid2)+' OR A.CREESTID = '+
                   QuotedStr(xEstid3)+') AND A.FORPAGOID = ';
            If rgPago.ItemIndex = 1 Then
             xSQL := xSQL + QuotedStr('18')
            Else
             xSQL := xSQL + QuotedStr('01');

            xSQL := xSQL + ' GROUP BY C.ASOID,C.ASOAPENOM,C.CREDID ';
           end;
       1 : begin
            xSQL := 'Select C.ASOID,C.ASOCODMOD, C.ASOAPENOM, C.TIPCREID, C.CREDID, C.CREFOTORG,'+
                   ' C.CREMTOGIR, A.CRECUOTA, A.CREMTO MTOCUOTA, C.CRENUMCUO, A.CREESTADO FROM CRE302 A,'+
                   ' (SELECT B.ASOID, B.CREDID FROM CRE302 B, CRE303 C Where '+
                   ' C.ASOID ='+QuotedStr(CodigoAso)+' AND B.ASOID ='+QuotedStr(CodigoAso)+' AND '+
                   ' C.CREDID = B.CREDID AND C.CRENUMCUO = B.CRECUOTA AND'+
                   ' ((B.CREANO < '+QuotedStr(seAno.Text)+
                   ' ) OR (B.CREANO = '+QuotedStr(seAno.Text)+' AND B.CREMES <= '+QuotedStr(DM1.strzero(seMes.Text,2))+' )'+
                   ' and to_char(c.crefotorg,''YYYY'') >= ''1998'' and (nvl(b.crebloq,''N'') = ''N'' or b.crebloq = ''0'') )'+
                   ' GROUP BY B.ASOID,B.CREDID) B, CRE303 C,'+
                   ' (SELECT D.ASOID FROM APO201 D '+
                   ' WHERE D.ASOID ='+QuotedStr(CodigoAso)+' AND'+
                   ' ((D.ASOTIPID ='+QuotedStr(xTipoAsoA)+') OR (D.ASOTIPID='+QuotedStr(xTipoAsoc)+
                   ' AND D.REGPENID =''01''))';
{ wmc 20031006
            If rgPago.ItemIndex = 1 Then
            begin
             xSQL := xSQL + ' AND D.SITCTA =''A'' and NVL(D.VARIASCUOT,''N'') = ''N'') D' ;
            end
            Else
             begin
              If (seMes.Value - 1) = 0 Then
               begin
               xMesP := 12;
               xAnoP := seAno.Value -1;
               end
              Else
               begin
                xMesP := seMes.Value;
                xAnoP := seAno.Value;
               end;
              xSQL := xSQL +' and NVL(D.VARIASCUOT,''N'') = ''N'') D';
             end;
}

            If rgCambiar.ItemIndex = 1 Then
            begin
             xSQL := xSQL + ' AND D.SITCTA =''A'' and NVL(D.VARIASCUOT,''N'') = ''N'') D' ;
            end
            Else
             begin
              If (seMes.Value - 1) = 0 Then
               begin
               xMesP := 12;
               xAnoP := seAno.Value -1;
               end
              Else
               begin
                xMesP := seMes.Value;
                xAnoP := seAno.Value;
               end;
              xSQL := xSQL +' and NVL(D.VARIASCUOT,''N'') = ''N'') D';
             end;

            xSQL := xSQL +
                   ',(SELECT COUNT(E.CREDID) TOTAL,E.ASOID'+
                   ' FROM CRE303 E'+
                   ' WHERE E.ASOID ='+QuotedStr(CodigoAso)+' AND E.CREESTID = '+
                   QuotedStr(xEstid2)+' GROUP BY ASOID HAVING COUNT(E.CREDID) >= 1) E'+
                   ' WHERE '+
                   ' A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND '+
                   ' A.ASOID = C.ASOID AND A.CREDID = C.CREDID AND A.ASOID=D.ASOID'+
                   ' AND A.ASOID=E.ASOID'+
                   ' AND (A.CREESTID = '+QuotedStr(xEstid0)+' OR A.CREESTID = '+QuotedStr(xEstid1)+
                   ' OR A.CREESTID = '+QuotedStr(xEstid2)+' OR A.CREESTID = '+QuotedStr(xEstid3)+
                   ') AND A.FORPAGOID = ';
            If rgPago.ItemIndex = 1 Then
             xSQL := xSQL + QuotedStr('18')
            Else
             xSQL := xSQL + QuotedStr('01');

            /////// aca empieza el sSQL
            sSQL := 'Select C.CREDID, C.CREMTOSOL, ''N'' FLGHECHO FROM CRE302 A,'+
                   ' (SELECT B.ASOID, B.CREDID FROM CRE302 B, CRE303 C Where '+
                   ' C.ASOID ='+QuotedStr(CodigoAso)+' AND B.ASOID ='+QuotedStr(CodigoAso)+' AND '+
                   ' C.CREDID = B.CREDID AND C.CRENUMCUO = B.CRECUOTA AND'+
                   ' ((B.CREANO < '+QuotedStr(seAno.Text)+
                   ' ) OR (B.CREANO = '+QuotedStr(seAno.Text)+' AND B.CREMES <= '+QuotedStr(DM1.strzero(seMes.Text,2))+' ))'+
                   ' GROUP BY  B.ASOID, B.CREDID) B, CRE303 C,'+
                   ' (SELECT D.ASOID FROM APO201 D WHERE D.ASOID ='+QuotedStr(CodigoAso)+' AND'+
                   ' ((D.ASOTIPID ='+QuotedStr(xTipoAsoA)+') OR (D.ASOTIPID ='+QuotedStr(xTipoAsoc)+
                   ' AND D.REGPENID =''01''))';
{ wmc 20031006
            If rgPago.ItemIndex = 1 Then
             sSQL := sSQL + ' AND D.SITCTA =''A'') D '
            Else
             sSQL := sSQL + ') D ';
}
            sSQL := sSQL + ') D ';
            sSQL := sSQL + ' WHERE A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND '+
                   ' A.ASOID = C.ASOID AND A.CREDID = C.CREDID AND A.ASOID = D.ASOID'+
                   ' AND (A.CREESTID = '+QuotedStr(xEstid0)+' OR A.CREESTID = '+QuotedStr(xEstid1)+
                   ' OR A.CREESTID = '+QuotedStr(xEstid2)+' OR A.CREESTID = '+QuotedStr(xEstid3)+
                   ') AND A.FORPAGOID = ';
            If rgPago.ItemIndex = 1 Then
             sSQL := sSQL + QuotedStr('18')
            Else
             sSQL := sSQL + QuotedStr('01');

            sSQL := sSQL + ' GROUP BY C.CREDID, C.CREMTOSOL';
           end;
      end;

    // DM1.cdsQry4.PacketRecords := -1;
    // DM1.cdsSolicitudes.PacketRecords := -1;
      If rgTipo.ItemIndex = 0 Then
       begin
        FRefinanciacion.Height := 568;
        //FRefinanciacion.dbgCredito.Selected.Add('ASOCODMOD'#9'10'#9'Código ~Modular');
        FRefinanciacion.dbgCredito.Selected.Add('ASOAPENOM'#9'25'#9'Apellidos y Nombre');
        //FRefinanciacion.dbgCredito.Selected.Add('TIPCREID'#9'2'#9'Tipo ~Crédito');
        FRefinanciacion.dbgCredito.Selected.Add('CREDID'#9'15'#9'Crédito');
        //FRefinanciacion.dbgCredito.Selected.Add('CRECUOTA'#9'2'#9'#~Cuota');
        FRefinanciacion.dbgCredito.Selected.Add('CREMTO'#9'10'#9'Monto~Saldo');
        //FRefinanciacion.dbgCredito.Selected.Add('CREESTADO'#9'20'#9'Estado~Cuota');
        DM1.cdsQry3.Close;
        DM1.cdsQry3.DataRequest(xSQL);
        DM1.cdsQry3.Open;
        If DM1.cdsQry3.RecordCount = 0 Then
         begin
          Beep;
          MessageDlg('No Existen Datos a Procesar', mtInformation, [mbOk], 0);
          Exit;
         end;
        //DM1.cdsSolicitudes.Open;
       end
      Else
       begin
        FRefinanciacion.Height := 363;
        DM1.cdsSolicitudes.Close;
        DM1.cdsSolicitudes.DataRequest(xSQL);
        DM1.cdsSolicitudes.Open;
        DM1.cdsQry4.close;
        DM1.cdsQry4.DataRequest(sSQL);
        DM1.cdsQry4.Open;
        If DM1.cdsSolicitudes.RecordCount = 0 Then
         begin
          Beep;
          MessageDlg('No Existen Datos para el Asociado '+edtAsociado.Text, mtInformation, [mbOk], 0);
          Exit;
         end;
       end;
    Finally
     Screen.Cursor := crDefault;
    end;

    If rgCambiar.ItemIndex = -1 then
     begin
      rgCambiar.ItemIndex := 1;
      rgCambiar.OnClick(rgCambiar);
     end;
    FRefinanciacion.ShowModal;
    FRefinanciacion.Free;
   end;
end;

procedure TFToolRefina.edtAsociadoExit(Sender: TObject);
var
   xSQL : String;
begin
   If edtAsociado.text <> '' Then
    begin
     xSQL := 'SELECT * FROM APO201'
            +' WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));
     DM1.cdsAsoX.Close;
     DM1.cdsAsoX.DataRequest(xSQL);
     DM1.cdsAsoX.Open;

     If DM1.cdsAsoX.RecordCount = 0 Then
      begin
       Beep;
       MessageDlg('No Existen Datos con el Nombre '+edtAsociado.Text, mtInformation, [mbOk], 0);
       edtAsociado.SetFocus;
       Exit;
      end;

     If DM1.cdsAsoX.RecordCount = 1 Then
      CargaBusqueda
     Else
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%')))
    end;
end;

procedure TFToolRefina.CargaBusqueda;
var
   xWhere, xSQL : String;
begin
   CodigoAso := DM1.cdsAsoX.FieldByName('ASOID').AsString;
   sSQL := 'SELECT * FROM APO201 WHERE ASOID ='+QuotedStr(CodigoAso);
   DM1.FiltraCDS(DM1.cdsAso, sSQL);

   edtAsociado.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   edtSegui.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   //** cargo el tipo de asociado
   xWhere      := 'ASOTIPID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString);
   wTipoAso    := DM1.DisplayDescrip('prvSQL', 'APO107', 'ASOTIPDES, ASOTIPID', xWhere, 'ASOTIPDES');
   wTipasoid   := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
   //** asigno las demás variables
   wAsoCodPago := DM1.cdsAso.FieldByName('ASOCODPAGO').AsString;
   wAsoCodAux  := DM1.cdsAso.FieldByName('ASOCODAUX').AsString;
   wAsoApeNom  := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   wAsoCodMod  := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   wAsoId      := DM1.cdsAso.FieldByName('ASOID').AsString;
   wUseId      := DM1.cdsAso.FieldByName('USEID').AsString;
   wUproId     := DM1.cdsAso.FieldByName('UPROID').AsString;
   wUpagoId    := DM1.cdsAso.FieldByName('UPAGOID').AsString;
   wAsoDni     := DM1.cdsAso.FieldByName('ASODNI').AsString;
   wAsoDir     := DM1.cdsAso.FieldByName('ASODIR').AsString;
   wEstCivId   := DM1.cdsAso.FieldByName('ESTCIVID').AsString;
   wAsoTelf1   := DM1.cdsAso.FieldByName('ASOTELF1').AsString;
   wAsoTelf2   := DM1.cdsAso.FieldByName('ASOTELF2').AsString;
   wIngMensual := '0.00';
   wCredidA    := '';
   wFecCompro  := '';
   xWhere      := 'USEID ='+QuotedStr(wUseid);
   wDptoidUse  := DM1.DisplayDescrip('prvSQL', 'APO101', 'DPTOID', xWhere, 'DPTOID');
   //** carga el nombre del colegio
   xSQL := 'Select CEDDIR'
          +' From APO202 Where ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   wCedDir := DM1.cdsQry.FieldByName('CEDDIR').AsString;
   xTrue := True;
end;

procedure TFToolRefina.LevantaFiltro(xCampo : String);
begin
   DM1.cdsAsoX.Close;
   FPrincipal.Mtx1  := TMant.Create(Self);
   try
    FPrincipal.Mtx1.Admin         := DM1.wAdmin;
    FPrincipal.Mtx1.User          := DM1.wUsuario;
    FPrincipal.Mtx1.TableName     := 'APO201';
    FPrincipal.Mtx1.ClientDataSet := DM1.cdsAsoX;
    FPrincipal.Mtx1.Filter        := xCampo;
    FPrincipal.Mtx1.DComC         := DM1.DCOM1;
    FPrincipal.Mtx1.Module        := DM1.wModulo;
    FPrincipal.Mtx1.Titulo 	  := 'Asociados';
    FPrincipal.Mtx.Registros      := 30;
    FPrincipal.Mtx1.SectionName	  := 'AsociadosX';
    FPrincipal.Mtx1.FileNameIni   := '\SOLCRE.INI';
    FPrincipal.Mtx1.OnEdit        := OnEditAso;
    FPrincipal.Mtx1. Execute;
   Finally
    DM1.cdsAsoX.Close;
    FPrincipal.Mtx1.Free;
   end;
   DM1.cdsAsoX.Close;
end;

procedure TFToolRefina.OnEditAso(Sender: TObject; MantFields: TFields);
begin
   CargaBusqueda;
   TMant(Sender).FMant.Close;
end;

procedure TFToolRefina.rgTipoClick(Sender: TObject);
begin
   lblAso.Visible := rgTipo.ItemIndex = 1;
   edtAsociado.Visible := rgTipo.ItemIndex = 1;
   If edtAsociado.Visible Then
    z2bbtnAcepta.Left := edtAsociado.Left + edtAsociado.Width + 5
   Else
    z2bbtnAcepta.Left := edtAsociado.Left + 5;
end;

procedure TFToolRefina.Timer1Timer(Sender: TObject);
begin
   Timer1.Enabled := False;
   rgPago.ItemIndex := 1;
   xSQL := 'Select OFDESID, OFDESNOM, OFDESABR From APO110 ORDER BY OFDESID';
   DM1.cdsOfDes.Close;
   DM1.cdsOfDes.DataRequest(xSQL);
   DM1.cdsOfDes.Open;
   dblcdOfDes.Text := '01';
   dblcdOfDes.OnExit(dblcdOfDes);
   dbdtpFechaSol.Date := xFechaSys;
   dbdtpFechaSolExit(Sender);
end;

procedure TFToolRefina.dblcdOfDesExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'OFDESID ='+QuotedStr(dblcdOfDes.Text);
   dbeDescOfDes.Text := DM1.DisplayDescrip('prvSQL', 'APO110', 'OFDESNOM', xWhere, 'OFDESNOM');
end;

procedure TFToolRefina.dbdtpFechaSolExit(Sender: TObject);
var
 xSQL : String;
begin
   //** ESTO LO UTILO EN EL CORRELATIVO COB305, NO UTILIZO EL DATE DEL CONTROL PORQUE
   //** ESTA FECHA PUEDE SER VARIABLE Y NO LA  DEL DIA
   DecodeDate(xFechaSys, xAnoReg, xMesReg, xDiaReg);
   xSQL := 'SELECT nvl('+wTipoCambio+', 0.00) CAMBIO FROM TGE107 WHERE FECHA = '+QuotedStr(DateTostr(dbdtpFechaSol.Date));
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   wTCambioRefe := DM1.cdsQry.FieldByName('CAMBIO').AsFloat;
end;

procedure TFToolRefina.z2bbtnVencidasClick(Sender: TObject);
var
 xSQL : String;
 x10 : Integer;
begin
   try
    if MessageDlg('Seguro(a) de procesar el listado de Créditos por Refinanciar', mtConfirmation, [mbYes, MbNo], 0) = mrYes Then
     begin

      Screen.Cursor := crHourGlass;
      //** N me indica que SON NO PAGADOS O VENCIDOS
      xEstado0 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('N'), 'ESTDES');
      xEstid0  := DM1.cdsQry.FieldByName('ESTID').AsString;
      //** V  me indica que SON  parciales
      xEstado1 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('V'), 'ESTDES');
      xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;

      //** N me indica que SON por cobrar
      xEstado2 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('2'), 'ESTDES');
      xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;

      //** 3 me indica que SON en proceso de cobranza
      xEstado3 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('3'),'ESTDES');
      xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;

      xSQL := 'SELECT C.ASOID, C.CREDID, SUM(A.CREMTO) TOTAL, C.CREFOTORG, C.ASOAPENOM,'+
              ' C.USEID, C.DPTOID, B.CALENDARIO, COUNT(A.CRECUOTA) CUOTAS,'+
              ' C.ASOCODMOD, C.TIPCREID, C.TMONABR,'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('01')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE ENERO DEL AÑO  ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('02')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE FEBRERO DEL AÑO   ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('03')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE MARZO DEL AÑO     ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('04')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE ABRIL DEL AÑO     ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('05')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE MAYO DEL AÑO      ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('06')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE JUNIO DEL AÑO     ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('07')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE JULIO DEL AÑO     ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('08')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE AGOSTO DEL AÑO    ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('09')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE SETIEMBRE DEL AÑO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('10')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE OCTUBRE DEL AÑO   ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('11')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE NOVIEMBRE DEL AÑO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
              ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value), 2))+' = '+QuotedStr('12')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO AL MES DE DICIEMBRE DEL AÑO ')+'||'+QuotedStr(IntToStr(seAno.Value))+
              ' END END END END END END END END END END END END TITULO,';
      If rgPago.ItemIndex = 0 Then
       xSQL := xSQL + QuotedStr('PROVINCIAS EN GENERAL - PLANILLA')+' DEPA,'
      Else
       xSQL := xSQL + QuotedStr('PROVINCIAS EN GENERAL - TELEAHORRO')+' DEPA,';
      xSQL := xSQL + QuotedStr('(')+'||D.ASOTIPID||'+QuotedStr(')')+' TIPO, E.DPTODES,'+
              ' F.CIADES,'+QuotedStr('DPTO. DE CREDITOS Y COBRANZAS')+' EQUIPO,'+
              QuotedStr('Sistema de Créditos')+' SISTEMA FROM CRE302 A,'+
              ' (SELECT B.ASOID,B.CREDID,'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('01')+' Then '+QuotedStr('ENERO ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('02')+' Then '+QuotedStr('FEBRERO ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('03')+' Then '+QuotedStr('MARZO ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('04')+' Then '+QuotedStr('ABRIL ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('05')+' Then '+QuotedStr('MAYO ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('06')+' Then '+QuotedStr('JUNIO ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('07')+' Then '+QuotedStr('JULIO ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('08')+' Then '+QuotedStr('AGOSTO ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('09')+' Then '+QuotedStr('SETIEMBRE ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('10')+' Then '+QuotedStr('OCTUBRE ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('11')+' Then '+QuotedStr('NOVIEMBRE ')+'||b.CREANO Else'+
              ' Case When MAX(b.CREMES) = '+QuotedStr('12')+' Then '+QuotedStr('DICIEMBRE ')+'||b.CREANO '+
              ' END END END END END END END END END END END END CALENDARIO'+
              ' FROM CRE302 B ,CRE303 C'+
              ' Where C.CREESTID = '+QuotedStr(xEstid2)+
              ' AND C.FORPAGOID = ';
      If rgPago.itemindex = 0 Then
       xSQL := xSQL + QuotedStr('01')
      Else
       xSQL := xSQL + QuotedStr('18');

      xSQL := xSQL +' AND C.ASOID = B.ASOID AND'+
              ' C.CREDID = B.CREDID AND C.CRENUMCUO = B.CRECUOTA AND'+
              ' B.CREANO <= '+QuotedStr(IntToStr(seAno.Value))+
              ' AND B.CREMES <= '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+
              ' AND B.FORPAGOID = ';
      If rgPago.itemindex = 0 Then
       xSQL := xSQL + QuotedStr('01')
      Else
       xSQL := xSQL + QuotedStr('18');
      xSQL := xSQL +
              ' AND TO_CHAR(C.CREFOTORG,''YYYY'') >= ''1998'' AND'+
              ' (NVL(B.CREBLOQ,''N'') = ''N''  or B.CREBLOQ = ''0'')'+
              ' GROUP BY  B.ASOID, B.CREDID, B.CREANO, B.CREMES) B,'+
              ' CRE303 C, APO201 D,APO158 E,TGE101 F'+
              ' WHERE A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.ASOID = C.ASOID AND'+
              ' A.CREDID = C.CREDID AND A.ASOID = D.ASOID AND'+
              ' (A.CREESTID = '+QuotedStr(xEstid0)+' OR A.CREESTID = '+QuotedStr(xEstid1)+
              ' OR A.CREESTID = '+QuotedStr(xEstid2)+' OR A.CREESTID = '+QuotedStr(xEstid3)+')'+
              ' AND A.FORPAGOID = ';
      If rgPago.itemindex = 0 Then
       xSQL := xSQL + QuotedStr('01')
      Else
       xSQL := xSQL + QuotedStr('18');

      xSQL := xSQL + ' AND A.ASOID = D.ASOID AND F.cntconsol = ''S'' AND'+
              ' C.DPTOID = E.DPTOID'+
              ' GROUP BY F.CIADES, C.ASOID, C.ASOCODMOD, C.ASOAPENOM, C.USEID, C.DPTOID, E.DPTODES,'+
              ' D.ASOTIPID, C.TIPCREID, C.CREDID, C.CREFOTORG, C.TMONABR, B.CALENDARIO'+
              ' ORDER BY C.DPTOID, C.USEID, C.ASOAPENOM';

      DM1.cdsQry5.IndexFieldNames := '';
      DM1.cdsQry5.Filter := '';
      DM1.cdsQry5.Filtered := False;
      DM1.cdsQry5.close;
      DM1.cdsQry5.DataRequest(xSQL);
      DM1.cdsQry5.Open;
      ppdbepARefinan.DataSource := DM1.dsQry5;
      pprptARefinan.DataPipeline := ppdbepARefinan;
      pprptARefinan.Template.FileName := wRutaRpt+'\AntesRefinan.rtm';
      pprptARefinan.Template.LoadFromFile ;
      pprptARefinan.Print;
      pprptARefinan.Stop;
      //ppDesigner1.Report := pprptARefinan;
      //ppDesigner1.Show;
      x10 := Self.ComponentCount-1;
      While x10 >= 0 do
       begin
        If Self.Components[x10].ClassName = 'TppGroup' Then
         begin
          Self.Components[x10].Free;
         end;
        x10 := x10-1;
       end;
     end;
   Finally
    Screen.Cursor := crDefault;
   end;
end;

procedure TFToolRefina.z2bbtnRefinanClick(Sender: TObject);
var
   xEstid, xEstado, xSQL : String;
   x10 : Integer;
begin
   try
    Screen.Cursor := crHourGlass;
    xEstado := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('R'),'ESTDES');
    xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
    xEstado2 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('2'),'ESTDES');
    xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
    xSql := 'select '+
            quotedstr('  ')+' tipcreid,'+
            quotedstr('          ')+' asoid,'+
            quotedstr('               ')+' numrefi,'+
            quotedstr('               ')+' credid,'+
            '0.00 mtonue,'+'0.00 mtoref,'+
            quotedstr('  ')+' dptoid,'+
            quotedstr('  ')+' useid,'+
            quotedstr('               ')+' dptodes,'+
            quotedstr('          ')+' asocodmod,'+
            quotedstr('                                                                                          ')+' asoapenom,'+
            quotedstr('  ')+' tmonid,'+
            quotedStr('    ')+' TIPO,'+
            quotedStr('                         ')+' CIADES,'+
            quotedstr('                              ')+' EQUIPO,'+
            quotedstr('                   ')+' SISTEMA,'+
            quotedstr('                   ')+' DEPA,'+
            quotedstr('                                         ')+' TITULO'+
            ' from tge901 where dume = '+quotedstr('ttt');
            dm1.cdsReporte.close;
            dm1.cdsReporte.datarequest(xSql);
            dm1.cdsReporte.open;

    xSQL := 'Select a.tipcreid, a.asoid, a.numrefi, a.credid,0.00 mtonue,0.00 mtoref,'+
           ' a.dptoid, a.useid, d.dptodes, a.asocodmod, a.asoapenom,'+
           ' a.tmonid, '+QuotedStr('(')+'||b.asotipid||'+QuotedStr(')')+' TIPO , C.CIADES, ''DPTO. DE CREDITOS Y COBRANZAS'' EQUIPO, '+
           '''Sistema de Creditos'' SISTEMA, ''LIMA Y PROVINCIAS'' DEPA,'+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('01')+' Then '+QuotedStr('SALDOS REFINANCIADOS A ENERO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('02')+' Then '+QuotedStr('SALDOS REFINANCIADOS A FEBRERO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('03')+' Then '+QuotedStr('SALDOS REFINANCIADOS A MARZO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('04')+' Then '+QuotedStr('SALDOS REFINANCIADOS A ABRIL ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('05')+' Then '+QuotedStr('SALDOS REFINANCIADOS A MAYO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('06')+' Then '+QuotedStr('SALDOS REFINANCIADOS A JUNIO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('07')+' Then '+QuotedStr('SALDOS REFINANCIADOS A JULIO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('08')+' Then '+QuotedStr('SALDOS REFINANCIADOS A AGOSTO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('09')+' Then '+QuotedStr('SALDOS REFINANCIADOS A SETIEMBRE ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('10')+' Then '+QuotedStr('SALDOS REFINANCIADOS A OCTUBRE ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('11')+' Then '+QuotedStr('SALDOS REFINANCIADOS A NOVIEMBRE ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
           ' Case When substr(refanomes,5,2) = '+QuotedStr('12')+' Then '+QuotedStr('SALDOS REFINANCIADOS A DICIEMBRE ')+'||'+QuotedStr(IntToStr(seAno.Value))+
           ' END END END END END END END END END END END END TITULO '+
           ' from cre303 a, apo201 b, TGE101 C, APO158 D '+
           ' Where  a.refanomes = '+QuotedStr(IntToStr(seAno.Value)+dm1.strzero(IntToStr(seMes.Value),2))+
           ' And a.FLGAUTOMA =';
            If rgTipo.ItemIndex = 0 Then
              xSQL := xSQL+QuotedStr('0')
            Else
              xSQL := xSQL+QuotedStr('1');

            If rgPago.ItemIndex = 1 Then
              xSQL := xSQL +' And a.forpagoid = ' + QuotedStr('18')
            Else
             xSQL := xSQL +' And a.forpagoid = ' + QuotedStr('01');

            xSQL := xSQL + ' And a.usuario = '+QuotedStr(dm1.wUsuario)+
              ' And a.asoid = b.asoid And C.cntconsol = ''S'' And A.DPTOID = D.DPTOID ';
    dm1.cdsQry1.close;
    dm1.cdsQry1.datarequest(xsql);
    dm1.cdsQry1.open;

    while not dm1.cdsQry1.eof do
     begin
      dm1.cdsreporte.insert;
      dm1.cdsreporte.FieldByName('TIPCREID').AsString  := dm1.cdsQry1.FieldByName('TIPCREID').AsString;
      dm1.cdsreporte.FieldByName('ASOID').AsString     := dm1.cdsQry1.FieldByName('ASOID').AsString;
      dm1.cdsreporte.FieldByName('NUMREFI').AsString  := dm1.cdsQry1.FieldByName('NUMREFI').AsString;
      dm1.cdsreporte.FieldByName('CREDID').AsString  := dm1.cdsQry1.FieldByName('CREDID').AsString;      
      dm1.cdsreporte.FieldByName('MTONUE').AsFloat    := dm1.cdsQry1.FieldByName('MTONUE').Asfloat;
      dm1.cdsreporte.FieldByName('MTOREF').AsFloat    := dm1.cdsQry1.FieldByName('MTOREF').Asfloat;
      dm1.cdsreporte.FieldByName('DPTOID').AsString    := dm1.cdsQry1.FieldByName('DPTOID').AsString;
      dm1.cdsreporte.FieldByName('USEID').AsString     := dm1.cdsQry1.FieldByName('USEID').AsString;
      dm1.cdsreporte.FieldByName('DPTODES').AsString   := dm1.cdsQry1.FieldByName('DPTODES').AsString;
      dm1.cdsreporte.FieldByName('ASOCODMOD').AsString := dm1.cdsQry1.FieldByName('ASOCODMOD').AsString;
      dm1.cdsreporte.FieldByName('ASOAPENOM').AsString := dm1.cdsQry1.FieldByName('ASOAPENOM').AsString;
      dm1.cdsreporte.FieldByName('TMONID').AsString    := dm1.cdsQry1.FieldByName('TMONID').AsString;
      dm1.cdsreporte.FieldByName('TIPO').AsString      := dm1.cdsQry1.FieldByName('TIPO').AsString;
      dm1.cdsreporte.FieldByName('CIADES').AsString    := dm1.cdsQry1.FieldByName('CIADES').AsString;
      dm1.cdsreporte.FieldByName('EQUIPO').AsString    := dm1.cdsQry1.FieldByName('EQUIPO').AsString;
      dm1.cdsreporte.FieldByName('SISTEMA').AsString  := dm1.cdsQry1.FieldByName('SISTEMA').AsString;
      dm1.cdsreporte.FieldByName('DEPA').AsString      := dm1.cdsQry1.FieldByName('DEPA').AsString;
      dm1.cdsreporte.FieldByName('TITULO').AsString    := dm1.cdsQry1.FieldByName('TITULO').AsString;
      dm1.cdsreporte.post;
      dm1.cdsQry1.next;
     end;

    xSql := 'Select b.asoid,b.credid,'+
          ' sum(b.crecapital+b.cremtoint+b.cremtoflat) mtoref,0 mtonue'+
          ' from cre302 b, cre303 a'+
          ' where a.refanomes = '+QuotedStr(IntToStr(seAno.Value)+dm1.strzero(IntToStr(seMes.Value),2))+
          ' AND a.FLGAUTOMA =';
    If rgTipo.ItemIndex = 0 Then
     xSQL := xSQL+QuotedStr('0')
    Else
     xSQL := xSQL+QuotedStr('1');

    If rgPago.ItemIndex = 1 Then
     xSQL := xSQL +' And a.forpagoid = '+QuotedStr('18')
    Else
     xSQL := xSQL +' And a.forpagoid = '+QuotedStr('01');

    xSQL := xSQL +' and a.usuario = '+QuotedStr(dm1.wusuario)
           +' And b.asoid = a.asoid  And b.credid = a.numrefi And b.creestid = '+QuotedStr(xEstid)
           +' Group By b.asoid, b.credid';
    dm1.cdsQry1.close;
    dm1.cdsQry1.datarequest(xsql);
    dm1.cdsQry1.open;

    dm1.cdsreporte.IndexFieldNames := 'ASOID;NUMREFI';
    while not dm1.cdsQry1.eof do
     begin
      dm1.cdsreporte.SetKey;
      dm1.cdsreporte.FieldByName('ASOID').AsString    := dm1.cdsQry1.FieldByName('ASOID').AsString;
      dm1.cdsreporte.FieldByName('NUMREFI').AsString  := dm1.cdsQry1.FieldByName('CREDID').AsString;
      If dm1.cdsreporte.GotoKey then
       begin
        dm1.cdsreporte.Edit;
        dm1.cdsreporte.FieldByName('MTOREF').AsFloat    := dm1.cdsQry1.FieldByName('MTOREF').Asfloat;
        dm1.cdsreporte.post;
       end;
      dm1.cdsQry1.next;
     end;


    xSql := 'Select b.asoid,b.credid,'+
          ' sum(b.creamort+b.creinteres+b.creflat) mtonue,0 mtoref'+
          ' from cre302 b, cre303 a'+
          ' where a.refanomes = '+QuotedStr(IntToStr(seAno.Value)+dm1.strzero(IntToStr(seMes.Value),2))+
          ' AND a.FLGAUTOMA =';
    If rgTipo.ItemIndex = 0 Then
     xSQL := xSQL+QuotedStr('0')
    Else
     xSQL := xSQL+QuotedStr('1');

    If rgPago.ItemIndex = 1 Then
     xSQL := xSQL +' And a.forpagoid = '+QuotedStr('18')
    Else
     xSQL := xSQL +' And a.forpagoid = '+QuotedStr('01');

    xSQL := xSQL +' and a.usuario = '+QuotedStr(dm1.wusuario)
           +' And b.asoid = a.asoid  And b.credid = a.credid And b.creestid = '+QuotedStr(xEstid2)
           +' Group By b.asoid, b.credid';
    dm1.cdsQry1.close;
    dm1.cdsQry1.datarequest(xsql);
    dm1.cdsQry1.open;

    dm1.cdsreporte.IndexFieldNames := 'ASOID;CREDID';
    dm1.cdsreporte.first;
    while not dm1.cdsQry1.eof do
     begin
      dm1.cdsreporte.SetKey;
      dm1.cdsreporte.FieldByName('ASOID').AsString    := dm1.cdsQry1.FieldByName('ASOID').AsString;
      dm1.cdsreporte.FieldByName('CREDID').AsString  := dm1.cdsQry1.FieldByName('CREDID').AsString;
      If dm1.cdsreporte.GotoKey then
       begin
        dm1.cdsreporte.Edit;
        dm1.cdsreporte.FieldByName('MTONUE').AsFloat    := dm1.cdsQry1.FieldByName('MTONUE').Asfloat;
        dm1.cdsreporte.post;
       end;
      dm1.cdsQry1.next;
     end;

{    xSQL := 'Select a.tipcreid, a.asoid, a.crenewid, a.credid, z.mtonue, z.mtoref,'
           +' a.dptoid, a.useid, d.dptodes, a.asocodmod, a.asoapenom,'
           +' a.tmonid, '+QuotedStr('(')+'||b.asotipid||'+QuotedStr(')')+' TIPO , C.CIADES, ''DPTO. DE CREDITOS Y COBRANZAS'' EQUIPO, '
           +'''Sistema de Creditos'' SISTEMA, ''LIMA Y PROVINCIAS'' DEPA,'
           +' Case When substr(refanomes,5,2) = '+QuotedStr('01')+' Then '+QuotedStr('SALDOS REFINANCIADOS A ENERO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '
           +' Case When substr(refanomes,5,2) = '+QuotedStr('02')+' Then '+QuotedStr('SALDOS REFINANCIADOS A FEBRERO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('03')+' Then '+QuotedStr('SALDOS REFINANCIADOS A MARZO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('04')+' Then '+QuotedStr('SALDOS REFINANCIADOS A ABRIL ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('05')+' Then '+QuotedStr('SALDOS REFINANCIADOS A MAYO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('06')+' Then '+QuotedStr('SALDOS REFINANCIADOS A JUNIO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('07')+' Then '+QuotedStr('SALDOS REFINANCIADOS A JULIO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('08')+' Then '+QuotedStr('SALDOS REFINANCIADOS A AGOSTO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('09')+' Then '+QuotedStr('SALDOS REFINANCIADOS A SETIEMBRE ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('10')+' Then '+QuotedStr('SALDOS REFINANCIADOS A OCTUBRE ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('11')+' Then '+QuotedStr('SALDOS REFINANCIADOS A NOVIEMBRE ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else '+
          ' Case When substr(refanomes,5,2) = '+QuotedStr('12')+' Then '+QuotedStr('SALDOS REFINANCIADOS A DICIEMBRE ')+'||'+QuotedStr(IntToStr(seAno.Value))+
          ' END END END END END END END END END END END END TITULO '+
          ' from cre303 a, apo201 b, TGE101 C, APO158 D ,'+
          ' (Select a.asoid,sum(e.mtoref) mtoref,sum(e.mtonue) mtonue'+
          ' from cre303 a,'+

          ' (Select b.asoid,b.credid,'+
          ' sum(b.crecapital+b.cremtoint+b.cremtoflat) mtoref,0 mtonue'+
          ' from cre302 b, cre303 a'+
          ' where a.cregencob = '+QuotedStr(xEstid)+
          ' and a.refanomes = '+QuotedStr(IntToStr(seAno.Value)+dm1.strzero(IntToStr(seMes.Value),2))+
          ' AND a.FLGAUTOMA =';
    If rgTipo.ItemIndex = 0 Then
     xSQL := xSQL+QuotedStr('0')
    Else
     xSQL := xSQL+QuotedStr('1');

    If rgPago.ItemIndex = 1 Then
     xSQL := xSQL +' And a.forpagoid = '+QuotedStr('18')
    Else
     xSQL := xSQL +' And a.forpagoid = '+QuotedStr('01');

    xSQL := xSQL +' and a.creestid = '+QuotedStr(xEstid)
           +' And b.asoid = a.asoid  And b.credid = b.credid And b.creestid = '+QuotedStr(xEstid)
           +' Group By b.asoid, b.credid'
           +' Union All'
           +' Select c.asoid,c.credid,0 mtoref, sum(c.creamort+c.creinteres+c.creflat) mtonue'
           +' From cre302 c, cre303 a'
           +' Where a.cregencob = '+QuotedStr(xEstid)
           +' And a.refanomes = '+QuotedStr(IntToStr(seAno.Value)+dm1.strzero(IntToStr(seMes.Value),2))
           +' And a.FLGAUTOMA =';
    If rgTipo.ItemIndex = 0 Then
     xSQL := xSQL+QuotedStr('0')
    Else
     xSQL := xSQL+QuotedStr('1');

    If rgPago.ItemIndex = 1 Then
     xSQL := xSQL +' And a.forpagoid = ' + QuotedStr('18')
    Else
     xSQL := xSQL +' And a.forpagoid = ' + QuotedStr('01');

    xSQL := xSQL +' And a.creestid = '+QuotedStr(xEstid)+' And'
           +' c.asoid = a.asoid And c.credid = a.crenewid And c.creestid = '+QuotedStr(xEstid2)
           +' Group By c.asoid, c.credid) E'
           +' Where a.cregencob = '+QuotedStr(xEstid)
           +' And a.refanomes = '+QuotedStr(IntToStr(seAno.Value)+dm1.strzero(IntToStr(seMes.Value),2))
           +' And a.FLGAUTOMA =';
    If rgTipo.ItemIndex = 0 Then
     xSQL := xSQL+QuotedStr('0')
    Else
     xSQL := xSQL+QuotedStr('1');

    If rgPago.ItemIndex = 1 Then
     xSQL := xSQL +' And a.forpagoid = ' + QuotedStr('18')
    Else
     xSQL := xSQL +' And a.forpagoid = ' + QuotedStr('01');

    xSQL := xSQL + ' And a.creestid = '+QuotedStr(xEstid)
           +' And a.asoid = e.asoid group By a.asoid) Z'
           +' Where  a.cregencob = '+QuotedStr(xEstid)
           +' And a.refanomes = '+QuotedStr(IntToStr(seAno.Value)+dm1.strzero(IntToStr(seMes.Value),2))
           +' And a.FLGAUTOMA =';

    If rgTipo.ItemIndex = 0 Then
     xSQL := xSQL+QuotedStr('0')
    Else
     xSQL := xSQL+QuotedStr('1');

    If rgPago.ItemIndex = 1 Then
     xSQL := xSQL +' And a.forpagoid = ' + QuotedStr('18')
    Else
     xSQL := xSQL +' And a.forpagoid = ' + QuotedStr('01');

    xSQL := xSQL + ' And a.creestid = '+QuotedStr(xEstid)
           +' And a.asoid = b.asoid And C.cntconsol = ''S'' And A.DPTOID = D.DPTOID And'
           +' a.asoid = z.asoid ORDER BY A.DPTOID, A.USEID, A.ASOAPENOM';
}
    dm1.cdsreporte.IndexFieldNames := 'DPTOID;USEID;ASOAPENOM';
    ppdbepDRefinan.DataSource := DM1.dsReporte;
    pprptDRefinan.DataPipeline := ppdbepDRefinan;
    pprptDRefinan.Template.FileName := wRutaRpt+'\Refinanciados_1.rtm';
    pprptDRefinan.Template.LoadFromFile ;
    pprptDRefinan.Print;
    pprptDRefinan.Stop;
    //ppDesigner1.Report := pprptDRefinan;
    //ppDesigner1.Show;

    x10 := Self.ComponentCount-1;
    While x10>=0 do
     begin
      If Self.Components[x10].ClassName = 'TppGroup' Then
       begin
        Self.Components[x10].Free;
       end;
      x10 := x10-1;
     end;
   Finally
    Screen.Cursor := crDefault;
    dm1.cdsreporte.IndexFieldNames := '';
    dm1.cdsreporte.close;    
   end;
end;

procedure TFToolRefina.z2bbtnSinRefinanClick(Sender: TObject);
var
   xSQL : String;
   x10 : Integer;
begin
   try
    Screen.Cursor := crHourGlass;
    //** N me indica que SON NO PAGADOS O VENCIDOS
    xEstado0 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('N'), 'ESTDES');
    xEstid0  := DM1.cdsQry.FieldByName('ESTID').AsString;
    //** V  me indica que SON  parciales
    xEstado1 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('V'), 'ESTDES');
    xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;

    //** N me indica que SON por cobrar
    xEstado2 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('2'), 'ESTDES');
    xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;

    //** 3 me indica que SON en proceso de cobranza
    xEstado3 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('3'), 'ESTDES');
    xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;

    xSQL := 'SELECT C.ASOID, C.CREDID, SUM(A.CREMTO) TOTAL, C.CREFOTORG, C.ASOAPENOM,'+
            ' C.USEID, C.DPTOID, B.CALENDARIO, COUNT(A.CRECUOTA) CUOTAS,'+
            ' C.ASOCODMOD, C.TIPCREID, C.TMONABR,'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToStr(seMes.Value), 2))+' = '+QuotedStr('01')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE ENERO DEL AÑO  ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToStr(seMes.Value),2))+' = '+QuotedStr('02')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE FEBRERO DEL AÑO   ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToStr(seMes.Value),2))+' = '+QuotedStr('03')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE MARZO DEL AÑO     ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToStr(seMes.Value),2))+' = '+QuotedStr('04')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE ABRIL DEL AÑO     ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+' = '+QuotedStr('05')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE MAYO DEL AÑO      ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+' = '+QuotedStr('06')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE JUNIO DEL AÑO     ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+' = '+QuotedStr('07')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE JULIO DEL AÑO     ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+' = '+QuotedStr('08')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE AGOSTO DEL AÑO    ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+' = '+QuotedStr('09')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE SETIEMBRE DEL AÑO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+' = '+QuotedStr('10')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE OCTUBRE DEL AÑO   ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+' = '+QuotedStr('11')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE NOVIEMBRE DEL AÑO ')+'||'+QuotedStr(IntToStr(seAno.Value))+' Else'+
            ' Case When '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+' = '+QuotedStr('12')+' Then '+QuotedStr('CUOTAS VENCIDAS Y NO PAGADAS CON CALENDARIO VENCIDO SIN REFINANCIAR AL MES DE DICIEMBRE DEL AÑO ')+'||'+QuotedStr(IntToStr(seAno.Value))+
            ' END END END END END END END END END END END END TITULO,';
    If rgPago.itemindex = 0 Then
     xSQL := xSQL + QuotedStr('PROVINCIAS EN GENERAL - PLANILLA')+' DEPA,'
    Else
     xSQL := xSQL + QuotedStr('PROVINCIAS EN GENERAL - TELEAHORRO')+' DEPA,';
    xSQL := xSQL + QuotedStr('(')+'||D.asotipid||'+QuotedStr(')')+' TIPO,E.dptodes,'+
            ' F.CIADES,'+QuotedStr('DPTO. DE CREDITOS Y COBRANZAS')+' EQUIPO,'+
            QuotedStr('Sistema de Creditos')+' SISTEMA  FROM CRE302 A,'+
            ' (SELECT B.ASOID,B.CREDID,'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('01')+' Then '+QuotedStr('ENERO ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('02')+' Then '+QuotedStr('FEBRERO ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('03')+' Then '+QuotedStr('MARZO ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('04')+' Then '+QuotedStr('ABRIL ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('05')+' Then '+QuotedStr('MAYO ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('06')+' Then '+QuotedStr('JUNIO ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('07')+' Then '+QuotedStr('JULIO ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('08')+' Then '+QuotedStr('AGOSTO ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('09')+' Then '+QuotedStr('SETIEMBRE ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('10')+' Then '+QuotedStr('OCTUBRE ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('11')+' Then '+QuotedStr('NOVIEMBRE ')+'||b.CREANO Else'+
            ' Case When MAX(b.CREMES) = '+QuotedStr('12')+' Then '+QuotedStr('DICIEMBRE ')+'||b.CREANO '+
            ' END END END END END END END END END END END END CALENDARIO'+
            ' FROM CRE302 B ,CRE303 C'+
            ' Where C.CREESTID = '+QuotedStr(xEstid2)+
            ' AND C.FORPAGOID = ';
    If rgPago.ItemIndex = 0 Then
     xSQL := xSQL + QuotedStr('01')
    Else
     xSQL := xSQL + QuotedStr('18');

    xSQL := xSQL +' AND C.ASOID = B.ASOID AND'+
            ' C.CREDID = B.CREDID AND C.CRENUMCUO = B.CRECUOTA AND'+
            ' B.CREANO <= '+QuotedStr(IntToStr(seAno.Value))+
            ' AND B.CREMES <= '+QuotedStr(DM1.StrZero(IntToSTr(seMes.Value),2))+
            ' AND B.FORPAGOID = ';
    If rgPago.ItemIndex = 0 Then
     xSQL := xSQL + QuotedStr('01')
    Else
     xSQL := xSQL + QuotedStr('18');
    xSQL := xSQL + ' GROUP BY  B.ASOID,B.CREDID,B.CREANO,B.CREMES) B,'+
            ' CRE303 C, apo201 D,APO158 E,TGE101 F'+
            ' WHERE A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.ASOID = C.ASOID AND'+
            ' A.CREDID = C.CREDID AND A.ASOID=D.ASOID AND'+
            ' (A.CREESTID = '+QuotedStr(xEstid0)+' OR A.CREESTID = '+QuotedStr(xEstid1)+
            ' OR A.CREESTID = '+QuotedStr(xEstid2)+' OR A.CREESTID = '+QuotedStr(xEstid3)+')'+
            ' AND A.FORPAGOID = ';
    If rgPago.ItemIndex = 0 Then
     xSQL := xSQL + QuotedStr('01')
    Else
     xSQL := xSQL + QuotedStr('18');

    {If rgTipo.ItemIndex = 0 Then
     xSQL := xSQL + ' AND FLGAUTOMA='+QuotedStr('0')
    Else
     xSQL := xSQL + ' AND FLGAUTOMA='+QuotedStr('1');
    }
    xSQL := xSQL + ' AND A.ASOID = D.ASOID AND F.cntconsol = ''S'' AND'+
            ' C.DPTOID = E.DPTOID'+
            ' GROUP BY F.CIADES, C.ASOID, C.ASOCODMOD, C.ASOAPENOM, C.USEID, C.DPTOID, E.DPTODES,'+
            ' D.ASOTIPID, C.TIPCREID, C.CREDID, C.CREFOTORG, C.TMONABR, B.CALENDARIO'+
            ' ORDER BY C.DPTOID, C.USEID, C.ASOAPENOM';
    DM1.cdsQry4.Close;
    DM1.cdsQry4.DataRequest(xSQL);
    DM1.cdsQry4.Open;
    ppdbepSRefinan.DataSource := DM1.dsQry4;
    pprptSRefinan.DataPipeline := ppdbepSRefinan;
    pprptSRefinan.Template.FileName := wRutaRpt+'\SinRefinan.rtm';
    pprptSRefinan.Template.LoadFromFile ;
    pprptSRefinan.Print;
    pprptSRefinan.Stop;
    //ppDesigner1.Report := pprptSRefinan;
    //ppDesigner1.Show;

    x10 := Self.ComponentCount-1;
    While x10 >= 0 do
     begin
      If Self.Components[x10].ClassName = 'TppGroup' Then
       begin
        Self.Components[x10].Free;
       end;
      x10 := x10-1;
     end;
   Finally
    Screen.Cursor := crDefault;
   end;
end;

procedure TFToolRefina.z2bbtnBuscarClick(Sender: TObject);
var
   xEstado, xEstid, xSQL : String;
begin
   Screen.Cursor := crHourGlass;
   xEstado := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('R'), 'ESTDES');
   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xSQL := 'SELECT CRE303.*, ''S'' FLGHECHO FROM CRE303 WHERE CREESTID ='+QuotedStr(xEstid) +
           ' AND CREGENCOB ='+QuotedStr(xEstid) +
           ' AND REFANOMES ='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value), 2));
   If rgPago.ItemIndex = 0 Then
    xSQL := xSQL + ' AND FORPAGOID ='+QuotedStr('01')
   Else
    xSQL := xSQL + ' AND FORPAGOID ='+QuotedStr('18');

   If rgTipo.ItemIndex = 0 Then
    xSQL := xSQL + ' AND FLGAUTOMA ='+QuotedStr('0')
   Else
    xSQL := xSQL + ' AND FLGAUTOMA ='+QuotedStr('1');

   FPrincipal.Mtx.UsuarioSQL.Clear;
   FPrincipal.Mtx.FMant.wTabla := 'CRE303';
   FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
   FPrincipal.Mtx.NewQuery;
   Screen.Cursor := crDefault;
end;

procedure TFToolRefina.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFToolRefina.z2bbtnSeguiClick(Sender: TObject);
begin
   rgCambiar.Visible := False;
   lblSegui.Visible := True;
   edtSegui.Visible := True;
   edtSegui.SetFocus;
end;

procedure TFToolRefina.edtSeguiExit(Sender: TObject);
var
   xSQL : String;
begin
   rgCambiar.Visible := True;
   xTrue := False;
   If edtSegui.Text <> '' Then
    begin
     xSQL := 'SELECT * FROM APO201'
            +' WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtSegui.Text+'%'));

     DM1.cdsAsoX.Close;
     DM1.cdsAsoX.DataRequest(xSQL);
     DM1.cdsAsoX.Open;
     If DM1.cdsAsoX.RecordCount = 1 Then
      CargaBusqueda
     Else
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(edtSegui.Text+'%')));

     edtSegui.Visible := False;
     lblSegui.Visible := False;
     If xTrue Then
      begin
       try
        FSeguiRefinan := TFSeguiRefinan.Create(Self);
        FSeguiRefinan.ShowModal;
       Finally
        FSeguiRefinan.Free;
       end;
      end;
    end;
end;

procedure TFToolRefina.rgCambiarClick(Sender: TObject);
begin
   case rgCambiar.ItemIndex of
     0 : wNueForpago := '01';
     1 : wNueForpago := '18';
   end;
end;

end.


{
c.asoid in ('+
quotedstr('0000138686')+','+quotedstr('0000138705')+','+quotedstr('0000138726')+','+quotedstr('0000130224')+','+quotedstr('0000138738')+','+quotedstr('0000138758')+','+quotedstr('0000133631')+','+quotedstr('0000139408')+','+
quotedstr('0000138790')+','+quotedstr('0000138805')+','+quotedstr('0000138813')+','+quotedstr('0000138830')+','+quotedstr('0000138848')+','+quotedstr('0000295643')+','+quotedstr('0000138880')+','+quotedstr('0000138891')+','+
quotedstr('0000138908')+','+quotedstr('0000269406')+','+quotedstr('0000138983')+','+quotedstr('0000139053')+','+quotedstr('0000269512')+','+quotedstr('0000139065')+','+quotedstr('0000139088')+','+quotedstr('0000253404')+','+
quotedstr('0000130226')+','+quotedstr('0000139143')+','+quotedstr('0000139148')+','+quotedstr('0000097447')+','+quotedstr('0000139181')+','+quotedstr('0000139192')+','+quotedstr('0000269429')+','+quotedstr('0000139200')+','+
quotedstr('0000139208')+','+quotedstr('0000139210')+','+quotedstr('0000139219')+','+quotedstr('0000139227')+','+quotedstr('0000139231')+','+quotedstr('0000139267')+','+quotedstr('0000139274')+','+quotedstr('0000139414')+','+
quotedstr('0000139420')+','+quotedstr('0000139434')+','+quotedstr('0000136683')+','+quotedstr('0000130336')+','+quotedstr('0000139512')+','+quotedstr('0000139530')+','+quotedstr('0000139563')+','+quotedstr('0000135075')+','+
quotedstr('0000158055')+','+quotedstr('0000250042')+','+quotedstr('0000134784')+','+quotedstr('0000097443')+','+quotedstr('0000263040')+','+quotedstr('0000139794')+','+quotedstr('0000139809')+','+quotedstr('0000139835')+','+
quotedstr('0000139839')+','+quotedstr('0000269521')+','+quotedstr('0000139860')+','+quotedstr('0000130307')+','+quotedstr('0000096673')+','+quotedstr('0000158293')+','+quotedstr('0000131141')+','+quotedstr('0000131268')+','+
quotedstr('0000135858')+','+quotedstr('0000140400')+','+quotedstr('0000140478')+','+quotedstr('0000140433')+','+quotedstr('0000140534')+','+quotedstr('0000140536')+','+quotedstr('0000140571')+','+quotedstr('0000140607')+','+
quotedstr('0000140611')+','+quotedstr('0000140064')+','+quotedstr('0000140090')+','+quotedstr('0000140157')+','+quotedstr('0000140159')+','+quotedstr('0000140176')+','+quotedstr('0000133754')+','+quotedstr('0000096192')+','+
quotedstr('0000140237')+','+quotedstr('0000140243')+','+quotedstr('0000275164')+','+quotedstr('0000156829')+','+quotedstr('0000156902')+','+quotedstr('0000157008')+','+quotedstr('0000157037')+','+quotedstr('0000157077')+','+
quotedstr('0000157090')+','+quotedstr('0000157139')+','+quotedstr('0000158601')+','+quotedstr('0000157166')+','+quotedstr('0000157223')+','+quotedstr('0000230963')+','+quotedstr('0000157247')+','+quotedstr('0000157251')+','+
quotedstr('0000158211')+','+quotedstr('0000278904')+') and'
}
