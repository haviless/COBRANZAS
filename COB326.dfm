object FChequesAnu: TFChequesAnu
  Left = 247
  Top = 117
  Width = 940
  Height = 600
  Caption = 'Cheques Anulados'
  Color = 10207162
  Constraints.MaxHeight = 640
  Constraints.MaxWidth = 940
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 46
    Align = alTop
    BevelInner = bvRaised
    BiDiMode = bdLeftToRight
    Color = 10207162
    ParentBiDiMode = False
    TabOrder = 0
    object fclTitulo: TfcLabel
      Left = 16
      Top = 6
      Width = 253
      Height = 35
      Caption = 'CHEQUES ANULADO'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
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
  end
  object pnlTool: TPanel
    Left = 0
    Top = 46
    Width = 924
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
    object Bevel2: TBevel
      Left = 558
      Top = 8
      Width = 204
      Height = 69
    end
    object Bevel1: TBevel
      Left = 5
      Top = 10
      Width = 206
      Height = 67
    end
    object Label3: TLabel
      Left = 589
      Top = 32
      Width = 31
      Height = 15
      Caption = 'Desde'
    end
    object Label4: TLabel
      Left = 684
      Top = 32
      Width = 29
      Height = 15
      Caption = 'Hasta'
    end
    object Label2: TLabel
      Left = 39
      Top = 32
      Width = 31
      Height = 15
      Caption = 'Desde'
    end
    object Label5: TLabel
      Left = 136
      Top = 32
      Width = 29
      Height = 15
      Caption = 'Hasta'
    end
    object dtpDesReg: TwwDBDateTimePicker
      Left = 14
      Top = 48
      Width = 90
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 4
    end
    object bbtnAceptar: TfcShapeBtn
      Left = 882
      Top = 45
      Width = 34
      Height = 31
      Hint = 'Mostrar Asociados'
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
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnAceptarClick
    end
    object pnlUPago: TPanel
      Left = 227
      Top = 3
      Width = 316
      Height = 75
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      BorderStyle = bsSingle
      Color = 10207162
      ParentBiDiMode = False
      TabOrder = 0
      object lblUPago: TLabel
        Left = 12
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
        Left = 12
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
        Left = 74
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
        OnChange = dblcdUPagoChange
      end
      object dblcdUProceso: TwwDBLookupComboDlg
        Left = 74
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
        LookupField = 'UPROID'
        Color = clWhite
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdUProcesoChange
      end
      object dbeUProceso: TwwDBEdit
        Left = 138
        Top = 11
        Width = 162
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
        Left = 138
        Top = 41
        Width = 162
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
    object dtpDesde: TwwDBDateTimePicker
      Left = 566
      Top = 48
      Width = 90
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object dtpHasta: TwwDBDateTimePicker
      Left = 663
      Top = 48
      Width = 90
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
    end
    object dtpHasReg: TwwDBDateTimePicker
      Left = 111
      Top = 48
      Width = 90
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 5
    end
    object cbFReg: TCheckBox
      Left = 44
      Top = 12
      Width = 116
      Height = 17
      Caption = 'Fecha de Registro'
      TabOrder = 6
      OnClick = cbFRegClick
    end
    object cbFChe: TCheckBox
      Left = 578
      Top = 12
      Width = 153
      Height = 17
      Caption = 'Fecha de Cheque anulado'
      TabOrder = 7
      OnClick = cbFCheClick
    end
    object rgRegu: TRadioGroup
      Left = 774
      Top = 1
      Width = 93
      Height = 74
      Caption = 'Regularizados'
      ItemIndex = 2
      Items.Strings = (
        'Si'
        'No'
        'Todos')
      TabOrder = 8
      OnClick = rgReguClick
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 518
    Width = 924
    Height = 44
    Align = alBottom
    BevelInner = bvRaised
    BiDiMode = bdRightToLeft
    Color = 10207162
    ParentBiDiMode = False
    TabOrder = 2
    object bbtnSalir: TBitBtn
      Left = 1220
      Top = 9
      Width = 60
      Height = 27
      Caption = '&Salir'
      TabOrder = 0
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
    object BtnCerrar: TBitBtn
      Left = 831
      Top = 8
      Width = 80
      Height = 30
      Caption = 'Cerrar'
      TabOrder = 1
      OnClick = BtnCerrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object bitImprimir: TfcShapeBtn
      Left = 730
      Top = 8
      Width = 80
      Height = 30
      Cursor = crHandPoint
      Hint = 'Imprimir  Calificaci'#243'n Externa del Asociado'
      Caption = 'Reporte'
      Color = clBtnFace
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
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bitImprimirClick
    end
  end
  object dbgFiltro: TwwDBGrid
    Left = 0
    Top = 132
    Width = 924
    Height = 386
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
    DataSource = DM1.dsAcuerdos
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
  end
  object ppdb1: TppDBPipeline
    UserName = 'db1'
    Left = 672
    Top = 464
  end
  object ppr1: TppReport
    AutoStop = False
    DataPipeline = ppdb1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\hnoriega\Desktop\rep1.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 712
    Top = 464
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'CHEQUES ANULADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 114565
        mmTop = 529
        mmWidth = 49742
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 255059
        mmTop = 529
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 255059
        mmTop = 3969
        mmWidth = 17399
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 255059
        mmTop = 7408
        mmWidth = 11176
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 529
        mmTop = 529
        mmWidth = 38693
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 26194
        mmTop = 16933
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 4498
        mmTop = 22754
        mmWidth = 10075
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 26194
        mmTop = 22754
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 51065
        mmTop = 22754
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 81756
        mmTop = 16933
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 70908
        mmTop = 22754
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 97367
        mmTop = 22754
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'UPRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 110861
        mmTop = 22490
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'UPAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 22490
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 138113
        mmTop = 16933
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135467
        mmTop = 22490
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Contabilidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 16933
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Oficio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 207698
        mmTop = 16933
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 153723
        mmTop = 22490
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177536
        mmTop = 22490
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 194734
        mmTop = 22490
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 220928
        mmTop = 22490
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Regularizado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 257176
        mmTop = 16933
        mmWidth = 16669
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 15610
        mmWidth = 274903
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 529
        mmTop = 15610
        mmWidth = 1058
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 274373
        mmTop = 15875
        mmWidth = 1058
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 148167
        mmTop = 15610
        mmWidth = 1058
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 190500
        mmTop = 15610
        mmWidth = 1058
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 234421
        mmTop = 15610
        mmWidth = 1058
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 109273
        mmTop = 15875
        mmWidth = 1058
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 62971
        mmTop = 15875
        mmWidth = 1058
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 21167
        mmWidth = 108744
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 148167
        mmTop = 21167
        mmWidth = 86519
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 133615
        mmTop = 15875
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = '(Expresados en Nuevos Soles)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 118004
        mmTop = 5821
        mmWidth = 41402
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 25665
        mmWidth = 274903
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label201'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 16933
        mmWidth = 7144
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 255853
        mmTop = 15875
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label101'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 4763
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'TITULO2'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 529
        mmTop = 11113
        mmWidth = 274903
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 16140
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMCHE'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 2381
        mmTop = 2646
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'FECCHE'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 2646
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MONCHE'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 41540
        mmTop = 2646
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'NUMOPE'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 65088
        mmTop = 2646
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'MONOPE'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 88371
        mmTop = 2646
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'UPROID'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 112184
        mmTop = 2646
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'UPAGOID'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 124090
        mmTop = 2646
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'ASOTIPID'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 137848
        mmTop = 2646
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'NUMCON'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 148961
        mmTop = 2646
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'NUMOFI'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 191823
        mmTop = 2646
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'ESTREG'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 264584
        mmTop = 2646
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'FECCON'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 2646
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'FECOFI'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 217753
        mmTop = 2646
        mmWidth = 15081
        BandType = 4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppdb2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8202
        mmWidth = 277000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppdb2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 10000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 10000
          PrinterSetup.mmMarginTop = 10000
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppdb2'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppLabel21: TppLabel
              UserName = 'Label21'
              Caption = 'Cheques Reprogramados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 70908
              mmTop = 1058
              mmWidth = 32385
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              Caption = 'N'#250'mero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 109538
              mmTop = 1058
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              Caption = 'Monto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 134938
              mmTop = 1058
              mmWidth = 7938
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              Caption = 'Nro.Operaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 149225
              mmTop = 1058
              mmWidth = 18256
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              Caption = 'Fecha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 172244
              mmTop = 1058
              mmWidth = 7938
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              Caption = 'Observaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 186532
              mmTop = 1058
              mmWidth = 15875
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 69850
              mmTop = 3175
              mmWidth = 143934
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'NUMCHE'
              DataPipeline = ppdb2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdb2'
              mmHeight = 3260
              mmLeft = 107421
              mmTop = 1058
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'FECCHE'
              DataPipeline = ppdb2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdb2'
              mmHeight = 3260
              mmLeft = 169598
              mmTop = 1058
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'NUMOPE'
              DataPipeline = ppdb2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdb2'
              mmHeight = 3175
              mmLeft = 149225
              mmTop = 1058
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'MONCHE'
              DataPipeline = ppdb2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdb2'
              mmHeight = 3175
              mmLeft = 127529
              mmTop = 1058
              mmWidth = 19050
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              AutoSize = True
              DataField = 'OBSERV'
              DataPipeline = ppdb2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdb2'
              mmHeight = 3260
              mmLeft = 187325
              mmTop = 1058
              mmWidth = 11938
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              DataField = 'CHEORD'
              DataPipeline = ppdb2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdb2'
              mmHeight = 3175
              mmLeft = 100277
              mmTop = 1058
              mmWidth = 2381
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'MONCHE'
              DataPipeline = ppdb2
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdb2'
              mmHeight = 3175
              mmLeft = 127529
              mmTop = 1588
              mmWidth = 19050
              BandType = 7
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 69850
              mmTop = 0
              mmWidth = 143934
              BandType = 7
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              Caption = 'Total Cheques reprogramados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 80433
              mmTop = 1588
              mmWidth = 41804
              BandType = 7
            end
          end
        end
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 529
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 17992
        mmLeft = 274373
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 0
        mmWidth = 274903
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'SALDO'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 235744
        mmTop = 2646
        mmWidth = 19315
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 274903
        mmTop = 7144
        mmWidth = 265
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine16: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 0
        mmWidth = 274903
        BandType = 7
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 529
        mmTop = 7408
        mmWidth = 274903
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 529
        mmTop = 0
        mmWidth = 1323
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpRight
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 274109
        mmTop = 0
        mmWidth = 1323
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'SALDO'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 235744
        mmTop = 3440
        mmWidth = 19315
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 17727
        mmTop = 3440
        mmWidth = 9790
        BandType = 7
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Cheques:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 3175
        mmTop = 3440
        mmWidth = 12107
        BandType = 7
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Saldo por Regularizar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 204788
        mmTop = 3440
        mmWidth = 28109
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'MONCHE'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 41540
        mmTop = 3440
        mmWidth = 19579
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 32544
        mmTop = 3440
        mmWidth = 6816
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppd1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppr1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 752
    Top = 464
  end
  object ppdb2: TppDBPipeline
    SkipWhenNoRecords = False
    UserName = 'db2'
    Left = 624
    Top = 464
  end
end
