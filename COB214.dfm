object FCanDepo: TFCanDepo
  Left = 219
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cancelaci'#243'n de Cuotas por Dep'#243'sito en Banco'
  ClientHeight = 571
  ClientWidth = 790
  Color = 10207162
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object lblFPago: TLabel
    Left = 7
    Top = 168
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
  object lblMtoAPagar: TLabel
    Left = 736
    Top = 166
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
  object lblForma: TLabel
    Left = 355
    Top = 168
    Width = 137
    Height = 23
    Caption = 'CANCELACION ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 23
    Top = 473
    Width = 83
    Height = 19
    Caption = 'Mto. a Pagar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label2: TLabel
    Left = 135
    Top = 473
    Width = 89
    Height = 19
    Caption = 'Mto. Recibido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label3: TLabel
    Left = 265
    Top = 473
    Width = 76
    Height = 19
    Caption = 'Mto. Vuelto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Image1: TImage
    Left = 659
    Top = 171
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
  object pnlPagado: TPanel
    Left = 352
    Top = 196
    Width = 428
    Height = 359
    BevelInner = bvLowered
    BevelWidth = 2
    Color = 13165023
    TabOrder = 14
    Visible = False
    object bbtnImpriPag: TfcShapeBtn
      Left = 387
      Top = 322
      Width = 31
      Height = 31
      Hint = 'Grabar'
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
      Layout = blGlyphTop
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
      OnClick = bbtnImpriPagClick
    end
    object dbgCronogPag: TwwDBGrid
      Left = 8
      Top = 24
      Width = 413
      Height = 289
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
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
    end
    object StaticText1: TStaticText
      Left = 4
      Top = 4
      Width = 420
      Height = 19
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Cuotas Canceladas'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object bbtnPanel: TfcShapeBtn
      Left = 407
      Top = 4
      Width = 17
      Height = 18
      Hint = 'Grabar'
      Caption = 'X'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnPanelClick
    end
  end
  object dbgCronogVen: TwwDBGrid
    Left = 351
    Top = 195
    Width = 434
    Height = 374
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
    BorderStyle = bsNone
    Color = 13165023
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    KeyOptions = [dgEnterToTab, dgAllowDelete]
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgTabs, dgShowFooter]
    ParentFont = False
    TabOrder = 10
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnCalcCellColors = dbgCronogVenCalcCellColors
    OnFieldChanged = dbgCronogVenFieldChanged
    object dbgAportesbtn: TwwIButton
      Left = 0
      Top = 0
      Width = 25
      Height = 22
      AllowAllUp = True
      Enabled = False
      Flat = True
      Visible = False
    end
  end
  object bbtnImpri: TfcShapeBtn
    Left = 315
    Top = 528
    Width = 31
    Height = 31
    Hint = 'Grabar'
    Color = 10207162
    Default = True
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
    Layout = blGlyphTop
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
    Visible = False
    OnClick = bbtnImpriClick
  end
  object pnlcabe: TPanel
    Left = 0
    Top = 0
    Width = 790
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
      Left = 405
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
      Left = 546
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
      Left = 682
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
      OnExit = dbeCodigoModularExit
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
    Left = 6
    Top = 44
    Width = 778
    Height = 113
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
  end
  object dblcFormaPago: TwwDBLookupCombo
    Left = 87
    Top = 168
    Width = 45
    Height = 22
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
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = dblcFormaPagoExit
  end
  object edtFormaPago: TEdit
    Left = 137
    Top = 168
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
    TabOrder = 3
  end
  object Z2bbtnSumatoria: TfcShapeBtn
    Left = 17
    Top = 528
    Width = 31
    Height = 31
    Hint = 'Actualiza Saldos de Cuotas'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
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
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsRaised
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 8
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnSumatoriaClick
  end
  object PnlReclamo: TPanel
    Left = 6
    Top = 192
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
    TabOrder = 4
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
      Top = 120
      Width = 321
      Height = 57
      Color = 13165023
      Lines.Strings = (
        'mmObse')
      TabOrder = 8
    end
  end
  object Z2bbtnBorrar: TfcShapeBtn
    Left = 57
    Top = 528
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
    TabOrder = 9
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnBorrarClick
  end
  object bbtnSigue: TfcShapeBtn
    Left = 315
    Top = 528
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
    TabOrder = 12
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnSigueClick
  end
  object rgProceso: TRadioGroup
    Left = 2
    Top = 430
    Width = 151
    Height = 33
    Caption = 'Considerar en Proc. Cob.'
    Columns = 2
    Enabled = False
    ItemIndex = 1
    Items.Strings = (
      'Si'
      'No')
    TabOrder = 6
    OnClick = rgProcesoClick
  end
  object rgForma: TRadioGroup
    Left = 40
    Top = 390
    Width = 281
    Height = 33
    Caption = 'Tipo de Cancelaci'#243'n '
    Columns = 3
    ItemIndex = 1
    Items.Strings = (
      'Autom'#225'tica'
      'Manual'
      'Devoluci'#243'n')
    TabOrder = 5
    OnClick = rgFormaClick
  end
  object bbtnReporte: TfcShapeBtn
    Left = 275
    Top = 528
    Width = 31
    Height = 31
    Hint = 'Cuotas Canceladas'
    Color = 10207162
    DitherColor = clWhite
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
      555555777777777FF5555500000000805555557777777777FF555550BBBBB008
      05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
      005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
      055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
      055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
      05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
      05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
      005555555775FFFF77F555555570000000555555555777777755}
    Layout = blGlyphTop
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsRaised
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 11
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnReporteClick
  end
  object edtMonto: TEdit
    Left = 16
    Top = 494
    Width = 90
    Height = 27
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Text = '0.00'
    OnExit = edtMontoExit
    OnKeyPress = edtMontoKeyPress
  end
  object edtRecibido: TEdit
    Left = 134
    Top = 494
    Width = 90
    Height = 27
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    Text = '0.00'
    OnExit = edtRecibidoExit
    OnKeyPress = edtRecibidoKeyPress
  end
  object edtVuelto: TEdit
    Left = 251
    Top = 494
    Width = 90
    Height = 27
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 16
    Text = '0.00'
  end
  object bbtnHistorial: TfcShapeBtn
    Left = 235
    Top = 528
    Width = 31
    Height = 31
    Hint = 'Estado de Cuenta'
    Color = 10207162
    DitherColor = clWhite
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
      000557777777777777750BBBBBBBBBBBBBB07F5555FFFFFFF5570BBBB0000000
      BBB07F5557777777FF570BBB077BBB770BB07F557755555775570BBBBBBBBBBB
      BBB07F5555FFFFFFF5570BBBB0000000BBB07F5557777777F5570BBBB0FFFFF0
      BBB07F5557FFFFF7F5570BBBB0000000BBB07F555777777755570BBBBBBBBBBB
      BBB07FFFFFFFFFFFFFF700000000000000007777777777777777500FFFFFFFFF
      F005577FF555FFFFF7755500FFF00000005555775FF7777777F5550F777FFFFF
      F055557F777FFF5557F5550000000FFF00555577777775FF77F5550777777000
      7055557FFFFFF777F7F555000000000000555577777777777755}
    Layout = blGlyphTop
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsRaised
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 17
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnHistorialClick
  end
  object dblcBanco: TwwDBLookupCombo
    Left = 728
    Top = 18
    Width = 49
    Height = 24
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'BANCOID'#9'2'#9'Id'#9'F'
      'BANCONOM'#9'40'#9'Nombre'#9'F')
    LookupTable = DM1.cdsBcos
    LookupField = 'BANCOID'
    Enabled = False
    TabOrder = 18
    Visible = False
    AutoDropDown = False
    ShowButton = True
    UseTFields = False
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = dblcBancoExit
  end
  object rgDevo: TRadioGroup
    Left = 176
    Top = 430
    Width = 169
    Height = 33
    Caption = 'Considerar en Devol. el Flat '
    Columns = 2
    Enabled = False
    ItemIndex = 1
    Items.Strings = (
      'Si'
      'No')
    TabOrder = 19
    OnClick = rgDevoClick
  end
  object pprRecibo: TppReport
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
    Template.FileName = 'C:\SOLDB\Solformatos\Cob\Dema\CanCuotas.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = pprReciboPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 360
    Top = 520
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 106098
      mmPrintPosition = 0
      object pplblCia: TppLabel
        UserName = 'lblCia'
        Caption = 'lblCia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 1058
        mmWidth = 8467
        BandType = 0
      end
      object pplblDire: TppLabel
        UserName = 'lblDire'
        Caption = 'lblDire'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 6085
        mmWidth = 9525
        BandType = 0
      end
      object pplblarea: TppLabel
        UserName = 'lblarea'
        Caption = 'lblarea'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 11113
        mmWidth = 10054
        BandType = 0
      end
      object pplblruc: TppLabel
        UserName = 'lblruc'
        Caption = 'lblruc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 15875
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'RECIBO INGRESO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 131498
        mmTop = 1058
        mmWidth = 44715
        BandType = 0
      end
      object pplblNrorecibo: TppLabel
        UserName = 'lblNrorecibo'
        Caption = 'lblNrorecibo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 134409
        mmTop = 11113
        mmWidth = 26988
        BandType = 0
      end
      object pplblmonto1: TppLabel
        UserName = 'lblmonto1'
        Caption = 'lblmonto1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 17727
        mmTop = 25929
        mmWidth = 21960
        BandType = 0
      end
      object pplblmonto2: TppLabel
        UserName = 'lblmonto2'
        Caption = 'lblmonto2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 137054
        mmTop = 25929
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'RECIBI DE      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 6350
        mmTop = 35983
        mmWidth = 26723
        BandType = 0
      end
      object pplblnombre: TppLabel
        UserName = 'lblnombre'
        Caption = 'lblnombre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 46038
        mmTop = 35983
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'LA CANTIDAD DE :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 6350
        mmTop = 43392
        mmWidth = 33602
        BandType = 0
      end
      object pplblletras: TppLabel
        UserName = 'lblletras'
        Caption = 'lblletras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 46038
        mmTop = 43392
        mmWidth = 13229
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1058
        mmTop = 49742
        mmWidth = 195263
        BandType = 0
      end
      object pplblconcepto: TppLabel
        UserName = 'lblconcepto'
        Caption = 'POR CONCEPTO   :  (Pago de cuota y/o cuotas Pr'#233'stamo N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 6350
        mmTop = 55563
        mmWidth = 106892
        BandType = 0
      end
      object pplblfecha: TppLabel
        UserName = 'lblfecha'
        Caption = 'Jes'#250's Mar'#237'a, '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 6350
        mmTop = 87313
        mmWidth = 22754
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        DisplayFormat = 'dddd d '#39'de'#39'  mmmm '#39'de'#39' yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 43127
        mmTop = 87313
        mmWidth = 46567
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 130440
        mmTop = 94986
        mmWidth = 49213
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'RECIBI CONFORME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 136525
        mmTop = 96309
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cajero(a)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 144992
        mmTop = 100806
        mmWidth = 16140
        BandType = 0
      end
      object lblDuplicado: TppLabel
        UserName = 'lblDuplicado'
        Caption = 'Duplicado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Draft 12cpi'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8467
        mmLeft = 132821
        mmTop = 17198
        mmWidth = 35454
        BandType = 0
      end
      object lblMemo: TppMemo
        UserName = 'lblMemo'
        CharWrap = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 19050
        mmLeft = 6350
        mmTop = 61913
        mmWidth = 178859
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object dbpData3: TppBDEPipeline
    UserName = 'dbpData3'
    Left = 368
    Top = 456
    MasterDataPipelineName = 'dbpData1'
  end
  object dbpData2: TppBDEPipeline
    UserName = 'dbpData2'
    Left = 400
    Top = 456
    MasterDataPipelineName = 'dbpData1'
  end
  object dbpData1: TppBDEPipeline
    UserName = 'dbpData1'
    Left = 440
    Top = 456
  end
  object rptHistorial: TppReport
    AutoStop = False
    DataPipeline = dbpData1
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\HistorialUno.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = rptHistorialPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 480
    Top = 456
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpData1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppRegion3: TppRegion
        UserName = 'Region3'
        mmHeight = 25135
        mmLeft = 4233
        mmTop = 0
        mmWidth = 148167
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'digo modular :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 1058
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label2'
        Caption = 'Asociado       :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 6879
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'ASOCODMOD'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 42598
        mmTop = 1058
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 42333
        mmTop = 6879
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'N'#250'mero Cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 6615
        mmTop = 15875
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Fecha Otorgamiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 42069
        mmTop = 15875
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label101'
        Caption = 'Monto Solicitado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 75142
        mmTop = 15875
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label6'
        Caption = 'N'#250'mero Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 97896
        mmTop = 15875
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label7'
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 115623
        mmTop = 20108
        mmWidth = 9790
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Stretch = True
        mmHeight = 12435
        mmLeft = 4763
        mmTop = 265
        mmWidth = 147373
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          AutoSize = True
          DataField = 'CREDID'
          DataPipeline = dbpData1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 7673
          mmTop = 1058
          mmWidth = 9525
          BandType = 4
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'CREFOTORG'
          DataPipeline = dbpData1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 46038
          mmTop = 1058
          mmWidth = 17198
          BandType = 4
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'CREMTOSOL'
          DataPipeline = dbpData1
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 75671
          mmTop = 1058
          mmWidth = 17198
          BandType = 4
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'CRENUMCUO'
          DataPipeline = dbpData1
          DisplayFormat = '##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 100806
          mmTop = 1058
          mmWidth = 10319
          BandType = 4
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          AutoSize = True
          DataField = 'CREESTADO'
          DataPipeline = dbpData1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 114300
          mmTop = 1058
          mmWidth = 16404
          BandType = 4
        end
        object ppSubReport1: TppSubReport
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ParentWidth = False
          ShiftRelativeTo = ppRegion1
          TraverseAllData = False
          DataPipelineName = 'dbpData2'
          mmHeight = 5027
          mmLeft = 6085
          mmTop = 6615
          mmWidth = 144992
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = dbpData2
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
            Template.FileName = 'C:\SOLDB\Solformatos\Cre\Dema\HistorialUno.rtm'
            Left = 304
            Top = 112
            Version = '7.02'
            mmColumnWidth = 0
            DataPipelineName = 'dbpData2'
            object ppTitleBand1: TppTitleBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 19315
              mmPrintPosition = 0
              object ppRegion2: TppRegion
                UserName = 'Region2'
                Stretch = True
                mmHeight = 16669
                mmLeft = 3440
                mmTop = 2381
                mmWidth = 182298
                BandType = 1
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                object ppLabel13: TppLabel
                  UserName = 'Label8'
                  Caption = 'Interes Val.'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 5556
                  mmTop = 3440
                  mmWidth = 16669
                  BandType = 1
                end
                object ppLabel14: TppLabel
                  UserName = 'Label9'
                  Caption = 'Flat Valor'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 5556
                  mmTop = 8467
                  mmWidth = 13494
                  BandType = 1
                end
                object ppLabel15: TppLabel
                  UserName = 'Label10'
                  Caption = 'Monto Cuota'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 5556
                  mmTop = 14023
                  mmWidth = 18521
                  BandType = 1
                end
                object ppLabel16: TppLabel
                  UserName = 'Label11'
                  Caption = 'Inicio de Pago'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 106098
                  mmTop = 3440
                  mmWidth = 20108
                  BandType = 1
                end
                object ppLabel17: TppLabel
                  UserName = 'Label12'
                  Caption = 'Fin de Pago'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 106098
                  mmTop = 8467
                  mmWidth = 16669
                  BandType = 1
                end
                object ppLabel18: TppLabel
                  UserName = 'Label13'
                  Caption = 'N'#250'mero de Oficio'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 106098
                  mmTop = 14023
                  mmWidth = 25135
                  BandType = 1
                end
                object ppDBText8: TppDBText
                  UserName = 'DBText8'
                  DataField = 'CREINTERES'
                  DataPipeline = dbpData2
                  DisplayFormat = '###,###,##0.00'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 30427
                  mmTop = 3440
                  mmWidth = 17198
                  BandType = 1
                end
                object ppDBText9: TppDBText
                  UserName = 'DBText9'
                  DataField = 'CREDFLAT'
                  DataPipeline = dbpData2
                  DisplayFormat = '###,###,##0.00'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 30427
                  mmTop = 8467
                  mmWidth = 17198
                  BandType = 1
                end
                object ppDBText10: TppDBText
                  UserName = 'DBText10'
                  DataField = 'CRECUOTA'
                  DataPipeline = dbpData2
                  DisplayFormat = '###,###,##0.00'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 30427
                  mmTop = 14023
                  mmWidth = 17198
                  BandType = 1
                end
                object ppDBText11: TppDBText
                  UserName = 'DBText11'
                  DataField = 'CREFINIPAG'
                  DataPipeline = dbpData2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 141817
                  mmTop = 3440
                  mmWidth = 17198
                  BandType = 1
                end
                object ppDBText12: TppDBText
                  UserName = 'DBText12'
                  DataField = 'CREFFINPAG'
                  DataPipeline = dbpData2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 141817
                  mmTop = 8467
                  mmWidth = 17198
                  BandType = 1
                end
                object ppDBText13: TppDBText
                  UserName = 'DBText13'
                  DataField = 'NROFICIO'
                  DataPipeline = dbpData2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 141817
                  mmTop = 14023
                  mmWidth = 17198
                  BandType = 1
                end
              end
            end
            object ppDetailBand3: TppDetailBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 5027
              mmPrintPosition = 0
              object ppSubReport2: TppSubReport
                UserName = 'SubReport2'
                ExpandAll = False
                NewPrintJob = False
                OutlineSettings.CreateNode = True
                ParentWidth = False
                TraverseAllData = False
                DataPipelineName = 'dbpData3'
                mmHeight = 5027
                mmLeft = 3175
                mmTop = 0
                mmWidth = 182827
                BandType = 4
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                object crptSub2: TppChildReport
                  AutoStop = False
                  DataPipeline = dbpData3
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
                  Template.FileName = 'C:\SOLDB\Solformatos\Cre\Dema\HistorialUno.rtm'
                  Left = 312
                  Top = 120
                  Version = '7.02'
                  mmColumnWidth = 0
                  DataPipelineName = 'dbpData3'
                  object ppTitleBand2: TppTitleBand
                    mmBottomOffset = 0
                    mmHeight = 12171
                    mmPrintPosition = 0
                    object ppRegion4: TppRegion
                      UserName = 'Region4'
                      mmHeight = 11113
                      mmLeft = 0
                      mmTop = 794
                      mmWidth = 182827
                      BandType = 1
                      mmBottomOffset = 0
                      mmOverFlowOffset = 0
                      mmStopPosition = 0
                      object ppLabel19: TppLabel
                        UserName = 'Label14'
                        Caption = 'A'#241'o'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 0
                        mmTop = 2117
                        mmWidth = 5821
                        BandType = 1
                      end
                      object ppLabel20: TppLabel
                        UserName = 'Label15'
                        Caption = 'Mes'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 9260
                        mmTop = 2117
                        mmWidth = 6350
                        BandType = 1
                      end
                      object ppLabel21: TppLabel
                        UserName = 'Label16'
                        Caption = 'Cuo'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 16933
                        mmTop = 2117
                        mmWidth = 5821
                        BandType = 1
                      end
                      object ppLabel22: TppLabel
                        UserName = 'Label17'
                        Caption = 'Amort.'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 61383
                        mmTop = 2117
                        mmWidth = 10054
                        BandType = 1
                      end
                      object ppLabel23: TppLabel
                        UserName = 'Label18'
                        Caption = 'Int.'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 83079
                        mmTop = 2117
                        mmWidth = 4498
                        BandType = 1
                      end
                      object ppLabel24: TppLabel
                        UserName = 'Label19'
                        Caption = 'Flat'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 98425
                        mmTop = 2117
                        mmWidth = 5027
                        BandType = 1
                      end
                      object ppLabel25: TppLabel
                        UserName = 'Label21'
                        Caption = 'Monto Cobrado'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        WordWrap = True
                        mmHeight = 7408
                        mmLeft = 42333
                        mmTop = 2117
                        mmWidth = 12435
                        BandType = 1
                      end
                      object ppLabel26: TppLabel
                        UserName = 'Label22'
                        Caption = 'Saldo'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 112184
                        mmTop = 2117
                        mmWidth = 7938
                        BandType = 1
                      end
                      object ppLabel27: TppLabel
                        UserName = 'Label20'
                        Caption = 'Fecha Oper.'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        WordWrap = True
                        mmHeight = 7408
                        mmLeft = 141817
                        mmTop = 1852
                        mmWidth = 8467
                        BandType = 1
                      end
                      object ppLabel28: TppLabel
                        UserName = 'Label24'
                        AutoSize = False
                        Caption = 'Cuo a Pagar'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        TextAlignment = taCentered
                        Transparent = True
                        WordWrap = True
                        mmHeight = 8996
                        mmLeft = 24342
                        mmTop = 2117
                        mmWidth = 14817
                        BandType = 1
                      end
                      object ppLabel29: TppLabel
                        UserName = 'Label23'
                        Caption = 'Estado'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 159279
                        mmTop = 1852
                        mmWidth = 9790
                        BandType = 1
                      end
                      object ppLabel30: TppLabel
                        UserName = 'Label25'
                        Caption = 'Exceso'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 125677
                        mmTop = 2117
                        mmWidth = 10319
                        BandType = 1
                      end
                    end
                  end
                  object ppDetailBand4: TppDetailBand
                    PrintHeight = phDynamic
                    mmBottomOffset = 0
                    mmHeight = 4498
                    mmPrintPosition = 0
                    object ppDBText14: TppDBText
                      UserName = 'DBText14'
                      DataField = 'CREANO'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      ParentDataPipeline = False
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 0
                      mmTop = 265
                      mmWidth = 8467
                      BandType = 4
                    end
                    object ppDBText15: TppDBText
                      UserName = 'DBText15'
                      DataField = 'CREMES'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 9260
                      mmTop = 265
                      mmWidth = 3969
                      BandType = 4
                    end
                    object ppDBText16: TppDBText
                      UserName = 'DBText16'
                      DataField = 'CRECUOTA'
                      DataPipeline = dbpData3
                      DisplayFormat = '##'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 16933
                      mmTop = 265
                      mmWidth = 4233
                      BandType = 4
                    end
                    object ppDBText17: TppDBText
                      UserName = 'DBText17'
                      DataField = 'CRECAPITAL'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 56356
                      mmTop = 265
                      mmWidth = 15081
                      BandType = 4
                    end
                    object ppDBText18: TppDBText
                      UserName = 'DBText18'
                      DataField = 'CREMTOINT'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 72496
                      mmTop = 265
                      mmWidth = 15081
                      BandType = 4
                    end
                    object ppDBText19: TppDBText
                      UserName = 'DBText19'
                      DataField = 'CREMTOFLAT'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 88371
                      mmTop = 265
                      mmWidth = 15081
                      BandType = 4
                    end
                    object ppDBText20: TppDBText
                      UserName = 'DBText20'
                      AutoSize = True
                      DataField = 'FOPERAC'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 137584
                      mmTop = 0
                      mmWidth = 12700
                      BandType = 4
                    end
                    object ppDBText22: TppDBText
                      UserName = 'DBText22'
                      DataField = 'CRESALDO'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 105304
                      mmTop = 265
                      mmWidth = 14817
                      BandType = 4
                    end
                    object ppDBText21: TppDBText
                      UserName = 'DBText21'
                      DataField = 'CREMTOCOB'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 40217
                      mmTop = 265
                      mmWidth = 15081
                      BandType = 4
                    end
                    object ppDBText23: TppDBText
                      UserName = 'DBText23'
                      AutoSize = True
                      DataField = 'CREESTADO'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 159279
                      mmTop = 0
                      mmWidth = 16404
                      BandType = 4
                    end
                    object ppDBText24: TppDBText
                      UserName = 'DBText24'
                      DataField = 'CREMTO'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 24077
                      mmTop = 265
                      mmWidth = 15081
                      BandType = 4
                    end
                    object ppDBText25: TppDBText
                      UserName = 'DBText25'
                      DataField = 'CREMTOEXC'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 121179
                      mmTop = 265
                      mmWidth = 14817
                      BandType = 4
                    end
                  end
                  object ppSummaryBand1: TppSummaryBand
                    mmBottomOffset = 0
                    mmHeight = 37306
                    mmPrintPosition = 0
                    object ppDBCalc2: TppDBCalc
                      UserName = 'DBCalc2'
                      DataField = 'CREMTOCOB'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 40217
                      mmTop = 1058
                      mmWidth = 15081
                      BandType = 7
                    end
                    object ppDBCalc3: TppDBCalc
                      UserName = 'DBCalc3'
                      DataField = 'CRECAPITAL'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 56356
                      mmTop = 1058
                      mmWidth = 15081
                      BandType = 7
                    end
                    object ppDBCalc4: TppDBCalc
                      UserName = 'DBCalc4'
                      DataField = 'CREMTOINT'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 72496
                      mmTop = 1058
                      mmWidth = 15081
                      BandType = 7
                    end
                    object ppDBCalc5: TppDBCalc
                      UserName = 'DBCalc5'
                      DataField = 'CREMTOFLAT'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 88371
                      mmTop = 1058
                      mmWidth = 15081
                      BandType = 7
                    end
                    object ppDBCalc1: TppDBCalc
                      UserName = 'DBCalc1'
                      DataField = 'CREMTO'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 24077
                      mmTop = 1058
                      mmWidth = 15081
                      BandType = 7
                    end
                    object ppDBCalc7: TppDBCalc
                      UserName = 'DBCalc7'
                      DataField = 'CREMTOEXC'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 120915
                      mmTop = 1058
                      mmWidth = 15081
                      BandType = 7
                    end
                    object ppLine3: TppLine
                      UserName = 'Line1'
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 0
                      mmTop = 265
                      mmWidth = 184415
                      BandType = 7
                    end
                    object ppLine4: TppLine
                      UserName = 'Line2'
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 0
                      mmTop = 6350
                      mmWidth = 184415
                      BandType = 7
                    end
                    object ppLabel31: TppLabel
                      UserName = 'Label26'
                      Caption = 'SALDO DEUDA TOTAL  -> '
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3704
                      mmLeft = 11377
                      mmTop = 7144
                      mmWidth = 34396
                      BandType = 7
                    end
                    object ppDBText26: TppDBText
                      UserName = 'DBText26'
                      AutoSize = True
                      DataField = 'TMONABR'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 46302
                      mmTop = 7144
                      mmWidth = 13494
                      BandType = 7
                    end
                    object ppLine5: TppLine
                      UserName = 'Line3'
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 0
                      mmTop = 12171
                      mmWidth = 184415
                      BandType = 7
                    end
                    object ppLabel32: TppLabel
                      UserName = 'Label27'
                      Caption = 'SALDO DE CUOTAS VENCIDAS ->'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      mmHeight = 3704
                      mmLeft = 30692
                      mmTop = 13494
                      mmWidth = 43921
                      BandType = 7
                    end
                    object ppLabel33: TppLabel
                      UserName = 'Label28'
                      Caption = 'SALDO DE CUOTAS PENDIENTES ->'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      mmHeight = 3704
                      mmLeft = 30692
                      mmTop = 18785
                      mmWidth = 46038
                      BandType = 7
                    end
                    object ppDBText27: TppDBText
                      UserName = 'DBText27'
                      AutoSize = True
                      DataField = 'TMONABR'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 90752
                      mmTop = 13494
                      mmWidth = 13494
                      BandType = 7
                    end
                    object ppDBText28: TppDBText
                      UserName = 'DBText28'
                      AutoSize = True
                      DataField = 'TMONABR'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 90752
                      mmTop = 18785
                      mmWidth = 13494
                      BandType = 7
                    end
                    object ppLine6: TppLine
                      UserName = 'Line4'
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 116152
                      mmTop = 23019
                      mmWidth = 23283
                      BandType = 7
                    end
                    object ppDBText29: TppDBText
                      UserName = 'DBText29'
                      DataField = 'CREVENCIDAS'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 122238
                      mmTop = 13494
                      mmWidth = 17198
                      BandType = 7
                    end
                    object ppDBText30: TppDBText
                      UserName = 'DBText30'
                      DataField = 'CREPENDT1'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 122238
                      mmTop = 18785
                      mmWidth = 17198
                      BandType = 7
                    end
                    object ppDBText31: TppDBText
                      UserName = 'DBText31'
                      DataField = 'MTOAPAGARS'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 122238
                      mmTop = 24077
                      mmWidth = 17198
                      BandType = 7
                    end
                    object ppDBText32: TppDBText
                      UserName = 'DBText32'
                      AutoSize = True
                      DataField = 'MES'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 24077
                      mmTop = 33073
                      mmWidth = 6085
                      BandType = 7
                    end
                    object ppDBText33: TppDBText
                      UserName = 'DBText33'
                      DataField = 'MTOAPAGAR'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 99748
                      mmTop = 7144
                      mmWidth = 17198
                      BandType = 7
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
