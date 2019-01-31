object FRepRes: TFRepRes
  Left = 152
  Top = 189
  BorderStyle = bsDialog
  Caption = 'Estadistica de Pagos cuenta recaudadora banco de cr'#233'dito'
  ClientHeight = 185
  ClientWidth = 333
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPagBcos: TPanel
    Left = 3
    Top = 2
    Width = 326
    Height = 178
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
      Width = 324
      Height = 22
      Align = alTop
      Alignment = taCenter
      Caption = 'Pagos en Banco seg'#250'n fecha de proceso'
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
      Left = 7
      Top = 85
      Width = 169
      Height = 87
      Caption = ' Seleccione Opci'#243'n '
      Items.Strings = (
        'Por fecha de proceso'
        'Por Fecha y Ofides'
        'Por Fecha de Registro'
        'Consolidado de Bancos')
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 232
      Top = 32
      Width = 78
      Height = 28
      Caption = 'Imprimir'
      TabOrder = 4
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 231
      Top = 64
      Width = 79
      Height = 28
      Caption = 'Cerrar'
      TabOrder = 5
      OnClick = BitBtn2Click
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
  end
  object ppBDEPReporte: TppBDEPipeline
    DataSource = DM1.dsQry
    UserName = 'BDEPReporte'
    Left = 184
    Top = 136
  end
  object ppreporte01: TppReport
    AutoStop = False
    DataPipeline = ppBDEPReporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = '215,9x330,2 mm (personalizado)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 122
    Template.FileName = 'C:\Users\jcastillop\Desktop\OOO.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 184
    Top = 104
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
        mmLeft = 7144
        mmTop = 28840
        mmWidth = 187061
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
        mmWidth = 164836
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
        Caption = 'POR FECHA DE PROCESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 76212
        mmTop = 21167
        mmWidth = 44958
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
        mmWidth = 19845
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
        mmWidth = 19845
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        mmHeight = 7673
        mmLeft = 160867
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
        mmLeft = 155840
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
        mmLeft = 151607
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
        mmLeft = 165629
        mmTop = 36513
        mmWidth = 18786
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 13494
        mmLeft = 150813
        mmTop = 28840
        mmWidth = 265
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label401'
        Caption = 'CRON. CERRADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 115359
        mmTop = 29633
        mmWidth = 32216
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 113506
        mmTop = 36513
        mmWidth = 3704
        BandType = 0
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        mmHeight = 7673
        mmLeft = 123561
        mmTop = 34925
        mmWidth = 265
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 126471
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
        mmLeft = 8202
        mmTop = 0
        mmWidth = 19579
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
        mmLeft = 151607
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
        mmLeft = 165629
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'C_CRO'
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
        mmLeft = 113506
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'M_CRO'
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
        mmLeft = 126471
        mmTop = 0
        mmWidth = 18785
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
        mmWidth = 186532
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
        mmLeft = 151607
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
        mmLeft = 165629
        mmTop = 1323
        mmWidth = 18785
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc22'
        DataField = 'C_CRO'
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
        mmLeft = 113506
        mmTop = 1323
        mmWidth = 10054
        BandType = 7
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
        DataField = 'M_CRO'
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
        mmLeft = 126471
        mmTop = 1323
        mmWidth = 18785
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppreporte03: TppReport
    AutoStop = False
    DataPipeline = ppBDEPReporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = '215,9x330,2 mm (personalizado)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 248
    Top = 104
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
        Caption = 'CREDITO PAGO EN CUENTA RECAUDARORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 15610
        mmWidth = 104511
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
    PrinterSetup.PaperName = '215,9x330,2 mm (personalizado)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 122
    Template.FileName = 'C:\Users\jcastillop\Desktop\PPPP.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 216
    Top = 104
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
        Caption = 'POR OFIDES SEGUN FECHA DE PROCESO DEL 12/12/2004 AL 12/12/2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 40219
        mmTop = 17992
        mmWidth = 123021
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
        mmLeft = 45773
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
        mmLeft = 80433
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
        mmLeft = 83079
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
        mmHeight = 7673
        mmLeft = 96838
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
        mmLeft = 83344
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
        mmLeft = 62442
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
        mmLeft = 98425
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
        mmHeight = 3969
        mmLeft = 160867
        mmTop = 26723
        mmWidth = 32279
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
        mmLeft = 160867
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
        mmLeft = 175419
        mmTop = 33338
        mmWidth = 13229
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 7408
        mmLeft = 173832
        mmTop = 32015
        mmWidth = 265
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 13229
        mmLeft = 122767
        mmTop = 26194
        mmWidth = 265
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape35'
        mmHeight = 13494
        mmLeft = 159279
        mmTop = 26194
        mmWidth = 265
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'CRON. CERRADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 125148
        mmTop = 26723
        mmWidth = 32216
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 125413
        mmTop = 33338
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 140494
        mmTop = 33338
        mmWidth = 13229
        BandType = 0
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        mmHeight = 7938
        mmLeft = 136790
        mmTop = 31750
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
        mmHeight = 4022
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
        mmLeft = 81756
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
        mmLeft = 160867
        mmTop = 0
        mmWidth = 11906
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
        mmHeight = 3969
        mmLeft = 61648
        mmTop = 0
        mmWidth = 17992
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
        mmHeight = 3969
        mmLeft = 98425
        mmTop = 0
        mmWidth = 22754
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
        mmHeight = 3969
        mmLeft = 175419
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'MONCRO'
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
        mmHeight = 3969
        mmLeft = 140494
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'CUECRO'
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
        mmHeight = 3969
        mmLeft = 125413
        mmTop = 0
        mmWidth = 11377
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
        mmHeight = 3969
        mmLeft = 81756
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
        mmHeight = 3969
        mmLeft = 160867
        mmTop = 1058
        mmWidth = 11642
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
        mmHeight = 3969
        mmLeft = 61648
        mmTop = 1058
        mmWidth = 17727
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
        mmHeight = 3969
        mmLeft = 98425
        mmTop = 1058
        mmWidth = 22225
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
        mmHeight = 3969
        mmLeft = 175419
        mmTop = 1058
        mmWidth = 17727
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
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc24'
        DataField = 'MONCRO'
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
        mmLeft = 140494
        mmTop = 1058
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc25'
        DataField = 'CUECRO'
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
        mmLeft = 125413
        mmTop = 1058
        mmWidth = 11377
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppreporte04: TppReport
    AutoStop = False
    DataPipeline = ppBDEReporte01
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = '215,9x330,2 mm (personalizado)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 122
    Template.FileName = 'C:\Users\jcastillop\Desktop\NUEVO.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 280
    Top = 104
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEReporte01'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object ppShape32: TppShape
        UserName = 'Shape32'
        mmHeight = 7673
        mmLeft = 132821
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label10'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 9790
        mmTop = 265
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label11'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 9790
        mmTop = 4498
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 136790
        mmTop = 265
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label13'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 136790
        mmTop = 4498
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 265
        mmWidth = 19844
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 4498
        mmWidth = 16669
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape6'
        mmHeight = 7673
        mmLeft = 18521
        mmTop = 26723
        mmWidth = 16139
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label18'
        Caption = 'Fecha de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 19050
        mmTop = 27252
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'DESCARGO DE LA CUENTA RECAUDADORA POR FECHA DE REGISTRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 27422
        mmTop = 15346
        mmWidth = 122428
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'POR OFIDES DEL 12/12/2004 AL 12/12/2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 52652
        mmTop = 19844
        mmWidth = 72231
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 19050
        mmTop = 30427
        mmWidth = 6879
        BandType = 0
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 7673
        mmLeft = 34396
        mmTop = 26723
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Fecha de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 34925
        mmTop = 27252
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Registro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 34925
        mmTop = 30427
        mmWidth = 13758
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 7673
        mmLeft = 50271
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 7673
        mmLeft = 70908
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape30'
        mmHeight = 7673
        mmLeft = 91546
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppShape31: TppShape
        UserName = 'Shape301'
        mmHeight = 7673
        mmLeft = 112184
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'Amortizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 51065
        mmTop = 28575
        mmWidth = 19314
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Interes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 71702
        mmTop = 28575
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 92340
        mmTop = 28575
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Exceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 112977
        mmTop = 28575
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 133615
        mmTop = 27252
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Pagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 133615
        mmTop = 30427
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Pagina : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 136790
        mmTop = 8731
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 8731
        mmWidth = 1323
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'FREG'
        DataPipeline = ppBDEReporte01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEReporte01'
        mmHeight = 3175
        mmLeft = 34396
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CREAMORT'
        DataPipeline = ppBDEReporte01
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEReporte01'
        mmHeight = 3175
        mmLeft = 50006
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'CREINTERES'
        DataPipeline = ppBDEReporte01
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEReporte01'
        mmHeight = 3175
        mmLeft = 70644
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText201'
        DataField = 'CREFLAT'
        DataPipeline = ppBDEReporte01
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEReporte01'
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CREMTOEXC'
        DataPipeline = ppBDEReporte01
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEReporte01'
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'CREMTOCOB'
        DataPipeline = ppBDEReporte01
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEReporte01'
        mmHeight = 3175
        mmLeft = 133615
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'BDEPSubReporte01'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5292
        mmWidth = 197115
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = BDEPSubReporte01
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = '215,9x330,2 mm (personalizado)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 209815
          PrinterSetup.PaperSize = 122
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'BDEPSubReporte01'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14023
            mmPrintPosition = 0
            object ppShape39: TppShape
              UserName = 'Shape39'
              mmHeight = 7673
              mmLeft = 25665
              mmTop = 6085
              mmWidth = 17991
              BandType = 1
            end
            object ppLabel66: TppLabel
              UserName = 'Label66'
              Caption = 'RESUMEN DE PAGOS EFECTUADOS POR FECHA DE REGISTRO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 24871
              mmTop = 794
              mmWidth = 122502
              BandType = 1
            end
            object ppLabel67: TppLabel
              UserName = 'Label67'
              Caption = 'A'#241'o y mes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 26458
              mmTop = 6615
              mmWidth = 16140
              BandType = 1
            end
            object ppLabel68: TppLabel
              UserName = 'Label501'
              Caption = 'Registro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 26458
              mmTop = 9790
              mmWidth = 14288
              BandType = 1
            end
            object ppShape40: TppShape
              UserName = 'Shape40'
              mmHeight = 7673
              mmLeft = 125942
              mmTop = 6085
              mmWidth = 20902
              BandType = 1
            end
            object ppShape41: TppShape
              UserName = 'Shape41'
              mmHeight = 7673
              mmLeft = 43392
              mmTop = 6085
              mmWidth = 20902
              BandType = 1
            end
            object ppShape42: TppShape
              UserName = 'Shape42'
              mmHeight = 7673
              mmLeft = 64029
              mmTop = 6085
              mmWidth = 20902
              BandType = 1
            end
            object ppShape43: TppShape
              UserName = 'Shape43'
              mmHeight = 7673
              mmLeft = 84667
              mmTop = 6085
              mmWidth = 20902
              BandType = 1
            end
            object ppShape44: TppShape
              UserName = 'Shape44'
              mmHeight = 7673
              mmLeft = 105304
              mmTop = 6085
              mmWidth = 20902
              BandType = 1
            end
            object ppLabel69: TppLabel
              UserName = 'Label601'
              Caption = 'Amortizaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 44186
              mmTop = 7673
              mmWidth = 19315
              BandType = 1
            end
            object ppLabel70: TppLabel
              UserName = 'Label70'
              Caption = 'Interes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 64823
              mmTop = 7673
              mmWidth = 12171
              BandType = 1
            end
            object ppLabel71: TppLabel
              UserName = 'Label71'
              Caption = 'Gasto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 85461
              mmTop = 7673
              mmWidth = 9790
              BandType = 1
            end
            object ppLabel72: TppLabel
              UserName = 'Label72'
              Caption = 'Exceso'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 106098
              mmTop = 7673
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel73: TppLabel
              UserName = 'Label73'
              Caption = 'Monto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 126736
              mmTop = 6615
              mmWidth = 9790
              BandType = 1
            end
            object ppLabel74: TppLabel
              UserName = 'Label74'
              Caption = 'Pagado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 126736
              mmTop = 9790
              mmWidth = 11377
              BandType = 1
            end
          end
          object ppDetailBand6: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText31: TppDBText
              UserName = 'DBText31'
              DataField = 'ANOMES'
              DataPipeline = BDEPSubReporte01
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3175
              mmLeft = 26458
              mmTop = 0
              mmWidth = 16140
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              DataField = 'CREAMORT'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3175
              mmLeft = 43392
              mmTop = 0
              mmWidth = 19314
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'CREINTERES'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3175
              mmLeft = 64029
              mmTop = 0
              mmWidth = 19314
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              DataField = 'CREFLAT'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3175
              mmLeft = 84667
              mmTop = 0
              mmWidth = 19314
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'CREMTOEXC'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3175
              mmLeft = 105304
              mmTop = 0
              mmWidth = 19314
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              DataField = 'CREMTOCOB'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3175
              mmLeft = 126736
              mmTop = 0
              mmWidth = 19314
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 10054
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line2'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 25665
              mmTop = 0
              mmWidth = 121179
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc17'
              DataField = 'CREAMORT'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3260
              mmLeft = 43392
              mmTop = 794
              mmWidth = 19315
              BandType = 7
            end
            object ppDBCalc18: TppDBCalc
              UserName = 'DBCalc18'
              DataField = 'CREINTERES'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3260
              mmLeft = 64029
              mmTop = 794
              mmWidth = 19315
              BandType = 7
            end
            object ppDBCalc19: TppDBCalc
              UserName = 'DBCalc19'
              DataField = 'CREFLAT'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3260
              mmLeft = 84667
              mmTop = 794
              mmWidth = 19315
              BandType = 7
            end
            object ppDBCalc20: TppDBCalc
              UserName = 'DBCalc20'
              DataField = 'CREMTOEXC'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3260
              mmLeft = 105304
              mmTop = 794
              mmWidth = 19315
              BandType = 7
            end
            object ppDBCalc21: TppDBCalc
              UserName = 'DBCalc201'
              DataField = 'CREMTOCOB'
              DataPipeline = BDEPSubReporte01
              DisplayFormat = '#,##0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPSubReporte01'
              mmHeight = 3260
              mmLeft = 126736
              mmTop = 794
              mmWidth = 19315
              BandType = 7
            end
            object ppLabel48: TppLabel
              UserName = 'Label48'
              Caption = 'Total :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 25665
              mmTop = 794
              mmWidth = 7916
              BandType = 7
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 25665
              mmTop = 4498
              mmWidth = 121179
              BandType = 7
            end
            object pplimpresopor: TppLabel
              UserName = 'limpresopor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 9789
              mmTop = 6879
              mmWidth = 81746
              BandType = 7
            end
          end
        end
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 794
        mmWidth = 20902
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'CREMTOCOB'
        DataPipeline = ppBDEReporte01
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEReporte01'
        mmHeight = 3175
        mmLeft = 133086
        mmTop = 1323
        mmWidth = 19315
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText35'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          AutoSize = True
          DataField = 'TIPO'
          DataPipeline = ppBDEReporte01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEReporte01'
          mmHeight = 4022
          mmLeft = 4233
          mmTop = 0
          mmWidth = 8255
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppShape23: TppShape
          UserName = 'Shape23'
          mmHeight = 4233
          mmLeft = 132027
          mmTop = 0
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'CREMTOCOB'
          DataPipeline = ppBDEReporte01
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEReporte01'
          mmHeight = 3175
          mmLeft = 133086
          mmTop = 529
          mmWidth = 19315
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'ppDBText18'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppShape25: TppShape
          UserName = 'Shape25'
          mmHeight = 4233
          mmLeft = 4233
          mmTop = 265
          mmWidth = 16140
          BandType = 3
          GroupNo = 1
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          AutoSize = True
          DataField = 'CREFPAG'
          DataPipeline = ppBDEReporte01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppBDEReporte01'
          mmHeight = 3260
          mmLeft = 4763
          mmTop = 794
          mmWidth = 13504
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppShape37: TppShape
          UserName = 'Shape37'
          mmHeight = 4233
          mmLeft = 132027
          mmTop = 265
          mmWidth = 20902
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc26: TppDBCalc
          UserName = 'DBCalc26'
          DataField = 'CREMTOCOB'
          DataPipeline = ppBDEReporte01
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEReporte01'
          mmHeight = 3175
          mmLeft = 132821
          mmTop = 794
          mmWidth = 19315
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object BDEPSubReporte01: TppBDEPipeline
    DataSource = DM1.dsReporte1
    UserName = 'BDEPSubReporte01'
    Left = 249
    Top = 136
  end
  object ppBDEReporte01: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'BDEReporte01'
    Left = 216
    Top = 137
  end
end
