object FToolRefina: TFToolRefina
  Left = 121
  Top = 205
  AutoScroll = False
  AutoSize = True
  Caption = 'Refinanciaci'#243'n'
  ClientHeight = 92
  ClientWidth = 804
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRefinanciacion: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 92
    Align = alTop
    AutoSize = True
    Color = 13165023
    TabOrder = 0
    DesignSize = (
      804
      92)
    object lblAlmes: TLabel
      Left = 5
      Top = 53
      Width = 56
      Height = 15
      Caption = 'Al Mes de :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 7
      Top = 1
      Width = 95
      Height = 15
      Caption = 'Oficina de Origen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 211
      Top = 1
      Width = 80
      Height = 15
      Caption = 'Fch de Refinan.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblSegui: TLabel
      Left = 406
      Top = 52
      Width = 64
      Height = 15
      Caption = 'Seguimiento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object rgTipo: TRadioGroup
      Left = 470
      Top = 12
      Width = 157
      Height = 36
      Caption = 'Tipo de Refinanciamiento'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Items.Strings = (
        'Masivo'
        'Individual')
      ParentFont = False
      TabOrder = 4
      OnClick = rgTipoClick
    end
    object seAno: TSpinEdit
      Left = 5
      Top = 69
      Width = 49
      Height = 22
      MaxLength = 4
      MaxValue = 2050
      MinValue = 2000
      TabOrder = 6
      Value = 2000
    end
    object seMes: TSpinEdit
      Left = 51
      Top = 69
      Width = 36
      Height = 22
      MaxLength = 2
      MaxValue = 12
      MinValue = 1
      TabOrder = 7
      Value = 12
    end
    object dbeDescOfDes: TwwDBEdit
      Left = 67
      Top = 29
      Width = 134
      Height = 19
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
    object dbdtpFechaSol: TwwDBDateTimePicker
      Left = 207
      Top = 27
      Width = 88
      Height = 21
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -8
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = 13165023
      Epoch = 1950
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 2
      OnExit = dbdtpFechaSolExit
    end
    object dblcdOfDes: TwwDBLookupComboDlg
      Left = 6
      Top = 29
      Width = 56
      Height = 19
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'OFDESID'#9'3'#9'CODIGO'#9'F'
        'OFDESNOM'#9'20'#9'NOMBRE'#9'F'
        'OFDESABR'#9'15'#9'ABREV'#9'F')
      LookupTable = DM1.cdsOfDes
      LookupField = 'OFDESID'
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      Color = 13165023
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = True
      UseTFields = False
      ShowMatchText = True
      OnExit = dblcdOfDesExit
    end
    object rgPago: TRadioGroup
      Left = 300
      Top = 12
      Width = 165
      Height = 37
      Caption = 'Para pagos por'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Items.Strings = (
        'Planilla'
        'TeleAhorro')
      ParentFont = False
      TabOrder = 3
      OnClick = rgTipoClick
    end
    object z2bbtnVencidas: TfcShapeBtn
      Left = 693
      Top = 56
      Width = 34
      Height = 31
      Hint = 'Cr'#233'ditos por Refinanciar'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 10
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnVencidasClick
    end
    object z2bbtnRefinan: TfcShapeBtn
      Left = 729
      Top = 56
      Width = 34
      Height = 31
      Hint = 'Cr'#233'ditos Refinanciados'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
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
      OnClick = z2bbtnRefinanClick
    end
    object z2bbtnSinRefinan: TfcShapeBtn
      Left = 764
      Top = 56
      Width = 34
      Height = 31
      Hint = 'Cr'#233'ditos No Refinanciados'
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
      TabOrder = 12
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnSinRefinanClick
    end
    object z2bbtnBuscar: TfcShapeBtn
      Left = 656
      Top = 56
      Width = 34
      Height = 31
      Hint = 'Filtra'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
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
      OnClick = z2bbtnBuscarClick
    end
    object edtSegui: TEdit
      Left = 406
      Top = 68
      Width = 208
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnExit = edtSeguiExit
    end
    object z2bbtnSegui: TfcShapeBtn
      Left = 619
      Top = 56
      Width = 34
      Height = 31
      Hint = 'Seguimiento'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
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
      OnClick = z2bbtnSeguiClick
    end
    object rgMes: TRadioGroup
      Left = 630
      Top = 12
      Width = 145
      Height = 36
      Caption = 'Mes 1ra. Cuota'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Items.Strings = (
        'Actual'
        'Sgte.')
      ParentFont = False
      TabOrder = 5
    end
    object pnlBuscaAso: TPanel
      Left = 93
      Top = 46
      Width = 259
      Height = 44
      Anchors = [akLeft, akBottom]
      BevelOuter = bvNone
      Color = 13165023
      TabOrder = 8
      DesignSize = (
        259
        44)
      object lblAso: TLabel
        Left = 0
        Top = 0
        Width = 114
        Height = 15
        Caption = 'Nombre del Asociado :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object edtAsociado: TEdit
        Left = 0
        Top = 16
        Width = 208
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnExit = edtAsociadoExit
      end
      object z2bbtnAcepta: TfcShapeBtn
        Left = 221
        Top = 11
        Width = 34
        Height = 31
        Hint = 'Proceso de Refinanciaci'#243'n'
        Anchors = [akLeft, akBottom]
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
        Layout = blGlyphTop
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
        OnClick = z2bbtnAceptaClick
      end
    end
    object rgCambiar: TRadioGroup
      Left = 421
      Top = 52
      Width = 188
      Height = 37
      Caption = 'Cambiar F. de Pago'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Items.Strings = (
        'A Planilla'
        'A TeleAhorro')
      ParentFont = False
      TabOrder = 15
      OnClick = rgCambiarClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 776
  end
  object pprptARefinan: TppReport
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
    Template.FileName = 'C:\SOLDB\Solformatos\Cob\Dema\AntesRefinan.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 432
    Top = 48
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'CIADES'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 0
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'EQUIPO'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 4763
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'SISTEMA'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 9260
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 4763
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 9260
        mmWidth = 8467
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
        mmLeft = 176213
        mmTop = 0
        mmWidth = 14288
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
        mmLeft = 176213
        mmTop = 4763
        mmWidth = 17198
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 9260
        mmWidth = 1588
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'TITULO'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 22490
        mmTop = 15610
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'DEPA'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 65088
        mmTop = 20902
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      DataPipeline = ppdbepARefinan
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'USEID'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 265
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 8731
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 29104
        mmTop = 265
        mmWidth = 63500
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'TIPO'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 94456
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'CREDID'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 102394
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        DataField = 'CREFOTORG'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 129382
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'TMONABR'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 265
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        DataField = 'TOTAL'
        DataPipeline = ppdbepARefinan
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 155046
        mmTop = 265
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        DataField = 'CUOTAS'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 159809
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'CALENDARIO'
        DataPipeline = ppdbepARefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 175155
        mmTop = 265
        mmWidth = 17463
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Nro. Total De Asociados    --> '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 22754
        mmTop = 265
        mmWidth = 42069
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 5292
        mmWidth = 200290
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'TOTAL'
        DataPipeline = ppdbepARefinan
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 146844
        mmTop = 265
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'USEID'
        DataPipeline = ppdbepARefinan
        DisplayFormat = '###,###,##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbepARefinan'
        mmHeight = 3704
        mmLeft = 67733
        mmTop = 265
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DPTODES'
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 17992
        mmPrintPosition = 0
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 265
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'C'#243'digo Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 9525
          mmTop = 265
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 29104
          mmTop = 265
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          AutoSize = False
          Caption = 'N'#250'mero Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 102394
          mmTop = 265
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          AutoSize = False
          Caption = 'Fecha Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 129382
          mmTop = 265
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          AutoSize = False
          Caption = 'Total Vencido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 152136
          mmTop = 265
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          AutoSize = False
          Caption = 'Total No Pag.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 165629
          mmTop = 265
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          AutoSize = False
          Caption = 'Venc. del Calendario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 175155
          mmTop = 265
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 12435
          mmWidth = 200290
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 13758
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          AutoSize = True
          DataField = 'DPTODES'
          DataPipeline = ppdbepARefinan
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbepARefinan'
          mmHeight = 3704
          mmLeft = 29633
          mmTop = 13758
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 0
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Nro. por Departamento   --->'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 24606
          mmTop = 794
          mmWidth = 40217
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'USEID'
          DataPipeline = ppdbepARefinan
          DisplayFormat = '###,###,##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdbepARefinan'
          mmHeight = 3704
          mmLeft = 67733
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'TOTAL'
          DataPipeline = ppdbepARefinan
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbepARefinan'
          mmHeight = 3704
          mmLeft = 146844
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 5556
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppdbepARefinan: TppBDEPipeline
    UserName = 'dbepARefinan'
    Left = 400
    Top = 16
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
    Left = 352
    Top = 48
  end
  object ppdbepDRefinan: TppBDEPipeline
    UserName = 'dbepDRefinan'
    Left = 400
    Top = 16
  end
  object ppdbepSRefinan: TppBDEPipeline
    UserName = 'dbepSRefinan'
    Left = 400
    Top = 16
  end
  object pprptDRefinan: TppReport
    AutoStop = False
    DataPipeline = ppdbepDRefinan
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
    Template.FileName = 'C:\Soldb\Solformatos\Cob\Dema\Refinanciados_1.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 400
    Top = 48
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbepDRefinan'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBText13: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'CIADES'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 0
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        AutoSize = True
        DataField = 'EQUIPO'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 4763
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        AutoSize = True
        DataField = 'SISTEMA'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 9260
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 4763
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 9260
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 0
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 4763
        mmWidth = 17198
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 9260
        mmWidth = 1588
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        AutoSize = True
        DataField = 'TITULO'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 4233
        mmLeft = 60325
        mmTop = 15346
        mmWidth = 12435
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        AutoSize = True
        DataField = 'DEPA'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 4233
        mmLeft = 81756
        mmTop = 20902
        mmWidth = 9260
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'USEID'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 8467
        mmTop = 265
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 27517
        mmTop = 265
        mmWidth = 61648
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'TIPO'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 90488
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText13'
        DataField = 'NUMREFI'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 98690
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText101'
        DataField = 'MTOREF'
        DataPipeline = ppdbepDRefinan
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 128588
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'CREDID'
        DataPipeline = ppdbepDRefinan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 148432
        mmTop = 265
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText102'
        DataField = 'MTONUE'
        DataPipeline = ppdbepDRefinan
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Nro. Total De Asociados    --> '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 265
        mmWidth = 38629
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbepDRefinan
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 51594
        mmTop = 265
        mmWidth = 17198
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 5292
        mmWidth = 200290
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'MTOREF'
        DataPipeline = ppdbepDRefinan
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 127529
        mmTop = 265
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'MTONUE'
        DataPipeline = ppdbepDRefinan
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbepDRefinan'
        mmHeight = 3704
        mmLeft = 179388
        mmTop = 265
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'DPTODES'
      DataPipeline = ppdbepDRefinan
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbepDRefinan'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 18785
        mmPrintPosition = 0
        object ppLabel19: TppLabel
          UserName = 'Label19'
          AutoSize = False
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 12700
          mmLeft = 2117
          mmTop = 0
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          AutoSize = False
          Caption = 'C'#243'd. Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 12700
          mmLeft = 9790
          mmTop = 0
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 12700
          mmLeft = 27517
          mmTop = 0
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'Cr'#233'dito Refinanciado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 8467
          mmLeft = 98690
          mmTop = 0
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label13'
          AutoSize = False
          Caption = 'Saldo Refinanciado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 12700
          mmLeft = 126471
          mmTop = 0
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          AutoSize = False
          Caption = 'Cr'#233'dito Generado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 12700
          mmLeft = 149225
          mmTop = 0
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          AutoSize = False
          Caption = 'Saldo Actual del Ref.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 12700
          mmLeft = 177007
          mmTop = 0
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 1058
          mmTop = 12965
          mmWidth = 200290
          BandType = 3
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          Caption = 'Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 14288
          mmWidth = 21431
          BandType = 3
          GroupNo = 0
        end
        object ppDBText30: TppDBText
          UserName = 'DBText30'
          AutoSize = True
          DataField = 'DPTODES'
          DataPipeline = ppdbepDRefinan
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbepDRefinan'
          mmHeight = 4233
          mmLeft = 29898
          mmTop = 14288
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLine7: TppLine
          UserName = 'Line7'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 0
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label101'
          Caption = 'Nro. por Departamento   --->'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 8202
          mmTop = 794
          mmWidth = 35983
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'USEID'
          DataPipeline = ppdbepDRefinan
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdbepDRefinan'
          mmHeight = 3704
          mmLeft = 51329
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'MTOREF'
          DataPipeline = ppdbepDRefinan
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbepDRefinan'
          mmHeight = 3704
          mmLeft = 128059
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'MTONUE'
          DataPipeline = ppdbepDRefinan
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbepDRefinan'
          mmHeight = 3704
          mmLeft = 179917
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 5027
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object pprptSRefinan: TppReport
    AutoStop = False
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
    Template.FileName = 'C:\SOLDB\Solformatos\Cob\Dema\SinRefinan.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 464
    Top = 48
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        AutoSize = True
        DataField = 'CIADES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 0
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        AutoSize = True
        DataField = 'EQUIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 4763
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        AutoSize = True
        DataField = 'SISTEMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 9260
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 4763
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 9260
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 0
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 4763
        mmWidth = 17198
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageCount
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 9260
        mmWidth = 1588
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        AutoSize = True
        DataField = 'TITULO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 15346
        mmTop = 15610
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        AutoSize = True
        DataField = 'DEPA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 57150
        mmTop = 20902
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      DataPipeline = ppdbepSRefinan
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'USEID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'ASOCODMOD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'ASOAPENOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 28575
        mmTop = 265
        mmWidth = 61648
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 91017
        mmTop = 265
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'CREDID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 98425
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'CREFOTORG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 123825
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'TMONABR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 265
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'TOTAL'
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 147373
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'CUOTAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165629
        mmTop = 265
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText103'
        AutoSize = True
        DataField = 'CALENDARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 265
        mmWidth = 17463
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Nro. Total De Asociados    --> '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 22754
        mmTop = 265
        mmWidth = 42069
        BandType = 7
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 5292
        mmWidth = 200290
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'TOTAL'
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 124619
        mmTop = 265
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'USEID'
        DisplayFormat = '###,###,##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3704
        mmLeft = 67733
        mmTop = 265
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'DPTODES'
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 18785
        mmPrintPosition = 0
        object ppLine10: TppLine
          UserName = 'Line10'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 0
          mmWidth = 200290
          BandType = 3
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          AutoSize = False
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 1058
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          AutoSize = False
          Caption = 'C'#243'digo Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 8202
          mmTop = 1058
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 28575
          mmTop = 1058
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLabel35: TppLabel
          UserName = 'Label35'
          AutoSize = False
          Caption = 'N'#250'mero Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 98425
          mmTop = 1058
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          AutoSize = False
          Caption = 'Fecha Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 123825
          mmTop = 1058
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          AutoSize = False
          Caption = 'Total Vencido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 148696
          mmTop = 1058
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel38: TppLabel
          UserName = 'Label38'
          AutoSize = False
          Caption = '# Cuotas No pagadas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 161661
          mmTop = 1058
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLabel39: TppLabel
          UserName = 'Label39'
          AutoSize = False
          Caption = 'Venc. del Calendario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 11642
          mmLeft = 176213
          mmTop = 1058
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 13229
          mmWidth = 200290
          BandType = 3
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          Caption = 'Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 14288
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          AutoSize = True
          DataField = 'DPTODES'
          DataPipeline = ppdbepSRefinan
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbepSRefinan'
          mmHeight = 3704
          mmLeft = 29633
          mmTop = 14288
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLine12: TppLine
          UserName = 'Line12'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 0
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label102'
          Caption = 'Nro. por Departamento   --->'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 24606
          mmTop = 794
          mmWidth = 40217
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'USEID'
          DisplayFormat = '###,###,##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          mmHeight = 3704
          mmLeft = 67733
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'TOTAL'
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 124619
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 5556
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
