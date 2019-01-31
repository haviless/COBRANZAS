object fCobProyVsEjec: TfCobProyVsEjec
  Left = 168
  Top = 151
  BorderStyle = bsDialog
  Caption = 'Cobranza Proyectada Vs. Ejecutada'
  ClientHeight = 470
  ClientWidth = 802
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
  object Label1: TLabel
    Left = 121
    Top = 8
    Width = 64
    Height = 13
    Caption = 'Fecha De Fin'
  end
  object Label2: TLabel
    Left = 12
    Top = 8
    Width = 75
    Height = 13
    Caption = 'Fecha De Inicio'
  end
  object dbgCobPro: TwwDBGrid
    Left = 4
    Top = 55
    Width = 792
    Height = 370
    DisableThemesInTitle = False
    Selected.Strings = (
      'MESANO'#9'20'#9'MES Y A'#209'O'
      'CREMTO'#9'15'#9'Montos~Proyectados'
      'REGTOT'#9'10'#9'N'#176' De~Cuotas'
      'CREMTOCOB'#9'15'#9'Montos~Recuperados'
      'REGCOB'#9'10'#9'N'#176' De~Cuotas'
      'SALDO'#9'15'#9'Montos No~Recuperados'
      'REGPEN'#9'10'#9'N'#176' De~Cuotas'
      'POREJE'#9'5'#9'(%)Efect.'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsQry
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object DtpFecIni: TDateTimePicker
    Left = 11
    Top = 24
    Width = 95
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
    OnChange = DtpFecIniChange
  end
  object DtpFecFin: TDateTimePicker
    Left = 120
    Top = 24
    Width = 95
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
    TabOrder = 2
    OnChange = DtpFecFinChange
  end
  object BitProcesar: TBitBtn
    Left = 227
    Top = 24
    Width = 110
    Height = 26
    Caption = 'Procesar'
    TabOrder = 3
    OnClick = BitProcesarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333700000733333333F777773FF3333333007F0F70
      0333333773373377FF3333300FFF7FFF003333773F3333377FF33300F0FFFFF0
      F00337737333F37377F33707FFFF0FFFF70737F33337F33337FF300FFFFF0FFF
      FF00773F3337F333377F30707FFF0FFF70707F733337F333737F300FFFF09FFF
      FF0077F33377F33337733707FF0F9FFFF70737FF3737F33F37F33300F0FF9FF0
      F003377F7337F373773333300FFF9FFF00333377FF37F3377FF33300007F9F70
      000337777FF7FF77773333703070007030733373777777737333333333330333
      333333333337FF33333333333330003333333333337773333333}
    NumGlyphs = 2
  end
  object BitResClfCar: TBitBtn
    Left = 554
    Top = 434
    Width = 115
    Height = 29
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = BitResClfCarClick
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
    Left = 675
    Top = 434
    Width = 115
    Height = 29
    Hint = 'Salir'
    Caption = '&Salir'
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
  object rdb01: TRadioButton
    Left = 359
    Top = 32
    Width = 210
    Height = 17
    Caption = 'AMORTIZACION+INTERES+GASTO'
    Checked = True
    TabOrder = 6
    TabStop = True
    OnClick = rdb01Click
  end
  object rdb02: TRadioButton
    Left = 580
    Top = 32
    Width = 131
    Height = 17
    Caption = 'Solo AMORTIZACION'
    TabOrder = 7
    OnClick = rdb02Click
  end
  object RpProyectado: TppReport
    AutoStop = False
    DataPipeline = DBProyectado
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 504
    Top = 432
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBProyectado'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 50800
      mmPrintPosition = 0
      object ppLabel64: TppLabel
        UserName = 'Label37'
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
      object ppLabel65: TppLabel
        UserName = 'Label47'
        Caption = 'Sistema  Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 4498
        mmWidth = 25569
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label301'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 229130
        mmTop = 265
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label49'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 229130
        mmTop = 4763
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label50'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 229394
        mmTop = 9260
        mmWidth = 10054
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 242623
        mmTop = 529
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 242359
        mmTop = 5292
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 243153
        mmTop = 9525
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label51'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 240771
        mmTop = 9260
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label52'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 240771
        mmTop = 4763
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label53'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 240771
        mmTop = 265
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 'RESUMEN DE COBRANZA PROYECTADA VS. EJECUTADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 28046
        mmWidth = 264055
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 6615
        mmLeft = 55298
        mmTop = 42598
        mmWidth = 61648
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 6615
        mmLeft = 118798
        mmTop = 42598
        mmWidth = 61648
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 6615
        mmLeft = 181769
        mmTop = 42598
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = 'Monto Proyectado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 64029
        mmTop = 44715
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'N'#176' de Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 96838
        mmTop = 44715
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'N'#176' de Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 159809
        mmTop = 44715
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'N'#176' de Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 222780
        mmTop = 44979
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'Monto Recuperado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 122502
        mmTop = 44715
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'Monto No Recuperado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 182563
        mmTop = 44715
        mmWidth = 34396
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 6615
        mmLeft = 4763
        mmTop = 42598
        mmWidth = 50006
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        Caption = 'PERIODO '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 5556
        mmTop = 44979
        mmWidth = 13885
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 6615
        mmLeft = 245005
        mmTop = 42598
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = '(%) Efect.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 247217
        mmTop = 44979
        mmWidth = 12869
        BandType = 0
      end
      object Titulo: TppLabel
        UserName = 'Titulo'
        AutoSize = False
        Caption = 'COBRANZA PROYECTADA VS. EJECUTADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 0
        mmTop = 35190
        mmWidth = 264055
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 6615
        mmLeft = 244740
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 6615
        mmLeft = 181769
        mmTop = 265
        mmWidth = 61648
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 6615
        mmLeft = 118534
        mmTop = 0
        mmWidth = 61648
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 6615
        mmLeft = 55298
        mmTop = 0
        mmWidth = 61648
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 4498
        mmTop = 0
        mmWidth = 50271
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText20'
        DataField = 'MESANO'
        DataPipeline = DBProyectado
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3704
        mmLeft = 5556
        mmTop = 1323
        mmWidth = 47890
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText201'
        DataField = 'REGPEN'
        DataPipeline = DBProyectado
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3704
        mmLeft = 224103
        mmTop = 1588
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText22'
        DataField = 'REGTOT'
        DataPipeline = DBProyectado
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3704
        mmLeft = 98161
        mmTop = 1323
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText24'
        DataField = 'REGCOB'
        DataPipeline = DBProyectado
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3704
        mmLeft = 160867
        mmTop = 1323
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'CREMTO'
        DataPipeline = DBProyectado
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3704
        mmLeft = 56886
        mmTop = 1323
        mmWidth = 37042
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'CREMTOCOB'
        DataPipeline = DBProyectado
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3704
        mmLeft = 119327
        mmTop = 1323
        mmWidth = 34396
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        DataField = 'SALDO'
        DataPipeline = DBProyectado
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3704
        mmLeft = 182827
        mmTop = 1588
        mmWidth = 34396
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'POREJE'
        DataPipeline = DBProyectado
        DisplayFormat = '###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3704
        mmLeft = 246063
        mmTop = 1588
        mmWidth = 14023
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object TitPie: TppLabel
        UserName = 'Titulo1'
        AutoSize = False
        Caption = 'COBRANZA PROYECTADA VS. EJECUTADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 128852
        mmTop = 2646
        mmWidth = 131234
        BandType = 8
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 6615
        mmLeft = 181769
        mmTop = 265
        mmWidth = 61648
        BandType = 7
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 6615
        mmLeft = 118534
        mmTop = 265
        mmWidth = 61648
        BandType = 7
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 6615
        mmLeft = 55298
        mmTop = 265
        mmWidth = 61648
        BandType = 7
      end
      object ppLabel73: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Caption = 'Total     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 35719
        mmTop = 2117
        mmWidth = 10319
        BandType = 7
      end
      object ppLabel74: TppLabel
        UserName = 'Label57'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 2117
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'REGTOT'
        DataPipeline = DBProyectado
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3810
        mmLeft = 98161
        mmTop = 1058
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'REGCOB'
        DataPipeline = DBProyectado
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3810
        mmLeft = 160867
        mmTop = 1323
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'REGPEN'
        DataPipeline = DBProyectado
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3810
        mmLeft = 224103
        mmTop = 1323
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'CREMTO'
        DataPipeline = DBProyectado
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3810
        mmLeft = 56886
        mmTop = 1058
        mmWidth = 37042
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'CREMTOCOB'
        DataPipeline = DBProyectado
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3810
        mmLeft = 119327
        mmTop = 1323
        mmWidth = 34396
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'SALDO'
        DataPipeline = DBProyectado
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBProyectado'
        mmHeight = 3810
        mmLeft = 182827
        mmTop = 1323
        mmWidth = 34396
        BandType = 7
      end
    end
  end
  object DBProyectado: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'dbInventario1'
    Left = 472
    Top = 432
  end
end
