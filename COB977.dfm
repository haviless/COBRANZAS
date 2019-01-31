object Frepcredesdet: TFrepcredesdet
  Left = 62
  Top = 176
  BorderStyle = bsDialog
  Caption = 'Cr'#233'ditos desbloqueados'
  ClientHeight = 348
  ClientWidth = 704
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
  object GBselecciona: TGroupBox
    Left = 8
    Top = 1
    Width = 353
    Height = 96
    TabOrder = 0
    object Label2: TLabel
      Left = 15
      Top = 42
      Width = 65
      Height = 13
      Caption = 'Fecha inicial :'
    end
    object Label1: TLabel
      Left = 15
      Top = 17
      Width = 73
      Height = 13
      Caption = 'Departamento :'
    end
    object Label4: TLabel
      Left = 15
      Top = 67
      Width = 58
      Height = 13
      Caption = 'Fecha final :'
    end
    object dbdtinicial: TwwDBDateTimePicker
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
      OnChange = dbdtinicialChange
    end
    object Bitprevio: TBitBtn
      Left = 255
      Top = 47
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
    object dbdtfinal: TwwDBDateTimePicker
      Left = 103
      Top = 64
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
      OnChange = dbdtfinalChange
    end
  end
  object dbgPrevio: TwwDBGrid
    Left = 8
    Top = 103
    Width = 689
    Height = 199
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
    OnDblClick = dbgPrevioDblClick
  end
  object Bitimprimir: TBitBtn
    Left = 431
    Top = 307
    Width = 86
    Height = 32
    Caption = 'Imprimir'
    Enabled = False
    TabOrder = 2
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
  object BitAExcel: TBitBtn
    Left = 521
    Top = 307
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
  object Bitcerrar: TBitBtn
    Left = 611
    Top = 307
    Width = 86
    Height = 32
    Caption = 'Cerrar'
    TabOrder = 4
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
  object DBGrid: TDBGrid
    Left = 232
    Top = 312
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
  object pnlobs: TPanel
    Left = 88
    Top = 104
    Width = 313
    Height = 177
    Caption = 'pnlobs'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMoneyGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object Label3: TLabel
      Left = 8
      Top = 3
      Width = 114
      Height = 13
      Caption = 'Descripci'#243'n del bloqueo'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 231
      Top = 141
      Width = 74
      Height = 28
      Caption = 'Cerrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
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
    object GroupBox1: TGroupBox
      Left = 6
      Top = 17
      Width = 301
      Height = 119
      TabOrder = 1
      object Memo1: TMemo
        Left = 2
        Top = 8
        Width = 297
        Height = 108
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'Memo1')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pprdetcredesdep: TppReport
    AutoStop = False
    DataPipeline = bdepreporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\QQQ.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 288
    Top = 312
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'bdepreporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 257176
        mmTop = 3440
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label16'
        Caption = 'Derrama Magisterial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 0
        mmWidth = 25485
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label17'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 3440
        mmWidth = 44186
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label18'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label19'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 3440
        mmWidth = 9260
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 257176
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'ltitulodep'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 45773
        mmTop = 11377
        mmWidth = 163248
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 252413
        mmTop = 3440
        mmWidth = 2911
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label402'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 252413
        mmTop = 0
        mmWidth = 2911
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8730
        mmLeft = 78846
        mmTop = 21167
        mmWidth = 25136
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label3'
        Caption = 'N'#186' DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 21960
        mmWidth = 8996
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8730
        mmLeft = 103717
        mmTop = 21166
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label2'
        Caption = 'N'#186' CUO.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 104246
        mmTop = 21960
        mmWidth = 10922
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label4'
        Caption = 'DESBLOQ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 104246
        mmTop = 25665
        mmWidth = 13716
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label28'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 6879
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 252413
        mmTop = 6879
        mmWidth = 2910
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 257176
        mmTop = 6879
        mmWidth = 2646
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape7'
        mmHeight = 8731
        mmLeft = 7673
        mmTop = 21167
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label8'
        Caption = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 8202
        mmTop = 21961
        mmWidth = 11472
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label31'
        Caption = 'MODULAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 8202
        mmTop = 25665
        mmWidth = 14097
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape8'
        mmHeight = 8730
        mmLeft = 24606
        mmTop = 21167
        mmWidth = 54503
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label9'
        Caption = 'APELLIDOS Y NOMBRE(S)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 28046
        mmTop = 21960
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label33'
        Caption = 'CREDITOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 25665
        mmWidth = 15875
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape9'
        mmHeight = 8731
        mmLeft = 118534
        mmTop = 21166
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label34'
        Caption = 'FECHA DE '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 119063
        mmTop = 21960
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label35'
        Caption = 'DESBLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 119063
        mmTop = 25665
        mmWidth = 19844
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape11'
        mmHeight = 8731
        mmLeft = 180711
        mmTop = 21167
        mmWidth = 69055
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label38'
        Caption = 'MOTIVO DEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 21960
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label39'
        Caption = 'DESBLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 181240
        mmTop = 25665
        mmWidth = 19854
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape12'
        mmHeight = 8731
        mmLeft = 139171
        mmTop = 21167
        mmWidth = 41803
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label40'
        Caption = 'TIPO DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 139700
        mmTop = 21960
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label41'
        Caption = 'DESBOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 139700
        mmTop = 25665
        mmWidth = 18288
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape13'
        mmHeight = 8731
        mmLeft = 249503
        mmTop = 21167
        mmWidth = 25136
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label42'
        Caption = 'USUARIO QUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3259
        mmLeft = 250032
        mmTop = 21960
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label43'
        Caption = 'DESBLOQUEA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 250043
        mmTop = 25665
        mmWidth = 19558
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label1'
        Caption = 'DEPARTAMENTO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 17198
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTODES'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 17198
        mmWidth = 42598
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText3'
        DataField = 'CREDID'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText6'
        DataField = 'ASOCODMOD'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 25135
        mmTop = 0
        mmWidth = 53446
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText14'
        DataField = 'DESTIP'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 139700
        mmTop = 0
        mmWidth = 40746
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText16'
        DataField = 'USUBLO'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 250032
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText15'
        DataField = 'DESMEN'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 0
        mmWidth = 67998
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CRECUOTA'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'FECBLO'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 119063
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLabel59: TppLabel
        UserName = 'Label7'
        Caption = 'Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 84402
        mmTop = 794
        mmWidth = 18256
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7673
        mmTop = 5292
        mmWidth = 266701
        BandType = 7
      end
      object ppLabel60: TppLabel
        UserName = 'limpresoportod'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7673
        mmTop = 5821
        mmWidth = 70115
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7673
        mmTop = 0
        mmWidth = 266701
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CRECUOTA'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 106098
        mmTop = 794
        mmWidth = 14288
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object pprdetcreblotod: TppReport
    AutoStop = False
    DataPipeline = bdepreporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\QQQ.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 320
    Top = 312
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'bdepreporte'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 257176
        mmTop = 3440
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label16'
        Caption = 'Derrama Magisterial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 0
        mmWidth = 25485
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label17'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 3440
        mmWidth = 44186
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label18'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label19'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 3440
        mmWidth = 9260
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 257176
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'ltitulodep'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 45773
        mmTop = 11377
        mmWidth = 163248
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 252413
        mmTop = 3440
        mmWidth = 2911
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label402'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 252413
        mmTop = 0
        mmWidth = 2911
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape1'
        mmHeight = 8730
        mmLeft = 78846
        mmTop = 21167
        mmWidth = 25136
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label3'
        Caption = 'N'#186' DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 21960
        mmWidth = 8996
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape2'
        mmHeight = 8730
        mmLeft = 103717
        mmTop = 21166
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label2'
        Caption = 'N'#186' CUO.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 104246
        mmTop = 21960
        mmWidth = 10922
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label4'
        Caption = 'DESBLOQ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 104246
        mmTop = 25665
        mmWidth = 13716
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label28'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 6879
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 252413
        mmTop = 6879
        mmWidth = 2910
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 257176
        mmTop = 6879
        mmWidth = 2646
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape7'
        mmHeight = 8731
        mmLeft = 7673
        mmTop = 21167
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label8'
        Caption = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 8202
        mmTop = 21961
        mmWidth = 11472
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label31'
        Caption = 'MODULAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 8202
        mmTop = 25665
        mmWidth = 14097
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape8'
        mmHeight = 8730
        mmLeft = 24606
        mmTop = 21167
        mmWidth = 54503
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label9'
        Caption = 'APELLIDOS Y NOMBRE(S)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 28046
        mmTop = 21960
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label33'
        Caption = 'CREDITOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 25665
        mmWidth = 15875
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape9'
        mmHeight = 8731
        mmLeft = 118534
        mmTop = 21166
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label34'
        Caption = 'FECHA DE '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 119063
        mmTop = 21960
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label35'
        Caption = 'DESBLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 119063
        mmTop = 25665
        mmWidth = 19844
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape11'
        mmHeight = 8731
        mmLeft = 180711
        mmTop = 21167
        mmWidth = 69055
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label38'
        Caption = 'MOTIVO DEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 21960
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label39'
        Caption = 'DESBLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 181240
        mmTop = 25665
        mmWidth = 19854
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape12'
        mmHeight = 8731
        mmLeft = 139171
        mmTop = 21167
        mmWidth = 41803
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label40'
        Caption = 'TIPO DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 139700
        mmTop = 21960
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label41'
        Caption = 'DESBLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 139700
        mmTop = 25665
        mmWidth = 19854
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape13'
        mmHeight = 8731
        mmLeft = 249503
        mmTop = 21167
        mmWidth = 25136
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label42'
        Caption = 'USUARIO QUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3259
        mmLeft = 250032
        mmTop = 21960
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label43'
        Caption = 'DESBLOQUEA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 250032
        mmTop = 25665
        mmWidth = 19579
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText3'
        DataField = 'CREDID'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText6'
        DataField = 'ASOCODMOD'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 25135
        mmTop = 0
        mmWidth = 53446
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText14'
        DataField = 'DESTIP'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 139700
        mmTop = 0
        mmWidth = 40746
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText16'
        DataField = 'USUBLO'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 250032
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText15'
        DataField = 'DESMEN'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 0
        mmWidth = 67998
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText4'
        DataField = 'CRECUOTA'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText5'
        DataField = 'FECBLO'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 119063
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLabel39: TppLabel
        UserName = 'Label7'
        Caption = 'Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 88636
        mmTop = 794
        mmWidth = 9525
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7673
        mmTop = 5292
        mmWidth = 266701
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'limpresoportod'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7673
        mmTop = 5821
        mmWidth = 70115
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7673
        mmTop = 0
        mmWidth = 266701
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CRECUOTA'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 794
        mmWidth = 14288
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
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLabel38: TppLabel
          UserName = 'Label1'
          Caption = 'DEPARTAMENTO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 7673
          mmTop = 0
          mmWidth = 25400
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
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3440
          mmLeft = 34131
          mmTop = 0
          mmWidth = 42598
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel41: TppLabel
          UserName = 'Label5'
          Caption = 'Total departamento :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 68792
          mmTop = 529
          mmWidth = 29464
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CRECUOTA'
          DataPipeline = bdepreporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'bdepreporte'
          mmHeight = 3175
          mmLeft = 104246
          mmTop = 529
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object bdepreporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdepreporte'
    Left = 24
    Top = 192
  end
end
