object fCobPorcPer: TfCobPorcPer
  Left = 367
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cobranza Porcentual (%)  Por Periodos'
  ClientHeight = 116
  ClientWidth = 275
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 264
    Height = 61
    Caption = 'Fecha '
    TabOrder = 0
    object Label1: TLabel
      Left = 137
      Top = 16
      Width = 14
      Height = 13
      Caption = 'Fin'
    end
    object Label3: TLabel
      Left = 13
      Top = 15
      Width = 25
      Height = 13
      Caption = 'Inicio'
    end
    object DtpFecIni: TDateTimePicker
      Left = 12
      Top = 29
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
      Left = 135
      Top = 29
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
  object BitPrint: TBitBtn
    Left = 25
    Top = 77
    Width = 111
    Height = 27
    Cursor = crHandPoint
    Caption = 'Imprimir'
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
    Left = 150
    Top = 77
    Width = 111
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 2
    OnClick = BitSalirClick
    Kind = bkClose
  end
  object rpCobPorc: TppReport
    AutoStop = False
    DataPipeline = dbCobPorc
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 48
    Top = 72
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbCobPorc'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLabel28: TppLabel
        UserName = 'Label9302'
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
      object ppLabel29: TppLabel
        UserName = 'Label29'
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
      object ppLabel30: TppLabel
        UserName = 'Label30'
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
      object ppLabel31: TppLabel
        UserName = 'Label31'
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
      object ppLabel32: TppLabel
        UserName = 'Label32'
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
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
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
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
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
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
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
      object ppLabel33: TppLabel
        UserName = 'Label33'
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
      object ppLabel34: TppLabel
        UserName = 'Label34'
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
      object ppLabel35: TppLabel
        UserName = 'Label35'
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
      object Titulo: TppLabel
        UserName = 'Titulo'
        AutoSize = False
        Caption = 
          'DETALLE DE REGISTROS POR COBRANZA PORCENTUAL DEL XX/XX/XXXX  AL ' +
          ' XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 16933
        mmWidth = 198702
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = dbCobPorc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCobPorc'
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 529
        mmWidth = 54769
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'NUMERO'
        DataPipeline = dbCobPorc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCobPorc'
        mmHeight = 3175
        mmLeft = 62177
        mmTop = 529
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CRECUOTA'
        DataPipeline = dbCobPorc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbCobPorc'
        mmHeight = 3175
        mmLeft = 83608
        mmTop = 529
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CRESALDO'
        DataPipeline = dbCobPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbCobPorc'
        mmHeight = 3175
        mmLeft = 90752
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'PORENVIO'
        DataPipeline = dbCobPorc
        DisplayFormat = '##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbCobPorc'
        mmHeight = 3175
        mmLeft = 108479
        mmTop = 529
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CREMONENV'
        DataPipeline = dbCobPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbCobPorc'
        mmHeight = 3175
        mmLeft = 117740
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CREESTADO'
        DataPipeline = dbCobPorc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCobPorc'
        mmHeight = 2910
        mmLeft = 135202
        mmTop = 794
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText102'
        DataField = 'FECANU'
        DataPipeline = dbCobPorc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCobPorc'
        mmHeight = 2910
        mmLeft = 175155
        mmTop = 794
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'USUANU'
        DataPipeline = dbCobPorc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbCobPorc'
        mmHeight = 2910
        mmLeft = 153459
        mmTop = 794
        mmWidth = 19844
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 4233
        mmTop = 794
        mmWidth = 196057
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 4233
        mmTop = 8996
        mmWidth = 196057
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'ASOID'
        DataPipeline = dbCobPorc
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbCobPorc'
        mmHeight = 3387
        mmLeft = 154782
        mmTop = 2910
        mmWidth = 22225
        BandType = 7
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Total General  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 130567
        mmTop = 2910
        mmWidth = 19685
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'FECHA'
      DataPipeline = dbCobPorc
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbCobPorc'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 13758
        mmPrintPosition = 0
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'FECHA'
          DataPipeline = dbCobPorc
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbCobPorc'
          mmHeight = 3810
          mmLeft = 6085
          mmTop = 2117
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4498
          mmTop = 6615
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4498
          mmTop = 12435
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
        end
        object ppLabel38: TppLabel
          UserName = 'Label38'
          Caption = 'Apellidos y Nombres    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 6085
          mmTop = 8731
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
        end
        object ppLabel39: TppLabel
          UserName = 'Label39'
          Caption = 'N'#250'mero de Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 61383
          mmTop = 8467
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 83873
          mmTop = 8467
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label401'
          Caption = 'Cuota Normal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 91546
          mmTop = 8467
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label402'
          Caption = '% '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3387
          mmLeft = 111390
          mmTop = 7938
          mmWidth = 3302
          BandType = 3
          GroupNo = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Cuota Envio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 119063
          mmTop = 8731
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Estado  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 135467
          mmTop = 8731
          mmWidth = 8975
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'Anulado Por'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 153988
          mmTop = 8467
          mmWidth = 13462
          BandType = 3
          GroupNo = 0
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Caption = 'Fecha y Hora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 174625
          mmTop = 8467
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLine13: TppLine
          UserName = 'Line13'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 5027
          mmTop = 529
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'ASOID'
          DataPipeline = dbCobPorc
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbCobPorc'
          mmHeight = 3387
          mmLeft = 155046
          mmTop = 2381
          mmWidth = 22225
          BandType = 5
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          Caption = 'Total Por Dia     '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 130631
          mmTop = 2646
          mmWidth = 21505
          BandType = 5
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 5027
          mmTop = 7408
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object dbCobPorc: TppDBPipeline
    DataSource = DM1.dsDpto
    UserName = 'dbCobPorc'
    Left = 8
    Top = 72
    object dbCobPorcppField1: TppField
      FieldAlias = 'FECHA'
      FieldName = 'FECHA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 0
    end
    object dbCobPorcppField2: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object dbCobPorcppField3: TppField
      FieldAlias = 'CREDID'
      FieldName = 'CREDID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object dbCobPorcppField4: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 13
      DisplayWidth = 13
      Position = 3
    end
    object dbCobPorcppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRECUOTA'
      FieldName = 'CRECUOTA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 13
      Position = 4
    end
    object dbCobPorcppField6: TppField
      FieldAlias = 'ASOAPENOMDNI'
      FieldName = 'ASOAPENOMDNI'
      FieldLength = 90
      DisplayWidth = 90
      Position = 5
    end
    object dbCobPorcppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRESALDO'
      FieldName = 'CRESALDO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 13
      Position = 6
    end
    object dbCobPorcppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORENVIO'
      FieldName = 'PORENVIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 11
      Position = 7
    end
    object dbCobPorcppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREMONENV'
      FieldName = 'CREMONENV'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 13
      Position = 8
    end
    object dbCobPorcppField10: TppField
      FieldAlias = 'CREESTID'
      FieldName = 'CREESTID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object dbCobPorcppField11: TppField
      FieldAlias = 'CREESTADO'
      FieldName = 'CREESTADO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object dbCobPorcppField12: TppField
      FieldAlias = 'CREFVEN'
      FieldName = 'CREFVEN'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 11
    end
    object dbCobPorcppField13: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object dbCobPorcppField14: TppField
      FieldAlias = 'USUANU'
      FieldName = 'USUANU'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object dbCobPorcppField15: TppField
      FieldAlias = 'FECANU'
      FieldName = 'FECANU'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 14
    end
  end
end
