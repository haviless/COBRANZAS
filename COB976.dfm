object Frepdetcreblo: TFrepdetcreblo
  Left = 298
  Top = 227
  BorderStyle = bsDialog
  Caption = 'Detalle de cr'#233'ditos bloqueados'
  ClientHeight = 427
  ClientWidth = 761
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
    Left = 3
    Top = 0
    Width = 630
    Height = 96
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 17
      Width = 66
      Height = 13
      Caption = 'Fecha Inicial :'
    end
    object Label1: TLabel
      Left = 192
      Top = 18
      Width = 73
      Height = 13
      Caption = 'Departamento :'
    end
    object Label4: TLabel
      Left = 6
      Top = 43
      Width = 61
      Height = 13
      Caption = 'Fecha Final :'
    end
    object Label5: TLabel
      Left = 192
      Top = 41
      Width = 83
      Height = 13
      Caption = 'Tipo de bloqueo :'
    end
    object Label6: TLabel
      Left = 192
      Top = 65
      Width = 42
      Height = 13
      Caption = 'Usuario :'
    end
    object dbdtinicio: TwwDBDateTimePicker
      Left = 98
      Top = 13
      Width = 88
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
    object Bitprevio: TBitBtn
      Left = 532
      Top = 20
      Width = 86
      Height = 32
      Caption = 'Previo'
      TabOrder = 5
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
      Left = 279
      Top = 14
      Width = 50
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
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdcoddepChange
    end
    object Pnldesdep: TPanel
      Left = 334
      Top = 12
      Width = 187
      Height = 23
      Enabled = False
      TabOrder = 6
      object medesdep: TEdit
        Left = 1
        Top = 1
        Width = 184
        Height = 21
        TabOrder = 0
      end
    end
    object dbdtfin: TwwDBDateTimePicker
      Left = 98
      Top = 39
      Width = 88
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
    object dblcdtipblo: TwwDBLookupComboDlg
      Left = 279
      Top = 40
      Width = 50
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTRela
      LookupField = 'CODTIP'
      MaxLength = 2
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdtipbloChange
    end
    object dblcdusuario: TwwDBLookupComboDlg
      Left = 279
      Top = 66
      Width = 111
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUsuarios
      LookupField = 'USERID'
      MaxLength = 2
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdusuarioChange
    end
    object pnldestipblo: TPanel
      Left = 334
      Top = 38
      Width = 187
      Height = 23
      Enabled = False
      TabOrder = 7
      object medestipblo: TEdit
        Left = 1
        Top = 1
        Width = 185
        Height = 21
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 396
      Top = 65
      Width = 230
      Height = 23
      Enabled = False
      TabOrder = 8
      object medesusuario: TEdit
        Left = 1
        Top = 1
        Width = 228
        Height = 21
        TabOrder = 0
      end
    end
  end
  object dbgPrevio: TwwDBGrid
    Left = 5
    Top = 102
    Width = 747
    Height = 276
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
  object DBGrid: TDBGrid
    Left = 371
    Top = 392
    Width = 39
    Height = 25
    DataSource = DM1.dsReporte
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object Bitimprimir: TBitBtn
    Left = 487
    Top = 390
    Width = 86
    Height = 32
    Caption = 'Imprimir'
    Enabled = False
    TabOrder = 3
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
    Left = 577
    Top = 390
    Width = 86
    Height = 32
    Caption = 'A Excel'
    Enabled = False
    TabOrder = 4
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
    Left = 668
    Top = 390
    Width = 86
    Height = 32
    Caption = 'Cerrar'
    TabOrder = 5
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
  object pnlobs: TPanel
    Left = 216
    Top = 160
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
      Enabled = False
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
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object bdepreporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdepreporte'
    Left = 16
    Top = 112
  end
  object pprdetcreblodep: TppReport
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
    Template.FileName = 'C:\Documents and Settings\IREVILLA\Escritorio\REP01.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 417
    Top = 392
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'bdepreporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30692
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
        mmLeft = 62706
        mmTop = 14552
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
        mmLeft = 121973
        mmTop = 21431
        mmWidth = 25136
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label3'
        Caption = 'NUMERO DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122502
        mmTop = 22225
        mmWidth = 16140
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8730
        mmLeft = 162719
        mmTop = 21431
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label2'
        Caption = 'N'#186'/C'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 22225
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label4'
        Caption = 'BLO.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 25665
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel17: TppLabel
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
      object ppLabel18: TppLabel
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
        mmHeight = 8730
        mmLeft = 50271
        mmTop = 21431
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label8'
        Caption = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 22225
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label31'
        Caption = 'MODULAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 25665
        mmWidth = 14023
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape8'
        mmHeight = 8730
        mmLeft = 67733
        mmTop = 21431
        mmWidth = 54503
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label9'
        Caption = 'APELLIDOS Y NOMBRE(S)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 68263
        mmTop = 22225
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label33'
        Caption = 'CREDITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122502
        mmTop = 25665
        mmWidth = 12700
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape9'
        mmHeight = 8730
        mmLeft = 170127
        mmTop = 21431
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label34'
        Caption = 'N'#186'/C'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 22225
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label35'
        Caption = 'VEN.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 25665
        mmWidth = 6615
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape10'
        mmHeight = 8730
        mmLeft = 177536
        mmTop = 21431
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label36'
        Caption = 'N'#186'/C'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 22225
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label37'
        Caption = 'N/V'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 25665
        mmWidth = 6615
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape101'
        mmHeight = 8731
        mmLeft = 184944
        mmTop = 21431
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label23'
        Caption = 'M.TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 22225
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label24'
        Caption = 'BLOQ.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 25665
        mmWidth = 8731
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape12'
        mmHeight = 8731
        mmLeft = 202407
        mmTop = 21431
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label40'
        Caption = 'TIPO DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 202936
        mmTop = 22225
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label41'
        Caption = 'BLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 202936
        mmTop = 25665
        mmWidth = 14288
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape13'
        mmHeight = 8731
        mmLeft = 232305
        mmTop = 21431
        mmWidth = 23284
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label42'
        Caption = 'USUARIO QUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 232834
        mmTop = 22225
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label43'
        Caption = 'BLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 232834
        mmTop = 25665
        mmWidth = 14023
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape21'
        mmHeight = 8730
        mmLeft = 7673
        mmTop = 21431
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label62'
        Caption = 'UGEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 8202
        mmTop = 22225
        mmWidth = 7144
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape22'
        mmHeight = 8730
        mmLeft = 146844
        mmTop = 21431
        mmWidth = 16139
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label403'
        Caption = 'FECHA DEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 147373
        mmTop = 22225
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label64'
        Caption = 'CREDITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 147373
        mmTop = 25665
        mmWidth = 11642
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape3'
        mmHeight = 8731
        mmLeft = 255323
        mmTop = 21431
        mmWidth = 18786
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label5'
        Caption = 'FECHA DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 255853
        mmTop = 22225
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label6'
        Caption = 'BLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 255853
        mmTop = 25665
        mmWidth = 14023
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7673
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
        mmLeft = 122502
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
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 0
        mmWidth = 16669
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
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 68263
        mmTop = 0
        mmWidth = 53446
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText2'
        DataField = 'CUOBLO'
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
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 0
        mmWidth = 6614
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText9'
        DataField = 'CUOVEN'
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
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 0
        mmWidth = 6614
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText10'
        DataField = 'CUONOVEN'
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
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 0
        mmWidth = 6614
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText101'
        DataField = 'MONPORCOB'
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
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 0
        mmWidth = 16670
        BandType = 4
      end
      object ppDBText18: TppDBText
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
        mmLeft = 202936
        mmTop = 0
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText19: TppDBText
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
        mmLeft = 232834
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'DESMEN'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 3440
        mmWidth = 262203
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText4'
        DataField = 'USENOM'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 0
        mmWidth = 41804
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText5'
        DataField = 'CREFOTORG'
        DataPipeline = bdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 147373
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText8'
        DataField = 'FECBLO'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 255853
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel60: TppLabel
        UserName = 'Label7'
        Caption = 'Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 145521
        mmTop = 794
        mmWidth = 15875
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
      object ppLabel61: TppLabel
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
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CUOBLO'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 794
        mmWidth = 6614
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'CUOVEN'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 794
        mmWidth = 6614
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'CUONOVEN'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 794
        mmWidth = 6614
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'MONPORCOB'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 794
        mmWidth = 16670
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
        object ppLabel65: TppLabel
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
        object ppDBText27: TppDBText
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
          mmHeight = 3387
          mmLeft = 33867
          mmTop = 0
          mmWidth = 42598
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine5: TppLine
          UserName = 'Line5'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 7673
          mmTop = 265
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 7673
          mmTop = 5292
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
        object ppLabel66: TppLabel
          UserName = 'Label27'
          Caption = 'Total Departamento :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 128059
          mmTop = 1058
          mmWidth = 33338
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CUOBLO'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3175
          mmLeft = 163248
          mmTop = 1058
          mmWidth = 6614
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CUOVEN'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3175
          mmLeft = 170657
          mmTop = 1058
          mmWidth = 6614
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CUONOVEN'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3175
          mmLeft = 178065
          mmTop = 1058
          mmWidth = 6614
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'MONPORCOB'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3175
          mmLeft = 185473
          mmTop = 1058
          mmWidth = 16670
          BandType = 5
          GroupNo = 0
        end
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
    Template.FileName = 'C:\Documents and Settings\IREVILLA\Escritorio\REP01.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 450
    Top = 392
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'bdepreporte'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 27781
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
        mmLeft = 256646
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
        mmLeft = 240507
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
        mmLeft = 240507
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
        mmLeft = 256646
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppltitulotod: TppLabel
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
        mmLeft = 7408
        mmTop = 11906
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel13: TppLabel
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
        mmLeft = 251884
        mmTop = 3440
        mmWidth = 2911
        BandType = 0
      end
      object ppLabel14: TppLabel
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
        mmLeft = 251884
        mmTop = 0
        mmWidth = 2911
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape1'
        mmHeight = 8730
        mmLeft = 121973
        mmTop = 18521
        mmWidth = 25136
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label3'
        Caption = 'NUMERO DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122502
        mmTop = 19315
        mmWidth = 16140
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape2'
        mmHeight = 8730
        mmLeft = 162719
        mmTop = 18521
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label2'
        Caption = 'N'#186'/C'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 19315
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label4'
        Caption = 'BLO.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 22754
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 240507
        mmTop = 6879
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel29: TppLabel
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
        mmLeft = 251884
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
        mmLeft = 256646
        mmTop = 6879
        mmWidth = 2646
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 8730
        mmLeft = 50271
        mmTop = 18521
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label8'
        Caption = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 19315
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'MODULAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 22754
        mmWidth = 14023
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 8730
        mmLeft = 67733
        mmTop = 18521
        mmWidth = 54503
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label9'
        Caption = 'APELLIDOS Y NOMBRE(S)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 68263
        mmTop = 19315
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'CREDITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122502
        mmTop = 22754
        mmWidth = 12700
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 8730
        mmLeft = 170127
        mmTop = 18521
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'N'#186'/C'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 19315
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'VEN.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 22754
        mmWidth = 6615
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 8730
        mmLeft = 177536
        mmTop = 18521
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'N'#186'/C'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 19315
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'N/V'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 22754
        mmWidth = 6615
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape101'
        mmHeight = 8731
        mmLeft = 184944
        mmTop = 18521
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'M.TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 19315
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'BLOQ.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 22754
        mmWidth = 8731
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 8731
        mmLeft = 202407
        mmTop = 18521
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'TIPO DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 202936
        mmTop = 19315
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'BLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 202936
        mmTop = 22754
        mmWidth = 14288
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 8731
        mmLeft = 232305
        mmTop = 18521
        mmWidth = 23284
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'USUARIO QUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 232834
        mmTop = 19315
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'BLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 232834
        mmTop = 22754
        mmWidth = 14023
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        mmHeight = 8730
        mmLeft = 7673
        mmTop = 18521
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'UGEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 8202
        mmTop = 19315
        mmWidth = 7144
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        mmHeight = 8730
        mmLeft = 146844
        mmTop = 18521
        mmWidth = 16139
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label403'
        Caption = 'FECHA DEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 147373
        mmTop = 19315
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'CREDITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 147373
        mmTop = 22754
        mmWidth = 11642
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape3'
        mmHeight = 8731
        mmLeft = 255323
        mmTop = 18521
        mmWidth = 18786
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label5'
        Caption = 'FECHA DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 255853
        mmTop = 19315
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label6'
        Caption = 'BLOQUEO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 255853
        mmTop = 22754
        mmWidth = 14023
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBText8: TppDBText
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
        mmLeft = 122502
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText6'
        DataField = 'ASOCODMOD'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 68263
        mmTop = 0
        mmWidth = 53446
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText2'
        DataField = 'CUOBLO'
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
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 0
        mmWidth = 6614
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CUOVEN'
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
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 0
        mmWidth = 6614
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CUONOVEN'
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
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 0
        mmWidth = 6614
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText101'
        DataField = 'MONPORCOB'
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
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 0
        mmWidth = 16670
        BandType = 4
      end
      object ppDBText14: TppDBText
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
        mmLeft = 202936
        mmTop = 0
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText16: TppDBText
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
        mmLeft = 232834
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText20'
        DataField = 'DESMEN'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 3440
        mmWidth = 262203
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText4'
        DataField = 'USENOM'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 0
        mmWidth = 41804
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText5'
        DataField = 'CREFOTORG'
        DataPipeline = bdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 147373
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText8'
        DataField = 'FECBLO'
        DataPipeline = bdepreporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 255853
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        UserName = 'Label7'
        Caption = 'Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 146050
        mmTop = 794
        mmWidth = 15875
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7673
        mmTop = 5292
        mmWidth = 266701
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
        mmLeft = 7673
        mmTop = 5821
        mmWidth = 70115
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CUOBLO'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 794
        mmWidth = 6614
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'CUOVEN'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 794
        mmWidth = 6614
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'CUONOVEN'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 794
        mmWidth = 6614
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'MONPORCOB'
        DataPipeline = bdepreporte
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdepreporte'
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 794
        mmWidth = 16670
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText28'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel67: TppLabel
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
          mmTop = 1058
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
        end
        object ppDBText28: TppDBText
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
          mmTop = 1058
          mmWidth = 42598
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 7673
          mmTop = 2381
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 7673
          mmTop = 7408
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
        object ppLabel68: TppLabel
          UserName = 'Label10'
          Caption = 'Total Departamento :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 128588
          mmTop = 3175
          mmWidth = 33338
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CUOBLO'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3175
          mmLeft = 163248
          mmTop = 3175
          mmWidth = 6614
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'CUOVEN'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3175
          mmLeft = 170657
          mmTop = 3175
          mmWidth = 6614
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CUONOVEN'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3175
          mmLeft = 178065
          mmTop = 3175
          mmWidth = 6614
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'MONPORCOB'
          DataPipeline = bdepreporte
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdepreporte'
          mmHeight = 3175
          mmLeft = 185473
          mmTop = 3175
          mmWidth = 16670
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
