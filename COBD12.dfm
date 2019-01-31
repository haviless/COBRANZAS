object FRefiBusca: TFRefiBusca
  Left = 297
  Top = 83
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = 'Refinanciaci'#243'n'
  ClientHeight = 550
  ClientWidth = 764
  Color = clBtnFace
  Constraints.MaxHeight = 588
  Constraints.MaxWidth = 780
  Constraints.MinHeight = 588
  Constraints.MinWidth = 780
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 2
    Top = 0
    Width = 765
    Height = 123
    TabOrder = 0
    object rgUsu: TRadioGroup
      Left = 317
      Top = 56
      Width = 382
      Height = 60
      Caption = 'Usuario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Selecciona')
      ParentFont = False
      TabOrder = 0
      OnClick = rgUsuClick
    end
    object bbtnFiltra: TBitBtn
      Left = 707
      Top = 79
      Width = 50
      Height = 30
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbtnFiltraClick
    end
    object pnlUsuario: TPanel
      Left = 404
      Top = 76
      Width = 290
      Height = 33
      Enabled = False
      TabOrder = 2
      object dblcdUsureg: TwwDBLookupComboDlg
        Left = 5
        Top = 6
        Width = 98
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUsuregExit
      end
      object pnlusureg: TPanel
        Left = 105
        Top = 3
        Width = 180
        Height = 26
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 1
        object meusureg: TMaskEdit
          Left = 2
          Top = 2
          Width = 176
          Height = 21
          Color = clInfoBk
          TabOrder = 0
        end
      end
    end
    object gbFec: TGroupBox
      Left = 6
      Top = 1
      Width = 754
      Height = 52
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label2: TLabel
        Left = 16
        Top = 18
        Width = 42
        Height = 21
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bbtnCierre: TBitBtn
        Left = 362
        Top = 14
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Caption = 'Cierre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = bbtnCierreClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABAFAF6B7272EBEBEBFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7AAAA0B
          1E201F12183900000E24236A6E6ECDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA7AAAA0B1E20181219810700FC1F00FF1300570000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9E8EC000002810700FD1900FA
          4712C7A79D618C916A2C2C830000977878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFCC5637F40D00FA4712BFA094B6CFD4C5C9CB767B7B3239382B3D3C9380
          80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD04E11C29C91B6CFD4BCC2C4BD
          BDBDC5C5C5757A7A373736343534888B8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF879C9FC0C5C6BDBDBDBDBDBDC0C0C0CECDCD787D7D333332363736898A
          89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E9593C1C0C0C0C0C0C9C9C9A5
          A2A55B5A5AA5ADAA5F605F131213858685FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF919896CDCCCCA8A6A86161616C736CA2ABA25C5F614A4E493F403FC8C7
          C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7378786464634D524C7B827BDC
          DFDCA8ADA784878E323631FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF535552A5ABAA84878D5C605B1F241F7B7A7A85888E323631FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCB7C808630342FFF
          FFFFFFFFFF75797F323631FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF75797F2E322CFFFFFFFFFFFF6A6E742E332CFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70757B5F605D76
          76763A3C39F9FFFF434542FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF5C5B5AFFFFFFC4C2C1EDEEF16B7370C6C5C6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67686A79
          7F834C5050CECDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Margin = 10
      end
      object bbtnApertura: TBitBtn
        Left = 250
        Top = 14
        Width = 100
        Height = 30
        Caption = 'Apertura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = bbtnAperturaClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777747177700000007777777777747117700000007777
          7777777471117000000077777777777471111000000077777777777471117000
          000070000000777471177000000070FFFFF0777471777000000070F888F07777
          77777000000070FFFFF0777777777000000070F888F0777777777000000070FF
          FFF0777777777000000070FF0000000007777000000070000FBFBFBF07777000
          000077770BFBFBFB077770000000777700000000077770000000777777777777
          777770000000}
        Margin = 10
      end
      object dtpFecha: TwwDBDateTimePicker
        Left = 65
        Top = 15
        Width = 110
        Height = 27
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 2
        OnExit = dtpFechaExit
      end
      object Panel2: TPanel
        Left = 571
        Top = 9
        Width = 176
        Height = 38
        Caption = 'Panel2'
        Enabled = False
        TabOrder = 3
        object lblEstado: TMaskEdit
          Left = 6
          Top = 3
          Width = 164
          Height = 31
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = 'NO LABORABLE'
        end
      end
    end
    object rgOfi: TRadioGroup
      Left = 6
      Top = 56
      Width = 305
      Height = 60
      Caption = 'Oficina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Selecciona')
      ParentFont = False
      TabOrder = 4
      OnClick = rgOfiClick
    end
    object pnlOfides: TPanel
      Left = 94
      Top = 78
      Width = 211
      Height = 32
      Enabled = False
      TabOrder = 5
      object dblcUniDesc: TwwDBLookupCombo
        Left = 5
        Top = 5
        Width = 45
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'OFDESID'#9'3'#9'Id'#9'F'
          'OFDESNOM'#9'40'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsOfDes
        LookupField = 'OFDESID'
        Options = [loColLines, loTitles]
        DropDownCount = 15
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcUniDescExit
      end
      object edtunidesc: TEdit
        Left = 50
        Top = 5
        Width = 156
        Height = 23
        CharCase = ecUpperCase
        Color = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object TPanel
    Left = 0
    Top = 126
    Width = 765
    Height = 391
    TabOrder = 1
    object rgEstado: TRadioGroup
      Left = 229
      Top = 0
      Width = 472
      Height = 60
      Columns = 5
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Solicitud'
        'Aprobado'
        'DesAprobado'
        'Anulado')
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = rgEstadoClick
    end
    object dbgRefi: TwwDBGrid
      Left = 4
      Top = 65
      Width = 757
      Height = 319
      DisableThemesInTitle = False
      Selected.Strings = (
        'IDEVAL'#9'9'#9'N'#250'mero'
        'IDRESEVAL'#9'2'#9'Sit.'
        'OFIDES'#9'15'#9'Oficina~Solicitud'
        'USUARIO'#9'12'#9'Usuario~Solicitud'
        'ASOAPENOM'#9'28'#9'Asociado'
        'ASODNI'#9'9'#9'D.N.I.'
        'CREDID'#9'15'#9'Cr'#233'dito por~Refinanciar'
        'NUESAL'#9'8'#9'Saldo Total~Refinanc.'
        'USUAUT'#9'11'#9'Usuario~Aprueba'#9'F'
        'USUANU'#9'11'#9'Usuario~DesAprueba'#9'F'
        'CREANU'#9'06'#9'Cr'#233'dito~Anulado'#9'F'
        'USUCREANU'#9'11'#9'Usuario~Anula'#9'F'
        'CREFOTORG'#9'10'#9'Fecha~Cr'#233'dito')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsSoliRefi
      KeyOptions = [dgEnterToTab]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnCalcCellColors = dbgRefiCalcCellColors
      OnDblClick = dbgRefiDblClick
      object dbgRefiIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 28
        Height = 28
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = dbgRefiIButtonClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 0
      Width = 222
      Height = 60
      Caption = 'Leyenda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 28
        Top = 18
        Width = 47
        Height = 15
        Caption = 'Solicitud'
      end
      object Label3: TLabel
        Left = 132
        Top = 16
        Width = 49
        Height = 15
        Caption = 'Aprobado'
      end
      object Label4: TLabel
        Left = 29
        Top = 39
        Width = 68
        Height = 15
        Caption = 'DesAprobado'
      end
      object Shape1: TShape
        Left = 10
        Top = 17
        Width = 15
        Height = 15
        Brush.Color = clAqua
      end
      object Shape2: TShape
        Left = 10
        Top = 38
        Width = 15
        Height = 15
        Brush.Color = clRed
      end
      object Shape3: TShape
        Left = 113
        Top = 15
        Width = 15
        Height = 15
        Brush.Color = clGreen
      end
      object Shape4: TShape
        Left = 113
        Top = 38
        Width = 15
        Height = 15
        Brush.Color = clBlue
      end
      object Label5: TLabel
        Left = 132
        Top = 39
        Width = 82
        Height = 15
        Caption = 'Cr'#233'dito Anulado'
      end
    end
    object bbtnReporte: TBitBtn
      Left = 707
      Top = 26
      Width = 52
      Height = 30
      Caption = 'Reporte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbtnReporteClick
    end
  end
  object BitSalir: TBitBtn
    Left = 680
    Top = 525
    Width = 78
    Height = 25
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
  object btnAExcel: TBitBtn
    Left = 577
    Top = 525
    Width = 80
    Height = 25
    Caption = 'A Excel'
    TabOrder = 3
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
  object dtgData: TDBGrid
    Left = 664
    Top = 53
    Width = 89
    Height = 33
    DataSource = DM1.dsSoliRefi
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object bbtnDesbloquea: TBitBtn
    Left = 7
    Top = 525
    Width = 81
    Height = 25
    Caption = 'Desbloquear'
    TabOrder = 5
    Visible = False
    OnClick = bbtnDesbloqueaClick
  end
  object Timer1: TTimer
    Interval = 15000
    OnTimer = Timer1Timer
    Left = 30
    Top = 433
  end
  object ppdb1: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'db1'
    Left = 627
    Top = 424
  end
  object ppr1: TppReport
    AutoStop = False
    DataPipeline = ppdb1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Documents and Settings\hnoriega\Mis documentos\refi.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 660
    Top = 424
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24871
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'INFORME DE SOLICITUDES DE REFINANCIACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 88371
        mmTop = 794
        mmWidth = 75734
        BandType = 0
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
        mmLeft = 236803
        mmTop = 794
        mmWidth = 14023
        BandType = 0
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
        mmLeft = 236803
        mmTop = 4498
        mmWidth = 17463
        BandType = 0
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
        mmLeft = 236803
        mmTop = 8202
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 794
        mmWidth = 34131
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 22754
        mmWidth = 268817
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Solicitud'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 8202
        mmTop = 15875
        mmWidth = 10753
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 27781
        mmTop = 16140
        mmWidth = 11684
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 92340
        mmTop = 13758
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 119856
        mmTop = 13758
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 147902
        mmTop = 18256
        mmWidth = 4403
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Aprobado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165365
        mmTop = 13758
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 18256
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Hecho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 146315
        mmTop = 13758
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Nuevo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 18256
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Anterior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 92075
        mmTop = 18256
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'COBRANZAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 4763
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 49742
        mmTop = 15875
        mmWidth = 26035
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 206111
        mmTop = 13758
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Cancelado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 203994
        mmTop = 18256
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'No. de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 239978
        mmTop = 13758
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Cuotas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 239713
        mmTop = 18256
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 250825
        mmTop = 16140
        mmWidth = 11377
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 12435
        mmWidth = 268817
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 224632
        mmTop = 13758
        mmWidth = 8819
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Refinanciado(k)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 219075
        mmTop = 18256
        mmWidth = 19812
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Saldo Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 184680
        mmTop = 13758
        mmWidth = 13935
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Refinanciado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 183621
        mmTop = 18256
        mmWidth = 16228
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOID'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 23813
        mmTop = 1058
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 43127
        mmTop = 1058
        mmWidth = 38894
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CREDID'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 84138
        mmTop = 1058
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'IDEVAL'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 1058
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREDNEW'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 110861
        mmTop = 1058
        mmWidth = 25135
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ResetGroup = ppGroup1
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 1058
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'USUAUT'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 1058
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'USUARIO'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 138113
        mmTop = 1058
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'IMPCANCELADO'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 204523
        mmTop = 1058
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'NUMCUO'
        DataPipeline = ppdb1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 242359
        mmTop = 1058
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'ESTADO'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 249238
        mmTop = 1058
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText101'
        DataField = 'IMPAPROB'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 223838
        mmTop = 1058
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText102'
        DataField = 'IMPNUESAL'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 184944
        mmTop = 1058
        mmWidth = 15081
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 39423
        mmTop = 4233
        mmWidth = 9790
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Total Transacciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3598
        mmLeft = 5027
        mmTop = 4233
        mmWidth = 30692
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'IMODESAP'
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
        mmLeft = 221721
        mmTop = 10319
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'IMPAPROB'
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
        mmLeft = 221721
        mmTop = 3969
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Desaprobados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 134673
        mmTop = 10319
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Aprobados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 134673
        mmTop = 3969
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'REGAPROB'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 163513
        mmTop = 3969
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'REGDESAP'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 163513
        mmTop = 10319
        mmWidth = 12435
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 1588
        mmWidth = 268817
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 16140
        mmWidth = 268817
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'IMPCANCELADO'
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
        mmLeft = 202407
        mmTop = 3969
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'IMPNUESAL'
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
        mmLeft = 182827
        mmTop = 3969
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'FECEVAL'
      DataPipeline = ppdb1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          AutoSize = True
          DataField = 'FECEVAL'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3598
          mmLeft = 16404
          mmTop = 1852
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 5027
          mmTop = 1852
          mmWidth = 9229
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 15081
        mmPrintPosition = 0
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'IMODESAP'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 221721
          mmTop = 9525
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'IMPAPROB'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 221721
          mmTop = 3969
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Desaprobados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 134673
          mmTop = 9525
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          Caption = 'Aprobados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 134673
          mmTop = 3969
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'REGAPROB'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 163513
          mmTop = 3969
          mmWidth = 12435
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'REGDESAP'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 163513
          mmTop = 9525
          mmWidth = 12435
          BandType = 5
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 1588
          mmWidth = 268817
          BandType = 5
          GroupNo = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          AutoSize = True
          DataField = 'FECEVAL'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3598
          mmLeft = 79640
          mmTop = 4233
          mmWidth = 15875
          BandType = 5
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 68263
          mmTop = 4233
          mmWidth = 9260
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'IMPCANCELADO'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 202407
          mmTop = 3969
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          DataField = 'IMPNUESAL'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 182827
          mmTop = 3969
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'OFIDES'
      DataPipeline = ppdb1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'OFIDES'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 47890
          mmTop = 1852
          mmWidth = 48419
          BandType = 3
          GroupNo = 1
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'Oficina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 34396
          mmTop = 1852
          mmWidth = 10795
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 15875
        mmPrintPosition = 0
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          DataField = 'IMODESAP'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 221721
          mmTop = 8731
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'IMPAPROB'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 221721
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = 'Desaprobados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 134673
          mmTop = 8731
          mmWidth = 20902
          BandType = 5
          GroupNo = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'Aprobados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 134673
          mmTop = 3440
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'REGAPROB'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 163513
          mmTop = 3440
          mmWidth = 12435
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'REGDESAP'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 163513
          mmTop = 8731
          mmWidth = 12435
          BandType = 5
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 265
          mmTop = 1058
          mmWidth = 268817
          BandType = 5
          GroupNo = 1
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'OFIDES'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 47625
          mmTop = 3440
          mmWidth = 48419
          BandType = 5
          GroupNo = 1
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = 'Oficina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 34131
          mmTop = 3440
          mmWidth = 10848
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          DataField = 'IMPCANCELADO'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 202407
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          DataField = 'IMPNUESAL'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 182827
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
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
    Report = ppr1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 693
    Top = 424
  end
end
