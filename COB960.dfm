object fRepReclas: TfRepReclas
  Left = 261
  Top = 235
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reclas.Contable / Aplic.  Normal y Extemporanea de Excesos'
  ClientHeight = 138
  ClientWidth = 437
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = -2
    Width = 429
    Height = 134
    TabOrder = 0
    object Label1: TLabel
      Left = 137
      Top = 82
      Width = 64
      Height = 13
      Caption = 'Fecha De Fin'
    end
    object Label2: TLabel
      Left = 12
      Top = 82
      Width = 75
      Height = 13
      Caption = 'Fecha De Inicio'
    end
    object BitPrint: TBitBtn
      Left = 341
      Top = 67
      Width = 79
      Height = 27
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      TabOrder = 0
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
      Left = 341
      Top = 99
      Width = 79
      Height = 27
      Caption = '&Salir'
      TabOrder = 1
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
    object DtpFecIni: TDateTimePicker
      Left = 12
      Top = 97
      Width = 104
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DtpFecFin: TDateTimePicker
      Left = 135
      Top = 97
      Width = 104
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object rdb02: TRadioButton
      Left = 7
      Top = 32
      Width = 257
      Height = 17
      Caption = 'Reclasificaci'#243'n Contable'
      TabOrder = 4
      OnClick = rdb02Click
    end
    object rdb01: TRadioButton
      Left = 193
      Top = 12
      Width = 213
      Height = 17
      Caption = 'Aplicaci'#243'n Extemporanea De Excesos'
      TabOrder = 5
      OnClick = rdb01Click
    end
    object pnlReclas: TPanel
      Left = 154
      Top = 33
      Width = 159
      Height = 41
      Enabled = False
      TabOrder = 6
      object rdbOD: TRadioButton
        Left = 8
        Top = 2
        Width = 145
        Height = 17
        Caption = 'Observados / Docentes'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdbOT: TRadioButton
        Left = 8
        Top = 19
        Width = 145
        Height = 17
        Caption = 'Observados / Terceros'
        TabOrder = 1
      end
    end
    object rdb00: TRadioButton
      Left = 7
      Top = 12
      Width = 176
      Height = 17
      Caption = 'Aplicaci'#243'n Normal De Excesos'
      Checked = True
      TabOrder = 7
      TabStop = True
    end
  end
  object DbRepDetx: TppDBPipeline
    DataSource = DM1.dsUPro
    UserName = 'DbRepDetx'
    Left = 24
    Top = 48
  end
  object RepDetx: TppReport
    AutoStop = False
    DataPipeline = DbRepDetx
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 56
    Top = 48
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepDetx'
    object ppHeaderBand36: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object lblTitulo01: TppLabel
        UserName = 'lblTitulo2'
        AutoSize = False
        Caption = 'APLICACION EXTEMPORANEA DE EXCESOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 529
        mmTop = 17727
        mmWidth = 189707
        BandType = 0
      end
      object ppLabel677: TppLabel
        UserName = 'Label681'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel678: TppLabel
        UserName = 'Label682'
        Caption = 'Sistema De  Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4498
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel689: TppLabel
        UserName = 'Label5702'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel732: TppLabel
        UserName = 'Label684'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel733: TppLabel
        UserName = 'Label685'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable77: TppSystemVariable
        UserName = 'SystemVariable65'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable78: TppSystemVariable
        UserName = 'SystemVariable66'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable79: TppSystemVariable
        UserName = 'SystemVariable67'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel734: TppLabel
        UserName = 'Label686'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel735: TppLabel
        UserName = 'Label687'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel736: TppLabel
        UserName = 'Label688'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLine169: TppLine
        UserName = 'Line169'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 24341
        mmWidth = 191031
        BandType = 0
      end
      object ppLine199: TppLine
        UserName = 'Line199'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 15081
        mmWidth = 191031
        BandType = 0
      end
    end
    object ppDetailBand38: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText277: TppDBText
        UserName = 'DBText288'
        DataField = 'CREDID'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3175
        mmLeft = 82815
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText279: TppDBText
        UserName = 'DBText277'
        DataField = 'ASOAPENOM'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3175
        mmLeft = 25400
        mmTop = 0
        mmWidth = 52388
        BandType = 4
      end
      object ppDBText289: TppDBText
        UserName = 'DBText278'
        DataField = 'FREG'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3175
        mmLeft = 109009
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText291: TppDBText
        UserName = 'DBText291'
        DataField = 'CREMTOCOB'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3175
        mmLeft = 146315
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText309: TppDBText
        UserName = 'DBText309'
        DataField = 'ASOCODMOD'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3260
        mmLeft = 5027
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText310: TppDBText
        UserName = 'DBText310'
        DataField = 'CREDOCPAG'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3175
        mmLeft = 128588
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'USUARIO'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 2910
        mmLeft = 170921
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppFooterBand31: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand36: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
      object ppLabel737: TppLabel
        UserName = 'Label679'
        AutoSize = False
        Caption = 'Total General              '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 102395
        mmTop = 1058
        mmWidth = 32808
        BandType = 7
      end
      object ppLine164: TppLine
        UserName = 'Line167'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 529
        mmWidth = 191030
        BandType = 7
      end
      object ppDBCalc203: TppDBCalc
        UserName = 'DBCalc222'
        DataField = 'CREMTOCOB'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3260
        mmLeft = 146315
        mmTop = 1323
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc233: TppDBCalc
        UserName = 'DBCalc238'
        DataField = 'ASOCODMOD'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3260
        mmLeft = 157957
        mmTop = 5556
        mmWidth = 10583
        BandType = 7
      end
      object ppLabel750: TppLabel
        UserName = 'Label750'
        AutoSize = False
        Caption = 'N'#176' De Movimientos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 102395
        mmTop = 5556
        mmWidth = 32808
        BandType = 7
      end
      object ppLine133: TppLine
        UserName = 'Line133'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 9790
        mmWidth = 191030
        BandType = 7
      end
    end
    object ppGroup50: TppGroup
      BreakName = 'DPTODES'
      DataPipeline = DbRepDetx
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group50'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepDetx'
      object ppGroupHeaderBand50: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12965
        mmPrintPosition = 0
        object ppDBText305: TppDBText
          UserName = 'DBText2803'
          DataField = 'DPTODES'
          DataPipeline = DbRepDetx
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3810
          mmLeft = 5027
          mmTop = 8731
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
        end
        object ppLabel831: TppLabel
          UserName = 'Label831'
          AutoSize = False
          Caption = 'Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 4763
          mmTop = 4498
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand50: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppLabel738: TppLabel
          UserName = 'Label738'
          AutoSize = False
          Caption = 'Total Por Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 102395
          mmTop = 794
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc205: TppDBCalc
          UserName = 'DBCalc205'
          DataField = 'CREMTOCOB'
          DataPipeline = DbRepDetx
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup50
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3175
          mmLeft = 146315
          mmTop = 1058
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppLabel741: TppLabel
          UserName = 'Label7501'
          AutoSize = False
          Caption = 'N'#176' De Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 102395
          mmTop = 4763
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc242: TppDBCalc
          UserName = 'DBCalc242'
          DataField = 'ASOCODMOD'
          DataPipeline = DbRepDetx
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup50
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3175
          mmLeft = 157957
          mmTop = 4763
          mmWidth = 10583
          BandType = 5
          GroupNo = 0
        end
        object ppLine196: TppLine
          UserName = 'Line196'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 2117
          mmTop = 265
          mmWidth = 191030
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup51: TppGroup
      BreakName = 'USENOM'
      DataPipeline = DbRepDetx
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group51'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepDetx'
      object ppGroupHeaderBand51: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 18785
        mmPrintPosition = 0
        object ppDBText333: TppDBText
          UserName = 'DBText333'
          DataField = 'USENOM'
          DataPipeline = DbRepDetx
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3810
          mmLeft = 5027
          mmTop = 6085
          mmWidth = 120121
          BandType = 3
          GroupNo = 1
        end
        object ppLine197: TppLine
          UserName = 'Line197'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 1323
          mmTop = 10054
          mmWidth = 191030
          BandType = 3
          GroupNo = 1
        end
        object ppLine198: TppLine
          UserName = 'Line198'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 17992
          mmWidth = 191030
          BandType = 3
          GroupNo = 1
        end
        object ppLabel744: TppLabel
          UserName = 'Label744'
          AutoSize = False
          Caption = 'Codigo Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 5027
          mmTop = 14552
          mmWidth = 19897
          BandType = 3
          GroupNo = 1
        end
        object ppLabel745: TppLabel
          UserName = 'Label745'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 25665
          mmTop = 14552
          mmWidth = 35454
          BandType = 3
          GroupNo = 1
        end
        object ppLabel747: TppLabel
          UserName = 'Label747'
          AutoSize = False
          Caption = 'N'#176' De Credito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 82815
          mmTop = 14288
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
        end
        object ppLabel748: TppLabel
          UserName = 'Label748'
          AutoSize = False
          Caption = 'de Registro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 108744
          mmTop = 14288
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel749: TppLabel
          UserName = 'Label749'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 108744
          mmTop = 10848
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel755: TppLabel
          UserName = 'Label755'
          AutoSize = False
          Caption = 'Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 128588
          mmTop = 14288
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel828: TppLabel
          UserName = 'Label828'
          AutoSize = False
          Caption = 'N'#250'mero de'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 128588
          mmTop = 10848
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel829: TppLabel
          UserName = 'Label829'
          AutoSize = False
          Caption = 'Aplicado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 153988
          mmTop = 14552
          mmWidth = 14817
          BandType = 3
          GroupNo = 1
        end
        object ppLabel830: TppLabel
          UserName = 'Label830'
          AutoSize = False
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 153988
          mmTop = 10848
          mmWidth = 14817
          BandType = 3
          GroupNo = 1
        end
        object ppLabel832: TppLabel
          UserName = 'Label832'
          AutoSize = False
          Caption = 'Use / Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 5027
          mmTop = 2117
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          AutoSize = False
          Caption = 'Usuario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 171450
          mmTop = 14552
          mmWidth = 14817
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand51: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLabel742: TppLabel
          UserName = 'Label742'
          AutoSize = False
          Caption = 'Total Por Use/Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 102394
          mmTop = 1058
          mmWidth = 32808
          BandType = 5
          GroupNo = 1
        end
        object ppLabel743: TppLabel
          UserName = 'Label7502'
          AutoSize = False
          Caption = 'N'#176' De Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 102395
          mmTop = 5027
          mmWidth = 32808
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc244: TppDBCalc
          UserName = 'DBCalc244'
          DataField = 'CREMTOCOB'
          DataPipeline = DbRepDetx
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup51
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3175
          mmLeft = 146315
          mmTop = 529
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc245: TppDBCalc
          UserName = 'DBCalc245'
          DataField = 'ASOCODMOD'
          DataPipeline = DbRepDetx
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup51
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3440
          mmLeft = 157957
          mmTop = 4498
          mmWidth = 10583
          BandType = 5
          GroupNo = 1
        end
        object ppLine166: TppLine
          UserName = 'Line166'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 265
          mmWidth = 191030
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object DbRepDety: TppDBPipeline
    DataSource = DM1.dsUPro
    UserName = 'DbRepDety'
    Left = 280
    Top = 88
    object DbRepDetyppField1: TppField
      FieldAlias = 'DPTODES'
      FieldName = 'DPTODES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 0
    end
    object DbRepDetyppField2: TppField
      FieldAlias = 'USENOM'
      FieldName = 'USENOM'
      FieldLength = 75
      DisplayWidth = 75
      Position = 1
    end
    object DbRepDetyppField3: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object DbRepDetyppField4: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 3
    end
    object DbRepDetyppField5: TppField
      FieldAlias = 'CREFOTORG'
      FieldName = 'CREFOTORG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 4
    end
    object DbRepDetyppField6: TppField
      FieldAlias = 'CREDID'
      FieldName = 'CREDID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object DbRepDetyppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREMTOOTOR'
      FieldName = 'CREMTOOTOR'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 6
    end
    object DbRepDetyppField8: TppField
      FieldAlias = 'FREC'
      FieldName = 'FREC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 7
    end
    object DbRepDetyppField9: TppField
      FieldAlias = 'CREESTID'
      FieldName = 'CREESTID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object DbRepDetyppField10: TppField
      FieldAlias = 'CREESTADO'
      FieldName = 'CREESTADO'
      FieldLength = 35
      DisplayWidth = 35
      Position = 9
    end
  end
  object RepDety: TppReport
    AutoStop = False
    DataPipeline = DbRepDety
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 312
    Top = 88
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepDety'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object Titulo02: TppLabel
        UserName = 'lblTitulo2'
        AutoSize = False
        Caption = 'APLICACION EXTEMPORANEA DE EXCESOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 529
        mmTop = 17727
        mmWidth = 189707
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label681'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label682'
        Caption = 'Sistema De  Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4498
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label5702'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label684'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label685'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable65'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable66'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable67'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label686'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label687'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label688'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line169'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 24341
        mmWidth = 191031
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line199'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 15081
        mmWidth = 191031
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText288'
        DataField = 'CREDID'
        DataPipeline = DbRepDety
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDety'
        mmHeight = 3175
        mmLeft = 82815
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText277'
        DataField = 'ASOAPENOM'
        DataPipeline = DbRepDety
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDety'
        mmHeight = 3175
        mmLeft = 25400
        mmTop = 0
        mmWidth = 56356
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText278'
        DataField = 'FREC'
        DataPipeline = DbRepDety
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDety'
        mmHeight = 3440
        mmLeft = 134409
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText291'
        DataField = 'CREMTOOTOR'
        DataPipeline = DbRepDety
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepDety'
        mmHeight = 3175
        mmLeft = 160602
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText309'
        DataField = 'ASOCODMOD'
        DataPipeline = DbRepDety
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDety'
        mmHeight = 3260
        mmLeft = 5027
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText310'
        DataField = 'CREFOTORG'
        DataPipeline = DbRepDety
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDety'
        mmHeight = 3440
        mmLeft = 113506
        mmTop = 0
        mmWidth = 16669
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
      mmHeight = 21431
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label679'
        AutoSize = False
        Caption = 'Total General              '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 102395
        mmTop = 1058
        mmWidth = 32808
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line167'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 529
        mmWidth = 191030
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc222'
        DataField = 'CREMTOOTOR'
        DataPipeline = DbRepDety
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepDety'
        mmHeight = 3260
        mmLeft = 160602
        mmTop = 1323
        mmWidth = 24872
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc238'
        DataField = 'ASOCODMOD'
        DataPipeline = DbRepDety
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRepDety'
        mmHeight = 3260
        mmLeft = 172243
        mmTop = 5556
        mmWidth = 12964
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label750'
        AutoSize = False
        Caption = 'N'#176' De Movimientos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 102395
        mmTop = 5556
        mmWidth = 32808
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line133'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 9790
        mmWidth = 191030
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DPTODES'
      DataPipeline = DbRepDety
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group50'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepDety'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12965
        mmPrintPosition = 0
        object ppDBText7: TppDBText
          UserName = 'DBText2803'
          DataField = 'DPTODES'
          DataPipeline = DbRepDety
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRepDety'
          mmHeight = 3810
          mmLeft = 5027
          mmTop = 8731
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label831'
          AutoSize = False
          Caption = 'Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 4763
          mmTop = 4498
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppLabel13: TppLabel
          UserName = 'Label738'
          AutoSize = False
          Caption = 'Total Por Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 102395
          mmTop = 794
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc205'
          DataField = 'CREMTOOTOR'
          DataPipeline = DbRepDety
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepDety'
          mmHeight = 3175
          mmLeft = 160602
          mmTop = 1058
          mmWidth = 24872
          BandType = 5
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label7501'
          AutoSize = False
          Caption = 'N'#176' De Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 102395
          mmTop = 4763
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc242'
          DataField = 'ASOCODMOD'
          DataPipeline = DbRepDety
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbRepDety'
          mmHeight = 3175
          mmLeft = 172243
          mmTop = 4763
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line196'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 2117
          mmTop = 265
          mmWidth = 191030
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'USENOM'
      DataPipeline = DbRepDety
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group51'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepDety'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 18785
        mmPrintPosition = 0
        object ppDBText8: TppDBText
          UserName = 'DBText333'
          DataField = 'USENOM'
          DataPipeline = DbRepDety
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRepDety'
          mmHeight = 3810
          mmLeft = 5027
          mmTop = 6085
          mmWidth = 120121
          BandType = 3
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line197'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 10319
          mmWidth = 191030
          BandType = 3
          GroupNo = 1
        end
        object ppLine7: TppLine
          UserName = 'Line198'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 17992
          mmWidth = 191030
          BandType = 3
          GroupNo = 1
        end
        object ppLabel15: TppLabel
          UserName = 'Label744'
          AutoSize = False
          Caption = 'Codigo Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 5027
          mmTop = 14552
          mmWidth = 19897
          BandType = 3
          GroupNo = 1
        end
        object ppLabel16: TppLabel
          UserName = 'Label745'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 25665
          mmTop = 14552
          mmWidth = 35454
          BandType = 3
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label747'
          AutoSize = False
          Caption = 'N'#176' De Credito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 82815
          mmTop = 14288
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label748'
          AutoSize = False
          Caption = 'de Registro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 134673
          mmTop = 14552
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel19: TppLabel
          UserName = 'Label749'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 134673
          mmTop = 11113
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel20: TppLabel
          UserName = 'Label755'
          AutoSize = False
          Caption = 'de Credito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 112977
          mmTop = 14552
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel21: TppLabel
          UserName = 'Label828'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 112977
          mmTop = 11113
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel22: TppLabel
          UserName = 'Label829'
          AutoSize = False
          Caption = 'Reclasificado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 168275
          mmTop = 14552
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel23: TppLabel
          UserName = 'Label830'
          AutoSize = False
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 168275
          mmTop = 10848
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel24: TppLabel
          UserName = 'Label832'
          AutoSize = False
          Caption = 'Use / Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 5027
          mmTop = 2117
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLabel25: TppLabel
          UserName = 'Label742'
          AutoSize = False
          Caption = 'Total Por Use/Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 102394
          mmTop = 1058
          mmWidth = 32808
          BandType = 5
          GroupNo = 1
        end
        object ppLabel26: TppLabel
          UserName = 'Label7502'
          AutoSize = False
          Caption = 'N'#176' De Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 102395
          mmTop = 5027
          mmWidth = 32808
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc244'
          DataField = 'CREMTOOTOR'
          DataPipeline = DbRepDety
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepDety'
          mmHeight = 3175
          mmLeft = 160602
          mmTop = 529
          mmWidth = 24872
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc245'
          DataField = 'ASOCODMOD'
          DataPipeline = DbRepDety
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbRepDety'
          mmHeight = 3440
          mmLeft = 172244
          mmTop = 4498
          mmWidth = 12965
          BandType = 5
          GroupNo = 1
        end
        object ppLine8: TppLine
          UserName = 'Line166'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 265
          mmWidth = 191030
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
end
