object FToolActApo: TFToolActApo
  Left = 208
  Top = 107
  Width = 708
  Height = 263
  Caption = 'C'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTool: TPanel
    Left = 3
    Top = 2
    Width = 694
    Height = 66
    Color = 13165023
    TabOrder = 0
    object TLabel
      Left = 7
      Top = 9
      Width = 78
      Height = 15
      Caption = 'Unidad de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 268
      Top = 9
      Width = 19
      Height = 15
      Caption = 'Use'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcduniPag: TwwDBLookupComboDlg
      Left = 9
      Top = 26
      Width = 74
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Unidad de Pago'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'UPAGOID'#9'3'#9'C'#243'digo'#9'F'
        'UPAGONOM'#9'65'#9'Unidad de Pago'#9'F')
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcduniPagExit
    end
    object dblcdUse: TwwDBLookupComboDlg
      Left = 262
      Top = 26
      Width = 74
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Use'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'USEID'#9'3'#9'C'#243'digo'#9'F'
        'USENOM'#9'75'#9'Nombre Use'#9'F')
      LookupTable = DM1.cdsUSES
      LookupField = 'USEID'
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdUseExit
    end
    object dbeUniPag: TwwDBEdit
      Left = 86
      Top = 26
      Width = 174
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
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUse: TwwDBEdit
      Left = 338
      Top = 26
      Width = 186
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
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object bbtnSigue: TfcShapeBtn
      Left = 556
      Top = 22
      Width = 31
      Height = 29
      Hint = 'Seleccionar'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnSigueClick
    end
  end
  object Panel1: TPanel
    Left = 3
    Top = 69
    Width = 408
    Height = 138
    BevelInner = bvRaised
    BorderWidth = 4
    BorderStyle = bsSingle
    Color = clTeal
    TabOrder = 1
    OnExit = Panel1Exit
    object Label2: TLabel
      Left = 29
      Top = 46
      Width = 62
      Height = 26
      Caption = 'N'#250'mero de Operaci'#243'n'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 7
      Top = 7
      Width = 390
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'DATOS DE LA OPERACI'#211'N'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 177
      Top = 45
      Width = 89
      Height = 29
      AutoSize = False
      Caption = 'Fecha de Operaci'#243'n'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 335
      Top = 42
      Width = 31
      Height = 29
      Hint = 'Ejecutar Actualizaci'#243'n'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 335
      Top = 78
      Width = 31
      Height = 29
      Hint = 'Cancelar Actualizaci'#243'n'
      Cancel = True
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
      Layout = blGlyphTop
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object dbeNumOpe: TwwDBEdit
      Left = 27
      Top = 78
      Width = 115
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
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeFecOpe: TwwDBDateTimePicker
      Left = 179
      Top = 77
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = 13165023
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
    end
  end
end
