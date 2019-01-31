object fRepFPago: TfRepFPago
  Left = 470
  Top = 311
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalle de Cuotas por Forma de Pago'
  ClientHeight = 146
  ClientWidth = 381
  Color = 10207162
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
  object grbRepfPago: TGroupBox
    Left = 4
    Top = 0
    Width = 373
    Height = 145
    TabOrder = 0
    DesignSize = (
      373
      145)
    object Label5: TLabel
      Left = 12
      Top = 60
      Width = 74
      Height = 13
      Caption = 'Forma De Pago'
    end
    object Label2: TLabel
      Left = 12
      Top = 16
      Width = 75
      Height = 13
      Caption = 'Fecha De Inicio'
    end
    object DBLCTipCob: TwwDBLookupCombo
      Left = 13
      Top = 75
      Width = 46
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FORPAGOID'#9'2'#9'Codigo'#9'F'
        'FORPAGODES'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormaPago
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTipCobChange
    end
    object DtpFecIni: TDateTimePicker
      Left = 12
      Top = 30
      Width = 109
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
    object BitPrint: TBitBtn
      Left = 34
      Top = 111
      Width = 98
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
      Left = 250
      Top = 111
      Width = 98
      Height = 27
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
    object chkEfeBan: TCheckBox
      Left = 224
      Top = 52
      Width = 121
      Height = 17
      Caption = 'Efectivos / Bancos'
      TabOrder = 4
      OnClick = chkEfeBanClick
    end
    object pnlDescrip: TPanel
      Left = 60
      Top = 74
      Width = 297
      Height = 29
      Enabled = False
      TabOrder = 5
      object EdtForPago: TEdit
        Left = 2
        Top = 2
        Width = 291
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
        TabOrder = 0
      end
    end
    object BitExporta: TBitBtn
      Left = 142
      Top = 111
      Width = 98
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
  end
  object dtgData: TDBGrid
    Left = 123
    Top = 311
    Width = 50
    Height = 26
    DataSource = DM1.dsTPension
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
  end
  object ppRepfPago: TppReport
    AutoStop = False
    DataPipeline = ppDBRefPago
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
    Template.FileName = 'F:\SOLREPO\COB\RepfPago.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 276
    Top = 16
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRefPago'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label11'
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
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'Sistema De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 4498
        mmWidth = 29104
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
      object ppLblTitulo: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 18521
        mmWidth = 183092
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
      object ppLabel77: TppLabel
        UserName = 'Label27'
        Caption = 'COB908'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 12435
        mmTop = 8202
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOTIPID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 0
        mmWidth = 76994
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'FORPAGABR'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 101865
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 114300
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CUOTAS'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 141552
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CFCDES_F'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 152400
        mmTop = 0
        mmWidth = 38100
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'TIPO'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 91811
        mmTop = 0
        mmWidth = 7938
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 114300
        mmTop = 2381
        mmWidth = 25665
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 2381
        mmTop = 529
        mmWidth = 191293
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Importe Total           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 32278
        mmTop = 2381
        mmWidth = 29972
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Total Movimientos     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 32278
        mmTop = 8202
        mmWidth = 32427
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 2117
        mmTop = 13758
        mmWidth = 191293
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'CREFPAG'
        DataPipeline = ppDBRefPago
        DisplayFormat = '##,###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 114300
        mmTop = 7938
        mmWidth = 25665
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 84931
        mmTop = 2646
        mmWidth = 1905
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 84931
        mmTop = 8202
        mmWidth = 1905
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DPTODES'
      DataPipeline = ppDBRefPago
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 17463
        mmPrintPosition = 0
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'DPTODES'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4191
          mmLeft = 5027
          mmTop = 1588
          mmWidth = 29898
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2646
          mmTop = 8731
          mmWidth = 191293
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2647
          mmTop = 15875
          mmWidth = 191293
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'TipAso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 2910
          mmTop = 11377
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Apellidos y Nombres    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 13494
          mmTop = 11642
          mmWidth = 29252
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'ForPago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 102129
          mmTop = 11906
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Monto Pagado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 114829
          mmTop = 11906
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'Cuotas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 139436
          mmTop = 11906
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'Categoria de Riesgo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 152665
          mmTop = 11906
          mmWidth = 37835
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'T.Mov.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 91546
          mmTop = 11906
          mmWidth = 8636
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 14288
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 114300
          mmTop = 1323
          mmWidth = 25665
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2381
          mmTop = 265
          mmWidth = 191293
          BandType = 5
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Importe Por Departamento  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 32279
          mmTop = 1323
          mmWidth = 41952
          BandType = 5
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Movimientos Por Departamento  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 32279
          mmTop = 6879
          mmWidth = 49742
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2646
          mmTop = 12435
          mmWidth = 191293
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREFPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 114300
          mmTop = 6879
          mmWidth = 25665
          BandType = 5
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 84931
          mmTop = 1588
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 84931
          mmTop = 6879
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'USENOM'
      DataPipeline = ppDBRefPago
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'USENOM'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3387
          mmLeft = 4763
          mmTop = 529
          mmWidth = 56621
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppDBRefPago: TppDBPipeline
    DataSource = DM1.dsQry1
    UserName = 'DBRefPago'
    Left = 324
    Top = 8
  end
end
