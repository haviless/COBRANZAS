object fgeninfenv: Tfgeninfenv
  Left = 171
  Top = 156
  BorderStyle = bsDialog
  Caption = 'Generaci'#243'n de informaci'#243'n para el envio'
  ClientHeight = 500
  ClientWidth = 739
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
  object Label1: TLabel
    Left = 288
    Top = 3
    Width = 124
    Height = 13
    Caption = 'Descripci'#243'n del Convenio:'
  end
  object Label2: TLabel
    Left = 288
    Top = 43
    Width = 109
    Height = 13
    Caption = 'A'#241'o y mes de Proceso:'
  end
  object Label3: TLabel
    Left = 4
    Top = 75
    Width = 119
    Height = 13
    Caption = 'Caracteristica del archivo'
  end
  object btncerrar: TBitBtn
    Left = 656
    Top = 389
    Width = 76
    Height = 30
    Caption = 'Cerrar'
    TabOrder = 0
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
  object btngenera: TBitBtn
    Left = 444
    Top = 389
    Width = 106
    Height = 30
    Caption = 'Generar archivo'
    TabOrder = 1
    OnClick = btngeneraClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
      5555557FFFFF7755555555500000005555555577777775555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object dbgprevio: TwwDBGrid
    Left = 4
    Top = 118
    Width = 727
    Height = 264
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsQry6
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object rgtipaso: TRadioGroup
    Left = 4
    Top = 5
    Width = 109
    Height = 57
    Caption = ' Tipo de asociado '
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Docente'
      'Cesante')
    TabOrder = 3
    OnClick = rgtipasoClick
  end
  object rgtiparc: TRadioGroup
    Left = 115
    Top = 5
    Width = 158
    Height = 66
    Caption = ' Tipo de archivo '
    ItemIndex = 0
    Items.Strings = (
      'Cuotas + FSC'
      'Aportes'
      'Cuotas + FSC + Aportes')
    TabOrder = 4
    OnClick = rgtiparcClick
  end
  object btnprevio: TBitBtn
    Left = 524
    Top = 47
    Width = 80
    Height = 28
    Caption = 'Previo'
    TabOrder = 5
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
  object Panel1: TPanel
    Left = 288
    Top = 18
    Width = 317
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 6
    object medescon: TMaskEdit
      Left = 1
      Top = 1
      Width = 315
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 288
    Top = 59
    Width = 151
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 7
    object medesanomespro: TMaskEdit
      Left = 1
      Top = 1
      Width = 149
      Height = 21
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 4
    Top = 91
    Width = 330
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 8
    object mecarenvarc: TMaskEdit
      Left = 1
      Top = 1
      Width = 328
      Height = 21
      TabOrder = 0
    end
  end
  object gbresenv: TGroupBox
    Left = 3
    Top = 384
    Width = 359
    Height = 109
    Caption = ' Resumen de envio '
    Color = 10207162
    ParentColor = False
    TabOrder = 9
    object Label4: TLabel
      Left = 8
      Top = 36
      Width = 41
      Height = 13
      Caption = 'Docente'
    end
    object Label5: TLabel
      Left = 8
      Top = 55
      Width = 39
      Height = 13
      Caption = 'Cesante'
    end
    object Label7: TLabel
      Left = 221
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Aporte'
    end
    object Label8: TLabel
      Left = 8
      Top = 90
      Width = 30
      Height = 13
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 319
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 55
      Top = 36
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label11: TLabel
      Left = 55
      Top = 55
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label12: TLabel
      Left = 55
      Top = 90
      Width = 5
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblmonapodo: TLabel
      Left = 161
      Top = 36
      Width = 93
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblmonapoto: TLabel
      Left = 161
      Top = 90
      Width = 93
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblmontotdo: TLabel
      Left = 258
      Top = 36
      Width = 93
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblmontotce: TLabel
      Left = 258
      Top = 54
      Width = 93
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbltottot: TLabel
      Left = 258
      Top = 90
      Width = 93
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 128
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Cuota'
    end
    object lblmoncuodo: TLabel
      Left = 65
      Top = 36
      Width = 93
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShowAccelChar = False
    end
    object lblmoncuoce: TLabel
      Left = 65
      Top = 54
      Width = 93
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShowAccelChar = False
    end
    object lblmoncuoto: TLabel
      Left = 65
      Top = 90
      Width = 93
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShowAccelChar = False
    end
    object lblmoncuoco: TLabel
      Left = 65
      Top = 72
      Width = 93
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShowAccelChar = False
    end
    object Label16: TLabel
      Left = 8
      Top = 72
      Width = 52
      Height = 13
      Caption = 'Contratado'
    end
    object Label17: TLabel
      Left = 55
      Top = 72
      Width = 3
      Height = 13
      Caption = ':'
    end
  end
  object Memo1: TMemo
    Left = 672
    Top = 8
    Width = 49
    Height = 25
    Lines.Strings = (
      'Memo1')
    TabOrder = 10
    Visible = False
  end
  object btnimpoficio: TBitBtn
    Left = 369
    Top = 389
    Width = 73
    Height = 30
    Caption = 'Oficio'
    TabOrder = 11
    OnClick = btnimpoficioClick
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
  object btndetalle: TBitBtn
    Left = 369
    Top = 421
    Width = 73
    Height = 30
    Caption = 'Detalle'
    TabOrder = 12
    OnClick = btndetalleClick
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
  object btnexcel: TBitBtn
    Left = 369
    Top = 453
    Width = 73
    Height = 30
    Caption = 'A Excel'
    TabOrder = 13
    OnClick = btnexcelClick
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
  object pnlRepOfico: TPanel
    Left = 199
    Top = 168
    Width = 329
    Height = 161
    Color = 10207162
    TabOrder = 14
    Visible = False
    object Shape6: TShape
      Left = 1
      Top = 1
      Width = 327
      Height = 22
      Align = alTop
      Brush.Color = clBackground
    end
    object Label13: TLabel
      Left = 10
      Top = 28
      Width = 45
      Height = 13
      Caption = 'Se'#241'ores :'
    end
    object Label14: TLabel
      Left = 10
      Top = 71
      Width = 74
      Height = 13
      Caption = 'Pie de pagina  :'
    end
    object Button4: TButton
      Left = 310
      Top = 3
      Width = 17
      Height = 19
      Caption = 'X'
      TabOrder = 0
      OnClick = Button4Click
    end
    object EdtSenores: TEdit
      Left = 10
      Top = 44
      Width = 312
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object BitBtn8: TBitBtn
      Left = 282
      Top = 125
      Width = 39
      Height = 28
      TabOrder = 2
      OnClick = BitBtn8Click
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
    end
    object memoPie: TMemo
      Left = 10
      Top = 88
      Width = 128
      Height = 63
      Lines.Strings = (
        'SAB/aiv.'
        'c.c.Representantes'
        'Archivo.')
      TabOrder = 3
    end
  end
  object dtgData: TDBGrid
    Left = 632
    Top = 40
    Width = 73
    Height = 41
    DataSource = DM1.dsQry6
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object btndbf: TBitBtn
    Left = 444
    Top = 421
    Width = 106
    Height = 30
    Caption = 'Generar DBF'
    TabOrder = 16
    OnClick = btndbfClick
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
  object odLeer: TOpenDialog
    InitialDir = 'C:\COBSOL'
    Options = [ofReadOnly, ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 635
    Top = 8
  end
  object pproficiodo: TppReport
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
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 600
    Top = 80
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 71438
      mmPrintPosition = 0
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'OFICIO N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 18255
        mmTop = 42863
        mmWidth = 60590
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'Se'#241'ores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 18255
        mmTop = 58208
        mmWidth = 13377
        BandType = 0
      end
      object pplblSenores: TppLabel
        UserName = 'lblSenores'
        Caption = 'AAAAAAAAAAAAAAAAAAAAAAAA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 18255
        mmTop = 63765
        mmWidth = 71438
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        Caption = 'Lima, 30 de Enero del 2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 117211
        mmTop = 20638
        mmWidth = 47890
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0A544A504547496D61676519060000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002D004E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7DC
          565EB5AD5BE8F140AD25B1BCB99521B6B79A71199599D50E382481B813806B53
          15E25E2DF17587893E23F856CACE1B98E4D2F57F266332A80C4CD18F9704E47C
          87AE3B56D4293A92F25A99D59F247CCF5AF3B5DE7FE25BA77FE07BF4FF00BF34
          79DAEF3FF12DD3BFF03DFA7FDF9AD33462B2BAEC5D9F732FFB46F9E57B48EC21
          FB7448B24A8F718882B1214870849C956FE11F74E71C657CED779FF896E9DFF8
          1EFD3FEFCD25BFFC8D5A8FFD795AFF00E873D6A629BB2E82577D4C8B9BDD6EDA
          D66B86D374F2B1233902FDF24004E3FD4D3F43F10E97E22B4371A65DC770A981
          26C24EC246769E2ACEAA3FE24D7DFF005EF27FE826BC03E19F8F61F0AA3E9AFA
          7BDCB5F5D47F3AC81420385E9839EB5D14B0EEB5394A2B54673A9C9249BD19F4
          5629D4DC53AB94D8C8D714BA5845E6CD1ACB7688FE54AD1B15C371B94838E3D6
          BE73B48CC3F17EDE321C6DD7D47CE496C7DA06324F27EA6BE96BFB36BB8E2F2E
          411CB0CA258CB2EE5DC323047191C9EE2B9BD7F45B1D6E4B6BA9EC1A1D6EC678
          A78E48CFCEAA2442EE871894051900827A0DA09C576616BAA775DD347357A6E5
          AF63AF3462B9E2D213FF00218D7FFF0005E9FF00C62A7B6B5B8BA0C63D6F585D
          A307CDB5863CE7D3742335CCE9B5BFEA6EA69EC4D6FF00F2356A3FF5E56BFF00
          A1CF5A98AE721B3BF7F11DFC2DA9BA6DB3B6FDF450A09186F9B19DC0AFAE70A3
          3C63153DC433DB4811F5AD698EDCE63B389C7E6B0114E51BBD1894ACB5468EAA
          3FE24D7DFF005EF27FE826BE4DF0F5BCD75E22D36182296590DCC64244096203
          02718E78009C8E98AFA56F16796CA78E2D575C9246899551EC102B120E013E40
          C0FC452787F40D37C3B66B65A169F0A5D85C5C5CB8DFE5B1C1219B396EDF203D
          8648C835D986AFF578495AED985587B592EC8D2D0C325C6B10F9B34890DEED8F
          CD95A42A0C313632C49C6589C7BD6CD55B3B24B34936B33C92BF992C8F8CBB60
          0C9C0C745038F4AB55C1277674A564371515C5AC375184993201DCA412194FA8
          2391F5153628C521991732DE68F6B25D4D7F6D35AC4B991EF4884A8EE4BA0DB8
          F6D9D7BF60DB7F14E893409249A9D95BBB0C98A6BA883A7B36188FD6B671463D
          EAAE9AD513677D19CC41E20D1478975094EAFA788CDA5B287FB4A6D243CFC673
          EF562FFC5DA35A5B8922D46C2E18B6DF96F230A99CE19CE7213380480C46738C
          038DFC7BD18F7A7CD1BDDA04A496E660B5BDBC50F717C2189BFE5959F195F432
          1F98FAE57691F866AFC50C7044B1451AC71A8C2AA8C01F85498A3152DDC69098
          A752629690CFFFD9}
        mmHeight = 12435
        mmLeft = 29104
        mmTop = 6879
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 18255
        mmTop = 18785
        mmWidth = 41275
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 164571
      mmPrintPosition = 0
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'De nuestra consideraci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 18256
        mmTop = 794
        mmWidth = 43921
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 
          'Dentro de sus m'#250'ltiples servicios  DERRAMA MAGISTERIAL, otorga c' +
          'r'#233'ditos y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 31221
        mmTop = 12965
        mmWidth = 133350
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 
          'pr'#233'stamos a nivel nacional, a los docentes nombrados activos del' +
          ' Servicio Estatal y Escuela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 19050
        mmWidth = 146579
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 
          'Fiscalizada, los mismos que son descontados directamente por pla' +
          'nilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 25400
        mmWidth = 112713
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 
          'de los maestros atendidos por nuestra instituci'#243'n por un total d' +
          'e :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17463
        mmTop = 41010
        mmWidth = 108215
        BandType = 4
      end
      object pplblmoncuodo: TppLabel
        UserName = 'lblmoncuodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5038
        mmLeft = 101610
        mmTop = 50006
        mmWidth = 25654
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 94986
        mmTop = 50006
        mmWidth = 5291
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 
          'listado   mencionado   que  nuestro    representante  gestionar'#225 +
          '  ante  la  direcci'#243'n  que  Ud.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 84138
        mmWidth = 145786
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 
          'Agradecemos se sirva autorizar el procedimiento de los descuento' +
          's por planilla del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 30956
        mmTop = 77523
        mmWidth = 131763
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label501'
        Caption = 
          'dignamente  dirige. Asimismo, solicito que se entregue a nuestro' +
          ' representante el listado de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 17727
        mmTop = 90752
        mmWidth = 154517
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'descuento por pr'#233'stamos y aportes descontados a los docente.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 17727
        mmTop = 97102
        mmWidth = 103971
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'Atentamente.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 100013
        mmTop = 113242
        mmWidth = 22754
        BandType = 4
      end
      object ppMPie: TppMemo
        UserName = 'MPie'
        Caption = 'MPie'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 23548
        mmLeft = 18256
        mmTop = 140494
        mmWidth = 48948
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppmLinea: TppMemo
        UserName = 'mLinea'
        ForceJustifyLastLine = True
        Caption = #13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Lines.Strings = (
          '')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 31221
        mmTop = 34925
        mmWidth = 144727
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppmTotLetras: TppMemo
        UserName = 'mTotLetras'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 17198
        mmTop = 68527
        mmWidth = 159544
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Monto en cuotas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 50536
        mmTop = 50006
        mmWidth = 29845
        BandType = 4
      end
      object pplblmonapodo: TppLabel
        UserName = 'lblMtoDesc1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5038
        mmLeft = 101610
        mmTop = 55827
        mmWidth = 25654
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 94986
        mmTop = 55827
        mmWidth = 5291
        BandType = 4
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Monto en aportes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 50536
        mmTop = 55827
        mmWidth = 31750
        BandType = 4
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 50536
        mmTop = 62442
        mmWidth = 9525
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 50536
        mmTop = 61648
        mmWidth = 76729
        BandType = 4
      end
      object ppLabel59: TppLabel
        UserName = 'Label401'
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 94986
        mmTop = 62442
        mmWidth = 5291
        BandType = 4
      end
      object pplblmontotdo: TppLabel
        UserName = 'lblmontotdo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5038
        mmLeft = 101610
        mmTop = 62706
        mmWidth = 25654
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pprdetalle: TppReport
    AutoStop = False
    DataPipeline = ppbdedetalle
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
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 544
    Top = 80
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdedetalle'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        UserName = 'Label201'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7938
        mmTop = 794
        mmWidth = 42069
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Departamento de cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 7938
        mmTop = 4498
        mmWidth = 41804
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'DESCUENTO POR PLANILLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 75406
        mmTop = 14288
        mmWidth = 49741
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 160602
        mmTop = 9260
        mmWidth = 10880
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4021
        mmLeft = 160602
        mmTop = 794
        mmWidth = 9779
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4021
        mmLeft = 160602
        mmTop = 5027
        mmWidth = 7938
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
        mmHeight = 3969
        mmLeft = 175155
        mmTop = 794
        mmWidth = 17463
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
        mmHeight = 3969
        mmLeft = 175155
        mmTop = 5027
        mmWidth = 14552
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
        Transparent = True
        mmHeight = 3969
        mmLeft = 175155
        mmTop = 9260
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'PERIODO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 75406
        mmTop = 18256
        mmWidth = 49741
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 172773
        mmTop = 794
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 172773
        mmTop = 5027
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 172773
        mmTop = 9260
        mmWidth = 1058
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPEPAT'
        DataPipeline = ppbdedetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdedetalle'
        mmHeight = 3175
        mmLeft = 42598
        mmTop = 0
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CARGO'
        DataPipeline = ppbdedetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdedetalle'
        mmHeight = 3175
        mmLeft = 26194
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdedetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdedetalle'
        mmHeight = 3175
        mmLeft = 8467
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ASOAPEMAT'
        DataPipeline = ppbdedetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdedetalle'
        mmHeight = 3175
        mmLeft = 85990
        mmTop = 0
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ASONOMBRES'
        DataPipeline = ppbdedetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdedetalle'
        mmHeight = 3175
        mmLeft = 129382
        mmTop = 0
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataPipeline = ppbdedetalle
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdedetalle'
        mmHeight = 3175
        mmLeft = 172773
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7938
        mmTop = 265
        mmWidth = 186002
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 136790
        mmTop = 794
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'MONTOTENV'
        DataPipeline = ppbdedetalle
        DisplayFormat = '###,###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbdedetalle'
        mmHeight = 3175
        mmLeft = 154517
        mmTop = 794
        mmWidth = 12171
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataPipeline = ppbdedetalle
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdedetalle'
        mmHeight = 3175
        mmLeft = 172773
        mmTop = 794
        mmWidth = 20902
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7938
        mmTop = 4233
        mmWidth = 186002
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText1'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12965
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 7673
          mmLeft = 42069
          mmTop = 5027
          mmWidth = 43655
          BandType = 3
          GroupNo = 0
        end
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 7673
          mmLeft = 25665
          mmTop = 5027
          mmWidth = 16670
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'USEID'
          DataPipeline = ppbdedetalle
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdedetalle'
          mmHeight = 4234
          mmLeft = 21167
          mmTop = 0
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppShape1: TppShape
          UserName = 'Shape1'
          mmHeight = 7673
          mmLeft = 7938
          mmTop = 5027
          mmWidth = 17991
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3703
          mmLeft = 9790
          mmTop = 5556
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Modular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 9790
          mmTop = 8996
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Cargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 28046
          mmTop = 5556
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Apellido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 42598
          mmTop = 5556
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Paterno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 42598
          mmTop = 8996
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppShape4: TppShape
          UserName = 'Shape4'
          mmHeight = 7673
          mmLeft = 85461
          mmTop = 5027
          mmWidth = 43655
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Apellido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 85990
          mmTop = 5556
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'Materno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 85990
          mmTop = 8996
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppShape5: TppShape
          UserName = 'Shape5'
          mmHeight = 7673
          mmLeft = 128852
          mmTop = 5027
          mmWidth = 43655
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Nombre(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 129382
          mmTop = 5556
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
        object ppShape6: TppShape
          UserName = 'Shape6'
          mmHeight = 7673
          mmLeft = 172244
          mmTop = 5027
          mmWidth = 21961
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Monto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 172773
          mmTop = 5556
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'Enviado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 172773
          mmTop = 8996
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'UGEL :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4234
          mmLeft = 7938
          mmTop = 0
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 136790
          mmTop = 794
          mmWidth = 11906
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MONTOTENV'
          DataPipeline = ppbdedetalle
          DisplayFormat = '###,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppbdedetalle'
          mmHeight = 3175
          mmLeft = 154517
          mmTop = 794
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataPipeline = ppbdedetalle
          DisplayFormat = '###,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdedetalle'
          mmHeight = 3175
          mmLeft = 172773
          mmTop = 794
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 7938
          mmTop = 265
          mmWidth = 186002
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppbdedetalle: TppBDEPipeline
    DataSource = DM1.dsQry6
    UserName = 'bdedetalle'
    Left = 558
    Top = 86
  end
  object pproficioce: TppReport
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
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 616
    Top = 88
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 71438
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        UserName = 'Label58'
        Caption = 'OFICIO N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 18255
        mmTop = 42863
        mmWidth = 60590
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label61'
        Caption = 'Se'#241'ores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 18255
        mmTop = 58208
        mmWidth = 13377
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'lblSenores'
        Caption = 'AAAAAAAAAAAAAAAAAAAAAAAA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 18255
        mmTop = 63765
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'lblFecha'
        Caption = 'Lima, 30 de Enero del 2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 117211
        mmTop = 20638
        mmWidth = 47890
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0A544A504547496D61676519060000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002D004E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7DC
          565EB5AD5BE8F140AD25B1BCB99521B6B79A71199599D50E382481B813806B53
          15E25E2DF17587893E23F856CACE1B98E4D2F57F266332A80C4CD18F9704E47C
          87AE3B56D4293A92F25A99D59F247CCF5AF3B5DE7FE25BA77FE07BF4FF00BF34
          79DAEF3FF12DD3BFF03DFA7FDF9AD33462B2BAEC5D9F732FFB46F9E57B48EC21
          FB7448B24A8F718882B1214870849C956FE11F74E71C657CED779FF896E9DFF8
          1EFD3FEFCD25BFFC8D5A8FFD795AFF00E873D6A629BB2E82577D4C8B9BDD6EDA
          D66B86D374F2B1233902FDF24004E3FD4D3F43F10E97E22B4371A65DC770A981
          26C24EC246769E2ACEAA3FE24D7DFF005EF27FE826BC03E19F8F61F0AA3E9AFA
          7BDCB5F5D47F3AC81420385E9839EB5D14B0EEB5394A2B54673A9C9249BD19F4
          5629D4DC53AB94D8C8D714BA5845E6CD1ACB7688FE54AD1B15C371B94838E3D6
          BE73B48CC3F17EDE321C6DD7D47CE496C7DA06324F27EA6BE96BFB36BB8E2F2E
          411CB0CA258CB2EE5DC323047191C9EE2B9BD7F45B1D6E4B6BA9EC1A1D6EC678
          A78E48CFCEAA2442EE871894051900827A0DA09C576616BAA775DD347357A6E5
          AF63AF3462B9E2D213FF00218D7FFF0005E9FF00C62A7B6B5B8BA0C63D6F585D
          A307CDB5863CE7D3742335CCE9B5BFEA6EA69EC4D6FF00F2356A3FF5E56BFF00
          A1CF5A98AE721B3BF7F11DFC2DA9BA6DB3B6FDF450A09186F9B19DC0AFAE70A3
          3C63153DC433DB4811F5AD698EDCE63B389C7E6B0114E51BBD1894ACB5468EAA
          3FE24D7DFF005EF27FE826BE4DF0F5BCD75E22D36182296590DCC64244096203
          02718E78009C8E98AFA56F16796CA78E2D575C9246899551EC102B120E013E40
          C0FC452787F40D37C3B66B65A169F0A5D85C5C5CB8DFE5B1C1219B396EDF203D
          8648C835D986AFF578495AED985587B592EC8D2D0C325C6B10F9B34890DEED8F
          CD95A42A0C313632C49C6589C7BD6CD55B3B24B34936B33C92BF992C8F8CBB60
          0C9C0C745038F4AB55C1277674A564371515C5AC375184993201DCA412194FA8
          2391F5153628C521991732DE68F6B25D4D7F6D35AC4B991EF4884A8EE4BA0DB8
          F6D9D7BF60DB7F14E893409249A9D95BBB0C98A6BA883A7B36188FD6B671463D
          EAAE9AD513677D19CC41E20D1478975094EAFA788CDA5B287FB4A6D243CFC673
          EF562FFC5DA35A5B8922D46C2E18B6DF96F230A99CE19CE7213380480C46738C
          038DFC7BD18F7A7CD1BDDA04A496E660B5BDBC50F717C2189BFE5959F195F432
          1F98FAE57691F866AFC50C7044B1451AC71A8C2AA8C01F85498A3152DDC69098
          A752629690CFFFD9}
        mmHeight = 12435
        mmLeft = 29104
        mmTop = 6879
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 18255
        mmTop = 18785
        mmWidth = 41275
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 164571
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        UserName = 'Label41'
        Caption = 'De nuestra consideraci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 18256
        mmTop = 794
        mmWidth = 43921
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label42'
        Caption = 
          'Dentro de sus m'#250'ltiples servicios  DERRAMA MAGISTERIAL, otorga c' +
          'r'#233'ditos y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 31221
        mmTop = 12965
        mmWidth = 133350
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label43'
        Caption = 
          'pr'#233'stamos a nivel nacional, a los docentes nombrados activos del' +
          ' Servicio Estatal y Escuela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 19050
        mmWidth = 146579
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label44'
        Caption = 
          'Fiscalizada, los mismos que son descontados directamente por pla' +
          'nilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 25400
        mmWidth = 112713
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label47'
        Caption = 
          'de los maestros atendidos por nuestra instituci'#243'n por un total d' +
          'e :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17463
        mmTop = 41010
        mmWidth = 108215
        BandType = 4
      end
      object pplmoncuoce: TppLabel
        UserName = 'lblMtoDesc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5038
        mmLeft = 84402
        mmTop = 52123
        mmWidth = 24342
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label49'
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 78846
        mmTop = 52123
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label50'
        Caption = 
          'listado   mencionado   que  nuestro    representante  gestionar'#225 +
          '  ante  la  direcci'#243'n  que  Ud.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 73554
        mmWidth = 145786
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label51'
        Caption = 
          'Agradecemos se sirva autorizar el procedimiento de los descuento' +
          's por planilla del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 30956
        mmTop = 66940
        mmWidth = 131763
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label501'
        Caption = 
          'dignamente  dirige. Asimismo, solicito que se entregue a nuestro' +
          ' representante el listado de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 17727
        mmTop = 80169
        mmWidth = 154517
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label53'
        Caption = 'descuento por pr'#233'stamos y aportes descontados a los docente.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 17727
        mmTop = 86519
        mmWidth = 103971
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label54'
        Caption = 'Atentamente.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 100013
        mmTop = 102659
        mmWidth = 22754
        BandType = 4
      end
      object ppMemo1: TppMemo
        UserName = 'MPie'
        Caption = 'MPie'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 23548
        mmLeft = 18256
        mmTop = 140494
        mmWidth = 48948
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo2: TppMemo
        UserName = 'mLinea'
        ForceJustifyLastLine = True
        Caption = #13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Lines.Strings = (
          '')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 31221
        mmTop = 34925
        mmWidth = 144727
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo3: TppMemo
        UserName = 'mTotLetras'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 17198
        mmTop = 57944
        mmWidth = 159544
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
end
