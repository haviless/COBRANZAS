object FAnuRef: TFAnuRef
  Left = 1
  Top = 97
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsSingle
  Caption = 'Anulación de Refinanciación'
  ClientHeight = 438
  ClientWidth = 787
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlcabe: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 43
    Align = alTop
    Color = 10207162
    TabOrder = 0
    object lblApeNom: TLabel
      Left = 6
      Top = 2
      Width = 107
      Height = 15
      Caption = 'Apellidos y Nombres '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblCModular: TLabel
      Left = 273
      Top = 2
      Width = 83
      Height = 15
      Caption = 'Código Modular:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblCPago: TLabel
      Left = 405
      Top = 2
      Width = 80
      Height = 15
      Caption = 'Código de Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblDIden: TLabel
      Left = 546
      Top = 2
      Width = 102
      Height = 15
      Caption = 'Doc. Identificación'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblSit: TLabel
      Left = 682
      Top = 2
      Width = 50
      Height = 15
      Caption = 'Situación'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbeAsoNom: TwwDBEdit
      Left = 6
      Top = 19
      Width = 257
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeAsoNomExit
    end
    object dbeCodigoModular: TwwDBEdit
      Left = 273
      Top = 19
      Width = 123
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCodigoPago: TwwDBEdit
      Left = 405
      Top = 19
      Width = 132
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTipDoc: TwwDBEdit
      Left = 546
      Top = 19
      Width = 34
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeDocIdNum: TwwDBEdit
      Left = 584
      Top = 19
      Width = 89
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeSit: TwwDBEdit
      Left = 682
      Top = 19
      Width = 33
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object dbgCreditos: TwwDBGrid
    Left = 2
    Top = 44
    Width = 693
    Height = 93
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = False
    EditControlOptions = []
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColLines, dgTabs]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnDblClick = dbgCreditosDblClick
    IndicatorColor = icBlack
  end
  object pnlDeta: TPanel
    Left = 0
    Top = 144
    Width = 785
    Height = 289
    Color = 10207162
    TabOrder = 2
    object Label1: TLabel
      Left = 374
      Top = 49
      Width = 67
      Height = 15
      Caption = 'Núm. Crédito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 627
      Top = 49
      Width = 95
      Height = 15
      Caption = 'Mto. Refinanciado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 374
      Top = 89
      Width = 63
      Height = 15
      Caption = 'Núm. Cuotas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 529
      Top = 49
      Width = 93
      Height = 15
      Caption = 'Fec. Refinanciado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 477
      Top = 89
      Width = 34
      Height = 15
      Caption = 'Estado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 7
      Top = 113
      Width = 100
      Height = 15
      Caption = 'CREDITO ORIGEN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 374
      Top = 26
      Width = 117
      Height = 15
      Caption = 'CREDITO GENERADO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbgDeta: TwwDBGrid
      Left = 374
      Top = 131
      Width = 405
      Height = 153
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = False
      EditControlOptions = []
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      IndicatorColor = icBlack
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 783
      Height = 23
      Align = alTop
      Alignment = taCenter
      Caption = 'Detalle de Refinanciación'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object db2Cred: TwwDBEdit
      Left = 374
      Top = 66
      Width = 123
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeMto: TwwDBEdit
      Left = 627
      Top = 66
      Width = 72
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCuota: TwwDBEdit
      Left = 374
      Top = 106
      Width = 72
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object z2bbtnCerrar: TfcShapeBtn
      Left = 767
      Top = 3
      Width = 18
      Height = 15
      Hint = 'Cronograma para Créditos en Efectivo'
      Caption = 'X'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnCerrarClick
    end
    object db2Fecha: TwwDBEdit
      Left = 529
      Top = 66
      Width = 72
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeestado: TwwDBEdit
      Left = 477
      Top = 106
      Width = 124
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbgDeta1: TwwDBGrid
      Left = 4
      Top = 131
      Width = 365
      Height = 153
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = False
      EditControlOptions = []
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs]
      ParentFont = False
      TabOrder = 8
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      IndicatorColor = icBlack
    end
  end
  object Z2bbtnCarga: TfcShapeBtn
    Left = 701
    Top = 107
    Width = 36
    Height = 31
    Hint = 'Procesa la Anulación'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
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
    Options = [boFocusable]
    Orientation = soRight
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 28
    ShadeColors.Btn3DLight = 13492188
    ShadeColors.BtnHighlight = 15134701
    ShadeColors.BtnShadow = 5136477
    ShadeColors.BtnBlack = 2568239
    ShadeStyle = fbsRaised
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 3
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnCargaClick
  end
  object pnlObse: TPanel
    Left = 216
    Top = 48
    Width = 457
    Height = 89
    Color = 10207162
    TabOrder = 4
    Visible = False
    object wwDBRichEdit1: TwwDBRichEdit
      Left = 6
      Top = 27
      Width = 405
      Height = 57
      AutoURLDetect = False
      PrintJobName = 'Delphi 5'
      TabOrder = 0
      EditorCaption = 'Edit Rich Text'
      EditorPosition.Left = 0
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 0
      MeasurementUnits = muInches
      PrintMargins.Top = 1
      PrintMargins.Bottom = 1
      PrintMargins.Left = 1
      PrintMargins.Right = 1
      RichEditVersion = 2
      Data = {
        810000007B5C727466315C616E73695C616E7369637067313235325C64656666
        305C6465666C616E67333038327B5C666F6E7474626C7B5C66305C666E696C20
        4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
        5C706172645C66305C6673313620777744425269636845646974315C7061720D
        0A7D0D0A00}
    end
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 455
      Height = 23
      Align = alTop
      Alignment = taCenter
      Caption = 'OBSERVACION'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object Z2bbtnCierra1: TfcShapeBtn
      Left = 437
      Top = 3
      Width = 18
      Height = 15
      Hint = 'Cronograma para Créditos en Efectivo'
      Caption = 'X'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCierra1Click
    end
    object Z2bbtnProcesa: TfcShapeBtn
      Left = 417
      Top = 50
      Width = 36
      Height = 31
      Hint = 'Procesa la Anulación'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      Orientation = soRight
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 28
      ShadeColors.Btn3DLight = 13492188
      ShadeColors.BtnHighlight = 15134701
      ShadeColors.BtnShadow = 5136477
      ShadeColors.BtnBlack = 2568239
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCargaClick
    end
  end
end
