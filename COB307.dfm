object FBloqueoCuotas: TFBloqueoCuotas
  Left = 100
  Top = 84
  ActiveControl = seRMI
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas - Cuotas a Bloquear / Desbloquear'
  ClientHeight = 511
  ClientWidth = 771
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 4
    Top = 78
    Width = 763
    Height = 330
    Shape = bsFrame
  end
  object TLabel
    Left = 16
    Top = 20
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
    Left = 328
    Top = 20
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
  object lblTitu1: TLabel
    Left = 16
    Top = 72
    Width = 41
    Height = 13
    Caption = 'Cr'#233'dito'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Bevel2: TBevel
    Left = 4
    Top = 9
    Width = 457
    Height = 57
    Shape = bsFrame
  end
  object Bevel3: TBevel
    Left = 4
    Top = 426
    Width = 763
    Height = 77
    Shape = bsFrame
  end
  object Label3: TLabel
    Left = 24
    Top = 422
    Width = 278
    Height = 13
    Caption = 'Reporte de Cuotas Bloqueadas / Desbloqueadas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Bevel4: TBevel
    Left = 4
    Top = 415
    Width = 763
    Height = 6
    Shape = bsTopLine
  end
  object clbCreditos: TCheckListBox
    Left = 16
    Top = 98
    Width = 141
    Height = 141
    OnClickCheck = clbCreditosClickCheck
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 2
  end
  object dbeApePat: TwwDBEdit
    Left = 16
    Top = 35
    Width = 306
    Height = 21
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
    Left = 328
    Top = 35
    Width = 114
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
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
  object dbgBloqueoC: TwwDBGrid
    Left = 12
    Top = 90
    Width = 746
    Height = 274
    DisableThemesInTitle = False
    MemoAttributes = [mViewOnly, mDisableDialog]
    IniAttributes.Delimiter = ';;'
    TitleColor = 13165023
    FixedCols = 0
    ShowHorzScrollBar = False
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -9
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgPerfectRowFit]
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnFieldChanged = dbgBloqueoCFieldChanged
  end
  object pnlMemo: TPanel
    Left = 255
    Top = 95
    Width = 401
    Height = 257
    Color = 13165023
    TabOrder = 4
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
      Height = 235
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
  object pnlImpre: TPanel
    Left = 148
    Top = 446
    Width = 529
    Height = 49
    BevelOuter = bvNone
    Color = 13165023
    TabOrder = 5
    object Label1: TLabel
      Left = 28
      Top = 2
      Width = 69
      Height = 15
      Caption = 'Rango Inicial'
    end
    object Label2: TLabel
      Left = 135
      Top = 2
      Width = 59
      Height = 15
      Caption = 'Rango Final'
    end
    object spRAI: TSpinEdit
      Left = 28
      Top = 16
      Width = 56
      Height = 24
      MaxLength = 4
      MaxValue = 2050
      MinValue = 2000
      TabOrder = 0
      Value = 2000
      OnKeyPress = spRAIKeyPress
    end
    object seRMI: TSpinEdit
      Left = 82
      Top = 16
      Width = 37
      Height = 24
      MaxLength = 2
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 12
      OnKeyPress = spRAIKeyPress
    end
    object seRAF: TSpinEdit
      Left = 135
      Top = 16
      Width = 53
      Height = 24
      MaxLength = 4
      MaxValue = 2050
      MinValue = 2000
      TabOrder = 2
      Value = 2000
      OnKeyPress = spRAIKeyPress
    end
    object seRMF: TSpinEdit
      Left = 189
      Top = 16
      Width = 37
      Height = 24
      MaxLength = 2
      MaxValue = 12
      MinValue = 1
      TabOrder = 3
      Value = 12
      OnKeyPress = spRAIKeyPress
    end
    object rgEstado: TRadioGroup
      Left = 247
      Top = 6
      Width = 234
      Height = 33
      Caption = 'Estado de Cuotas'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Bloqueadas'
        'DesBloqueadas')
      TabOrder = 4
    end
    object bbtnBloqueo: TfcShapeBtn
      Left = 493
      Top = 8
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
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnBloqueoClick
    end
  end
  object Z2bbtnSigue: TfcShapeBtn
    Left = 703
    Top = 370
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
    TabOrder = 6
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnSigueClick
  end
  object bbtnNuevo: TfcShapeBtn
    Left = 640
    Top = 370
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
    TabOrder = 7
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnNuevoClick
  end
  object bdeppBloqueo: TppBDEPipeline
    UserName = 'bdeppBloqueo'
    Left = 734
    Top = 438
  end
  object rptBloqueo: TppReport
    AutoStop = False
    DataPipeline = bdeppBloqueo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 241300
    PrinterSetup.PaperSize = 120
    Template.FileName = 'C:\SOLDB\Solformatos\Cob\Dema\Bloqueo.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 694
    Top = 438
    Version = '7.02'
    mmColumnWidth = 228600
    DataPipelineName = 'bdeppBloqueo'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'RELACION DE CUOTAS '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 60590
        mmTop = 14817
        mmWidth = 39423
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 4498
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 149754
        mmTop = 4498
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 149754
        mmTop = 8996
        mmWidth = 6085
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 8996
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 149754
        mmTop = 0
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageCount
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object pplblRango: TppLabel
        UserName = 'lblRango'
        Caption = 'lblRango'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 71173
        mmTop = 19315
        mmWidth = 15081
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'USEID'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOCODMOD'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOM'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 265
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CREFOTORG'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3704
        mmLeft = 65352
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREDID'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3704
        mmLeft = 86784
        mmTop = 265
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ANOMES'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3704
        mmLeft = 122502
        mmTop = 265
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CRECUOTA'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3704
        mmLeft = 138642
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'USUARIO'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 265
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'FECHA'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3704
        mmLeft = 163513
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'CREBLOQOBS'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'bdeppBloqueo'
        mmHeight = 3440
        mmLeft = 184944
        mmTop = 265
        mmWidth = 38100
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppdbtOfc'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 20108
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 529
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 7408
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 29104
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 64823
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 86254
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 121973
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 138113
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line101'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 144727
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 162984
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 184415
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 1058
          mmTop = 7408
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          AutoSize = False
          Caption = 'C'#243'digo Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 8202
          mmTop = 7408
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'Apellidos y Nombre'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 29633
          mmTop = 7408
          mmWidth = 34925
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label8'
          AutoSize = False
          Caption = 'Fecha del Prestamo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 65352
          mmTop = 7408
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label101'
          AutoSize = False
          Caption = 'N'#250'mero de Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 86784
          mmTop = 7408
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label103'
          AutoSize = False
          Caption = 'A'#241'o / Mes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 122502
          mmTop = 7408
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label102'
          AutoSize = False
          Caption = 'Cuo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 138642
          mmTop = 7408
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label15'
          AutoSize = False
          Caption = 'Usuario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 145257
          mmTop = 7408
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          AutoSize = False
          Caption = 'Fecha Proceso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 163513
          mmTop = 7408
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'Observaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 184944
          mmTop = 7408
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 226748
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 529
          mmTop = 6879
          mmWidth = 226484
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 529
          mmTop = 19844
          mmWidth = 226484
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Lugar Proceso :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 529
          mmTop = 2117
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
        end
        object ppdbtOfc: TppDBText
          UserName = 'dbtOfc'
          AutoSize = True
          DataField = 'OFDESABR'
          DataPipeline = bdeppBloqueo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'bdeppBloqueo'
          mmHeight = 3969
          mmLeft = 29104
          mmTop = 2381
          mmWidth = 16404
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
  end
  object cdsQry1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 664
    Top = 8
  end
  object cdsQry2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 704
    Top = 8
  end
  object cdsQry: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 616
    Top = 8
  end
  object cdsSolicitud: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 584
    Top = 8
  end
  object dsSolicitud: TwwDataSource
    DataSet = cdsSolicitud
    Left = 584
    Top = 40
  end
  object dsQry: TwwDataSource
    DataSet = cdsQry
    Left = 616
    Top = 40
  end
end
