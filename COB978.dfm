object FRepAnuIngLote: TFRepAnuIngLote
  Left = 320
  Top = 402
  BorderStyle = bsDialog
  Caption = 'Reporte Anulaci'#243'n Ingreso en Lote'
  ClientHeight = 184
  ClientWidth = 379
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = 5
    Width = 370
    Height = 50
    Caption = 'Fecha de Anulaci'#243'n :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 189
      Top = 22
      Width = 76
      Height = 16
      Caption = 'Fecha Final :'
    end
    object Label1: TLabel
      Left = 10
      Top = 22
      Width = 78
      Height = 16
      Caption = 'Fecha Inicial:'
    end
    object dbdtpInicio: TwwDBDateTimePicker
      Left = 91
      Top = 18
      Width = 89
      Height = 24
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object dbdtpFinal: TwwDBDateTimePicker
      Left = 268
      Top = 18
      Width = 89
      Height = 24
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
  end
  object gbFiltro: TGroupBox
    Left = 4
    Top = 61
    Width = 370
    Height = 71
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 14
      Width = 36
      Height = 13
      Caption = 'Upro.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 43
      Width = 39
      Height = 13
      Caption = 'Upag.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblUpro: TwwDBLookupCombo
      Left = 45
      Top = 13
      Width = 45
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPROID'#9'4'#9'ID'#9'F'
        'UPRONOM'#9'30'#9'Nombre'#9'F')
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblUproChange
      OnExit = dblUproExit
    end
    object edtUpro: TEdit
      Left = 95
      Top = 13
      Width = 266
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object dblUpago: TwwDBLookupCombo
      Left = 45
      Top = 41
      Width = 44
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPAGOID'#9'4'#9'ID'#9'F'
        'UPAGONOM'#9'30'#9'Nombre'#9'F')
      Enabled = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblUpagoChange
      OnExit = dblUpagoExit
    end
    object edtUpag: TEdit
      Left = 95
      Top = 41
      Width = 266
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
  end
  object btnImprimir: TBitBtn
    Left = 202
    Top = 146
    Width = 81
    Height = 31
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = btnImprimirClick
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
  object BtnCancelar: TBitBtn
    Left = 293
    Top = 146
    Width = 81
    Height = 31
    Caption = 'Salir'
    TabOrder = 3
    OnClick = BtnCancelarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object RepAnulacion: TppReport
    AutoStop = False
    DataPipeline = ppBDEP1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 127
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 64
    Top = 144
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEP1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31750
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 24871
        mmWidth = 195263
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'REPORTE DE ANULACION DE INGRESO EN LOTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 48948
        mmTop = 8731
        mmWidth = 98425
        BandType = 0
      end
      object ppLFecha2: TppLabel
        UserName = 'LFecha2'
        Caption = 'Fechas de Anulaci'#243'n del XX/XX/XXXX al XX/XX/XXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 57415
        mmTop = 14288
        mmWidth = 80137
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 529
        mmTop = 0
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 2117
        mmTop = 4498
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Fecha   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 164836
        mmTop = 1588
        mmWidth = 12446
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'Hora     :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 164836
        mmTop = 5821
        mmWidth = 12234
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 164836
        mmTop = 9790
        mmWidth = 12435
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 178594
        mmTop = 1588
        mmWidth = 16669
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 178594
        mmTop = 5556
        mmWidth = 12965
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 178859
        mmTop = 9525
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Cod.Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2117
        mmTop = 26194
        mmWidth = 19473
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 24342
        mmTop = 26194
        mmWidth = 31496
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 87842
        mmTop = 26194
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 100806
        mmTop = 26194
        mmWidth = 10202
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cuota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 113242
        mmTop = 26194
        mmWidth = 9017
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'N.Operc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 123825
        mmTop = 26194
        mmWidth = 13250
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'F.Operc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 139965
        mmTop = 26194
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 157692
        mmTop = 26194
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'F.Anula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 176477
        mmTop = 26194
        mmWidth = 11642
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'asocodmod'
        DataPipeline = ppBDEP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'asoapenom'
        DataPipeline = ppBDEP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3260
        mmLeft = 19315
        mmTop = 265
        mmWidth = 64294
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'transapo'
        DataPipeline = ppBDEP1
        DisplayFormat = '##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3260
        mmLeft = 101071
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'transcuo'
        DataPipeline = ppBDEP1
        DisplayFormat = '##,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3260
        mmLeft = 109538
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'transano'
        DataPipeline = ppBDEP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3260
        mmLeft = 86784
        mmTop = 265
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'transmes'
        DataPipeline = ppBDEP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3260
        mmLeft = 94721
        mmTop = 265
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'usuanu'
        DataPipeline = ppBDEP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3260
        mmLeft = 156104
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'transnope'
        DataPipeline = ppBDEP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3260
        mmLeft = 124090
        mmTop = 265
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'transfope'
        DataPipeline = ppBDEP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3260
        mmLeft = 141023
        mmTop = 265
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'fecanu'
        DataPipeline = ppBDEP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 265
        mmWidth = 21960
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Total General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 23548
        mmTop = 1323
        mmWidth = 20362
        BandType = 8
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'transapo'
        DataPipeline = ppBDEP1
        DisplayFormat = '##,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3440
        mmLeft = 96838
        mmTop = 1588
        mmWidth = 10583
        BandType = 8
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'transcuo'
        DataPipeline = ppBDEP1
        DisplayFormat = '##,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEP1'
        mmHeight = 3440
        mmLeft = 109538
        mmTop = 1588
        mmWidth = 12965
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 529
        mmWidth = 195263
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText1'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'Uproid'
          DataPipeline = ppBDEP1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3810
          mmLeft = 265
          mmTop = 1323
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'Upronom'
          DataPipeline = ppBDEP1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3810
          mmLeft = 7673
          mmTop = 1323
          mmWidth = 101336
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Total por Unidad de Proceso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 23813
          mmTop = 1588
          mmWidth = 43392
          BandType = 5
          GroupNo = 0
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'Uproid'
          DataPipeline = ppBDEP1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3704
          mmLeft = 68527
          mmTop = 1588
          mmWidth = 6879
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'transapo'
          DataPipeline = ppBDEP1
          DisplayFormat = '##,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3440
          mmLeft = 97102
          mmTop = 1852
          mmWidth = 10583
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'transcuo'
          DataPipeline = ppBDEP1
          DisplayFormat = '##,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3440
          mmLeft = 109538
          mmTop = 1852
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 794
          mmWidth = 195263
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText3'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'Upagoid'
          DataPipeline = ppBDEP1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3810
          mmLeft = 1323
          mmTop = 1058
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'Upagonom'
          DataPipeline = ppBDEP1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3810
          mmLeft = 8731
          mmTop = 1058
          mmWidth = 97896
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Total por Unidad de Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 23813
          mmTop = 1852
          mmWidth = 38629
          BandType = 5
          GroupNo = 1
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'Upagoid'
          DataPipeline = ppBDEP1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3704
          mmLeft = 63500
          mmTop = 1852
          mmWidth = 6879
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'transapo'
          DataPipeline = ppBDEP1
          DisplayFormat = '##,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3440
          mmLeft = 97367
          mmTop = 1852
          mmWidth = 10583
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'transcuo'
          DataPipeline = ppBDEP1
          DisplayFormat = '##,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEP1'
          mmHeight = 3440
          mmLeft = 109538
          mmTop = 1852
          mmWidth = 12965
          BandType = 5
          GroupNo = 1
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 1058
          mmWidth = 195263
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object ppBDEP1: TppBDEPipeline
    UserName = 'BDEP1'
    Left = 32
    Top = 144
  end
end
