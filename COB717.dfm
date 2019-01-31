object FToolNuevoCuota: TFToolNuevoCuota
  Left = 215
  Top = 209
  Width = 751
  Height = 70
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlNuevoCuota: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 43
    Align = alClient
    Color = 13165023
    TabOrder = 0
    object Label1: TLabel
      Left = 71
      Top = 3
      Width = 51
      Height = 13
      Caption = 'Ano + Mes'
    end
    object Label2: TLabel
      Left = 16
      Top = 2
      Width = 49
      Height = 13
      Caption = 'Compa'#241#237'a'
    end
    object Label3: TLabel
      Left = 289
      Top = 2
      Width = 109
      Height = 13
      Caption = 'Nueva Tasa de Inter'#233's'
    end
    object bbtnSigue: TfcShapeBtn
      Left = 211
      Top = 10
      Width = 31
      Height = 29
      Hint = 'Genera Refinanciaci'#243'n Autom'#225'tica'
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
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnSigueClick
    end
    object dblcPeriodo: TwwDBLookupCombo
      Left = 70
      Top = 16
      Width = 121
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsPeriodo
      LookupField = 'ANOMES'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object dblcdCia: TwwDBLookupCombo
      Left = 16
      Top = 16
      Width = 53
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsCia
      LookupField = 'CIAID'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object dbeNuevoInteres: TwwDBEdit
      Left = 288
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 413
      Top = 7
      Width = 31
      Height = 29
      Hint = 'Genera Refinanciaci'#243'n Autom'#225'tica'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
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
      OnClick = fcShapeBtn1Click
    end
  end
end
