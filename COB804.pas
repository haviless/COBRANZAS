Unit COB804;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, wwdblook, DB,
   fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, ppEndUsr, ppDB, ppDBPipe,
   ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCtrls,
   ppVar, ppPrnabl, ppCache, ppParameter;

Type
   TFSectZona = Class(TForm)
      grpZonas: TGroupBox;
      dbgZonas: TwwDBGrid;
      dbgZonasIButton: TwwIButton;
      pnlAdicionaZonas: TPanel;
      GroupBox2: TGroupBox;
      dbgAdicionaZonas: TwwDBGrid;
      Shape2: TShape;
      Button1: TButton;
      Label3: TLabel;
      grpControl2: TGroupBox;
      Shape1: TShape;
      Label2: TLabel;
      fcSAnula: TfcShapeBtn;
      grpControl1: TGroupBox;
      Label1: TLabel;
      DBlsectorista: TwwDBLookupCombo;
      btnActualiza: TfcShapeBtn;
      // HPP_200909_COB - realizado por IREVILLA
      RepSectorista: TppReport;
      BDEP1: TppBDEPipeline;
      DSG1: TppDesigner;
      fcbtnImprime: TfcShapeBtn;
      ppParameterList1: TppParameterList;
      ppHeaderBand1: TppHeaderBand;
      ppDBText2: TppDBText;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppShape2: TppShape;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppDetailBand1: TppDetailBand;
      ppShape1: TppShape;
      ppDBText1: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppDBCalc1: TppDBCalc;
      ppFooterBand1: TppFooterBand;
      fcbtnSalir: TfcShapeBtn;
      Procedure FormActivate(Sender: TObject);
      Procedure dbgZonasIButtonClick(Sender: TObject);
      Procedure dbgZonasDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure fcSAnulaClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure Button1Click(Sender: TObject);
      Procedure btnActualizaClick(Sender: TObject);
      Procedure ActivaRegZonas;
      Procedure btnCerrarClick(Sender: TObject);

      // Inicio: HPP_200909_COB - realizado por RMEDINA
      Procedure fcbtnImprimeClick(Sender: TObject);
      Procedure fcbtnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
      // Fin: HPP_200909_COB

   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FSectZona: TFSectZona;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFSectZona.FormActivate(Sender: TObject);
Var
   xsql: String;
