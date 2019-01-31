object FResCobPlanilla: TFResCobPlanilla
  Left = 508
  Top = 194
  Width = 845
  Height = 486
  Caption = 'Resumen de la Cobranza por Planilla'
  Color = 10207162
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
  object GroupBox1: TGroupBox
    Left = 6
    Top = -1
    Width = 683
    Height = 114
    TabOrder = 0
    object Label2: TLabel
      Left = 13
      Top = 16
      Width = 80
      Height = 15
      Caption = 'Fecha de Inicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 13
      Top = 42
      Width = 58
      Height = 15
      Caption = 'Fecha Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 94
      Top = 18
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label4: TLabel
      Left = 94
      Top = 43
      Width = 3
      Height = 13
      Caption = ':'
    end
    object btnProcesar: TBitBtn
      Left = 584
      Top = 15
      Width = 79
      Height = 27
      Caption = '&Procesar'
      TabOrder = 3
      OnClick = btnProcesarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object rgtipaso: TRadioGroup
      Left = 351
      Top = 14
      Width = 153
      Height = 88
      Caption = ' Tipo de Asociado  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemIndex = 3
      Items.Strings = (
        'Docente           '
        'Cesante            '
        'Contratado'
        'Todos')
      ParentFont = False
      TabOrder = 2
    end
    object DtpFecIni: TwwDBDateTimePicker
      Left = 100
      Top = 16
      Width = 94
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object DtpFecFin: TwwDBDateTimePicker
      Left = 100
      Top = 40
      Width = 94
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
  end
  object dbgPrevio: TwwDBGrid
    Left = 5
    Top = 118
    Width = 820
    Height = 287
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -13
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
  end
  object btnaexcel: TBitBtn
    Left = 582
    Top = 413
    Width = 78
    Height = 27
    Caption = 'A Excel'
    Enabled = False
    TabOrder = 2
    OnClick = btnaexcelClick
    Glyph.Data = {
      76040000424DB604000000000000B60000002800000010000000100000000100
      2000000000000004000000000000000000001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBF0000BFBF0000BFBF000000000000FF00FF00FF00FF000000
      000080808000808080008080800080808000808080008080800000000000FFFF
      00000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000008080800000000000FF00FF00FF00
      FF0000000000C0C0C000C0C0C000C0C0C00080808000FFFF000000000000FFFF
      0000FFFF0000FFFF000000000000000000008080800000000000FF00FF00FF00
      FF00FF00FF0000000000C0C0C00080808000FFFF000000000000FFFF0000FFFF
      0000FFFF000000000000C0C0C000C0C0C0000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF0000000000FFFF000000000000FFFF0000FFFF0000FFFF00000000
      00008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFF000000000000FFFF0000FFFF0000FFFF000000000000C0C0
      C000000000008080800000000000FF00FF00FF00FF00FF00FF00FF00FF000000
      0000FFFF000000000000FFFF0000FFFF0000FFFF000000000000C0C0C000C0C0
      C000C0C0C000000000008080800000000000FF00FF00FF00FF0000000000FFFF
      000000000000FFFF0000FFFF0000FFFF000000000000FF00FF0000000000C0C0
      C000C0C0C000C0C0C000000000008080800000000000FF00FF00000000000000
      0000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF000000
      0000C0C0C000C0C0C000C0C0C0000000000000000000FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object BitPrint: TBitBtn
    Left = 664
    Top = 413
    Width = 78
    Height = 27
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    Enabled = False
    TabOrder = 3
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
  object BitSalir: TBitBtn
    Left = 745
    Top = 413
    Width = 79
    Height = 27
    Caption = '&Salir'
    TabOrder = 4
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
  object ppdb1: TppDBPipeline
    UserName = 'db1'
    Left = 288
    Top = 408
  end
  object ppr1: TppReport
    AutoStop = False
    DataPipeline = ppdb1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 20000
    PrinterSetup.mmMarginRight = 20000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\oaUser\COB\COBRegGlobalCob\reppla.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 320
    Top = 408
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'RESUMEN DE COBRANZA POR PLANILLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 45906
        mmTop = 14817
        mmWidth = 78317
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 529
        mmTop = 529
        mmWidth = 51266
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 149754
        mmTop = 529
        mmWidth = 14023
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 149754
        mmTop = 4498
        mmWidth = 17463
        BandType = 1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 149754
        mmTop = 8467
        mmWidth = 11113
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Sistema de Cr'#233'ditos y Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 6350
        mmWidth = 42249
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'PERIODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 29898
        mmWidth = 14552
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'AMORTIZACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 19844
        mmTop = 29898
        mmWidth = 24077
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'INTERES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 51858
        mmTop = 29898
        mmWidth = 13758
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'GASTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 76465
        mmTop = 29898
        mmWidth = 13229
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'FONDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 101600
        mmTop = 27517
        mmWidth = 11377
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'EXCESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 126207
        mmTop = 29898
        mmWidth = 13229
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'COBRADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 150019
        mmTop = 31750
        mmWidth = 16002
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 153459
        mmTop = 27517
        mmWidth = 9790
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'DESGRAV.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 100013
        mmTop = 31750
        mmWidth = 15833
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 25665
        mmWidth = 169598
        BandType = 1
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 35983
        mmWidth = 169598
        BandType = 1
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 0
        mmTop = 25665
        mmWidth = 1852
        BandType = 1
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 168011
        mmTop = 25665
        mmWidth = 1852
        BandType = 1
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 18256
        mmTop = 25665
        mmWidth = 1852
        BandType = 1
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 44979
        mmTop = 25929
        mmWidth = 1852
        BandType = 1
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 70908
        mmTop = 25929
        mmWidth = 1852
        BandType = 1
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 95250
        mmTop = 25665
        mmWidth = 1852
        BandType = 1
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 119592
        mmTop = 25665
        mmWidth = 1852
        BandType = 1
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 143934
        mmTop = 25665
        mmWidth = 1852
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ENVIO'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 2646
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CREAMORT'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 22225
        mmTop = 2646
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CREINTERES'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 2646
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CREFLAT'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 74877
        mmTop = 2646
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'MONCOBDESGRAV'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 99484
        mmTop = 2646
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTOEXC'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 124090
        mmTop = 2646
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 147109
        mmTop = 2646
        mmWidth = 20373
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 168275
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 265
        mmTop = 7408
        mmWidth = 169598
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 18256
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 44979
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 70908
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 95250
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 119592
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 143934
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 8467
        mmWidth = 169334
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 18256
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 44979
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 70908
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 95250
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 119592
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 143934
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 168011
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 265
        mmTop = 0
        mmWidth = 169334
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CREAMORT'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 21167
        mmTop = 3704
        mmWidth = 21431
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label11'
        Caption = 'TOTALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 1852
        mmTop = 3704
        mmWidth = 14097
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'CREINTERES'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 46831
        mmTop = 3704
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CREFLAT'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 72231
        mmTop = 3704
        mmWidth = 20373
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'MONCOBDESGRAV'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 96838
        mmTop = 3704
        mmWidth = 20373
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CREMTOEXC'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 121444
        mmTop = 3704
        mmWidth = 20373
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 3704
        mmWidth = 21431
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppd1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 352
    Top = 408
  end
end
