object FDetHistorial: TFDetHistorial
  Left = 142
  Top = 280
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detalle de Cr'#233'dito'
  ClientHeight = 333
  ClientWidth = 746
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 21
    Width = 65
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Cr'#233'dito'
    Transparent = True
    WordWrap = True
  end
  object Label2: TLabel
    Left = 173
    Top = 8
    Width = 65
    Height = 26
    Alignment = taCenter
    AutoSize = False
    Caption = 'Fecha Otorgamiento'
    Transparent = True
    WordWrap = True
  end
  object Label3: TLabel
    Left = 245
    Top = 8
    Width = 65
    Height = 26
    Alignment = taCenter
    AutoSize = False
    Caption = 'Mto. Solicitado'
    Transparent = True
    WordWrap = True
  end
  object Label4: TLabel
    Left = 326
    Top = 21
    Width = 32
    Height = 13
    Alignment = taCenter
    Caption = 'Interes'
    Transparent = True
    WordWrap = True
  end
  object Label5: TLabel
    Left = 387
    Top = 21
    Width = 17
    Height = 13
    Alignment = taCenter
    Caption = 'Flat'
    Transparent = True
    WordWrap = True
  end
  object Label6: TLabel
    Left = 408
    Top = 21
    Width = 65
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Mto. Cuota'
    Transparent = True
    WordWrap = True
  end
  object Label7: TLabel
    Left = 476
    Top = 21
    Width = 44
    Height = 13
    Alignment = taCenter
    Caption = 'N Cuotas'
    Transparent = True
    WordWrap = True
  end
  object Label8: TLabel
    Left = 527
    Top = 21
    Width = 65
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Inicio Pago'
    Transparent = True
    WordWrap = True
  end
  object Label9: TLabel
    Left = 599
    Top = 21
    Width = 65
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Fin Pago'
    Transparent = True
    WordWrap = True
  end
  object Label10: TLabel
    Left = 671
    Top = 21
    Width = 65
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Nro. Oficio'
    Transparent = True
    WordWrap = True
  end
  object lblTitulo: TLabel
    Left = 120
    Top = 304
    Width = 316
    Height = 26
    Caption = 'Monto de las Cuotas Seleccionadas :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblMtoAPagar: TLabel
    Left = 472
    Top = 304
    Width = 40
    Height = 26
    Alignment = taRightJustify
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object dbgDetHistorial: TwwDBGrid
    Left = 8
    Top = 64
    Width = 729
    Height = 233
    DisableThemesInTitle = False
    ControlInfoInDataset = False
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clBtnHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnCalcCellColors = dbgDetHistorialCalcCellColors
    OnDblClick = dbgDetHistorialDblClick
    OnFieldChanged = dbgDetHistorialFieldChanged
  end
  object dbeCredid: TwwDBEdit
    Left = 8
    Top = 35
    Width = 113
    Height = 21
    AutoSize = False
    DataField = 'CREDID'
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeFOtorg: TwwDBEdit
    Left = 173
    Top = 35
    Width = 65
    Height = 21
    DataField = 'CREFOTORG'
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeMtoSol: TwwDBEdit
    Left = 245
    Top = 35
    Width = 65
    Height = 21
    DataField = 'CREMTOSOL'
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeInte: TwwDBEdit
    Left = 316
    Top = 35
    Width = 42
    Height = 21
    DataField = 'CREINTERES'
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeFlat: TwwDBEdit
    Left = 362
    Top = 35
    Width = 42
    Height = 21
    DataField = 'CREDFLAT'
    TabOrder = 5
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeMtoCuo: TwwDBEdit
    Left = 408
    Top = 35
    Width = 65
    Height = 21
    DataField = 'CRECUOTA'
    TabOrder = 6
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeNumCuo: TwwDBEdit
    Left = 478
    Top = 35
    Width = 42
    Height = 21
    DataField = 'CRENUMCUO'
    TabOrder = 7
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeIniPag: TwwDBEdit
    Left = 527
    Top = 35
    Width = 65
    Height = 21
    AutoSize = False
    DataField = 'CREFINIPAG'
    TabOrder = 8
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeFinpag: TwwDBEdit
    Left = 599
    Top = 35
    Width = 65
    Height = 21
    AutoSize = False
    DataField = 'CREFFINPAG'
    TabOrder = 9
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeNroFicio: TwwDBEdit
    Left = 671
    Top = 35
    Width = 65
    Height = 21
    AutoSize = False
    DataField = 'NROFICIO'
    TabOrder = 10
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object pnlDetPago: TPanel
    Left = 8
    Top = 128
    Width = 729
    Height = 169
    Caption = 'pnlDetPago'
    Color = 13165023
    TabOrder = 11
    Visible = False
    DesignSize = (
      729
      169)
    object stTitulo: TStaticText
      Left = 1
      Top = 1
      Width = 727
      Height = 20
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSingle
      Caption = 'Detalle del Pago'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object dbgDetPago: TwwDBGrid
      Left = 8
      Top = 24
      Width = 713
      Height = 137
      DisableThemesInTitle = False
      ControlInfoInDataset = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clBtnHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgTabs]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
    end
    object Z2sbtnSalir: TfcShapeBtn
      Left = 713
      Top = 3
      Width = 14
      Height = 17
      Hint = 'Cancelar'
      Anchors = [akTop, akRight]
      Caption = 'X'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2sbtnSalirClick
    end
  end
end
