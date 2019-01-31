object fDetBancos: TfDetBancos
  Left = 590
  Top = 408
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cuotas Pagadas Por Bancos (Detalle)'
  ClientHeight = 262
  ClientWidth = 400
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 101
    Width = 389
    Height = 64
    Caption = 'Rango de Fechas'
    TabOrder = 0
    object Label1: TLabel
      Left = 256
      Top = 19
      Width = 14
      Height = 13
      Caption = 'Fin'
    end
    object Label3: TLabel
      Left = 98
      Top = 19
      Width = 25
      Height = 13
      Caption = 'Inicio'
    end
    object DtpFecIni: TDateTimePicker
      Left = 63
      Top = 32
      Width = 102
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DtpFecFin: TDateTimePicker
      Left = 212
      Top = 32
      Width = 102
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object rdbSeleccion: TRadioGroup
    Left = 2
    Top = 1
    Width = 391
    Height = 47
    Columns = 4
    Items.Strings = (
      'General'
      'Por Ofi. Desc.'
      'Por Banco'
      'FSC por Banco')
    TabOrder = 1
    OnClick = rdbSeleccionClick
  end
  object BitPrint: TBitBtn
    Left = 140
    Top = 228
    Width = 79
    Height = 27
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitPrintClick
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
    Left = 315
    Top = 228
    Width = 79
    Height = 26
    Caption = '&Salir'
    TabOrder = 3
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
  object gbBanco: TGroupBox
    Left = 3
    Top = 172
    Width = 390
    Height = 42
    Caption = 'Banco'
    Enabled = False
    TabOrder = 4
    object DBLCBanco: TwwDBLookupCombo
      Left = 10
      Top = 14
      Width = 46
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BANCOID'#9'3'#9'Codigo'#9'F'
        'BANCONOM'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.CdsCBcos
      LookupField = 'BANCOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCBancoChange
    end
    object EdtDesBan: TEdit
      Left = 57
      Top = 14
      Width = 277
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = 12975869
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object gbOfiDes: TGroupBox
    Left = 3
    Top = 172
    Width = 391
    Height = 43
    Caption = 'Oficina Desconcentrada'
    Enabled = False
    TabOrder = 5
    object DBLkOfiDes: TwwDBLookupCombo
      Left = 11
      Top = 14
      Width = 44
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'OFDESID'#9'2'#9'Codigo'#9'F'
        'OFDESNOM'#9'25'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsOfDes
      LookupField = 'OFDESID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLkOfiDesChange
    end
    object EdtOfiDes: TEdit
      Left = 57
      Top = 14
      Width = 276
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = 12975869
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object DBGrid: TDBGrid
    Left = 8
    Top = 218
    Width = 33
    Height = 41
    DataSource = DM1.dsCambios
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 228
    Width = 86
    Height = 27
    Hint = 'Exportar a Excel'
    Caption = 'A Excel'
    TabOrder = 7
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Panel1: TPanel
    Left = 4
    Top = 57
    Width = 390
    Height = 38
    Color = 10207162
    TabOrder = 8
    object rdbFechaRegistro: TRadioButton
      Left = 34
      Top = 12
      Width = 113
      Height = 17
      Caption = 'Fecha de Registro'
      TabOrder = 0
    end
    object rdbFechaOperacion: TRadioButton
      Left = 240
      Top = 12
      Width = 121
      Height = 17
      Caption = 'Fecha de Operaci'#243'n'
      TabOrder = 1
    end
  end
  object DataBancos: TppDBPipeline
    DataSource = DM1.dsCambios
    UserName = 'DataBancos'
    Left = 88
    Top = 222
  end
  object ppRepDetBan: TppReport
    AutoStop = False
    DataPipeline = DataBancos
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
    Template.FileName = 
      'C:\Documents and Settings\rmedina\Escritorio\COBRANZA_ULTIMO\Ult' +
      'imo CLiente\Fuentes_Finales_201206\CuoPagxBanco.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 326
    Top = 120
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DataBancos'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppLblTitulo01: TppLabel
        UserName = 'LblTitulo01'
        AutoSize = False
        Caption = 
          'CUOTAS PAGADAS POR BANCO REGISTRADAS DEL : 26/02/2007 AL 26/02/2' +
          '007'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 17463
        mmWidth = 191823
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 29633
        mmWidth = 201084
        BandType = 0
      end
      object ppLblTitulo02: TppLabel
        UserName = 'LblTitulo02'
        AutoSize = False
        Caption = 'AMORTIZACION/INTERES/GASTOS -  ( POR OFICINA DESC. ) '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 23019
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label102'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label103'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 5080
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175419
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 0
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 4498
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label202'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 9260
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label27'
        Caption = 'COB918'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 16933
        mmTop = 8996
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'USEID'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 8202
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'NROPRESTAMO'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 14023
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'ASOAPENOM'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 35719
        mmTop = 0
        mmWidth = 37042
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'CREFPAG'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 74613
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'CREDOCPAG'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 89165
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'CREMTOCOB'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 103981
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'CREAMORT'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 121444
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        DataField = 'CREINTERES'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 139700
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        DataField = 'CREFLAT'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 173832
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'CREMTOEXC'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 187061
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        AutoSize = True
        DataField = 'MONCOBDESGRAV'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 149607
        mmTop = 265
        mmWidth = 22902
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'UPROID'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2910
        mmLeft = 265
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 529
        mmWidth = 201084
        BandType = 7
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'Total General       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 58738
        mmTop = 1588
        mmWidth = 25400
        BandType = 7
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 1588
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc57: TppDBCalc
        UserName = 'DBCalc57'
        DataField = 'CREMTOCOB'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 101865
        mmTop = 2117
        mmWidth = 18521
        BandType = 7
      end
      object ppDBCalc58: TppDBCalc
        UserName = 'DBCalc58'
        DataField = 'CREAMORT'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 121179
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc59: TppDBCalc
        UserName = 'DBCalc59'
        DataField = 'CREINTERES'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 139436
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc60: TppDBCalc
        UserName = 'DBCalc60'
        DataField = 'CREFLAT'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 172773
        mmTop = 2117
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc61: TppDBCalc
        UserName = 'DBCalc61'
        DataField = 'CREMTOEXC'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 187325
        mmTop = 2117
        mmWidth = 14288
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 6615
        mmWidth = 201084
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        DataField = 'MONCOBDESGRAV'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 2879
        mmLeft = 157692
        mmTop = 2117
        mmWidth = 14817
        BandType = 7
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'FREG'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          DataField = 'FREG'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 4233
          mmLeft = 27517
          mmTop = 6350
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel63: TppLabel
          UserName = 'Label602'
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 2381
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          Caption = 'De Registro   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 6085
          mmWidth = 17780
          BandType = 3
          GroupNo = 0
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 24077
          mmTop = 6350
          mmWidth = 2646
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine13: TppLine
          UserName = 'Line13'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 201084
          BandType = 5
          GroupNo = 0
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          Caption = 'Total Por Fecha    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1588
          mmWidth = 24130
          BandType = 5
          GroupNo = 0
        end
        object ppLabel75: TppLabel
          UserName = 'Label75'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1588
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc52: TppDBCalc
          UserName = 'DBCalc52'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 103188
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc53: TppDBCalc
          UserName = 'DBCalc53'
          DataField = 'CREAMORT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 121444
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc54: TppDBCalc
          UserName = 'DBCalc54'
          DataField = 'CREINTERES'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 139436
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc55: TppDBCalc
          UserName = 'DBCalc501'
          DataField = 'CREFLAT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 172773
          mmTop = 2117
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc56: TppDBCalc
          UserName = 'DBCalc56'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 187590
          mmTop = 2117
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc24'
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 157692
          mmTop = 2117
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'ORIGEN'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText37: TppDBText
          UserName = 'DBText37'
          DataField = 'ORIGEN'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 4233
          mmLeft = 27252
          mmTop = 4498
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          DataField = 'OFDESNOM'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 4233
          mmLeft = 31485
          mmTop = 4498
          mmWidth = 63236
          BandType = 3
          GroupNo = 1
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          Caption = 'Oficina '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 1058
          mmWidth = 10160
          BandType = 3
          GroupNo = 1
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 23813
          mmTop = 4498
          mmWidth = 2646
          BandType = 3
          GroupNo = 1
        end
        object ppLabel62: TppLabel
          UserName = 'Label601'
          Caption = 'Desconcentrada'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 4498
          mmWidth = 23548
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLine10: TppLine
          UserName = 'Line10'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 794
          mmWidth = 201084
          BandType = 5
          GroupNo = 1
        end
        object ppLabel72: TppLabel
          UserName = 'Label701'
          Caption = 'Total Por Oficina    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1852
          mmWidth = 26670
          BandType = 5
          GroupNo = 1
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1852
          mmWidth = 2646
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc47: TppDBCalc
          UserName = 'DBCalc47'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 103188
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc48: TppDBCalc
          UserName = 'DBCalc48'
          DataField = 'CREAMORT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 121444
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc49: TppDBCalc
          UserName = 'DBCalc49'
          DataField = 'CREINTERES'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 139700
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc50: TppDBCalc
          UserName = 'DBCalc50'
          DataField = 'CREFLAT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 172773
          mmTop = 2381
          mmWidth = 14288
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc51: TppDBCalc
          UserName = 'DBCalc51'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 187590
          mmTop = 2381
          mmWidth = 14288
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 157692
          mmTop = 2381
          mmWidth = 14817
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'USUARIO'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand8: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText39: TppDBText
          UserName = 'DBText39'
          DataField = 'USUARIO'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 27252
          mmTop = 529
          mmWidth = 19844
          BandType = 3
          GroupNo = 2
        end
        object ppDBText40: TppDBText
          UserName = 'DBText40'
          DataField = 'USERNOM'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 47625
          mmTop = 529
          mmWidth = 38629
          BandType = 3
          GroupNo = 2
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          Caption = 'Usuario  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 265
          mmWidth = 11430
          BandType = 3
          GroupNo = 2
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 23813
          mmTop = 265
          mmWidth = 2646
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 529
          mmTop = 794
          mmWidth = 201084
          BandType = 5
          GroupNo = 2
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
          Caption = 'Total Por Usuario   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1588
          mmWidth = 25400
          BandType = 5
          GroupNo = 2
        end
        object ppLabel71: TppLabel
          UserName = 'Label71'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1588
          mmWidth = 2646
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc42: TppDBCalc
          UserName = 'DBCalc42'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 103188
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc43: TppDBCalc
          UserName = 'DBCalc43'
          DataField = 'CREAMORT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 121444
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc44: TppDBCalc
          UserName = 'DBCalc44'
          DataField = 'CREINTERES'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 139700
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc401'
          DataField = 'CREFLAT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 172773
          mmTop = 2117
          mmWidth = 14288
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc46: TppDBCalc
          UserName = 'DBCalc46'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 187590
          mmTop = 2117
          mmWidth = 14288
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 157692
          mmTop = 2117
          mmWidth = 14817
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'BANCOID'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand9: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel53: TppLabel
          UserName = 'Label53'
          Caption = 'Banco   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 529
          mmWidth = 10054
          BandType = 3
          GroupNo = 3
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 23813
          mmTop = 529
          mmWidth = 2646
          BandType = 3
          GroupNo = 3
        end
        object ppDBText41: TppDBText
          UserName = 'DBText41'
          DataField = 'BANCOID'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 27252
          mmTop = 529
          mmWidth = 4233
          BandType = 3
          GroupNo = 3
        end
        object ppDBText42: TppDBText
          UserName = 'DBText42'
          DataField = 'BANCONOM'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 32808
          mmTop = 529
          mmWidth = 40746
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 201084
          BandType = 5
          GroupNo = 3
        end
        object ppLabel68: TppLabel
          UserName = 'Label68'
          Caption = 'Total Por Banco     '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1588
          mmWidth = 25400
          BandType = 5
          GroupNo = 3
        end
        object ppLabel69: TppLabel
          UserName = 'Label69'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1588
          mmWidth = 2646
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc37: TppDBCalc
          UserName = 'DBCalc37'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 103188
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc38'
          DataField = 'CREAMORT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 121444
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
          DataField = 'CREINTERES'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 139700
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc40'
          DataField = 'CREFLAT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 172773
          mmTop = 2117
          mmWidth = 14288
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc41'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 187590
          mmTop = 2117
          mmWidth = 14288
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 157692
          mmTop = 2117
          mmWidth = 14817
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'CCBCOID'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand10: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 6614
          mmWidth = 201084
          BandType = 3
          GroupNo = 4
        end
        object ppLabel78: TppLabel
          UserName = 'Label78'
          Caption = 'Use '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 7938
          mmTop = 2117
          mmWidth = 5038
          BandType = 3
          GroupNo = 4
        end
        object ppLabel79: TppLabel
          UserName = 'Label79'
          Caption = 'Credito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 16140
          mmTop = 2117
          mmWidth = 7874
          BandType = 3
          GroupNo = 4
        end
        object ppLabel80: TppLabel
          UserName = 'Label80'
          Caption = 'Apellidos y Nombres   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 37835
          mmTop = 2117
          mmWidth = 24426
          BandType = 3
          GroupNo = 4
        end
        object ppLabel81: TppLabel
          UserName = 'Label81'
          Caption = 'Fecha Doc.  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 74083
          mmTop = 2117
          mmWidth = 13843
          BandType = 3
          GroupNo = 4
        end
        object ppLabel82: TppLabel
          UserName = 'Label82'
          Caption = 'Documento   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2879
          mmLeft = 89694
          mmTop = 2117
          mmWidth = 14563
          BandType = 3
          GroupNo = 4
        end
        object ppLabel83: TppLabel
          UserName = 'Label83'
          Caption = 'Importe '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2879
          mmLeft = 107982
          mmTop = 2117
          mmWidth = 8932
          BandType = 3
          GroupNo = 4
        end
        object ppLabel84: TppLabel
          UserName = 'Label84'
          Caption = 'Amortizaci'#243'n  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2879
          mmLeft = 122296
          mmTop = 2117
          mmWidth = 15494
          BandType = 3
          GroupNo = 4
        end
        object ppLabel85: TppLabel
          UserName = 'Label85'
          Caption = 'Interes '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2879
          mmLeft = 145447
          mmTop = 2117
          mmWidth = 8086
          BandType = 3
          GroupNo = 4
        end
        object ppLabel86: TppLabel
          UserName = 'Label86'
          Caption = 'Gastos  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2879
          mmLeft = 176160
          mmTop = 2117
          mmWidth = 9102
          BandType = 3
          GroupNo = 4
        end
        object ppLabel87: TppLabel
          UserName = 'Label87'
          Caption = 'Excesos   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2879
          mmLeft = 189367
          mmTop = 2117
          mmWidth = 11261
          BandType = 3
          GroupNo = 4
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 794
          mmWidth = 201084
          BandType = 3
          GroupNo = 4
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Cuenta   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 74613
          mmTop = 7408
          mmWidth = 11377
          BandType = 3
          GroupNo = 4
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 86519
          mmTop = 7673
          mmWidth = 2910
          BandType = 3
          GroupNo = 4
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'CCBCOID'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 90223
          mmTop = 7408
          mmWidth = 62177
          BandType = 3
          GroupNo = 4
        end
        object ppLabel97: TppLabel
          UserName = 'Label97'
          Caption = 'F.Desgrav,'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2879
          mmLeft = 158682
          mmTop = 2117
          mmWidth = 11515
          BandType = 3
          GroupNo = 4
        end
        object ppLabel109: TppLabel
          UserName = 'Label109'
          Caption = 'UPro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 0
          mmTop = 2117
          mmWidth = 5588
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBCalc32: TppDBCalc
          UserName = 'DBCalc32'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 103188
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc33: TppDBCalc
          UserName = 'DBCalc33'
          DataField = 'CREAMORT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 121444
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc34: TppDBCalc
          UserName = 'DBCalc34'
          DataField = 'CREINTERES'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 139700
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc35: TppDBCalc
          UserName = 'DBCalc35'
          DataField = 'CREFLAT'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 172773
          mmTop = 1588
          mmWidth = 14288
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc36: TppDBCalc
          UserName = 'DBCalc36'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 187590
          mmTop = 1588
          mmWidth = 14288
          BandType = 5
          GroupNo = 4
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          Caption = 'Total Por Cuenta      '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1588
          mmWidth = 27940
          BandType = 5
          GroupNo = 4
        end
        object ppLabel67: TppLabel
          UserName = 'Label67'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1588
          mmWidth = 2646
          BandType = 5
          GroupNo = 4
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 201084
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 2879
          mmLeft = 157692
          mmTop = 1588
          mmWidth = 14817
          BandType = 5
          GroupNo = 4
        end
      end
    end
    object ppParameterList1: TppParameterList
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
    Report = ppRepDetBan
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 52
    Top = 222
  end
  object ppRepDetBanFSC: TppReport
    AutoStop = False
    DataPipeline = DataBancos
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
    Template.FileName = 'C:\Documents and Settings\rmedina\Mis documentos\ric.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 360
    Top = 120
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DataBancos'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppLblTitFSC01: TppLabel
        UserName = 'ppLblTitFSC01'
        AutoSize = False
        Caption = 
          'CUOTAS PAGADAS POR BANCO REGISTRADAS DEL : 26/02/2007 AL 26/02/2' +
          '007'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 17463
        mmWidth = 191823
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line17'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 29633
        mmWidth = 201084
        BandType = 0
      end
      object ppLblTitFSC02: TppLabel
        UserName = 'ppLblTitFSC02'
        AutoSize = False
        Caption = 'AMORTIZACION/INTERES/GASTOS -  ( POR OFICINA DESC. ) '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 23019
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label11'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label101'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label102'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label103'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 5080
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175419
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label20'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 0
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label201'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 4498
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label202'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 9260
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label27'
        Caption = 'COB918'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 16933
        mmTop = 8996
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText44'
        DataField = 'USEID'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3440
        mmLeft = 265
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText45'
        DataField = 'NROPRESTAMO'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3440
        mmLeft = 4498
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText46'
        DataField = 'ASOAPENOM'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3440
        mmLeft = 29369
        mmTop = 0
        mmWidth = 45508
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText47'
        DataField = 'CREFPAG'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3440
        mmLeft = 75936
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText48'
        DataField = 'CREDOCPAG'
        DataPipeline = DataBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3440
        mmLeft = 92075
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText49'
        DataField = 'CREMTOCOB'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3440
        mmLeft = 110331
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText53'
        DataField = 'CREMTOEXC'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3440
        mmLeft = 135467
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line14'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 529
        mmWidth = 167483
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label76'
        Caption = 'Total General       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 58738
        mmTop = 1588
        mmWidth = 25400
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label77'
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 1588
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc57'
        DataField = 'CREMTOCOB'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3704
        mmLeft = 109009
        mmTop = 2117
        mmWidth = 18521
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc61'
        DataField = 'CREMTOEXC'
        DataPipeline = DataBancos
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3704
        mmLeft = 135732
        mmTop = 2117
        mmWidth = 14288
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line15'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 6615
        mmWidth = 167483
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'FREG'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppDBText12: TppDBText
          UserName = 'DBText36'
          DataField = 'FREG'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 4233
          mmLeft = 27517
          mmTop = 6350
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label602'
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 2381
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label64'
          Caption = 'De Registro   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 6085
          mmWidth = 17780
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label65'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 24077
          mmTop = 6350
          mmWidth = 2646
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine7: TppLine
          UserName = 'Line13'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 265
          mmWidth = 167483
          BandType = 5
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label74'
          Caption = 'Total Por Fecha    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1588
          mmWidth = 24130
          BandType = 5
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label75'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1588
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc52'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 110331
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc56'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 135996
          mmTop = 2117
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ORIGEN'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText13: TppDBText
          UserName = 'DBText37'
          DataField = 'ORIGEN'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 4233
          mmLeft = 27252
          mmTop = 4498
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
        end
        object ppDBText14: TppDBText
          UserName = 'DBText38'
          DataField = 'OFDESNOM'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 4233
          mmLeft = 31485
          mmTop = 4498
          mmWidth = 63236
          BandType = 3
          GroupNo = 1
        end
        object ppLabel30: TppLabel
          UserName = 'Label60'
          Caption = 'Oficina '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 1058
          mmWidth = 10160
          BandType = 3
          GroupNo = 1
        end
        object ppLabel31: TppLabel
          UserName = 'Label61'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 23813
          mmTop = 4498
          mmWidth = 2646
          BandType = 3
          GroupNo = 1
        end
        object ppLabel32: TppLabel
          UserName = 'Label601'
          Caption = 'Desconcentrada'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 4498
          mmWidth = 23548
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLine9: TppLine
          UserName = 'Line10'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 794
          mmWidth = 167483
          BandType = 5
          GroupNo = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label701'
          Caption = 'Total Por Oficina    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1852
          mmWidth = 26670
          BandType = 5
          GroupNo = 1
        end
        object ppLabel34: TppLabel
          UserName = 'Label73'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1852
          mmWidth = 2646
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc47'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 110331
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc51'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 135996
          mmTop = 2381
          mmWidth = 14288
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'USUARIO'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText15: TppDBText
          UserName = 'DBText39'
          DataField = 'USUARIO'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 27252
          mmTop = 529
          mmWidth = 19844
          BandType = 3
          GroupNo = 2
        end
        object ppDBText16: TppDBText
          UserName = 'DBText40'
          DataField = 'USERNOM'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 47625
          mmTop = 529
          mmWidth = 38629
          BandType = 3
          GroupNo = 2
        end
        object ppLabel35: TppLabel
          UserName = 'Label58'
          Caption = 'Usuario  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 265
          mmWidth = 11430
          BandType = 3
          GroupNo = 2
        end
        object ppLabel36: TppLabel
          UserName = 'Label59'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 23813
          mmTop = 265
          mmWidth = 2646
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine11: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 529
          mmTop = 794
          mmWidth = 167483
          BandType = 5
          GroupNo = 2
        end
        object ppLabel37: TppLabel
          UserName = 'Label70'
          Caption = 'Total Por Usuario   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1588
          mmWidth = 25400
          BandType = 5
          GroupNo = 2
        end
        object ppLabel38: TppLabel
          UserName = 'Label71'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1588
          mmWidth = 2646
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc42'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 110331
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc46'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 135996
          mmTop = 2117
          mmWidth = 14288
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'BANCOID'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel39: TppLabel
          UserName = 'Label53'
          Caption = 'Banco   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 529
          mmWidth = 10054
          BandType = 3
          GroupNo = 3
        end
        object ppLabel40: TppLabel
          UserName = 'Label55'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 23813
          mmTop = 529
          mmWidth = 2646
          BandType = 3
          GroupNo = 3
        end
        object ppDBText17: TppDBText
          UserName = 'DBText41'
          DataField = 'BANCOID'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 27252
          mmTop = 529
          mmWidth = 4233
          BandType = 3
          GroupNo = 3
        end
        object ppDBText18: TppDBText
          UserName = 'DBText42'
          DataField = 'BANCONOM'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 32808
          mmTop = 529
          mmWidth = 40746
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine12: TppLine
          UserName = 'Line6'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 529
          mmWidth = 167483
          BandType = 5
          GroupNo = 3
        end
        object ppLabel41: TppLabel
          UserName = 'Label68'
          Caption = 'Total Por Banco     '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1588
          mmWidth = 25400
          BandType = 5
          GroupNo = 3
        end
        object ppLabel42: TppLabel
          UserName = 'Label69'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1588
          mmWidth = 2646
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc37'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 110331
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc41'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 135996
          mmTop = 2117
          mmWidth = 14288
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'CCBCOID'
      DataPipeline = DataBancos
      OutlineSettings.CreateNode = True
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object ppLine18: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 6615
          mmWidth = 167217
          BandType = 3
          GroupNo = 4
        end
        object ppLabel43: TppLabel
          UserName = 'Label78'
          Caption = 'Use '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 1588
          mmWidth = 5027
          BandType = 3
          GroupNo = 4
        end
        object ppLabel44: TppLabel
          UserName = 'Label79'
          Caption = 'Credito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 5821
          mmTop = 1588
          mmWidth = 8996
          BandType = 3
          GroupNo = 4
        end
        object ppLabel45: TppLabel
          UserName = 'Label80'
          Caption = 'Apellidos y Nombres   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 29633
          mmTop = 1588
          mmWidth = 28046
          BandType = 3
          GroupNo = 4
        end
        object ppLabel46: TppLabel
          UserName = 'Label81'
          Caption = 'Fecha Doc.  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 74877
          mmTop = 1588
          mmWidth = 15240
          BandType = 3
          GroupNo = 4
        end
        object ppLabel47: TppLabel
          UserName = 'Label82'
          Caption = 'Documento   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 92340
          mmTop = 1588
          mmWidth = 15240
          BandType = 3
          GroupNo = 4
        end
        object ppLabel48: TppLabel
          UserName = 'Label83'
          Caption = 'Importe '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 113242
          mmTop = 1588
          mmWidth = 12700
          BandType = 3
          GroupNo = 4
        end
        object ppLabel52: TppLabel
          UserName = 'Label87'
          Caption = 'Excesos   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 137319
          mmTop = 1588
          mmWidth = 12700
          BandType = 3
          GroupNo = 4
        end
        object ppLine19: TppLine
          UserName = 'Line16'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 794
          mmWidth = 168275
          BandType = 3
          GroupNo = 4
        end
        object ppLabel54: TppLabel
          UserName = 'Label1'
          Caption = 'Cuenta   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 74613
          mmTop = 7408
          mmWidth = 11377
          BandType = 3
          GroupNo = 4
        end
        object ppLabel56: TppLabel
          UserName = 'Label2'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 86519
          mmTop = 7673
          mmWidth = 2910
          BandType = 3
          GroupNo = 4
        end
        object ppDBText19: TppDBText
          UserName = 'DBText1'
          DataField = 'CCBCOID'
          DataPipeline = DataBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 90223
          mmTop = 7408
          mmWidth = 62177
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBCalc26: TppDBCalc
          UserName = 'DBCalc32'
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 110331
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc30: TppDBCalc
          UserName = 'DBCalc36'
          DataField = 'CREMTOEXC'
          DataPipeline = DataBancos
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 135996
          mmTop = 1588
          mmWidth = 14288
          BandType = 5
          GroupNo = 4
        end
        object ppLabel57: TppLabel
          UserName = 'Label66'
          Caption = 'Total Por Cuenta      '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 58738
          mmTop = 1588
          mmWidth = 27940
          BandType = 5
          GroupNo = 4
        end
        object ppLabel88: TppLabel
          UserName = 'Label67'
          Caption = ' : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1588
          mmWidth = 2646
          BandType = 5
          GroupNo = 4
        end
        object ppLine20: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 529
          mmWidth = 167482
          BandType = 5
          GroupNo = 4
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppRepDetBanFOperac: TppReport
    AutoStop = False
    DataPipeline = DataBancos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\hnoriega\Desktop\REPBANCOFoperacion.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 355
    Top = 184
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DataBancos'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5292
        mmLeft = 125942
        mmTop = 25929
        mmWidth = 23019
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 5292
        mmLeft = 148696
        mmTop = 25929
        mmWidth = 61383
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 5292
        mmLeft = 209815
        mmTop = 25929
        mmWidth = 64823
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5292
        mmLeft = 15875
        mmTop = 25929
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Cod.Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 16933
        mmTop = 26723
        mmWidth = 18256
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5292
        mmLeft = 35983
        mmTop = 25929
        mmWidth = 52123
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 26723
        mmWidth = 37571
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5292
        mmLeft = 87842
        mmTop = 25929
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Nro.Operac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 106098
        mmTop = 26723
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Fec.Operac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 128059
        mmTop = 26723
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Imp.Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 150284
        mmTop = 26723
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Caption = 'Ban/Efe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 211403
        mmTop = 26723
        mmWidth = 11642
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        AutoSize = False
        Caption = 'CUOTAS PAGADAS POR BANCO : 01/01/2013 AL 15/01/2013'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 47890
        mmTop = 8467
        mmWidth = 191823
        BandType = 0
      end
      object pplblSubtitulo: TppLabel
        UserName = 'lblSubtitulo'
        AutoSize = False
        Caption = 
          'AMORTIZACION/INTERES/F.DESGRAVAMEN/GASTOS - POR FECHA DE OPERACI' +
          #211'N'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 16404
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 255588
        mmTop = 265
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label1'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 255588
        mmTop = 4763
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label2'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 255853
        mmTop = 9260
        mmWidth = 5027
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 267759
        mmTop = 529
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 267494
        mmTop = 5292
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 267759
        mmTop = 9525
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label203'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 264319
        mmTop = 265
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 264319
        mmTop = 4763
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 264319
        mmTop = 9525
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        Caption = 'COB918'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 16933
        mmTop = 8996
        mmWidth = 9525
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 5292
        mmLeft = 265
        mmTop = 25929
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        Caption = 'Upro/Use'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 26723
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        Caption = 'Pr.Cob'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 26723
        mmWidth = 9790
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 170392
        mmTop = 26194
        mmWidth = 1588
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line401'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 188648
        mmTop = 26194
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label1101'
        Caption = 'Saldo x Cob'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 191559
        mmTop = 26723
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        Caption = 'Cuo.Pact'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 89694
        mmTop = 26723
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        Caption = 'Diferidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 226219
        mmTop = 26723
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        Caption = 'Pres.Pend'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 258498
        mmTop = 26723
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        Caption = 'Vencidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 241830
        mmTop = 26723
        mmWidth = 12965
        BandType = 0
      end
      object ppLine45: TppLine
        UserName = 'Line45'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 256646
        mmTop = 26194
        mmWidth = 794
        BandType = 0
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 239713
        mmTop = 26194
        mmWidth = 794
        BandType = 0
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 224367
        mmTop = 26194
        mmWidth = 794
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 104775
        mmTop = 25929
        mmWidth = 794
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 4498
        mmLeft = 265
        mmTop = 0
        mmWidth = 275961
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'ASOCODMOD'
        DataPipeline = DataBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 529
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'ASOAPENOM'
        DataPipeline = DataBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 34925
        mmTop = 529
        mmWidth = 52123
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CREDOCPAG'
        DataPipeline = DataBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 105304
        mmTop = 529
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'CREFPAG'
        DataPipeline = DataBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 128059
        mmTop = 529
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CREMTOCOB'
        DataPipeline = DataBancos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 160602
        mmTop = 529
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        AutoSize = True
        DataField = 'PAGOS'
        DataPipeline = DataBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3704
        mmLeft = 216694
        mmTop = 529
        mmWidth = 1852
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 126471
        mmTop = 265
        mmWidth = 794
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'TIPO'
        DataPipeline = DataBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 276755
        mmTop = 794
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        AutoSize = True
        DataField = 'UPROID'
        DataPipeline = DataBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3260
        mmLeft = 794
        mmTop = 529
        mmWidth = 6265
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        AutoSize = True
        DataField = 'USEID'
        DataPipeline = DataBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3260
        mmLeft = 9790
        mmTop = 529
        mmWidth = 3598
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CUOPROCOB'
        DataPipeline = DataBancos
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 182034
        mmTop = 529
        mmWidth = 5556
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line42'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 265
        mmWidth = 794
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line43'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 188913
        mmTop = 265
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'SALDO_PEND'
        DataPipeline = DataBancos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 201613
        mmTop = 529
        mmWidth = 7144
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 209815
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CUODIF'
        DataPipeline = DataBancos
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 228600
        mmTop = 529
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CUOVEN'
        DataPipeline = DataBancos
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 243682
        mmTop = 529
        mmWidth = 12171
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 225161
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 240771
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line44'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 257440
        mmTop = 265
        mmWidth = 794
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CREPEN'
        DataPipeline = DataBancos
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 260615
        mmTop = 529
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'CUOPAC'
        DataPipeline = DataBancos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 91017
        mmTop = 529
        mmWidth = 11906
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 103981
        mmTop = 265
        mmWidth = 794
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 87842
        mmTop = 265
        mmWidth = 794
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 276490
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = DataBancos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataBancos'
        mmHeight = 3175
        mmLeft = 141817
        mmTop = 1852
        mmWidth = 27517
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 170657
        mmTop = 0
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel107: TppLabel
        UserName = 'Label3'
        Caption = 'Total General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 794
        mmWidth = 22490
        BandType = 7
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'BANCONOM'
      DataPipeline = DataBancos
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand11: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup12: TppGroup
      BreakName = 'CCBCOID'
      DataPipeline = DataBancos
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group12'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand12: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel89: TppLabel
          UserName = 'Label89'
          Caption = 'Amortiz.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 59002
          mmTop = 1058
          mmWidth = 12700
          BandType = 3
          GroupNo = 1
        end
        object ppLabel90: TppLabel
          UserName = 'Label90'
          Caption = 'Interes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 75142
          mmTop = 1058
          mmWidth = 10848
          BandType = 3
          GroupNo = 1
        end
        object ppLabel108: TppLabel
          UserName = 'Label902'
          Caption = 'F.Desgrav.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 90223
          mmTop = 1058
          mmWidth = 15610
          BandType = 3
          GroupNo = 1
        end
        object ppLabel91: TppLabel
          UserName = 'Label901'
          Caption = 'Flat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 110596
          mmTop = 1058
          mmWidth = 8202
          BandType = 3
          GroupNo = 1
        end
        object ppLabel92: TppLabel
          UserName = 'Label92'
          Caption = 'Exceso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 123561
          mmTop = 1058
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand12: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'USUARIO'
      DataPipeline = DataBancos
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataBancos'
      object ppGroupHeaderBand13: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12700
        mmPrintPosition = 0
        object ppDBText29: TppDBText
          UserName = 'DBText29'
          DataField = 'BANCONOM'
          DataPipeline = DataBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 794
          mmTop = 529
          mmWidth = 45508
          BandType = 3
          GroupNo = 2
        end
        object ppDBText30: TppDBText
          UserName = 'DBText30'
          DataField = 'CCBCOID'
          DataPipeline = DataBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 48948
          mmTop = 529
          mmWidth = 76465
          BandType = 3
          GroupNo = 2
        end
        object ppDBText24: TppDBText
          UserName = 'DBText24'
          AutoSize = True
          DataField = 'USUARIO'
          DataPipeline = DataBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3260
          mmLeft = 48948
          mmTop = 5821
          mmWidth = 19558
          BandType = 3
          GroupNo = 2
        end
        object ppDBText25: TppDBText
          UserName = 'DBText25'
          DataField = 'OFDESNOM'
          DataPipeline = DataBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3175
          mmLeft = 794
          mmTop = 5556
          mmWidth = 41275
          BandType = 3
          GroupNo = 2
        end
        object ppLabel93: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3598
          mmLeft = 43656
          mmTop = 5556
          mmWidth = 2910
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppShape8: TppShape
          UserName = 'Shape8'
          Brush.Color = 12829635
          mmHeight = 4763
          mmLeft = 0
          mmTop = 265
          mmWidth = 276490
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = DataBancos
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3175
          mmLeft = 141817
          mmTop = 1058
          mmWidth = 27517
          BandType = 5
          GroupNo = 2
        end
        object ppLine33: TppLine
          UserName = 'Line33'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4498
          mmLeft = 170657
          mmTop = 529
          mmWidth = 1588
          BandType = 5
          GroupNo = 2
        end
        object ppLabel96: TppLabel
          UserName = 'Label96'
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 23548
          mmTop = 794
          mmWidth = 7673
          BandType = 5
          GroupNo = 2
        end
        object ppDBText31: TppDBText
          UserName = 'DBText301'
          DataField = 'CCBCOID'
          DataPipeline = DataBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataBancos'
          mmHeight = 3704
          mmLeft = 33073
          mmTop = 794
          mmWidth = 71173
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
