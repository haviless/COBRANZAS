object FCobranzaGlobal: TFCobranzaGlobal
  Left = 208
  Top = 50
  Width = 980
  Height = 722
  Caption = 'Cobranzas'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 44
    Align = alTop
    BevelInner = bvRaised
    BiDiMode = bdLeftToRight
    Color = 10207162
    ParentBiDiMode = False
    TabOrder = 0
    object fclTitulo: TfcLabel
      Left = 24
      Top = 5
      Width = 478
      Height = 38
      Caption = 'REGISTRO GLOBAL DE COBRANZA'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.ExtrudeEffects.Depth = 5
      TextOptions.ExtrudeEffects.FarColor = 11892599
      TextOptions.ExtrudeEffects.NearColor = 13740971
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object eb1: TwwExpandButton
      Left = 792
      Top = 16
      Width = 22
      Height = 16
      DisableThemes = False
      AutoShrink = False
      GridIndents.X = 11
      Caption = 'False'
      TabOrder = 0
      Visible = False
      ButtonAlignment = taCenter
    end
  end
  object pnlTool: TPanel
    Left = 0
    Top = 44
    Width = 964
    Height = 86
    Align = alTop
    BevelOuter = bvNone
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 19
      Top = 38
      Width = 31
      Height = 15
      Caption = 'Desde'
    end
    object Label4: TLabel
      Left = 123
      Top = 38
      Width = 29
      Height = 15
      Caption = 'Hasta'
    end
    object Bevel1: TBevel
      Left = 8
      Top = 1
      Width = 225
      Height = 81
    end
    object bbtnImprime: TfcShapeBtn
      Left = 241
      Top = 27
      Width = 34
      Height = 31
      Hint = 'Imprimir'
      Color = 10207162
      DitherColor = clWhite
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
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnImprimeClick
    end
    object pnlRepre: TPanel
      Left = 408
      Top = 3
      Width = 360
      Height = 70
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      BorderStyle = bsSingle
      Color = 10207162
      ParentBiDiMode = False
      TabOrder = 2
      object lblRepsen: TLabel
        Left = 8
        Top = 9
        Width = 73
        Height = 15
        Caption = 'Representante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcdRepresentante: TwwDBLookupComboDlg
        Left = 9
        Top = 29
        Width = 63
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Representante'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'REPRID'#9'5'#9'Codigo'#9'F'
          'REPRAPENOM'#9'70'#9'Representante'#9'F')
        LookupTable = DM1.cdsRepresentante
        LookupField = 'REPRID'
        Color = clWhite
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdRepresentanteExit
      end
      object edtRepresentante: TEdit
        Left = 78
        Top = 27
        Width = 273
        Height = 23
        Color = 13165023
        Enabled = False
        TabOrder = 1
      end
    end
    object rdgTipo: TRadioGroup
      Left = 293
      Top = 1
      Width = 108
      Height = 72
      Caption = ' Tipo '
      ItemIndex = 1
      Items.Strings = (
        'U. Pago'
        'Representante')
      TabOrder = 1
      OnClick = rdgTipoClick
    end
    object bbtnAceptar: TfcShapeBtn
      Left = 780
      Top = 27
      Width = 34
      Height = 31
      Hint = 'Mostrar Informaci'#243'n'
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
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnAceptarClick
    end
    object pnlUPago: TPanel
      Left = 408
      Top = 3
      Width = 364
      Height = 75
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      BorderStyle = bsSingle
      Color = 10207162
      ParentBiDiMode = False
      TabOrder = 3
      Visible = False
      object lblUPago: TLabel
        Left = 4
        Top = 41
        Width = 44
        Height = 15
        Caption = 'U. Pago :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblUnidadProceso: TLabel
        Left = 4
        Top = 11
        Width = 60
        Height = 15
        Caption = 'U. Proceso :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcdUPago: TwwDBLookupComboDlg
        Left = 66
        Top = 41
        Width = 61
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Pago'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'UPAGOID'#9'3'#9'ID'#9'F'
          'UPAGONOM'#9'65'#9'UNIDAD DE PAGO'#9'F')
        LookupTable = DM1.cdsQry3
        LookupField = 'UPAGOID'
        Color = clWhite
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
        OnExit = dblcdUPagoExit
      end
      object dblcdUProceso: TwwDBLookupComboDlg
        Left = 66
        Top = 11
        Width = 61
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'UPROID'#9'5'#9'Id'#9'F'
          'UPRONOM'#9'35'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsQry2
        LookupField = 'UPROID'
        Color = clWhite
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUProcesoExit
      end
      object dbeUProceso: TwwDBEdit
        Left = 129
        Top = 11
        Width = 225
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeUPago: TwwDBEdit
        Left = 129
        Top = 41
        Width = 225
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
    end
    object rgFecha: TRadioGroup
      Left = 11
      Top = 2
      Width = 216
      Height = 34
      BiDiMode = bdLeftToRight
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Fec.Registro'
        'Fec.Deposito')
      ParentBiDiMode = False
      TabOrder = 5
    end
    object dtpDesde: TDateTimePicker
      Left = 18
      Top = 53
      Width = 95
      Height = 23
      Date = 36892.719144328700000000
      Time = 36892.719144328700000000
      Color = clWhite
      TabOrder = 6
    end
    object dtpHasta: TDateTimePicker
      Left = 121
      Top = 53
      Width = 93
      Height = 23
      Date = 36943.719144328700000000
      Time = 36943.719144328700000000
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object bbtnAnular: TBitBtn
      Left = 839
      Top = 52
      Width = 111
      Height = 25
      Cancel = True
      Caption = 'Anular Registro'
      TabOrder = 8
      OnClick = bbtnAnularClick
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
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 640
    Width = 964
    Height = 44
    Align = alBottom
    BevelInner = bvRaised
    BiDiMode = bdRightToLeft
    Color = 10207162
    ParentBiDiMode = False
    TabOrder = 2
    object lblSection: TLabel
      Left = 24
      Top = 23
      Width = 36
      Height = 13
      Caption = 'Section'
      Visible = False
    end
    object pnlBusca: TPanel
      Left = 187
      Top = 5
      Width = 285
      Height = 32
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 10207162
      TabOrder = 0
      Visible = False
      object lblBusca1: TLabel
        Left = 7
        Top = 10
        Width = 48
        Height = 13
        Caption = 'Busca por'
      end
      object lblBusca2: TLabel
        Left = 57
        Top = 10
        Width = 89
        Height = 13
        Caption = 'Titulo de cabecera'
      end
      object isBusca: TwwIncrementalSearch
        Left = 157
        Top = 5
        Width = 121
        Height = 21
        TabOrder = 0
      end
    end
    object bbtnGrupos: TBitBtn
      Left = 149
      Top = 7
      Width = 32
      Height = 30
      Hint = 'Agrupar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbtnGruposClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
        0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
        005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
        0555557575757575755555505050505055555557575757575555}
      NumGlyphs = 2
    end
    object seGrupo: TSpinEdit
      Left = 114
      Top = 9
      Width = 31
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxValue = 5
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 0
    end
    object bbtnCierra: TBitBtn
      Left = 451
      Top = 8
      Width = 25
      Height = 25
      Caption = 'ok'
      TabOrder = 3
      Visible = False
    end
    object bbtnSuma: TfcShapeBtn
      Left = 488
      Top = 6
      Width = 38
      Height = 33
      Color = 11577276
      DitherColor = clMaroon
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
        03333377777777777F33333003333330033333377FF333377F33333300333333
        0333333377FF33337F3333333003333303333333377FF3337333333333003333
        333333333377FF3333333333333003333333333333377FF33333333333330033
        3333333333337733333333333330033333333333333773333333333333003333
        33333333337733333F3333333003333303333333377333337F33333300333333
        03333333773333337F33333003333330033333377FFFFFF77F33330000000000
        0333337777777777733333333333333333333333333333333333}
      NumGlyphs = 2
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      TabOrder = 4
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnSumaClick
    end
    object bbtnDiseno: TfcShapeBtn
      Left = 526
      Top = 6
      Width = 38
      Height = 33
      Color = 11577276
      DitherColor = clMaroon
      Glyph.Data = {
        BE080000424DBE0800000000000036000000280000001B0000001A0000000100
        18000000000088080000CE0E0000D80E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C080
        8080000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000808080C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000080808080800080808080
        8000808080808000808080808000808080808000808080808000808080808000
        808080808000808080808080808000000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C00000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000000000C0C0C0
        C0C0C0000000C0C0C0C0C0C00000008080008080000000000000008080000000
        0000000080800000000000000080800080800080800080800000000000000000
        0000000000000000000000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0
        0000008080008080000000000000008080000000000000008080000000000000
        0080800080800080800080800000000000000000000000000000000000000080
        8000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000000000C0C0C0C0C0C000
        0000C0C0C0C0C0C0000000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000C0
        C0C0C0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFF
        C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C00000
        00C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0000000808000808000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808000808000
        000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C00000
        00000000000000000000FFFFFF00000000000080808080808000000080808000
        0000808080000000FFFFFF000000000000000000000000C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF0000000000008080800000
        00808080000000000000C0C0C0000000FFFFFF000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF000000
        808080000000000000808080000000FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000FFFFFF000000000000808080808080000000000000FFFFFF000000000000
        000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000
        00000000000000000000000000000000000000000000000000C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000}
      NumGlyphs = 0
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      TabOrder = 5
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnDisenoClick
    end
    object Z2bbtnFiltro: TfcShapeBtn
      Left = 570
      Top = 6
      Width = 38
      Height = 33
      Color = 11577276
      DitherColor = clMaroon
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
        1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
        1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
        193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
        11155557F755F777777555000755033305555577755F75F77F55555555503335
        0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
        05555757F75F75557F5505000333555505557F777FF755557F55000000355557
        07557777777F55557F5555000005555707555577777FF5557F55553000075557
        0755557F7777FFF5755555335000005555555577577777555555}
      NumGlyphs = 2
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      TabOrder = 6
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnFiltroClick
    end
    object bbtnSalir: TBitBtn
      Left = 1220
      Top = 9
      Width = 60
      Height = 27
      Caption = '&Salir'
      TabOrder = 7
      OnClick = bbtnSalirClick
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
  end
  object dbgFiltro: TwwDBGrid
    Left = 0
    Top = 130
    Width = 964
    Height = 362
    DisableThemesInTitle = False
    MemoAttributes = [mSizeable, mWordWrap, mGridShow, mViewOnly]
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Align = alClient
    Color = clWhite
    Ctl3D = True
    DataSource = DM1.dsRegCob
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    OnDblClick = dbgFiltroDblClick
    PaintOptions.AlternatingRowColor = clInfoBk
    object Z2btnActReg: TwwIButton
      Left = 0
      Top = 0
      Width = 25
      Height = 25
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
      OnClick = Z2btnActRegClick
    end
  end
  object pnlFiltro: TPanel
    Left = 0
    Top = 492
    Width = 964
    Height = 148
    Align = alBottom
    BevelInner = bvRaised
    Color = 10207162
    TabOrder = 4
    Visible = False
    object Label1: TLabel
      Left = 18
      Top = 7
      Width = 100
      Height = 16
      Caption = 'Campos de Archivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbBorraF: TSpeedButton
      Left = 283
      Top = 5
      Width = 30
      Height = 19
      Hint = 'Elimina Filtros'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbBorraFClick
      OnDblClick = FormActivate
    end
    object sbFiltra: TSpeedButton
      Left = 171
      Top = 4
      Width = 70
      Height = 20
      Hint = 'Filtrar'
      Caption = 'Filtrar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbFiltraClick
    end
    object sbBorraO: TSpeedButton
      Left = 425
      Top = 4
      Width = 30
      Height = 20
      Hint = 'Elimina Indices'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbBorraOClick
    end
    object Label12: TLabel
      Left = 467
      Top = 7
      Width = 106
      Height = 16
      Caption = 'Descripci'#243'n Reporte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object SpeedButton1: TSpeedButton
      Left = 359
      Top = 4
      Width = 60
      Height = 20
      Hint = 'Ordenar'
      Caption = 'Orden'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object lbCampos2: TListBox
      Left = 8
      Top = 25
      Width = 136
      Height = 109
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object lbFiltro: TListBox
      Left = 157
      Top = 25
      Width = 194
      Height = 109
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 1
      OnDblClick = lbFiltroDblClick
      OnDragOver = lbFiltroDragOver
    end
    object lbOrden: TListBox
      Left = 359
      Top = 25
      Width = 97
      Height = 109
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 2
      OnDblClick = lbOrdenDblClick
      OnDragOver = lbOrdenDragOver
    end
    object lbCampos: TCheckListBox
      Left = 8
      Top = 25
      Width = 140
      Height = 109
      OnClickCheck = lbCamposClickCheck
      ItemHeight = 13
      TabOrder = 3
      OnEndDrag = lbCamposEndDrag
      OnMouseDown = lbCamposMouseDown
    end
    object clbRepD: TCheckListBox
      Left = 465
      Top = 25
      Width = 108
      Height = 109
      ItemHeight = 13
      TabOrder = 4
      Visible = False
    end
    object Memo1: TMemo
      Left = 584
      Top = 24
      Width = 193
      Height = 105
      Lines.Strings = (
        'Memo1')
      TabOrder = 5
      Visible = False
    end
    object Panel2: TPanel
      Left = 777
      Top = 2
      Width = 185
      Height = 144
      Align = alRight
      BevelOuter = bvNone
      Color = 10207162
      TabOrder = 6
      DesignSize = (
        185
        144)
      object lblRegistros: TLabel
        Left = 74
        Top = 8
        Width = 56
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bbtnCerrarF: TBitBtn
        Left = 166
        Top = 3
        Width = 18
        Height = 19
        Hint = 'Cerrar Filtros'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = bbtnCerrarFClick
      end
      object edtRegistros: TEdit
        Left = 65
        Top = 28
        Width = 72
        Height = 21
        BiDiMode = bdRightToLeftNoAlign
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 1
      end
      object bbtnExcel: TBitBtn
        Left = 126
        Top = 104
        Width = 40
        Height = 32
        Hint = 'Exportar a Excel'
        Anchors = [akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbtnExcelClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
          000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
          0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
          080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
        Spacing = 10
      end
      object bbtnFilt: TBitBtn
        Left = 126
        Top = 64
        Width = 40
        Height = 32
        Hint = 'Grabar Vista'
        Anchors = [akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = bbtnFiltClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        Spacing = 10
      end
    end
  end
  object pnlDiseno: TPanel
    Left = -348
    Top = 234
    Width = 353
    Height = 241
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 5
    Visible = False
    object Label2: TLabel
      Left = 4
      Top = 4
      Width = 341
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = 'Reportes'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 34
      Top = 163
      Width = 93
      Height = 13
      Caption = 'Nombre Reporte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbtnRepOk: TBitBtn
      Left = 258
      Top = 196
      Width = 30
      Height = 30
      Hint = 'Dise'#241'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbtnRepOkClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
        1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
        1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
        193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
        11155557F755F777777555000755033305555577755F75F77F55555555503335
        0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
        05555757F75F75557F5505000333555505557F777FF755557F55000000355557
        07557777777F55557F5555000005555707555577777FF5557F55553000075557
        0755557F7777FFF5755555335000005555555577577777555555}
      NumGlyphs = 2
    end
    object bbtnRepCa: TBitBtn
      Left = 295
      Top = 196
      Width = 30
      Height = 30
      Hint = 'Cancelar'
      Cancel = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbtnRepCaClick
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
    end
    object dbgReporte: TwwDBGrid
      Left = 35
      Top = 26
      Width = 241
      Height = 126
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dbgReporteRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = dbgReporteDblClick
    end
    object dbeNombre: TwwDBEdit
      Left = 133
      Top = 158
      Width = 142
      Height = 21
      Color = clWhite
      MaxLength = 20
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object bbtnPublica: TBitBtn
      Left = 283
      Top = 64
      Width = 58
      Height = 30
      Hint = 'Publicar'
      Caption = 'Publicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      NumGlyphs = 2
    end
    object rgTipo: TRadioGroup
      Left = 21
      Top = 184
      Width = 172
      Height = 41
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Local'
        'Publico')
      ParentFont = False
      TabOrder = 5
      OnClick = rgTipoClick
    end
    object bbtnUsuario: TBitBtn
      Left = 283
      Top = 96
      Width = 58
      Height = 30
      Hint = 'Accesos'
      Caption = 'Accesos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      NumGlyphs = 2
    end
  end
  object lbCamposReal: TListBox
    Left = 197
    Top = 152
    Width = 65
    Height = 70
    ItemHeight = 13
    TabOrder = 6
    Visible = False
  end
  object lbFiltroReal: TListBox
    Left = 216
    Top = 184
    Width = 65
    Height = 70
    ItemHeight = 13
    TabOrder = 7
    Visible = False
  end
  object lbOrdenReal: TListBox
    Left = 236
    Top = 216
    Width = 65
    Height = 70
    ItemHeight = 13
    TabOrder = 8
    Visible = False
  end
  object clbRepDReal: TCheckListBox
    Left = 336
    Top = 216
    Width = 81
    Height = 49
    ItemHeight = 13
    TabOrder = 9
    Visible = False
  end
  object clbRepDTabla: TCheckListBox
    Left = 424
    Top = 216
    Width = 73
    Height = 49
    ItemHeight = 13
    TabOrder = 10
    Visible = False
  end
  object pnlFiltro2: TPanel
    Left = 192
    Top = 345
    Width = 591
    Height = 143
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 11
    Visible = False
    object Label5: TLabel
      Left = 4
      Top = 4
      Width = 579
      Height = 15
      Align = alTop
      Alignment = taCenter
      Caption = 'Genera Filtros'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblDias: TLabel
      Left = 120
      Top = 107
      Width = 23
      Height = 14
      Caption = 'Dias'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblSub1: TLabel
      Left = 425
      Top = 63
      Width = 25
      Height = 13
      Caption = 'Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblSub2: TLabel
      Left = 468
      Top = 63
      Width = 27
      Height = 13
      Caption = 'Long.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object bbtnCancelF: TBitBtn
      Left = 528
      Top = 107
      Width = 30
      Height = 26
      Cancel = True
      TabOrder = 4
      OnClick = bbtnCancelFClick
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
    end
    object bbtnDate: TBitBtn
      Left = 20
      Top = 104
      Width = 64
      Height = 26
      Hint = 'Hoy (+/-) n Dias '
      Caption = 'Hoy (+/-)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = bbtnDateClick
    end
    object meDias: TMaskEdit
      Left = 90
      Top = 104
      Width = 25
      Height = 21
      EditMask = '###'
      MaxLength = 3
      TabOrder = 6
      Text = '   '
      Visible = False
    end
    object bbtnOR: TBitBtn
      Left = 472
      Top = 107
      Width = 50
      Height = 26
      Caption = 'or'
      TabOrder = 3
      OnClick = bbtnORClick
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
      Margin = 4
      NumGlyphs = 2
    end
    object rgValor: TRadioGroup
      Left = 180
      Top = 92
      Width = 149
      Height = 38
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Valor'
        'Campo')
      ParentFont = False
      TabOrder = 7
      OnClick = rgValorClick
    end
    object cbCampos: TComboBox
      Left = 168
      Top = 64
      Width = 187
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Visible = False
      OnKeyDown = cbCamposKeyDown
    end
    object rgFiltro: TRadioGroup
      Left = 5
      Top = 21
      Width = 575
      Height = 34
      Columns = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 2
      Items.Strings = (
        '>'
        '>='
        '='
        '<='
        '<'
        '<>'
        'SubStr'
        'Contiene')
      ParentFont = False
      TabOrder = 9
      OnClick = rgFiltroClick
    end
    object seIni: TSpinEdit
      Left = 422
      Top = 78
      Width = 37
      Height = 22
      MaxLength = 3
      MaxValue = 150
      MinValue = 0
      TabOrder = 10
      Value = 1
      Visible = False
    end
    object seLen: TSpinEdit
      Left = 465
      Top = 78
      Width = 37
      Height = 22
      MaxLength = 3
      MaxValue = 150
      MinValue = 0
      TabOrder = 11
      Value = 0
      Visible = False
    end
    object rgLike: TRadioGroup
      Left = 387
      Top = 63
      Width = 176
      Height = 39
      Caption = 'Inicia - Termina - Intermedio'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 2
      Items.Strings = (
        ' '
        ' '
        ' ')
      ParentFont = False
      TabOrder = 8
      Visible = False
    end
    object bbtnTemp: TBitBtn
      Left = 417
      Top = 109
      Width = 2
      Height = 2
      TabOrder = 1
    end
    object bbtnOkF: TBitBtn
      Left = 416
      Top = 107
      Width = 50
      Height = 26
      Caption = 'and'
      TabOrder = 2
      OnClick = bbtnOkFClick
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
      Margin = 2
      NumGlyphs = 2
    end
  end
  object pnlInfor: TPanel
    Left = 960
    Top = 250
    Width = 289
    Height = 241
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 12
    Visible = False
    object Label6: TLabel
      Left = 4
      Top = 4
      Width = 277
      Height = 14
      Align = alTop
      Alignment = taCenter
      Caption = 'Informe'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 6
      Top = 21
      Width = 75
      Height = 13
      Caption = '&Nombre Informe'
      FocusControl = dbeNameFilt
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bbtnOKFilt: TBitBtn
      Left = 201
      Top = 201
      Width = 30
      Height = 30
      Hint = 'Seleccionar Filtro'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = bbtnOKFiltClick
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
    end
    object bbtnCancFilt: TBitBtn
      Left = 234
      Top = 201
      Width = 30
      Height = 30
      Hint = 'Cancelar'
      Cancel = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbtnCancFiltClick
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
    end
    object dbgFiltros: TwwDBGrid
      Left = 8
      Top = 63
      Width = 267
      Height = 133
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsDT
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 2
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = dbgFiltrosDblClick
    end
    object dbeNameFilt: TwwDBEdit
      Left = 8
      Top = 38
      Width = 267
      Height = 21
      MaxLength = 40
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object bbtnSaveFil: TBitBtn
      Left = 167
      Top = 201
      Width = 30
      Height = 30
      Hint = 'Guardar Filtro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbtnSaveFilClick
      Glyph.Data = {
        8A010000424D8A01000000000000760000002800000017000000170000000100
        04000000000014010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333303000077777777777770003300000078888888888880000300000
        0780088888888800003000000780088888888800003000000780088888888800
        0030000007888888888888000030000000000000000000000030000000000000
        0000000000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000
        FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF00
        00300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFF
        FFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000
        FFFFFFFFFFFFFF07703000009999999999999907703000009999999999999900
        0030300099999999999999000330}
    end
    object bbtnInicial: TBitBtn
      Left = 21
      Top = 201
      Width = 32
      Height = 30
      Hint = 'Restaurar Presentaci'#243'n'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbtnInicialClick
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
    end
  end
  object lbRefer: TListBox
    Left = 40
    Top = 175
    Width = 81
    Height = 65
    ItemHeight = 13
    TabOrder = 13
    Visible = False
  end
  object ppBDeposito: TppReport
    AutoStop = False
    DataPipeline = Datos
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\BoletasDep.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppBDepositoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 827
    Top = 10
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'Datos'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38629
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'U. Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 31750
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 31750
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#186' Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 92869
        mmTop = 31750
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 120386
        mmTop = 31750
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'F. Deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 140229
        mmTop = 31750
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Boleta Deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 31750
        mmWidth = 22754
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 187061
        mmTop = 794
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 191030
        mmTop = 5821
        mmWidth = 10319
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 199761
        mmTop = 10848
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 794
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 5821
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Pag.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 10848
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 186267
        mmTop = 31750
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 16404
        mmWidth = 9790
        BandType = 0
      end
      object ppUsuario: TppLabel
        UserName = 'Usuario'
        Caption = '.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 200555
        mmTop = 16404
        mmWidth = 794
        BandType = 0
      end
      object ppFecha: TppLabel
        UserName = 'Fecha'
        Caption = 'Del 01/07/2003 Al 01/08/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 80169
        mmTop = 21431
        mmWidth = 42863
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CIADES'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 0
        mmWidth = 77788
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Unidades de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 74348
        mmTop = 15081
        mmWidth = 54240
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Relaci'#243'n de Boletas de Dep'#243'sito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 66411
        mmTop = 9260
        mmWidth = 70115
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 7408
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 28310
        mmWidth = 142875
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 34925
        mmWidth = 142875
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'UPAGONOM'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 11377
        mmTop = 0
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'BANCONOM'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 56621
        mmTop = 0
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MES'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 186267
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CPAGOMTO'
        DataPipeline = Datos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 116946
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CPAGOFECHA'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'RCOBNOPE'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CCBCOID'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 91017
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'UPAGOID'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 4233
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 202936
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'CPAGOMTO'
        DataPipeline = Datos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 4233
        mmLeft = 113930
        mmTop = 794
        mmWidth = 20743
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 98161
        mmTop = 794
        mmWidth = 7144
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText8'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'REPRID'
          DataPipeline = Datos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'Datos'
          mmHeight = 3704
          mmLeft = 14817
          mmTop = 0
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'REPRAPENOM'
          DataPipeline = Datos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'Datos'
          mmHeight = 3704
          mmLeft = 26988
          mmTop = 0
          mmWidth = 69321
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Repres.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1323
          mmTop = 0
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText13'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'RCOBID'
          DataPipeline = Datos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'Datos'
          mmHeight = 3704
          mmLeft = 28310
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Doc. Cob.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 11377
          mmTop = 0
          mmWidth = 13494
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 51858
          mmTop = 0
          mmWidth = 9260
          BandType = 3
          GroupNo = 1
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'RCOBMTO'
          DataPipeline = Datos
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Datos'
          mmHeight = 3704
          mmLeft = 64294
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object Datos: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'Datos'
    Left = 859
    Top = 10
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 891
    Top = 10
  end
  object CdsGrid: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRef'
    ValidateWithMask = True
    Left = 66
    Top = 449
  end
  object cdsPlan: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvPlan20'
    ValidateWithMask = True
    Left = 899
    Top = 408
  end
  object cdsBusca: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBusca'
    ValidateWithMask = True
    Left = 68
    Top = 366
  end
  object dsBusca: TwwDataSource
    DataSet = cdsBusca
    Left = 68
    Top = 412
  end
  object dsDT: TwwDataSource
    DataSet = cdsPlan
    Left = 899
    Top = 453
  end
  object cdsReporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCombo'
    ValidateWithMask = True
    Left = 152
    Top = 416
  end
  object dsReporte: TwwDataSource
    DataSet = cdsReporte
    Left = 152
    Top = 449
  end
  object cdsGrid2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTem6'
    ValidateWithMask = True
    Left = 848
    Top = 410
  end
  object ppdbMantD: TppDBPipeline
    UserName = 'DetalleMov'
    Left = 728
    Top = 645
  end
  object pprMant: TppReport
    AutoStop = False
    DataPipeline = ppdbMant
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 211000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = pprMantPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 663
    Top = 645
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbMant'
    object Cabecera: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24871
      mmPrintPosition = 0
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'T'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 97631
        mmTop = 794
        mmWidth = 3440
        BandType = 0
      end
      object lblCia: TppLabel
        UserName = 'lblCia'
        Caption = 'lblCia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 11377
        BandType = 0
      end
      object ppsvFecha: TppSystemVariable
        UserName = 'svFecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178594
        mmTop = 5292
        mmWidth = 16933
        BandType = 0
      end
      object ppsvHora: TppSystemVariable
        UserName = 'svHora'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178594
        mmTop = 10054
        mmWidth = 21167
        BandType = 0
      end
      object ppsvPagina: TppSystemVariable
        UserName = 'svPagina'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178330
        mmTop = 529
        mmWidth = 3969
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 529
        mmTop = 14817
        mmWidth = 200025
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 24077
        mmWidth = 200025
        BandType = 0
      end
    end
    object Detalle: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 1058
        mmWidth = 200025
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label1'
        Caption = 'No.Registros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 2117
        mmWidth = 21696
        BandType = 7
      end
      object pplReg: TppLabel
        UserName = 'lReg'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 33602
        mmTop = 2381
        mmWidth = 21167
        BandType = 7
      end
    end
  end
  object ppdbMant: TppDBPipeline
    AutoCreateFields = False
    UserName = 'Maestro'
    Left = 695
    Top = 645
  end
  object ppdFiltro: TppDesigner
    Caption = 'Dise'#241'ador de Informes'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Icon.Data = {
      0000010006001010100000000000280100006600000010100000000000006805
      00008E0100002020100000000000E8020000F60600002020000000000000A808
      0000DE090000303010000000000068060000861200003030000000000000A80E
      0000EE1800002800000010000000200000000100040000000000C00000000000
      0000000000001000000000000000000000000000800000800000008080008000
      00008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00000017000071000000009370073900000000
      3197731300000000933939390000193931888833939173131833335131370793
      83333338397000798BBB3738970000738BBBB338390007933BBBB33833907313
      18BBB38131331939313338139391000093339339000000003139731300000000
      9390073900000000130000710000F3CFFFFFF18FFFFFF00FFFFFF00FFFFF0000
      FFFF0000FFFF8001FFFFC003FFFFC003FFFF8001FFFF0000FFFF0000FFFFF00F
      FFFFF00FFFFFF18FFFFFF3CFFFFF280000001000000020000000010008000000
      00004001000000000000000000000001000000000000FFFFFF000000BF0000BF
      000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F0F01070F0F0F0F
      07010F0F0F0F0F0F0F0F0903070F0F0703090F0F0F0F0F0F0F0F030109070703
      01030F0F0F0F0F0F0F0F09030309030903090F0F0F0F01090309030108080808
      030309030901070301030108030303030501030103070F070903080303030303
      03080309070F0F0F0709080B0B0B0307030809070F0F0F0F0703080B0B0B0B03
      030803090F0F0F070903030B0B0B0B0303080303090F0703010301080B0B0B03
      080103010303010903090301030303080103090309010F0F0F0F090303030903
      03090F0F0F0F0F0F0F0F03010309070301030F0F0F0F0F0F0F0F0903090F0F07
      03090F0F0F0F0F0F0F0F01030F0F0F0F07010F0F0F0FF3CFFFFFF18FFFFFF00F
      FFFFF00FFFFF0000FFFF0000FFFF8001FFFFC003FFFFC003FFFF8001FFFF0000
      FFFF0000FFFFF00FFFFFF00FFFFFF18FFFFFF3CFFFFF28000000200000004000
      0000010004000000000080020000000000000000000010000000000000000000
      0000000080000080000000808000800000008000800080800000C0C0C0008080
      80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      00009100000000000091000000000000000013900000000001B9000000000000
      00009B31000000009B31000000000000000013B390000001B3B9000000000000
      00009B9B3100009B393100000000000000001399B39001B399B9000000000000
      00009B9B9B319B39B9310000000000000000139BB9B3B39BB9B9000000009191
      91919B9BB191515BB9319191919113B3B3B3B3915111313119B3B3B3B3B9013B
      9999995111111111559999993B100093B9BBB58717171111111BBB93B9000001
      3B9BB81111111711115BB93B1000000093B9537B171B1111111193B900000000
      013B9333B3B37B1711193B1000000000009357BB3B3B11711111B90000000000
      001B83B3BBBBB71711193B100000000001B393BBBBBB3B11711193B900000000
      9B398B3BBBBBBB7B1715B93B10000001B39BB8BBBBB3B333818BBB93B900009B
      39BBB58B3BBBB3B3B55BBBB93B1001B399999958BBB3B3738899999993B99B3B
      3B3B3B985B3B3B38593B3B3B3B3119191919139BB859595BB9B9191919190000
      00009B9BBB9B3B9BB9310000000000000000139BB9B313B9B9B9000000000000
      00009B9B9B39093B993100000000000000001399B3100013B9B9000000000000
      00009B9B390000093B31000000000000000013B31000000013B9000000000000
      00009B390000000009310000000000000000191000000000001900000000FF3F
      FCFFFF1FF8FFFF0FF0FFFF07E0FFFF03C0FFFF0180FFFF0000FFFF0000FF0000
      00000000000080000001C0000003E0000007F000000FF800001FFC00003FFC00
      001FF800000FF0000007E0000003C0000001800000000000000000000000FF00
      00FFFF0000FFFF0080FFFF01C0FFFF03E0FFFF07F0FFFF0FF8FFFF1FFCFF2800
      0000200000004000000001000800000000008004000000000000000000000001
      000000000000FFFFFF000000BF0000BF000000BFBF00BF000000BF00BF00BFBF
      0000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F0F0F0F0F0F01010F0F0F0F0F0F0F0F0F0F0F0F01010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0103010F0F0F0F0F0F0F0F0F0F0103010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F010303010F0F0F0F0F0F0F0F010303010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F01030303010F0F0F0F0F0F01030303010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0103010303010F0F0F0F0103030103010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F010301010303010F0F010303010103010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F010301030103030101030301030103010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F010301030301030303030103030103010F0F
      0F0F0F0F0F0F0101010101010101010301030B080508050805030B0103010101
      0101010101010103030303030303030301080508080803080308080103030303
      0303030303010F01030301010101010105080303030308030803050501010101
      01010303010F0F0F010303010303030508070307030703030803080808030303
      010303010F0F0F0F0F01030301030308030303030303030703080303050B0301
      0303010F0F0F0F0F0F0F010303010503070B0307030B03030303080308080103
      03010F0F0F0F0F0F0F0F0F010303080303030B030B03070B0307030803050303
      010F0F0F0F0F0F0F0F0F0F0F010305070B0B030B030B03030703030308080301
      0F0F0F0F0F0F0F0F0F0F0F0F010308030B030B0B0B0B0B030303030803050303
      010F0F0F0F0F0F0F0F0F0F01030305030B0B0B0B0B0B030B0303070308080103
      03010F0F0F0F0F0F0F0F01030301080B030B0B0B0B0B0B0B070B030303050301
      0303010F0F0F0F0F0F010303010303080B0B0B0B0B030B030303080308030303
      010303010F0F0F0F0103030103030305080B030B0B0B0B030B030B0505030303
      03010303010F0F01030301010101010105080B0B0B030B030703080801010101
      010101030301010303030303030303030108050B030B030B0308050103030303
      0303030303010101010101010101010301030308050805080503030103010101
      0101010101010F0F0F0F0F0F0F0F010301030303010303030103030103010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F010301030301030301030301030103010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F01030103010303010F010303010103010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F010301010303010F0F0F0103030103010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0103010303010F0F0F0F0F01030303010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F01030303010F0F0F0F0F0F0F010303010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F010303010F0F0F0F0F0F0F0F0F0103010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101010F0F0F0F0F0F0F0F0F0F0F01010F0F
      0F0F0F0F0F0FFF3FFCFFFF1FF8FFFF0FF0FFFF07E0FFFF03C0FFFF0180FFFF00
      00FFFF0000FF000000000000000080000001C0000003E0000007F000000FF800
      001FFC00003FFC00001FF800000FF0000007E0000003C0000001800000000000
      000000000000FF0000FFFF0000FFFF0080FFFF01C0FFFF03E0FFFF07F0FFFF0F
      F8FFFF1FFCFF2800000030000000600000000100040000000000000600000000
      0000000000001000000000000000000000000000800000800000008080008000
      00008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00000000000000191000000000000000000919
      0000000000000000000000009135000000000000000093910000000000000000
      0000000013B910000000000000091B39000000000000000000000000913B9100
      000000000091B39100000000000000000000000019B3B95000000000091B3B19
      000000000000000000000000913B3B910000000091B3B3910000000000000000
      0000000019B193B9100000091B319B1900000000000000000000000091391B3B
      95000091B3B9139100000000000000000000000019B191B3B910091B3B919B19
      00000000000000000000000091391B193B9191B3193913910000000000000000
      0000000019B1B39193B913BB91B19B1900000000000000000000000091391BB9
      1B3B3B391B39139100000000000019191919191919B19BB3855855855BB99B19
      1919191919199131919191913B39138885581888883913B391919191939113B3
      B3B3B3B3B3B188558888338338819B3B3B3B3B3B3B39019B3B19191919155833
      33338838335D5191919191B3B1900059B3B19131915587337337833833555819
      1B191B3B190000019B3B13B3B8587737737733388388883BB3B1B3B190000000
      19B3B91BB8833333333337738833358BB19B3B1900000000059B31915837BB33
      733B3373388335831913B190000000000019B3B958B77B3773BB333333883888
      913B19000000000000019BB3833333B33BB377B377388315B3B1900000000000
      0000593B587B3333BB3383B7773383853B1900000000000000000193557BBB3B
      B3BB333773333888B1900000000000000000091B883B33BBBBBBB33333388315
      3B39000000000000000091B3583BB3BBBBBB3BB33377838513B1980000000000
      00091B3B553BBBBBBBBB3BB333773888913B1900000000000091B31953B33BBB
      BBBBBBB77B333355B913B39000000000091B3191833BBBBBBBB3BB383B833385
      3B913B198000000091B3B91BB88BBBBBBB33BB333388388BB3B913B190000009
      1B3B93B3B858BB33BBBBB33BB3B8558B3B3B913B39000091B3B91939195583BB
      BBB3B337B3B8551919131913B198091B3B919191919558BBBB33BB3773888191
      919191913B1993B3B3B3B3B3B3B98858B3BB3BBB385513B3B3B3B3B3B3B11939
      191919193B3193583883583888819B3B19191919191991919191919191B91BB3
      855855855BB9139191919191919100000000000019319B3B319B3B391B319B19
      00000000000000000000000091B913B319B393B391B913910000000000000000
      0000000019319B319B3B193B19319B1900000000000000000000000091B9B319
      B3910893B31913910000000000000000000000001931919B391800593B319B19
      00000000000000000000000091B919B3B100000193B913910000000000000000
      0000000019319B3910000000193B3B1900000000000000000000000091B9B391
      800000000593B391000000000000000000000000193B3B100000000000193B19
      00000000000000000000000091B3910000000000000193B10000000000000000
      00000000193B1800000000000000591900000000000000000000000091910000
      0000000000000191000000000000FFF1FFFF8FFFFFFFFFF0FFFF0FFFFFFFFFF0
      7FFE0FFFFFFFFFF03FFC0FFFFFFFFFF01FF80FFFFFFFFFF00FF00FFFFFFFFFF0
      07E00FFFFFFFFFF003C00FFFFFFFFFF001800FFFFFFFFFF000000FFFFFFFFFF0
      00000FFFFFFFFFF000000FFFFFFF000000000000FFFF000000000000FFFF0000
      00000000FFFF800000000001FFFFC00000000003FFFFE00000000007FFFFF000
      0000000FFFFFF8000000001FFFFFFC000000003FFFFFFE000000007FFFFFFF00
      000000FFFFFFFF80000001FFFFFFFF80000000FFFFFFFF000000003FFFFFFE00
      0000003FFFFFFC000000001FFFFFF80000000007FFFFF00000000007FFFFE000
      00000003FFFFC00000000000FFFF800000000000FFFF000000000000FFFF0000
      00000000FFFF000000000000FFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF0
      00000FFFFFFFFFF000800FFFFFFFFFF000C00FFFFFFFFFF003E00FFFFFFFFFF0
      07F00FFFFFFFFFF007F80FFFFFFFFFF01FFC0FFFFFFFFFF03FFE0FFFFFFFFFF0
      3FFF0FFFFFFFFFF0FFFF8FFFFFFF280000003000000060000000010008000000
      0000800A000000000000000000000001000000000000FFFFFF000000BF0000BF
      000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F0F0F0F0F0F0F0F
      0F0F0101010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F010103050F0F0F0F0F0F0F0F0F0F
      0F0F0F0F0F0F050301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F01030301010F0F0F0F0F0F0F0F0F0F0F0F0F0F01010303010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101030301010F0F0F0F0F0F0F0F
      0F0F0F0F0101030301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F010103030301050F0F0F0F0F0F0F0F0F0F050103030301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F01010303030301010F0F0F0F0F0F
      0F0F01010303030301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0101030101030301010F0F0F0F0F0F0101030301010301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F010103010103030301050F0F0F0F
      050103030301010301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F01010301010103030301010F0F01010303030101010301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101030101030101030301010101
      030301010301010301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F01010301030301010103030101030B0301010301010301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101030101030B01010303030303
      030101030301010301010F0F0F0F0F0F0F0F0F0F0F0F01010101010101010101
      010101010301010B0B030805050805050805050B0B0901030101010101010101
      0101010101010101030101010101010101010303030101030808080505080108
      0808080803010103030301010101010101010103010101030303030303030303
      0303030303010808050508080808030308030308080101030303030303030303
      0303030303010F01010303030101010101010101010505080303030303030808
      03080303050D0501010101010101010103030301010F0F0F0501030303010101
      0301010105050807030307030307080303080303050505080101010301010103
      030301050F0F0F0F0F0101030303010303030308050807070307070307070303
      0308080308080808030B0303030103030301010F0F0F0F0F0F0F010103030301
      01030B080803030303030303030303070703080803030305080B0B0101030303
      01010F0F0F0F0F0F0F0F0F05010303010101050803070B0B03030703030B0303
      07030308080303050803010101030301050F0F0F0F0F0F0F0F0F0F0F01010303
      030105080B07070B030707030B0B030303030303080803080808010103030101
      0F0F0F0F0F0F0F0F0F0F0F0F0F0101030B030803030303030B03030B0B030707
      0B03070703080803010503030301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0501
      03030508070B030303030B0B030308030B070707030308030805030301080F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101030505070B0B0B030B0B030B0B0303
      030707030303030808080301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F01
      01030808030B03030B0B0B0B0B0B0B0303030303030808030105030303010F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F050103030508030B0B030B0B0B0B0B0B030B
      0B0303030707080308050103030101080F0F0F0F0F0F0F0F0F0F0F0F0F010103
      03030505030B0B0B0B0B0B0B0B0B030B0B030303070703080808010103030101
      0F0F0F0F0F0F0F0F0F0F0F0F01010303010105030B03030B0B0B0B0B0B0B0B0B
      0B07070B030303030505030101030303010F0F0F0F0F0F0F0F0F0F0501030301
      01010803030B0B0B0B0B0B0B0B030B0B0308030B080303030805030301010303
      0101080F0F0F0F0F0F0F01010303030101030B08080B0B0B0B0B0B0B03030B0B
      0303030308080308080B0303030101030301010F0F0F0F0F0F01010303030103
      0303030805080B0B03030B0B0B0B0B03030B0B030B0805050803030303030101
      030303010F0F0F0F050103030301010103010101050508030B0B0B0B0B030B03
      03070B030B08050501010101010301010103030101080F010103030301010101
      01010101010505080B0B0B0B03030B0B03070703080808010101010101010101
      01010303010101030303030303030303030303030301080805080B030B0B030B
      0B0B030805050103030303030303030303030303030101010301010101010101
      0101030303010103050803080803050803080808080101030303010101010101
      01010101010101010101010101010101010101010301010B0B03080505080505
      0805050B0301010301010101010101010101010101010F0F0F0F0F0F0F0F0F0F
      0F0F0101030101030303030101030303030101030301010301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101030101030303010103030103
      0B0301010301010301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0101030101030301010303030101030301010301010301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101030103030101030301010F08
      010303030101010301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0101030101010103030101080F0F050103030301010301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F010103010101030303010F0F0F0F
      0F0101030301010301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0101030101030301010F0F0F0F0F0F0F01010303030301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101030103030101080F0F0F0F0F
      0F0F0F050103030301010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F010103030303010F0F0F0F0F0F0F0F0F0F0F0101030301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0101030301010F0F0F0F0F0F0F0F
      0F0F0F0F0F01010303010F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0101030301080F0F0F0F0F0F0F0F0F0F0F0F0F0F050301010F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F010101010F0F0F0F0F0F0F0F0F0F
      0F0F0F0F0F0F0F0101010F0F0F0F0F0F0F0F0F0F0F0FFFF1FFFF8FFFFFFFFFF0
      FFFF0FFFFFFFFFF07FFE0FFFFFFFFFF03FFC0FFFFFFFFFF01FF80FFFFFFFFFF0
      0FF00FFFFFFFFFF007E00FFFFFFFFFF003C00FFFFFFFFFF001800FFFFFFFFFF0
      00000FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFF000000000000FFFF0000
      00000000FFFF000000000000FFFF800000000001FFFFC00000000003FFFFE000
      00000007FFFFF0000000000FFFFFF8000000001FFFFFFC000000003FFFFFFE00
      0000007FFFFFFF00000000FFFFFFFF80000001FFFFFFFF80000000FFFFFFFF00
      0000003FFFFFFE000000003FFFFFFC000000001FFFFFF80000000007FFFFF000
      00000007FFFFE00000000003FFFFC00000000000FFFF800000000000FFFF0000
      00000000FFFF000000000000FFFF000000000000FFFFFFF000000FFFFFFFFFF0
      00000FFFFFFFFFF000000FFFFFFFFFF000800FFFFFFFFFF000C00FFFFFFFFFF0
      03E00FFFFFFFFFF007F00FFFFFFFFFF007F80FFFFFFFFFF01FFC0FFFFFFFFFF0
      3FFE0FFFFFFFFFF03FFF0FFFFFFFFFF0FFFF8FFFFFFF}
    Position = poDefaultPosOnly
    RAPInterface = [riNotebookTab]
    ShowData = False
    IniStorageType = 'Registry'
    IniStorageName = 'RBuilder'
    WindowHeight = 600
    WindowLeft = 0
    WindowTop = 0
    WindowWidth = 900
    WindowState = wsMaximized
    Left = 628
    Top = 645
  end
  object cdsRep2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTem5'
    ValidateWithMask = True
    Left = 111
    Top = 416
  end
  object dsRep2: TwwDataSource
    DataSet = cdsRep2
    Left = 112
    Top = 449
  end
  object cdsUsuNo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 69
    Top = 267
  end
  object cdsUsuSi: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 16
    Top = 267
  end
  object dsUsuSi: TwwDataSource
    DataSet = cdsUsuSi
    Left = 16
    Top = 312
  end
  object dsUsuNo: TwwDataSource
    DataSet = cdsUsuNo
    Left = 69
    Top = 312
  end
end
