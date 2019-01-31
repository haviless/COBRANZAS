object finfdetprocob: Tfinfdetprocob
  Left = 106
  Top = 128
  BorderStyle = bsDialog
  Caption = 'Informaci'#243'n detallada de los procesos de cobranzas'
  ClientHeight = 367
  ClientWidth = 624
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 3
    Width = 619
    Height = 141
    Caption = ' Informaci'#243'n del convenio '
    Color = 10207162
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 43
      Width = 29
      Height = 13
      Caption = 'UGEL'
    end
    object Label2: TLabel
      Left = 54
      Top = 43
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label3: TLabel
      Left = 4
      Top = 69
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
    end
    object Label4: TLabel
      Left = 114
      Top = 69
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object Label5: TLabel
      Left = 54
      Top = 69
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label6: TLabel
      Left = 141
      Top = 69
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label7: TLabel
      Left = 4
      Top = 92
      Width = 44
      Height = 13
      Caption = 'Asociado'
    end
    object Label8: TLabel
      Left = 54
      Top = 92
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label9: TLabel
      Left = 4
      Top = 17
      Width = 45
      Height = 13
      Caption = 'Convenio'
    end
    object Label10: TLabel
      Left = 54
      Top = 17
      Width = 3
      Height = 13
      Caption = ':'
    end
    object pnldespla: TPanel
      Left = 97
      Top = 40
      Width = 241
      Height = 23
      Enabled = False
      TabOrder = 0
      object edtusenom: TEdit
        Left = 1
        Top = 1
        Width = 239
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object Panel8: TPanel
      Left = 61
      Top = 40
      Width = 32
      Height = 23
      Enabled = False
      TabOrder = 1
      object edtuseid: TEdit
        Left = 1
        Top = 1
        Width = 30
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 61
      Top = 65
      Width = 50
      Height = 23
      Enabled = False
      TabOrder = 2
      object edtanopro: TEdit
        Left = 1
        Top = 1
        Width = 47
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 148
      Top = 65
      Width = 29
      Height = 23
      Enabled = False
      TabOrder = 3
      object edtmespro: TEdit
        Left = 1
        Top = 1
        Width = 27
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 61
      Top = 89
      Width = 115
      Height = 23
      Enabled = False
      TabOrder = 4
      object edttipaso: TEdit
        Left = 1
        Top = 1
        Width = 113
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object rgtipinf: TRadioGroup
      Left = 341
      Top = 7
      Width = 274
      Height = 129
      Caption = ' Tipo de informaci'#243'n '
      TabOrder = 5
      OnClick = rgtipinfClick
    end
    object Panel1: TPanel
      Left = 61
      Top = 15
      Width = 61
      Height = 23
      Enabled = False
      TabOrder = 6
      object edtcodcon: TEdit
        Left = 1
        Top = 1
        Width = 59
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 126
      Top = 15
      Width = 212
      Height = 23
      Enabled = False
      TabOrder = 7
      object edtdescon: TEdit
        Left = 1
        Top = 1
        Width = 210
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
  end
  object btnimprimir: TBitBtn
    Left = 459
    Top = 332
    Width = 80
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 1
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
  object BitBtn1: TBitBtn
    Left = 541
    Top = 332
    Width = 80
    Height = 28
    Caption = 'Salir'
    TabOrder = 2
    OnClick = BitBtn1Click
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
  object dbgdetalle: TwwDBGrid
    Left = 3
    Top = 149
    Width = 617
    Height = 177
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object btnexporta: TBitBtn
    Left = 376
    Top = 332
    Width = 80
    Height = 28
    Caption = 'Exportar'
    TabOrder = 4
    OnClick = btnexportaClick
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
    Left = 189
    Top = 104
    Width = 65
    Height = 24
    DataSource = DM1.dsReporte
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object btnlimprocob: TBitBtn
    Left = 5
    Top = 331
    Width = 180
    Height = 28
    Caption = 'Limpiar proceso de cobranza'
    TabOrder = 6
    OnClick = btnlimprocobClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
  end
  object dbepconprocob: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbepconprocob'
    Left = 188
    Top = 68
  end
  object pprconprocobsinpercob: TppReport
    AutoStop = False
    DataPipeline = dbepconprocob
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
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
    Left = 191
    Top = 72
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbepconprocob'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Equipo de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7673
        mmTop = 5027
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3703
        mmLeft = 7673
        mmTop = 1059
        mmWidth = 31835
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159279
        mmTop = 1058
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159279
        mmTop = 5027
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159279
        mmTop = 8996
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170921
        mmTop = 1058
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170921
        mmTop = 5027
        mmWidth = 13229
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170921
        mmTop = 8996
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 1058
        mmWidth = 794
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 5027
        mmWidth = 794
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 8996
        mmWidth = 794
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 9789
        mmLeft = 7938
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'C'#243'digo modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 8467
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 9790
        mmLeft = 28575
        mmTop = 26723
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'DNI del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 29369
        mmTop = 27252
        mmWidth = 12171
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 9790
        mmLeft = 48419
        mmTop = 26723
        mmWidth = 67469
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Apellidos y Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 50536
        mmTop = 27252
        mmWidth = 20373
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 9790
        mmLeft = 115359
        mmTop = 26723
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'N'#250'mero de cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 117475
        mmTop = 27252
        mmWidth = 12965
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 9790
        mmLeft = 141552
        mmTop = 26723
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'N'#250'mero de cuota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 142082
        mmTop = 27252
        mmWidth = 11113
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 9790
        mmLeft = 153194
        mmTop = 26723
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Monto de la cuota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 153723
        mmTop = 27252
        mmWidth = 13229
        BandType = 0
      end
      object TppLabel
        UserName = 'Label11'
        Caption = 'CONVENIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3725
        mmLeft = 7673
        mmTop = 17727
        mmWidth = 18256
        BandType = 0
      end
      object TppLabel
        UserName = 'Label16'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3725
        mmLeft = 7673
        mmTop = 21960
        mmWidth = 8975
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 
          'CUOTAS EN PROCESO DE COBRANZA SIN INFORMACION DEL PERIODO DE COB' +
          'RANZA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 24871
        mmTop = 13494
        mmWidth = 136398
        BandType = 0
      end
      object TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 17727
        mmWidth = 1058
        BandType = 0
      end
      object TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 21960
        mmWidth = 1058
        BandType = 0
      end
      object pplconvenio_1: TppLabel
        UserName = 'Label19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 17727
        mmWidth = 60853
        BandType = 0
      end
      object pplugel_1: TppLabel
        UserName = 'Label20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3683
        mmLeft = 29633
        mmTop = 21960
        mmWidth = 60853
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = dbepconprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbepconprocob'
        mmHeight = 3440
        mmLeft = 8467
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASODNI'
        DataPipeline = dbepconprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbepconprocob'
        mmHeight = 3440
        mmLeft = 29104
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOAPENOM'
        DataPipeline = dbepconprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbepconprocob'
        mmHeight = 3440
        mmLeft = 48948
        mmTop = 0
        mmWidth = 66411
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CREDID'
        DataPipeline = dbepconprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbepconprocob'
        mmHeight = 3440
        mmLeft = 115888
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CRECUOTA'
        DataPipeline = dbepconprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbepconprocob'
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTO'
        DataPipeline = dbepconprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbepconprocob'
        mmHeight = 3440
        mmLeft = 153723
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7938
        mmTop = 265
        mmWidth = 159544
        BandType = 7
      end
      object pplimpresopor_1: TppLabel
        UserName = 'Label21'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 7938
        mmTop = 5821
        mmWidth = 63236
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label22'
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 114565
        mmTop = 794
        mmWidth = 11599
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'ASOAPENOM'
        DataPipeline = dbepconprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbepconprocob'
        mmHeight = 3344
        mmLeft = 128323
        mmTop = 794
        mmWidth = 10848
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7938
        mmTop = 4498
        mmWidth = 159544
        BandType = 7
      end
    end
  end
  object ppbderepprocob: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbepconprocob1'
    Left = 229
    Top = 69
  end
  object repprocob: TppReport
    AutoStop = False
    DataPipeline = ppbderepprocob
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
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
    Left = 233
    Top = 72
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbderepprocob'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label1'
        Caption = 'Equipo de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7673
        mmTop = 5027
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label2'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3703
        mmLeft = 7673
        mmTop = 1059
        mmWidth = 31835
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159279
        mmTop = 1058
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label4'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159279
        mmTop = 5027
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label5'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159279
        mmTop = 8996
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170921
        mmTop = 1058
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170921
        mmTop = 5027
        mmWidth = 13229
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170921
        mmTop = 8996
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 1058
        mmWidth = 794
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label7'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 5027
        mmWidth = 794
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label8'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 8996
        mmWidth = 794
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape1'
        mmHeight = 9789
        mmLeft = 7938
        mmTop = 26723
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label9'
        Caption = 'C'#243'digo modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 8467
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape2'
        mmHeight = 9790
        mmLeft = 28575
        mmTop = 26723
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label10'
        Caption = 'DNI del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 29369
        mmTop = 27252
        mmWidth = 12171
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape3'
        mmHeight = 9790
        mmLeft = 48419
        mmTop = 26723
        mmWidth = 67469
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label101'
        Caption = 'Apellidos y Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 50536
        mmTop = 27252
        mmWidth = 20373
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape4'
        mmHeight = 9790
        mmLeft = 115359
        mmTop = 26723
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label12'
        Caption = 'N'#250'mero de cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 117475
        mmTop = 27252
        mmWidth = 12965
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape5'
        mmHeight = 9790
        mmLeft = 141552
        mmTop = 26723
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label13'
        Caption = 'N'#250'mero de cuota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 142082
        mmTop = 27252
        mmWidth = 11113
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape6'
        mmHeight = 9790
        mmLeft = 153194
        mmTop = 26723
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label14'
        Caption = 'Monto de la cuota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 153723
        mmTop = 27252
        mmWidth = 13229
        BandType = 0
      end
      object TppLabel
        UserName = 'Label11'
        Caption = 'CONVENIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3725
        mmLeft = 7673
        mmTop = 17727
        mmWidth = 18256
        BandType = 0
      end
      object TppLabel
        UserName = 'Label16'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3725
        mmLeft = 7673
        mmTop = 21960
        mmWidth = 8975
        BandType = 0
      end
      object ppltitrep02: TppLabel
        UserName = 'Label15'
        Caption = 
          'CUOTAS EN PROCESO DE COBRANZA SIN INFORMACION DEL PERIODO DE COB' +
          'RANZA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 24871
        mmTop = 13494
        mmWidth = 136398
        BandType = 0
      end
      object TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 17727
        mmWidth = 1058
        BandType = 0
      end
      object TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 21960
        mmWidth = 1058
        BandType = 0
      end
      object ppltitrep02_con: TppLabel
        UserName = 'Label19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 17727
        mmWidth = 60853
        BandType = 0
      end
      object ppltitrep02_ugel: TppLabel
        UserName = 'Label20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3683
        mmLeft = 29633
        mmTop = 21960
        mmWidth = 60853
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbderepprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderepprocob'
        mmHeight = 3440
        mmLeft = 8467
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText2'
        DataField = 'ASODNI'
        DataPipeline = ppbderepprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderepprocob'
        mmHeight = 3440
        mmLeft = 29104
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbderepprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderepprocob'
        mmHeight = 3440
        mmLeft = 48948
        mmTop = 0
        mmWidth = 66411
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        DataField = 'CREDID'
        DataPipeline = ppbderepprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderepprocob'
        mmHeight = 3440
        mmLeft = 115888
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText5'
        DataField = 'CRECUOTA'
        DataPipeline = ppbderepprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderepprocob'
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTO'
        DataPipeline = ppbderepprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderepprocob'
        mmHeight = 3440
        mmLeft = 153723
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7938
        mmTop = 265
        mmWidth = 159544
        BandType = 7
      end
      object pplimpresopor_2: TppLabel
        UserName = 'Label21'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 7938
        mmTop = 5821
        mmWidth = 63236
        BandType = 7
      end
      object ppLabel35: TppLabel
        UserName = 'Label22'
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 114565
        mmTop = 794
        mmWidth = 11599
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbderepprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbderepprocob'
        mmHeight = 3344
        mmLeft = 128323
        mmTop = 794
        mmWidth = 10848
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7938
        mmTop = 4498
        mmWidth = 159544
        BandType = 7
      end
    end
  end
  object ppbdesinprocob: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdesinprocob'
    Left = 277
    Top = 69
  end
  object pprsinprocob: TppReport
    AutoStop = False
    DataPipeline = ppbdesinprocob
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
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
    Left = 281
    Top = 72
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdesinprocob'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppLabel31: TppLabel
        UserName = 'Label1'
        Caption = 'Equipo de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7673
        mmTop = 5027
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label2'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3703
        mmLeft = 7673
        mmTop = 1059
        mmWidth = 31835
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 1058
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label4'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 5027
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label5'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 8996
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 1058
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 5027
        mmWidth = 13229
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 8996
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141023
        mmTop = 1058
        mmWidth = 794
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label7'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141023
        mmTop = 5027
        mmWidth = 794
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label8'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141023
        mmTop = 8996
        mmWidth = 794
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape1'
        mmHeight = 9789
        mmLeft = 17727
        mmTop = 27517
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label9'
        Caption = 'C'#243'digo modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 18256
        mmTop = 28046
        mmWidth = 15346
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape2'
        mmHeight = 9790
        mmLeft = 38365
        mmTop = 27517
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label10'
        Caption = 'DNI del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 39158
        mmTop = 28046
        mmWidth = 12171
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape3'
        mmHeight = 9790
        mmLeft = 58208
        mmTop = 27517
        mmWidth = 67469
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label101'
        Caption = 'Apellidos y Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8730
        mmLeft = 60325
        mmTop = 28046
        mmWidth = 20373
        BandType = 0
      end
      object TppLabel
        UserName = 'Label11'
        Caption = 'CONVENIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3725
        mmLeft = 17463
        mmTop = 18521
        mmWidth = 18256
        BandType = 0
      end
      object TppLabel
        UserName = 'Label16'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3725
        mmLeft = 17463
        mmTop = 22754
        mmWidth = 8975
        BandType = 0
      end
      object ppltitrep03: TppLabel
        UserName = 'Label15'
        Caption = 'CUOTAS SIN PROCESO DE COBRANZA DEL PERIODO DE NOVIEMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 7673
        mmTop = 13494
        mmWidth = 151342
        BandType = 0
      end
      object TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 36777
        mmTop = 18521
        mmWidth = 1058
        BandType = 0
      end
      object TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 36777
        mmTop = 22754
        mmWidth = 1058
        BandType = 0
      end
      object ppltitrep03_con: TppLabel
        UserName = 'Label19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 39423
        mmTop = 18521
        mmWidth = 60853
        BandType = 0
      end
      object ppltitrep03_ugel: TppLabel
        UserName = 'Label20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3683
        mmLeft = 39423
        mmTop = 22754
        mmWidth = 60853
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText13: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdesinprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdesinprocob'
        mmHeight = 3440
        mmLeft = 17727
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText2'
        DataField = 'ASODNI'
        DataPipeline = ppbdesinprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdesinprocob'
        mmHeight = 3440
        mmLeft = 38894
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdesinprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdesinprocob'
        mmHeight = 3440
        mmLeft = 58738
        mmTop = 0
        mmWidth = 66411
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 17727
        mmTop = 265
        mmWidth = 108744
        BandType = 7
      end
      object pplimpresopor_3: TppLabel
        UserName = 'Label21'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 7673
        mmTop = 5821
        mmWidth = 63236
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label22'
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 100806
        mmTop = 794
        mmWidth = 11599
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdesinprocob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbdesinprocob'
        mmHeight = 3344
        mmLeft = 114565
        mmTop = 794
        mmWidth = 10848
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 17727
        mmTop = 4498
        mmWidth = 108744
        BandType = 7
      end
    end
  end
end
