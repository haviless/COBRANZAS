object FRepCtasNoCob: TFRepCtasNoCob
  Left = 382
  Top = 246
  Width = 572
  Height = 266
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Cuotas No Cobradas'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 197
    Color = 13165023
    TabOrder = 0
    object Bevel1: TBevel
      Left = 4
      Top = 4
      Width = 555
      Height = 186
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 144
      Height = 73
      Caption = 'Per'#237'odo '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 15
        Top = 19
        Width = 26
        Height = 15
        Caption = 'A'#241'o :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label3: TLabel
        Left = 83
        Top = 19
        Width = 27
        Height = 15
        Caption = 'Mes :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object speAno: TwwDBSpinEdit
        Left = 15
        Top = 38
        Width = 55
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 2020.000000000000000000
        MinValue = 1997.000000000000000000
        AutoFillDate = False
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        OnKeyPress = speAnoKeyPress
      end
      object speMes: TwwDBSpinEdit
        Left = 84
        Top = 38
        Width = 49
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        OnExit = speMesExit
        OnKeyPress = speAnoKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 159
      Top = 10
      Width = 396
      Height = 73
      Caption = 'Forma de Cobranza '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label11: TLabel
        Left = 8
        Top = 30
        Width = 63
        Height = 13
        Caption = 'Forma Pago :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dblcdFPago: TwwDBLookupComboDlg
        Left = 76
        Top = 27
        Width = 62
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Proceso'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'FORPAGOID'#9'3'#9'Id'#9'F'
          'FORPAGODES'#9'45'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsFormaPago
        LookupField = 'FORPAGOID'
        Color = 13165023
        Frame.Enabled = True
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
        OnExit = dblcdFPagoExit
      end
      object dbeFPago: TwwDBEdit
        Left = 144
        Top = 27
        Width = 240
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 83
      Width = 547
      Height = 102
      TabOrder = 2
      object TLabel
        Left = 7
        Top = 11
        Width = 100
        Height = 15
        Caption = 'Unidad de Proceso :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 276
        Top = 11
        Width = 84
        Height = 15
        Caption = 'Unidad de Pago :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 7
        Top = 55
        Width = 29
        Height = 15
        Caption = 'USE :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcdUPro: TwwDBLookupComboDlg
        Left = 7
        Top = 29
        Width = 50
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Proceso'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'UPROID'#9'3'#9'C'#243'digo'#9'F'
          'UPRONOM'#9'75'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUProExit
      end
      object dbeUPro: TwwDBEdit
        Left = 62
        Top = 29
        Width = 210
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      end
      object dblcdUPago: TwwDBLookupComboDlg
        Left = 276
        Top = 29
        Width = 50
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Pago'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'UPAGOID'#9'3'#9'C'#243'digo'#9'F'
          'UPAGONOM'#9'65'#9'Nombre Unidad de Pago'#9'F')
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUPagoExit
      end
      object dbeUPago: TwwDBEdit
        Left = 331
        Top = 29
        Width = 210
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      object dblcdUSE: TwwDBLookupComboDlg
        Left = 7
        Top = 75
        Width = 50
        Height = 19
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Use'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'USEID'#9'4'#9'Use'#9'F'
          'USENOM'#9'75'#9'Nombre'#9'F')
        LookupTable = DM1.cdsUSES
        LookupField = 'USEID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
        OnExit = dblcdUSEExit
      end
      object dbeUSE: TwwDBEdit
        Left = 63
        Top = 75
        Width = 233
        Height = 19
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object bbtnImpDetallado: TfcShapeBtn
    Left = 463
    Top = 207
    Width = 36
    Height = 32
    Hint = 'Imprimir Informe Detallado'
    Color = 13165023
    DitherColor = clWhite
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsRaised
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 2
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnImpDetalladoClick
  end
  object bbtnCancelar: TfcShapeBtn
    Left = 507
    Top = 207
    Width = 36
    Height = 32
    Hint = 'Cancelar'
    Cancel = True
    Color = 13165023
    DitherColor = clWhite
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
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 3
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnCancelarClick
  end
  object bbtnImpResumen: TfcShapeBtn
    Left = 420
    Top = 207
    Width = 36
    Height = 32
    Hint = 'Imprimir Informe Resumido'
    Color = 13165023
    DitherColor = clWhite
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsRaised
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 1
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnImpResumenClick
  end
  object ppdbRepRes: TppDBPipeline
    DataSource = DM1.dsQry2
    UserName = 'dbRepRes'
    Left = 8
    Top = 209
  end
  object ppRepRes: TppReport
    AutoStop = False
    DataPipeline = ppdbRepRes
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepResCtasNoCob.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepResPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 39
    Top = 208
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRepRes'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 4498
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 4498
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 9260
        mmWidth = 7673
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
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 9260
        mmWidth = 17463
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
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'RESUMEN DE DESCUENTOS EFECTUADOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 62971
        mmTop = 19579
        mmWidth = 56092
        BandType = 0
      end
      object pplblUSE: TppLabel
        UserName = 'lblUSE'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 75671
        mmTop = 25135
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 161925
        mmTop = 4498
        mmWidth = 10054
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CREMTO'
        DataPipeline = ppdbRepRes
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepRes'
        mmHeight = 3704
        mmLeft = 62971
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CRECUOTA'
        DataPipeline = ppdbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepRes'
        mmHeight = 3704
        mmLeft = 99484
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppdbUSE: TppDBText
        UserName = 'dbUSE'
        DataField = 'USEID'
        DataPipeline = ppdbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepRes'
        mmHeight = 3704
        mmLeft = 41540
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 23019
        mmTop = 2646
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CREMTO'
        DataPipeline = ppdbRepRes
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepRes'
        mmHeight = 3704
        mmLeft = 62971
        mmTop = 2646
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'UPAGOID'
        DataPipeline = ppdbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbRepRes'
        mmHeight = 3704
        mmLeft = 38100
        mmTop = 2646
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CRECUOTA'
        DataPipeline = ppdbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepRes'
        mmHeight = 3704
        mmLeft = 99484
        mmTop = 2646
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppdbUPro'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand3BeforePrint
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppdbUPro: TppDBText
          UserName = 'dbUPro'
          AutoSize = True
          DataField = 'UPROID'
          DataPipeline = ppdbRepRes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepRes'
          mmHeight = 3704
          mmLeft = 35454
          mmTop = 265
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Unidad de Proceso :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 5556
          mmTop = 265
          mmWidth = 28840
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label3'
          Caption = 'Label3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 43656
          mmTop = 265
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'ppdbUPago'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand4: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand4BeforePrint
        mmBottomOffset = 0
        mmHeight = 11642
        mmPrintPosition = 0
        object ppdbUPago: TppDBText
          UserName = 'dbUPago'
          AutoSize = True
          DataField = 'UPAGOID'
          DataPipeline = ppdbRepRes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepRes'
          mmHeight = 3704
          mmLeft = 35454
          mmTop = 0
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label301'
          Caption = 'Unidad de Pago :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 5556
          mmTop = 0
          mmWidth = 23813
          BandType = 3
          GroupNo = 1
        end
        object ppLabel3: TppLabel
          UserName = 'Label501'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 42863
          mmTop = 6350
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'MONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 66146
          mmTop = 6350
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'NRO. CUOTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 98425
          mmTop = 6350
          mmWidth = 19315
          BandType = 3
          GroupNo = 1
        end
        object ppLine1: TppLine
          UserName = 'Line101'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 4498
          mmTop = 10583
          mmWidth = 190500
          BandType = 3
          GroupNo = 1
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 4498
          mmTop = 11113
          mmWidth = 190500
          BandType = 3
          GroupNo = 1
        end
        object ppLabel46: TppLabel
          UserName = 'Label102'
          Caption = 'Label10'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 43656
          mmTop = 0
          mmWidth = 10054
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 12700
        mmPrintPosition = 0
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'CREMTO'
          DataPipeline = ppdbRepRes
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepRes'
          mmHeight = 3704
          mmLeft = 62971
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          DataField = 'CRECUOTA'
          DataPipeline = ppdbRepRes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepRes'
          mmHeight = 3704
          mmLeft = 99484
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppLabel31: TppLabel
          UserName = 'Label2'
          Caption = 'Total :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 17727
          mmTop = 794
          mmWidth = 8731
          BandType = 5
          GroupNo = 1
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 4498
          mmTop = 5556
          mmWidth = 190500
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'ppdbUSE'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppdbRepDet: TppDBPipeline
    DataSource = DM1.dsQry3
    UserName = 'dbRepDet'
    Left = 173
    Top = 209
    object ppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'ASOCODAUX'
      FieldName = 'ASOCODAUX'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'ASOAPEPAT'
      FieldName = 'ASOAPEPAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'ASOAPEMAT'
      FieldName = 'ASOAPEMAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'ASONOMBRES'
      FieldName = 'ASONOMBRES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'UPAGOID'
      FieldName = 'UPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'ASORESNOM'
      FieldName = 'ASORESNOM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'ASOFRESNOM'
      FieldName = 'ASOFRESNOM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'RESID'
      FieldName = 'RESID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'REGPENID'
      FieldName = 'REGPENID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'ASOSITID'
      FieldName = 'ASOSITID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppField17: TppField
      FieldAlias = 'ASOFACT'
      FieldName = 'ASOFACT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField18: TppField
      FieldAlias = 'ASOTIPID'
      FieldName = 'ASOTIPID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField19: TppField
      FieldAlias = 'VIAID'
      FieldName = 'VIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object ppField20: TppField
      FieldAlias = 'VIANOMBRE'
      FieldName = 'VIANOMBRE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object ppField21: TppField
      FieldAlias = 'ASONUMDIR'
      FieldName = 'ASONUMDIR'
      FieldLength = 5
      DisplayWidth = 5
      Position = 20
    end
    object ppField22: TppField
      FieldAlias = 'ASOFDPTO'
      FieldName = 'ASOFDPTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppField23: TppField
      FieldAlias = 'ASODPTO'
      FieldName = 'ASODPTO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 22
    end
    object ppField24: TppField
      FieldAlias = 'ZONAID'
      FieldName = 'ZONAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 23
    end
    object ppField25: TppField
      FieldAlias = 'ZONANOMB'
      FieldName = 'ZONANOMB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object ppField26: TppField
      FieldAlias = 'UBIGEOID'
      FieldName = 'UBIGEOID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 25
    end
    object ppField27: TppField
      FieldAlias = 'DPTOID'
      FieldName = 'DPTOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 26
    end
    object ppField28: TppField
      FieldAlias = 'PAISID'
      FieldName = 'PAISID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 27
    end
    object ppField29: TppField
      FieldAlias = 'REFDOM'
      FieldName = 'REFDOM'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppField30: TppField
      FieldAlias = 'ASOFECNAC'
      FieldName = 'ASOFECNAC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object ppField31: TppField
      FieldAlias = 'ASOTELF1'
      FieldName = 'ASOTELF1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppField32: TppField
      FieldAlias = 'ASOTELF2'
      FieldName = 'ASOTELF2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppField33: TppField
      FieldAlias = 'TIPDOCCOD'
      FieldName = 'TIPDOCCOD'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppField34: TppField
      FieldAlias = 'ASODOCNUM'
      FieldName = 'ASODOCNUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppField35: TppField
      FieldAlias = 'ASOLIBMIL'
      FieldName = 'ASOLIBMIL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 34
    end
    object ppField36: TppField
      FieldAlias = 'ASORUC'
      FieldName = 'ASORUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 35
    end
    object ppField37: TppField
      FieldAlias = 'ESTCIVID'
      FieldName = 'ESTCIVID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppField38: TppField
      FieldAlias = 'ASOSEXO'
      FieldName = 'ASOSEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 37
    end
    object ppField39: TppField
      FieldAlias = 'ASOEMAIL'
      FieldName = 'ASOEMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 38
    end
    object ppField40: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 39
    end
    object ppField41: TppField
      FieldAlias = 'ASONCTA'
      FieldName = 'ASONCTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppField42: TppField
      FieldAlias = 'SITCTA'
      FieldName = 'SITCTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppField43: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppField44: TppField
      FieldAlias = 'GRAACID'
      FieldName = 'GRAACID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 43
    end
    object ppField45: TppField
      FieldAlias = 'GRAINSID'
      FieldName = 'GRAINSID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 44
    end
    object ppField46: TppField
      FieldAlias = 'PROFID'
      FieldName = 'PROFID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 45
    end
    object ppField47: TppField
      FieldAlias = 'ASOFMOV'
      FieldName = 'ASOFMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object ppField48: TppField
      FieldAlias = 'ASOFLUGING'
      FieldName = 'ASOFLUGING'
      FieldLength = 1
      DisplayWidth = 1
      Position = 47
    end
    object ppField49: TppField
      FieldAlias = 'ASODIR'
      FieldName = 'ASODIR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 48
    end
    object ppField50: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 49
    end
    object ppField51: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 50
    end
    object ppField52: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object ppField53: TppField
      FieldAlias = 'ASOLUGEST'
      FieldName = 'ASOLUGEST'
      FieldLength = 90
      DisplayWidth = 90
      Position = 52
    end
    object ppField54: TppField
      FieldAlias = 'FECTEREST'
      FieldName = 'FECTEREST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object ppField55: TppField
      FieldAlias = 'TIEMPOEST'
      FieldName = 'TIEMPOEST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object ppField56: TppField
      FieldAlias = 'ASOLNACID'
      FieldName = 'ASOLNACID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 55
    end
    object ppField57: TppField
      FieldAlias = 'ASORESCESE'
      FieldName = 'ASORESCESE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 56
    end
    object ppField58: TppField
      FieldAlias = 'ASOFRESCESE'
      FieldName = 'ASOFRESCESE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 57
    end
    object ppField59: TppField
      FieldAlias = 'FGARANTE'
      FieldName = 'FGARANTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 58
    end
    object ppField60: TppField
      FieldAlias = 'ZIPID'
      FieldName = 'ZIPID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 59
    end
    object ppField61: TppField
      FieldAlias = 'CIUDID'
      FieldName = 'CIUDID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 60
    end
    object ppField62: TppField
      FieldAlias = 'ARCHIVOFTP'
      FieldName = 'ARCHIVOFTP'
      FieldLength = 12
      DisplayWidth = 12
      Position = 61
    end
    object ppField63: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object ppField64: TppField
      FieldAlias = 'FLAGVAR'
      FieldName = 'FLAGVAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 63
    end
    object ppField65: TppField
      FieldAlias = 'ASOAPNCRE'
      FieldName = 'ASOAPNCRE'
      FieldLength = 90
      DisplayWidth = 90
      Position = 64
    end
    object ppField66: TppField
      FieldAlias = 'FLGFSOL'
      FieldName = 'FLGFSOL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
  end
  object ppRepDet: TppReport
    AutoStop = False
    DataPipeline = ppdbRepDet
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'RepDet'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepDetCtasNoCob.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepDetPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 205
    Top = 209
    Version = '7.02'
    mmColumnWidth = 203200
    DataPipelineName = 'ppdbRepDet'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34396
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'lblUSE1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 75406
        mmTop = 25665
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 4498
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 4498
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 9260
        mmWidth = 7673
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 9260
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 4498
        mmWidth = 9790
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'lblTitulo1'
        Caption = 'DETALLE DE CUOTAS NO COBRADAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 62971
        mmTop = 19579
        mmWidth = 51065
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOID'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 29104
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 52917
        mmTop = 0
        mmWidth = 44715
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTO'
        DataPipeline = ppdbRepDet
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CRECUOTA'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 167482
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'CREMTO'
        DataPipeline = ppdbRepDet
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'TOTALES :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 4233
        mmTop = 1588
        mmWidth = 14817
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CRECUOTA'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 167482
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 4763
        mmTop = 529
        mmWidth = 190500
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'ASOID'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 4763
        mmTop = 6085
        mmWidth = 190500
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppdbUProDet'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppdbUProDet: TppDBText
          UserName = 'dbUProDet'
          AutoSize = True
          DataField = 'UPROID'
          DataPipeline = ppdbRepDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 35983
          mmTop = 265
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Unidad de Proceso :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 4233
          mmTop = 265
          mmWidth = 28840
          BandType = 3
          GroupNo = 0
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          Caption = 'Label59'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 44715
          mmTop = 265
          mmWidth = 10054
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
    object ppGroup6: TppGroup
      BreakName = 'ppdbUPagoDet'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'ppdbUSEDet'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand7: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand7BeforePrint
        mmBottomOffset = 0
        mmHeight = 22754
        mmPrintPosition = 0
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 4233
          mmTop = 5027
          mmWidth = 5292
          BandType = 3
          GroupNo = 2
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'MONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 137054
          mmTop = 11113
          mmWidth = 10583
          BandType = 3
          GroupNo = 2
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'NRO. CUOTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 169334
          mmTop = 11113
          mmWidth = 19315
          BandType = 3
          GroupNo = 2
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'COD. ASOCIADO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 25929
          mmTop = 17463
          mmWidth = 22754
          BandType = 3
          GroupNo = 2
        end
        object ppLabel21: TppLabel
          UserName = 'Label202'
          Caption = 'APELLIDOS Y NOMBRES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 66940
          mmTop = 17463
          mmWidth = 33073
          BandType = 3
          GroupNo = 2
        end
        object ppdbUSEDet: TppDBText
          UserName = 'dbUSEDet'
          AutoSize = True
          DataField = 'USEID'
          DataPipeline = ppdbRepDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 35983
          mmTop = 5027
          mmWidth = 3175
          BandType = 3
          GroupNo = 2
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 4498
          mmTop = 16404
          mmWidth = 190500
          BandType = 3
          GroupNo = 2
        end
        object ppLabel48: TppLabel
          UserName = 'Label48'
          Caption = 'Label48'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 44715
          mmTop = 5027
          mmWidth = 10054
          BandType = 3
          GroupNo = 2
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 3175
          mmTop = 21960
          mmWidth = 190500
          BandType = 3
          GroupNo = 2
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Unidad de Pago      :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 4233
          mmTop = 529
          mmWidth = 27781
          BandType = 3
          GroupNo = 2
        end
        object ppdbUPagoDet: TppDBText
          UserName = 'dbUPagoDet'
          AutoSize = True
          DataField = 'UPAGOID'
          DataPipeline = ppdbRepDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 35983
          mmTop = 529
          mmWidth = 3175
          BandType = 3
          GroupNo = 2
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Label49'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 44715
          mmTop = 529
          mmWidth = 10054
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppLabel47: TppLabel
          UserName = 'Label47'
          Caption = 'Total :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 11377
          mmTop = 794
          mmWidth = 8731
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREMTO'
          DataPipeline = ppdbRepDet
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 134144
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CRECUOTA'
          DataPipeline = ppdbRepDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 167482
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'ASOID'
          DataPipeline = ppdbRepDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DBCalcType = dcCount
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 29104
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
      end
    end
  end
  object ppRepResTele: TppReport
    AutoStop = False
    DataPipeline = ppdbRepRes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'RepResTele'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepResCtasNoCobTel.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepResTelePreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 71
    Top = 208
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRepRes'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41804
      mmPrintPosition = 0
      object ppLabel23: TppLabel
        UserName = 'lblUSE2'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 75406
        mmTop = 25665
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 4498
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 4498
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 9260
        mmWidth = 7673
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 9260
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 4498
        mmWidth = 9790
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'lblTitulo2'
        Caption = 'RESUMEN DE DESCUENTOS EFECTUADOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 62971
        mmTop = 19579
        mmWidth = 56092
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppdbUSEResTele: TppDBText
        UserName = 'dbUSEResTele'
        AutoSize = True
        DataField = 'USEID'
        DataPipeline = ppdbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepRes'
        mmHeight = 3704
        mmLeft = 41804
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CREMTO'
        DataPipeline = ppdbRepRes
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepRes'
        mmHeight = 3704
        mmLeft = 62971
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CRECUOTA'
        DataPipeline = ppdbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepRes'
        mmHeight = 3704
        mmLeft = 99484
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
    end
    object ppGroup8: TppGroup
      BreakName = 'ppdbUProResTele'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand8: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand8BeforePrint
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'Unidad de Proceso :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 5556
          mmTop = 265
          mmWidth = 28840
          BandType = 3
          GroupNo = 0
        end
        object ppdbUProResTele: TppDBText
          UserName = 'dbUProResTele'
          AutoSize = True
          DataField = 'UPROID'
          DataPipeline = ppdbRepRes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepRes'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 265
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          Caption = 'Label53'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 46038
          mmTop = 265
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'ppdbUPagoResTele'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand9: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand9BeforePrint
        mmBottomOffset = 0
        mmHeight = 11642
        mmPrintPosition = 0
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = 'Unidad de Pago :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 5292
          mmTop = 0
          mmWidth = 23813
          BandType = 3
          GroupNo = 1
        end
        object ppdbUPagoResTele: TppDBText
          UserName = 'dbUPagoResTele'
          AutoSize = True
          DataField = 'UPAGOID'
          DataPipeline = ppdbRepRes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepRes'
          mmHeight = 3704
          mmLeft = 36777
          mmTop = 0
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 42863
          mmTop = 6350
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          Caption = 'MONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 66146
          mmTop = 6350
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          Caption = 'NRO. CUOTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 98425
          mmTop = 6350
          mmWidth = 19315
          BandType = 3
          GroupNo = 1
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 4498
          mmTop = 10583
          mmWidth = 190500
          BandType = 3
          GroupNo = 1
        end
        object ppLabel54: TppLabel
          UserName = 'Label54'
          Caption = 'Label54'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 46038
          mmTop = 0
          mmWidth = 10054
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 17727
          mmTop = 529
          mmWidth = 9790
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          DataField = 'CREMTO'
          DataPipeline = ppdbRepRes
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepRes'
          mmHeight = 3704
          mmLeft = 62971
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'CRECUOTA'
          DataPipeline = ppdbRepRes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepRes'
          mmHeight = 3704
          mmLeft = 99484
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'USEID'
          DataPipeline = ppdbRepRes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          Transparent = True
          Visible = False
          DBCalcType = dcCount
          DataPipelineName = 'ppdbRepRes'
          mmHeight = 3704
          mmLeft = 36248
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'ppdbUSEResTele'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand10: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppRepDetTele: TppReport
    AutoStop = False
    DataPipeline = ppdbRepDet
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'RepDetTele'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepDetCtasNoCobTel.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepDetTelePreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 237
    Top = 209
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRepDet'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33602
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 75406
        mmTop = 25665
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 4498
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 4498
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 9260
        mmWidth = 7673
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 9260
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 4498
        mmWidth = 9790
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'DETALLE DE CUOTAS NO COBRADAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 62971
        mmTop = 19579
        mmWidth = 51065
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'ASOID'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 60590
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CREMTO'
        DataPipeline = ppdbRepDet
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'CRECUOTA'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'TOTALES :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 4233
        mmTop = 1588
        mmWidth = 14817
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 4763
        mmTop = 529
        mmWidth = 190500
        BandType = 7
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 4763
        mmTop = 6085
        mmWidth = 190500
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'ASOID'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 24871
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        AutoSize = True
        DataField = 'CREMTO'
        DataPipeline = ppdbRepDet
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 128852
        mmTop = 1588
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'CRECUOTA'
        DataPipeline = ppdbRepDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDet'
        mmHeight = 3704
        mmLeft = 166688
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'ppdbUSEDetTel'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand13: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand13BeforePrint
        mmBottomOffset = 0
        mmHeight = 21431
        mmPrintPosition = 0
        object ppLabel33: TppLabel
          UserName = 'Label33'
          Caption = 'Unidad de Pago :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 4498
          mmTop = 5027
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          Caption = 'USE :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 4498
          mmTop = 9790
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppdbUProDetTel: TppDBText
          UserName = 'dbUProDetTel'
          AutoSize = True
          DataField = 'UPROID'
          DataPipeline = ppdbRepDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 34660
          mmTop = 529
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label101'
          Caption = 'Unidad de Proceso :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 4498
          mmTop = 529
          mmWidth = 28840
          BandType = 3
          GroupNo = 0
        end
        object ppdbUPagoDetTel: TppDBText
          UserName = 'dbUPagoDetTel'
          AutoSize = True
          DataField = 'UPAGOID'
          DataPipeline = ppdbRepDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 34660
          mmTop = 5027
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppdbUSEDetTel: TppDBText
          UserName = 'dbUSEDetTel'
          AutoSize = True
          DataField = 'USEID'
          DataPipeline = ppdbRepDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 34660
          mmTop = 9790
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          Caption = 'MONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 136790
          mmTop = 16140
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          Caption = 'NRO. CUOTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 169069
          mmTop = 16140
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 3969
          mmTop = 20373
          mmWidth = 190500
          BandType = 3
          GroupNo = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label201'
          Caption = 'COD. ASOCIADO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 25665
          mmTop = 16140
          mmWidth = 22754
          BandType = 3
          GroupNo = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'APELLIDOS Y NOMBRES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 66675
          mmTop = 16140
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 4233
          mmTop = 15081
          mmWidth = 190500
          BandType = 3
          GroupNo = 0
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          Caption = 'Label55'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 44450
          mmTop = 5027
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          Caption = 'Label56'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 44450
          mmTop = 9790
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          Caption = 'Label57'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 44450
          mmTop = 529
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup14: TppGroup
      BreakName = 'ppdbUPagoDetTel'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group14'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand14: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand14: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup15: TppGroup
      BreakName = 'ppdbUProDetTel'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group15'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand15: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand15: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Total :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 8996
          mmTop = 1058
          mmWidth = 8731
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'ASOID'
          DataPipeline = ppdbRepDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DBCalcType = dcCount
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 23813
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          DataField = 'CREMTO'
          DataPipeline = ppdbRepDet
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 134144
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          DataField = 'CRECUOTA'
          DataPipeline = ppdbRepDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepDet'
          mmHeight = 3704
          mmLeft = 166688
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
      end
    end
  end
end
