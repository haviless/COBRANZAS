object FDevCuoEfec: TFDevCuoEfec
  Left = 103
  Top = 89
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsDialog
  Caption = 'Devoluci'#243'n de cuotas en Efectivo'
  ClientHeight = 461
  ClientWidth = 786
  Color = 13165023
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lblApeNom: TLabel
    Left = 110
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
    Left = 362
    Top = 2
    Width = 83
    Height = 15
    Caption = 'C'#243'digo Modular:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblCPago: TLabel
    Left = 478
    Top = 2
    Width = 80
    Height = 15
    Caption = 'C'#243'digo de Pago:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblDIden: TLabel
    Left = 595
    Top = 2
    Width = 102
    Height = 15
    Caption = 'Doc. Identificaci'#243'n'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblSit: TLabel
    Left = 731
    Top = 2
    Width = 50
    Height = 15
    Caption = 'Situaci'#243'n'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblFPago: TLabel
    Left = 322
    Top = 48
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
  object Label1: TLabel
    Left = 7
    Top = 370
    Width = 49
    Height = 38
    Caption = 'Mto. a Dev.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object lblMtoAPagar: TLabel
    Left = 716
    Top = 46
    Width = 48
    Height = 30
    Alignment = taRightJustify
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Image1: TImage
    Left = 651
    Top = 51
    Width = 19
    Height = 18
    AutoSize = True
    ParentShowHint = False
    Picture.Data = {
      07544269746D61706E040000424D6E0400000000000036000000280000001300
      000012000000010018000000000038040000C40E0000C40E0000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    ShowHint = False
    Stretch = True
    Transparent = True
  end
  object TLabel
    Left = 10
    Top = 2
    Width = 89
    Height = 15
    Caption = 'N'#176' de Devoluci'#243'n'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object lblAsoid: TLabel
    Left = 666
    Top = 84
    Width = 82
    Height = 15
    Caption = 'C'#243'digo Derrama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object dblcBanco: TwwDBLookupCombo
    Left = 729
    Top = 18
    Width = 49
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'BANCOID'#9'2'#9'Id'#9'F'
      'BANCONOM'#9'40'#9'Nombre'#9'F')
    LookupTable = DM1.cdsBcos
    LookupField = 'BANCOID'
    Enabled = False
    TabOrder = 6
    Visible = False
    AutoDropDown = False
    ShowButton = True
    UseTFields = False
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = dblcBancoExit
  end
  object dbeAsoNom: TwwDBEdit
    Left = 103
    Top = 19
    Width = 253
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
    Left = 362
    Top = 19
    Width = 112
    Height = 21
    BorderStyle = bsNone
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
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = dbeCodigoModularExit
  end
  object dbeCodigoPago: TwwDBEdit
    Left = 478
    Top = 19
    Width = 112
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
    Left = 595
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
    Left = 633
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
    Left = 731
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
  object dbgDocumen: TwwDBGrid
    Left = 6
    Top = 44
    Width = 307
    Height = 221
    DisableThemesInTitle = False
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
    TabOrder = 7
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnDblClick = dbgDocumenDblClick
  end
  object dbgCuatasAso: TwwDBGrid
    Left = 104
    Top = 272
    Width = 553
    Height = 177
    DisableThemesInTitle = False
    Selected.Strings = (
      'TRANSID'#9'10'#9'TRANSID'#9'F'
      'TRANSDES'#9'30'#9'ccccc'#9'F'
      'TRANSVALOR'#9'10'#9'TRANSVALOR'#9'F'
      'TRANTIPVAL'#9'1'#9'TRANTIPVAL'#9'F'
      'TRANSFCA'#9'10'#9'TRANSFCA'#9'F'
      'TRANSDEBE'#9'20'#9'TRANSDEBE'#9'F'
      'TRANSHABER'#9'20'#9'TRANSHABER'#9'F'
      'TRANSINTID'#9'3'#9'TRANSINTID'#9'F'
      'USUARIO'#9'10'#9'USUARIO'#9'F'
      'FREG'#9'18'#9'FREG'#9'F'
      'HREG'#9'18'#9'HREG'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow]
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = False
    EditControlOptions = []
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    KeyOptions = [dgEnterToTab, dgAllowDelete]
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgTabs, dgMultiSelect]
    ParentFont = False
    TabOrder = 8
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnFieldChanged = dbgCuatasAsoFieldChanged
  end
  object dblcFormaPago: TwwDBLookupCombo
    Left = 402
    Top = 48
    Width = 45
    Height = 19
    CharCase = ecUpperCase
    BorderStyle = bsNone
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'FORPAGOID'#9'4'#9'FORPAGOID'#9'F'
      'FORPAGODES'#9'35'#9'Forma de Pago'#9'F')
    LookupTable = DM1.cdsFormaPago
    LookupField = 'FORPAGOID'
    Options = [loColLines, loTitles]
    Color = 13165023
    DropDownCount = 15
    Enabled = False
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 9
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = dblcFormaPagoExit
  end
  object edtFormaPago: TEdit
    Left = 452
    Top = 48
    Width = 155
    Height = 21
    CharCase = ecUpperCase
    Color = 13165023
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object PnlReclamo: TPanel
    Left = 321
    Top = 75
    Width = 339
    Height = 193
    BevelInner = bvSpace
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 13165023
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    object lblMon: TLabel
      Left = 251
      Top = 68
      Width = 40
      Height = 15
      Caption = 'Moneda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblObserv: TLabel
      Left = 6
      Top = 106
      Width = 76
      Height = 15
      Caption = 'Observaciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblFOpe: TLabel
      Left = 146
      Top = 65
      Width = 78
      Height = 15
      AutoSize = False
      Caption = 'Fec. Operaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
    object lblBco: TLabel
      Left = 6
      Top = 20
      Width = 31
      Height = 15
      Caption = 'Banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblNCta: TLabel
      Left = 196
      Top = 20
      Width = 40
      Height = 15
      Caption = 'Nro Cta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblNDoc: TLabel
      Left = 6
      Top = 65
      Width = 88
      Height = 15
      Caption = 'N'#176' de Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 333
      Height = 19
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Detalle de la Forma a Cancelar'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object dblctmoneda: TwwDBLookupCombo
      Left = 248
      Top = 84
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TMONID'#9'3'#9'Id'#9'F'
        'TMONDES'#9'25'#9'Tipo Moneda'#9'F')
      LookupTable = DM1.cdsTMoneda
      LookupField = 'TMONID'
      Options = [loColLines, loTitles]
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 2
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblctmonedaExit
    end
    object dbemoneda: TwwDBEdit
      Left = 299
      Top = 84
      Width = 30
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcChqBanco: TwwDBLookupCombo
      Left = 6
      Top = 39
      Width = 42
      Height = 21
      CharCase = ecUpperCase
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BANCOID'#9'2'#9'ID'#9'F'
        'BANCONOM'#9'40'#9'Banco'#9'F')
      LookupTable = DM1.cdsBcos
      LookupField = 'BANCOID'
      Options = [loColLines, loTitles]
      Color = 13165023
      DropDownCount = 15
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcChqBancoExit
    end
    object edtChqBanco: TEdit
      Left = 52
      Top = 39
      Width = 141
      Height = 21
      CharCase = ecUpperCase
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbeChqNum: TwwDBEdit
      Left = 6
      Top = 84
      Width = 136
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeChqNumExit
    end
    object dbeChqCuenta: TwwDBLookupCombo
      Left = 197
      Top = 39
      Width = 126
      Height = 21
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CCBCOID'#9'40'#9'Cta. Cte.'#9'F')
      LookupTable = DM1.cdsCuentas
      LookupField = 'CCBCOID'
      Options = [loColLines, loTitles]
      Color = 13165023
      DropDownCount = 15
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object dbeFOperacion: TwwDBDateTimePicker
      Left = 149
      Top = 84
      Width = 91
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
      MaxDate = 55153.000000000000000000
      MinDate = 36526.000000000000000000
      ShowButton = True
      TabOrder = 5
      OnExit = dbeFOperacionExit
    end
    object mmObse: TMemo
      Left = 8
      Top = 128
      Width = 321
      Height = 57
      Color = 13165023
      TabOrder = 8
    end
  end
  object edtMonto: TEdit
    Left = 8
    Top = 394
    Width = 90
    Height = 27
    Color = clSilver
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    Text = '0.00'
  end
  object Z2bbtnBorrar: TfcShapeBtn
    Left = 65
    Top = 422
    Width = 31
    Height = 31
    Hint = 'Deshacer'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
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
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsRaised
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 13
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnBorrarClick
  end
  object bbtnSigue: TfcShapeBtn
    Left = 11
    Top = 422
    Width = 31
    Height = 31
    Hint = 'Grabar'
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
    Layout = blGlyphTop
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsRaised
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 14
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnSigueClick
  end
  object dbeDevolucion: TwwDBEdit
    Left = 6
    Top = 22
    Width = 89
    Height = 19
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 13165023
    DataField = 'DEVID'
    DataSource = DM1.dsDevolucion
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Frame.Enabled = True
    Frame.FocusBorders = [efRightBorder, efBottomBorder]
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    ParentFont = False
    TabOrder = 15
    UnboundDataType = wwDefault
    UnboundAlignment = taRightJustify
    WantReturns = False
    WordWrap = False
  end
  object dbeAsoId: TwwDBEdit
    Left = 666
    Top = 101
    Width = 113
    Height = 21
    AutoSize = False
    BorderStyle = bsNone
    Color = 13165023
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    ParentFont = False
    TabOrder = 16
    UnboundDataType = wwDefault
    UnboundAlignment = taRightJustify
    WantReturns = False
    WordWrap = False
  end
end
