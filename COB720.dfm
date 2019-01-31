object FToolCobUse: TFToolCobUse
  Left = 98
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas por Use'
  ClientHeight = 138
  ClientWidth = 892
  Color = 10207162
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTool: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 129
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 2
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object sbtnAceptar: TfcShapeBtn
      Left = 507
      Top = 85
      Width = 109
      Height = 30
      Hint = 'Guardar Datos del Asociado'
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
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 6
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = sbtnAceptarClick
    end
    object bbtnImprime: TfcShapeBtn
      Left = 737
      Top = 84
      Width = 36
      Height = 30
      Hint = 'Imprimir Listado'
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
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 7
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnImprimeClick
    end
    object gbFechas: TGroupBox
      Left = 639
      Top = 13
      Width = 210
      Height = 64
      Caption = 'Periodo'
      TabOrder = 4
      object Label3: TLabel
        Left = 9
        Top = 19
        Width = 31
        Height = 15
        Caption = 'Desde'
      end
      object Label4: TLabel
        Left = 113
        Top = 19
        Width = 29
        Height = 15
        Caption = 'Hasta'
      end
      object dtpDesde: TDateTimePicker
        Left = 9
        Top = 34
        Width = 94
        Height = 23
        Date = 36892.719144328700000000
        Time = 36892.719144328700000000
        TabOrder = 0
      end
      object dtpHasta: TDateTimePicker
        Left = 111
        Top = 34
        Width = 93
        Height = 23
        Date = 36943.719144328700000000
        Time = 36943.719144328700000000
        TabOrder = 1
      end
    end
    object rbTipoPer: TRadioGroup
      Left = 487
      Top = 13
      Width = 133
      Height = 64
      Caption = 'Tipo'
      ItemIndex = 0
      Items.Strings = (
        'Fecha'
        'Periodo')
      TabOrder = 3
      OnClick = rbTipoPerClick
    end
    object gbPeriodo: TGroupBox
      Left = 641
      Top = 13
      Width = 210
      Height = 64
      Caption = 'Periodo'
      TabOrder = 5
      Visible = False
      object lblAno: TLabel
        Left = 9
        Top = 19
        Width = 31
        Height = 15
        Caption = 'Desde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 114
        Top = 21
        Width = 29
        Height = 15
        Caption = 'Hasta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 105
        Top = 7
        Width = 3
        Height = 55
      end
      object sbAnoD: TwwDBSpinEdit
        Left = 9
        Top = 37
        Width = 49
        Height = 21
        TabStop = False
        Increment = 1.000000000000000000
        MaxValue = 3000.000000000000000000
        MinValue = 1900.000000000000000000
        Value = 2002.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 4
        TabOrder = 0
        UnboundDataType = wwDefault
        OnExit = sbAnoDExit
      end
      object sbMesD: TwwDBSpinEdit
        Left = 66
        Top = 37
        Width = 35
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 12.000000000000000000
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 2
        TabOrder = 1
        UnboundDataType = wwDefault
        OnExit = sbMesDExit
      end
      object sbAnoH: TwwDBSpinEdit
        Left = 114
        Top = 37
        Width = 49
        Height = 21
        TabStop = False
        Increment = 1.000000000000000000
        MaxValue = 3000.000000000000000000
        MinValue = 1900.000000000000000000
        Value = 2002.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 4
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object sbMesH: TwwDBSpinEdit
        Left = 169
        Top = 37
        Width = 35
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 12.000000000000000000
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 2
        TabOrder = 3
        UnboundDataType = wwDefault
        OnExit = sbMesHExit
      end
    end
    object rbTipoSQL: TRadioGroup
      Left = 15
      Top = 22
      Width = 122
      Height = 84
      Caption = 'Tipo SQL'
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'U. Proceso'
        'Representante')
      TabOrder = 0
      OnClick = rbTipoSQLClick
    end
    object pnlUProc: TPanel
      Left = 143
      Top = 10
      Width = 334
      Height = 108
      BevelInner = bvLowered
      Color = 13165023
      TabOrder = 1
      object lblUnidadProceso: TLabel
        Left = 7
        Top = 6
        Width = 51
        Height = 30
        Caption = 'Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object TLabel
        Left = 7
        Top = 40
        Width = 27
        Height = 30
        Caption = 'Unid Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblUse: TLabel
        Left = 7
        Top = 76
        Width = 23
        Height = 15
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object edtUProceso: TEdit
        Left = 126
        Top = 7
        Width = 200
        Height = 23
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtUPago: TEdit
        Left = 126
        Top = 41
        Width = 200
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
      object dblcdUse: TwwDBLookupComboDlg
        Left = 63
        Top = 76
        Width = 55
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Uses'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'USEID'#9'3'#9'Id'#9'F'
          'USENOM'#9'65'#9'USE'#9'F')
        LookupTable = DM1.cdsUSES
        LookupField = 'USEID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcdUseExit
      end
      object edtUse: TEdit
        Left = 126
        Top = 77
        Width = 200
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
        TabOrder = 5
      end
      object dblcdUPago: TwwDBLookupComboDlg
        Left = 63
        Top = 40
        Width = 55
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Pago'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'UPAGOID'#9'3'#9'ID'#9'F'
          'UPAGONOM'#9'65'#9'UNIDAD DE PAGO'#9'F')
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        Color = 13165023
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
        Left = 64
        Top = 8
        Width = 55
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
          'UPROID'#9'3'#9'Id UProceso'#9'F'
          'UPRONOM'#9'35'#9'U Proceso'#9'F')
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Color = 13165023
        Frame.Enabled = True
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUProcesoExit
      end
    end
    object pnlRepr: TPanel
      Left = 143
      Top = 10
      Width = 334
      Height = 108
      BevelInner = bvLowered
      Color = 13165023
      TabOrder = 2
      Visible = False
      object lblRepre: TLabel
        Left = 9
        Top = 10
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
        Left = 12
        Top = 30
        Width = 73
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
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdRepresentanteExit
      end
      object edtRepresentante: TwwDBEdit
        Left = 10
        Top = 62
        Width = 313
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRAPENOM'
        DataSource = DM1.dsRegCob
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object ppData: TppDBPipeline
    UserName = 'Data'
    Left = 24
    Top = 120
  end
  object ppCobUse: TppReport
    AutoStop = False
    DataPipeline = ppData
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepCobxUse.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppCobUsePreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 144
    Top = 120
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppData'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 45508
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'U. Proc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 16404
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'UPROID'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 20638
        mmTop = 16404
        mmWidth = 8202
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'UPROID'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 20638
        mmTop = 22225
        mmWidth = 8467
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'USEID'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 20638
        mmTop = 28046
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'U. Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 22225
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'USE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 28046
        mmWidth = 6615
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 43921
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 39158
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 42069
        mmTop = 38894
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Archivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 116681
        mmTop = 39423
        mmWidth = 10319
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 2381
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 7144
        mmWidth = 19844
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 12171
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 2381
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 7144
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 12171
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Reporte de Cobranzas por USE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 65881
        mmTop = 6350
        mmWidth = 71173
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 2117
        mmWidth = 37835
        BandType = 0
      end
      object pplblPeriodo: TppLabel
        UserName = 'lblPeriodo'
        Caption = 'Periodo de .. Al..'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 14552
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Aportes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 143934
        mmTop = 39423
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Cuotas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 163248
        mmTop = 39423
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 184944
        mmTop = 39423
        mmWidth = 7144
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOID'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 23283
        mmTop = 0
        mmWidth = 73554
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ARCHIVO'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 100806
        mmTop = 0
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'TRANSAPO'
        DataPipeline = ppData
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 140494
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        BlankWhenZero = True
        DataField = 'TRANSCUO'
        DataPipeline = ppData
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 160867
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'TRANSMTO'
        DataPipeline = ppData
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 181240
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 0
        mmWidth = 202407
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 27252
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Total Registro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 1323
        mmWidth = 20373
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'TRANSAPO'
        DataPipeline = ppData
        DisplayFormat = '#,0.0;-#,0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 140494
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'TRANSCUO'
        DataPipeline = ppData
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 160867
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'TRANSMTO'
        DataPipeline = ppData
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 181240
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Totales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 113242
        mmTop = 1323
        mmWidth = 10848
        BandType = 7
      end
    end
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
    Left = 88
    Top = 120
  end
end
