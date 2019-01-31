object fDetTipCob: TfDetTipCob
  Left = 186
  Top = 127
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalles Por Tipo De Descuento'
  ClientHeight = 521
  ClientWidth = 746
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 508
    Top = 57
    Width = 64
    Height = 13
    Caption = 'Cuota Minima'
  end
  object Label4: TLabel
    Left = 612
    Top = 57
    Width = 67
    Height = 13
    Caption = 'Cuota Maxima'
  end
  object Shape1: TShape
    Left = 508
    Top = 70
    Width = 73
    Height = 27
  end
  object Shape2: TShape
    Left = 612
    Top = 70
    Width = 73
    Height = 27
  end
  object lblMonMin: TLabel
    Left = 515
    Top = 76
    Width = 61
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '9,999.99'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblMonMax: TLabel
    Left = 621
    Top = 76
    Width = 61
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '9,999.99'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 145
    Width = 731
    Height = 322
    TabOrder = 2
    object dtgCobTelDet: TwwDBGrid
      Left = 5
      Top = 9
      Width = 720
      Height = 309
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOAPENOM'#9'48'#9'Apellidos y Nombres'
        'ASONCTA'#9'13'#9'Cuenta~De Ahorros'
        'SITCTA'#9'2'#9'Situaci'#243'n'
        'CRESALDO'#9'14'#9'Monto~Procesado'
        'PORENVIO'#9'10'#9'Porcent(%)~a Descontar'
        'MONENVIO'#9'14'#9'Monto Por~Descontar'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsDetalle
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
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
    object grbProcesos: TGroupBox
      Left = 224
      Top = 164
      Width = 268
      Height = 37
      Caption = 'Procesando Informaci'#243'n'
      TabOrder = 1
      Visible = False
      object prbAvances: TProgressBar
        Left = 4
        Top = 14
        Width = 259
        Height = 16
        Min = 1
        Position = 1
        Step = 17
        TabOrder = 0
      end
    end
  end
  object BitSalir: TBitBtn
    Left = 606
    Top = 480
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 4
    Kind = bkClose
  end
  object grbParametros: TGroupBox
    Left = 6
    Top = 0
    Width = 675
    Height = 46
    Caption = 'Periodo De Proceso'
    Enabled = False
    TabOrder = 0
    object lblNomMes: TLabel
      Left = 105
      Top = 19
      Width = 104
      Height = 18
      AutoSize = False
      Caption = 'DICIEMBRE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblTipCob: TLabel
      Left = 222
      Top = 18
      Width = 443
      Height = 20
      AutoSize = False
      Caption = 'Tipo De Cobranza   :    DESCUENTO NORMAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbsAnoIni: TwwDBSpinEdit
      Left = 4
      Top = 15
      Width = 58
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 2004.000000000000000000
      Value = 2004.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object dbsMesIni: TwwDBSpinEdit
      Left = 65
      Top = 15
      Width = 36
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      UsePictureMask = False
    end
  end
  object grbPorc: TGroupBox
    Left = 51
    Top = 469
    Width = 395
    Height = 41
    TabOrder = 3
    Visible = False
    object pnlPorc: TPanel
      Left = 102
      Top = 8
      Width = 290
      Height = 32
      Color = clWindow
      TabOrder = 0
      object Label1: TLabel
        Left = 4
        Top = 9
        Width = 83
        Height = 15
        Caption = 'Descontar  El :  '
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 168
        Top = 5
        Width = 18
        Height = 22
        Caption = '%'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object dbsPorc: TwwDBSpinEdit
        Left = 112
        Top = 3
        Width = 49
        Height = 26
        Cursor = crHandPoint
        Increment = 5.000000000000000000
        MaxValue = 200.000000000000000000
        MinValue = 5.000000000000000000
        Value = 100.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 3
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UsePictureMask = False
      end
      object BitAplica: TBitBtn
        Left = 205
        Top = 3
        Width = 75
        Height = 26
        Cursor = crHandPoint
        Caption = 'Aplicar'
        TabOrder = 1
        OnClick = BitAplicaClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          0B6363E1C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAECEC008E8EE1BCBCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF9F1F1009292E1C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFBCDEDE0D888819A9A924D4D4006363C4E1E1FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          CBE1E186EEEE5C8E8EE9CBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3E1E18FF7F7488A8ACBBCBCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B5DADA7FC0C01D83839BFFFF509696C7B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60ADADF4FFFF60CACA397D7D8E
          E1E17B73734C4C4C3F3F3FFFFFFF5F5F5FCBCBCBFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF1B4646382727241B1B3128288B8B8B8989896161610E0E0E9393
          930B0B0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6969693D3939B9B9B999999982
          8282929292A7A7A7919191DBDBDB8A8A8A8B8B8B3F3F3FFFFFFFFFFFFFBEBEBE
          454545A6A6A6B9B9B9B5B5B5E3E3E3CDCDCDC7C7C7E5E5E59C9C9CDCDCDCFBFB
          FBAAAAAA141414FFFFFFFFFFFFB5B5B5FFFFFFCFCFCFFFFFFF929292B1B1B19C
          9C9CC9C9C99898989E9E9EB3B3B3969696C1C1C1828282FFFFFFFFFFFFB1B1B1
          FFFFFFE7E7E7B5B5B5DCDCDCDEDEDE969696E1E1E1BEBEBEE0E0E0C0C0C0CBCB
          CB8D8D8D1B1B1BFFFFFFFFFFFFE1E1E1B1B1B1BCBCBCEDEDEDB8B8B8C0C0C0C7
          C7C78E8E8EFFFFFF9E9E9EF0F0F0CDCDCDEEEEEE030303FFFFFFFFFFFFFFFFFF
          FFFFFFB1B1B1E3E3E3FFFFFFD1D1D1EEEEEEBCBCBCB3B3B3EBEBEBADADADFFFF
          FF989898F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1BABABAC2C2C2B8
          B8B8FFFFFFFFFFFFFFFFFFFFFFFFADADADFFFFFFFFFFFFFFFFFF}
      end
    end
    object pnlInd: TPanel
      Left = 6
      Top = 11
      Width = 90
      Height = 26
      TabOrder = 1
      object ChkIndividual: TCheckBox
        Left = 5
        Top = 5
        Width = 81
        Height = 17
        Caption = 'Individual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object grbBuscar: TGroupBox
    Left = 9
    Top = 48
    Width = 460
    Height = 54
    TabOrder = 1
    object Label8: TLabel
      Left = 8
      Top = -1
      Width = 40
      Height = 17
      AutoSize = False
      Caption = 'Buscar : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object EdtBuscar: TEdit
      Left = 145
      Top = 18
      Width = 300
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = EdtBuscarChange
      OnKeyPress = EdtBuscarKeyPress
    end
    object rdbAsoApe: TRadioButton
      Left = 8
      Top = 14
      Width = 127
      Height = 17
      Caption = 'Apellidos y Nombres'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rdbAsoApeClick
    end
    object rdbAsoCta: TRadioButton
      Left = 8
      Top = 33
      Width = 127
      Height = 17
      Caption = 'Cuenta De Ahorros'
      TabOrder = 1
      OnClick = rdbAsoCtaClick
    end
  end
  object BitCtasInac: TBitBtn
    Left = 507
    Top = 480
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Caption = 'Imprime'
    TabOrder = 5
    Visible = False
    OnClick = BitCtasInacClick
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
  object chkRanCuo: TCheckBox
    Left = 281
    Top = 120
    Width = 129
    Height = 17
    Caption = 'Por Rango de Cuotas'
    TabOrder = 6
    OnClick = chkRanCuoClick
  end
  object pnlRanCuo: TPanel
    Left = 421
    Top = 106
    Width = 313
    Height = 43
    Enabled = False
    TabOrder = 7
    object Label5: TLabel
      Left = 14
      Top = 1
      Width = 64
      Height = 13
      Caption = 'Cuota Minima'
    end
    object Label6: TLabel
      Left = 119
      Top = 1
      Width = 67
      Height = 13
      Caption = 'Cuota Maxima'
    end
    object BitMostrar: TBitBtn
      Left = 218
      Top = 10
      Width = 89
      Height = 27
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
    object dbeCuoIni: TwwDBEdit
      Left = 13
      Top = 15
      Width = 84
      Height = 24
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeCuoIniExit
    end
    object dbeCuoMax: TwwDBEdit
      Left = 117
      Top = 15
      Width = 84
      Height = 24
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeCuoMaxExit
    end
  end
  object DbRepDetx: TppDBPipeline
    DataSource = DM1.dsQry3
    UserName = 'DbRepDetx'
    Left = 88
    Top = 320
  end
  object RepDetx: TppReport
    AutoStop = False
    DataPipeline = DbRepDetx
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
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
    Left = 120
    Top = 320
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepDetx'
    object ppHeaderBand36: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object lblTitulo01: TppLabel
        UserName = 'lblTitulo2'
        AutoSize = False
        Caption = 
          'ACTUALIZACIONES REALIZADAS AL MAESTRO DE ASOCIADOS DEL XX/XX/XXX' +
          'X AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 1058
        mmTop = 14817
        mmWidth = 198702
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
    end
    object ppDetailBand38: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText277: TppDBText
        UserName = 'DBText288'
        DataField = 'ASONCTA'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 101336
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText279: TppDBText
        UserName = 'DBText277'
        DataField = 'ASOAPENOM'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3598
        mmLeft = 17198
        mmTop = 0
        mmWidth = 82815
        BandType = 4
      end
      object ppDBText289: TppDBText
        UserName = 'DBText278'
        DataField = 'SITCTA'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText305: TppDBText
        UserName = 'DBText2803'
        DataField = 'MONENVIO'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 148961
        mmTop = 0
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText291: TppDBText
        UserName = 'DBText291'
        DataField = 'ASODNI'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 128852
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
    end
    object ppFooterBand31: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
    end
    object ppSummaryBand36: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel737: TppLabel
        UserName = 'Label679'
        AutoSize = False
        Caption = 'Total General              '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 100806
        mmTop = 1058
        mmWidth = 32808
        BandType = 7
      end
      object ppLine164: TppLine
        UserName = 'Line167'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 16934
        mmTop = 265
        mmWidth = 164042
        BandType = 7
      end
      object ppLine166: TppLine
        UserName = 'Line168'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 16934
        mmTop = 10583
        mmWidth = 164042
        BandType = 7
      end
      object ppDBCalc203: TppDBCalc
        UserName = 'DBCalc222'
        DataField = 'MONENVIO'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3598
        mmLeft = 148961
        mmTop = 1323
        mmWidth = 27780
        BandType = 7
      end
      object ppDBCalc233: TppDBCalc
        UserName = 'DBCalc238'
        DataField = 'ASONCTA'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 163248
        mmTop = 5556
        mmWidth = 12964
        BandType = 7
      end
      object ppLabel750: TppLabel
        UserName = 'Label750'
        AutoSize = False
        Caption = 'N'#176' De Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 100806
        mmTop = 5556
        mmWidth = 32808
        BandType = 7
      end
    end
    object ppGroup41: TppGroup
      BreakName = 'PROVBCOID'
      DataPipeline = DbRepDetx
      OutlineSettings.CreateNode = True
      UserName = 'Group41'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepDetx'
      object ppGroupHeaderBand41: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 18785
        mmPrintPosition = 0
        object ppLine196: TppLine
          UserName = 'Line165'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 16934
          mmTop = 17198
          mmWidth = 164042
          BandType = 3
          GroupNo = 0
        end
        object ppLabel738: TppLabel
          UserName = 'Label660'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 17463
          mmTop = 12171
          mmWidth = 39688
          BandType = 3
          GroupNo = 0
        end
        object ppLine197: TppLine
          UserName = 'Line195'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 16933
          mmTop = 7408
          mmWidth = 164042
          BandType = 3
          GroupNo = 0
        end
        object ppLabel741: TppLabel
          UserName = 'Label663'
          AutoSize = False
          Caption = 'Cuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 102129
          mmTop = 8731
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel742: TppLabel
          UserName = 'Label664'
          AutoSize = False
          Caption = 'De Ahorros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 102129
          mmTop = 12965
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel743: TppLabel
          UserName = 'Label665'
          AutoSize = False
          Caption = 'Cta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 121179
          mmTop = 12965
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppLabel744: TppLabel
          UserName = 'Label666'
          AutoSize = False
          Caption = 'Sit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 121179
          mmTop = 8731
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppLabel745: TppLabel
          UserName = 'Label667'
          AutoSize = False
          Caption = 'D.N.I.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 129382
          mmTop = 12700
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel747: TppLabel
          UserName = 'Label669'
          AutoSize = False
          Caption = 'Enviado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 163777
          mmTop = 12700
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel748: TppLabel
          UserName = 'Label670'
          AutoSize = False
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 163777
          mmTop = 8731
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppDBText310: TppDBText
          UserName = 'DBText2801'
          DataField = 'PROVBCOID'
          DataPipeline = DbRepDetx
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3598
          mmLeft = 16933
          mmTop = 3175
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppDBText309: TppDBText
          UserName = 'DBText276'
          DataField = 'PROVBCODES'
          DataPipeline = DbRepDetx
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3598
          mmLeft = 25400
          mmTop = 3175
          mmWidth = 73290
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand41: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 12435
        mmPrintPosition = 0
        object ppLabel755: TppLabel
          UserName = 'Label678'
          AutoSize = False
          Caption = 'Sub-Total '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 100806
          mmTop = 1588
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppLine198: TppLine
          UserName = 'Line166'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 16934
          mmTop = 265
          mmWidth = 164042
          BandType = 5
          GroupNo = 0
        end
        object ppLine199: TppLine
          UserName = 'Line164'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 16934
          mmTop = 11377
          mmWidth = 164042
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc242: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MONENVIO'
          DataPipeline = DbRepDetx
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3598
          mmLeft = 148961
          mmTop = 1852
          mmWidth = 27780
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc246: TppDBCalc
          UserName = 'DBCalc234'
          DataField = 'ASONCTA'
          DataPipeline = DbRepDetx
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3704
          mmLeft = 163248
          mmTop = 6615
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
        object ppLabel749: TppLabel
          UserName = 'Label749'
          AutoSize = False
          Caption = 'N'#176' De Asociados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 100806
          mmTop = 6085
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
