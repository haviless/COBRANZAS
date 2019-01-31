object FCaptaCuotas: TFCaptaCuotas
  Left = 137
  Top = 33
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ampliaci'#243'n & Reducci'#243'n'
  ClientHeight = 513
  ClientWidth = 616
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object lblNombre: TLabel
    Left = 270
    Top = 0
    Width = 46
    Height = 16
    Caption = 'Asociado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 8
    Top = 81
    Width = 67
    Height = 16
    Caption = 'Compromisos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object TLabel
    Left = 258
    Top = 42
    Width = 96
    Height = 16
    Caption = 'Fecha de Registro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TLabel
    Left = 9
    Top = 42
    Width = 178
    Height = 16
    Caption = 'Oficina de Origen de la Solicitud'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 330
    Top = 24
    Width = 23
    Height = 15
    AutoSelect = False
    AutoSize = False
    TabOrder = 4
    Text = 'Edit1'
  end
  object dbgCompromiso: TwwDBGrid
    Left = 8
    Top = 101
    Width = 601
    Height = 97
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = 13165023
    FixedCols = 0
    ShowHorzScrollBar = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgWordWrap]
    ParentFont = False
    TabOrder = 6
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnDblClick = dbgCompromisoDblClick
    object dbgCompromisoIButton: TwwIButton
      Left = 0
      Top = 0
      Width = 27
      Height = 25
      AllowAllUp = True
      Flat = True
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
      OnClick = dbgCompromisoIButtonClick
    end
  end
  object dbeApeNom: TwwDBEdit
    Left = 270
    Top = 19
    Width = 286
    Height = 21
    AutoFillDate = False
    AutoSelect = False
    AutoSize = False
    BorderStyle = bsNone
    CharCase = ecUpperCase
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
    OnExit = dbeApeNomExit
  end
  object pnlCrono: TPanel
    Left = 8
    Top = 341
    Width = 601
    Height = 167
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 13165023
    Enabled = False
    TabOrder = 5
    object lblTitu1: TLabel
      Left = 8
      Top = 5
      Width = 38
      Height = 15
      Caption = 'Cr'#233'dito'
    end
    object lblTitu2: TLabel
      Left = 136
      Top = 5
      Width = 46
      Height = 15
      Caption = 'Mto. Sol.'
    end
    object lblTitu3: TLabel
      Left = 302
      Top = 5
      Width = 34
      Height = 15
      Caption = 'Estado'
    end
    object lblcuota: TLabel
      Left = 58
      Top = 106
      Width = 34
      Height = 30
      Alignment = taCenter
      Caption = '# Cuotas'
      WordWrap = True
    end
    object Label2: TLabel
      Left = 156
      Top = 106
      Width = 53
      Height = 30
      Alignment = taCenter
      Caption = 'Capacidad de Pago'
      WordWrap = True
    end
    object Label3: TLabel
      Left = 241
      Top = 106
      Width = 32
      Height = 30
      Alignment = taCenter
      Caption = 'Monto Cuota'
      WordWrap = True
    end
    object lblSaldoCre: TLabel
      Left = 104
      Top = 106
      Width = 47
      Height = 30
      Alignment = taCenter
      Caption = 'Saldo del Cr'#233'dito'
      WordWrap = True
    end
    object Label4: TLabel
      Left = 214
      Top = 5
      Width = 46
      Height = 15
      Caption = '# Cuotas'
    end
    object Label5: TLabel
      Left = 15
      Top = 106
      Width = 27
      Height = 30
      Alignment = taCenter
      Caption = 'Ctas. Pend.'
      WordWrap = True
    end
    object clbCronoAux: TCheckListBox
      Left = 77
      Top = 32
      Width = 100
      Height = 41
      ItemHeight = 15
      TabOrder = 1
      Visible = False
    end
    object clbCrono: TCheckListBox
      Left = 5
      Top = 20
      Width = 372
      Height = 81
      OnClickCheck = clbCronoClickCheck
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
    end
    object rgAccion: TRadioGroup
      Left = 383
      Top = 16
      Width = 106
      Height = 57
      Caption = 'Acci'#243'n'
      Enabled = False
      Items.Strings = (
        'Ampliaci'#243'n'
        'Reducci'#243'n')
      TabOrder = 2
      OnClick = rgAccionClick
    end
    object edtCuota: TEdit
      Left = 55
      Top = 138
      Width = 34
      Height = 23
      Color = clInfoBk
      Enabled = False
      TabOrder = 3
      OnExit = edtCuotaExit
      OnKeyPress = edtCuotaKeyPress
    end
    object Z2bbtnCalculo: TfcShapeBtn
      Left = 533
      Top = 131
      Width = 32
      Height = 30
      Hint = 'Nuevo'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
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
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCalculoClick
    end
    object edtCapaci: TEdit
      Left = 160
      Top = 138
      Width = 49
      Height = 23
      Color = clScrollBar
      Enabled = False
      TabOrder = 5
    end
    object edtMtoCuo: TEdit
      Left = 216
      Top = 138
      Width = 57
      Height = 23
      Color = clScrollBar
      Enabled = False
      TabOrder = 6
    end
    object Z2bbtnGraba: TfcShapeBtn
      Left = 565
      Top = 131
      Width = 32
      Height = 30
      Hint = 'Inserta Movimiento'
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
      TabOrder = 7
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnGrabaClick
    end
    object edtSaldoCre: TEdit
      Left = 94
      Top = 138
      Width = 57
      Height = 23
      Color = clScrollBar
      Enabled = False
      TabOrder = 8
    end
    object Z2sbtnCapacidad: TfcShapeBtn
      Left = 435
      Top = 131
      Width = 32
      Height = 32
      Hint = 'Capacidad de Pago'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 9
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2sbtnCapacidadClick
    end
    object z2bbtnCrono: TfcShapeBtn
      Left = 468
      Top = 131
      Width = 32
      Height = 31
      Hint = 'Cronograma para Cr'#233'ditos en Efectivo'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 10
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnCronoClick
    end
    object Z2bbtnImprime: TfcShapeBtn
      Left = 500
      Top = 131
      Width = 32
      Height = 31
      Hint = 'Cronograma para Cr'#233'ditos en Efectivo'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 11
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnImprimeClick
    end
    object edtCuoPen: TEdit
      Left = 15
      Top = 138
      Width = 34
      Height = 23
      Color = clScrollBar
      Enabled = False
      TabOrder = 12
      OnExit = edtCuotaExit
      OnKeyPress = edtCuotaKeyPress
    end
    object rgTope: TRadioGroup
      Left = 497
      Top = 16
      Width = 85
      Height = 57
      Caption = 'Acci'#243'n'
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'Con Tope'
        'Sin Tope')
      TabOrder = 13
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 403
      Top = 131
      Width = 32
      Height = 31
      Hint = 'Cronograma para Cr'#233'ditos en Efectivo'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F33F333F3337F330FF0FFF0FFF
        F03337F37F337F3337F330FF0FFF0FFFF03337F37FFF7FFF37F330F00000000F
        F03337F77777777337F330FFF0FFF0FFF03337F337F337F337F330FFF0FFF0FF
        F03337F337FFF7FFF7F330FF00000000F03337F37777777737F330FFFF0FFF0F
        F03337F3337F337F37F330FFFF0FFF0FF03337F33373337337F330FFFFFFFFFF
        F03337F33333333FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 14
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object rgMes: TRadioGroup
      Left = 384
      Top = 76
      Width = 145
      Height = 36
      Caption = 'Mes 1ra. Cuota'
      Columns = 2
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'Actual'
        'Sgte.')
      ParentFont = False
      TabOrder = 15
    end
  end
  object pnlDatos: TPanel
    Left = 8
    Top = 203
    Width = 601
    Height = 137
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 13165023
    Enabled = False
    TabOrder = 7
    object lblModulo: TLabel
      Left = 8
      Top = 3
      Width = 82
      Height = 16
      Caption = 'C'#243'digo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lbldni: TLabel
      Left = 143
      Top = 3
      Width = 38
      Height = 16
      Caption = 'D.N.I.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblCivil: TLabel
      Left = 267
      Top = 3
      Width = 47
      Height = 16
      Caption = 'Est. civil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblTel1: TLabel
      Left = 389
      Top = 3
      Width = 33
      Height = 16
      Caption = 'Telf.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblTelf2: TLabel
      Left = 493
      Top = 3
      Width = 62
      Height = 16
      Caption = 'Telf. Ref.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblDirdom: TLabel
      Left = 8
      Top = 44
      Width = 85
      Height = 16
      Caption = 'Direc. Domicilio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblDirCol: TLabel
      Left = 335
      Top = 44
      Width = 75
      Height = 16
      Caption = 'Direc. Colegio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblIngreso: TLabel
      Left = 136
      Top = 86
      Width = 71
      Height = 16
      Caption = 'Ing. Mensual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblObser: TLabel
      Left = 240
      Top = 86
      Width = 64
      Height = 16
      Caption = 'Observaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 13
      Top = 86
      Width = 92
      Height = 16
      Caption = 'Fch Ult. T. Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeTelf2: TwwDBEdit
      Left = 493
      Top = 20
      Width = 90
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ASOTELF2'
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
    object dbeTelf1: TwwDBEdit
      Left = 389
      Top = 20
      Width = 90
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ASOTELF1'
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
    object dbeCivil: TwwDBEdit
      Left = 267
      Top = 20
      Width = 108
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ESTCIVID'
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
    object dbeDni: TwwDBEdit
      Left = 143
      Top = 20
      Width = 108
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ASODNI'
      Enabled = False
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
    object dbeModulo: TwwDBEdit
      Left = 8
      Top = 20
      Width = 124
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ASOCODMOD'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeDirDom: TwwDBEdit
      Left = 8
      Top = 63
      Width = 308
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ASODIR'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeDirCol: TwwDBEdit
      Left = 335
      Top = 63
      Width = 252
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'CEDDIR'
      Enabled = False
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
    object dbeMensual: TwwDBEdit
      Left = 136
      Top = 105
      Width = 90
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'INGMENSUAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeMensualExit
      OnKeyPress = edtCuotaKeyPress
    end
    object dbreObse: TwwDBRichEdit
      Left = 240
      Top = 105
      Width = 265
      Height = 21
      AutoURLDetect = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusTransparentFontColor = 13165023
      HideSelection = False
      HideScrollBars = False
      PrintJobName = 'Delphi 5'
      TabOrder = 10
      OnDblClick = dbreObseDblClick
      PopupOptions = [rpoPopupEdit]
      EditorOptions = []
      EditorCaption = 'Observacion'
      EditorPosition.Left = 0
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 0
      MeasurementUnits = muCentimeters
      PrintMargins.Top = 1.000000000000000000
      PrintMargins.Bottom = 1.000000000000000000
      PrintMargins.Left = 1.000000000000000000
      PrintMargins.Right = 1.000000000000000000
      OnCloseDialog = dbreObseCloseDialog
      PrintHeader.VertMargin = 0.500000000000000000
      PrintHeader.Font.Charset = DEFAULT_CHARSET
      PrintHeader.Font.Color = clWindowText
      PrintHeader.Font.Height = -11
      PrintHeader.Font.Name = 'MS Sans Serif'
      PrintHeader.Font.Style = []
      PrintFooter.VertMargin = 0.500000000000000000
      PrintFooter.Font.Charset = DEFAULT_CHARSET
      PrintFooter.Font.Color = clWindowText
      PrintFooter.Font.Height = -11
      PrintFooter.Font.Name = 'MS Sans Serif'
      PrintFooter.Font.Style = []
      RichEditVersion = 2
      Data = {
        AE0000007B5C727466315C616E73695C616E7369637067313235325C64656666
        305C6465666C616E67333038327B5C666F6E7474626C7B5C66305C666E696C5C
        66636861727365743020436F6D69632053616E73204D533B7D7D0D0A7B5C636F
        6C6F7274626C203B5C726564305C677265656E305C626C75653132383B7D0D0A
        5C766965776B696E64345C7563315C706172645C6366315C66305C6673313620
        646272654F6273655C7061720D0A7D0D0A00}
    end
    object Z2bbtnSigue: TfcShapeBtn
      Left = 516
      Top = 99
      Width = 32
      Height = 30
      Hint = 'Inserta Movimiento'
      Color = 10207162
      DitherColor = clWhite
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
      TabOrder = 11
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnSigueClick
    end
    object Z2bbtnAtras: TfcShapeBtn
      Left = 556
      Top = 99
      Width = 32
      Height = 30
      Hint = 'Cancelar'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 12
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAtrasClick
    end
    object dbseAnoTalon: TwwDBSpinEdit
      Left = 15
      Top = 105
      Width = 49
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 2000.000000000000000000
      Value = 2002.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'COBTALOANO'
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      TabOrder = 7
      UnboundDataType = wwDefault
    end
    object dbseMesTalon: TwwDBSpinEdit
      Left = 71
      Top = 105
      Width = 33
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'COBTALOMES'
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      TabOrder = 8
      UnboundDataType = wwDefault
      UsePictureMask = False
    end
  end
  object dbdtpFechaSol: TwwDBDateTimePicker
    Left = 258
    Top = 62
    Width = 88
    Height = 21
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -8
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Color = 13165023
    Epoch = 1950
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    ShowButton = True
    TabOrder = 8
    OnExit = dbdtpFechaSolExit
  end
  object dblcdOfDes: TwwDBLookupComboDlg
    Left = 8
    Top = 62
    Width = 62
    Height = 19
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    CharCase = ecUpperCase
    BorderStyle = bsNone
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    Selected.Strings = (
      'OFDESID'#9'3'#9'CODIGO'#9'F'
      'OFDESNOM'#9'20'#9'NOMBRE'#9'F'
      'OFDESABR'#9'15'#9'ABREV'#9'F')
    LookupTable = DM1.cdsOfDes
    LookupField = 'OFDESID'
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    Color = 13165023
    Frame.Enabled = True
    Frame.FocusBorders = [efRightBorder, efBottomBorder]
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    ParentFont = False
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = True
    UseTFields = False
    ShowMatchText = True
    OnExit = dblcdOfDesExit
  end
  object dbeDescOfDes: TwwDBEdit
    Left = 74
    Top = 62
    Width = 169
    Height = 21
    BorderStyle = bsNone
    Color = 13165023
    Enabled = False
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object rgConsi: TRadioGroup
    Left = 8
    Top = 7
    Width = 249
    Height = 33
    Caption = 'Intervienen Cr'#233'ditos con Cuotas Bloqueadas'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Si'
      'No')
    TabOrder = 0
  end
  object ppDBCronograma: TppDBPipeline
    UserName = 'DBCronograma'
    Left = 574
    Top = 442
  end
  object ppRepCronograma: TppReport
    AutoStop = False
    DataPipeline = ppDBCronograma
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
    Template.FileName = 'T:\SOLDb\SOLFormatos\Cob\Dema\CronogramaPagosPrevio.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepCronogramaPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 577
    Top = 414
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBCronograma'
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CRECUOTA'
        DataPipeline = ppDBCronograma
        DisplayFormat = '0#'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 529
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'PERIODO'
        DataPipeline = ppDBCronograma
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CREAMORT'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 90752
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREINTERES'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 114829
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREFLAT'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 142082
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREMTO'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 66675
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 4763
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 20108
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 58208
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 85196
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 109538
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 133879
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 160602
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 187325
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CRECAPCRON'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 67469
        mmPrintPosition = 0
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'Cronograma de Pagos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 13
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 77523
          mmTop = 5292
          mmWidth = 46567
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Fecha :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 794
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Hora :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 6350
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169598
          mmTop = 529
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable2: TppSystemVariable
          UserName = 'SystemVariable2'
          VarType = vtTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169863
          mmTop = 6085
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'Tipo de Pr'#233'stamo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 11377
          mmWidth = 29104
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'Monto :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 22225
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Inter'#233's :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 27252
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = 'Comisi'#243'n FLAT :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 32279
          mmWidth = 25665
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'Tiempo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 37571
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = 'Tipo de Cuotas :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 16933
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'meses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 54769
          mmTop = 37571
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 7144
          mmTop = 55563
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 33338
          mmTop = 55563
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Cuota a Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 8467
          mmLeft = 66411
          mmTop = 55563
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Capital'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169069
          mmTop = 55563
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'Amortizaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 86519
          mmTop = 55563
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Interes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 115888
          mmTop = 55563
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Caption = 'Comisi'#243'n FLAT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 8467
          mmLeft = 141288
          mmTop = 55563
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 4763
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 20108
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 58208
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 85196
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 109538
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 133879
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 160602
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 187325
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Label1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 11377
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Label2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 16933
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Label3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 22225
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Label4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 27252
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Label5'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 32279
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Label6'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43127
          mmTop = 37571
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 52388
          mmWidth = 183092
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 66940
          mmWidth = 183092
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 21960
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTO'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 62442
          mmTop = 3440
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CREAMORT'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 90752
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel124: TppLabel
          UserName = 'Label124'
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 32808
          mmTop = 3440
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppLine30: TppLine
          UserName = 'Line30'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 4763
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
        end
        object ppLine31: TppLine
          UserName = 'Line301'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 20108
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 58208
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine33: TppLine
          UserName = 'Line33'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 85196
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine34: TppLine
          UserName = 'Line34'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 109538
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine35: TppLine
          UserName = 'Line35'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 133879
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine36: TppLine
          UserName = 'Line36'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 160602
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine37: TppLine
          UserName = 'Line37'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 187325
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREINTERES'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 114829
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'CREFLAT'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 135732
          mmTop = 3440
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 8996
          mmWidth = 183092
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 0
          mmWidth = 183092
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
