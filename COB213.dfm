object FSeguimiento: TFSeguimiento
  Left = 88
  Top = 111
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsSingle
  Caption = 'Seguimiento de Cobranzas'
  ClientHeight = 495
  ClientWidth = 788
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lblNombre: TLabel
    Left = 7
    Top = 4
    Width = 36
    Height = 16
    Caption = 'Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lblCodMod: TLabel
    Left = 7
    Top = 44
    Width = 72
    Height = 16
    Caption = 'Cod. Modular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 333
    Top = 0
    Width = 4
    Height = 489
  end
  object Label1: TLabel
    Left = 7
    Top = 92
    Width = 156
    Height = 16
    Caption = 'Cr'#233'ditos con Cuotas Vencidas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 7
    Top = 238
    Width = 85
    Height = 16
    Caption = 'Cuotas Vencidas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lblAccion: TLabel
    Left = 343
    Top = 6
    Width = 85
    Height = 16
    Caption = 'Acci'#243'n a Tomar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lblRealizada: TLabel
    Left = 343
    Top = 222
    Width = 94
    Height = 16
    Caption = 'Acci'#243'n Realizadas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dbeApeNom: TwwDBEdit
    Left = 7
    Top = 19
    Width = 322
    Height = 21
    AutoFillDate = False
    AutoSelect = False
    AutoSize = False
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 10207162
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
    OnExit = dbeApeNomExit
  end
  object dbecodmod: TwwDBEdit
    Left = 7
    Top = 59
    Width = 114
    Height = 21
    AutoFillDate = False
    AutoSelect = False
    AutoSize = False
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 10207162
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
    OnExit = dbecodmodExit
  end
  object dbgVencidas: TwwDBGrid
    Left = 7
    Top = 112
    Width = 322
    Height = 120
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dbgVencidasRowChanged
    FixedCols = 0
    ShowHorzScrollBar = False
    Options = [dgTitles, dgIndicator, dgColLines]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgVencidasDblClick
  end
  object dbgCuotas: TwwDBGrid
    Left = 7
    Top = 258
    Width = 258
    Height = 231
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    Options = [dgTitles, dgIndicator, dgColLines]
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object pnlMarca: TPanel
    Left = 344
    Top = 24
    Width = 326
    Height = 180
    AutoSize = True
    Color = 13165023
    Enabled = False
    TabOrder = 4
    object dbgAccion: TwwDBGrid
      Left = 1
      Top = 1
      Width = 140
      Height = 177
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = False
      ShowVertScrollBar = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgPerfectRowFit]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnKeyDown = dbgAccionKeyDown
    end
    object dbgPeriodo: TwwDBGrid
      Left = 138
      Top = 1
      Width = 187
      Height = 41
      DisableThemesInTitle = False
      MemoAttributes = []
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = False
      ShowVertScrollBar = False
      EditControlOptions = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgColLines, dgPerfectRowFit]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnKeyDown = dbgPeriodoKeyDown
    end
    object dbgMarca: TwwDBGrid
      Left = 138
      Top = 40
      Width = 187
      Height = 139
      DisableThemesInTitle = False
      MemoAttributes = []
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = False
      ShowVertScrollBar = False
      EditControlOptions = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgColLines, dgRowLines, dgPerfectRowFit]
      ParentFont = False
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnKeyDown = dbgPeriodoKeyDown
    end
  end
  object dbgRealizada: TwwDBGrid
    Left = 343
    Top = 240
    Width = 322
    Height = 217
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dbgVencidasRowChanged
    FixedCols = 0
    ShowHorzScrollBar = False
    Options = [dgTitles, dgIndicator, dgColLines]
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgVencidasDblClick
  end
  object sbtnRAceptar: TfcShapeBtn
    Left = 750
    Top = 463
    Width = 32
    Height = 31
    Hint = 'Grabar Resoluciones'
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
    TabOrder = 6
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = sbtnRAceptarClick
  end
end
