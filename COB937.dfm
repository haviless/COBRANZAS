object fimprimetrimestre: Tfimprimetrimestre
  Left = 216
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Asociados Con Descuento De Cuatro Cuotas'
  ClientHeight = 420
  ClientWidth = 685
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object dtgData: TDBGrid
    Left = 223
    Top = 20
    Width = 26
    Height = 21
    DataSource = DM1.dsQry
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
  end
  object Panel1: TPanel
    Left = 2
    Top = 6
    Width = 679
    Height = 411
    Caption = 'Panel1'
    Color = 10207162
    TabOrder = 1
    DesignSize = (
      679
      411)
    object BitImprimir: TBitBtn
      Left = 343
      Top = 375
      Width = 99
      Height = 28
      Cursor = crHandPoint
      Caption = 'Reporte'
      TabOrder = 3
      OnClick = BitImprimirClick
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
    object BitSalir: TBitBtn
      Left = 564
      Top = 375
      Width = 99
      Height = 28
      Cursor = crHandPoint
      Caption = 'Salir'
      TabOrder = 5
      OnClick = BitSalirClick
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
    object BitExporta: TBitBtn
      Left = 458
      Top = 375
      Width = 99
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitExportaClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      Spacing = 10
    end
    object dtgAsoMan: TwwDBGrid
      Left = 8
      Top = 71
      Width = 665
      Height = 294
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOCODMOD'#9'12'#9'Codigo~Modular'
        'ASOAPENOM'#9'40'#9'Apellidos y Nombres'
        'USEID'#9'5'#9'Uses/Ugel.'
        'UPROID'#9'5'#9'Unidad~De Proceso.'
        'ASONCTA'#9'12'#9'Cuenta~De Ahorros'
        'SITCTA'#9'1'#9'Sit~Aso'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsQry
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
      TitleLines = 2
      TitleButtons = False
      object dtgAsoManIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 26
        Height = 30
        Hint = 'Adicionar'
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = dtgAsoManIButtonClick
      end
    end
    object Panel2: TPanel
      Left = 10
      Top = 8
      Width = 421
      Height = 58
      Color = 15269887
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 12
        Width = 60
        Height = 13
        Caption = 'Buscar  :  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtBuscar: TEdit
        Left = 6
        Top = 29
        Width = 403
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EdtBuscarChange
        OnKeyPress = EdtBuscarKeyPress
      end
    end
    object BitRetirar: TBitBtn
      Left = 219
      Top = 375
      Width = 97
      Height = 28
      Cursor = crHandPoint
      Hint = 'Retirar'
      Caption = 'Retirar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitRetirarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object RepCta: TppReport
    AutoStop = False
    DataPipeline = DbRepCta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8,5 x 11 pulg.)'
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
    Left = 176
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepCta'
    object ppHeaderBand20: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33602
      mmPrintPosition = 0
      object ppLabel405: TppLabel
        UserName = 'Label405'
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
      object ppLabel406: TppLabel
        UserName = 'Label406'
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
      object ppLabel407: TppLabel
        UserName = 'Label407'
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
      object ppLabel408: TppLabel
        UserName = 'Label408'
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
      object ppLabel409: TppLabel
        UserName = 'Label409'
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
      object ppSystemVariable32: TppSystemVariable
        UserName = 'SystemVariable32'
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
      object ppSystemVariable33: TppSystemVariable
        UserName = 'SystemVariable301'
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
      object ppSystemVariable34: TppSystemVariable
        UserName = 'SystemVariable34'
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
      object ppLabel410: TppLabel
        UserName = 'Label410'
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
      object ppLabel411: TppLabel
        UserName = 'Label4001'
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
      object ppLabel412: TppLabel
        UserName = 'Label412'
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
      object ppLine108: TppLine
        UserName = 'Line108'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 6350
        mmTop = 23283
        mmWidth = 164836
        BandType = 0
      end
      object ppLabel416: TppLabel
        UserName = 'Label416'
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 29633
        mmTop = 24606
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel417: TppLabel
        UserName = 'Label417'
        Caption = 'De Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 28575
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel418: TppLabel
        UserName = 'Label418'
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 62706
        mmTop = 28046
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel424: TppLabel
        UserName = 'Label424'
        Caption = 'Situaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 48948
        mmTop = 28310
        mmWidth = 12435
        BandType = 0
      end
      object TitCta: TppLabel
        UserName = 'TitCta'
        AutoSize = False
        Caption = 'ASOCIADOS CON DESCUENTO DE 4 CUOTAS AL   :  XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 5556
        mmTop = 14817
        mmWidth = 165100
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Use/Ugel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157692
        mmTop = 28046
        mmWidth = 12435
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 6350
        mmTop = 32279
        mmWidth = 164836
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 10054
        mmTop = 24606
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 10054
        mmTop = 28575
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'U.Proc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 28046
        mmWidth = 9483
        BandType = 0
      end
    end
    object ppDetailBand22: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText188: TppDBText
        UserName = 'DBText188'
        DataField = 'ASOAPENOM'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 62442
        mmTop = 0
        mmWidth = 82021
        BandType = 4
      end
      object ppDBText187: TppDBText
        UserName = 'DBText187'
        DataField = 'ASONCTA'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 29898
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText189: TppDBText
        UserName = 'DBText189'
        DataField = 'SITCTA'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 51594
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText190: TppDBText
        UserName = 'DBText190'
        DataField = 'UPROID'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 10319
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText1901'
        DataField = 'USEID'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 159809
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
    end
    object ppFooterBand15: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand20: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel403: TppLabel
        UserName = 'Label403'
        Caption = 'Total ASOCIADOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 74348
        mmTop = 2117
        mmWidth = 24077
        BandType = 7
      end
      object ppLabel414: TppLabel
        UserName = 'Label414'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 103452
        mmTop = 2117
        mmWidth = 2910
        BandType = 7
      end
      object ppLabel415: TppLabel
        UserName = 'Label415'
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137848
        mmTop = 1852
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc173: TppDBCalc
        UserName = 'DBCalc173'
        DataField = 'ASONCTA'
        DataPipeline = DbRepCta
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRepCta'
        mmHeight = 4233
        mmLeft = 125677
        mmTop = 1852
        mmWidth = 10848
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 6350
        mmTop = 6879
        mmWidth = 164836
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 6350
        mmTop = 529
        mmWidth = 164836
        BandType = 7
      end
    end
  end
  object DbRepCta: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'DbRepCta'
    Left = 148
    Top = 376
  end
end
