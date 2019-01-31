object FRepResCon: TFRepResCon
  Left = 239
  Top = 207
  BorderStyle = bsDialog
  Caption = 'Estadistica de Reporte'
  ClientHeight = 215
  ClientWidth = 308
  Color = 13165023
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
  object pnlPagBcos: TPanel
    Left = 3
    Top = 2
    Width = 303
    Height = 209
    Color = 13165023
    TabOrder = 0
    object Label4: TLabel
      Left = 5
      Top = 35
      Width = 71
      Height = 15
      Caption = 'Fecha Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 5
      Top = 58
      Width = 61
      Height = 15
      Caption = 'Fecha Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 301
      Height = 22
      Align = alTop
      Alignment = taCenter
      Caption = 'Pagos en Banco'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object dbdtpInicio: TwwDBDateTimePicker
      Left = 84
      Top = 35
      Width = 88
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object dbdtpFinal: TwwDBDateTimePicker
      Left = 84
      Top = 58
      Width = 88
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object rgOpcion: TRadioGroup
      Left = 8
      Top = 96
      Width = 169
      Height = 81
      Caption = ' Seleccione Opci'#243'n '
      Items.Strings = (
        'Por fecha de deposito'
        'Por Fecha y Odides'
        'Consolidado de Bancos')
      TabOrder = 3
    end
    object fcsbImprime: TfcShapeBtn
      Left = 223
      Top = 32
      Width = 41
      Height = 41
      Hint = 'Registro de depositos en Banco con verificaci'#243'n'
      Color = clBtnFace
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
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 4
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcsbImprimeClick
    end
    object fcsbCerrar: TfcShapeBtn
      Left = 223
      Top = 80
      Width = 41
      Height = 41
      Hint = 'Salir'
      Color = clBtnFace
      DitherColor = clWhite
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
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 5
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcsbCerrarClick
    end
  end
  object ppBDEPReporte: TppBDEPipeline
    DataSource = DM1.dsQry
    UserName = 'BDEPReporte'
    Left = 176
    Top = 32
  end
  object ppreporte01: TppReport
    AutoStop = False
    DataPipeline = ppBDEPReporte
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 176
    Top = 88
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPReporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43392
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 13758
        mmLeft = 7673
        mmTop = 28840
        mmWidth = 145786
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 9261
        mmTop = 31750
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DATOS DEL BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 29898
        mmWidth = 33338
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 13229
        mmLeft = 29369
        mmTop = 29104
        mmWidth = 265
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 13229
        mmLeft = 70908
        mmTop = 29104
        mmWidth = 265
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 265
        mmLeft = 29369
        mmTop = 34660
        mmWidth = 123825
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'DATOS REGISTRADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 29898
        mmWidth = 38629
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 7408
        mmLeft = 41540
        mmTop = 34925
        mmWidth = 265
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 7673
        mmLeft = 83079
        mmTop = 34660
        mmWidth = 265
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 30163
        mmTop = 36777
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 71702
        mmTop = 36777
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 44450
        mmTop = 36777
        mmWidth = 15347
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 86519
        mmTop = 36248
        mmWidth = 18786
        BandType = 0
      end
      object pplTitulo01: TppLabel
        UserName = 'lTitulo01'
        Caption = 'CUADRE DIARIO DE PAGOS EN CUENTA RECAUDADORA POR FECHA DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 30692
        mmTop = 15610
        mmWidth = 135996
        BandType = 0
      end
      object pplTitulo02: TppLabel
        UserName = 'lTitulo02'
        Caption = 'POR FECHA DE DEPOSITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 75895
        mmTop = 21167
        mmWidth = 45593
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 265
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3970
        mmTop = 4498
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 265
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 4498
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159015
        mmTop = 265
        mmWidth = 19844
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159015
        mmTop = 4498
        mmWidth = 16669
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        mmHeight = 7673
        mmLeft = 124090
        mmTop = 34660
        mmWidth = 265
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'REG. DE APORTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 115888
        mmTop = 29633
        mmWidth = 32216
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 13229
        mmLeft = 112448
        mmTop = 29104
        mmWidth = 265
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 114564
        mmTop = 36777
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 126736
        mmTop = 36513
        mmWidth = 18786
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'FECPAG'
        DataPipeline = ppBDEPReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 9261
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'M_BCO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 44450
        mmTop = 0
        mmWidth = 18786
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'C_BCO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 30163
        mmTop = 0
        mmWidth = 10053
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'M_CRE'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 86520
        mmTop = 0
        mmWidth = 18786
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'C_CRE'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 71702
        mmTop = 265
        mmWidth = 10053
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'C_APO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 114564
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'M_APO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 126736
        mmTop = 0
        mmWidth = 18786
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'M_BCO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 44450
        mmTop = 1323
        mmWidth = 18786
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'C_BCO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 30163
        mmTop = 1323
        mmWidth = 10053
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'M_CRE'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 86520
        mmTop = 1323
        mmWidth = 18786
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'C_CRE'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 71702
        mmTop = 1323
        mmWidth = 10053
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7673
        mmTop = 529
        mmWidth = 146844
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'C_APO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 114564
        mmTop = 1323
        mmWidth = 10054
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'M_APO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 126736
        mmTop = 1323
        mmWidth = 18786
        BandType = 7
      end
    end
  end
  object ppreporte03: TppReport
    AutoStop = False
    DataPipeline = ppBDEPReporte
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 176
    Top = 152
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPReporte'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'INFORMACION PROPORCIONADA POR EL BANCO DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 9790
        mmWidth = 104511
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'CONTINENTAL PAGO EN CUENTA RECAUDARORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 48786
        mmTop = 15610
        mmWidth = 86318
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 265
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 4498
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 265
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 4498
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159015
        mmTop = 265
        mmWidth = 19844
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159015
        mmTop = 4498
        mmWidth = 16669
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 7673
        mmLeft = 32278
        mmTop = 28046
        mmWidth = 117740
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'MES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 34131
        mmTop = 29898
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 74083
        mmTop = 30163
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 108744
        mmTop = 29633
        mmWidth = 15875
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 7673
        mmLeft = 71438
        mmTop = 28046
        mmWidth = 265
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 7673
        mmLeft = 98425
        mmTop = 28046
        mmWidth = 265
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'MES'
        DataPipeline = ppBDEPReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 34131
        mmTop = 0
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CANTIDAD'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 74083
        mmTop = 0
        mmWidth = 13495
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MONTO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 108744
        mmTop = 0
        mmWidth = 27780
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'CANTIDAD'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 74083
        mmTop = 1323
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'MONTO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3969
        mmLeft = 108744
        mmTop = 1323
        mmWidth = 27781
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 1323
        mmWidth = 22754
        BandType = 7
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 265
        mmLeft = 32278
        mmTop = 529
        mmWidth = 118269
        BandType = 7
      end
    end
  end
  object ppreporte02: TppReport
    AutoStop = False
    DataPipeline = ppBDEPReporte
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 176
    Top = 120
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPReporte'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'CUADRE DIARIO DE REGISTRO DE PAGOS EN CUENTA RECAUDADORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 36777
        mmTop = 12171
        mmWidth = 122598
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'POR OFIDES DEL 12/12/2004 AL 12/12/2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 65617
        mmTop = 17992
        mmWidth = 72221
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 1323
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 5556
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 163777
        mmTop = 1323
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 163777
        mmTop = 5556
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 174890
        mmTop = 1323
        mmWidth = 19844
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 174890
        mmTop = 5556
        mmWidth = 16669
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 13758
        mmLeft = 4233
        mmTop = 25929
        mmWidth = 191294
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'OFIDES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7673
        mmTop = 31750
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'DATOS DEL BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 52388
        mmTop = 26988
        mmWidth = 33338
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 13229
        mmLeft = 43921
        mmTop = 26194
        mmWidth = 265
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 13229
        mmLeft = 96573
        mmTop = 26194
        mmWidth = 265
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 265
        mmLeft = 43921
        mmTop = 31750
        mmWidth = 151342
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'DATOS REGISTRADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 102923
        mmTop = 26988
        mmWidth = 38629
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 7408
        mmLeft = 60854
        mmTop = 32015
        mmWidth = 265
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 7408
        mmLeft = 113242
        mmTop = 31750
        mmWidth = 265
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 44979
        mmTop = 33338
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 97896
        mmTop = 33338
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 66675
        mmTop = 33338
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 115888
        mmTop = 33338
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label301'
        Caption = 'INCONSISTENCIAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 154782
        mmTop = 26988
        mmWidth = 32216
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 149490
        mmTop = 33338
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 167746
        mmTop = 33338
        mmWidth = 13229
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 7408
        mmLeft = 165100
        mmTop = 32015
        mmWidth = 265
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 13229
        mmLeft = 148432
        mmTop = 26194
        mmWidth = 265
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'OFDESNOM'
        DataPipeline = ppBDEPReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 5027
        mmTop = 0
        mmWidth = 37835
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CUEBCO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 44979
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'CUEREG'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 97896
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CUEINC'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 149490
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText102'
        DataField = 'MONBCO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 66939
        mmTop = 0
        mmWidth = 25664
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'MONREG'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 120386
        mmTop = 0
        mmWidth = 25664
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'MONINC'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 168275
        mmTop = 0
        mmWidth = 25664
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 265
        mmLeft = 44450
        mmTop = 265
        mmWidth = 151342
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CUEBCO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 44979
        mmTop = 1058
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'CUEREG'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 97896
        mmTop = 1058
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'CUEINC'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 149490
        mmTop = 1058
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'MONBCO'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 66939
        mmTop = 1058
        mmWidth = 25664
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc101'
        DataField = 'MONREG'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 120386
        mmTop = 1058
        mmWidth = 25664
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'MONINC'
        DataPipeline = ppBDEPReporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 4021
        mmLeft = 168275
        mmTop = 1058
        mmWidth = 25664
        BandType = 7
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 265
        mmLeft = 44450
        mmTop = 5821
        mmWidth = 151342
        BandType = 7
      end
    end
  end
end
