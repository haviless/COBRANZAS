object Freprescuoblo: TFreprescuoblo
  Left = 53
  Top = 156
  BorderStyle = bsDialog
  Caption = 'Resumen de cuotas bloqueadas'
  ClientHeight = 366
  ClientWidth = 701
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bitcerrar: TBitBtn
    Left = 608
    Top = 326
    Width = 86
    Height = 32
    Caption = 'Cerrar'
    TabOrder = 0
    OnClick = BitcerrarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object dbgPrevio: TwwDBGrid
    Left = 7
    Top = 102
    Width = 686
    Height = 217
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object GBselecciona: TGroupBox
    Left = 6
    Top = 1
    Width = 350
    Height = 95
    TabOrder = 2
    object Label2: TLabel
      Left = 7
      Top = 42
      Width = 79
      Height = 13
      Caption = 'Fecha de Inicio :'
    end
    object Label1: TLabel
      Left = 7
      Top = 17
      Width = 73
      Height = 13
      Caption = 'Departamento :'
    end
    object Label3: TLabel
      Left = 7
      Top = 65
      Width = 68
      Height = 13
      Caption = 'Fecha de Fin :'
    end
    object dbdtpinicio: TwwDBDateTimePicker
      Left = 103
      Top = 38
      Width = 82
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      OnChange = dbdtpinicioChange
    end
    object Bitprevio: TBitBtn
      Left = 257
      Top = 41
      Width = 86
      Height = 32
      Caption = 'Previo'
      TabOrder = 3
      OnClick = BitprevioClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object dblcdcoddep: TwwDBLookupComboDlg
      Left = 103
      Top = 12
      Width = 49
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdcoddepChange
    end
    object Pnldesdep: TPanel
      Left = 155
      Top = 11
      Width = 187
      Height = 23
      Enabled = False
      TabOrder = 4
      object medesdep: TEdit
        Left = 1
        Top = 1
        Width = 185
        Height = 21
        TabOrder = 0
      end
    end
    object dbdtpfin: TwwDBDateTimePicker
      Left = 103
      Top = 62
      Width = 82
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
      OnChange = dbdtpinicioChange
    end
  end
  object BitAExcel: TBitBtn
    Left = 517
    Top = 326
    Width = 86
    Height = 32
    Caption = 'A Excel'
    Enabled = False
    TabOrder = 3
    OnClick = BitAExcelClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Bitimprimir: TBitBtn
    Left = 427
    Top = 326
    Width = 86
    Height = 32
    Caption = 'Imprimir'
    Enabled = False
    TabOrder = 4
    OnClick = BitimprimirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object DBGrid: TDBGrid
    Left = 97
    Top = 320
    Width = 33
    Height = 32
    DataSource = DM1.dsReporte
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = DM1.cdsReporte
    Left = 25
    Top = 117
  end
  object bdepreporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdepreporte'
    Left = 161
    Top = 328
  end
  object pprrescreblotod: TppReport
    AutoStop = False
    DataPipeline = bdepreporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 123
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 193
    Top = 328
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'bdepreporte'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 4498
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label16'
        Caption = 'Derrama Magisterial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4234
        mmLeft = 12700
        mmTop = 0
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label17'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4234
        mmLeft = 12700
        mmTop = 4498
        mmWidth = 51858
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label18'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4234
        mmLeft = 130704
        mmTop = 0
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label19'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130704
        mmTop = 4498
        mmWidth = 11906
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppltitulotod: TppLabel
        UserName = 'ltitulodep'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 15081
        mmWidth = 155046
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 4498
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label402'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 0
        mmWidth = 1323
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape1'
        mmHeight = 9260
        mmLeft = 12700
        mmTop = 21431
        mmWidth = 102659
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label3'
        Caption = 'UGEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 13758
        mmTop = 23548
        mmWidth = 10319
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape2'
        mmHeight = 9260
        mmLeft = 115094
        mmTop = 21431
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label2'
        Caption = 'NUMERO DE '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 116417
        mmTop = 22225
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label4'
        Caption = 'CREDITOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 116417
        mmTop = 26194
        mmWidth = 14817
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape3'
        mmHeight = 9260
        mmLeft = 140229
        mmTop = 21431
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label5'
        Caption = 'MONTO TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 22225
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label6'
        Caption = 'BLOQUEADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 26194
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130704
        mmTop = 8996
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 8996
        mmWidth = 1323
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 8996
        mmWidth = 5556
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText2'
        DataField = 'USEID'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3810
        mmLeft = 13494
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText3'
        DataField = 'USENOM'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3704
        mmLeft = 20373
        mmTop = 0
        mmWidth = 93927
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText4'
        DataField = 'CUENTA'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3704
        mmLeft = 117475
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText5'
        DataField = 'MONTO'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3704
        mmLeft = 142611
        mmTop = 0
        mmWidth = 22753
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        UserName = 'Label7'
        Caption = 'Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 82286
        mmTop = 794
        mmWidth = 15875
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 12700
        mmTop = 5292
        mmWidth = 154516
        BandType = 7
      end
      object pplimpresoportod: TppLabel
        UserName = 'limpresoportod'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12700
        mmTop = 7408
        mmWidth = 64823
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CUENTA'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3704
        mmLeft = 117475
        mmTop = 794
        mmWidth = 20902
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONTO'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3704
        mmLeft = 142611
        mmTop = 794
        mmWidth = 22753
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText6'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel15: TppLabel
          UserName = 'Label1'
          Caption = 'DEPARTAMENTO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 12700
          mmTop = 0
          mmWidth = 29633
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText1'
          DataField = 'DPTODES'
          DataPipeline = bdepreporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3969
          mmLeft = 43127
          mmTop = 0
          mmWidth = 58473
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CUENTA'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3704
          mmLeft = 117475
          mmTop = 1058
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'MONTO'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3704
          mmLeft = 142611
          mmTop = 1058
          mmWidth = 22753
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 12700
          mmTop = 265
          mmWidth = 154517
          BandType = 5
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 12700
          mmTop = 5292
          mmWidth = 154517
          BandType = 5
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = 'Total Departamento :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 82286
          mmTop = 1058
          mmWidth = 33338
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
