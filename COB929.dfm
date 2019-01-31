object fRepDetGest: TfRepDetGest
  Left = 247
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalles de Gesti'#243'n De Cobranza '
  ClientHeight = 431
  ClientWidth = 461
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
    Left = 4
    Top = 48
    Width = 453
    Height = 381
    TabOrder = 0
    DesignSize = (
      453
      381)
    object dtgData: TDBGrid
      Left = 223
      Top = 225
      Width = 50
      Height = 8
      DataSource = DM1.dsTPension
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
    end
    object BitSalir: TBitBtn
      Left = 349
      Top = 341
      Width = 89
      Height = 27
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
    object dtgResGes: TwwDBGrid
      Left = 10
      Top = 14
      Width = 431
      Height = 319
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'OFDESID'#9'2'#9'Id'
        'OFDESNOM'#9'35'#9'Oficina~Desconcentrada'
        'REGISTROS'#9'15'#9'Numero De~Encuestas'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgResGesDblClick
    end
    object Panel2: TPanel
      Left = 23
      Top = 337
      Width = 193
      Height = 38
      TabOrder = 2
      object Chk01: TCheckBox
        Left = 14
        Top = 11
        Width = 71
        Height = 17
        Caption = 'Res'#250'men'
        TabOrder = 0
      end
      object BitPrint: TBitBtn
        Left = 95
        Top = 4
        Width = 90
        Height = 27
        Hint = 'Imprimir'
        Caption = 'Imprimir'
        TabOrder = 1
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
    end
    object BitExporta: TBitBtn
      Left = 221
      Top = 341
      Width = 118
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitExportaClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      Spacing = 10
    end
  end
  object GroupBox2: TGroupBox
    Left = 5
    Top = 0
    Width = 452
    Height = 51
    TabOrder = 1
    object Label1: TLabel
      Left = 169
      Top = 8
      Width = 64
      Height = 13
      Caption = 'Fecha De Fin'
    end
    object Label2: TLabel
      Left = 44
      Top = 8
      Width = 75
      Height = 13
      Caption = 'Fecha De Inicio'
    end
    object DtpFecIni: TDateTimePicker
      Left = 42
      Top = 23
      Width = 102
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
      TabOrder = 0
    end
    object DtpFecFin: TDateTimePicker
      Left = 167
      Top = 22
      Width = 102
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
      TabOrder = 1
    end
    object BitMostrar: TBitBtn
      Left = 305
      Top = 15
      Width = 89
      Height = 28
      Hint = 'Salir'
      Caption = 'Mostar'
      TabOrder = 2
      OnClick = BitMostrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
  end
  object DbOfides: TppDBPipeline
    DataSource = DM1.dsAbonoCuotas
    UserName = 'DbOfides'
    Left = 248
    Top = 340
  end
  object RepOfides: TppReport
    AutoStop = False
    DataPipeline = DbOfides
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
    Left = 277
    Top = 341
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbOfides'
    object ppHeaderBand29: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        AutoSize = False
        Caption = 'DETALLE DE GESTION DE COBRANZA A NIVEL NACIONAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 1058
        mmTop = 14552
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel599: TppLabel
        UserName = 'Label599'
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
      object ppLabel600: TppLabel
        UserName = 'Label600'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 42714
        BandType = 0
      end
      object ppLabel601: TppLabel
        UserName = 'Label5701'
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
      object ppLabel602: TppLabel
        UserName = 'Label1'
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
      object ppLabel603: TppLabel
        UserName = 'Label603'
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
      object ppSystemVariable56: TppSystemVariable
        UserName = 'SystemVariable56'
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
      object ppSystemVariable57: TppSystemVariable
        UserName = 'SystemVariable57'
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
      object ppSystemVariable58: TppSystemVariable
        UserName = 'SystemVariable58'
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
      object ppLabel604: TppLabel
        UserName = 'Label604'
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
      object ppLabel605: TppLabel
        UserName = 'Label605'
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
      object ppLabel606: TppLabel
        UserName = 'Label606'
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
      object lblTitulo01: TppLabel
        UserName = 'lblTitulo01'
        AutoSize = False
        Caption = 
          'DEL XX/XX/XXXX  AL  XX/XX/XXXX - POR OFICINAS DESCONCENTRADAS Y ' +
          'USES/UGEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 20108
        mmWidth = 198702
        BandType = 0
      end
    end
    object ppDetailBand31: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppDBText251: TppDBText
        UserName = 'DBText251'
        DataField = 'ASOCODMOD'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 529
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText252: TppDBText
        UserName = 'DBText252'
        DataField = 'ASOAPENOM'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 21960
        mmTop = 0
        mmWidth = 86519
        BandType = 4
      end
      object ppDBText253: TppDBText
        UserName = 'DBText253'
        DataField = 'DESCRIPCION01'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3440
        mmLeft = 9260
        mmTop = 8731
        mmWidth = 89429
        BandType = 4
      end
      object ppDBText254: TppDBText
        UserName = 'DBText254'
        DataField = 'DESCRIPCION02'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 9790
        mmTop = 17727
        mmWidth = 89694
        BandType = 4
      end
      object ppDBText255: TppDBText
        UserName = 'DBText255'
        DataField = 'DESCRIPCION03'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 10054
        mmTop = 26194
        mmWidth = 99219
        BandType = 4
      end
      object ppDBText256: TppDBText
        UserName = 'DBText256'
        DataField = 'USUARIO'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3175
        mmLeft = 111390
        mmTop = 0
        mmWidth = 81227
        BandType = 4
      end
      object ppDBText257: TppDBText
        UserName = 'DBText257'
        DataField = 'OTMET'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 8202
        mmWidth = 87313
        BandType = 4
      end
      object ppDBText258: TppDBText
        UserName = 'DBText258'
        DataField = 'OTJUS'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 17992
        mmWidth = 87048
        BandType = 4
      end
      object ppDBText259: TppDBText
        UserName = 'DBText259'
        DataField = 'OTOSOL'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 26194
        mmWidth = 87048
        BandType = 4
      end
      object ppLabel590: TppLabel
        UserName = 'Label590'
        Caption = #191'Por Que Medio Se Entero?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2117
        mmTop = 4763
        mmWidth = 35729
        BandType = 4
      end
      object ppLabel591: TppLabel
        UserName = 'Label5901'
        Caption = #191'Cual Es La Justificaci'#243'n De Deudor?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2117
        mmTop = 13758
        mmWidth = 47964
        BandType = 4
      end
      object ppLabel592: TppLabel
        UserName = 'Label5902'
        Caption = #191'Cual Es La Situaci'#243'n?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2381
        mmTop = 22490
        mmWidth = 29676
        BandType = 4
      end
      object ppLine151: TppLine
        UserName = 'Line151'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 30956
        mmWidth = 201877
        BandType = 4
      end
    end
    object ppFooterBand24: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand29: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLabel610: TppLabel
        UserName = 'Label610'
        Caption = 'N'#176' De Encuestados En Total    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 42334
        mmTop = 1588
        mmWidth = 39412
        BandType = 7
      end
      object ppLabel613: TppLabel
        UserName = 'Label613'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 107686
        mmTop = 1588
        mmWidth = 3440
        BandType = 7
      end
      object ppLine155: TppLine
        UserName = 'Line155'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 529
        mmWidth = 201877
        BandType = 7
      end
      object ppLine152: TppLine
        UserName = 'Line152'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 6350
        mmWidth = 201877
        BandType = 7
      end
      object ppDBCalc217: TppDBCalc
        UserName = 'DBCalc217'
        DataField = 'ASOID'
        DataPipeline = DbOfides
        DisplayFormat = '###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 115095
        mmTop = 1058
        mmWidth = 27781
        BandType = 7
      end
    end
    object ppGroup40: TppGroup
      BreakName = 'OFDESNOM'
      DataPipeline = DbOfides
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group40'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbOfides'
      object ppGroupHeaderBand40: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object ppDBText249: TppDBText
          UserName = 'DBText249'
          DataField = 'OFDESNOM'
          DataPipeline = DbOfides
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbOfides'
          mmHeight = 4233
          mmLeft = 529
          mmTop = 5821
          mmWidth = 66146
          BandType = 3
          GroupNo = 0
        end
        object ppLabel594: TppLabel
          UserName = 'Label594'
          Caption = 'Origen De Gestion'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 265
          mmTop = 1323
          mmWidth = 23453
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand40: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel609: TppLabel
          UserName = 'Label609'
          Caption = 'N'#176' De Encuestados Por OfiDes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 42333
          mmTop = 1323
          mmWidth = 39497
          BandType = 5
          GroupNo = 0
        end
        object ppLabel612: TppLabel
          UserName = 'Label612'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3260
          mmLeft = 107686
          mmTop = 1852
          mmWidth = 3440
          BandType = 5
          GroupNo = 0
        end
        object ppLine154: TppLine
          UserName = 'Line154'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 529
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc216: TppDBCalc
          UserName = 'DBCalc216'
          DataField = 'ASOID'
          DataPipeline = DbOfides
          DisplayFormat = '###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup40
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbOfides'
          mmHeight = 3260
          mmLeft = 115095
          mmTop = 1323
          mmWidth = 27781
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup41: TppGroup
      BreakName = 'USENOM'
      DataPipeline = DbOfides
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group41'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbOfides'
      object ppGroupHeaderBand41: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 17463
        mmPrintPosition = 0
        object ppDBText250: TppDBText
          UserName = 'DBText250'
          DataField = 'USENOM'
          DataPipeline = DbOfides
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbOfides'
          mmHeight = 3704
          mmLeft = 265
          mmTop = 5027
          mmWidth = 89429
          BandType = 3
          GroupNo = 1
        end
        object ppLine149: TppLine
          UserName = 'Line149'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 10319
          mmWidth = 201877
          BandType = 3
          GroupNo = 1
        end
        object ppLine150: TppLine
          UserName = 'Line150'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 16406
          mmWidth = 201877
          BandType = 3
          GroupNo = 1
        end
        object ppLabel595: TppLabel
          UserName = 'Label595'
          Caption = 'Cod.Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 0
          mmTop = 11906
          mmWidth = 16129
          BandType = 3
          GroupNo = 1
        end
        object ppLabel596: TppLabel
          UserName = 'Label596'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 21960
          mmTop = 11906
          mmWidth = 26035
          BandType = 3
          GroupNo = 1
        end
        object ppLabel597: TppLabel
          UserName = 'Label597'
          Caption = 'Encuestado Por :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 111125
          mmTop = 12171
          mmWidth = 21802
          BandType = 3
          GroupNo = 1
        end
        object ppLabel593: TppLabel
          UserName = 'Label5903'
          Caption = 'Uses/Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 0
          mmTop = 529
          mmWidth = 13081
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand41: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLabel608: TppLabel
          UserName = 'Label608'
          Caption = 'N'#176' De Encuestados Por Use/Ugel   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 42334
          mmTop = 794
          mmWidth = 44873
          BandType = 5
          GroupNo = 1
        end
        object ppLabel611: TppLabel
          UserName = 'Label611'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3260
          mmLeft = 107950
          mmTop = 794
          mmWidth = 3440
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc215: TppDBCalc
          UserName = 'DBCalc215'
          DataField = 'ASOID'
          DataPipeline = DbOfides
          DisplayFormat = '###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbOfides'
          mmHeight = 3260
          mmLeft = 115094
          mmTop = 794
          mmWidth = 27781
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object ppRepEstPre: TppReport
    AutoStop = False
    DataPipeline = ppDBEstPre
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
    Template.FileName = 'D:\sistemas\NewSiscre\Reportes\RepEstDep.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 93
    Top = 391
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstPre'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39688
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 21960
        mmTop = 29369
        mmWidth = 148696
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 21960
        mmTop = 39158
        mmWidth = 148696
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'OFICINAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 28840
        mmTop = 30163
        mmWidth = 13420
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'DESCONCENTRADAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 28575
        mmTop = 34660
        mmWidth = 29591
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#176' DE GESTIONES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134144
        mmTop = 30163
        mmWidth = 25315
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
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
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Fecha   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        Caption = 'Hora     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label103'
        Caption = 'Pag      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175419
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 
          'ESTADISTICA DE GESTION DE COBRANZA  DEL 10/06/2003    AL   13/06' +
          '/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 15875
        mmWidth = 166952
        BandType = 0
      end
      object ppLblTipo: TppLabel
        UserName = 'Label104'
        AutoSize = False
        Caption = 'Por OFICINAS DESCONCENTRADAS A NIVEL NACIONAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 20902
        mmWidth = 166952
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'REALIZADAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 141023
        mmTop = 34660
        mmWidth = 17695
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'OFDESID'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3969
        mmLeft = 28310
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'OFDESNOM'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3969
        mmLeft = 37042
        mmTop = 0
        mmWidth = 92869
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'REGISTROS'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3969
        mmLeft = 130704
        mmTop = 0
        mmWidth = 25135
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 35190
        mmTop = 0
        mmWidth = 1058
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
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'NUMERO TOTAL DE GESTIONES DE COBRANZA : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 40481
        mmTop = 1323
        mmWidth = 76158
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'REGISTROS'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 4022
        mmLeft = 130704
        mmTop = 1323
        mmWidth = 25136
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 22225
        mmTop = 529
        mmWidth = 148696
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 22225
        mmTop = 7144
        mmWidth = 148696
        BandType = 7
      end
    end
  end
  object ppDBEstPre: TppDBPipeline
    DataSource = DM1.dsDetRegCob
    UserName = 'DBEstPre'
    Left = 69
    Top = 391
  end
end
