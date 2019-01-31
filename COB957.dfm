object fCtasInact: TfCtasInact
  Left = 253
  Top = 311
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cuentas Inactivas'
  ClientHeight = 164
  ClientWidth = 474
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
  object grpCtas: TGroupBox
    Left = 4
    Top = -4
    Width = 465
    Height = 166
    TabOrder = 0
    DesignSize = (
      465
      166)
    object Pan01: TPanel
      Left = 9
      Top = 13
      Width = 447
      Height = 106
      Color = 10207162
      TabOrder = 0
      object Label3: TLabel
        Left = 7
        Top = 54
        Width = 84
        Height = 17
        Caption = 'Procesado En : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 7
        Top = 5
        Width = 96
        Height = 15
        Caption = 'Tipo De Descuento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DbLUniPro: TwwDBLookupCombo
        Left = 8
        Top = 72
        Width = 55
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'UPROID'#9'4'#9'Codigo'#9'F'
          'UPRONOM'#9'50'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Options = [loColLines, loRowLines, loTitles]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DbLUniProChange
      end
      object Panel9: TPanel
        Left = 62
        Top = 70
        Width = 376
        Height = 29
        Caption = 'Panel7'
        Enabled = False
        TabOrder = 1
        object dbeUproDes: TwwDBEdit
          Left = 3
          Top = 2
          Width = 369
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object DBLCTipC: TwwDBLookupCombo
        Left = 9
        Top = 23
        Width = 42
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'FORPAGOID'#9'2'#9'Codigo'#9'F'
          'FORPAGODES'#9'27'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsTtransaccion
        LookupField = 'FORPAGOID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DBLCTipCChange
      end
      object Panel3: TPanel
        Left = 53
        Top = 23
        Width = 229
        Height = 28
        Enabled = False
        TabOrder = 3
        object EdtTipCob: TEdit
          Left = 3
          Top = 1
          Width = 224
          Height = 25
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object chkGeneral: TCheckBox
        Left = 344
        Top = 50
        Width = 81
        Height = 17
        Caption = 'General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = chkGeneralClick
      end
    end
    object BitPrint: TBitBtn
      Left = 225
      Top = 128
      Width = 107
      Height = 27
      Caption = '&Imprimir'
      TabOrder = 1
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
      Left = 339
      Top = 128
      Width = 107
      Height = 27
      Caption = '&Salir'
      TabOrder = 2
      OnClick = BitSalirClick
      Kind = bkClose
    end
    object dtgData: TDBGrid
      Left = 7
      Top = 132
      Width = 50
      Height = 26
      DataSource = DM1.dsDFam
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
    end
    object BitExporta: TBitBtn
      Left = 101
      Top = 128
      Width = 118
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar Detalle'
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
  end
  object DbRepCtas: TppDBPipeline
    DataSource = DM1.dsDFam
    UserName = 'DbRepCtas'
    Left = 328
    Top = 16
  end
  object RepCtas: TppReport
    AutoStop = False
    DataPipeline = DbRepCtas
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
      'C:\Documents and Settings\ealva.DERRAMA.000\Mis documentos\RepoC' +
      'art\ssss.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 368
    Top = 16
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepCtas'
    object ppHeaderBand33: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33602
      mmPrintPosition = 0
      object Tit01: TppLabel
        UserName = 'Tit01'
        AutoSize = False
        Caption = 'REPORTES DE CUENTAS DE AHORROS INACTIVAS AL 21/09/2005'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 18785
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
      object Tit02: TppLabel
        UserName = 'TitCuo1'
        AutoSize = False
        Caption = 'TIPO DE DESCUENTO :  PLANILLAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 529
        mmTop = 24077
        mmWidth = 202142
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
        DataPipeline = DbRepCtas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCtas'
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText292: TppDBText
        UserName = 'DBText2901'
        DataField = 'ASOAPENOM'
        DataPipeline = DbRepCtas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCtas'
        mmHeight = 3969
        mmLeft = 36513
        mmTop = 0
        mmWidth = 52123
        BandType = 4
      end
      object ppDBText293: TppDBText
        UserName = 'DBText2902'
        DataField = 'CRESDOACT'
        DataPipeline = DbRepCtas
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCtas'
        mmHeight = 3969
        mmLeft = 147109
        mmTop = 0
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText294: TppDBText
        UserName = 'DBText294'
        DataField = 'ASODNI'
        DataPipeline = DbRepCtas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCtas'
        mmHeight = 3969
        mmLeft = 117740
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText295: TppDBText
        UserName = 'DBText2903'
        DataField = 'ASONCTA'
        DataPipeline = DbRepCtas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCtas'
        mmHeight = 3969
        mmLeft = 90488
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText324: TppDBText
        UserName = 'DBText324'
        DataField = 'SITCTA'
        DataPipeline = DbRepCtas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DbRepCtas'
        mmHeight = 3969
        mmLeft = 110331
        mmTop = 0
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText330: TppDBText
        UserName = 'DBText330'
        DataField = 'APOSEC'
        DataPipeline = DbRepCtas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCtas'
        mmHeight = 3969
        mmLeft = 133879
        mmTop = 0
        mmWidth = 11113
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
      object ppDBCalc229: TppDBCalc
        UserName = 'DBCalc229'
        DataField = 'CRESDOACT'
        DataPipeline = DbRepCtas
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCtas'
        mmHeight = 3440
        mmLeft = 147109
        mmTop = 1323
        mmWidth = 28046
        BandType = 7
      end
      object ppDBCalc232: TppDBCalc
        UserName = 'DBCalc232'
        DataField = 'ASOID'
        DataPipeline = DbRepCtas
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRepCtas'
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
        mmLeft = 34660
        mmTop = 265
        mmWidth = 140759
        BandType = 7
      end
      object ppLine175: TppLine
        UserName = 'Line175'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 34660
        mmTop = 6350
        mmWidth = 140229
        BandType = 7
      end
    end
    object ppGroup43: TppGroup
      BreakName = 'UPRONOM'
      DataPipeline = DbRepCtas
      OutlineSettings.CreateNode = True
      UserName = 'Group43'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepCtas'
      object ppGroupHeaderBand43: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 13229
        mmPrintPosition = 0
        object ppDBText283: TppDBText
          UserName = 'DBText283'
          DataField = 'UPRONOM'
          DataPipeline = DbRepCtas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRepCtas'
          mmHeight = 3387
          mmLeft = 11642
          mmTop = 6615
          mmWidth = 75671
          BandType = 3
          GroupNo = 0
        end
        object ppLabel799: TppLabel
          UserName = 'Label799'
          AutoSize = False
          Caption = 'Unidad de Proceso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 3387
          mmLeft = 11642
          mmTop = 2646
          mmWidth = 29369
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand43: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBCalc227: TppDBCalc
          UserName = 'DBCalc227'
          DataField = 'CRESDOACT'
          DataPipeline = DbRepCtas
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup43
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepCtas'
          mmHeight = 3440
          mmLeft = 147109
          mmTop = 1323
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc231: TppDBCalc
          UserName = 'DBCalc2301'
          DataField = 'ASOID'
          DataPipeline = DbRepCtas
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
          DataPipelineName = 'DbRepCtas'
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
          mmLeft = 34661
          mmTop = 0
          mmWidth = 141023
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup44: TppGroup
      BreakName = 'USENOM'
      DataPipeline = DbRepCtas
      OutlineSettings.CreateNode = True
      UserName = 'Group44'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepCtas'
      object ppGroupHeaderBand44: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppDBText284: TppDBText
          UserName = 'DBText284'
          DataField = 'USENOM'
          DataPipeline = DbRepCtas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRepCtas'
          mmHeight = 4233
          mmLeft = 17727
          mmTop = 2117
          mmWidth = 100806
          BandType = 3
          GroupNo = 1
        end
        object ppLine170: TppLine
          UserName = 'Line170'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 17727
          mmTop = 8467
          mmWidth = 157692
          BandType = 3
          GroupNo = 1
        end
        object ppLine172: TppLine
          UserName = 'Line172'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 17727
          mmTop = 15610
          mmWidth = 157427
          BandType = 3
          GroupNo = 1
        end
        object ppLabel808: TppLabel
          UserName = 'Label808'
          AutoSize = False
          Caption = 'Codigo Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 17992
          mmTop = 11906
          mmWidth = 17187
          BandType = 3
          GroupNo = 1
        end
        object ppLabel809: TppLabel
          UserName = 'Label809'
          AutoSize = False
          Caption = 'Cuenta de Ahorros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 88371
          mmTop = 12171
          mmWidth = 21167
          BandType = 3
          GroupNo = 1
        end
        object ppLabel810: TppLabel
          UserName = 'Label810'
          AutoSize = False
          Caption = 'Apellidos y Nombres       '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 36777
          mmTop = 11906
          mmWidth = 27136
          BandType = 3
          GroupNo = 1
        end
        object ppLabel811: TppLabel
          UserName = 'Label811'
          AutoSize = False
          Caption = 'Sit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 110861
          mmTop = 12171
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object ppLabel812: TppLabel
          UserName = 'Label812'
          AutoSize = False
          Caption = 'D.N.I.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 118004
          mmTop = 12171
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel813: TppLabel
          UserName = 'Label813'
          AutoSize = False
          Caption = 'Saldo Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 160073
          mmTop = 12171
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object ppLabel815: TppLabel
          UserName = 'Label815'
          AutoSize = False
          Caption = 'Ult.Aporte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 133086
          mmTop = 12171
          mmWidth = 12435
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
          DataField = 'CRESDOACT'
          DataPipeline = DbRepCtas
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup44
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepCtas'
          mmHeight = 3440
          mmLeft = 147109
          mmTop = 1058
          mmWidth = 28046
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc230: TppDBCalc
          UserName = 'DBCalc230'
          DataField = 'ASOID'
          DataPipeline = DbRepCtas
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
          DataPipelineName = 'DbRepCtas'
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
          mmLeft = 34661
          mmTop = 529
          mmWidth = 141288
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
end
