object FRepcuoenv: TFRepcuoenv
  Left = 223
  Top = 138
  BorderStyle = bsDialog
  Caption = 'Cuotas enviadas a cobranzas no pagadas'
  ClientHeight = 393
  ClientWidth = 792
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object dbgprevio: TwwDBGrid
    Left = 2
    Top = 104
    Width = 782
    Height = 244
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = -2
    Width = 407
    Height = 102
    Caption = ' Informaci'#243'n a Generar '
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 19
      Width = 45
      Height = 13
      Caption = 'Convenio'
    end
    object Label2: TLabel
      Left = 53
      Top = 20
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label3: TLabel
      Left = 4
      Top = 46
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
    end
    object Label4: TLabel
      Left = 4
      Top = 72
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object Label5: TLabel
      Left = 53
      Top = 46
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label6: TLabel
      Left = 53
      Top = 72
      Width = 3
      Height = 13
      Caption = ':'
    end
    object pnldespla: TPanel
      Left = 125
      Top = 16
      Width = 275
      Height = 23
      Caption = 'pnldescon'
      TabOrder = 0
      object edtdescon: TEdit
        Left = 1
        Top = 1
        Width = 273
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = edtdesconChange
        OnExit = edtdesconExit
      end
    end
    object btnprevio: TBitBtn
      Left = 319
      Top = 43
      Width = 80
      Height = 30
      Caption = 'Previo'
      TabOrder = 1
      OnClick = btnprevioClick
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
    object Panel8: TPanel
      Left = 61
      Top = 16
      Width = 61
      Height = 23
      Caption = 'pnldescon'
      Enabled = False
      TabOrder = 2
      object edtcodcon: TEdit
        Left = 1
        Top = 1
        Width = 59
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object rgtipaso: TRadioGroup
      Left = 117
      Top = 41
      Width = 107
      Height = 52
      Caption = 'Tipo de asociado'
      ItemIndex = 0
      Items.Strings = (
        'Docentes'
        'Cesantes')
      TabOrder = 3
    end
    object seanopro: TwwDBSpinEdit
      Left = 61
      Top = 42
      Width = 50
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 2030.000000000000000000
      MinValue = 2007.000000000000000000
      TabOrder = 4
      UnboundDataType = wwDefault
    end
    object semespro: TwwDBSpinEdit
      Left = 61
      Top = 68
      Width = 37
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 5
      UnboundDataType = wwDefault
    end
  end
  object btnimprimir: TBitBtn
    Left = 531
    Top = 353
    Width = 80
    Height = 30
    Caption = 'Imprimir'
    TabOrder = 2
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
    Left = 618
    Top = 352
    Width = 80
    Height = 30
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
    Left = 704
    Top = 352
    Width = 80
    Height = 30
    Caption = 'Cerrar'
    TabOrder = 4
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
  object DBGrid: TDBGrid
    Left = 416
    Top = 2
    Width = 81
    Height = 33
    DataSource = DM1.dsReporte
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object ppbdereporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdereporte'
    Left = 504
    Top = 24
  end
  object pprreporte: TppReport
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 512
    Top = 32
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdereporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26723
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 8731
        mmTop = 2646
        mmWidth = 25485
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 8731
        mmTop = 6085
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 241565
        mmTop = 2646
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 241565
        mmTop = 6085
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 241565
        mmTop = 9525
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 252942
        mmTop = 2646
        mmWidth = 794
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 252942
        mmTop = 6085
        mmWidth = 794
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 252942
        mmTop = 9525
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 257176
        mmTop = 2646
        mmWidth = 15081
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 257176
        mmTop = 6085
        mmWidth = 12700
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
        mmLeft = 257176
        mmTop = 9525
        mmWidth = 2646
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8996
        mmLeft = 5556
        mmTop = 17727
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Departamento donde labora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 6085
        mmTop = 18521
        mmWidth = 18786
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8996
        mmLeft = 25135
        mmTop = 17727
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Regimen de pensi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 25665
        mmTop = 18521
        mmWidth = 15347
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 8996
        mmLeft = 41275
        mmTop = 17727
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'C'#243'digo Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 42069
        mmTop = 18521
        mmWidth = 15347
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 8996
        mmLeft = 58473
        mmTop = 17727
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'DNI de asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 59531
        mmTop = 18521
        mmWidth = 15347
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 8996
        mmLeft = 75671
        mmTop = 17727
        mmWidth = 63236
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Apellido(s) y Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 76200
        mmTop = 18521
        mmWidth = 19844
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 8996
        mmLeft = 138642
        mmTop = 17727
        mmWidth = 67732
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Direcci'#243'n del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 139436
        mmTop = 18521
        mmWidth = 24342
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 8996
        mmLeft = 206111
        mmTop = 17727
        mmWidth = 16670
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Cuotas vencidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 206640
        mmTop = 18521
        mmWidth = 15611
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 8996
        mmLeft = 222515
        mmTop = 17727
        mmWidth = 16670
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Saldo vencido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 223044
        mmTop = 18521
        mmWidth = 15611
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 8996
        mmLeft = 238919
        mmTop = 17727
        mmWidth = 16670
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Saldo total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 239448
        mmTop = 18521
        mmWidth = 15611
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 8996
        mmLeft = 255323
        mmTop = 17727
        mmWidth = 16934
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Cro. no pag. m'#225's antiguo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 255853
        mmTop = 18521
        mmWidth = 15875
        BandType = 0
      end
      object ppltitulo01: TppLabel
        UserName = 'ltitulo01'
        Caption = 'CUOTAS ENVIADAS A COBRANZA NO COBRADA  PERIODO : 01/2008'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 61344
        mmTop = 7144
        mmWidth = 105918
        BandType = 0
      end
      object ppltitulo02: TppLabel
        UserName = 'ltitulo02'
        Caption = 'DOCENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 104775
        mmTop = 11113
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTODES_LAB'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 0
        mmWidth = 18786
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'REGPENDES'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 25665
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 41804
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ASODNI'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 59002
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 76200
        mmTop = 0
        mmWidth = 62177
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ASODIR'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 139171
        mmTop = 0
        mmWidth = 66675
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'DPTODES_DIR'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 137054
        mmTop = 3969
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CIUDDES_DIR'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 3969
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'ZIPDES_DIR'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 183621
        mmTop = 3969
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'ASOTELF1'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 25665
        mmTop = 3969
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'ASOTELF2'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 46831
        mmTop = 3969
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText11'
        DataField = 'CUOVEN'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 206640
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'SALVEN'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 223044
        mmTop = 0
        mmWidth = 15611
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText13'
        DataField = 'SALTOT'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 239448
        mmTop = 0
        mmWidth = 15611
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText15'
        DataField = 'VENMASANT'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 255853
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5556
        mmTop = 8202
        mmWidth = 266436
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object pplimpresopor: TppLabel
        UserName = 'Label21'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5556
        mmTop = 6350
        mmWidth = 55827
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'SALVEN'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 223044
        mmTop = 265
        mmWidth = 15611
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'SALTOT'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3175
        mmLeft = 239448
        mmTop = 265
        mmWidth = 15611
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label201'
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 195263
        mmTop = 265
        mmWidth = 10848
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 195263
        mmTop = 3969
        mmWidth = 76994
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText17'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'USENOM'
          DataPipeline = ppbdereporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdereporte'
          mmHeight = 3810
          mmLeft = 15081
          mmTop = 529
          mmWidth = 54504
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'USE :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 5080
          mmTop = 529
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel20: TppLabel
          UserName = 'Label11'
          Caption = 'CANTIDAD DE ASOCIADOS :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 5027
          mmTop = 0
          mmWidth = 38523
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'ASODNI'
          DataPipeline = ppbdereporte
          DisplayFormat = '#,##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppbdereporte'
          mmHeight = 3175
          mmLeft = 45508
          mmTop = 0
          mmWidth = 15081
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'SALVEN'
          DataPipeline = ppbdereporte
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdereporte'
          mmHeight = 3175
          mmLeft = 223044
          mmTop = 0
          mmWidth = 15611
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'SALTOT'
          DataPipeline = ppbdereporte
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdereporte'
          mmHeight = 3175
          mmLeft = 239448
          mmTop = 0
          mmWidth = 15611
          BandType = 5
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label20'
          Caption = 'TOTAL UGEL :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 195263
          mmTop = 0
          mmWidth = 19262
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 5556
          mmTop = 3704
          mmWidth = 266436
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