Begin
   XSQL := 'SELECT USERID,USERNOM,AREA,ORIGEN,NIVEL,PASSWORD,USROPE,ACTIVO,USRMTO,'
         + '       USRREGL,IDDGT,NVL_DGT,ZONORIOPE '
         + '  FROM USERTABLE '
         + ' WHERE AREA = ''COB'' AND NIVEL = ''03'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

   XSQL := 'SELECT ''N''FLAG,A.UPROID,A.UPAGOID,B.UPAGONOM,A.ESTADO,A.SECTORISTA '
          +'  FROM COB_USU_ZONA_DES_PLA A,APO103 B '
          +' WHERE SECTORISTA = ''XXXXXXX'' '
          +'   AND A.UPROID   = B.UPROID(+) '
          +'   AND A.UPAGOID  = B.UPAGOID(+) '
          +' ORDER by UPROID,UPAGOID';
   DM1.cdsGrupos.Close;
   DM1.cdsGrupos.DataRequest(XSQL);
   DM1.cdsGrupos.Open;

   DBlsectorista.Text := DM1.wUsuario;
   ActivaRegZonas;

   dbgZonas.ControlType.Add('FLAG;CheckBox;S;N');
   dbgZonas.Selected.Add('UPROID'#9'5'#9'U.Pro.');
   dbgZonas.Selected.Add('UPAGOID'#9'5'#9'U.Pag.');
   dbgZonas.Selected.Add('UPAGONOM'#9'25'#9'Nombre.');
   dbgZonas.Selected.Add('FLAG'#9'2'#9'X');
   dbgZonas.DataSource := dm1.dsGrupos;
End;

Procedure TFSectZona.dbgZonasIButtonClick(Sender: TObject);
Var
   XSQL: String;
Begin
   grpControl2.Enabled := False;
   grpControl1.Enabled := False;
   grpZonas.Enabled := False;

   // Inicio: HPP_200909_COB - realizado por RMEDINA
  { XSQL:='Select ''N''FLAG,A.UPROID,A.UPAGOID,A.UPAGONOM '+
         ' From APO103 A '+
         ' Where NOT EXISTS (SELECT * FROM COB_USU_ZONA_DES_PLA WHERE UPROID=A.UPROID AND UPAGOID=A.UPAGOID AND ESTADO IS NULL ) OR '+
         ' EXISTS (SELECT * FROM COB_USU_ZONA_DES_PLA WHERE UPROID=A.UPROID AND UPAGOID=A.UPAGOID AND ESTADO IS NOT NULL AND SECTORISTA<> '''+DBlsectorista.Text+''') ORDER BY UPROID,UPAGOID ';
   }

   xSQL := 'SELECT ''N'' FLAG,A.UPROID, A.UPAGOID, A.UPAGONOM '
          +'From APO103 A '
          +'Where NOT EXISTS (SELECT UPROID,UPAGOID '
          +'                    FROM COB_USU_ZONA_DES_PLA '
          +'                   WHERE UPROID = A.UPROID AND UPAGOID = A.UPAGOID) '
          +'       or EXISTS (SELECT UPROID,UPAGOID '
          +'                    FROM COB_USU_ZONA_DES_PLA B '
          +'                   WHERE UPROID = A.UPROID AND UPAGOID = A.UPAGOID '
          +'                     AND ESTADO IS NOT NULL '
          +'                     AND TRIM(SECTORISTA) <> '+ quotedstr(DBlsectorista.Text)
          +'                     AND NOT EXISTS (SELECT UPROID,UPAGOID '
          +'                                       FROM COB_USU_ZONA_DES_PLA '
          +'                                      WHERE UPROID=B.UPROID '
          +'                                        AND UPAGOID=B.UPAGOID '
          +'                                        AND TRIM(SECTORISTA)='+quotedstr(DBlsectorista.Text)
          +'                                    ) '
          +'                  ) '
          +'ORDER BY UPROID,UPAGOID ';
   // Fin: HPP_200909_COB
   DM1.cdsUPago.Close;
   DM1.cdsUPago.IndexFieldNames := '';
   DM1.cdsUPago.DataRequest(XSQL);
   DM1.cdsUPago.Open;

   dbgAdicionaZonas.Selected.Clear;
   dbgAdicionaZonas.ControlType.Add('FLAG;CheckBox;S;N');
   dbgAdicionaZonas.Selected.Add('UPROID'#9'5'#9'U.Pro.');
   dbgAdicionaZonas.Selected.Add('UPAGOID'#9'5'#9'U.Pag.');
   dbgAdicionaZonas.Selected.Add('UPAGONOM'#9'25'#9'Nombre.');
   dbgAdicionaZonas.Selected.Add('FLAG'#9'2'#9'X');
   dbgAdicionaZonas.DataSource := DM1.dsUPago;

   pnlAdicionaZonas.Top := 131;
   pnlAdicionaZonas.Left := 20;
   pnlAdicionaZonas.Visible := True;
End;

Procedure TFSectZona.dbgZonasDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If Length(Trim(DM1.cdsGrupos.FieldByName('ESTADO').AsString)) > 0 Then
   Begin
      dbgZonas.Canvas.Brush.Color := clInfoBk;
      dbgZonas.Canvas.Font.Color := clBlack;
      dbgZonas.DefaultDrawDataCell(Rect, Field, State);
   End;
End;

Procedure TFSectZona.fcSAnulaClick(Sender: TObject);
Var
   XSQL: String;
   b: TBookmark;
Begin

   b := DM1.cdsGrupos.GetBookmark;
   DM1.cdsGrupos.DisableControls;
   DM1.cdsGrupos.First;

   While Not DM1.cdsGrupos.Eof Do
   Begin

      If DM1.cdsGrupos.FieldByName('Flag').AsString = 'S' Then

      Begin
          //si esta desactivado lo puede activar
         If Length(Trim(DM1.cdsGrupos.FieldByName('ESTADO').AsString)) > 0 Then
         Begin

         // verifica si esta activado por otro sectorista
            xSQL := 'SELECT SECTORISTA,UPROID,UPAGOID,USEID,USUARIO,ESTADO,FREG,HREG,USUCREA '
                  + '  FROM COB_USU_ZONA_DES_PLA '
                  + ' WHERE UPROID    ='+quotedstr(DM1.cdsGrupos.FieldByName('UPROID').AsString)
                  + '   AND UPAGOID   ='+quotedstr(DM1.cdsGrupos.FieldByName('UPAGOID').AsString)
                  + '   AND SECTORISTA<>'+quotedstr(DM1.cdsGrupos.FieldByName('SECTORISTA').AsString)
                  + '   AND ESTADO IS NULL ';
            Dm1.cdsQry1.close;
            Dm1.cdsQry1.DataRequest(xsql);
            Dm1.cdsQry1.Open;

            If Dm1.cdsQry1.RecordCount = 0 Then
            Begin
            // Lo activa nuevamente
               xSQL := 'UPDATE COB_USU_ZONA_DES_PLA '
                      +'   SET ESTADO     = Null '
                      +' WHERE UPROID     = '+quotedstr(DM1.cdsGrupos.FieldByName('UPROID').AsString)
                      +'   AND UPAGOID    = '+quotedstr(DM1.cdsGrupos.FieldByName('UPAGOID').AsString)
                      +'   AND SECTORISTA = '+quotedstr(DM1.cdsGrupos.FieldByName('SECTORISTA').AsString);
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            End;
         End
         Else
         Begin
         // Desactiva la Zona
            xSQL := 'UPDATE COB_USU_ZONA_DES_PLA '
                   +'   SET ESTADO    = ''X'' '
                   +' WHERE UPROID    = '+quotedstr(DM1.cdsGrupos.FieldByName('UPROID').AsString)
                   +'   AND UPAGOID   = '+quotedstr(DM1.cdsGrupos.FieldByName('UPAGOID').AsString)
                   +'   AND SECTORISTA= '+quotedstr(DM1.cdsGrupos.FieldByName('SECTORISTA').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         End;
      End;

      DM1.cdsGrupos.Next;
   End;

   ActivaRegZonas;
   DM1.cdsGrupos.GotoBookmark(b);
   DM1.cdsGrupos.EnableControls;
   DM1.cdsGrupos.FreeBookmark(b);
End;

Procedure TFSectZona.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   Dm1.cdsGrupos.Close;
   Dm1.cdsGrupos.IndexFieldNames := '';
   Dm1.cdsQry.Close;
   Dm1.cdsQry.IndexFieldNames    := '';
   Dm1.cdsQry1.Close;
   Dm1.cdsQry1.IndexFieldNames   := '';
   Dm1.cdsQry2.Close;
   Dm1.cdsQry2.IndexFieldNames   := '';
   Dm1.cdsUPago.Close;
   Dm1.cdsUPago.IndexFieldNames  := '';
End;

Procedure TFSectZona.Button1Click(Sender: TObject);
Begin
   grpControl2.Enabled      := True;
   grpControl1.Enabled      := True;
   grpZonas.Enabled         := True;
   pnlAdicionaZonas.Visible := False;
End;

Procedure TFSectZona.btnActualizaClick(Sender: TObject);
Var
   xsql: String;
   b: TBookmark;
Begin

   b := DM1.cdsUPago.GetBookmark;
   DM1.cdsUPago.DisableControls;
   DM1.cdsUPago.First;

   While Not dm1.cdsUPago.Eof Do
   Begin
      If Dm1.cdsUPago.FieldByName('Flag').AsString = 'S' Then
      Begin
         xsql := 'INSERT INTO COB_USU_ZONA_DES_PLA(SECTORISTA,UPROID,UPAGOID,'
                +'                                 FREG,HREG,USUCREA) '
                +'VALUES('+quotedstr(DBlsectorista.Text)+ ','
                          +quotedstr(DM1.cdsUPago.FieldByname('UPROID').AsString)+','
                          +quotedstr(DM1.cdsUPago.FieldByname('UPAGOID').AsString)+','
                          +'to_date(sysdate),sysdate,'+quotedstr(DM1.wUsuario)+')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
      DM1.cdsUPago.Next;
   End;

   DM1.cdsUPago.GotoBookmark(b);
   DM1.cdsUPago.EnableControls;
   DM1.cdsUPago.FreeBookmark(b);

   dbgZonasIButtonClick(sELF);
   ActivaRegZonas;

End;

Procedure TFSectZona.ActivaRegZonas;
Var
   XSQL: String;
Begin
   XSQL := 'SELECT ''N''FLAG,A.UPROID,A.UPAGOID,B.UPAGONOM,A.ESTADO,A.SECTORISTA  '
         + '  FROM COB_USU_ZONA_DES_PLA A,APO103 B '
         + ' WHERE SECTORISTA = '+quotedstr(DBlsectorista.Text)
         + '   AND A.UPROID   = B.UPROID(+) '
         + '   AND A.UPAGOID  = B.UPAGOID(+) '
         + ' ORDER by UPROID,UPAGOID';
   DM1.cdsGrupos.Close;
   DM1.cdsGrupos.DataRequest(XSQL);
   DM1.cdsGrupos.Open;
   //If Dm1.cdsGrupos.RecordCount > 0 Then
   dbgZonasIButton.Enabled := True;
   dbgZonas.DataSource := Dm1.dsGrupos;
End;

Procedure TFSectZona.btnCerrarClick(Sender: TObject);
Begin
   close;
End;

Procedure TFSectZona.fcbtnImprimeClick(Sender: TObject);
Begin
   // Inicio: HPP_200909_COB - realizado por RMEDINA
   RepSectorista.Print;
   RepSectorista.Stop;
   // DSG1.ShowModal;
   // Fin: HPP_200909_COB
End;

Procedure TFSectZona.fcbtnSalirClick(Sender: TObject);
Begin
   Close;
End;

procedure TFSectZona.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   DSG1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

End.

