object fResBancos: TfResBancos
  Left = 832
  Top = 335
  BorderStyle = bsDialog
  Caption = 'Cuotas Pagadas por Banco (Resumen)'
  ClientHeight = 222
  ClientWidth = 404
  Color = 10207162
  Constraints.MaxHeight = 260
  Constraints.MaxWidth = 420
  Constraints.MinHeight = 260
  Constraints.MinWidth = 420
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
  object BitPrint: TBitBtn
    Left = 140
    Top = 190
    Width = 79
    Height = 27
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    TabOrder = 0
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
  object BitBtn1: TBitBtn
    Left = 224
    Top = 190
    Width = 86
    Height = 27
    Hint = 'Exportar a Excel'
    Caption = 'A Excel'
    TabOrder = 1
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
  object BitSalir: TBitBtn
    Left = 315
    Top = 190
    Width = 79
    Height = 26
    Caption = '&Salir'
    TabOrder = 2
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
  object GroupBox1: TGroupBox
    Left = 7
    Top = 56
    Width = 389
    Height = 68
    Caption = 'Rango de fechas'
    TabOrder = 3
    object Label1: TLabel
      Left = 256
      Top = 18
      Width = 14
      Height = 13
      Caption = 'Fin'
    end
    object Label3: TLabel
      Left = 109
      Top = 18
      Width = 25
      Height = 13
      Caption = 'Inicio'
    end
    object DtpFecIni: TDateTimePicker
      Left = 74
      Top = 31
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
      Left = 212
      Top = 31
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 385
    Height = 42
    Color = 10207162
    TabOrder = 4
    object rdbFechaRegistro: TRadioButton
      Left = 26
      Top = 14
      Width = 113
      Height = 17
      Caption = 'Fecha de Registro'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rdbFechaOperacion: TRadioButton
      Left = 235
      Top = 14
      Width = 121
      Height = 17
      Caption = 'Fecha de Operaci'#243'n'
      TabOrder = 1
    end
  end
  object rgTipo: TRadioGroup
    Left = 9
    Top = 129
    Width = 388
    Height = 48
    Caption = 'Docentes'
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Activos'
      'Cesantes'
      'Contratados')
    TabOrder = 5
  end
  object DBGrid: TDBGrid
    Left = 344
    Top = 69
    Width = 33
    Height = 41
    DataSource = DM1.dsCambios
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object ppdb1: TppDBPipeline
    UserName = 'db1'
    Left = 8
    Top = 184
  end
  object ppr1: TppReport
    AutoStop = False
    DataPipeline = ppdb1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\hnoriega\Desktop\sss.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 40
    Top = 184
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'TITULO'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4657
        mmLeft = 51552
        mmTop = 3175
        mmWidth = 86868
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        Caption = 'COB918B'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2921
        mmLeft = 16044
        mmTop = 8996
        mmWidth = 11303
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label3'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 162190
        mmTop = 4763
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label4'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 9260
        mmWidth = 5027
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 4763
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 174096
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label203'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 265
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 4763
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 9260
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'RANGO'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4763
        mmLeft = 69321
        mmTop = 8467
        mmWidth = 51594
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 10319
        mmLeft = 265
        mmTop = 19315
        mmWidth = 189971
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label5'
        Caption = 'DEPARTAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 22754
        mmWidth = 26162
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label6'
        Caption = 'UNIDAD DE PROCESO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 39083
        mmTop = 23283
        mmWidth = 34290
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label7'
        Caption = 'UGEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 103188
        mmTop = 22490
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label8'
        Caption = '#'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 158486
        mmTop = 20373
        mmWidth = 1778
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label9'
        Caption = 'IMPORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 173302
        mmTop = 23019
        mmWidth = 14478
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label10'
        Caption = 'REGISTROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 150019
        mmTop = 24606
        mmWidth = 18669
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'TITULO2'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 78581
        mmTop = 14288
        mmWidth = 33073
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'USEID'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 101865
        mmTop = 794
        mmWidth = 3471
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 167217
        mmTop = 794
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'REGISTROS'
        DataPipeline = ppdb1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 149754
        mmTop = 794
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'USENOM'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 107686
        mmTop = 794
        mmWidth = 39952
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'UPROID'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 35190
        mmTop = 794
        mmWidth = 5038
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'UPRONOM'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 43127
        mmTop = 794
        mmWidth = 52388
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'DPTOID'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 794
        mmWidth = 3133
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DPTODES'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 6615
        mmTop = 794
        mmWidth = 24606
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 34131
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 265
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 100277
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 187855
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 265
        mmTop = 0
        mmWidth = 2910
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 187325
        mmTop = 0
        mmWidth = 2910
        BandType = 7
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 8731
        mmWidth = 189971
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label11'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 35719
        mmTop = 2910
        mmWidth = 29422
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        DataField = 'REGISTROS'
        DataPipeline = ppdb1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 138377
        mmTop = 3175
        mmWidth = 26035
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 166423
        mmTop = 3175
        mmWidth = 22490
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DPTOID'
      DataPipeline = ppdb1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 529
        mmPrintPosition = 0
        object ppLine8: TppLine
          UserName = 'Line8'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 264
          mmWidth = 190236
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10319
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTOCOB'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3175
          mmLeft = 167217
          mmTop = 3704
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          AutoSize = True
          DataField = 'REGISTROS'
          DataPipeline = ppdb1
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 138377
          mmTop = 3704
          mmWidth = 26035
          BandType = 5
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'DPTODES'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3175
          mmLeft = 71967
          mmTop = 3704
          mmWidth = 29369
          BandType = 5
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'TOTAL DEPARTAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3260
          mmLeft = 35719
          mmTop = 3704
          mmWidth = 32724
          BandType = 5
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10319
          mmLeft = 265
          mmTop = 0
          mmWidth = 2910
          BandType = 5
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 10583
          mmLeft = 187325
          mmTop = 0
          mmWidth = 2910
          BandType = 5
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 529
          mmTop = 8467
          mmWidth = 189442
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'UPROID'
      DataPipeline = ppdb1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREMTOCOB'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3175
          mmLeft = 167217
          mmTop = 2646
          mmWidth = 21696
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          AutoSize = True
          DataField = 'REGISTROS'
          DataPipeline = ppdb1
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 138377
          mmTop = 2646
          mmWidth = 26035
          BandType = 5
          GroupNo = 1
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          AutoSize = True
          DataField = 'UPROID'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 122502
          mmTop = 2910
          mmWidth = 5038
          BandType = 5
          GroupNo = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'TOTAL UPRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3260
          mmLeft = 101600
          mmTop = 2910
          mmWidth = 17780
          BandType = 5
          GroupNo = 1
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 34396
          mmTop = 6350
          mmWidth = 155575
          BandType = 5
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8467
          mmLeft = 34131
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8467
          mmLeft = 265
          mmTop = 0
          mmWidth = 2910
          BandType = 5
          GroupNo = 1
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 100542
          mmTop = 0
          mmWidth = 89429
          BandType = 5
          GroupNo = 1
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8467
          mmLeft = 187590
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'USEID'
      DataPipeline = ppdb1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppd1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppr1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 72
    Top = 184
  end
end
