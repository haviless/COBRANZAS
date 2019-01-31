object fRepAtenReclamos: TfRepAtenReclamos
  Left = 207
  Top = 283
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Atenci'#243'n de Reclamos'
  ClientHeight = 148
  ClientWidth = 359
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
  object BitSalir: TBitBtn
    Left = 234
    Top = 117
    Width = 111
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 0
    OnClick = BitSalirClick
    Kind = bkClose
  end
  object BitPrint: TBitBtn
    Left = 115
    Top = 117
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 351
    Height = 61
    Caption = 'Fecha De Reclamo'
    TabOrder = 2
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
  object rdbSeleccion: TRadioGroup
    Left = 4
    Top = 67
    Width = 350
    Height = 41
    Caption = 'Resultados'
    Columns = 4
    Items.Strings = (
      'A Favor'
      'En Contra'
      'No Procede'
      'Todas')
    TabOrder = 3
  end
  object rpReclamos: TppReport
    AutoStop = False
    DataPipeline = dbReclamos
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
    Left = 48
    Top = 120
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbReclamos'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object Tit01: TppLabel
        UserName = 'Tit01'
        AutoSize = False
        Caption = 'ATENCION  DE  RECLAMOS  DEL  XX/XX/XXXX   AL   XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 19579
        mmWidth = 264848
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label9301'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 265
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Sistema De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 4763
        mmWidth = 29168
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 232834
        mmTop = 265
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 232834
        mmTop = 4763
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233098
        mmTop = 9260
        mmWidth = 10054
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
        mmLeft = 246328
        mmTop = 529
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
        mmLeft = 246063
        mmTop = 5292
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
        mmLeft = 246857
        mmTop = 9525
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 244475
        mmTop = 9260
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 244475
        mmTop = 4763
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 244475
        mmTop = 265
        mmWidth = 1588
        BandType = 0
      end
      object Tit02: TppLabel
        UserName = 'Tit02'
        AutoSize = False
        Caption = 'XX/XX/XXXX  - GENERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 24606
        mmWidth = 264584
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'RECIDE'
        DataPipeline = dbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbReclamos'
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 265
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'RECDNI'
        DataPipeline = dbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbReclamos'
        mmHeight = 3175
        mmLeft = 17727
        mmTop = 265
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'RECAPENOM'
        DataPipeline = dbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbReclamos'
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 265
        mmWidth = 56886
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'REC_DESC'
        DataPipeline = dbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbReclamos'
        mmHeight = 2879
        mmLeft = 92869
        mmTop = 529
        mmWidth = 79375
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'RECRECUSU'
        DataPipeline = dbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbReclamos'
        mmHeight = 3175
        mmLeft = 173832
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'FRECFECCON'
        DataPipeline = dbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbReclamos'
        mmHeight = 3175
        mmLeft = 202936
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'DES_TIPCON'
        DataPipeline = dbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbReclamos'
        mmHeight = 2879
        mmLeft = 220663
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'RECUSUCON'
        DataPipeline = dbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbReclamos'
        mmHeight = 3260
        mmLeft = 241300
        mmTop = 265
        mmWidth = 20108
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
      mmHeight = 15875
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 5292
        mmTop = 2117
        mmWidth = 189971
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Total General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 149225
        mmTop = 3440
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'RECIDE'
        DataPipeline = dbReclamos
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbReclamos'
        mmHeight = 3810
        mmLeft = 174096
        mmTop = 3440
        mmWidth = 17198
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 5292
        mmTop = 8202
        mmWidth = 189971
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'RECFECREC'
      DataPipeline = dbReclamos
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbReclamos'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 15346
        mmPrintPosition = 0
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'RECFECREC'
          DataPipeline = dbReclamos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbReclamos'
          mmHeight = 3440
          mmLeft = 5292
          mmTop = 3969
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          AutoSize = False
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 5292
          mmTop = 10054
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'D.N.I.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 18256
          mmTop = 10054
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 34396
          mmTop = 10319
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          AutoSize = False
          Caption = 'Tipo de Reclamos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 93663
          mmTop = 10319
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          AutoSize = False
          Caption = 'Usuario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 173832
          mmTop = 10319
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          AutoSize = False
          Caption = 'RESULTADOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 203200
          mmTop = 3440
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 203200
          mmTop = 10583
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          AutoSize = False
          Caption = 'Usuario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 241565
          mmTop = 10583
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          AutoSize = False
          Caption = 'Conclusi'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2910
          mmLeft = 221192
          mmTop = 10583
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4498
          mmTop = 8731
          mmWidth = 189971
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4498
          mmTop = 14023
          mmWidth = 189971
          BandType = 3
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 203200
          mmTop = 8202
          mmWidth = 59796
          BandType = 3
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 203200
          mmTop = 14288
          mmWidth = 59796
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 5027
          mmTop = 529
          mmWidth = 189971
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'RECIDE'
          DataPipeline = dbReclamos
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbReclamos'
          mmHeight = 3440
          mmLeft = 174361
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label201'
          AutoSize = False
          Caption = 'Total Por Dia  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 149490
          mmTop = 2117
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 5027
          mmTop = 6350
          mmWidth = 189971
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object dbReclamos: TppDBPipeline
    DataSource = DM1.dsDpto
    UserName = 'dbReclamos'
    Left = 48
    Top = 88
  end
end
