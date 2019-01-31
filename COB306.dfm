object FDevolucionCuotas: TFDevolucionCuotas
  Left = 121
  Top = 193
  Width = 568
  Height = 260
  Caption = 'Cobranzas'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 72
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 4
    Top = 3
    Width = 553
    Height = 222
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 6
      Top = 4
      Width = 193
      Height = 27
      Caption = 'Devolución de Cuotas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 3
      Top = 46
      Width = 544
      Height = 123
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TLabel
        Left = 117
        Top = 38
        Width = 23
        Height = 15
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 38
        Width = 59
        Height = 15
        Caption = 'N° Reclamo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 1
        Width = 35
        Height = 15
        Caption = 'Código'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 77
        Top = 1
        Width = 87
        Height = 15
        Caption = 'Apellido Paterno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 230
        Top = 1
        Width = 91
        Height = 15
        Caption = 'Apellido Materno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 400
        Top = 1
        Width = 40
        Height = 15
        Caption = 'Nombre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 426
        Top = 38
        Width = 32
        Height = 15
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 269
        Top = 38
        Width = 76
        Height = 15
        Caption = 'Forma de Pago '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 75
        Width = 34
        Height = 15
        Caption = 'Banco '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 205
        Top = 74
        Width = 35
        Height = 15
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 342
        Top = 75
        Width = 107
        Height = 15
        Caption = 'Fecha de Desembolso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeTipo: TwwDBEdit
        Left = 163
        Top = 54
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeApePat: TwwDBEdit
        Left = 77
        Top = 16
        Width = 153
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeApeMat: TwwDBEdit
        Left = 231
        Top = 16
        Width = 169
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNombre: TwwDBEdit
        Left = 400
        Top = 16
        Width = 133
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 117
        Top = 54
        Width = 49
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 426
        Top = 54
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 269
        Top = 54
        Width = 49
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit3: TwwDBEdit
        Left = 319
        Top = 54
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 6
        Top = 92
        Width = 49
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit4: TwwDBEdit
        Left = 56
        Top = 92
        Width = 148
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit5: TwwDBEdit
        Left = 205
        Top = 92
        Width = 137
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 342
        Top = 92
        Width = 105
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ShowButton = True
        TabOrder = 11
      end
      object wwDBComboDlg1: TwwDBComboDlg
        Left = 6
        Top = 54
        Width = 110
        Height = 21
        ShowButton = True
        Style = csDropDown
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 12
        UnboundDataType = wwDefault
      end
      object wwDBComboDlg2: TwwDBComboDlg
        Left = 6
        Top = 16
        Width = 72
        Height = 21
        ShowButton = True
        Style = csDropDown
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 13
        UnboundDataType = wwDefault
      end
    end
    object Panel2: TPanel
      Left = 328
      Top = 4
      Width = 219
      Height = 42
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TLabel
        Left = 110
        Top = 0
        Width = 105
        Height = 15
        Caption = 'Fecha de Devolución'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 5
        Top = 2
        Width = 74
        Height = 15
        Caption = 'N° Devolución'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object wwDBDateTimePicker2: TwwDBDateTimePicker
        Left = 111
        Top = 15
        Width = 97
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ShowButton = True
        TabOrder = 0
      end
      object wwDBEdit1: TwwDBEdit
        Left = 3
        Top = 15
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 454
      Top = 185
      Width = 32
      Height = 31
      Hint = 'Calcular'
      Color = 13165023
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
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 501
      Top = 185
      Width = 32
      Height = 31
      Hint = 'Cancelar'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033911833333333333333333F333333333333
        0000339111833333911333333388F333333F3333000033911118333911118333
        38F38F333F88F33300003339111183911111833338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003339
        1118333911183333338F33838F338F33000033911183333391118333338FF833
        38F338F300003391183333333911133333388333338FFF830000333913333333
        3391833333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
  end
end
