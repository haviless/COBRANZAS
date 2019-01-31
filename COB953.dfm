object fDetMtoCuo: TfDetMtoCuo
  Left = 119
  Top = 132
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalles Por Monto De La Cuota'
  ClientHeight = 453
  ClientWidth = 794
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
  object grbParametros: TGroupBox
    Left = 5
    Top = 2
    Width = 206
    Height = 46
    Caption = 'Periodo De Proceso'
    Enabled = False
    TabOrder = 0
    object lblNomMes: TLabel
      Left = 108
      Top = 19
      Width = 95
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
      Left = 64
      Top = 15
      Width = 38
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
  object grbCrit01: TGroupBox
    Left = 301
    Top = 1
    Width = 265
    Height = 58
    Enabled = False
    TabOrder = 1
    object fcLabel6: TfcLabel
      Left = 7
      Top = 26
      Width = 1
      Height = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcLabel2: TfcLabel
      Left = 7
      Top = 10
      Width = 98
      Height = 15
      Caption = 'Menor  Igual  Que'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcLabel4: TfcLabel
      Left = 138
      Top = 9
      Width = 98
      Height = 15
      Caption = 'Mayor  Igual  Que'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object dbeMtoMin: TwwDBEdit
      Left = 7
      Top = 26
      Width = 117
      Height = 25
      BorderStyle = bsNone
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
      OnExit = dbeMtoMinExit
      OnKeyPress = dbeMtoMinKeyPress
    end
    object dbeMtoMax: TwwDBEdit
      Left = 139
      Top = 25
      Width = 117
      Height = 25
      BorderStyle = bsNone
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
      OnExit = dbeMtoMaxExit
      OnKeyPress = dbeMtoMaxKeyPress
    end
  end
  object grbCrit03: TGroupBox
    Left = 395
    Top = 62
    Width = 204
    Height = 62
    Enabled = False
    TabOrder = 2
    object fcLabel3: TfcLabel
      Left = 7
      Top = 29
      Width = 62
      Height = 15
      Caption = 'Mayor Que'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object dbeMtoMay: TwwDBEdit
      Left = 78
      Top = 23
      Width = 117
      Height = 25
      BorderStyle = bsNone
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
      OnExit = dbeMtoMayExit
      OnKeyPress = dbeMtoMayKeyPress
    end
  end
  object grbCrit02: TGroupBox
    Left = 107
    Top = 62
    Width = 204
    Height = 62
    Enabled = False
    TabOrder = 3
    object fcLabel7: TfcLabel
      Left = 7
      Top = 27
      Width = 62
      Height = 15
      Caption = 'Menor Que'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object dbeMtoMen: TwwDBEdit
      Left = 77
      Top = 22
      Width = 117
      Height = 25
      BorderStyle = bsNone
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
      OnExit = dbeMtoMenExit
      OnKeyPress = dbeMtoMenKeyPress
    end
  end
  object rdbCriterio1: TRadioButton
    Left = 222
    Top = 5
    Width = 74
    Height = 17
    Caption = 'Criterio 1 '
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    TabStop = True
    OnClick = rdbCriterio1Click
  end
  object rdbCriterio2: TRadioButton
    Left = 28
    Top = 68
    Width = 74
    Height = 17
    Caption = 'Criterio 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = rdbCriterio2Click
  end
  object rdbCriterio3: TRadioButton
    Left = 315
    Top = 68
    Width = 74
    Height = 17
    Caption = 'Criterio 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = rdbCriterio3Click
  end
  object BitImprime: TBitBtn
    Left = 525
    Top = 416
    Width = 103
    Height = 27
    Cursor = crHandPoint
    Caption = 'Imprimir'
    TabOrder = 7
    OnClick = BitImprimeClick
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
    Left = 650
    Top = 416
    Width = 103
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 8
    OnClick = BitSalirClick
    Kind = bkClose
  end
  object dtgVrfTelDet: TwwDBGrid
    Left = 9
    Top = 131
    Width = 772
    Height = 275
    DisableThemesInTitle = False
    Selected.Strings = (
      'ASOAPENOM'#9'40'#9'Apellidos y Nombres'
      'ASONCTA'#9'13'#9'Cuenta~De Ahorros'
      'SITCTA'#9'2'#9'Situaci'#243'n'
      'CRESALDO'#9'15'#9'Monto~Procesado'
      'PORENVIO'#9'10'#9'Porcent(%)~a Descontar'
      'MONENVIO'#9'15'#9'Monto Por~Descontar'
      'MONRECUP'#9'15'#9'Monto~Cobrado'#9'F')
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
    TabOrder = 9
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDrawDataCell = dtgVrfTelDetDrawDataCell
  end
  object BitMostrar: TBitBtn
    Left = 641
    Top = 91
    Width = 103
    Height = 30
    Cursor = crHandPoint
    Caption = 'Mostar'
    TabOrder = 10
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
  object BitNoEnvia: TBitBtn
    Left = 413
    Top = 416
    Width = 103
    Height = 27
    Cursor = crHandPoint
    Caption = 'No Enviar'
    TabOrder = 11
    OnClick = BitNoEnviaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object grbProcesos: TGroupBox
    Left = 234
    Top = 267
    Width = 319
    Height = 37
    Caption = 'Procesando Informaci'#243'n'
    TabOrder = 12
    Visible = False
    object prbAvances: TProgressBar
      Left = 4
      Top = 14
      Width = 309
      Height = 16
      Min = 1
      Position = 1
      Step = 17
      TabOrder = 0
    end
  end
  object BitSiguiente: TBitBtn
    Left = 301
    Top = 416
    Width = 103
    Height = 27
    Cursor = crHandPoint
    Caption = 'Sgte.Cuota'
    TabOrder = 13
    OnClick = BitSiguienteClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFF333333333333000333333333
      3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
      3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
      0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
      BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
      33337777773FF733333333333300033333333333337773333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object DbRepDetx: TppDBPipeline
    DataSource = DM1.dsProvin
    UserName = 'DbRepDetx'
    Left = 384
    Top = 352
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
    Left = 416
    Top = 352
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepDetx'
    object ppHeaderBand36: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29369
      mmPrintPosition = 0
      object lblTitulo04: TppLabel
        UserName = 'lblTitulo2'
        AutoSize = False
        Caption = 
          'ACTUALIZACIONES REALIZADAS AL MAESTRO DE ASOCIADOS DEL XX/XX/XXX' +
          'X AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 16669
        mmWidth = 193146
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
      object ppLabel103: TppLabel
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
      object lblTitulo04a: TppLabel
        UserName = 'lblTitulo04a'
        AutoSize = False
        Caption = 'ENTRE UNO U OTRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 24342
        mmWidth = 77258
        BandType = 0
      end
    end
    object ppDetailBand38: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText41: TppDBText
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
      object ppDBText42: TppDBText
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
      mmHeight = 1323
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
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 100806
        mmTop = 1058
        mmWidth = 32808
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line167'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 16934
        mmTop = 265
        mmWidth = 164042
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line168'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 16934
        mmTop = 10583
        mmWidth = 164042
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc222'
        DataField = 'MONENVIO'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 4233
        mmLeft = 148961
        mmTop = 1323
        mmWidth = 27780
        BandType = 7
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc238'
        DataField = 'ASONCTA'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRepDetx'
        mmHeight = 4233
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
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 100806
        mmTop = 5556
        mmWidth = 32808
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PROVBCOID'
      DataPipeline = DbRepDetx
      OutlineSettings.CreateNode = True
      UserName = 'Group41'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepDetx'
      object ppGroupHeaderBand1: TppGroupHeaderBand
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
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 4233
          mmLeft = 16933
          mmTop = 3440
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
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 4233
          mmLeft = 25400
          mmTop = 3440
          mmWidth = 73290
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 17463
        mmPrintPosition = 0
        object ppLabel755: TppLabel
          UserName = 'Label678'
          AutoSize = False
          Caption = 'Sub-Total '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
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
        object ppDBCalc242: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MONENVIO'
          DataPipeline = DbRepDetx
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 4233
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
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbRepDetx'
          mmHeight = 4233
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
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 100806
          mmTop = 6085
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 17198
          mmTop = 11113
          mmWidth = 164042
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
