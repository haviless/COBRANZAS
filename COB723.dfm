object Fgesfonsol: TFgesfonsol
  Left = 396
  Top = 244
  BorderStyle = bsDialog
  Caption = 'Gesti'#243'n Fondo Solidario de Contingencia'
  ClientHeight = 408
  ClientWidth = 735
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object rgtipo: TRadioGroup
    Left = 210
    Top = 4
    Width = 341
    Height = 84
    Caption = ' Seleccione tipo de reporte '
    ItemIndex = 0
    Items.Strings = (
      'Cr'#233'dito cancelado con FSC. con aportes'
      'Cr'#233'ditos cancelado con FSC con descuento en planilla'
      'Cr'#233'ditos cancelados con FSC con cr'#233'ditos pendientes'
      'Cr'#233'ditos cancelados con FSC con pagos en banco')
    TabOrder = 1
    OnClick = rgtipoClick
  end
  object btnprocesar: TBitBtn
    Left = 651
    Top = 8
    Width = 78
    Height = 28
    Caption = 'Procesar'
    TabOrder = 2
    OnClick = btnprocesarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
      3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
      700077337F3333373777887007333337007733F773F333337733700070333333
      077037773733333F7F37703707333300080737F373333377737F003333333307
      78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
      078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
      70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
      3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
      33337F73FF737773333307800077033333337337773373333333}
    NumGlyphs = 2
  end
  object btnimprimir: TBitBtn
    Left = 538
    Top = 374
    Width = 78
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = btnimprimirClick
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
  object btnaexcel: TBitBtn
    Left = 455
    Top = 374
    Width = 78
    Height = 28
    Caption = 'A Excel'
    TabOrder = 3
    OnClick = btnaexcelClick
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
  object btncerrar: TBitBtn
    Left = 652
    Top = 374
    Width = 78
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 5
    OnClick = btncerrarClick
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
  object dbgPrevio: TwwDBGrid
    Left = 7
    Top = 94
    Width = 722
    Height = 269
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 6
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    FooterColor = clSilver
    FooterCellColor = clWhite
  end
  object dtgData: TDBGrid
    Left = 589
    Top = 46
    Width = 73
    Height = 33
    DataSource = DM1.dsReporte
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object gbfechas: TGroupBox
    Left = 7
    Top = 3
    Width = 194
    Height = 85
    Caption = ' Fechas de cancelaci'#243'n FSC '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 63
      Height = 15
      Caption = 'Fecha inicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 55
      Width = 58
      Height = 15
      Caption = 'Fecha final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 74
      Top = 25
      Width = 3
      Height = 15
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 74
      Top = 55
      Width = 3
      Height = 15
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbdtpinicio: TwwDBDateTimePicker
      Left = 84
      Top = 21
      Width = 95
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object dbdtpfinal: TwwDBDateTimePicker
      Left = 84
      Top = 52
      Width = 95
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
  end
  object ppreporte00: TppReport
    AutoStop = False
    DataPipeline = ppbdereporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\REP1.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 75
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdereporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppShape30: TppShape
        UserName = 'Shape30'
        mmHeight = 11113
        mmLeft = 216959
        mmTop = 26458
        mmWidth = 17198
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 11113
        mmLeft = 154252
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 11113
        mmLeft = 134673
        mmTop = 26458
        mmWidth = 19844
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 11113
        mmLeft = 115888
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 11113
        mmLeft = 44715
        mmTop = 26458
        mmWidth = 71438
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 11113
        mmLeft = 30692
        mmTop = 26458
        mmWidth = 14288
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 11113
        mmLeft = 6350
        mmTop = 26458
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 197115
        mmTop = 1058
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 197115
        mmTop = 4498
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 197115
        mmTop = 7938
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 208492
        mmTop = 1058
        mmWidth = 794
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 208492
        mmTop = 4498
        mmWidth = 794
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 208492
        mmTop = 7938
        mmWidth = 794
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 216694
        mmTop = 1058
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 216694
        mmTop = 4498
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 216694
        mmTop = 7938
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 1852
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 5556
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'CREDITOS CANCELADOS FSC CON APORTES EN LA ACTUALIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 60061
        mmTop = 7144
        mmWidth = 113496
        BandType = 0
      end
      object pplfechas00: TppLabel
        UserName = 'lfechas00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 71173
        mmTop = 11642
        mmWidth = 91017
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'C'#243'digo modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 7144
        mmTop = 27252
        mmWidth = 23020
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Apellidos y nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 45508
        mmTop = 27252
        mmWidth = 69850
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        Caption = 'N'#250'mero de Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 116681
        mmTop = 27252
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'F. otorg. del cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 135467
        mmTop = 27252
        mmWidth = 18255
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'F. del '#250'ltima aportaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 218017
        mmTop = 27252
        mmWidth = 15347
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label103'
        Caption = 'Tipo de asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 31485
        mmTop = 27252
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = 'F. Aplic. del fondo solidario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 155046
        mmTop = 27252
        mmWidth = 19579
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 11113
        mmLeft = 175155
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = '# Cuo. apl. al fondo solidario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 175948
        mmTop = 27252
        mmWidth = 19578
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 11113
        mmLeft = 196057
        mmTop = 26458
        mmWidth = 21166
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label12'
        Caption = 'Monto apl. fondo solidario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 197115
        mmTop = 27252
        mmWidth = 19315
        BandType = 0
      end
      object ppltipaso: TppLabel
        UserName = 'lfechas001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 79640
        mmTop = 15081
        mmWidth = 74083
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 7144
        mmTop = 0
        mmWidth = 23020
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 45508
        mmTop = 0
        mmWidth = 69850
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CREFOTORG'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 0
        mmWidth = 18255
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CREDID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 116946
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CANCUOFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,###0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 0
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'APORTE'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 218282
        mmTop = 0
        mmWidth = 15347
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'ASOTIPID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 31485
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'FECCANFONSOL'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 155311
        mmTop = 0
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MONTOFON'
        DataPipeline = ppbdereporte
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 197115
        mmTop = 0
        mmWidth = 19578
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6350
        mmTop = 0
        mmWidth = 227277
        BandType = 7
      end
      object pplimpresopor00: TppLabel
        UserName = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 4763
        mmWidth = 80963
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6350
        mmTop = 4233
        mmWidth = 227277
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Total S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 162190
        mmTop = 529
        mmWidth = 12700
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CANCUOFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,###0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 529
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONTOFON'
        DataPipeline = ppbdereporte
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 197115
        mmTop = 529
        mmWidth = 19579
        BandType = 7
      end
    end
    object daDataModule1: TdaDataModule
    end
  end
  object ppbdereporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdereporte'
    Left = 43
    Top = 376
  end
  object ppreporte01: TppReport
    AutoStop = False
    DataPipeline = ppbdereporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\REP1.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 107
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdereporte'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 189177
        mmTop = 1058
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label2'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 189177
        mmTop = 4498
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label3'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 189177
        mmTop = 7938
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label4'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200555
        mmTop = 1058
        mmWidth = 794
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label5'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200555
        mmTop = 4498
        mmWidth = 794
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200555
        mmTop = 7938
        mmWidth = 794
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 208757
        mmTop = 1058
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 208757
        mmTop = 4498
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 208757
        mmTop = 7938
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label7'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 1852
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label8'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 5556
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label9'
        Caption = 'CREDITOS CANCELADOS FSC CON DESCUENTO POR PLANILLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 51858
        mmTop = 6085
        mmWidth = 110321
        BandType = 0
      end
      object pplfechas01: TppLabel
        UserName = 'lfechas00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 61383
        mmTop = 11377
        mmWidth = 91017
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape1'
        mmHeight = 11113
        mmLeft = 6350
        mmTop = 19843
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label10'
        Caption = 'C'#243'digo modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 7144
        mmTop = 20638
        mmWidth = 23019
        BandType = 0
      end
      object ppShape31: TppShape
        UserName = 'Shape31'
        mmHeight = 11113
        mmLeft = 44715
        mmTop = 19843
        mmWidth = 60854
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label104'
        Caption = 'Apellidos y Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 45508
        mmTop = 20638
        mmWidth = 59267
        BandType = 0
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        mmHeight = 11113
        mmLeft = 30692
        mmTop = 19843
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label105'
        Caption = 'Tipo de asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 31485
        mmTop = 20638
        mmWidth = 12700
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape35'
        mmHeight = 11113
        mmLeft = 105304
        mmTop = 19843
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'N'#250'mero de Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 106098
        mmTop = 20638
        mmWidth = 17463
        BandType = 0
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 11113
        mmLeft = 124090
        mmTop = 19843
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = 'F. otorg. del cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 124884
        mmTop = 20638
        mmWidth = 18255
        BandType = 0
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        mmHeight = 11113
        mmLeft = 143669
        mmTop = 19843
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = 'F. Aplic. del fondo solidario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 144463
        mmTop = 20638
        mmWidth = 20108
        BandType = 0
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 11113
        mmLeft = 165100
        mmTop = 19843
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'Monto apl. fondo soli.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 165894
        mmTop = 20638
        mmWidth = 19315
        BandType = 0
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        mmHeight = 11113
        mmLeft = 185738
        mmTop = 19843
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = '# Cuo. apl. al fondo solidario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 186532
        mmTop = 20638
        mmWidth = 19579
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape301'
        mmHeight = 11113
        mmLeft = 206640
        mmTop = 19844
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        Caption = 'F. del '#250'ltimo Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 207698
        mmTop = 20638
        mmWidth = 17992
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 7144
        mmTop = 0
        mmWidth = 23020
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 45508
        mmTop = 0
        mmWidth = 59267
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText5'
        DataField = 'CREDID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 106098
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText6'
        DataField = 'CUOCANFONSOL'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 186532
        mmTop = 0
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText7'
        DataField = 'ULFECPAG'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 207434
        mmTop = 0
        mmWidth = 18255
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText3'
        DataField = 'MONFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 165894
        mmTop = 0
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'ASOTIPID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 31485
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        DataField = 'CREFOTORG'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 124884
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'FECCANFONSOL'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 144727
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6350
        mmTop = 0
        mmWidth = 219075
        BandType = 7
      end
      object pplimpresopor01: TppLabel
        UserName = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 5027
        mmWidth = 80963
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6350
        mmTop = 4233
        mmWidth = 218811
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Total S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 151607
        mmTop = 794
        mmWidth = 12700
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'MONFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 165894
        mmTop = 794
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'CUOCANFONSOL'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 186532
        mmTop = 794
        mmWidth = 19578
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppreporte02: TppReport
    AutoStop = False
    DataPipeline = ppbdereporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\REP1.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 139
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdereporte'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34396
      mmPrintPosition = 0
      object ppLabel26: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 188648
        mmTop = 1058
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label2'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 188648
        mmTop = 4498
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label3'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 188648
        mmTop = 7938
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label4'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200025
        mmTop = 1058
        mmWidth = 794
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label5'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200025
        mmTop = 4498
        mmWidth = 794
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200025
        mmTop = 7938
        mmWidth = 794
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 208227
        mmTop = 1058
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 208227
        mmTop = 4498
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 208227
        mmTop = 7938
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label7'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 1852
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label8'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 5556
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label9'
        Caption = 'CREDITOS CANCELADOS FSC CON CREDITOS PENDIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 60061
        mmTop = 6615
        mmWidth = 103124
        BandType = 0
      end
      object pplfechas02: TppLabel
        UserName = 'lfechas00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 66146
        mmTop = 11906
        mmWidth = 91017
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 11113
        mmLeft = 4498
        mmTop = 23283
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label106'
        Caption = 'C'#243'digo modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 5292
        mmTop = 24077
        mmWidth = 23020
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 11113
        mmLeft = 42863
        mmTop = 23283
        mmWidth = 60854
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Apellidos y Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 43656
        mmTop = 24077
        mmWidth = 59267
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 11113
        mmLeft = 28840
        mmTop = 23283
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Tipo de asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 29633
        mmTop = 24077
        mmWidth = 12700
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 11113
        mmLeft = 103452
        mmTop = 23283
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'N'#250'mero de Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 104246
        mmTop = 24077
        mmWidth = 17463
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 11113
        mmLeft = 122238
        mmTop = 23283
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label701'
        Caption = 'F. otorg. del cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 123031
        mmTop = 24077
        mmWidth = 18256
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        mmHeight = 11113
        mmLeft = 141817
        mmTop = 23283
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'F. Aplic. del fondo solidario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 142611
        mmTop = 24077
        mmWidth = 19579
        BandType = 0
      end
      object ppShape39: TppShape
        UserName = 'Shape39'
        mmHeight = 11113
        mmLeft = 204523
        mmTop = 23283
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'Cr'#233'dito Vigente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 205317
        mmTop = 24077
        mmWidth = 19579
        BandType = 0
      end
      object ppShape40: TppShape
        UserName = 'Shape40'
        mmHeight = 11113
        mmLeft = 162719
        mmTop = 23283
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = '# Cuo. apl. al fondo solidario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 163513
        mmTop = 24077
        mmWidth = 19579
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 11113
        mmLeft = 183621
        mmTop = 23283
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Monto apl. fondo soli.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 184415
        mmTop = 24077
        mmWidth = 19579
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 0
        mmWidth = 23020
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 43656
        mmTop = 0
        mmWidth = 59267
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText4'
        DataField = 'CREFOTORG'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 123031
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText5'
        DataField = 'NUMCRE'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText6'
        DataField = 'CUOCANFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,###0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 163777
        mmTop = 0
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText7'
        DataField = 'MONFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 184680
        mmTop = 0
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'ASOTIPID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'FECCANFONSOL'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 142875
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'CREVIG'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 206375
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4498
        mmTop = 0
        mmWidth = 221192
        BandType = 7
      end
      object pplimpresopor02: TppLabel
        UserName = 'limpresopor02'
        Caption = 'limpresopor02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 4498
        mmTop = 4763
        mmWidth = 17949
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4498
        mmTop = 4233
        mmWidth = 220928
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Total S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 149754
        mmTop = 529
        mmWidth = 12700
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CUOCANFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,###0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 163777
        mmTop = 529
        mmWidth = 19578
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'MONFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 184680
        mmTop = 529
        mmWidth = 19579
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppreporte03: TppReport
    AutoStop = False
    DataPipeline = ppbdereporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\REP1.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 171
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdereporte'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33338
      mmPrintPosition = 0
      object ppShape42: TppShape
        UserName = 'Shape42'
        mmHeight = 11113
        mmLeft = 225161
        mmTop = 21960
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 210080
        mmTop = 794
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label2'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 210080
        mmTop = 4233
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label3'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 210080
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label4'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 221457
        mmTop = 794
        mmWidth = 794
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label5'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 221457
        mmTop = 4233
        mmWidth = 794
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 221457
        mmTop = 7673
        mmWidth = 794
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 229659
        mmTop = 794
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 229659
        mmTop = 4233
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 229659
        mmTop = 7673
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label7'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5556
        mmTop = 794
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label8'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5556
        mmTop = 4233
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label9'
        Caption = 'CREDITOS CANCELADOS FSC CON PAGOS EN BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 91546
        mmTop = 6879
        mmWidth = 93663
        BandType = 0
      end
      object pplfechas03: TppLabel
        UserName = 'lfechas00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 92869
        mmTop = 12171
        mmWidth = 91017
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label16'
        Caption = 'Fecha de pago en banco (recaudadora)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9906
        mmLeft = 225955
        mmTop = 22490
        mmWidth = 19050
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape101'
        mmHeight = 11113
        mmLeft = 5556
        mmTop = 21960
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'C'#243'digo modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 6350
        mmTop = 22754
        mmWidth = 23019
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 11113
        mmLeft = 43921
        mmTop = 21960
        mmWidth = 60854
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 'Apellidos y Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 44715
        mmTop = 22754
        mmWidth = 59267
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 11113
        mmLeft = 29898
        mmTop = 21960
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'Tipo de asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 30692
        mmTop = 22754
        mmWidth = 12700
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 11113
        mmLeft = 104511
        mmTop = 21960
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'N'#250'mero de Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 105304
        mmTop = 22754
        mmWidth = 17463
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        mmHeight = 11113
        mmLeft = 123296
        mmTop = 21960
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'F. otorg. del cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 124090
        mmTop = 22754
        mmWidth = 18256
        BandType = 0
      end
      object ppShape41: TppShape
        UserName = 'Shape41'
        mmHeight = 11113
        mmLeft = 142875
        mmTop = 21960
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'F. Aplic. del fondo solidario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 143669
        mmTop = 22754
        mmWidth = 19579
        BandType = 0
      end
      object ppShape43: TppShape
        UserName = 'Shape401'
        mmHeight = 11113
        mmLeft = 163777
        mmTop = 21960
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = '# Cuo. apl. al fondo solidario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 164571
        mmTop = 22754
        mmWidth = 19050
        BandType = 0
      end
      object ppShape44: TppShape
        UserName = 'Shape44'
        mmHeight = 11113
        mmLeft = 205052
        mmTop = 21960
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = 'Cr'#233'dito Vigente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 205846
        mmTop = 22754
        mmWidth = 18521
        BandType = 0
      end
      object ppShape45: TppShape
        UserName = 'Shape45'
        mmHeight = 11113
        mmLeft = 184150
        mmTop = 21960
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label801'
        Caption = 'Monto Aplic. del fon. sol.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 184944
        mmTop = 22754
        mmWidth = 19579
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 44715
        mmTop = 0
        mmWidth = 59267
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText4'
        DataField = 'CREFOTORG'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 124090
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText5'
        DataField = 'NUMCRE'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 105304
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText6'
        DataField = 'MONFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 184944
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText7'
        DataField = 'FECPAGBCO'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 226748
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText3'
        DataField = 'CUOCANFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 164571
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'ASOTIPID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 30692
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'FECCANFONSOL'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 143669
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'CREVIG'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 205846
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object pplimpresopor03: TppLabel
        UserName = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 5821
        mmWidth = 80963
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 5556
        mmTop = 0
        mmWidth = 241565
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5556
        mmTop = 4498
        mmWidth = 241565
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Total S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 529
        mmWidth = 12700
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CUOCANFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 164571
        mmTop = 529
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'MONFONSOL'
        DataPipeline = ppbdereporte
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 184944
        mmTop = 529
        mmWidth = 19579
        BandType = 7
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
