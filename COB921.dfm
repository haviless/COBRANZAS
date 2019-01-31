object fGnrVerTel: TfGnrVerTel
  Left = 282
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Verificaci'#243'n / Generaci'#243'n '
  ClientHeight = 397
  ClientWidth = 431
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
  object grpVerTel: TGroupBox
    Left = 3
    Top = -1
    Width = 424
    Height = 362
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 14
      Width = 95
      Height = 13
      Caption = 'Periodo De Proceso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblArchivo: TLabel
      Left = 14
      Top = 149
      Width = 316
      Height = 13
      AutoSize = False
      Caption = 'Archivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object BitGnrTel: TBitBtn
      Left = 129
      Top = 10
      Width = 253
      Height = 27
      Caption = 'Genera Teleahorro a : Texto (General)'
      TabOrder = 0
      OnClick = BitGnrTelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object BitSumTel: TBitBtn
      Left = 129
      Top = 89
      Width = 253
      Height = 27
      Caption = 'Verifica y Suma Envio'
      TabOrder = 1
      OnClick = BitSumTelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
        03333377777777777F33333003333330033333377FF333377F33333300333333
        0333333377FF33337F3333333003333303333333377FF3337333333333003333
        333333333377FF3333333333333003333333333333377FF33333333333330033
        3333333333337733333333333330033333333333333773333333333333003333
        33333333337733333F3333333003333303333333377333337F33333300333333
        03333333773333337F33333003333330033333377FFFFFF77F33330000000000
        0333337777777777733333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object rdbSeleccion: TRadioGroup
      Left = 10
      Top = 60
      Width = 109
      Height = 77
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'DOCENTES'
        'CESANTES'
        'GENERAL')
      ParentFont = False
      TabOrder = 2
      OnClick = rdbSeleccionClick
    end
    object dtgProTel: TwwDBGrid
      Left = 12
      Top = 167
      Width = 406
      Height = 186
      DisableThemesInTitle = False
      Selected.Strings = (
        'cdsCuenta'#9'10'#9'Teleahorro'#9#9
        'cdsProv'#9'4'#9'Prov'#9#9
        'cdsImporte'#9'16'#9'Importe Texto'#9#9
        'cdsValor'#9'14'#9'Importe Real'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsProTel
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Courier'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = True
      OnDrawDataCell = dtgProTelDrawDataCell
      OnDblClick = dtgProTelDblClick
      OnDrawFooterCell = dtgProTelDrawFooterCell
    end
    object BitTelNew: TBitBtn
      Left = 129
      Top = 41
      Width = 253
      Height = 27
      Caption = 'Genera Teleahorro a : Texto (Nuevos)'
      TabOrder = 4
      OnClick = BitTelNewClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object rdbGen: TRadioButton
      Left = 208
      Top = 72
      Width = 65
      Height = 16
      Caption = 'General'
      Checked = True
      TabOrder = 5
      TabStop = True
    end
    object rdbNew: TRadioButton
      Left = 289
      Top = 72
      Width = 73
      Height = 16
      Caption = 'Nuevos'
      TabOrder = 6
    end
    object BitResumen: TBitBtn
      Left = 128
      Top = 118
      Width = 253
      Height = 27
      Caption = 'Imprime Res'#250'men'
      TabOrder = 7
      OnClick = BitResumenClick
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
    end
    object pnlPeriodo: TPanel
      Left = 8
      Top = 28
      Width = 116
      Height = 32
      Color = 10207162
      Enabled = False
      TabOrder = 8
      object seAno: TSpinEdit
        Left = 4
        Top = 4
        Width = 57
        Height = 26
        Color = 10207162
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 4
        MaxValue = 2030
        MinValue = 2004
        ParentFont = False
        TabOrder = 0
        Value = 2004
        OnExit = seAnoExit
      end
      object seMes: TSpinEdit
        Left = 66
        Top = 4
        Width = 45
        Height = 26
        Color = 10207162
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 2
        MaxValue = 12
        MinValue = 1
        ParentFont = False
        TabOrder = 1
        Value = 7
        OnExit = seMesExit
      end
    end
  end
  object BitSalir: TBitBtn
    Left = 295
    Top = 365
    Width = 79
    Height = 27
    Caption = '&Salir'
    TabOrder = 1
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
  object cdsProTel: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cdsCuenta'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'cdsProv'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'cdsImporte'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'cdsValor'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 395
    Top = 46
    Data = {
      840000009619E0BD010000001800000004000000000003000000840009636473
      4375656E74610100490000000100055749445448020002000A00076364735072
      6F7601004900000001000557494454480200020004000A636473496D706F7274
      650100490000000100055749445448020002000F000863647356616C6F720800
      0400000000000000}
  end
  object dsProTel: TDataSource
    DataSet = cdsProTel
    Left = 395
    Top = 13
  end
  object ppDBEstPre: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'DBEstPre'
    Left = 61
    Top = 207
  end
  object ppResumen: TppReport
    AutoStop = False
    DataPipeline = ppDBEstPre
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
    Template.FileName = 'D:\sistemas\NewSiscre\Reportes\RepEstDep.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 29
    Top = 207
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstPre'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2910
        mmTop = 29369
        mmWidth = 197380
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2910
        mmTop = 35190
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'COD.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 11377
        mmTop = 30427
        mmWidth = 7070
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'PROVINCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 20638
        mmTop = 30427
        mmWidth = 15621
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#176' REGISTROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 115094
        mmTop = 30692
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'IMPORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 163777
        mmTop = 30956
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
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
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Sistema De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 29168
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Fecha   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        Caption = 'Hora     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label103'
        Caption = 'Pag      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 11113
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
        UserName = 'Label11'
        AutoSize = False
        Caption = 'DESEMBOLSO EN EFECTIVO  DEL 10/06/2003    AL   13/06/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 15875
        mmWidth = 183092
        BandType = 0
      end
      object ppLblTitulo01: TppLabel
        UserName = 'LblTitulo01'
        AutoSize = False
        Caption = 'DESEMBOLSO EN EFECTIVO  DEL 10/06/2003    AL   13/06/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 21431
        mmWidth = 183092
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PROVBCOID'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PROVBCODES'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 0
        mmWidth = 69321
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'REGISTROS'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 95779
        mmTop = 0
        mmWidth = 40481
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'SALDO'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 138642
        mmTop = 0
        mmWidth = 40481
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
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 60590
        mmTop = 2117
        mmWidth = 15875
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'REGISTROS'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 4233
        mmLeft = 96309
        mmTop = 1588
        mmWidth = 39952
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'SALDO'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 1588
        mmWidth = 39952
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 3175
        mmTop = 529
        mmWidth = 197380
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 3175
        mmTop = 7144
        mmWidth = 197380
        BandType = 7
      end
    end
  end
end
