object fCobTrimestre: TfCobTrimestre
  Left = 179
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Descuento 4 Cuotas'
  ClientHeight = 562
  ClientWidth = 710
  Color = 10207162
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
  object GroupBox1: TGroupBox
    Left = 3
    Top = 0
    Width = 702
    Height = 185
    Caption = 'Asociados'
    TabOrder = 0
    object dtgAsociados: TwwDBGrid
      Left = 8
      Top = 67
      Width = 689
      Height = 102
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOCODMOD'#9'12'#9'Codigo'
        'ASOAPENOM'#9'45'#9'Apellidos y Nombres'
        'USEID'#9'5'#9'Use.'
        'UPROID'#9'5'#9'U.Proceso.'
        'ASONCTA'#9'12'#9'Cta.Ahorros'
        'SITCTA'#9'1'#9'Sit.'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsAso
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object rdgTipAso: TRadioGroup
      Left = 10
      Top = 16
      Width = 231
      Height = 43
      Caption = 'Situaci'#243'n'
      Columns = 2
      Items.Strings = (
        'ACTIVOS'
        'CESANTES')
      TabOrder = 1
      OnClick = rdgTipAsoClick
    end
    object BitMostrar: TBitBtn
      Left = 248
      Top = 31
      Width = 103
      Height = 28
      Caption = 'Mostrar'
      TabOrder = 2
      OnClick = BitMostrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
        33333333373F33333333333330B03333333333337F7F33333333333330F03333
        333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
        333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
        333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
        3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
        33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
        33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
        03333337777777F7F33333330000000003333337777777773333}
      NumGlyphs = 2
    end
    object BitMant: TBitBtn
      Left = 358
      Top = 31
      Width = 103
      Height = 28
      Caption = 'Mantenimiento'
      TabOrder = 3
      OnClick = BitMantClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E000000000000000000003B3B58838300
        7777008E8E003737000000006363009A9A00000000546F22584400000000A5A5
        00000000A5A500373700646400FAFA00FFFF006B6B00DADA008B8B00ECEC0087
        8700A2930016B6A100879212616D9E9622707000181800878796000000E1E100
        6F6F009A9A00FFFF0050501D2929533737009F93003B8A9E00D4D4B5C3C32C28
        3573737FFFFFFFFFFFFFFFFFFF636387585800FFFF003B3B149191A19D9D9D46
        464E624A5A00DFDFABABABFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000000000229D9DA45F5F5F3A3A3A0000002F22220D8787C8B9B97F7F7F8181
        813C3C3C3D3D3DFFFFFFFFFFFFD3D3D348484C1D1D1D6B6B6B8D8D8D8D8D8D93
        9393B0B0B0483B3BE1E1E1FEFEFEFFFFFFFFFFFF606060FFFFFFFFFFFF2F2F2F
        0000000000003F3F3F8D8D8D8787878787875B5B5B2C2C2CE1E1E1DEDEDEFFFF
        FF9E9E9E000000FFFFFFE9E9E90000000000000000006F6F6F89898985858598
        9898A1A1A13F3F3FECECECE1E1E1FFFFFF9292928C8C8C686868000000000000
        000000585858999999878787838383B9B9B9B0B0B0636363424242D9E8E8FF5B
        5BFFFFFF686868FFFFFF00000000000000000000000048484895959591919100
        0000B9B9B93D3535D5CECEC6C6C67F8E8E6D6D6D807C7CFFFFFF000000000000
        0000000000000000003F3F3F8989899A9A9A00000090DBDB065353FFE2E2DEC4
        C4F0D6D61F3838D3CFCF4848480000000000000000000000004C4C4CC3C3C3F5
        F5F5281F1F87C3C32FB5B500B7B700E8E800B2B22FFFFF7A6262E1E1E1000000
        00000000000000000000000000000000000000000094D0D07EF5F500FFFF00FF
        FF00FFFF1F4A4AFFFFFFFFFFFF26262600000000000000000000000000000000
        0000000000002222225B5B006969006767875757FFFFFFFFFFFFFFFFFFFFFFFF
        878787000000000000000000000000000000E1E1E1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 185
    Width = 702
    Height = 376
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 29
      Width = 45
      Height = 13
      Caption = 'Periodo : '
    end
    object Label3: TLabel
      Left = 16
      Top = 195
      Width = 81
      Height = 13
      Caption = 'Detalle Individual'
    end
    object BitGenera: TBitBtn
      Left = 265
      Top = 21
      Width = 97
      Height = 28
      Caption = 'Generar'
      TabOrder = 0
      OnClick = BitGeneraClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      NumGlyphs = 2
    end
    object dtgCuentas: TwwDBGrid
      Left = 8
      Top = 212
      Width = 689
      Height = 122
      DisableThemesInTitle = False
      Selected.Strings = (
        'USEID'#9'3'#9'Use'
        'UPROID'#9'4'#9'U.Proc.'
        'ASOCODMOD'#9'10'#9'Codigo'
        'ASOAPENOM'#9'35'#9'Apellidos y Nombres'
        'CREFVEN'#9'12'#9'F.Venc.'
        'ASONCTA'#9'10'#9'Cuenta'
        'SITCTA'#9'1'#9'Sit.'
        'CRESALDO2'#9'10'#9'Saldo'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCAso
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object BitTransf: TBitBtn
      Left = 312
      Top = 343
      Width = 114
      Height = 27
      Caption = 'Transferir'
      TabOrder = 2
      OnClick = BitTransfClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 442
      Top = 343
      Width = 114
      Height = 27
      Caption = 'Salir'
      TabOrder = 3
      OnClick = BitBtn1Click
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
    object Panel2: TPanel
      Left = 60
      Top = 20
      Width = 101
      Height = 30
      Color = 10207162
      TabOrder = 4
      object dbseAno: TwwDBSpinEdit
        Left = 4
        Top = 3
        Width = 55
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 2050.000000000000000000
        MinValue = 2004.000000000000000000
        Value = 2004.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object dbseMes: TwwDBSpinEdit
        Left = 63
        Top = 3
        Width = 35
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        UsePictureMask = False
      end
    end
    object Panel1: TPanel
      Left = 580
      Top = 21
      Width = 115
      Height = 25
      BevelInner = bvRaised
      Color = clBtnHighlight
      TabOrder = 5
      object lblCount: TLabel
        Left = 68
        Top = 4
        Width = 39
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 5
        Width = 50
        Height = 13
        Caption = 'Registros :'
      end
    end
    object dtgCabEnv: TwwDBGrid
      Left = 9
      Top = 62
      Width = 689
      Height = 124
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOCODMOD'#9'12'#9'Codigo'
        'ASOAPENOM'#9'40'#9'Apellidos y Nombres'
        'ASONCTA'#9'10'#9'Cuenta'
        'SITCTA'#9'1'#9'Sit.'
        'CUOTAS'#9'8'#9'Cuotas.'
        'CRESALDO2'#9'15'#9'Saldo'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgCabEnvRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCEdu
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 6
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = dtgCabEnvDblClick
    end
    object BitMuestra: TBitBtn
      Left = 165
      Top = 21
      Width = 97
      Height = 28
      Caption = 'S'#243'lo Mostrar'
      TabOrder = 7
      OnClick = BitMuestraClick
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
    end
    object Panel3: TPanel
      Left = 368
      Top = 10
      Width = 205
      Height = 51
      TabOrder = 8
      object rdbNoPagados: TRadioButton
        Left = 5
        Top = 34
        Width = 70
        Height = 14
        Caption = 'No Pagados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rdbPagados: TRadioButton
        Left = 5
        Top = 17
        Width = 68
        Height = 17
        Caption = 'Pagados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object rdbGeneral: TRadioButton
        Left = 5
        Top = 1
        Width = 67
        Height = 17
        Caption = 'General'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
      end
      object BitImprime: TBitBtn
        Left = 92
        Top = 11
        Width = 97
        Height = 28
        Caption = 'Imprime'
        TabOrder = 3
        OnClick = BitImprimeClick
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
      end
    end
  end
  object DbRep4Cuo: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'DbRep4Cuo'
    Left = 224
    Top = 526
  end
  object Rep4Cuo: TppReport
    AutoStop = False
    DataPipeline = DbRep4Cuo
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 264
    Top = 526
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRep4Cuo'
    object ppHeaderBand33: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 28575
      mmPrintPosition = 0
      object TitCuo: TppLabel
        UserName = 'TitCuo'
        AutoSize = False
        Caption = 'REPORTES DE COBRANZA  DE ASOCIADOS (4 CUOTAS)   A :   MARZO 2004'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 265
        mmTop = 20638
        mmWidth = 202142
        BandType = 0
      end
      object ppLabel697: TppLabel
        UserName = 'Label697'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel698: TppLabel
        UserName = 'Label698'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel699: TppLabel
        UserName = 'Label699'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel700: TppLabel
        UserName = 'Label700'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel701: TppLabel
        UserName = 'Label1'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable68: TppSystemVariable
        UserName = 'SystemVariable68'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable69: TppSystemVariable
        UserName = 'SystemVariable69'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable70: TppSystemVariable
        UserName = 'SystemVariable70'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel702: TppLabel
        UserName = 'Label702'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel703: TppLabel
        UserName = 'Label5302'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel704: TppLabel
        UserName = 'Label704'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
    end
    object ppDetailBand35: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText290: TppDBText
        UserName = 'DBText290'
        DataField = 'ASOCODMOD'
        DataPipeline = DbRep4Cuo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRep4Cuo'
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText292: TppDBText
        UserName = 'DBText2901'
        DataField = 'ASOAPENOM'
        DataPipeline = DbRep4Cuo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRep4Cuo'
        mmHeight = 3969
        mmLeft = 42598
        mmTop = 0
        mmWidth = 63236
        BandType = 4
      end
      object ppDBText293: TppDBText
        UserName = 'DBText2902'
        DataField = 'CRESALDO2'
        DataPipeline = DbRep4Cuo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRep4Cuo'
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 0
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText294: TppDBText
        UserName = 'DBText294'
        DataField = 'MONTO'
        DataPipeline = DbRep4Cuo
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRep4Cuo'
        mmHeight = 3969
        mmLeft = 156634
        mmTop = 0
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText295: TppDBText
        UserName = 'DBText2903'
        DataField = 'ASONCTA'
        DataPipeline = DbRep4Cuo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRep4Cuo'
        mmHeight = 3969
        mmLeft = 107156
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
    end
    object ppFooterBand28: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand33: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc228: TppDBCalc
        UserName = 'DBCalc228'
        DataField = 'CRESALDO2'
        DataPipeline = DbRep4Cuo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRep4Cuo'
        mmHeight = 3440
        mmLeft = 125677
        mmTop = 1323
        mmWidth = 28046
        BandType = 7
      end
      object ppDBCalc229: TppDBCalc
        UserName = 'DBCalc229'
        DataField = 'MONTO'
        DataPipeline = DbRep4Cuo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRep4Cuo'
        mmHeight = 3440
        mmLeft = 156634
        mmTop = 1323
        mmWidth = 28046
        BandType = 7
      end
      object ppDBCalc232: TppDBCalc
        UserName = 'DBCalc232'
        DataField = 'ASOID'
        DataPipeline = DbRep4Cuo
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRep4Cuo'
        mmHeight = 3440
        mmLeft = 89695
        mmTop = 1588
        mmWidth = 28046
        BandType = 7
      end
      object ppLabel690: TppLabel
        UserName = 'Label690'
        AutoSize = False
        Caption = 'Total General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35719
        mmTop = 1588
        mmWidth = 45773
        BandType = 7
      end
      object ppLabel695: TppLabel
        UserName = 'Label695'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 82814
        mmTop = 1588
        mmWidth = 4233
        BandType = 7
      end
      object ppLine174: TppLine
        UserName = 'Line174'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 18255
        mmTop = 265
        mmWidth = 168275
        BandType = 7
      end
      object ppLine175: TppLine
        UserName = 'Line175'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 18255
        mmTop = 6350
        mmWidth = 168275
        BandType = 7
      end
    end
    object ppGroup43: TppGroup
      BreakName = 'UPRONOM'
      DataPipeline = DbRep4Cuo
      OutlineSettings.CreateNode = True
      UserName = 'Group43'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRep4Cuo'
      object ppGroupHeaderBand43: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppDBText283: TppDBText
          UserName = 'DBText283'
          DataField = 'UPRONOM'
          DataPipeline = DbRep4Cuo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'DbRep4Cuo'
          mmHeight = 4233
          mmLeft = 7938
          mmTop = 3440
          mmWidth = 75671
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand43: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBCalc226: TppDBCalc
          UserName = 'DBCalc226'
          DataField = 'CRESALDO2'
          DataPipeline = DbRep4Cuo
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup43
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRep4Cuo'
          mmHeight = 3440
          mmLeft = 125677
          mmTop = 1323
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc227: TppDBCalc
          UserName = 'DBCalc227'
          DataField = 'MONTO'
          DataPipeline = DbRep4Cuo
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup43
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRep4Cuo'
          mmHeight = 3440
          mmLeft = 156634
          mmTop = 1323
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc231: TppDBCalc
          UserName = 'DBCalc2301'
          DataField = 'ASOID'
          DataPipeline = DbRep4Cuo
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup43
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbRep4Cuo'
          mmHeight = 3440
          mmLeft = 89695
          mmTop = 1323
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppLabel691: TppLabel
          UserName = 'Label6901'
          AutoSize = False
          Caption = 'Total Por Lugar De Proceso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 35720
          mmTop = 1323
          mmWidth = 45773
          BandType = 5
          GroupNo = 0
        end
        object ppLabel694: TppLabel
          UserName = 'Label694'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 82814
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 0
        end
        object ppLine173: TppLine
          UserName = 'Line173'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 18255
          mmTop = 0
          mmWidth = 168275
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup44: TppGroup
      BreakName = 'USENOM'
      DataPipeline = DbRep4Cuo
      OutlineSettings.CreateNode = True
      UserName = 'Group44'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRep4Cuo'
      object ppGroupHeaderBand44: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBText284: TppDBText
          UserName = 'DBText284'
          DataField = 'USENOM'
          DataPipeline = DbRep4Cuo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRep4Cuo'
          mmHeight = 4233
          mmLeft = 18521
          mmTop = 1058
          mmWidth = 100806
          BandType = 3
          GroupNo = 1
        end
        object ppLine170: TppLine
          UserName = 'Line170'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 18256
          mmTop = 0
          mmWidth = 168275
          BandType = 3
          GroupNo = 1
        end
        object ppLine172: TppLine
          UserName = 'Line172'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 18255
          mmTop = 5821
          mmWidth = 168275
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand44: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBCalc224: TppDBCalc
          UserName = 'DBCalc224'
          DataField = 'MONTO'
          DataPipeline = DbRep4Cuo
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup44
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRep4Cuo'
          mmHeight = 3440
          mmLeft = 156634
          mmTop = 1058
          mmWidth = 28046
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc225: TppDBCalc
          UserName = 'DBCalc225'
          DataField = 'CRESALDO2'
          DataPipeline = DbRep4Cuo
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup44
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRep4Cuo'
          mmHeight = 3387
          mmLeft = 125677
          mmTop = 1323
          mmWidth = 28047
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc230: TppDBCalc
          UserName = 'DBCalc230'
          DataField = 'ASOID'
          DataPipeline = DbRep4Cuo
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup44
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbRep4Cuo'
          mmHeight = 3440
          mmLeft = 89694
          mmTop = 1323
          mmWidth = 28046
          BandType = 5
          GroupNo = 1
        end
        object ppLabel692: TppLabel
          UserName = 'Label6902'
          AutoSize = False
          Caption = 'Total Por Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 35720
          mmTop = 1323
          mmWidth = 45773
          BandType = 5
          GroupNo = 1
        end
        object ppLabel693: TppLabel
          UserName = 'Label693'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 82815
          mmTop = 1323
          mmWidth = 4233
          BandType = 5
          GroupNo = 1
        end
        object ppLine171: TppLine
          UserName = 'Line1701'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 18255
          mmTop = 529
          mmWidth = 168275
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
end
