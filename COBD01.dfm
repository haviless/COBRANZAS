object FReprogCred: TFReprogCred
  Left = 94
  Top = 110
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reprogramaci'#243'n de Cronogramas'
  ClientHeight = 528
  ClientWidth = 772
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Z2bbtnSigue: TfcShapeBtn
    Left = 651
    Top = 492
    Width = 55
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
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 0
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnSigueClick
  end
  object bbtnNuevo: TfcShapeBtn
    Left = 713
    Top = 492
    Width = 55
    Height = 30
    Color = 10207162
    DitherColor = clWhite
    Glyph.Data = {
      76010000424D760100000000000076000000280000001F000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333033333333333333333333333333333330333333333333
      333333333333333333303000000000003333337777777777733030FFFFFFFFF0
      3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
      3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
      3333337F33333333733030FFFFFFFFF03333337F33333FFF733030FFFF000000
      3333337F33337777733030FFFF00FF033333337F33337F37333030FFFF00F033
      3333337F33337F77333030FFFF0003333333337FFFFF77333330300000003333
      3333337777777333333033333333333333333333333333333330}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 1
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnNuevoClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 444
    Height = 57
    Caption = 'Buscar'
    TabOrder = 2
    object TLabel
      Left = 9
      Top = 15
      Width = 99
      Height = 15
      Caption = 'Apellidos y Nombre'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 321
      Top = 15
      Width = 80
      Height = 15
      Caption = 'C'#243'digo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbeApePat: TwwDBEdit
      Left = 9
      Top = 30
      Width = 306
      Height = 19
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = dbeApePatEnter
      OnExit = dbeApePatExit
    end
    object dbeAsocodmod: TwwDBEdit
      Left = 321
      Top = 30
      Width = 114
      Height = 19
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = dbeApePatEnter
      OnExit = dbeAsocodmodExit
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 72
    Width = 761
    Height = 110
    Caption = 'Datos del Asociado'
    TabOrder = 3
    object TLabel
      Left = 9
      Top = 15
      Width = 69
      Height = 15
      Caption = 'C'#243'd. Derrama'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 128
      Top = 63
      Width = 23
      Height = 15
      Caption = 'DNI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 504
      Top = 15
      Width = 60
      Height = 15
      Caption = 'T. Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 334
      Top = 63
      Width = 51
      Height = 15
      Caption = 'Direcci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 232
      Top = 63
      Width = 46
      Height = 15
      Caption = 'Tel'#233'fono'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 623
      Top = 15
      Width = 106
      Height = 15
      Caption = 'R'#233'gimen Pensionario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 128
      Top = 15
      Width = 20
      Height = 15
      Caption = 'U.P.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 168
      Top = 15
      Width = 23
      Height = 15
      Caption = 'USE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 207
      Top = 15
      Width = 35
      Height = 15
      Caption = 'U.Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 260
      Top = 15
      Width = 93
      Height = 15
      Caption = 'Nombre de la USE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 9
      Top = 63
      Width = 96
      Height = 15
      Caption = 'Cuenta TeleAhorro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbeASOID: TwwDBEdit
      Left = 9
      Top = 34
      Width = 114
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASOID'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeASODNI: TwwDBEdit
      Left = 128
      Top = 82
      Width = 100
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASODNI'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUSEID: TwwDBEdit
      Left = 168
      Top = 34
      Width = 36
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'USEID'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUPROID: TwwDBEdit
      Left = 128
      Top = 34
      Width = 36
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'UPROID'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUPAGOID: TwwDBEdit
      Left = 207
      Top = 34
      Width = 36
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'UPAGOID'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUSENOM: TwwDBEdit
      Left = 248
      Top = 34
      Width = 252
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'USENOM'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeASOTELF1: TwwDBEdit
      Left = 232
      Top = 82
      Width = 95
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASOTELF1'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeASODIR: TwwDBEdit
      Left = 330
      Top = 82
      Width = 288
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASODIR'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeASOTIPDES: TwwDBEdit
      Left = 504
      Top = 34
      Width = 114
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASOTIPDES'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeREGPENDES: TwwDBEdit
      Left = 623
      Top = 34
      Width = 114
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'REGPENDES'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCUENTA: TwwDBEdit
      Left = 9
      Top = 82
      Width = 114
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'CUENTA'
      DataSource = dsDatosAdicionales
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object gbDatosOperacion: TGroupBox
    Left = 8
    Top = 367
    Width = 761
    Height = 117
    Caption = 'Datos de la Operaci'#243'n'
    Enabled = False
    TabOrder = 4
    object TLabel
      Left = 208
      Top = 65
      Width = 74
      Height = 15
      Caption = 'Nuevo Credito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 154
      Top = 65
      Width = 29
      Height = 15
      Caption = 'Cuota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 7
      Top = 65
      Width = 29
      Height = 15
      Caption = 'Saldo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 93
      Top = 65
      Width = 51
      Height = 15
      Caption = 'N'#186' Cuotas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 9
      Top = 11
      Width = 30
      Height = 15
      Caption = 'Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 586
      Top = 12
      Width = 65
      Height = 15
      Caption = 'Tasa Inter'#233's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 683
      Top = 12
      Width = 54
      Height = 15
      Caption = 'Tasa FLAT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 657
      Top = 32
      Width = 9
      Height = 16
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object TLabel
      Left = 743
      Top = 32
      Width = 9
      Height = 16
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 6
      Top = 52
      Width = 749
      Height = 7
      Shape = bsBottomLine
    end
    object TLabel
      Left = 326
      Top = 65
      Width = 75
      Height = 15
      Caption = 'Nota de Abono'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbeSaldo: TwwDBEdit
      Left = 7
      Top = 86
      Width = 83
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCREDIDNEW: TwwDBEdit
      Left = 208
      Top = 86
      Width = 110
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeMtoCuota: TwwDBEdit
      Left = 154
      Top = 86
      Width = 47
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNumCuotas: TwwDBEdit
      Tag = 1
      Left = 93
      Top = 86
      Width = 52
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = dbeNumCuotasEnter
      OnExit = dbeNumCuotasExit
      OnKeyPress = dbeNumCuotasKeyPress
    end
    object dbeFecha: TwwDBEdit
      Left = 9
      Top = 32
      Width = 81
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object rgModalidad: TRadioGroup
      Left = 592
      Top = 63
      Width = 162
      Height = 43
      Caption = 'Modalidad de Cobranza'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'TeleAhorro'
        'Planilla')
      ParentFont = False
      TabOrder = 5
    end
    object rgMesInicio: TRadioGroup
      Left = 441
      Top = 63
      Width = 149
      Height = 43
      Caption = 'Mes de Inicio Cuotas'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Actual'
        'Siguiente')
      ParentFont = False
      TabOrder = 6
    end
    object dbeTasaInteres: TwwDBEdit
      Left = 586
      Top = 30
      Width = 67
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTasaFlat: TwwDBEdit
      Left = 683
      Top = 30
      Width = 55
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNRONABO: TwwDBEdit
      Left = 326
      Top = 86
      Width = 110
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ReadOnly = True
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 187
    Width = 761
    Height = 146
    Caption = 'Seleccione Credito'
    TabOrder = 5
    object lblTitu1: TLabel
      Left = 55
      Top = 124
      Width = 41
      Height = 13
      Caption = 'Cr'#233'dito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object pnlMemo: TPanel
      Left = 280
      Top = 24
      Width = 401
      Height = 113
      Color = 13165023
      TabOrder = 1
      Visible = False
      object StaticText1: TStaticText
        Left = 1
        Top = 1
        Width = 399
        Height = 20
        Align = alTop
        Caption = 'Observaci'#243'n'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object btnCerrar: TBitBtn
        Left = 384
        Top = 3
        Width = 15
        Height = 16
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnCerrarClick
      end
      object dbreMemo: TwwDBRichEdit
        Left = 1
        Top = 21
        Width = 399
        Height = 91
        Align = alClient
        AutoURLDetect = False
        OleOptions = []
        PrintJobName = 'Delphi 5'
        TabOrder = 2
        WantReturns = False
        WordWrap = False
        PopupOptions = []
        EditorOptions = []
        EditorCaption = 'Edit Rich Text'
        EditorPosition.Left = 0
        EditorPosition.Top = 0
        EditorPosition.Width = 0
        EditorPosition.Height = 0
        MeasurementUnits = muCentimeters
        PrintMargins.Top = 1.000000000000000000
        PrintMargins.Bottom = 1.000000000000000000
        PrintMargins.Left = 1.000000000000000000
        PrintMargins.Right = 1.000000000000000000
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
          646272654D656D6F5C7061720D0A7D0D0A00}
      end
    end
    object dbgBloqueoC: TwwDBGrid
      Left = 7
      Top = 18
      Width = 747
      Height = 121
      DisableThemesInTitle = False
      MemoAttributes = [mViewOnly, mDisableDialog]
      IniAttributes.Delimiter = ';;'
      TitleColor = 13165023
      OnCellChanged = dbgBloqueoCCellChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColLines, dgPerfectRowFit]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dbgBloqueoCDblClick
      OnFieldChanged = dbgBloqueoCFieldChanged
    end
  end
  object GroupBox6: TGroupBox
    Left = 455
    Top = 8
    Width = 313
    Height = 57
    Caption = 'Tipo de Operaci'#243'n'
    TabOrder = 6
    object dblcTipoOperacion: TwwDBComboBox
      Left = 64
      Top = 28
      Width = 169
      Height = 19
      ShowButton = True
      Style = csDropDownList
      MapList = False
      AllowClearKey = False
      BorderStyle = bsNone
      Color = 13165023
      DropDownCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ItemHeight = 0
      Items.Strings = (
        'REFINANCIAMIENTO'
        'AMPLIACI'#211'N/REDUCCI'#211'N')
      ItemIndex = 0
      ParentFont = False
      Sorted = False
      TabOrder = 0
      UnboundDataType = wwDefault
      OnChange = dblcTipoOperacionChange
      OnEnter = dblcTipoOperacionEnter
      OnExit = dblcTipoOperacionExit
    end
  end
  object GroupBox3: TGroupBox
    Left = 456
    Top = 332
    Width = 314
    Height = 34
    Enabled = False
    TabOrder = 7
    object spA: TSpeedButton
      Left = 173
      Top = 10
      Width = 25
      Height = 19
      Caption = 'A'
      Enabled = False
      OnClick = spAClick
    end
    object spE: TSpeedButton
      Left = 284
      Top = 10
      Width = 25
      Height = 19
      Caption = 'E'
      Enabled = False
      OnClick = spEClick
    end
    object spD: TSpeedButton
      Left = 256
      Top = 10
      Width = 25
      Height = 19
      Caption = 'D'
      Enabled = False
      OnClick = spDClick
    end
    object spC: TSpeedButton
      Left = 228
      Top = 10
      Width = 25
      Height = 19
      Caption = 'C'
      Enabled = False
      OnClick = spCClick
    end
    object spB: TSpeedButton
      Left = 200
      Top = 10
      Width = 25
      Height = 19
      Caption = 'B'
      Enabled = False
      OnClick = spBClick
    end
    object spVerCobranzas: TSpeedButton
      Left = 5
      Top = 10
      Width = 75
      Height = 19
      Caption = 'Ver Cobranzas'
      Enabled = False
      OnClick = spVerCobranzasClick
    end
  end
  object z2bbtnCrono: TfcShapeBtn
    Left = 591
    Top = 492
    Width = 55
    Height = 30
    Hint = 'Cronograma para Cr'#233'ditos en Efectivo'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
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
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 8
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnCronoClick
  end
  object z2bbtnPreliminar: TfcShapeBtn
    Left = 526
    Top = 492
    Width = 55
    Height = 30
    Hint = 'Cronograma para Cr'#233'ditos en Efectivo'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
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
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 9
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnPreliminarClick
  end
  object GroupBox7: TGroupBox
    Left = 8
    Top = 332
    Width = 445
    Height = 34
    Enabled = False
    TabOrder = 10
    object spSeleccioneCredito: TSpeedButton
      Left = 5
      Top = 10
      Width = 115
      Height = 19
      Caption = 'Seleccione Cr'#233'dito'
      Enabled = False
      OnClick = spSeleccioneCreditoClick
    end
    object spRefrescar: TSpeedButton
      Left = 123
      Top = 10
      Width = 115
      Height = 19
      Caption = 'Refrescar'
      Enabled = False
      OnClick = spRefrescarClick
    end
  end
  object fcShapeBtn1: TfcShapeBtn
    Left = 6
    Top = 492
    Width = 55
    Height = 30
    Hint = 'Bloqueo de Cuotas'
    Color = 10207162
    DitherColor = clWhite
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
      00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
      00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
      F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
      F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
      F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
      FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
      0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
      0033333337FFFFFF773333333000000003333333377777777333}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 11
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = fcShapeBtn1Click
  end
  object fcShapeBtn2: TfcShapeBtn
    Left = 71
    Top = 492
    Width = 55
    Height = 30
    Hint = 'Desmarque de Cuotas'
    Color = 10207162
    DitherColor = clWhite
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
      FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
      990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
      990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
      FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
      00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
      00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
      00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
      03FF33337FFF77777333333300000333333F3333777773333333}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 12
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = fcShapeBtn2Click
  end
  object cdsDatosAdicionales: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 696
  end
  object dsDatosAdicionales: TwwDataSource
    DataSet = cdsDatosAdicionales
    Left = 712
    Top = 16
  end
  object cdsVariable: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 304
  end
end
