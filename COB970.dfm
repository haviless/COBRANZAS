object fDistGasto: TfDistGasto
  Left = 243
  Top = 249
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Distribuci'#243'n del Gasto Flat'
  ClientHeight = 279
  ClientWidth = 601
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dtgFecPro: TwwDBGrid
    Left = 6
    Top = 12
    Width = 123
    Height = 253
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'FECPRO'#9'14'#9'Fecha~de Proceso'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dtgFecProRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    DataSource = DM1.dsModelo
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dtgFecProDblClick
  end
  object Edt01: TGroupBox
    Left = 133
    Top = 12
    Width = 460
    Height = 213
    Caption = 'Distribuci'#243'n del Gasto Flat'
    Enabled = False
    TabOrder = 1
    object Shape1: TShape
      Left = 8
      Top = 166
      Width = 449
      Height = 35
    end
    object Label1: TLabel
      Left = 140
      Top = 17
      Width = 63
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '1.50 %'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 249
      Top = 17
      Width = 60
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '2.86 %'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 139
      Top = 57
      Width = 63
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = '5.60 %'
      Color = 12713983
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 248
      Top = 57
      Width = 60
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '2.86 %'
      Color = 12713983
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 374
      Top = 17
      Width = 57
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '4.36 %'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 373
      Top = 57
      Width = 57
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '8.46 %'
      Color = 12713983
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl0101: TLabel
      Left = 104
      Top = 34
      Width = 113
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = clCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl0102: TLabel
      Left = 232
      Top = 33
      Width = 107
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = clCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl0103: TLabel
      Left = 353
      Top = 33
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = clCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl0201: TLabel
      Left = 105
      Top = 74
      Width = 112
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = 12713983
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl0202: TLabel
      Left = 231
      Top = 74
      Width = 107
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = 12713983
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl0203: TLabel
      Left = 351
      Top = 74
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = 12713983
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl0401: TLabel
      Left = 132
      Top = 176
      Width = 84
      Height = 19
      Alignment = taRightJustify
      Caption = '9,999,999.99'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl0402: TLabel
      Left = 253
      Top = 176
      Width = 84
      Height = 19
      Alignment = taRightJustify
      Caption = '9,999,999.99'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl0403: TLabel
      Left = 370
      Top = 176
      Width = 84
      Height = 19
      Alignment = taRightJustify
      Caption = '9,999,999.99'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 42
      Top = 179
      Width = 57
      Height = 13
      Caption = 'TOTAL :  '
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl0301: TLabel
      Left = 105
      Top = 117
      Width = 112
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = 16776176
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl0302: TLabel
      Left = 231
      Top = 117
      Width = 107
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = 16776176
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl0303: TLabel
      Left = 351
      Top = 117
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = 16776176
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 139
      Top = 99
      Width = 63
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = '5.60 %'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 248
      Top = 99
      Width = 60
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '2.86 %'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 373
      Top = 99
      Width = 57
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '8.46 %'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EdtUno: TEdit
      Left = 5
      Top = 32
      Width = 96
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'DOCENTE'
    end
    object EdtDos: TEdit
      Left = 5
      Top = 72
      Width = 96
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = 12713983
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'CESANTE'
    end
    object EdtTres: TEdit
      Left = 5
      Top = 115
      Width = 96
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'CONTRATADO'
    end
  end
  object BitPrint: TBitBtn
    Left = 390
    Top = 241
    Width = 99
    Height = 27
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    TabOrder = 2
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
    Left = 497
    Top = 241
    Width = 99
    Height = 27
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
  object RepFlat: TppReport
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
    Left = 184
    Top = 232
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26723
      mmPrintPosition = 0
      object lblTit: TppLabel
        UserName = 'lblTit'
        AutoSize = False
        Caption = 'DISTRIBUCION DEL FLAT AL 31/07/2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 18256
        mmWidth = 263790
        BandType = 0
      end
      object ppLabel599: TppLabel
        UserName = 'Label599'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel600: TppLabel
        UserName = 'Label600'
        Caption = 'Sistema De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 4498
        mmWidth = 29168
        BandType = 0
      end
      object ppLabel601: TppLabel
        UserName = 'Label5701'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233098
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel602: TppLabel
        UserName = 'Label1'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233098
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel603: TppLabel
        UserName = 'Label603'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233363
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable56: TppSystemVariable
        UserName = 'SystemVariable56'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 246592
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable57: TppSystemVariable
        UserName = 'SystemVariable57'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 246328
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable58: TppSystemVariable
        UserName = 'SystemVariable58'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 247121
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel604: TppLabel
        UserName = 'Label604'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 244740
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel605: TppLabel
        UserName = 'Label605'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 244740
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel606: TppLabel
        UserName = 'Label606'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 244740
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 120915
      mmPrintPosition = 0
      object ppShape21: TppShape
        UserName = 'Shape201'
        mmHeight = 10848
        mmLeft = 15346
        mmTop = 83608
        mmWidth = 35983
        BandType = 4
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 10848
        mmLeft = 15346
        mmTop = 55563
        mmWidth = 35983
        BandType = 4
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 10848
        mmLeft = 15610
        mmTop = 25665
        mmWidth = 35983
        BandType = 4
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 8996
        mmLeft = 184415
        mmTop = 3969
        mmWidth = 57415
        BandType = 4
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 8996
        mmLeft = 117740
        mmTop = 3969
        mmWidth = 57415
        BandType = 4
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 8996
        mmLeft = 51065
        mmTop = 4233
        mmWidth = 57415
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 10848
        mmLeft = 184415
        mmTop = 13758
        mmWidth = 57415
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 10848
        mmLeft = 117740
        mmTop = 13758
        mmWidth = 57415
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 10848
        mmLeft = 51065
        mmTop = 25665
        mmWidth = 57415
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 10848
        mmLeft = 51329
        mmTop = 14023
        mmWidth = 57150
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = '1.50 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 66146
        mmTop = 17463
        mmWidth = 25400
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = '2.86 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 135467
        mmTop = 16933
        mmWidth = 24606
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = '4.36 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 203200
        mmTop = 17198
        mmWidth = 25400
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'DOCENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 18256
        mmTop = 28575
        mmWidth = 33073
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 10848
        mmLeft = 117740
        mmTop = 25665
        mmWidth = 57415
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 10848
        mmLeft = 184415
        mmTop = 25665
        mmWidth = 57415
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 10848
        mmLeft = 184150
        mmTop = 43656
        mmWidth = 57415
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 10848
        mmLeft = 117475
        mmTop = 43656
        mmWidth = 57415
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 10848
        mmLeft = 50800
        mmTop = 55563
        mmWidth = 57415
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 10848
        mmLeft = 51065
        mmTop = 43921
        mmWidth = 57150
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = '5.60 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 65881
        mmTop = 47361
        mmWidth = 25400
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = '2.86 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 135202
        mmTop = 46831
        mmWidth = 24606
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = '8.46 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 202936
        mmTop = 47096
        mmWidth = 25400
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'CESANTE (*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 57944
        mmWidth = 33338
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 10848
        mmLeft = 117475
        mmTop = 55563
        mmWidth = 57415
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 10848
        mmLeft = 184150
        mmTop = 55563
        mmWidth = 57415
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 10848
        mmLeft = 50800
        mmTop = 83608
        mmWidth = 57415
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 10848
        mmLeft = 117475
        mmTop = 83608
        mmWidth = 57415
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 10848
        mmLeft = 184150
        mmTop = 83608
        mmWidth = 57415
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'CONTRATADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 17198
        mmTop = 87048
        mmWidth = 33867
        BandType = 4
      end
      object lblr0101: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 60061
        mmTop = 28840
        mmWidth = 35719
        BandType = 4
      end
      object lblr0102: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 129646
        mmTop = 28840
        mmWidth = 35719
        BandType = 4
      end
      object lblr0103: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 197644
        mmTop = 29104
        mmWidth = 35719
        BandType = 4
      end
      object lblr0201: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 60061
        mmTop = 58738
        mmWidth = 35719
        BandType = 4
      end
      object lblr0202: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 129646
        mmTop = 58738
        mmWidth = 35719
        BandType = 4
      end
      object lblr0203: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 197644
        mmTop = 59002
        mmWidth = 35719
        BandType = 4
      end
      object lblr0301: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 60061
        mmTop = 86519
        mmWidth = 35719
        BandType = 4
      end
      object lblr0302: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 129646
        mmTop = 86519
        mmWidth = 35719
        BandType = 4
      end
      object lblr0303: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 197644
        mmTop = 86784
        mmWidth = 35719
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 28310
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 59002
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 87842
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 176213
        mmTop = 87842
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 59531
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 29369
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'CONTRIBUCION F.S.C.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 51858
        mmTop = 6879
        mmWidth = 55827
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'GASTOS ADMINISTRATIVOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 118798
        mmTop = 6879
        mmWidth = 55298
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 'TOTAL GASTOS FLAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 185473
        mmTop = 6879
        mmWidth = 55298
        BandType = 4
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        mmHeight = 10848
        mmLeft = 20373
        mmTop = 100542
        mmWidth = 30692
        BandType = 4
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        mmHeight = 10848
        mmLeft = 50800
        mmTop = 100542
        mmWidth = 57415
        BandType = 4
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 10848
        mmLeft = 117475
        mmTop = 100542
        mmWidth = 57415
        BandType = 4
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 10848
        mmLeft = 184150
        mmTop = 100542
        mmWidth = 57415
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'TOTALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 22225
        mmTop = 103981
        mmWidth = 25400
        BandType = 4
      end
      object lblr0401: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 60061
        mmTop = 103452
        mmWidth = 35719
        BandType = 4
      end
      object lblr0402: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 129646
        mmTop = 103452
        mmWidth = 35719
        BandType = 4
      end
      object lblr0403: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Caption = '9,999,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 197644
        mmTop = 103717
        mmWidth = 35719
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 104775
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 176213
        mmTop = 104775
        mmWidth = 6350
        BandType = 4
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 10848
        mmLeft = 184150
        mmTop = 70644
        mmWidth = 57415
        BandType = 4
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 10848
        mmLeft = 117475
        mmTop = 70644
        mmWidth = 57415
        BandType = 4
      end
      object ppShape28: TppShape
        UserName = 'Shape101'
        mmHeight = 10848
        mmLeft = 51065
        mmTop = 70908
        mmWidth = 57150
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Caption = '5.60 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 65881
        mmTop = 74348
        mmWidth = 25400
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = '2.86 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 135202
        mmTop = 73819
        mmWidth = 24606
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label35'
        AutoSize = False
        Caption = '8.46 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 202936
        mmTop = 74083
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 31750
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        UserName = 'Label36'
        AutoSize = False
        Caption = 
          'Los valores mostrados en las etiquetas corresponden a los porcen' +
          'tajes del periodo actual. El c'#225'lculo considera para los Cesantes' +
          ' valores de flat de la siguiente manera:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 14552
        mmTop = 1588
        mmWidth = 225161
        BandType = 8
      end
      object ppLabel26: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = '- Cesantes hasta el 13/12/2007, un flat igual 7.16%.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 14552
        mmTop = 6085
        mmWidth = 225161
        BandType = 8
      end
      object ppLabel27: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Caption = '- Cesantes desde el 14/12/2007 un flat igual 8.46%.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 14552
        mmTop = 10583
        mmWidth = 225161
        BandType = 8
      end
      object ppLabel28: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Caption = '(*) Nota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 12435
        BandType = 8
      end
      object ppLabel29: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Caption = 
          '- El C'#225'lculo del flat esta diferenciado por el porcentaje aplica' +
          'do, seg'#250'n fecha de otorgamiento del cr'#233'dito.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 14552
        mmTop = 15081
        mmWidth = 225161
        BandType = 8
      end
    end
  end
end
