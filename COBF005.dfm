object fDetalleDevFSC: TfDetalleDevFSC
  Left = 437
  Top = 264
  BorderStyle = bsDialog
  Caption = 'Detalle de las Devoluciones al FSC'
  ClientHeight = 254
  ClientWidth = 564
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgDetDevFSC: TwwDBGrid
    Left = 2
    Top = 5
    Width = 560
    Height = 197
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
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
    OnCalcCellColors = dbgDetDevFSCCalcCellColors
    OnDblClick = dbgDetDevFSCDblClick
  end
  object BitPrintDet: TBitBtn
    Left = 258
    Top = 220
    Width = 100
    Height = 27
    Hint = 'Imprimir'
    Caption = 'Detalles'
    Enabled = False
    TabOrder = 1
    OnClick = BitPrintDetClick
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
  object BtnExcel: TBitBtn
    Left = 372
    Top = 220
    Width = 81
    Height = 27
    Caption = 'Excel'
    TabOrder = 2
    OnClick = BtnExcelClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000DFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDF00000000000000000000000000000000000000
      00003F3F007F7F007F7F007F7F00505050BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF
      0000000000000000000000000000003F3F00FFFF3FFFFF7FFFFF005F5F208080
      80808080BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF0000000000000000003F3F00FF
      FF3FFFFFBFFFFF005F5F20808080808080808080909090BFBFBFDFDFDFDFDFDF
      DFDFDFAFAFAF0000003F3F00FFFF3FFFFFBFFFFF003F3F008080808080808080
      80808080808080808080DFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFF
      FF003F3F00000000AFAFAFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
      9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F00000000000000000000AFAFAFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F0000
      0000000000000000000000000000AFAFAFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00
      FFFF00FFFF7FFFFF003F3F009F9F9F9F9F9F0000000000000000000000000000
      00AFAFAFDFDFDFDFDFDF0000000000000000000000000000009F9F9FDFDFDFDF
      DFDF9F9F9F000000000000000000000000000000DFDFDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FCFAFAFDFDFDF
      CFAFAFCFAFAFDFDFDFBF7F7FCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFBF7F7FDFDF
      DFCFAFAFCFAFAFDFDFDFAF6F6FDFDFDFAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF
      6F6FAF6F6FCFAFAFBF9F9FAF6F6FAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF6F6F
      9F3F3FBF9F9FDFDFDFA06060BF9F9FBF9F9FA06060BF9F9FBF9F9FBF9F9FA060
      60903030903030BF9F9FBF9F9FDFDFDFBF9F9FBF9F9FDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF9F9FBF9F9FDFDFDF}
  end
  object BitSalir: TBitBtn
    Left = 483
    Top = 220
    Width = 78
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
  object ppD1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppRepDetCob
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 112
    Top = 224
  end
  object ppRepDetCob: TppReport
    AutoStop = False
    DataPipeline = ppBDE1
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
    Template.FileName = 
      'D:\Desarrollo DM\COBRANZAS\FUENTES_CLIENTE_201606\FUENTES_CLIENT' +
      'E_201606 - MODIFICADO\RepDetCob.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 72
    Top = 224
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDE1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 52388
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape3'
        mmHeight = 11377
        mmLeft = 0
        mmTop = 41010
        mmWidth = 251884
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label53'
        Caption = 'Corr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 1058
        mmTop = 42863
        mmWidth = 6181
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label56'
        Caption = 'Pag'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 1206
        mmTop = 48154
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label63'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 10054
        mmTop = 48154
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label69'
        Caption = 'N'#176' Docum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 30692
        mmTop = 48154
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label64'
        Caption = 'Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 106363
        mmTop = 48154
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label701'
        Caption = 'Aplic.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 137584
        mmTop = 48154
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label72'
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 118004
        mmTop = 42333
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label73'
        Caption = 'Reg.Sis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 71967
        mmTop = 48154
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label75'
        Caption = 'Cred.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 48154
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label76'
        Caption = 'Cuo.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 164571
        mmTop = 48154
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label77'
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 183357
        mmTop = 48154
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label78'
        Caption = 'Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 207698
        mmTop = 48154
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label79'
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 237067
        mmTop = 48154
        mmWidth = 11113
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 8467
        mmTop = 41275
        mmWidth = 794
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 105569
        mmTop = 41010
        mmWidth = 794
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 147109
        mmTop = 41010
        mmWidth = 794
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 8467
        mmTop = 46567
        mmWidth = 165629
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 174096
        mmTop = 41010
        mmWidth = 794
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 201084
        mmTop = 41010
        mmWidth = 794
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 230982
        mmTop = 41010
        mmWidth = 794
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label806'
        Caption = 'Sistema de Cr'#233'ditos y Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 2910
        mmTop = 12700
        mmWidth = 48948
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label82'
        AutoSize = False
        Caption = 'C'#243'digo Modular '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 24871
        mmWidth = 25400
        BandType = 0
      end
      object LblCodMod5: TppLabel
        UserName = 'LblCodMod5'
        Caption = '1032789522'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 30427
        mmTop = 24871
        mmWidth = 17780
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label85'
        AutoSize = False
        Caption = 'Se'#241'or(a)           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 56356
        mmTop = 24871
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label86'
        AutoSize = False
        Caption = 'N'#176' Deuda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 30163
        mmWidth = 26194
        BandType = 0
      end
      object lblTipCre2: TppLabel
        UserName = 'lblTipCre2'
        Caption = 'F.S.C. POR INCOBRABILIDAD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 85461
        mmTop = 30427
        mmWidth = 44450
        BandType = 0
      end
      object lblNomGen3: TppLabel
        UserName = 'lblNomGen3'
        Caption = 'BARRANTES TORRES NOE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 85461
        mmTop = 24871
        mmWidth = 41148
        BandType = 0
      end
      object lblNumPre2: TppLabel
        UserName = 'lblNumPre2'
        Caption = '20090000860'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 30427
        mmTop = 30163
        mmWidth = 19558
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Caption = 'Fecha         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 35454
        mmWidth = 23813
        BandType = 0
      end
      object lblFecPre2: TppLabel
        UserName = 'lblFecPre2'
        Caption = '29/09/2009'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 30427
        mmTop = 35454
        mmWidth = 16002
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label92'
        AutoSize = False
        Caption = 'Ugel  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 162719
        mmTop = 24871
        mmWidth = 7673
        BandType = 0
      end
      object lblUse2: TppLabel
        UserName = 'lblUse2'
        Caption = '2F'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 179917
        mmTop = 24871
        mmWidth = 3725
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label94'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28310
        mmTop = 35454
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label95'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 83344
        mmTop = 30427
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label96'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 83344
        mmTop = 24871
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label97'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 30163
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label98'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 24871
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label99'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 24871
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label100'
        AutoSize = False
        Caption = 'Lugar de Generaci'#242'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 56356
        mmTop = 35983
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 83344
        mmTop = 35983
        mmWidth = 1323
        BandType = 0
      end
      object lblLugarGenera: TppLabel
        UserName = 'Label2'
        Caption = 'SEDE CENTRAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 85461
        mmTop = 35719
        mmWidth = 24299
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 254265
        mmTop = 6085
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label83'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 238125
        mmTop = 1323
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label87'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 238125
        mmTop = 6085
        mmWidth = 11906
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 254265
        mmTop = 1323
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 250561
        mmTop = 6085
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 250561
        mmTop = 1323
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'LblTitulo1'
        AutoSize = False
        Caption = 'DETALLE DE PAGOS AL FSC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 42333
        mmTop = 19050
        mmWidth = 168805
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label6'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 238125
        mmTop = 11113
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 250561
        mmTop = 10583
        mmWidth = 1323
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 254265
        mmTop = 10583
        mmWidth = 1778
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label8'
        Caption = 'Mes Planilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 85990
        mmTop = 48154
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label1001'
        AutoSize = False
        Caption = 'Tipo de Deuda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 56356
        mmTop = 30427
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label4'
        Caption = 'Del Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 47890
        mmTop = 42333
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label10'
        Caption = 'Dev.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 124619
        mmTop = 48419
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label11'
        Caption = 'Destino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 152400
        mmTop = 42333
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label12'
        Caption = 'F.Operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 50271
        mmTop = 48154
        mmWidth = 17568
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label14'
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 18521
        mmTop = 48154
        mmWidth = 7451
        BandType = 0
      end
      object IMGBLOQUEA: TppImage
        UserName = 'IMGBLOQUEA'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        Visible = False
        Picture.Data = {
          07544269746D617006560000424D065600000000000036040000280000003101
          0000440000000100080000000000D05100000000000000000000000100000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
          E00000400000004020000040400000406000004080000040A0000040C0000040
          E00000600000006020000060400000606000006080000060A0000060C0000060
          E00000800000008020000080400000806000008080000080A0000080C0000080
          E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
          E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
          E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
          E00040000000400020004000400040006000400080004000A0004000C0004000
          E00040200000402020004020400040206000402080004020A0004020C0004020
          E00040400000404020004040400040406000404080004040A0004040C0004040
          E00040600000406020004060400040606000406080004060A0004060C0004060
          E00040800000408020004080400040806000408080004080A0004080C0004080
          E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
          E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
          E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
          E00080000000800020008000400080006000800080008000A0008000C0008000
          E00080200000802020008020400080206000802080008020A0008020C0008020
          E00080400000804020008040400080406000804080008040A0008040C0008040
          E00080600000806020008060400080606000806080008060A0008060C0008060
          E00080800000808020008080400080806000808080008080A0008080C0008080
          E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
          E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
          E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
          E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
          E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
          E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
          E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
          E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
          E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
          E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
          A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF6F608F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF607F7F7F7F6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6
          F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6
          F6F6F6FFFFFFFFF608F7A4A55E57A6F6FFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6
          F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF60808080808080808080808080808080808F6F6F6
          FFFFFFFFFFFFFFFFFFFFF6080808080808080808080808080808080808080808
          F6FFFFFFFFFFFFFFFFFFFFF6F60807F7F7F7F7F7F70707F6F6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF6F60807F7F7F7F7F7F70707F6F6F607F7A55657
          57575708FFFFFFFFFFFFFFF6F6080707F7F7F7F7F7F7070708F6FFFFFFFFFFFF
          FFFFFFFFFFF60808080808080808080808080808080808080808080808F6F6F6
          080808080808F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6080808080808F6FF
          F6F6080808080808080808080808080808F6F6F6FFFFFFFFFFFFFFFFFFF60808
          08080808F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6080808080808F6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7
          A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4F7F707F6FFFFFFFFFFFFFFF6F7A4
          A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4F7F6FFFFFFFFFFFFFFF60807
          F7A4A4A59D5D5D5D5D9DA5F7F707F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF608
          07F7A4A4A59D5D5D5D5D9DA5A5F7F7A45D57574FF9F957A6F6FFFFFFFFFFF607
          F7A4A4A59D5D5D5D5D5D9DA5A5F707F6FFFFFFFFFFFFFFFFF6F7A4A4A4A4A4A4
          A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4F70708F7A4A4A4A4A4A4F7F6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFF08F7A4A4A4A4A4A4F7F608F7A4A4A4A4A4A4A4A4A4A4
          A4A4A4A4A4F7F707F6F6FFFFFFFFFFFFF6F7A4A4A4A4A4A4F7F6FFFFFFFFFFFF
          FFFFFFFFFFFFFFFF08F7A4A4A4A4A4A4F7F6FFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08A5575757575757575757575757
          575757575756565EA5F708F6FFFFFFFFFFF6A557575757575757575757575757
          575757575757575757A7FFFFFFFFFFFFF607F7A49D5657575757575757575757
          5E9DF708F6FFFFFFFFFFFFFFFFFFFFFFFFF607F7A45D56575757575757575757
          575E9D565757F9F9F9F94F5708FFFFFFFF08F7A49D5657575757575757575757
          5756A5F7F6FFFFFFFFFFFFFF08A5575757575757575757575757575757575757
          57575757575707A557575757575757AFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F79D
          57575757575757EF07A5575757575757575757575757575757565E9DF707F6FF
          FFFFFFFFF6A557575757575757AFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F79D5757
          5757575757EFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF085E574F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F575757579E07
          F6FFFFFFFFF69E574F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5757FFFF
          FFFFFF08F7A45D5757574F0FF9F9F9F9F9F90F4F575756A507F6FFFFFFFFFFFF
          FFFFFFFF08F7A45D5757574F0FF9F9F9F9F9F90F4F5757570FF9F9F9F9F9F957
          A7FFFFFF08F7A55657574F0FF9F9F9F9F9F9F90F4F575756A5F6FFFFFFFFFFFF
          085E574F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F57AFA657574F4F
          4F4F5757F6FFFFFFFFFFFFFFFFFFFFFFFFF6F757574F4F4F4F4F57A7075E574F
          4F4F4F4F4F4F4F4F4F4F4F4F4F575757575EF708FFFFFFFFF6A657574F4F4F4F
          5757F6FFFFFFFFFFFFFFFFFFFFFFFFF6F757574F4F4F4F4F57A7FFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90F57579E08FFFFFFFFF69E57F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F94F57FFFFFFFF08F7A45657570FF9F9F9
          F9F9F9F9F9F9F9F9F90F57575E07F6FFFFFFFFFFFFFFFF08F7A45657570FF9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90F5757AFFFFFF6F7A557574FF9F9F9
          F9F9F9F9F9F9F9F9F9F90F5757A6F6FFFFFFFFFF085E57F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F957AF07574FF9F9F9F90F5707FFFFFFFFFFFFFF
          FFFFFFFFF607A5570FF9F9F9F90F57EF075E57F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F90F575757A608FFFFFFFF07574FF9F9F9F90F5707FFFFFFFFFFFFFFFFFF
          FFFFF607A5570FF9F9F9F90F57EFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F94F57A6F6FFFFFFF69E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F94F57FFFFFFF6F7A557570FF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F94F
          575607F6FFFFFFFFFFFFF6F7A557570FF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F90F57575FEFFFFFF6F7A55757F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          5757EEFFFFFFFFFF085E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F957AFF65E57F9F9F9F9F957A7FFFFFFFFFFFFFFFFFFFFFFF6F75E57F9F9F9F9
          F9575FFF075E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F957579EF6FFFF
          FFF65E57F9F9F9F9F957A7FFFFFFFFFFFFFFFFFFFFFFF6F75E57F9F9F9F9F957
          5FFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF085E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F95757EFFFFF
          FFF69E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F94F57FFFFF6F7A557
          57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90F575608FFFFFFFFFFF6F7A5
          5757F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90F5757EFFFFFFFFF08A5
          5657F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9575EF6FFFFFFFF085E57F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F957AFF6AE570FF9F9F9F957
          57F6FFFFFFFFFFFFFFFFFFF608A5574FF9F9F9F9F957AFFF075E57F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F95757A6F6FFFFF6AE570FF9F9F9F95757F6
          FFFFFFFFFFFFFFFFFFF608A5574FF9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F94F4F
          4F4F4F4F4F4F4F4F4FF9F9F9F9F9F9F95757F6FFFFF69E57F9F9F9F9F90F4F4F
          4F4F4F4F4F4F4F4F4F4F4F4F575FFFFF07A55657F9F9F9F9F9F9F90F4F575757
          574F0FF9F9F9F9F9F90F579EF6FFFFFFFF07A55657F9F9F9F9F9F9F94F575757
          57570FF9F9F9F9F9F9F90F575EF6FFFFFFF6079D570FF9F9F9F9F9F94F575757
          575757F9F9F9F9F9F94F5707FFFFFFFF085E57F9F9F9F9F94F4F4F4F4F4F4F4F
          4F4F4F4F4F4F4F4F4F57AFFF08574FF9F9F9F90F57AE08080808080808080808
          F75D57F9F9F9F9F94F57F6FF075E57F9F9F9F9F94F4F4F4F4F4F4F4F0FF9F9F9
          F9F9F9F95757EFFFFFFF08574FF9F9F9F90F57AE08080808080808080808F75D
          57F9F9F9F9F94F57F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957575757575757575757575757F9
          F9F9F9F90F57EFFFFFF69E57F9F9F9F9F9575757575757575757575757575757
          57AFFFF6F75E570FF9F9F9F9F9F95757579FAFA79F575757F9F9F9F9F9F94F57
          AFFFFFFFF6F75E570FF9F9F9F9F90F575756565757570FF9F9F9F9F9F9F9F94F
          57AFFFFFFFF6F75657F9F9F9F9F9F957579FAFAFAFA757574FF9F9F9F9F9579F
          F6FFFFFF085E57F9F9F9F9F957575757575757575757575757575757575FF6FF
          F69E57F9F9F9F9F9575EA4A4A4A4A4A4A4A4A4A4A45657F9F9F9F9F957A7FFFF
          075E57F9F9F9F9F9575757575757575757574FF9F9F9F9F9F9575EF6FFFFF69E
          57F9F9F9F9F9575EA4A4A4A4A4A4A4A4A4A4A45657F9F9F9F9F957A7FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E
          57F9F9F9F9F957EFFFFFFFFFFFFFFFFFF6A7574FF9F9F9F9F957A7FFFFF69E57
          F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08A55757F9F9F9F9F9
          0F5757EFFFFFFFFFFFFFAF5757F9F9F9F9F9F95756F6FFFF08A55757F9F9F9F9
          F94F575F07F757574FF9F9F9F90FF9F9F9F9F9F95756F6FFFFF6F7574FF9F9F9
          F9F9575FF6FFFFFFFFFFF65F570FF9F9F9F94F57F6FFFFFF085E57F9F9F9F9F9
          57EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07570FF9F9F9F94F575757
          575757575757575757570FF9F9F9F90F57EFFFFF075E57F9F9F9F9F957EFFFFF
          FFFFFFFFF6A75757F9F9F9F9F94F5707FFFFFF07570FF9F9F9F94F5757575757
          57575757575757570FF9F9F9F90F57EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957EFFFFFFFFF
          FFFFFFFFFFF65E57F9F9F9F9F9575FFFFFF69E57F9F9F9F9F957AFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF6075E570FF9F9F9F9F9579FF6FFFFFFFFFFFFFFFFEF
          5757F9F9F9F9F90F57EFFFF6075E570FF9F9F9F9F957A7F6FFEF574FF9F9F9F9
          4F5757F9F9F9F9F90F57EFFFFFF6A5570FF9F9F9F94F57F6FFFFFFFFFFFFFF07
          5757F9F9F9F90F57EFFFFFFF085E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF65657F9F9F9F9F94F4F4F4F4F4F4F4F4F4F4F4F0FF9F9
          F9F9F9575FFFFFFF075E57F9F9F9F9F957EFFFFFFFFFFFFFFFFF075757F9F9F9
          F9F9579FFFFFFFF65657F9F9F9F9F94F4F4F4F4F4F4F4F4F4F4F4F0FF9F9F9F9
          F9575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF085E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFF08A5570FF9F9F9
          F9575FFFFFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7
          5757F9F9F9F9F95757F6FFFFFFFFFFFFFFFFFFFFEF574FF9F9F9F9F9575FFFF6
          F75757F9F9F9F9F95757F6FFFFF65F57F9F90F57579F574FF9F9F9F9F9579FFF
          FF08A5570FF9F9F9F957A7FFFFFFFFFFFFFFFFF65E57F9F9F9F9F957EFFFFFFF
          085E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A657
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F957AFFFFFFF075E57F9
          F9F9F9F957EFFFFFFFFFFFFFFFFFF6AE570FF9F9F9F94F57F6FFFFF6A657F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F957AFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9
          F9F957EFFFFFFFFFFFFFFFFFF6079D57F9F9F9F9F9575FFFFFF69E57F9F9F9F9
          F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A5574FF9F9F9F90F57A7FFFFFF
          FFFFFFFFFFFFFFFFF65E57F9F9F9F9F94F57F6F6A5574FF9F9F9F90F57EFFFFF
          FFFFEF575757575FF6F65657F9F9F9F9F95757F6FF089E57F9F9F9F9F957EFFF
          FFFFFFFFFFFFFFF69E57F9F9F9F9F957AFFFFFFF085E57F9F9F9F9F957EFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08574FF9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F94F57F6FFFFFF075E57F9F9F9F9F957EFFFFFFFFFFFFF
          FFFFFF07574FF9F9F9F90F57EFFFFFFF08574FF9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F94F57F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957EFF6F6F6F6F6F6F608
          F7A45E57F9F9F9F9F957A7FFFFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF089D57F9F9F9F9F94F57F6FFFFFFFFFFFFFFFFFFFFFFF6F7574F
          F9F9F9F90F5707089D57F9F9F9F9F95757FFFFFFFFFFFF5F579FEFFFFFF6F757
          4FF9F9F9F90F57EFFF089E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFF6A557F9F9
          F9F9F957AFFFFFFF085E57F9F9F9F9F957EFF6F6F6F6F6F6F6F6F6F6F6F6F6F6
          FFFFFFFFFFFFF65E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F957A7
          FFFFFFFF075E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFFF65E57F9F9F9F9F957
          AFFFFFFFF65E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F957A7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF085E57F9F9F9F9F957A5F7F7F7F7F7F7A4A4A45E574FF9F9F9F90F57EFFF
          FFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF075E57F9F9F9
          F9F9575FFFFFFFFFFFFFFFFFFFFFFFFFFF07574FF9F9F9F9F957EF075E57F9F9
          F9F9F957A7FFFFFFFFFFFFFFF6FFFFFFFFFF07574FF9F9F9F9F957AFFF085E57
          F9F9F9F9F957EFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F957AFFFFFFF085E57F9
          F9F9F9F957A6F7F7F7F7F7F7F7F7F7F7F7F7F707F6FFFFFFFFFFFFEF570FF9F9
          F9F9F94F4F4F4F4F4F4F4F4FF9F9F9F9F90F57EFFFFFFFFF075E57F9F9F9F9F9
          57EFFFFFFFFFFFFFFFFFFFF69E57F9F9F9F9F957A7FFFFFFFFEF570FF9F9F9F9
          F94F4F4F4F4F4F4F4F4FF9F9F9F9F90F57EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F9575E
          5D5D5D5E5656565657574FF9F9F9F9F95757FFFFFFF69E57F9F9F9F9F957AFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF075E57F9F9F9F9F957A7FFFFFFFFFFFFFFFF
          FFFFFFFFFF085657F9F9F9F9F957AF075E57F9F9F9F9F957A7FFFFFFFFFFFFFF
          FFFFFFFFFFFF085657F9F9F9F9F957AFFF085E57F9F9F9F9F957EFFFFFFFFFFF
          FFFFFFF6A557F9F9F9F9F957A7FFFFFF085E57F9F9F9F9F9575E5D5D5D5D5D5D
          5D5D5D5D5D5D5D9EF6FFFFFFFFFFFFF65657F9F9F9F90F575F9F9F9F9F5E5757
          F9F9F9F9F9575FFFFFFFFFFF075E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFFF6
          A557F9F9F9F9F9579FFFFFFFFFF65657F9F9F9F90F575F9F9F9F9F5E5757F9F9
          F9F9F9575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F9575757575757575757574F0FF9F9
          F9F9F94F57EFFFFFFFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF6075657F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9
          F957A7075657F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9
          F9F957A7FF075E57F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F957
          A7FFFFFF085E57F9F9F9F9F957575757575757575757575757575757A7FFFFFF
          FFFFFFF6A657F9F9F9F9F957A7FFFFFFF6F75657F9F9F9F9F957EFFFFFFFFFFF
          075E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F9579FFFFFFF
          FFF6A657F9F9F9F9F957A7FFFFFFF6F75657F9F9F9F9F957EFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E
          57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F95757A7FFFFFFFFF69E57
          F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6075657F9F9F9F9F957EF
          FFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957A7075657F9F9F9F9F957
          EFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957A7FF075E57F9F9F9F9
          0F57EFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F957A7FFFFFF085E57F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9579FFFFFFFFFFFFFFF07574FF9F9F9F957
          57F6FFFF07A5570FF9F9F9F94F57F6FFFFFFFFFF075E57F9F9F9F9F957EFFFFF
          FFFFFFFFFFFFFFF6A557F9F9F9F9F9575FFFFFFFFFFF07574FF9F9F9F95757F6
          FFFF07A5570FF9F9F9F94F57F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9575757AFFFFFFFFFFFF69E57F9F9F9F9F957AFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF075657F9F9F9F90F57EFFFFFFFFFFFFFFFFFFFFFFFFF
          FF089E57F9F9F9F9F957A7075657F9F9F9F90F57EFFFFFFFFFFFFFFFFFFFFFFF
          FFFF079E57F9F9F9F9F957A7FF075E57F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6
          A557F9F9F9F9F957A7FFFFFF085E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9579FFFFFFFFFFFFFFFF65E57F9F9F9F90F57EFFFF6F75E57F9F9F9F9F9
          57A7FFFFFFFFFFFF075E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFFF6A557F9F9
          F9F9F9575FFFFFFFFFFFF65E57F9F9F9F90F57EFFFF6F75E57F9F9F9F9F957A7
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF085E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F95757A6F6
          FFFFFFFFFFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0856
          57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFFFFFFFFFF075E57F9F9F9F9F957A708
          5657F9F9F9F9F957EFFFFFFFFFFFFFFFFFFFFFFFFFFF075E57F9F9F9F9F957A7
          FF075E57F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F957A7FFFFFF
          085E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9579FFFFFFFFFFFFFFF
          FFAE570FF9F9F9F9579FF608A5574FF9F9F9F90F57EFFFFFFFFFFFFF075E57F9
          F9F9F9F957EFFFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F9579FFFFFFFFFFFFFAE
          570FF9F9F9F9579FF608A5574FF9F9F9F90F57EFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9
          F9F9F90F0F0F0F0F0F0F0FF9F9F9F9F9F95757A6F6FFFFFFFFF69E57F9F9F9F9
          F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957A7FFFFFFFF
          FFFFFFFFFFFFFFFFF6075E57F9F9F9F9F957AF085657F9F9F9F9F957A7FFFFFF
          FFFFFFFFFFFFFFFFFFF6075E57F9F9F9F9F957AFFF075E57F9F9F9F90F57EFFF
          FFFFFFFFFFFFFFF6A557F9F9F9F9F957A7FFFFFF085E57F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9579FFFFFFFFFFFFFFFFFF65757F9F9F9F94F570807
          9D570FF9F9F9F9575FFFFFFFFFFFFFFF075E57F9F9F9F9F957EFFFFFFFFFFFFF
          FFFFFF089D57F9F9F9F9F9579FFFFFFFFFFFFFF65757F9F9F9F94F5708079D57
          0FF9F9F9F9575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957575757575757575757
          570FF9F9F9F9575707FFFFFFFFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF65E57F9F9F9F9F9579FFFFFFFFFFFFFFFFFFFFFFFFFF6F75657
          F9F9F9F9F957AFF65E57F9F9F9F9F9579FFFFFFFFFFFFFFFFFFFFFFFFFF6F756
          57F9F9F9F9F957AFFF075E57F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6A557F9F9
          F9F9F957A7FFFFFF085E57F9F9F9F9F957575757575757575757575757575757
          A7FFFFFFFFFFFFFFFFF6A657F9F9F9F9F957A6F75657F9F9F9F90F57EFFFFFFF
          FFFFFFFF075E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFF079D57F9F9F9F9F957
          A7FFFFFFFFFFFFF6A657F9F9F9F9F957A6F75657F9F9F9F90F57EFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF085E57F9F9F9F9F957EFEFEFEFEFEFEFEFA757570FF9F9F9F957A7FFFFFF
          FFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A657F9F9F9
          F9F9575EF6FFFFFFFFFFFFFFFFFFFFFF07A5574FF9F9F9F90F57EFF69E57F9F9
          F9F9F9575EF6FFFFFFFFFFFFFFFFFFFFFF07A5574FF9F9F9F90F57EFFF075E57
          F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F957A7FFFFFF085E57F9
          F9F9F9F957A7AFAFAFAFAFAFAFAFAFAFAFAFAFAFF6FFFFFFFFFFFFFFFFFF0757
          4FF9F9F9F95756A4574FF9F9F9F94F57F6FFFFFFFFFFFFFF075E57F9F9F9F9F9
          57EFFFFFFFFFFFFFFFFFF6F75E57F9F9F9F9F957A7FFFFFFFFFFFFFF07574FF9
          F9F9F95756A4574FF9F9F9F94F57F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957EF
          FFFFFFFFFFFFFFFF085657F9F9F9F95757F6FFFFFFF69E57F9F9F9F9F957AFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EE570FF9F9F9F94F57EFF6FFFFFFFFFFFF
          FFFFFFF6F79D570FF9F9F9F94F57F6F6AE570FF9F9F9F90F57AFF6FFFFFFFFFF
          FFFFFFFFF6F75D570FF9F9F9F94F57F6FF075E57F9F9F9F90F57EFFFFFFFFFFF
          FFFFFFF6A557F9F9F9F9F957A7FFFFFF085E57F9F9F9F9F957EFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65E57F9F9F9F90F575E57F9F9F9
          F9F957A7FFFFFFFFFFFFFFFF075E57F9F9F9F9F957EFFFFFFFFFFFFFFFF607A5
          5757F9F9F9F90F57EFFFFFFFFFFFFFFFF65E57F9F9F9F90F575E57F9F9F9F9F9
          57A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957EFFFFFFFFFFFFFFFFF089D57F9
          F9F9F90F5707FFFFFFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF085757F9F9F9F9F9575608F6FFFFFFFFFFFFFFF607A45757F9F9F9F9F9
          575FFFFF08574FF9F9F9F9F9575608F6FFFFFFFFFFFFFFF607A55757F9F9F9F9
          F9575FFFFF075E57F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F957
          A7FFFFFF085E57F9F9F9F9F957EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFAE570FF9F9F9F9575757F9F9F9F90F57F6FFFFFFFFFFFFFFFF
          075E57F9F9F9F9F957EFFFFFFFFFFFFFF608F75D570FF9F9F9F94F57F6FFFFFF
          FFFFFFFFFFAE570FF9F9F9F9575757F9F9F9F90F57F6FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E
          57F9F9F9F9F957EFF6F6F6F6F6F6F608F75E57F9F9F9F9F957EFFFFFFFF69E57
          F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF69E57F9F9F9F9F94F
          579D07F6F6F6F6F6F6F6F7A45E570FF9F9F9F90F57EFFFFFF65E57F9F9F9F9F9
          0F57A507F6F6F6F6F6F608F7A45E57F9F9F9F9F9F957AFFFFF075E57F9F9F9F9
          0F57EFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F957A7FFFFFF085E57F9F9F9F9F9
          57EFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFF08574FF9F9
          F9F957570FF9F9F9F9575FFFFFFFFFFFFFFFFFFF075E57F9F9F9F9F957EFF6F6
          F6F6F60807F7A45757F9F9F9F9F9575FFFFFFFFFFFFFFFFFFF08574FF9F9F9F9
          57570FF9F9F9F9575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F957A6F7F7F7F7
          F7F7F7F7A45757F9F9F9F90F57EFFFFFFFF69E57F9F9F9F9F957AFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF07574FF9F9F9F9F957575EADF7070707F7F7A45E
          5757F9F9F9F9F95757FFFFFFFF07574FF9F9F9F9F957575EF7F7070707F7F7A4
          5E574FF9F9F9F9F95757F6FFFF075E57F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6
          A557F9F9F9F9F957A7FFFFFF085E57F9F9F9F9F957A6F7F7F7F7F7F7F7F7F7F7
          F7F7F7F707F6FFFFFFFFFFFFFFFFFFF69E57F9F9F9F90F4FF9F9F9F90F57EFFF
          FFFFFFFFFFFFFFFF075E57F9F9F9F9F957A6F7F7F7F7F7A4A45D5757F9F9F9F9
          F90F57EFFFFFFFFFFFFFFFFFFFF69E57F9F9F9F90F4FF9F9F9F90F57EFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF085E57F9F9F9F9F9579DA5A5A5A55D5D5D5E57570FF9F9F9F90F
          57F6FFFFFFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F69F57F9F9F9F9F9F94F57575E9DA5A59D5D56574FF9F9F9F9F90F57AFFFFFFF
          FFF65E57F9F9F9F9F9F94F57565E9DA5A59D5E57574FF9F9F9F9F9F957AFFFFF
          FF075E57F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F957A7FFFFFF
          085E57F9F9F9F9F9575E5D5D5D5D5D5D5D5D5D5D5D5D5D5D9E07FFFFFFFFFFFF
          FFFFFFFF07570FF9F9F9F9F9F9F9F9F94F57F6FFFFFFFFFFFFFFFFFF075E57F9
          F9F9F9F9575E5D5D5D5D5D5E5757570FF9F9F9F9F95757FFFFFFFFFFFFFFFFFF
          FFFF07570FF9F9F9F9F9F9F9F9F94F57F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9
          F9F957575757575757575757570FF9F9F9F9F9575FFFFFFFFFF69E57F9F9F9F9
          F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65757F9F9F9F9F9F90F57
          575757575757570FF9F9F9F9F9F9575FFFFFFFFFFFFF085757F9F9F9F9F9F90F
          5757575757575757F9F9F9F9F9F9F9575FF6FFFFFF075E57F9F9F9F90F57EFFF
          FFFFFFFFFFFFFFF6A557F9F9F9F9F957A7FFFFFF085E57F9F9F9F9F957575757
          575757575757575757575757575FFFFFFFFFFFFFFFFFFFFFF65657F9F9F9F9F9
          F9F9F9F957A7FFFFFFFFFFFFFFFFFFFF075E57F9F9F9F9F95757575757575757
          570FF9F9F9F9F9F94F57EFFFFFFFFFFFFFFFFFFFFFFFF65657F9F9F9F9F9F9F9
          F9F957A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F90F57EFFFFFFFFFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEF574FF9F9F9F9F9F9F9F9F90F0FF9F9F9F9F9F9F9F9
          F95757F6FFFFFFFFFFFFFFEF574FF9F9F9F9F9F9F9F9F90F0FF9F9F9F9F9F9F9
          F9F95757F6FFFFFFFF075E57F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6A557F9F9
          F9F9F957A7FFFFFF085E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          4F57FFFFFFFFFFFFFFFFFFFFF6A657F9F9F9F9F9F9F9F94F57F6FFFFFFFFFFFF
          FFFFFFFF075E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90F57A7FFFF
          FFFFFFFFFFFFFFFFFFFFF6A657F9F9F9F9F9F9F9F94F57F6FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF085E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90F57A7FFFFFFFF
          FFF69E57F9F9F9F9F957AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
          5757F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F95757EFFFFFFFFFFFFFFFFFFF
          AF5757F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F95757EFFFFFFFFFFF075E57
          F9F9F9F90F57EFFFFFFFFFFFFFFFFFF6A557F9F9F9F9F957A7FFFFFF085E57F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F94F57FFFFFFFFFFFFFFFFFFFF
          FF08574FF9F9F9F9F9F9F9575FFFFFFFFFFFFFFFFFFFFFFF075E57F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F94F575FFFFFFFFFFFFFFFFFFFFFFFFFFFFF08
          574FF9F9F9F9F9F9F9575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF085E57F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F94F575FF6FFFFFFFFFFF69E57F9F9F9F9F957AFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF57570FF9F9F9F9F9F9F9F9
          F9F9F9F9F9F94F5757F6FFFFFFFFFFFFFFFFFFFFFFEF57574FF9F9F9F9F9F9F9
          F9F9F9F9F9F9F94F5757EFFFFFFFFFFFFF075E57F9F9F9F90F57EFFFFFFFFFFF
          FFFFFFF6A557F9F9F9F9F957A7FFFFFF085E57F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F94F57FFFFFFFFFFFFFFFFFFFFFFF69E57F9F9F9F9F9F90F57
          EFFFFFFFFFFFFFFFFFFFFFFF075E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
          F94F579FF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFF69E57F9F9F9F9F9F90F57EFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF65E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F90F0F4F57
          579FF6FFFFFFFFFFFFF6A6574F0F0F0F4F57AFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFEF5757574FF9F9F9F9F9F9F9F9F90F4F57579FF6FFFFFF
          FFFFFFFFFFFFFFFFFFFFEF5F57574FF9F9F9F9F9F9F9F9F9F94F57575FF6FFFF
          FFFFFFFFFFF65E57F9F9F9F94F57EFFFFFFFFFFFFFFFFFF6A6570FF9F9F9F957
          A7FFFFFFF65E57F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F94F5FFFFF
          FFFFFFFFFFFFFFFFFFFF07574FF9F9F9F9F95757F6FFFFFFFFFFFFFFFFFFFFFF
          F65E57F9F9F9F9F9F9F9F9F9F9F9F9F9F90F4F575757AFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF07574FF9F9F9F9F95757F6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7
          57575757575757575757575757575757575757A7F6FFFFFFFFFFFFFFFFFFEF57
          575757575757EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
          5F57575757574F4F57575757579FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EF5F57575757574F4F57575757579FEFFFFFFFFFFFFFFFFFFFFFA75757575757
          5757F6FFFFFFFFFFFFFFFFFFEF57575757575757AFFFFFFFFFA7575757575757
          57575757575757575757575757575757575FFFFFFFFFFFFFFFFFFFFFFFFFF65F
          57575757575757A7FFFFFFFFFFFFFFFFFFFFFFFFFFA757575757575757575757
          5757575757575757AFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65F5757
          5757575757A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6AFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFEFEFEFEFF6FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFA79F9F57579F9FA7EF
          F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFA79F9F57579F9FA7
          EFF6FFFFFFFFFFFFFFFFFFFFFFFFF6AFAFAFAFAFAFEFFFFFFFFFFFFFFFFFFFFF
          FFEFAFAFAFAFAFAFFFFFFFFFFFF6AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFAFAFF6FFFFFFFFFFFFFFFFFFFFFFFFFFF6AFAFAFAFAFAFEFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF6AFAFAFAFAFAFAFAFAFAFAFAFAFEFEFEFF6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6AFAFAFAFAFAFEFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        mmHeight = 7938
        mmLeft = 208492
        mmTop = 33338
        mmWidth = 43921
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        Picture.Data = {
          0A544A504547496D616765EA1D0000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002F00FD03012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FA9F
          FE0AADFF000587F1A7C33F8E5AD7C35F879711E86BE1F716F7DA92AEEB9926C0
          2CAA4F0A064723935F24E95FF0547F8F12B7EF3E2978A0F3DE75FF000AE3BFE0
          AA77DB3FE0A39F1717FEA3EE07AFDC4AC1F08FECCBF10522D0F57D63C0BE30B1
          F0CEA377044DA94BA5CD1C06391D5776F2B80083C13C57F4564D94E5787CBE8B
          9D385E514EED26DB6937BEFE87E7B99D4C4CEB4ED37BBD9B565F23DF743FF829
          7FC6CB82BE67C4AF1237AE665FF0AEDFC3FF00F0511F8BD75B777C40F1039EE0
          CC3FC2BC37E247ECDDAF41FB45F8CBC2BF0FFC33E23F11587866ECC58B3B592E
          DE140A08DECA3DCF5A77C35F851E3AF191BEFEC8F08789B513A4394BD16FA74A
          FF006461D55C63861DC75AF4E9E17299D353F674D2693D6315A3DAFDAE7C4E65
          4B31BB50A93F94A5FE67DB9FB3BFFC149FC75E1EF15D8AEBFAD4BAF69734A16E
          16ED81655240E1B1C63935FA65A56A31EAFA6DBDD43CC7711AC887D411915F81
          7E1CF103DBDCF972EF8648C9578DC6D6523B11D88AFDDCF852FE67C34D058670
          D6109E7FDC15F99788F95E170CE8D6C3C145CB993B2B276B5B45EA7D078678CC
          74E788C362AA39C63CAD7336DABDEFABD6DA1D0515CCF8E3E34783FE195E5BDB
          F893C55E1DD06E2EFF00D445A86A315B3CBDBE50EC09FC2BE48F87BFF0515F18
          F8C3FE0AD1AD7C133168B27836C6CA4BAB7B88A2CDC4988E3653BF3820EF3D2B
          E0F0393E2B170A95292D211736DE9A2B5EDDDEA7E8D8CCDB0F869C2151EB3928
          AB6BABDAFDB63EDDA2B93F13FC79F03F827C47168FACF8CBC2FA4EAD31023B3B
          CD56082E189E9F23306E7E9CD6A78A7E22787FC0D656F73ADEBBA3E8F6F7476C
          12DF5EC76E931EB852EC037E15C1EC2AE9EEBD76D1EBE9DCEEF6D4F5F7969BEB
          B7A9B14572BAB7C73F04E8179756F7DE30F0BD94F63B3ED31CFAAC11B5BEF04A
          6F0CC36EE0AC467AE0D5A8FE2BF85E6D524B14F12684F790DA0BF9215BF88C89
          6E718988DD9119C8C31E0E7AD3FABD5B5F95FDCC5EDE9EDCCBEF3A0A2B94F0E7
          C78F03F8C359FECDD27C65E15D535019FF0045B4D5A09A6E3AFC8AE4FE957EFB
          E26786F4CF12368D73E20D0EDF5858CCC6C65BE892E42052E5BCB2DBB68505B3
          8C6013D28961EAA7CAE2EFBECF6EE0ABD36B99495B6DFA9B94572FE18F8DFE0B
          F1B586A177A3F8B7C33AADAE9209BE9AD3538668ECC0EA646562107079381C54
          DE02F8BDE13F8A905C49E19F13683E218ECDB6CEDA6DFC574213FED6C63B7F1A
          2587AB14DCA2F4DF47A7A846BD36D2525AEDAEFE8745457217FF00B41F8074AD
          77FB2EEBC6FE11B6D4B76CFB24BAC5BA4DBBA63617CE7DB15D723ACA8ACAC195
          864107208A99D29C2CE69ABF74546A42775169D85A2B3F54F16E95A1A235EEA7
          A7D9AC92794867B848C33FF74648C9E0F1D69DAD789B4DF0DD9ADC6A3A858D85
          BB90AB2DCCEB12313D002C40A9E493D96E3E78F72F514D4B88E4816557568D97
          70707E523AE73E95534AF12E9DAECB2A58EA16578F09C48B04EB218CFB804E3F
          1A5CAF71F32D8BB4552D73C49A77866D966D4AFECB4F859B6AC9733AC2A4FA02
          C40CD3356D51DB4799B4D9AC64BC781A4B5F3A4FDD39C7CA4E39DB9C648ED4D4
          589C923428AE7FC37E24B9D2FC05A75EF8B2EF43B1D41A0437B25BCFB6C84A47
          3E5B39CEDCF4CF35CFFED01F1FEC3E067C324F1298EDF53865BBB7B68D12E963
          12096454DC1B9040CE78F4AD69E1EA54A8A9415DB765E6FD4CE788A70A6EA4DD
          92577E48F40A2ABD96B169A944F25BDD5BDC471FDF68E40C17EA41A8744F13E9
          BE25491B4DD42C750585B6486DA759421F43B49C1FAD65CAF7B1A7322F51556E
          75BB3B5B632C9776B1C7BB607795557774C673D73DAB17E1E6ADAE3785A6B8F1
          5C9A1437D1CF2E5B4E958DBA4218EC259F9DDB71BBB6734D41B8F309D45CDCA7
          49587E33FF00976FF817F4A9A6F15D9DF786EFAFB4DBCB3BE5B585DC3C12ACA9
          B9549C12A4FA579D7C0EF89DA87C65F807E13F136A8B047A86AD0CD24CB0AED8
          C159590607D1455FD5E7ECDD5E89A5F369B5F9323DBC3DA2A7D5A6FE49A5FAA3
          F203C6FA6D86B7FF0005CAF8ADF68B58352D534EBBD4AFB44B19977ADDEA315B
          2B40BB49C310C090B8392A38AF14FD98FF006BFF008C177FB5DF87EF6DFC4DE2
          8D5BC4BAB6B515ADDE9F717524AB761A5024864809DBB40CFCA46171DB1581FF
          000551F185FF0083FF00E0AA3F16752D2EFAE74DD4F4EF1334F6B756D218E582
          4544219581C8228D47FE0A99F167C43A1DCC3F6AF08E9FAD6A101B6BEF1269FE
          17B2B4D7EFA36186592F1104872382C30C7B9AFE84C2E0AA4F0B4E518466A54E
          11F79DADA7A3BA77D76775F77CF62695A6DDDAD6FA1F56FF00C14DBE2DEA5E10
          D2F416F0AEB33E9367E22D7756D4EF9F4CB8310BCB98EE3CB56675396D817032
          4818E2B23F6C7FDAB3C756FE1DF83B343E29D56CE49BC296BAB4D25A5C181AE6
          ED89CCD214237B9C0E4F35F17EBFF1D35BF1E780FC33E1CD4A7B79B4BF09A4C9
          60163C4AA2572EE5DB24B12DDCD745E35F8E7ADFC57B1F0EDAEB135B347E17D3
          23D234FF0026211E2DD33B431CFCCDCF5AEAC164AA946946A252E472BBB6B677
          B74ED6B9E0E3A5CCA5CB7574BEF56EC7D4BFB6BEB3143FB448BC558E3B8D5F49
          B0D42E8A0C09A69605677EDCB1249AFDADF85772D6DF06B43995199A3D2A270B
          9FBC4460FEB5FCE8F8D3E3B6B5F183C536DAAEB925B497905A4162A608844A63
          850226541E4ED0327BD7F461F050EEF843E1938C674CB73D7FE99AD7C0F88546
          5470583A53DE3CCBEE513AB8528A58CC4548FDAB7E6CFC8CFF00827D7ECBDA0F
          FC1583F6A4F8BBE2CF8C3AAEADAADC68B7A62B7D2E0BE7B63186770AD9521822
          85015460707AF4AE13E1FF00867FE184BFE0A7DF16AD3C29AA5D6B6DE07F09EA
          B26973DD49E74D095863F2D1CE79316467FDCE82BED6F8E5FF000440BAD47F68
          5D4FE20FC21F8ADAF7C28BBF1048D26A56D6492EDCBFDFF29E39508527276364
          03D08ED7FF0065DFF821EE93FB377ED3975E3C9BC757DE2DD3751D32E34EBED3
          F54B2DF3DF9B845599E49BCCE7710C71B7F8BAF7AF5E7C5D96B8D6A8F12DD29D
          2518D0E595A2D25757B72EB67AADEFABD11F350E17CC14A94161D2A90A8E52AD
          CC9B926DD9DAF7D2EB47B5B4DD9F9D1FB38780341F8FDF027C47E20F157C20F8
          F1F13BC77E229EE5ADBC51A1453DC59D94F93B36ED24390D82E1C13D40C7156B
          F6A9D5FE2959FF00C1343C05E1FF00899A3F8AB42D4BC33E2EBBB1D346B9692D
          ADD4D666DE274E24C12AA5990761B71DB8FBAAFBFE0887E35F85DAF6B569F06F
          E3F78A3E1F782FC43334B73A30595BC8DDC108D1CA81BE5E33856C000935DC7E
          D21FF04736F8F3FB2BF807E19FFC2CED799BC137525D1D5F57B73A85C5E6F006
          C03CC5D88B8F9465B03039EB5DB538DB2A58CA557DAA953F68A493551CA9AE56
          B66B963BA8F2C2E9EE71C783F32FAAD5A7EC9A9F272DD382537CC9EE9DDED7BC
          ACD6C7C47FF0501FF827B43FB1C7FC13AEC7C5B7DE26D6BC45E36F1EEBDA64BA
          D4F7520F223716F76F8887DEEB2364B31CFA0E95E9DE0CFD947E1A7EC4DFB025
          F7C54F8D9E26F18789355F8B1A0DAE9B3D8D8CE81879BB2E2282DCB0C8641129
          2ECDB404385E82BED8FDBFFF00E09F9FF0DC3FB33E87F0F17C51FF0008EFF635
          FDBDF7DB8D97DA7CDF2A2923DBB37AE33BF3D78C537F6A0FF826E687FB537EC6
          1E1FF84BAC6B573673F8620B5FECFD62183734771044620E622DCAB296CAEEE3
          23078AF9BA3C691AD85A147195DA72AADD571566A0B9796CEDA2D1691D745A6C
          7BD5384654B135AAE1A8A7CB492A7CCEE9CDDF9AEAFABD5EAF4D59F907FB5AFC
          2AD2BE137C1CF0BFC44F02FC1FF8BFF09266D46092C75ED5757375697A8C8D22
          37CC15E294950CB8C02037B63D7FE327C358FF006C8FF82C4FC3DD07C49A96A5
          616BE30F0B69B75AA4B6337932CA0E8FE74881B3C2BE0A9FF6588FA7D2BF11BF
          E0885F123E3BFC1FD37C2DE3CFDA3B5ED7ADF409E33A55AB6923EC36D12214CB
          AF981E493180199BE51B873BB8F56F09FF00C1285BC2FF00B71F82BE327FC26D
          E70F07E8B6FA40D2CE9A7FD24C5606D3CCF33CCF9739DF8DA71D33DEBDDAFC65
          97C693947109D58D3AD18C92A8F5928F22E69ABBD575D13EC8F1E8F0963A5514
          5D06A94A749B4FD9AD23CCA6ED076D9F4D5AEECFCFABBFF827CF867C27FF0005
          906F80BA7EBDE26B1F87BAE40B717B0C77E5669E0167F6BF21DC1F997CD41C91
          9007A8C8ECFE01783BC3FF00F04D4FF82D9F897C33A5EB77D65F0EF4BF0E5EDF
          EA1F6D94CBE5DA0D2FEDAEAF8FBFB1D3E5E33F281D735F786ABFF04D89353FF8
          299DAFED11FF00097045B5B5FB30D13EC04EEFF4336D9F3BCCF53BB1B3B63E98
          3F163FE091FA6FC68FDBAFC43F1775CF14B4BA3F897439F42BBD063B22B218A5
          D38D9165B8F338619DE3E4E0802BCE971AE1F111F618CAEDD39617966ACF5AD7
          DF6D656DA5B799DF1E11C4507EDB0B4529C711CD1775A52E9D748DF78EFE47E7
          0F8CFE13FC29F8E7F04BC77E32F86BF027E374FA4E9EB7B716DE313AC2B41692
          C61A4CBDBE361853F8B6B1654079C8E3F46FFE0841F13B59F89FFF0004EDF0EC
          9AE6A136A571A3DFDDE990CB33EF90408E0C6A4F70A1F68F40A076C0F31F03FF
          00C1117E207823E1A7887E1BD9FED19E22B2F85DAA25CF95A35A696B1BB34A3E
          ECAE64388C9E5D1080E370C2EEC8FA8BFE09DBFB1A1FD84BF67183C05FF0902F
          89962BF9EF85E8B4FB367CDDBF2EDDEFD36F5CD7271771065D8BCAE585A15BDA
          49548B85FDA36A3CAD3BB9AB27B5D46CBB1D5C2F91E3B0B98C7135697B34E125
          2B7B34B9AE9AB283BB5BD9CAEFB9E71FB1A7ECB1E0DF8A565F11B5EF186956BE
          2EBCBAF1CEBD6B6B16AC82EA1D2EDD6F641E5C28D954DCC198B001893C9C2801
          9FB207ECADE15F17F8B7E265BF8AEDCF8D34DF05F89A6F0E786ACB5B3F6DB7D0
          AC0430DC79312C991F7AE19771CB6C48D738502BE83FD9FF00E0D7FC28EF0F6B
          7A69D45752FED7D7F51D743795E59885DDC3CDE5E3273B776DCF7C6703A52FC1
          6F82FF00F0A8B57F1C5D7F687DBBFE131F10C9AEEDF2BCBFB2EF8208BCBCE4EE
          C7939CF1F7B18E2BE37119D4E4EBF2547695B977E8D6DDB4BF6BABF73EAF0F94
          412A1CF4D5D5F9B6EA9EFDF5B77B1F3769BE20F087C13D33E2D7C31D6F4CD5BC
          43E11B6F135869FE19F0D59B34B757125E5AA5C7D86025D76C424491F0CCA889
          BF2428C0E57E2FF86AF3E0DDBF87FC59A0FC03BAF855A8E8DAD58247ADE97AC6
          9CF1F932DC471C90DDC30C81A489D19948C3E09078C647BC7C43FD8865F1778F
          3C49E2BD3BC55368BE24BDD72C3C43A25DA5989934BB8B5B56B52B22336268E5
          8DDD5972A70FC10403599F133F654F89FF00B43F87ADEC3C75F11B42B3B1D3EF
          AD6FE1B2F0EE8D25B4177241324A1AE1E599DD97E5E110A80D824B6315E8E1F3
          2C2A9C26EA2B3B73A6E7ABE58A95A31B4657D6EE57BBBDF4B5FCFAF97E25C250
          507757E4B7268B99B5772F795B4B28DACAD6D76CEFD9DBE10F86FF006A6F13F8
          F3C69F10B4FB1F176AD63E28BFD06CAC7528C5C5B6876B6CE238E38E16CA2B48
          312B3E373798BCE000391F117C21D17E077ED9B71A4F86F529ADB47BAF877AC5
          DA787C4E5A0D29CCB002F0A93FBB4931F7461728481D6B4BE36EB1F0EFC1BF1E
          35FBE6F1A7C43F81FE24BE318BFBDB5B554D2BC4CA10059C09A196DE49147C9B
          C6D906307200AA7FB387C1DD2FE2AFC78D73C53E1A93C4DA86831F86AE7449BC
          5DAF877BCF11DE5CBC64B26F084C30A4781B156305F0A3EF1AD2329C233C4CE5
          28D370D22D3E55749249FC3E9CB793EA96A4CA3094A3878462EA296B24D5DEB7
          6DADFD79AC9746F439DF0E7C32D6752F871F063C5DAC7C3FBAF8BDE05B1F04DB
          DA4DA25BCD14B73A65D32C67ED6B6D3B2C7704A02B8DDBD73C039355FE39F833
          E08FC49FD953556F07F8560B1934BF1369EBA8689AA584B6B75A1DC493A2B235
          ACDFEA77A13F700461C826BDFB48FD9CBE23FC2CF07F8534FF0003FC46D3E18F
          C39A35BE93369DACE882E74FBC312EDF3D7CB91268DCF71BD97A703AD67DD7EC
          3B79E35F0378DBFE12AF16FDB3C69E3692D679755D3EC7ECD6DA6B5A92D6C90C
          0CEC591189277B12D9EA38C44337A2AA2AB2AB651926B95CD69CF77CD16ADA26
          DDE36F9B6CA965755D374D52BB7169F328BD796DEECAF7D5A4ACEFF2563CE7F6
          AEF08F85FE0FFC44F027C3AF0FF81F588BC23E2B92E754D7B4BF07E9C3ED1AC2
          DB27C904815D0F9459B2F86E5411D0D66EBF6D69E1EF1D78475CF849F03FE25F
          827C45A7EA70437817C3F1E9FA7EA160CC1678EE76CBB58053B95882410306BD
          A75AFD9B3C6DF147C336375E2AF1B68D6FE38F0DDE0BCF0F6BDA068ED6EB62C1
          4A3ACB14B2C8264901C3A6546338C1C11A3E19F859F17B5CF1569973E30F889A
          1C3A4E932898D97867467B36D5187417124D2CA421EE91819FEF5614F32A50A5
          18F3A938A6A5773B49BBEB64BDEBA696B67A745666D2CBEA4AAC9A838A934E36
          50BC52B697BE96777A5D3BF577478CFEC57FB2FE93F1734DF1078A7C75BBC4BF
          D97E2BD4D741D3AE5D9ACF4B55B827CD11E76B4ACDFC6C09000031593F0DBC53
          E13D63E01E87E11D7BC1FA8FC4AD7B57F116AD73A6F87ED997F78B15CC9BA59D
          A47589615E065C919E00278AFA97E00FC186F821E09BED1DB51FED2179A9DDEA
          225F27CBD9E7C85F663273B738CF7AF2AD37F61AD6FC016FA1EADE11F1A41A77
          8C3C3B737ED05CDE69BF68B1BEB6BB98CAF6D3C22456C02461D1C10477E947F6
          B52AD5AA3AB51A5CC9C3E249594BB2BA4DB57B6AEF7F32BFB2EAD2A34FD9435B
          353D9B7771EEECDA49DAF74BF03C8756D32FFE0D7C74F04DDE95F082E7E10C7E
          2296E749D48D9EAB6571A6EA909818AAC9140F9F31586558A71EB5EE1FB199CF
          EC7FF0FF00FEBD6E3FF4A1EAAEBBFB2478F3E2CF8F7C2FE26F1CFC40D3E7BAF0
          BDD49716BA568FA4BDB69AA1E328490F2BC8F273F798E00E8BDEBBAF861F0A1B
          E077C1DF0D7851AFBFB49B478A58CDCF97E5F9BBA42F9DB938FBD8EBDAB9F36C
          C28D6C2469A9273BC6F6E66B4E7EB2BB764D75F25A236CAF035A962A53716A16
          76BF2ADF93A46C95ECFA7AEACFC7BFF82E37FC126BE255B7ED35E26F8B1E0FD1
          2F3C53E1AF16DC0BCBA5B14335C584E5407DE839D9C0C115F0AD87ECADF14147
          CDE04F15291DCE9D2FF857F549FF0009EE93FF003F7FF909FF00C28FF84F749F
          F9FBFF00C84FFE15EE65BE2262B0B868E1E7494B95593BB5A2D1773D8A9838CB
          A9FCB9D87ECC1F12D08FF8A1FC4FEE3FB3E5E3F4ADCD3BF66CF88CBF7BC13E27
          51EFA7C9C7E95FD387FC27BA4FFCFDFF00E427FF000A3FE13DD27FE7EFFF0021
          3FF85777FC450ADFF40EBFF027FE470D5C9613FB5F81FCFCFEC93FF04E9F8A5F
          B457C4FD334A5F0AEB1A5E96675FB7EA37903430DB4591B892C3EF63A01D4D7F
          41BE11F0EC5E11F0B69FA5C24B45A7DB476EA4F70AA067F4A83FE13DD27FE7EF
          FF00213FF851FF0009EE93FF003F7FF909FF00C2BE4F8938A2BE71283A91518C
          6F64B5D5EEEFF237CBF2BA784E671776CD8A2B1FFE13DD27FE7EFF00F213FF00
          851FF09EE93FF3F7FF00909FFC2BE64F4CD8A2B1FF00E13DD27FE7EFFF00213F
          F851FF0009EE93FF003F7FF909FF00C2803628AC7FF84F749FF9FBFF00C84FFE
          147FC27BA4FF00CFDFFE427FF0A00D2D4676B5D3E79630ACF1C6CCA18ED5240C
          8C9ED5E1B6BFB4C6BD710C166D6B62BAA48F234CC90B3456A16347099CE1CB6F
          C8607EEA938CF15EBEDE3BD1DD4AB5D06561820C4FCFE9599E7783FEC0D6BF65
          D3BECCD279A62FB17C85FF00BD8DB8CFBD7A181C461E926ABD3E6EDE5BFF0056
          3C5CDB038CC438BC2D6F676BDFCF6FBB6B5FA5DD95F55E7F37ED0FAF4B6AF786
          1D1F4DFB3DC595A3E9F70ECD75319BCADD2211C151E671EBB0F229F7DFB47EA9
          75A66871E9D0E9726A9AA5A879E37662B6D29BD82D8060390312B1E79CAD6F6B
          BE13F0DF88BC4F15F5C6A931B58648A55B316D85531952A036CDC177283B41C7
          15D1DBEA1E14B5B879A382C639647F31DD6CC8666C839276F5C807EA01AEF963
          300945AA577BDBA6D6B3EFAEBFA9E452CB339939C6588B2D93766DEB7E64968B
          4B2B7ABB2EBE6F6FF13B58D2FC41AB6911C9A459CE27BA9EEEEEF6490DBCED14
          708648813F2E4B9381C003A1C9AC8F05FED09A8783FC1BE1C82DED5352B4B7B1
          B7B79E108C26F34DA79DC313CFF0F006307AF6AF61BED57C2FA9A85B98ACEE15
          65F3C092D0B7CFFDEE57AF4E7DA9915F784E0BD5B8482C56E10055905A10CA07
          0003B7B0E294733C2F272CE8DFBEBD7557BEFD7E43964398AA8A74B136B5EDA6
          C9B4ED6DB75AF7EA715F0D3C61A8789BE2F0B9BEBBD2AF1BFE11CF3C0B191B64
          5BA653B5B27AFA1FD0551D17F684D6F54962D3E67D16C751B8B9D8F2CAAFF66B
          34D9238CB83890B6CC0208EF9C57A369BAAF85F46776B38ACED5A4CEF30DA14D
          D9EB9C2F3508B8F088B092D7ECBA78B699FCC922165F23B7A91B719ACFFB430A
          E4DCA9696496DA5AFF002EBB75B6F6B9B4727C7C69C630AF6779396FADED657D
          FA5AFD2EECAF66B83B1F8E3AB78D2DAE63DDA2E9715ADB6665B891F76A197910
          B40463E5223C83D7E61F5AE7F57F8E77D71E0F8F4C8638DB4FBAD3BEC8C30FE6
          C127D93CCFBEC72D8E39C77EB9AF60B9D4FC2B7925BB4D0D8C8D6A31096B327C
          A1E8BF2F03E94D5BEF09ADC9985BD8F9CC3697FB19DC46318CEDE98E2B4A7996
          1232BAA3A7457D9FEBDEFF002D8C6AE45994E1CAF13AECDDB56BD2F65DADD77D
          CE5FC59F10F52F0F49E1DD26D26D1AD63BCD29AE9E6D44965CC6130A00EA4EE3
          F4AE7EE3F69ED50C767716F696BE4CA891CD0346C0C32321230D9E47008C0E87
          AD771AD58F863C41E2BB3D4AEE686E23B2B692D92DA4B52F19DCCADBB95E08DB
          C7D6B4A5D43C293DDFDA1E1B169B684DE6D0EEC0E00CEDED514F19838C22A74B
          99D9DFD5B7FA5BD2DEA695B2BCD27524E9D7E48DD5BAE892FBB5BE9D6FAEC8E0
          752F8F1AFE811E99F6A4D366B89E182E6E6086270234988DA0313D7AF407A56A
          7C4AF8D5AB786BC773695A7D8C7247690C72B798BCDC9724615B3818C75E7922
          BACB8D5BC2F773C524B1D9C9242BB6366B525A31E80EDE053B50D73C35AB5CC5
          35D2DADC4D01CC6F25A96643EC4AF159FD770BCCA4E97477F9DADF76BF7F91BB
          CAF31E49423897AB8D9DB549277D5DF7D1F6BAECD9C4F85FC5FAA685F0BF465D
          356DDAF352D5A5B5CDD6E658434F27271C9C7A5518BE3D6BDA5DA24DAA0D2516
          E84F145E44723149227DA091DC37A76AF484F14E811C71A2C90AAC4C5D145BB6
          15BAE47CBD79A8A7D6BC3373079722DAC91FCDF2B5A923E6EBFC3DE88E3F0EDB
          75295EEDBF3D6FA7E5F7798A593636308C68E21C79629256D2E92576BCECFEFF
          0023CB13F699F10CF70D6B1E9B6FF68B56977B98CEC9F6150147CDF29F9B9393
          8C533C49F1D7C517DF68B78E4D3747B88E68A4542865DB1165077383B7BE08E0
          8AF516BBF093C10C6D6FA7B476EDBE353664843EA06DEB47DB3C279B83F67B0F
          F4CE27FF00433FBEFF007BE5E7F1ADE39960934D505F9F5F3D3F0F238E591E6B
          28B8CB16F5F974B74B3DFADF5DDAB9C4BFC67F1201966D06DE1B8BD96CE2B897
          788E3F29771673D3E6E80575965E2593C61E0DD1F52961FB3C9771B33203900E
          40E3D8E323D8D5E9758F0BCFA77D8E48ECDED73BBC96B52533EB8DB8A75FDEDB
          F88638934D2B22DA82195576040718EA07A1E95C18AC451A9051A74F95DF7F2F
          EBF2F367B597E071546AB9D6ACE716B67DF4FCB5FBFC91FFD9}
        mmHeight = 12435
        mmLeft = 0
        mmTop = 0
        mmWidth = 53975
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COR_COB_DEU'
        DataPipeline = ppBDE1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TIP_MOV_DEU'
        DataPipeline = ppBDE1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 265
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'NROOPE'
        DataPipeline = ppBDE1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3704
        mmLeft = 27781
        mmTop = 265
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'FEC_CRE_COB_FSC'
        DataPipeline = ppBDE1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3704
        mmLeft = 69586
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'RCOBPER'
        DataPipeline = ppBDE1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3704
        mmLeft = 88371
        mmTop = 265
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'COBRADO'
        DataPipeline = ppBDE1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3598
        mmLeft = 109020
        mmTop = 265
        mmWidth = 9779
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'DEVOLUCION'
        DataPipeline = ppBDE1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3683
        mmLeft = 119592
        mmTop = 265
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'APLICACION'
        DataPipeline = ppBDE1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3683
        mmLeft = 133371
        mmTop = 265
        mmWidth = 13208
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        DataField = 'BANCOID'
        DataPipeline = ppBDE1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3598
        mmLeft = 176213
        mmTop = 265
        mmWidth = 3556
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'CCBCOID'
        DataPipeline = ppBDE1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3598
        mmLeft = 203994
        mmTop = 265
        mmWidth = 26289
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'USU_COB_DEU'
        DataPipeline = ppBDE1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3598
        mmLeft = 233892
        mmTop = 265
        mmWidth = 18796
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'FEC_COB_DEU'
        DataPipeline = ppBDE1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3704
        mmLeft = 50271
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'FORPAGABR'
        DataPipeline = ppBDE1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object lblUser: TppLabel
        UserName = 'Label5'
        Caption = 'DB2ADMIN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 1058
        mmWidth = 17992
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 83079
        mmTop = 794
        mmWidth = 64823
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COBRADO'
        DataPipeline = ppBDE1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3969
        mmLeft = 105569
        mmTop = 2381
        mmWidth = 13758
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'DEVOLUCION'
        DataPipeline = ppBDE1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3969
        mmLeft = 120386
        mmTop = 2381
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'APLICACION'
        DataPipeline = ppBDE1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 3969
        mmLeft = 134673
        mmTop = 2381
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label13'
        Caption = 'TOTALES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 84402
        mmTop = 2381
        mmWidth = 14774
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppBDE1'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 15610
        mmWidth = 284427
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppBDE1
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
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppBDE1'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppLabel7: TppLabel
              UserName = 'Label3'
              Caption = 'Resumen de Deuda al FSC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 9525
              mmTop = 4233
              mmWidth = 44450
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 46038
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape4'
              mmHeight = 38365
              mmLeft = 8731
              mmTop = 3704
              mmWidth = 83079
              BandType = 7
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              Caption = 'Deuda al Fondo Solidario:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 26988
              mmTop = 7144
              mmWidth = 39423
              BandType = 7
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              Caption = 'Devoluci'#243'n al Fondo Solidario:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 20373
              mmTop = 12171
              mmWidth = 47456
              BandType = 7
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              Caption = 'Saldo Pendiente:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 40217
              mmTop = 17198
              mmWidth = 26194
              BandType = 7
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              Caption = 'Importe Devuelto al FSC en Exceso:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 10848
              mmTop = 24871
              mmWidth = 55563
              BandType = 7
            end
            object ppLabel53: TppLabel
              UserName = 'Label1'
              Caption = 'Exceso Devuelto al Asociado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 20638
              mmTop = 29898
              mmWidth = 45773
              BandType = 7
            end
            object ppVariable2: TppVariable
              OnPrint = ppVariable2Print
              UserName = 'Variable2'
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 69364
              mmTop = 7144
              mmWidth = 14774
              BandType = 7
            end
            object ppVariable3: TppVariable
              UserName = 'Variable3'
              CalcOrder = 1
              DataType = dtCurrency
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 69364
              mmTop = 12171
              mmWidth = 14774
              BandType = 7
            end
            object ppVariable4: TppVariable
              UserName = 'Variable4'
              CalcOrder = 2
              DataType = dtCurrency
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 69364
              mmTop = 17198
              mmWidth = 14774
              BandType = 7
            end
            object ppVariable5: TppVariable
              UserName = 'Variable5'
              CalcOrder = 3
              DataType = dtCurrency
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 69364
              mmTop = 24871
              mmWidth = 14774
              BandType = 7
            end
            object ppVariable6: TppVariable
              UserName = 'Variable6'
              CalcOrder = 4
              DataType = dtCurrency
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 69364
              mmTop = 29898
              mmWidth = 14774
              BandType = 7
            end
            object ppLabel56: TppLabel
              UserName = 'Label2'
              Caption = 'Exceso por Devolver:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 34396
              mmTop = 34925
              mmWidth = 32015
              BandType = 7
            end
            object ppVariable7: TppVariable
              UserName = 'Variable7'
              CalcOrder = 5
              DataType = dtCurrency
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 69364
              mmTop = 34925
              mmWidth = 14774
              BandType = 7
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 67733
              mmTop = 16669
              mmWidth = 17198
              BandType = 7
            end
            object ppLine8: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 67733
              mmTop = 34131
              mmWidth = 17198
              BandType = 7
            end
          end
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppBDE1: TppBDEPipeline
    DataSource = DM1.dsDetalle
    CloseDataSource = True
    UserName = 'BDE1'
    Left = 160
    Top = 224
  end
end
