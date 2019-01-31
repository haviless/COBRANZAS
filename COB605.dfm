object FMigraRefinanciados: TFMigraRefinanciados
  Left = 476
  Top = 23
  Width = 980
  Height = 680
  Caption = 'Migraci'#243'n de Refinanciados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 477
    Width = 964
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 964
    Height = 93
    Align = alTop
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      964
      93)
    object lblUniverso: TLabel
      Left = 309
      Top = 52
      Width = 30
      Height = 19
      Anchors = [akTop, akRight]
      Caption = '     '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitProcesar: TBitBtn
      Left = 833
      Top = 32
      Width = 110
      Height = 26
      Caption = 'Procesar'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = BitProcesarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333700000733333333F777773FF3333333007F0F70
        0333333773373377FF3333300FFF7FFF003333773F3333377FF33300F0FFFFF0
        F00337737333F37377F33707FFFF0FFFF70737F33337F33337FF300FFFFF0FFF
        FF00773F3337F333377F30707FFF0FFF70707F733337F333737F300FFFF09FFF
        FF0077F33377F33337733707FF0F9FFFF70737FF3737F33F37F33300F0FF9FF0
        F003377F7337F373773333300FFF9FFF00333377FF37F3377FF33300007F9F70
        000337777FF7FF77773333703070007030733373777777737333333333330333
        333333333337FF33333333333330003333333333337773333333}
      NumGlyphs = 2
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 12
      Width = 305
      Height = 73
      Caption = 'Periodo de Refinanciaci'#243'n'
      TabOrder = 1
      object Label2: TLabel
        Left = 43
        Top = 19
        Width = 89
        Height = 16
        Caption = 'Fecha de Inicio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 63
        Top = 48
        Width = 65
        Height = 16
        Caption = 'Fecha Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtpDesde: TwwDBDateTimePicker
        Left = 150
        Top = 15
        Width = 100
        Height = 25
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
      end
      object dtpHasta: TwwDBDateTimePicker
        Left = 150
        Top = 42
        Width = 100
        Height = 25
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 482
    Width = 964
    Height = 160
    Align = alBottom
    Caption = 'Panel1'
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      964
      160)
    object dbgDatos: TwwDBGrid
      Left = 1
      Top = 1
      Width = 792
      Height = 158
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgAllowDelete]
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -12
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = False
    end
    object btnPastel: TButton
      Left = 882
      Top = 10
      Width = 75
      Height = 25
      Anchors = []
      Caption = 'Grafico %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnPastelClick
    end
    object btnAExcel: TBitBtn
      Left = 882
      Top = 39
      Width = 75
      Height = 25
      Anchors = []
      Caption = 'A Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnAExcelClick
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
    object btnSalir: TBitBtn
      Left = 882
      Top = 102
      Width = 75
      Height = 25
      Anchors = []
      Caption = 'Cerrar'
      TabOrder = 3
      OnClick = btnSalirClick
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
  end
  object dbChartHist: TDBChart
    Left = 0
    Top = 93
    Width = 964
    Height = 384
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = 16755285
    Gradient.Visible = True
    MarginBottom = 1
    MarginLeft = 1
    MarginRight = 1
    MarginTop = 1
    Title.Font.Charset = ANSI_CHARSET
    Title.Font.Color = clNavy
    Title.Font.Height = -13
    Title.Font.Name = 'Microsoft Sans Serif'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'TITULO DEL GRAFICO')
    BottomAxis.LabelsAngle = 15
    BottomAxis.Title.Caption = 'Periodos'
    BottomAxis.Title.Font.Charset = ANSI_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -11
    BottomAxis.Title.Font.Name = 'Microsoft Sans Serif'
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.Title.Caption = 'Asociados'
    LeftAxis.Title.Font.Charset = ANSI_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Microsoft Sans Serif'
    LeftAxis.Title.Font.Style = [fsBold]
    View3D = False
    Align = alClient
    TabOrder = 2
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clRed
      Title = 'NOR'
      BarStyle = bsRectGradient
      SideMargins = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clGreen
      Title = 'CPP'
      BarStyle = bsRectGradient
      SideMargins = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series3: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 4194368
      Title = 'DEF'
      BarStyle = bsRectGradient
      SideMargins = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series4: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clBlue
      Title = 'DUD'
      BarStyle = bsRectGradient
      SideMargins = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series5: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 16512
      Title = 'PER'
      BarStyle = bsRectGradient
      SideMargins = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series6: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clGray
      Title = 'CAN'
      BarStyle = bsRectGradient
      SideMargins = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
end
