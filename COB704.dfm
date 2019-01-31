object FToolRepresentante: TFToolRepresentante
  Left = 166
  Top = 518
  BorderIcons = [biMaximize]
  BorderStyle = bsSingle
  Caption = 'Representante'
  ClientHeight = 169
  ClientWidth = 804
  Color = 10207162
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTool: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblApeMat: TLabel
      Left = 182
      Top = 6
      Width = 107
      Height = 15
      Caption = 'Apellidos y Nombres '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object bbtnAceptar: TfcShapeBtn
      Left = 516
      Top = 20
      Width = 31
      Height = 31
      Hint = 'Guardar Datos del Asociado'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnAceptarClick
    end
    object edtRep: TEdit
      Left = 180
      Top = 27
      Width = 324
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object bbtnBoletas: TfcShapeBtn
      Left = 12
      Top = 20
      Width = 35
      Height = 35
      Hint = 'Boleta de Pago'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
        555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
        05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
        FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
        FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
        FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
        05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
        555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
        9055575757575757775505050505055505557575757575557555}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnBoletasClick
    end
    object bbtnCtaCte: TfcShapeBtn
      Left = 57
      Top = 20
      Width = 35
      Height = 35
      Hint = 'Cuenta Corriente'
      Color = clSilver
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCtaCteClick
    end
    object bbtnReporte: TfcShapeBtn
      Left = 108
      Top = 20
      Width = 35
      Height = 35
      Hint = 'Reporte'
      Color = 10207162
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnReporteClick
    end
    object rgReporte: TRadioGroup
      Left = 576
      Top = 1
      Width = 163
      Height = 58
      ItemIndex = 0
      Items.Strings = (
        'Reporte Supervisores'
        'Reporte Representantes')
      TabOrder = 5
    end
    object bbtnReportes: TfcShapeBtn
      Left = 764
      Top = 20
      Width = 31
      Height = 31
      Hint = 'Guardar Datos del Asociado'
      Color = 10207162
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 6
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnReportesClick
    end
  end
  object ppData: TppDBPipeline
    UserName = 'Data'
    Left = 40
    Top = 72
  end
  object ppRepres: TppReport
    AutoStop = False
    DataPipeline = ppData
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepRepre.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepresPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 112
    Top = 72
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppData'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41540
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 2117
        mmWidth = 37835
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 1852
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 7144
        mmWidth = 21167
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 12435
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 1852
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 7144
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165629
        mmTop = 12435
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Datos del Representante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 73554
        mmTop = 16933
        mmWidth = 55827
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 30692
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Representante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 13495
        mmTop = 30692
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Representaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 89694
        mmTop = 30692
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'D.N.I.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 146315
        mmTop = 30692
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Direcci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 13494
        mmTop = 35983
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Telefono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 178594
        mmTop = 30692
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 35983
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Provincia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 129382
        mmTop = 35983
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Distrito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 165100
        mmTop = 35983
        mmWidth = 10319
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'UPROID_1'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'UPRONOM'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 24342
        mmTop = 0
        mmWidth = 140494
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 265
        mmWidth = 202407
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataPipeline = ppData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppData'
        mmHeight = 3969
        mmLeft = 38100
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Total Representante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 1058
        mmWidth = 29633
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'REPRAPENOM'
      DataPipeline = ppData
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppData'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'REPRID'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 265
          mmTop = 1588
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'REPRAPENOM'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 13495
          mmTop = 1588
          mmWidth = 74613
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'FORREPRID'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 90223
          mmTop = 1588
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'FORREPRDES'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 98425
          mmTop = 1588
          mmWidth = 28046
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'REPRDNI'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 146315
          mmTop = 1588
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'REPRDIR'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 13494
          mmTop = 6085
          mmWidth = 81756
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'REPRTELF'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 178594
          mmTop = 1588
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'DPTODES'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 97367
          mmTop = 6085
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'CIUDDES'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 131498
          mmTop = 6085
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'ZIPDES'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 167217
          mmTop = 6085
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 265
          mmWidth = 202407
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataPipeline = ppData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppData'
          mmHeight = 3969
          mmLeft = 39688
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Total U. Procesos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 11642
          mmTop = 0
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDiseno: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppRepres
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 184
    Top = 72
  end
  object ppDBPSup: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'DBPSup'
    Left = 664
    Top = 72
    object ppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'ASOCODAUX'
      FieldName = 'ASOCODAUX'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'ASOAPEPAT'
      FieldName = 'ASOAPEPAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'ASOAPEMAT'
      FieldName = 'ASOAPEMAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'ASONOMBRES'
      FieldName = 'ASONOMBRES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'UPAGOID'
      FieldName = 'UPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'ASORESNOM'
      FieldName = 'ASORESNOM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'ASOFRESNOM'
      FieldName = 'ASOFRESNOM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'RESID'
      FieldName = 'RESID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'REGPENID'
      FieldName = 'REGPENID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'ASOSITID'
      FieldName = 'ASOSITID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppField17: TppField
      FieldAlias = 'ASOFACT'
      FieldName = 'ASOFACT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField18: TppField
      FieldAlias = 'ASOTIPID'
      FieldName = 'ASOTIPID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField19: TppField
      FieldAlias = 'VIAID'
      FieldName = 'VIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object ppField20: TppField
      FieldAlias = 'VIANOMBRE'
      FieldName = 'VIANOMBRE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object ppField21: TppField
      FieldAlias = 'ASONUMDIR'
      FieldName = 'ASONUMDIR'
      FieldLength = 5
      DisplayWidth = 5
      Position = 20
    end
    object ppField22: TppField
      FieldAlias = 'ASOFDPTO'
      FieldName = 'ASOFDPTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppField23: TppField
      FieldAlias = 'ASODPTO'
      FieldName = 'ASODPTO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 22
    end
    object ppField24: TppField
      FieldAlias = 'ZONAID'
      FieldName = 'ZONAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 23
    end
    object ppField25: TppField
      FieldAlias = 'ZONANOMB'
      FieldName = 'ZONANOMB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object ppField26: TppField
      FieldAlias = 'UBIGEOID'
      FieldName = 'UBIGEOID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 25
    end
    object ppField27: TppField
      FieldAlias = 'DPTOID'
      FieldName = 'DPTOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 26
    end
    object ppField28: TppField
      FieldAlias = 'PAISID'
      FieldName = 'PAISID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 27
    end
    object ppField29: TppField
      FieldAlias = 'REFDOM'
      FieldName = 'REFDOM'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppField30: TppField
      FieldAlias = 'ASOFECNAC'
      FieldName = 'ASOFECNAC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object ppField31: TppField
      FieldAlias = 'ASOTELF1'
      FieldName = 'ASOTELF1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppField32: TppField
      FieldAlias = 'ASOTELF2'
      FieldName = 'ASOTELF2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppField33: TppField
      FieldAlias = 'TIPDOCCOD'
      FieldName = 'TIPDOCCOD'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppField34: TppField
      FieldAlias = 'ASODOCNUM'
      FieldName = 'ASODOCNUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppField35: TppField
      FieldAlias = 'ASOLIBMIL'
      FieldName = 'ASOLIBMIL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 34
    end
    object ppField36: TppField
      FieldAlias = 'ASORUC'
      FieldName = 'ASORUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 35
    end
    object ppField37: TppField
      FieldAlias = 'ESTCIVID'
      FieldName = 'ESTCIVID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppField38: TppField
      FieldAlias = 'ASOSEXO'
      FieldName = 'ASOSEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 37
    end
    object ppField39: TppField
      FieldAlias = 'ASOEMAIL'
      FieldName = 'ASOEMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 38
    end
    object ppField40: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 39
    end
    object ppField41: TppField
      FieldAlias = 'ASONCTA'
      FieldName = 'ASONCTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppField42: TppField
      FieldAlias = 'SITCTA'
      FieldName = 'SITCTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppField43: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppField44: TppField
      FieldAlias = 'GRAACID'
      FieldName = 'GRAACID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 43
    end
    object ppField45: TppField
      FieldAlias = 'GRAINSID'
      FieldName = 'GRAINSID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 44
    end
    object ppField46: TppField
      FieldAlias = 'PROFID'
      FieldName = 'PROFID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 45
    end
    object ppField47: TppField
      FieldAlias = 'ASOFMOV'
      FieldName = 'ASOFMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object ppField48: TppField
      FieldAlias = 'ASOFLUGING'
      FieldName = 'ASOFLUGING'
      FieldLength = 1
      DisplayWidth = 1
      Position = 47
    end
    object ppField49: TppField
      FieldAlias = 'ASODIR'
      FieldName = 'ASODIR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 48
    end
    object ppField50: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 49
    end
    object ppField51: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 50
    end
    object ppField52: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object ppField53: TppField
      FieldAlias = 'ASOLUGEST'
      FieldName = 'ASOLUGEST'
      FieldLength = 90
      DisplayWidth = 90
      Position = 52
    end
    object ppField54: TppField
      FieldAlias = 'FECTEREST'
      FieldName = 'FECTEREST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object ppField55: TppField
      FieldAlias = 'TIEMPOEST'
      FieldName = 'TIEMPOEST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object ppField56: TppField
      FieldAlias = 'ASOLNACID'
      FieldName = 'ASOLNACID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 55
    end
    object ppField57: TppField
      FieldAlias = 'ASORESCESE'
      FieldName = 'ASORESCESE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 56
    end
    object ppField58: TppField
      FieldAlias = 'ASOFRESCESE'
      FieldName = 'ASOFRESCESE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 57
    end
    object ppField59: TppField
      FieldAlias = 'FGARANTE'
      FieldName = 'FGARANTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 58
    end
    object ppField60: TppField
      FieldAlias = 'ZIPID'
      FieldName = 'ZIPID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 59
    end
    object ppField61: TppField
      FieldAlias = 'CIUDID'
      FieldName = 'CIUDID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 60
    end
    object ppField62: TppField
      FieldAlias = 'ARCHIVOFTP'
      FieldName = 'ARCHIVOFTP'
      FieldLength = 12
      DisplayWidth = 12
      Position = 61
    end
    object ppField63: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object ppField64: TppField
      FieldAlias = 'FLAGVAR'
      FieldName = 'FLAGVAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 63
    end
    object ppField65: TppField
      FieldAlias = 'ASOAPNCRE'
      FieldName = 'ASOAPNCRE'
      FieldLength = 90
      DisplayWidth = 90
      Position = 64
    end
    object ppField66: TppField
      FieldAlias = 'FLGFSOL'
      FieldName = 'FLGFSOL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
  end
  object ppRepSup: TppReport
    AutoStop = False
    DataPipeline = ppDBPSup
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 228600
    PrinterSetup.PaperSize = 157
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\Supervisor.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepSupPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 744
    Top = 72
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPSup'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label1'
        Caption = 'REPORTE DE SUPERVISORES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 85461
        mmTop = 11906
        mmWidth = 38894
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 196586
        mmTop = 4498
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 196586
        mmTop = 8996
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 196586
        mmTop = 13494
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label2'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 4498
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label3'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 8996
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label201'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 13494
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label17'
        Caption = 'Ofic. Sup.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 3969
        mmTop = 29104
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = 'Nombre Auxiliar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 88900
        mmTop = 29104
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label20'
        Caption = 'Direcci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 135467
        mmTop = 29104
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label21'
        Caption = 'Tel'#233'fono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 182034
        mmTop = 29104
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label101'
        Caption = 'Fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 203994
        mmTop = 29104
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label18'
        Caption = 'Nombre Representante Supervisor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 11113
        mmLeft = 25665
        mmTop = 26988
        mmWidth = 21696
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 24871
        mmWidth = 214313
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 39423
        mmWidth = 214313
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'ofdesnom'
        DataPipeline = ppDBPSup
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPSup'
        mmHeight = 3703
        mmLeft = 0
        mmTop = 1058
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        DataField = 'REpresentante'
        DataPipeline = ppDBPSup
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPSup'
        mmHeight = 3704
        mmLeft = 19050
        mmTop = 1058
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        AutoSize = True
        DataField = 'AUXILIAR'
        DataPipeline = ppDBPSup
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPSup'
        mmHeight = 3704
        mmLeft = 83344
        mmTop = 1058
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        DataField = 'REPRDIR'
        DataPipeline = ppDBPSup
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPSup'
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 1058
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        DataField = 'REPRTELF'
        DataPipeline = ppDBPSup
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPSup'
        mmHeight = 3704
        mmLeft = 180975
        mmTop = 1058
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        AutoSize = True
        DataField = 'REPRFAX'
        DataPipeline = ppDBPSup
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPSup'
        mmHeight = 3704
        mmLeft = 200819
        mmTop = 1058
        mmWidth = 12435
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
      mmHeight = 11642
      mmPrintPosition = 0
      object ppLabel27: TppLabel
        UserName = 'Label26'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 3175
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'REPRESENTANTE'
        DataPipeline = ppDBPSup
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPSup'
        mmHeight = 3704
        mmLeft = 26723
        mmTop = 3175
        mmWidth = 38894
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 1058
        mmWidth = 214313
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 8996
        mmWidth = 214313
        BandType = 7
      end
    end
  end
  object ppRepRepre: TppReport
    AutoStop = False
    DataPipeline = ppDBPRepre
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\Representante.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepReprePreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 752
    Top = 120
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPRepre'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44715
      mmPrintPosition = 0
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'REPORTE DE REPRESENTANTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 69586
        mmTop = 11906
        mmWidth = 42863
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180975
        mmTop = 4498
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180975
        mmTop = 8996
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180975
        mmTop = 13494
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 162190
        mmTop = 4498
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 162190
        mmTop = 8996
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 162190
        mmTop = 13494
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Lug. Rep.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 794
        mmTop = 29104
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Direcci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 116417
        mmTop = 29104
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Cta. Ahorro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 160867
        mmTop = 29104
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label102'
        Caption = 'Tel'#233'fono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 181769
        mmTop = 29104
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 71967
        mmTop = 29104
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Nombre Representante Supervisor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 11113
        mmLeft = 22225
        mmTop = 29104
        mmWidth = 21696
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1588
        mmTop = 26194
        mmWidth = 200819
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 1588
        mmTop = 43127
        mmWidth = 200819
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Derrama Magisterial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 1323
        mmTop = 1588
        mmWidth = 50006
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'UPROID'
        DataPipeline = ppDBPRepre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRepre'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'REPRAPENOM'
        DataPipeline = ppDBPRepre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRepre'
        mmHeight = 3704
        mmLeft = 10054
        mmTop = 0
        mmWidth = 48419
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'BANCONOM'
        DataPipeline = ppDBPRepre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRepre'
        mmHeight = 3704
        mmLeft = 60061
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'REPRDIR'
        DataPipeline = ppDBPRepre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRepre'
        mmHeight = 3704
        mmLeft = 93663
        mmTop = 0
        mmWidth = 65088
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'REPRNCTA'
        DataPipeline = ppDBPRepre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRepre'
        mmHeight = 3704
        mmLeft = 159544
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'REPRTELF'
        DataPipeline = ppDBPRepre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRepre'
        mmHeight = 3704
        mmLeft = 183092
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppLabel38: TppLabel
        UserName = 'Label25'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 3704
        mmWidth = 9790
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'REPRAPENOM'
        DataPipeline = ppDBPRepre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPRepre'
        mmHeight = 3704
        mmLeft = 22490
        mmTop = 3704
        mmWidth = 17198
        BandType = 7
      end
      object ppLine9: TppLine
        UserName = 'Line7'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 1323
        mmWidth = 200819
        BandType = 7
      end
      object ppLine10: TppLine
        UserName = 'Line8'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 9260
        mmWidth = 200819
        BandType = 7
      end
    end
  end
  object ppDBPRepre: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'DBPRepre'
    Left = 664
    Top = 120
    object ppField67: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppField68: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppField69: TppField
      FieldAlias = 'ASOCODAUX'
      FieldName = 'ASOCODAUX'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppField70: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 3
    end
    object ppField71: TppField
      FieldAlias = 'ASOAPEPAT'
      FieldName = 'ASOAPEPAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppField72: TppField
      FieldAlias = 'ASOAPEMAT'
      FieldName = 'ASOAPEMAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppField73: TppField
      FieldAlias = 'ASONOMBRES'
      FieldName = 'ASONOMBRES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppField74: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 7
    end
    object ppField75: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object ppField76: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 9
    end
    object ppField77: TppField
      FieldAlias = 'UPAGOID'
      FieldName = 'UPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 10
    end
    object ppField78: TppField
      FieldAlias = 'ASORESNOM'
      FieldName = 'ASORESNOM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppField79: TppField
      FieldAlias = 'ASOFRESNOM'
      FieldName = 'ASOFRESNOM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppField80: TppField
      FieldAlias = 'RESID'
      FieldName = 'RESID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField81: TppField
      FieldAlias = 'REGPENID'
      FieldName = 'REGPENID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object ppField82: TppField
      FieldAlias = 'ASOSITID'
      FieldName = 'ASOSITID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppField83: TppField
      FieldAlias = 'ASOFACT'
      FieldName = 'ASOFACT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField84: TppField
      FieldAlias = 'ASOTIPID'
      FieldName = 'ASOTIPID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField85: TppField
      FieldAlias = 'VIAID'
      FieldName = 'VIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object ppField86: TppField
      FieldAlias = 'VIANOMBRE'
      FieldName = 'VIANOMBRE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object ppField87: TppField
      FieldAlias = 'ASONUMDIR'
      FieldName = 'ASONUMDIR'
      FieldLength = 5
      DisplayWidth = 5
      Position = 20
    end
    object ppField88: TppField
      FieldAlias = 'ASOFDPTO'
      FieldName = 'ASOFDPTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppField89: TppField
      FieldAlias = 'ASODPTO'
      FieldName = 'ASODPTO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 22
    end
    object ppField90: TppField
      FieldAlias = 'ZONAID'
      FieldName = 'ZONAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 23
    end
    object ppField91: TppField
      FieldAlias = 'ZONANOMB'
      FieldName = 'ZONANOMB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object ppField92: TppField
      FieldAlias = 'UBIGEOID'
      FieldName = 'UBIGEOID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 25
    end
    object ppField93: TppField
      FieldAlias = 'DPTOID'
      FieldName = 'DPTOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 26
    end
    object ppField94: TppField
      FieldAlias = 'PAISID'
      FieldName = 'PAISID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 27
    end
    object ppField95: TppField
      FieldAlias = 'REFDOM'
      FieldName = 'REFDOM'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppField96: TppField
      FieldAlias = 'ASOFECNAC'
      FieldName = 'ASOFECNAC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object ppField97: TppField
      FieldAlias = 'ASOTELF1'
      FieldName = 'ASOTELF1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppField98: TppField
      FieldAlias = 'ASOTELF2'
      FieldName = 'ASOTELF2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppField99: TppField
      FieldAlias = 'TIPDOCCOD'
      FieldName = 'TIPDOCCOD'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppField100: TppField
      FieldAlias = 'ASODOCNUM'
      FieldName = 'ASODOCNUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppField101: TppField
      FieldAlias = 'ASOLIBMIL'
      FieldName = 'ASOLIBMIL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 34
    end
    object ppField102: TppField
      FieldAlias = 'ASORUC'
      FieldName = 'ASORUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 35
    end
    object ppField103: TppField
      FieldAlias = 'ESTCIVID'
      FieldName = 'ESTCIVID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppField104: TppField
      FieldAlias = 'ASOSEXO'
      FieldName = 'ASOSEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 37
    end
    object ppField105: TppField
      FieldAlias = 'ASOEMAIL'
      FieldName = 'ASOEMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 38
    end
    object ppField106: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 39
    end
    object ppField107: TppField
      FieldAlias = 'ASONCTA'
      FieldName = 'ASONCTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppField108: TppField
      FieldAlias = 'SITCTA'
      FieldName = 'SITCTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppField109: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppField110: TppField
      FieldAlias = 'GRAACID'
      FieldName = 'GRAACID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 43
    end
    object ppField111: TppField
      FieldAlias = 'GRAINSID'
      FieldName = 'GRAINSID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 44
    end
    object ppField112: TppField
      FieldAlias = 'PROFID'
      FieldName = 'PROFID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 45
    end
    object ppField113: TppField
      FieldAlias = 'ASOFMOV'
      FieldName = 'ASOFMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object ppField114: TppField
      FieldAlias = 'ASOFLUGING'
      FieldName = 'ASOFLUGING'
      FieldLength = 1
      DisplayWidth = 1
      Position = 47
    end
    object ppField115: TppField
      FieldAlias = 'ASODIR'
      FieldName = 'ASODIR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 48
    end
    object ppField116: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 49
    end
    object ppField117: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 50
    end
    object ppField118: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object ppField119: TppField
      FieldAlias = 'ASOLUGEST'
      FieldName = 'ASOLUGEST'
      FieldLength = 90
      DisplayWidth = 90
      Position = 52
    end
    object ppField120: TppField
      FieldAlias = 'FECTEREST'
      FieldName = 'FECTEREST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object ppField121: TppField
      FieldAlias = 'TIEMPOEST'
      FieldName = 'TIEMPOEST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object ppField122: TppField
      FieldAlias = 'ASOLNACID'
      FieldName = 'ASOLNACID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 55
    end
    object ppField123: TppField
      FieldAlias = 'ASORESCESE'
      FieldName = 'ASORESCESE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 56
    end
    object ppField124: TppField
      FieldAlias = 'ASOFRESCESE'
      FieldName = 'ASOFRESCESE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 57
    end
    object ppField125: TppField
      FieldAlias = 'FGARANTE'
      FieldName = 'FGARANTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 58
    end
    object ppField126: TppField
      FieldAlias = 'ZIPID'
      FieldName = 'ZIPID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 59
    end
    object ppField127: TppField
      FieldAlias = 'CIUDID'
      FieldName = 'CIUDID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 60
    end
    object ppField128: TppField
      FieldAlias = 'ARCHIVOFTP'
      FieldName = 'ARCHIVOFTP'
      FieldLength = 12
      DisplayWidth = 12
      Position = 61
    end
    object ppField129: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object ppField130: TppField
      FieldAlias = 'FLAGVAR'
      FieldName = 'FLAGVAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 63
    end
    object ppField131: TppField
      FieldAlias = 'ASOAPNCRE'
      FieldName = 'ASOAPNCRE'
      FieldLength = 90
      DisplayWidth = 90
      Position = 64
    end
    object ppField132: TppField
      FieldAlias = 'FLGFSOL'
      FieldName = 'FLGFSOL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
  end
end
