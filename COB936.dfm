object fRepReprog: TfRepReprog
  Left = 84
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reporte De Reprogramados'
  ClientHeight = 78
  ClientWidth = 510
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 0
    Width = 501
    Height = 73
    Color = 10207162
    ParentColor = False
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 18
      Width = 75
      Height = 13
      Caption = 'Fecha De Inicio'
    end
    object Label1: TLabel
      Left = 120
      Top = 18
      Width = 64
      Height = 13
      Caption = 'Fecha De Fin'
    end
    object DtpFecIni: TDateTimePicker
      Left = 9
      Top = 33
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
      TabOrder = 0
    end
    object DtpFecFin: TDateTimePicker
      Left = 118
      Top = 33
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
    end
    object BitPrintCon: TBitBtn
      Left = 224
      Top = 26
      Width = 86
      Height = 28
      Hint = 'Imprimir Reporte Reprogramados'
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = BitPrintConClick
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
      Left = 411
      Top = 26
      Width = 86
      Height = 28
      Hint = 'Salir'
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
    object BitBtn1: TBitBtn
      Left = 319
      Top = 26
      Width = 86
      Height = 28
      Hint = 'Exportar a Excel'
      Caption = 'A Excel'
      TabOrder = 4
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
    object DBGrid: TDBGrid
      Left = 104
      Top = 8
      Width = 25
      Height = 40
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
  end
  object DbReprog: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'DbReprog'
    Left = 72
    Top = 8
  end
  object RepProg: TppReport
    AutoStop = False
    DataPipeline = DbReprog
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
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 40
    Top = 8
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbReprog'
    object ppHeaderBand28: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 28046
      mmPrintPosition = 0
      object Titulo01: TppLabel
        UserName = 'Titulo01'
        AutoSize = False
        Caption = 'REPROGRAMACION DE CRONOGRAMAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 14288
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel568: TppLabel
        UserName = 'Label568'
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
      object ppLabel569: TppLabel
        UserName = 'Label569'
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
      object ppLabel570: TppLabel
        UserName = 'Label570'
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
      object ppLabel571: TppLabel
        UserName = 'Label571'
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
      object ppLabel572: TppLabel
        UserName = 'Label572'
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
      object ppSystemVariable53: TppSystemVariable
        UserName = 'SystemVariable53'
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
      object ppSystemVariable54: TppSystemVariable
        UserName = 'SystemVariable302'
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
      object ppSystemVariable55: TppSystemVariable
        UserName = 'SystemVariable55'
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
      object ppLabel573: TppLabel
        UserName = 'Label573'
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
      object ppLabel574: TppLabel
        UserName = 'Label4002'
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
      object ppLabel575: TppLabel
        UserName = 'Label575'
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
      object Titulo02: TppLabel
        UserName = 'Titulo02'
        AutoSize = False
        Caption = 'DEL 01/01/2005  AL 31/01/2005'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 19844
        mmWidth = 198702
        BandType = 0
      end
    end
    object ppDetailBand30: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText241: TppDBText
        UserName = 'DBText241'
        DataField = 'USEID'
        DataPipeline = DbReprog
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbReprog'
        mmHeight = 3704
        mmLeft = 529
        mmTop = 0
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText242: TppDBText
        UserName = 'DBText242'
        DataField = 'ASOCODMOD'
        DataPipeline = DbReprog
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbReprog'
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText243: TppDBText
        UserName = 'DBText243'
        DataField = 'ASOAPENOM'
        DataPipeline = DbReprog
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbReprog'
        mmHeight = 3704
        mmLeft = 25665
        mmTop = 0
        mmWidth = 48419
        BandType = 4
      end
      object ppDBText244: TppDBText
        UserName = 'DBText244'
        DataField = 'CREFOTORG'
        DataPipeline = DbReprog
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbReprog'
        mmHeight = 3704
        mmLeft = 75142
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText245: TppDBText
        UserName = 'DBText245'
        DataField = 'CREMTOOTOR'
        DataPipeline = DbReprog
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbReprog'
        mmHeight = 3704
        mmLeft = 94192
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText246: TppDBText
        UserName = 'DBText246'
        DataField = 'TIPCREDES'
        DataPipeline = DbReprog
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbReprog'
        mmHeight = 3704
        mmLeft = 117740
        mmTop = 0
        mmWidth = 46302
        BandType = 4
      end
      object ppDBText247: TppDBText
        UserName = 'DBText247'
        DataField = 'NRONABO'
        DataPipeline = DbReprog
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbReprog'
        mmHeight = 3704
        mmLeft = 164571
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'USUARIO'
        DataPipeline = DbReprog
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbReprog'
        mmHeight = 3704
        mmLeft = 182827
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppFooterBand23: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand28: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel588: TppLabel
        UserName = 'Label588'
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 57415
        mmTop = 2381
        mmWidth = 10583
        BandType = 7
      end
      object ppDBCalc213: TppDBCalc
        UserName = 'DBCalc213'
        DataField = 'CREMTOOTOR'
        DataPipeline = DbReprog
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbReprog'
        mmHeight = 4233
        mmLeft = 94192
        mmTop = 2381
        mmWidth = 21697
        BandType = 7
      end
      object ppDBCalc214: TppDBCalc
        UserName = 'DBCalc214'
        DataField = 'ASOCODMOD'
        DataPipeline = DbReprog
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbReprog'
        mmHeight = 4233
        mmLeft = 119856
        mmTop = 2381
        mmWidth = 21696
        BandType = 7
      end
      object ppLabel589: TppLabel
        UserName = 'Label589'
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 2381
        mmWidth = 19050
        BandType = 7
      end
      object ppLine147: TppLine
        UserName = 'Line147'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 529
        mmWidth = 201877
        BandType = 7
      end
      object ppLine148: TppLine
        UserName = 'Line148'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 7938
        mmWidth = 201877
        BandType = 7
      end
    end
    object ppGroup38: TppGroup
      BreakName = 'DESCRIPCION'
      DataPipeline = DbReprog
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group38'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbReprog'
      object ppGroupHeaderBand38: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 20108
        mmPrintPosition = 0
        object ppDBText248: TppDBText
          UserName = 'DBText248'
          DataField = 'DESCRIPCION'
          DataPipeline = DbReprog
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbReprog'
          mmHeight = 3704
          mmLeft = 0
          mmTop = 1588
          mmWidth = 100542
          BandType = 3
          GroupNo = 0
        end
        object ppLabel577: TppLabel
          UserName = 'Label577'
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 13229
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
        end
        object ppLabel578: TppLabel
          UserName = 'Label578'
          Caption = 'Codigo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 6879
          mmTop = 8731
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel579: TppLabel
          UserName = 'Label579'
          Caption = 'Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 6879
          mmTop = 13229
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object ppLabel580: TppLabel
          UserName = 'Label580'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 26458
          mmTop = 13229
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
        end
        object ppLabel581: TppLabel
          UserName = 'Label581'
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 74877
          mmTop = 13494
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel582: TppLabel
          UserName = 'Label582'
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 105040
          mmTop = 8996
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel583: TppLabel
          UserName = 'Label583'
          Caption = 'Reprogramado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 90752
          mmTop = 13494
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
        end
        object ppLabel584: TppLabel
          UserName = 'Label584'
          Caption = 'Tipo De Prestamo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 117475
          mmTop = 13758
          mmWidth = 33867
          BandType = 3
          GroupNo = 0
        end
        object ppLabel585: TppLabel
          UserName = 'Label585'
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 164307
          mmTop = 13494
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLine136: TppLine
          UserName = 'Line136'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 18521
          mmWidth = 201877
          BandType = 3
          GroupNo = 0
        end
        object ppLine142: TppLine
          UserName = 'Line142'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 7673
          mmWidth = 201877
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Hecho Por'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 182563
          mmTop = 13494
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand38: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBCalc211: TppDBCalc
          UserName = 'DBCalc211'
          DataField = 'CREMTOOTOR'
          DataPipeline = DbReprog
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup38
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbReprog'
          mmHeight = 4233
          mmLeft = 94192
          mmTop = 1323
          mmWidth = 21697
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc212: TppDBCalc
          UserName = 'DBCalc212'
          DataField = 'ASOCODMOD'
          DataPipeline = DbReprog
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup38
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbReprog'
          mmHeight = 4233
          mmLeft = 119856
          mmTop = 1323
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
        object ppLabel586: TppLabel
          UserName = 'Label586'
          Caption = 'Registros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 143934
          mmTop = 1323
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
        end
        object ppLabel587: TppLabel
          UserName = 'Label587'
          Caption = 'Sub-Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 57150
          mmTop = 1323
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
        end
        object ppLine145: TppLine
          UserName = 'Line145'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 265
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
        object ppLine146: TppLine
          UserName = 'Line146'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 6615
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
