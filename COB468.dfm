object FDevoInconsis: TFDevoInconsis
  Left = 459
  Top = 258
  Width = 800
  Height = 400
  Caption = 'Devoluciones de Inconsistencias con Cr'#233'ditos con Saldo Cero (0)'
  Color = 10207162
  Constraints.MaxHeight = 400
  Constraints.MaxWidth = 800
  Constraints.MinHeight = 400
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object BitSalir: TBitBtn
    Left = 671
    Top = 329
    Width = 92
    Height = 26
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 0
    OnClick = BitSalirClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object dbgData: TwwDBGrid
    Left = 10
    Top = 16
    Width = 762
    Height = 303
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgDataDblClick
  end
  object BitPrint: TBitBtn
    Left = 563
    Top = 330
    Width = 90
    Height = 26
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitPrintClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object ppDBPi2: TppDBPipeline
    UserName = 'DBPi2'
    Left = 439
    Top = 267
    object ppDBPi2ppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPi2ppField2: TppField
      FieldAlias = 'CREDID'
      FieldName = 'CREDID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object ppDBPi2ppField3: TppField
      FieldAlias = 'CRECUOTA'
      FieldName = 'CRECUOTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object ppDBPi2ppField4: TppField
      FieldAlias = 'NROOPE'
      FieldName = 'NROOPE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppDBPi2ppField5: TppField
      FieldAlias = 'CREMTOCOB'
      FieldName = 'CREMTOCOB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPi2ppField6: TppField
      FieldAlias = 'CREMTOCOBNEW'
      FieldName = 'CREMTOCOBNEW'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
  end
  object ppRepDevol: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLEXES\SOLFORMATOS\Cob\Dema\RepFrmDev.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 405
    Top = 267
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 62971
      mmPrintPosition = 0
      object lblRotPag: TppLabel
        UserName = 'lblRotPag'
        Caption = 'Paguese En Caja  : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4487
        mmLeft = 99219
        mmTop = 51329
        mmWidth = 34713
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label1'
        ReprintOnOverFlow = True
        Caption = 'Derrama Magisterial         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 5027
        mmLeft = 15346
        mmTop = 529
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label2'
        Caption = 'Equipo De Cobranzas     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 6350
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label3'
        Caption = 'Jr. Gregorio Escobedo 598  Jesus Maria -  Telf. 463-5262 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 11642
        mmWidth = 77258
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 529
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label5'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 5027
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 168540
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label7'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 168540
        mmTop = 529
        mmWidth = 1323
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 529
        mmWidth = 18256
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 5027
        mmWidth = 21696
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'LblTitulo'
        AutoSize = False
        Caption = 'DEVOLUCION APLICADA A OTRAS CUOTAS N 000741-2008-DM-COB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 22225
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label8'
        Caption = 'FECHA DOCUMENTO      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 41275
        mmWidth = 46270
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label9'
        Caption = 'DEPARTAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 46302
        mmWidth = 32343
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label10'
        Caption = 'SE'#209'OR(A)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 31221
        mmWidth = 19008
        BandType = 0
      end
      object xxx: TppLabel
        UserName = 'xxx'
        Caption = 'CODIGO MODULAR     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 36248
        mmWidth = 41783
        BandType = 0
      end
      object ppp: TppLabel
        UserName = 'p'
        Caption = 'COD. PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 41275
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label13'
        Caption = 'U. PROCESO         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 46302
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label14'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 31221
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label15'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 36248
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label16'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 41275
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 46302
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 41275
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label19'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 46302
        mmWidth = 1323
        BandType = 0
      end
      object ppLblNomGen: TppLabel
        UserName = 'Label101'
        Caption = 'HERNANDEZ PANTA ROBERTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 50006
        mmTop = 31221
        mmWidth = 58473
        BandType = 0
      end
      object ppLblCodMod: TppLabel
        UserName = 'LblCodMod'
        Caption = '1002761583'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 49742
        mmTop = 36248
        mmWidth = 21696
        BandType = 0
      end
      object ppLblFecDoc: TppLabel
        UserName = 'LblFecDoc'
        Caption = '12/07/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 49477
        mmTop = 41275
        mmWidth = 19579
        BandType = 0
      end
      object ppLblDpto: TppLabel
        UserName = 'LblDpto'
        Caption = 'PIURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 50006
        mmTop = 46302
        mmWidth = 11906
        BandType = 0
      end
      object ppLblCodPag: TppLabel
        UserName = 'LblCodPag'
        Caption = 'AAS32758'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 140759
        mmTop = 41275
        mmWidth = 18521
        BandType = 0
      end
      object ppLblUproc: TppLabel
        UserName = 'LblUproc'
        Caption = 'D.R.E. PIURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 140759
        mmTop = 46302
        mmWidth = 24342
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 56356
        mmWidth = 192882
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 62706
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label26'
        Caption = 'DESEMBOLSO        '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1852
        mmTop = 57415
        mmWidth = 35941
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label27'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 57415
        mmWidth = 1323
        BandType = 0
      end
      object ppLblDesem: TppLabel
        UserName = 'LblDesem'
        Caption = 'DEVOLUCION APLICADA A OTRAS CUOTAS - Equipo de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 48683
        mmTop = 57415
        mmWidth = 122502
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'p1'
        Caption = 'D.N.I'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 36248
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label20'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 36248
        mmWidth = 1323
        BandType = 0
      end
      object PPLblDni: TppLabel
        UserName = 'LblCodPag1'
        Caption = '02761583'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 141023
        mmTop = 36248
        mmWidth = 17198
        BandType = 0
      end
      object lblPagEn: TppLabel
        UserName = 'lblPagEn'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4487
        mmLeft = 135996
        mmTop = 51329
        mmWidth = 51594
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 61913
      mmPrintPosition = 0
      object ppMeses: TppMemo
        UserName = 'Meses'
        Caption = 
          'CONCEPTO  : APLICACION DE DEVOLUCION'#13#10#13#10'POR LAS CUOTAS DEL CREDI' +
          'TO N 122007240000965 (En Nuevos Soles)'#13#10'------------------------' +
          '---------------------------------------------'#13#10#13#10'F.Pag:22/09/200' +
          '8 Cuo.:06:  70.87'#13#10#13#10#13#10'Nota :cuota aplicada por exceso.'#13#10
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'CONCEPTO  : APLICACION DE DEVOLUCION'
          ''
          'POR LAS CUOTAS DEL CREDITO N 122007240000965 (En Nuevos Soles)'
          
            '----------------------------------------------------------------' +
            '-----'
          ''
          'F.Pag:22/09/2008 Cuo.:06:  70.87'
          ''
          ''
          'Nota :cuota aplicada por exceso.')
        Transparent = True
        mmHeight = 61913
        mmLeft = 2381
        mmTop = 0
        mmWidth = 187061
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 118269
      mmPrintPosition = 0
      object ppLTotal: TppLabel
        UserName = 'Label11'
        Caption = 'TOTAL DEVOLUCIONES APLICADAS :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2646
        mmTop = 2646
        mmWidth = 77174
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 191030
        BandType = 7
      end
      object ppLine9: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 8467
        mmWidth = 191030
        BandType = 7
      end
      object ppLblMonDev: TppLabel
        UserName = 'LblMonDev'
        Caption = '9,170.87'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 163777
        mmTop = 2117
        mmWidth = 21167
        BandType = 7
      end
      object ppLblUsuario: TppLabel
        UserName = 'LblUsuario'
        AutoSize = False
        Caption = 'Hecho Por :JBOCANEGRA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 75406
        mmWidth = 52123
        BandType = 7
      end
      object ppLine10: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 24606
        mmTop = 74613
        mmWidth = 60854
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 59267
        mmTop = 95779
        mmWidth = 74613
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label201'
        Caption = 'V'#176'.B'#176'.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 76200
        mmWidth = 12700
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 110331
        mmTop = 74613
        mmWidth = 60590
        BandType = 7
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'FIRMA DEL ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 76994
        mmTop = 101865
        mmWidth = 38100
        BandType = 7
      end
      object pplFirmaAso: TppLabel
        UserName = 'lFirmaAso'
        Caption = 'HERNANDEZ PANTA ROBERTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 71438
        mmTop = 96573
        mmWidth = 53446
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'LblMonDev1'
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 157163
        mmTop = 2117
        mmWidth = 6096
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppRepDevol
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 488
    Top = 264
  end
end
