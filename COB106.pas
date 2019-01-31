// Inicio: HPP_200920_COB - SAR2009-0432 - DAD-IR-2009-0112
// AUTOR: Isaac Revilla
// FECHA DE CAMBIO: 12/6/2009
// Mantenimiento de Ugeles
Unit COB106;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid;

Type
   TFDistritos = Class(TForm)
      dbgDistritos: TwwDBGrid;
      Procedure FormActivate(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FDistritos: TFDistritos;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFDistritos.FormActivate(Sender: TObject);
Begin
   dbgDistritos.DataSource := DM1.dsQryMantUgel;
   dbgDistritos.Selected.Clear;
   dbgDistritos.Selected.Add('DPTOID'#9'5'#9'Dpto'#9#9);
   dbgDistritos.Selected.Add('DEPARTAMENTO'#9'25'#9'Nombre Dpto'#9#9);
   dbgDistritos.Selected.Add('CIUDID'#9'5'#9'Prov'#9#9);
   dbgDistritos.Selected.Add('PROVINCIA'#9'25'#9'Nombre Provincia'#9#9);
   dbgDistritos.Selected.Add('DISTID'#9'8'#9'Dist'#9#9);
   dbgDistritos.Selected.Add('DISTRITO'#9'25'#9'Nombre Distrito'#9#9);
   dbgDistritos.ApplySelected;
End;
// Fin: HPP_200920_COB
End.

