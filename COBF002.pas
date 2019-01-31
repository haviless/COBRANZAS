// Inicio: HPP_201008_COB por RMEDINA
// Memorándum 962-2009-DM-COB - SAR-2009-0893 - DAF-2010-004-COB

// Actualizaciones
// HPC_201222_COB   : Se agrega aplicación de Fondo de Desgravamen
// DPP_201217_COB   : El pase a producción se realiza a partir del HPC_201222.

Unit COBF002;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, StdCtrls, Buttons;

Type
   TfDetPresCanFSC = Class(TForm)
      dbgPresFSC: TwwDBGrid;
    BitSalir: TBitBtn;
      Procedure FormCreate(Sender: TObject);
      Procedure Actfooter1;
      Procedure FormActivate(Sender: TObject);
      Procedure dbgPresFSCCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
    procedure BitSalirClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fDetPresCanFSC: TfDetPresCanFSC;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TfDetPresCanFSC.Actfooter1;
Var
   B: TBookmark;
   xCap, xFlat, xInt, xTot: currency;
// Inicio: DPP_201217_COB
   xFdoDesg : currency;
// Fin: DPP_201217_COB
Begin

   dbgPresFSC.ColumnByName('NUM_DEU').FooterValue := 'Totales';

  //Guardo la posicion
   B := DM1.CdsGrupos.GetBookmark;
   DM1.CdsGrupos.DisableControls;
   DM1.CdsGrupos.First;
   xCap := 0;
   xFlat := 0;
// Inicio: DPP_201217_COB
   xFdoDesg := 0;
// Fin: DPP_201217_COB
   xInt := 0;
   xTot := 0;
   While Not DM1.CdsGrupos.Eof Do
   Begin
      xCap := xCap + DM1.CdsGrupos.FieldByName('CAP_APL_FSC').AsCurrency;
      xFlat := xFlat + DM1.CdsGrupos.FieldByName('FLA_APL_FSC').AsCurrency;
   // Inicio: DPP_201217_COB
      xFdoDesg := xFdoDesg + DM1.CdsGrupos.FieldByName('DSG_APL_FSC').AsCurrency;
   // Fin: DPP_201217_COB
      xInt := xInt + DM1.CdsGrupos.FieldByName('INT_APL_FSC').AsCurrency;
      xTot := xTot + DM1.CdsGrupos.FieldByName('IMP_APL_FSC').AsCurrency;
      DM1.CdsGrupos.Next
   End;
   dbgPresFSC.ColumnByName('CAP_APL_FSC').FooterValue := FormatCurr('###,##0.#0', xCap);
   dbgPresFSC.ColumnByName('FLA_APL_FSC').FooterValue := FormatCurr('###,##0.#0', xFlat);
// Inicio: DPP_201217_COB
   dbgPresFSC.ColumnByName('DSG_APL_FSC').FooterValue := FormatCurr('###,##0.#0', xFlat);
// Fin: DPP_201217_COB
   dbgPresFSC.ColumnByName('INT_APL_FSC').FooterValue := FormatCurr('###,##0.#0', xInt);
   dbgPresFSC.ColumnByName('IMP_APL_FSC').FooterValue := FormatCurr('###,##0.#0', xTot);

  //Me posiciono nuevamente en el posicion marcada
   DM1.CdsGrupos.GotoBookmark(B);
   DM1.CdsGrupos.EnableControls;
   DM1.CdsGrupos.FreeBookmark(B);
End;

Procedure TfDetPresCanFSC.FormCreate(Sender: TObject);
Begin
   dbgPresFSC.Selected.clear;
   dbgPresFSC.Selected.Add('NUM_DEU'#9'12'#9'Num.~Deuda'#9#9);
   dbgPresFSC.Selected.Add('NRO_REF_FSC'#9'10'#9'Num.~Acta'#9#9);
   dbgPresFSC.Selected.Add('CREDITO'#9'07'#9'Num.~Crédito'#9#9);
   dbgPresFSC.Selected.Add('FEC_OTORG'#9'10'#9'Fecha~Otorgamiento'#9#9);
   dbgPresFSC.Selected.Add('CAP_APL_FSC'#9'9'#9'Capital'#9#9);
   dbgPresFSC.Selected.Add('INT_APL_FSC'#9'9'#9'Interes'#9#9);
// Inicio: DPP_201217_COB
   dbgPresFSC.Selected.Add('DSG_APL_FSC'#9'9'#9'Fondo~Desgravamen'#9#9);
// Fin: DPP_201217_COB
   dbgPresFSC.Selected.Add('FLA_APL_FSC'#9'9'#9'Flat'#9#9);
   dbgPresFSC.Selected.Add('IMP_APL_FSC'#9'9'#9'Total'#9#9);
   dbgPresFSC.Selected.Add('DIA_ATRASO'#9'7'#9'Días~Atraso'#9#9);
   dbgPresFSC.Selected.Add('ULT_FEC_VEN'#9'10'#9'Ult.Fec.~Vencimiento'#9#9);
   dbgPresFSC.Selected.Add('TIPCREDES'#9'30'#9'Tipo de Crédito'#9#9);

   dbgPresFSC.DataSource := Dm1.dsGrupos;
   TNumericField(Dm1.CdsGrupos.fieldbyname('DIA_ATRASO')).DisplayFormat := '##,###';
   TNumericField(Dm1.CdsGrupos.fieldbyname('CAP_APL_FSC')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.CdsGrupos.fieldbyname('INT_APL_FSC')).DisplayFormat := '###,###.#0';
// Inicio: DPP_201217_COB
   TNumericField(Dm1.CdsGrupos.fieldbyname('DSG_APL_FSC')).DisplayFormat := '###,###.#0';
// Fin: DPP_201217_COB
   TNumericField(Dm1.CdsGrupos.fieldbyname('FLA_APL_FSC')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.CdsGrupos.fieldbyname('IMP_APL_FSC')).DisplayFormat := '###,###.#0';
End;

Procedure TfDetPresCanFSC.FormActivate(Sender: TObject);
Begin
   Actfooter1
End;

Procedure TfDetPresCanFSC.dbgPresFSCCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
   If (DM1.CdsGrupos.FieldByName('FLG_ANU_EXT').asstring = 'A') Or
      (DM1.CdsGrupos.FieldByName('FLG_ANU_EXT').asstring = 'E') Then
      AFont.Color := clRed
   Else
      AFont.Color := clGreen;

   If Highlight Then
   Begin
      ABrush.Color := clblue;
      If (DM1.CdsGrupos.FieldByName('FLG_ANU_EXT').asstring = 'A') Or
         (DM1.CdsGrupos.FieldByName('FLG_ANU_EXT').asstring = 'E') Then
      Begin
         Afont.Color := $008C8CFF;
             //AFont.Style := [fsBold];
      End
      Else
      Begin
         Afont.Color := clwhite;
             //AFont.Style := [fsBold];
      End;
   End;

End;

procedure TfDetPresCanFSC.BitSalirClick(Sender: TObject);
begin
   close;
end;


// Fin: HPP_201008_COB
End.

