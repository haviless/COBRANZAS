object fDetCtaCob: TfDetCtaCob
  Left = 205
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalles De Cuentas Por Cobrar'
  ClientHeight = 479
  ClientWidth = 701
  Color = clBtnFace
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
    Top = 0
    Width = 695
    Height = 477
    Color = 10207162
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      695
      477)
    object Label8: TLabel
      Left = 35
      Top = 446
      Width = 40
      Height = 18
      AutoSize = False
      Caption = 'Buscar : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblTitulo: TLabel
      Left = 11
      Top = 22
      Width = 326
      Height = 18
      AutoSize = False
      Caption = 'EXTRAORDINARIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtgData: TDBGrid
      Left = 191
      Top = 151
      Width = 26
      Height = 10
      DataSource = DM1.dsMGrupo
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object dbgDetCtaCob: TwwDBGrid
      Left = 6
      Top = 55
      Width = 683
      Height = 376
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOCODMOD'#9'12'#9'Codigo~Modular'
        'ASOAPENOM'#9'50'#9'Apellidos y Nombres'
        'CREFOTORG'#9'10'#9'Fecha De~Otorgamiento'
        'SALDOS'#9'15'#9'Saldos Totales(K)'
        'SALDOS_V'#9'15'#9'Vencido~No Pagado'
        'SALDOS_P'#9'15'#9'Por Cobrar'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCredito
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
    object BitResClfCar: TBitBtn
      Left = 580
      Top = 19
      Width = 109
      Height = 28
      Hint = 'Imprimir'
      Caption = 'Detalles'
      TabOrder = 1
      OnClick = BitResClfCarClick
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
      Left = 568
      Top = 440
      Width = 109
      Height = 28
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 2
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
    object EdtBuscar: TEdit
      Left = 86
      Top = 442
      Width = 299
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = EdtBuscarChange
      OnKeyPress = EdtBuscarKeyPress
    end
    object BitExporta: TBitBtn
      Left = 355
      Top = 19
      Width = 107
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
    object BitResClfCarRes: TBitBtn
      Left = 467
      Top = 19
      Width = 109
      Height = 28
      Hint = 'Imprimir'
      Caption = 'Resum'#233'n'
      TabOrder = 6
      OnClick = BitResClfCarResClick
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
  object ppDBDatCtaDet: TppDBPipeline
    DataSource = DM1.dsUPro
    UserName = 'DBDatCtaDet'
    Left = 40
    Top = 128
  end
  object ppRepCtaDet: TppReport
    AutoStop = False
    DataPipeline = ppDBDatCtaDet
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
    Left = 80
    Top = 128
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBDatCtaDet'
    object ppHeaderBand26: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object ppLblTitCal: TppLabel
        UserName = 'LblTitCal'
        AutoSize = False
        Caption = 'DETALLE DE CUENTAS POR COBRAR  A  :  DICIEMBRE-2004'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 19579
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel518: TppLabel
        UserName = 'Label524'
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
      object ppLabel520: TppLabel
        UserName = 'Label525'
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
      object ppLabel522: TppLabel
        UserName = 'Label526'
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
      object ppLabel533: TppLabel
        UserName = 'Label527'
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
      object ppLabel538: TppLabel
        UserName = 'Label528'
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
      object ppSystemVariable47: TppSystemVariable
        UserName = 'SystemVariable204'
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
      object ppSystemVariable48: TppSystemVariable
        UserName = 'SystemVariable45'
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
      object ppSystemVariable49: TppSystemVariable
        UserName = 'SystemVariable46'
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
      object ppLabel539: TppLabel
        UserName = 'Label529'
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
      object ppLabel542: TppLabel
        UserName = 'Label530'
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
      object ppLabel543: TppLabel
        UserName = 'Label531'
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
      object pplblCalf: TppLabel
        UserName = 'LblTitCal1'
        AutoSize = False
        Caption = 'CONSUMO ORDINARIOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 25665
        mmWidth = 198438
        BandType = 0
      end
    end
    object ppDetailBand28: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText228: TppDBText
        UserName = 'DBText227'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBDatCtaDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 32279
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText233: TppDBText
        UserName = 'DBText228'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBDatCtaDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 51329
        mmTop = 0
        mmWidth = 49742
        BandType = 4
      end
      object ppDBText234: TppDBText
        UserName = 'DBText229'
        DataField = 'CREFOTORG'
        DataPipeline = ppDBDatCtaDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 110596
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText235: TppDBText
        UserName = 'DBText230'
        DataField = 'SALDOS_V'
        DataPipeline = ppDBDatCtaDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 127529
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText236: TppDBText
        UserName = 'DBText2301'
        DataField = 'SALDOS_P'
        DataPipeline = ppDBDatCtaDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText237: TppDBText
        UserName = 'DBText232'
        DataField = 'SALDOS'
        DataPipeline = ppDBDatCtaDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
    end
    object ppFooterBand21: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand26: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine139: TppLine
        UserName = 'Line137'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 61913
        mmTop = 529
        mmWidth = 139700
        BandType = 7
      end
      object ppLabel544: TppLabel
        UserName = 'Label521'
        Caption = 'Totales  General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 2381
        mmWidth = 25929
        BandType = 7
      end
      object ppDBCalc194: TppDBCalc
        UserName = 'DBCalc203'
        DataField = 'SALDOS_V'
        DataPipeline = ppDBDatCtaDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 126736
        mmTop = 2381
        mmWidth = 21696
        BandType = 7
      end
      object ppDBCalc195: TppDBCalc
        UserName = 'DBCalc204'
        DataField = 'SALDOS_P'
        DataPipeline = ppDBDatCtaDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 151342
        mmTop = 2381
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc196: TppDBCalc
        UserName = 'DBCalc2001'
        DataField = 'SALDOS'
        DataPipeline = ppDBDatCtaDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 177007
        mmTop = 2381
        mmWidth = 22225
        BandType = 7
      end
      object ppLabel545: TppLabel
        UserName = 'Label5201'
        Caption = 'N'#176' Prestamos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 63236
        mmTop = 7144
        mmWidth = 20320
        BandType = 7
      end
      object ppLine140: TppLine
        UserName = 'Line138'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 61913
        mmTop = 11906
        mmWidth = 139700
        BandType = 7
      end
      object ppDBCalc201: TppDBCalc
        UserName = 'DBCalc206'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBDatCtaDet
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBDatCtaDet'
        mmHeight = 3704
        mmLeft = 183886
        mmTop = 7144
        mmWidth = 14817
        BandType = 7
      end
    end
    object ppGroup36: TppGroup
      BreakName = 'UPROID'
      DataPipeline = ppDBDatCtaDet
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group35'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBDatCtaDet'
      object ppGroupHeaderBand36: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppDBText238: TppDBText
          UserName = 'DBText225'
          DataField = 'UPRONOM'
          DataPipeline = ppDBDatCtaDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 4233
          mmLeft = 31485
          mmTop = 2910
          mmWidth = 61913
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand36: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 13229
        mmPrintPosition = 0
        object ppLine141: TppLine
          UserName = 'Line135'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 62442
          mmTop = 265
          mmWidth = 139700
          BandType = 5
          GroupNo = 0
        end
        object ppLabel546: TppLabel
          UserName = 'Label519'
          Caption = 'Totales  Por U.Proc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 63236
          mmTop = 2381
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc208: TppDBCalc
          UserName = 'DBCalc198'
          DataField = 'SALDOS_V'
          DataPipeline = ppDBDatCtaDet
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup36
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 3704
          mmLeft = 127265
          mmTop = 2117
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc209: TppDBCalc
          UserName = 'DBCalc199'
          DataField = 'SALDOS_P'
          DataPipeline = ppDBDatCtaDet
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup36
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 3704
          mmLeft = 151871
          mmTop = 2117
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc210: TppDBCalc
          UserName = 'DBCalc200'
          DataField = 'SALDOS'
          DataPipeline = ppDBDatCtaDet
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup36
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 3704
          mmLeft = 177536
          mmTop = 2117
          mmWidth = 22225
          BandType = 5
          GroupNo = 0
        end
        object ppLabel547: TppLabel
          UserName = 'Label520'
          Caption = 'N'#176' Prestamos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 63236
          mmTop = 6879
          mmWidth = 20320
          BandType = 5
          GroupNo = 0
        end
        object ppLine142: TppLine
          UserName = 'Line136'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 62442
          mmTop = 11642
          mmWidth = 139700
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc211: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'ASOCODMOD'
          DataPipeline = ppDBDatCtaDet
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup36
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 3704
          mmLeft = 184415
          mmTop = 6879
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup37: TppGroup
      BreakName = 'USEID'
      DataPipeline = ppDBDatCtaDet
      OutlineSettings.CreateNode = True
      UserName = 'Group36'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBDatCtaDet'
      object ppGroupHeaderBand37: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 15875
        mmPrintPosition = 0
        object ppDBText239: TppDBText
          UserName = 'DBText226'
          DataField = 'USENOM'
          DataPipeline = ppDBDatCtaDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 4233
          mmLeft = 31750
          mmTop = 2381
          mmWidth = 55827
          BandType = 3
          GroupNo = 1
        end
        object ppLine143: TppLine
          UserName = 'Line801'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 31485
          mmTop = 15610
          mmWidth = 170657
          BandType = 3
          GroupNo = 1
        end
        object ppLine144: TppLine
          UserName = 'Line141'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 31221
          mmTop = 6879
          mmWidth = 170657
          BandType = 3
          GroupNo = 1
        end
        object ppLabel548: TppLabel
          UserName = 'Label539'
          Caption = 'Cod.Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 32544
          mmTop = 11113
          mmWidth = 16404
          BandType = 3
          GroupNo = 1
        end
        object ppLabel549: TppLabel
          UserName = 'Label533'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 51594
          mmTop = 11377
          mmWidth = 32279
          BandType = 3
          GroupNo = 1
        end
        object ppLabel550: TppLabel
          UserName = 'Label3303'
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 110861
          mmTop = 7938
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel551: TppLabel
          UserName = 'Label534'
          Caption = 'Vencido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 135202
          mmTop = 7673
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
        object ppLabel552: TppLabel
          UserName = 'Label535'
          Caption = 'No Pagado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 134938
          mmTop = 11906
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppLabel553: TppLabel
          UserName = 'Label536'
          Caption = 'Por Cobrar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 160602
          mmTop = 11642
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLabel554: TppLabel
          UserName = 'Label537'
          Caption = 'Saldos '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 186532
          mmTop = 8202
          mmWidth = 11853
          BandType = 3
          GroupNo = 1
        end
        object ppLabel556: TppLabel
          UserName = 'Label541'
          Caption = 'Totales(K)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 186532
          mmTop = 11906
          mmWidth = 13229
          BandType = 3
          GroupNo = 1
        end
        object ppLabel559: TppLabel
          UserName = 'Label559'
          Caption = 'Prestamo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 110861
          mmTop = 11642
          mmWidth = 12700
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand37: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 12435
        mmPrintPosition = 0
        object ppLine145: TppLine
          UserName = 'Line133'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 62706
          mmTop = 529
          mmWidth = 139700
          BandType = 5
          GroupNo = 1
        end
        object ppLine146: TppLine
          UserName = 'Line134'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 62706
          mmTop = 11377
          mmWidth = 139700
          BandType = 5
          GroupNo = 1
        end
        object ppLabel557: TppLabel
          UserName = 'Label517'
          Caption = 'Totales  Por Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 63236
          mmTop = 1588
          mmWidth = 25929
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc213: TppDBCalc
          UserName = 'DBCalc193'
          DataField = 'SALDOS_V'
          DataPipeline = ppDBDatCtaDet
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup37
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 3704
          mmLeft = 127529
          mmTop = 1323
          mmWidth = 21696
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc214: TppDBCalc
          UserName = 'DBCalc194'
          DataField = 'SALDOS_P'
          DataPipeline = ppDBDatCtaDet
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup37
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 3704
          mmLeft = 152136
          mmTop = 1323
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc215: TppDBCalc
          UserName = 'DBCalc2002'
          DataField = 'SALDOS'
          DataPipeline = ppDBDatCtaDet
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup37
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 3704
          mmLeft = 177800
          mmTop = 1323
          mmWidth = 22225
          BandType = 5
          GroupNo = 1
        end
        object ppLabel558: TppLabel
          UserName = 'Label5202'
          Caption = 'N'#176' Prestamos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 63500
          mmTop = 6085
          mmWidth = 20320
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc216: TppDBCalc
          UserName = 'DBCalc196'
          DataField = 'ASOCODMOD'
          DataPipeline = ppDBDatCtaDet
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup37
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBDatCtaDet'
          mmHeight = 3704
          mmLeft = 184415
          mmTop = 5821
          mmWidth = 14817
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object ppDBDatCtaRes: TppDBPipeline
    DataSource = DM1.dsUPro
    UserName = 'DBDatCtaRes'
    Left = 72
    Top = 288
    object ppDBDatCtaResppField1: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 0
    end
    object ppDBDatCtaResppField2: TppField
      FieldAlias = 'UPRONOM'
      FieldName = 'UPRONOM'
      FieldLength = 81
      DisplayWidth = 81
      Position = 1
    end
    object ppDBDatCtaResppField3: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object ppDBDatCtaResppField4: TppField
      FieldAlias = 'USENOM'
      FieldName = 'USENOM'
      FieldLength = 81
      DisplayWidth = 81
      Position = 3
    end
    object ppDBDatCtaResppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'MOVIM'
      FieldName = 'MOVIM'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 4
    end
    object ppDBDatCtaResppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDOS'
      FieldName = 'SALDOS'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 5
    end
    object ppDBDatCtaResppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDOS_P'
      FieldName = 'SALDOS_P'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 6
    end
    object ppDBDatCtaResppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDOS_V'
      FieldName = 'SALDOS_V'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 7
    end
  end
  object ppRepCtaRes: TppReport
    AutoStop = False
    DataPipeline = ppDBDatCtaRes
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
    Left = 112
    Top = 288
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBDatCtaRes'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object ppLblTitCalX: TppLabel
        UserName = 'LblTitCal'
        AutoSize = False
        Caption = 'RESUMEN DE CUENTAS POR COBRAR  A  :  DICIEMBRE-2004'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 19579
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label524'
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
        UserName = 'Label525'
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
      object ppLabel4: TppLabel
        UserName = 'Label526'
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
        UserName = 'Label527'
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
        UserName = 'Label528'
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
        UserName = 'SystemVariable204'
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
        UserName = 'SystemVariable45'
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
        UserName = 'SystemVariable46'
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
        UserName = 'Label529'
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
        UserName = 'Label530'
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
        UserName = 'Label531'
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
      object pplblCalfX: TppLabel
        UserName = 'LblTitCal1'
        AutoSize = False
        Caption = 'CONSUMO ORDINARIOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 25665
        mmWidth = 198438
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText229'
        DataField = 'MOVIM'
        DataPipeline = ppDBDatCtaRes
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaRes'
        mmHeight = 3704
        mmLeft = 110596
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText230'
        DataField = 'SALDOS_V'
        DataPipeline = ppDBDatCtaRes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaRes'
        mmHeight = 3704
        mmLeft = 127529
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText2301'
        DataField = 'SALDOS_P'
        DataPipeline = ppDBDatCtaRes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaRes'
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText232'
        DataField = 'SALDOS'
        DataPipeline = ppDBDatCtaRes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaRes'
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText226'
        DataField = 'USENOM'
        DataPipeline = ppDBDatCtaRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBDatCtaRes'
        mmHeight = 3704
        mmLeft = 42863
        mmTop = 0
        mmWidth = 55827
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
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line137'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 61913
        mmTop = 1058
        mmWidth = 139700
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label521'
        Caption = 'Totales  General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 2381
        mmWidth = 25929
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc203'
        DataField = 'SALDOS_V'
        DataPipeline = ppDBDatCtaRes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaRes'
        mmHeight = 3704
        mmLeft = 126736
        mmTop = 2381
        mmWidth = 21696
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc204'
        DataField = 'SALDOS_P'
        DataPipeline = ppDBDatCtaRes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaRes'
        mmHeight = 3704
        mmLeft = 151342
        mmTop = 2381
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc2001'
        DataField = 'SALDOS'
        DataPipeline = ppDBDatCtaRes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaRes'
        mmHeight = 3704
        mmLeft = 177007
        mmTop = 2381
        mmWidth = 22225
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line138'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 61913
        mmTop = 7673
        mmWidth = 139700
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MOVIM'
        DataPipeline = ppDBDatCtaRes
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDatCtaRes'
        mmHeight = 3704
        mmLeft = 103188
        mmTop = 2381
        mmWidth = 21696
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'UPROID'
      DataPipeline = ppDBDatCtaRes
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group35'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBDatCtaRes'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 20108
        mmPrintPosition = 0
        object ppDBText6: TppDBText
          UserName = 'DBText225'
          DataField = 'UPRONOM'
          DataPipeline = ppDBDatCtaRes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBDatCtaRes'
          mmHeight = 4233
          mmLeft = 31485
          mmTop = 2910
          mmWidth = 61913
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line801'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 30956
          mmTop = 19050
          mmWidth = 170657
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line141'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 30692
          mmTop = 9790
          mmWidth = 170657
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label3303'
          Caption = 'Numero De'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 110331
          mmTop = 10848
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label534'
          Caption = 'Vencido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 134673
          mmTop = 10583
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label535'
          Caption = 'No Pagado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 134409
          mmTop = 14817
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label536'
          Caption = 'Por Cobrar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 160073
          mmTop = 14552
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label537'
          Caption = 'Saldos '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 186002
          mmTop = 11113
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label541'
          Caption = 'Totales(K)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 186002
          mmTop = 14817
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label559'
          Caption = 'Prestamos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 111919
          mmTop = 15081
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object ppLabel555: TppLabel
          UserName = 'Label555'
          Caption = 'Uses/Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 42069
          mmTop = 13494
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppLine5: TppLine
          UserName = 'Line135'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 62442
          mmTop = 794
          mmWidth = 139700
          BandType = 5
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label519'
          Caption = 'Totales  Por U.Proc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 63236
          mmTop = 2381
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc198'
          DataField = 'SALDOS_V'
          DataPipeline = ppDBDatCtaRes
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaRes'
          mmHeight = 3704
          mmLeft = 127265
          mmTop = 2117
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc199'
          DataField = 'SALDOS_P'
          DataPipeline = ppDBDatCtaRes
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaRes'
          mmHeight = 3704
          mmLeft = 151871
          mmTop = 2117
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc200'
          DataField = 'SALDOS'
          DataPipeline = ppDBDatCtaRes
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaRes'
          mmHeight = 3704
          mmLeft = 177536
          mmTop = 2117
          mmWidth = 22225
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc193: TppDBCalc
          UserName = 'DBCalc193'
          DataField = 'MOVIM'
          DataPipeline = ppDBDatCtaRes
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBDatCtaRes'
          mmHeight = 3704
          mmLeft = 103717
          mmTop = 2117
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
