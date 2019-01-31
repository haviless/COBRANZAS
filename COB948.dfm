object fGenTipCob: TfGenTipCob
  Left = 189
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Generaci'#243'n De Cobranza De Teleahorros Por Tipo'
  ClientHeight = 441
  ClientWidth = 647
  Color = 10207162
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
  object GroupBox1: TGroupBox
    Left = 5
    Top = 56
    Width = 633
    Height = 345
    TabOrder = 0
    object dtgCobTelTip: TwwDBGrid
      Left = 6
      Top = 11
      Width = 621
      Height = 190
      DisableThemesInTitle = False
      Selected.Strings = (
        'IDTIPCOB'#9'2'#9'Id'
        'DESTIPCOB'#9'40'#9'Tipo De Descuento'
        'NUMASO'#9'10'#9'Numero~De Asociados'
        'CRESALDO'#9'14'#9'Monto~Procesado'
        'MONENVIO'#9'14'#9'Monto Por~Descontar'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsSobrino
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
      OnDblClick = dtgCobTelTipDblClick
    end
    object grbProcesos: TGroupBox
      Left = 186
      Top = 147
      Width = 319
      Height = 37
      Caption = 'Procesando Informaci'#243'n'
      TabOrder = 1
      Visible = False
      object prbAvances: TProgressBar
        Left = 4
        Top = 14
        Width = 309
        Height = 16
        Min = 1
        Position = 1
        Step = 17
        TabOrder = 0
      end
    end
    object pnlCrono: TPanel
      Left = 7
      Top = 205
      Width = 621
      Height = 134
      TabOrder = 2
      object Label3: TLabel
        Left = 536
        Top = 32
        Width = 68
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Generar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 532
        Top = 47
        Width = 81
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cronogramas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dtgCronogramas: TwwDBGrid
        Left = 3
        Top = 7
        Width = 526
        Height = 122
        DisableThemesInTitle = False
        Selected.Strings = (
          'TIPDESEID'#9'4'#9'Id'
          'TIPDESEABR'#9'48'#9'Tipo De Desembolso'
          'REGISTROS'#9'15'#9'N'#176' De Creditos'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsTcredito
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
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
        TitleLines = 1
        TitleButtons = False
      end
      object BitGenera: TBitBtn
        Left = 550
        Top = 67
        Width = 41
        Height = 36
        Cursor = crHandPoint
        Enabled = False
        TabOrder = 1
        OnClick = BitGeneraClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777770000000777770000000777770FFFFF07777700000007777
          70F111F0777770000000777770F1FFF0777770000000777770F111F077777000
          0000777770FFF1F0777770000000700000F11FF074477000000070FFF0FFFFF0
          74477000000070FF0000000077777000000070FF0FF0777774477000000070FF
          0FF0777774447000000070F00FF0777777744000000070FF0FF0777447744000
          000070FFFFF07774444440000000700000007777444470000000777777777777
          777770000000}
      end
    end
  end
  object BitSalir: TBitBtn
    Left = 530
    Top = 408
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 1
    OnClick = BitSalirClick
    Kind = bkClose
  end
  object grbParametros: TGroupBox
    Left = 5
    Top = 8
    Width = 206
    Height = 46
    Caption = 'Periodo De Proceso'
    Enabled = False
    TabOrder = 2
    object lblNomMes: TLabel
      Left = 105
      Top = 19
      Width = 98
      Height = 18
      AutoSize = False
      Caption = 'DICIEMBRE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbsAnoIni: TwwDBSpinEdit
      Left = 4
      Top = 15
      Width = 58
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 2004.000000000000000000
      Value = 2004.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object dbsMesIni: TwwDBSpinEdit
      Left = 65
      Top = 15
      Width = 36
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      UsePictureMask = False
    end
  end
  object BitGnrDes: TBitBtn
    Left = 216
    Top = 27
    Width = 146
    Height = 26
    Cursor = crHandPoint
    Caption = 'Generar Descuentos'
    TabOrder = 3
    OnClick = BitGnrDesClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333700000733333333F777773FF3333333007F0F70
      0333333773373377FF3333300FFF7FFF003333773F3333377FF33300F0FFFFF0
      F00337737333F37377F33707FFFF0FFFF70737F33337F33337FF300FFFFF0FFF
      FF00773F3337F333377F30707FFF0FFF70707F733337F333737F300FFFF09FFF
      FF0077F33377F33337733707FF0F9FFFF70737FF3737F33F37F33300F0FF9FF0
      F003377F7337F373773333300FFF9FFF00333377FF37F3377FF33300007F9F70
      000337777FF7FF77773333703070007030733373777777737333333333330333
      333333333337FF33333333333330003333333333337773333333}
    NumGlyphs = 2
  end
  object pnlTiempo: TPanel
    Left = 367
    Top = 27
    Width = 271
    Height = 27
    Enabled = False
    TabOrder = 4
    Visible = False
    object Label1: TLabel
      Left = 33
      Top = 5
      Width = 25
      Height = 13
      Caption = 'Inicio'
    end
    object Label2: TLabel
      Left = 154
      Top = 6
      Width = 20
      Height = 13
      Caption = 'Fin  '
    end
    object Image1: TImage
      Left = 4
      Top = 2
      Width = 21
      Height = 21
      Picture.Data = {
        07544269746D617076050000424D760500000000000036000000280000001500
        000015000000010018000000000040050000C40E0000C40E0000000000000000
        0000000303002020001616001818001818001818001818001818001818001818
        0018180018180018180018180018180018180018180018180016160020200003
        030000363600FFFF00E7E700E8E800E9E900EEEE00EAEA00E8E800E8E800E8E8
        00EEEE00ECEC00E8E800E8E800E8E800EDED00EDED00E8E800E7E700FFFF0036
        360000383800FFFF00FFFF00FFFF04FEFE2FC6C60CF6F600FFFF00FFFF00FFFF
        2BC5C519E1E100FFFF00FFFF00FFFF22D7D722DADA00FFFF00FFFF00FFFF0038
        380000393900FFFF4983830FDBDB00FFFF51767602F4F400EEEE4D7C7C00FFFF
        52727228BABA00FFFF61565600FFFF39A2A231A6A600FFFF33A0A016EBEB0044
        440011343497B7B78D404073DADA97292476B5B48D4A487BAFAE826A6A867575
        7C8383817979829191844D4E7FA09F8A605D73D4D29603037ACBCB9C64642000
        00004C4545795353471C1C9073723D00127D545A5E283884636273504E775353
        7758587655557D5B5B6B4545825D5E4F18267E575F5F403E6546467B51514442
        4200DFE0E0434747A1A7A7E7ECEBA884AFDDD6E1C6B2CDA159A6EFFEF6E6EDEC
        E6ECECE7EBEBE5EAEAE9EFEEE3E3E7B395B8D3C5D7D9E2E03A3E3F9BA1A1F3F5
        F500CFCFCF363536F4F9F3FFFFFFFFFFFFFFFFFFFFFFFFDCB4DCB764B7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDF95E5E5E777777FEFE
        FE00CCCBCC3A403ACFB5CFC587C5FFFFFFFFFFFFFFFFFFFFFFFFE0B7E1937D96
        909594E8E8E9FFFFFFFFFFFFFFFFFFFFFFFFD8B3D8D8A6D8ADB4AD6A6A6AFCFC
        FC00CCCCCC3E4B3EB57CB5870E87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF454A1F
        222200B1B1BBFFFFFFFFFFFFFFFFFFFFFFFFB25EB2A65BA6B5BEB56A696AFCFC
        FC00C9C9C9323332EEF0EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B149494C
        333334E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFE7B7D7B6D6D6DFBFB
        FB00D7D7D7434343D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFABABAB797979B2B2B3
        7B7B7DFFFFFFFFFFFFFFFFFFFEFEFEEAD0EAFBF4FBF0F2F04C4C4C8C8C8CFEFE
        FE00FBFBFB696969797A79FFFFFFB45DB4FBE8FBA4A7A46F6F6FFFFFFFB5B5B5
        6D6D6DFFFFFFFFFFFFFFFFFFF6EAF6792279DAADDABBC5BB4B4A4BC8C8C8FFFF
        FF00FFFFFFCFCFCF535653C8CCC88932898E6C8E818E81FFFFFFFFFFFFC5C5C4
        949592FFFFFFFFFFFFFFFFFFFFFFFFFCF1FCFDFFFD626262818181FFFFFFFFFF
        FF00FFFFFFEDEDED626262888988FFFFFFBFC7BFCDB0CDC27BC1FFFFFFF8FAFF
        FAFAFFFDFFFFD8B0D6BC98BCFFFFFFF9F9F99294924A4A4AC6C6C6FFFFFFFFFF
        FF00F4F4F67E7E8C3C3C454242427C7C7CFFFFFFD6A8D6A746A6FEFFFF905FC9
        782CB0DFDDFDD099CCAB64ABF0F8F09B9A9B51515120201F6A6A6AC6C6C6FFFF
        FF00C3C3C56E6E1AC3C39F1B1B22848483151515A7ABA7FDFEFBFFFFFF6227D4
        4000AFCFC9FFFFFFFFCBCDCB3D3E3D4240405D5D5D85859E7F7F7D5E5E5EF8F8
        F800FDFDFD989896878787252525FFFFFFE3E3E3222222898A89A7A8A9ABB2AB
        AEB7ADAAAEA6ACACAB141514939393FFFFFF5D5D78D4D400747491D9D9D8FFFF
        FF00FFFFFFEEEEED6D6D6CF2F2F2FFFFFFFFFFFFFFFFFF969697282819303025
        2A2A2B020202686868FFFFFFFFFFFFFFFFFFFFFFFF636382CBCBC9FFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0FF7E7E0FA7A766
        878793373736AEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D74060600
        111116373737EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
    end
    object Edit1: TEdit
      Left = 63
      Top = 4
      Width = 87
      Height = 20
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 175
      Top = 4
      Width = 87
      Height = 20
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object BitCtasInac: TBitBtn
    Left = 366
    Top = 408
    Width = 156
    Height = 27
    Cursor = crHandPoint
    Caption = 'Cuentas Inactivas'
    TabOrder = 5
    OnClick = BitCtasInacClick
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888800008888888888888888889800008898888888888888898800008899
      88777777777798880000889990000000000998880000888990BFFFBFFF998888
      0000888899FCCCCCCF97888800008888999FBFFFB9978888000088888999CCC9
      990788880000888880999FB99F0788880000888880FC9999CF07888800008888
      80FF9999BF0788880000888880FC9999000788880000888880B99F099F078888
      0000888880999F099998888800008888999FBF0F089988880000889999000000
      8889988800008899988888888888898800008888888888888888889800008888
      88888888888888880000}
  end
  object BitIncons: TBitBtn
    Left = 202
    Top = 408
    Width = 156
    Height = 27
    Cursor = crHandPoint
    Caption = 'Inconsistencias'
    TabOrder = 6
    OnClick = BitInconsClick
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
  object BitMontos: TBitBtn
    Left = 39
    Top = 408
    Width = 156
    Height = 27
    Cursor = crHandPoint
    Caption = 'Detalles Por Monto Cuota'
    TabOrder = 7
    OnClick = BitMontosClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFF767676
      8686868686868686868686868686868686868686868686868D8D8D777777FFFF
      FFFFFFFFFFFFFFFFFFFF1D1D1D9292838E8E7F8E8E7F8A8A8377777777777777
      77777777777F7F7F2626267E7E7EFFFFFFFFFFFFFFFFFFFFFFFF9393845F5FF7
      2020BF2020C6575795FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080767676FFFF
      FFFFFFFFFFFFFFFFFFFF8787787C7CFFFFFFFFFFFFFF0F0FB8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF787878767676FFFFFFFFFFFFFFFFFFFFFFFF8787788080FF
      FFFFFFFFFFFF0F0FB1FFFFFFFFFFFF6F6F6FD3CFCFFFFFFF807878767676FFFF
      FFFFFFFFFFFFFFFFFFFF8F8F781919FF7B7BFF7373FF4848E1FFFFFFFFFFFF00
      00000000003FD5D53F78788D8282969696FFFFFFFFFFFFFFFFFF7C7C7CFFFFEC
      B1B19ADDDDC6D5D5B8FFFFFFFFFFFF8F707000DDDD00C4C400D2D258878E7689
      89969696FFFFFFFFFFFF8F8F783333FF00002248488F1D1DCAFFFFFFFFFFFFD3
      FFFF00BCBC00C0C600E8EFFF3300F00014679595969696FFFFFF8F8F805050E1
      0000000000003F3F8EFFFFFFFFFFFFFFFFFF26B7BF1DFFC4FF0000FF5800FF50
      00F00014679595A1A1A19797870000709F9F80FFFFF0000000FFFFFFFFFFFFFF
      FFFFBCCBCBFF0000FFC500FF0000FF5800FF5000F000146B99998787789A9AFF
      8E8EFF8E8EFF48482F1D1D1DFFFFFFFFFFFFFFFFFFFF2626FF0000FFC500FF00
      00FF5800FF5000E50F228B8B7C5F5FE82020B12525BB50508E000000141414FF
      FFFFFFFFFFFFFFFFFF3737FF0000FFC500FF0000FF5800FF4C008787787C7CFF
      FFFFFFFFFFFF1D1DC3E9E9DA6F6F6FB5B5B5FFFFFFFFFFFF5C8B8BEF1414FF00
      00FFC500FF0000FF58008787788080FFFFFFFFFFFFFF0F0FB1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF7878786A9999FF3737FF0000FFC500FF00009797802626FF
      7F7FFF7B7BFF5050E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080666666FFFF
      FFFF2626FF0000FFB50037373796967F8787778787778A8A7B77777777777777
      77777777777F7F7F1D1D1DFFFFFFFFFFFFFFFFFFFF3F3FFF0000}
  end
  object ppInconsis: TppReport
    AutoStop = False
    DataPipeline = ppDBEstPre
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
    Template.FileName = 'D:\sistemas\NewSiscre\Reportes\RepEstDep.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 69
    Top = 143
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstPre'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2910
        mmTop = 26458
        mmWidth = 197380
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2910
        mmTop = 35190
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'CUENTA DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 11642
        mmTop = 27517
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'SIT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 30692
        mmTop = 27517
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'TIP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 118534
        mmTop = 27781
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'MONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 167217
        mmTop = 30956
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
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
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Sistema De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 29168
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Fecha   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        Caption = 'Hora     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label103'
        Caption = 'Pag      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 11113
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
        mmLeft = 175684
        mmTop = 265
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
        mmLeft = 175419
        mmTop = 5027
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
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'DESEMBOLSO EN EFECTIVO  DEL 10/06/2003    AL   13/06/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 17727
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 37835
        mmTop = 31221
        mmWidth = 65352
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'ASO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 118534
        mmTop = 31485
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 128323
        mmTop = 31221
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'CTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 30692
        mmTop = 31221
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'AHORROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 11642
        mmTop = 31221
        mmWidth = 15610
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASONCTA'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'SITCTA'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 31221
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 0
        mmWidth = 77788
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CRESALDO'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 151077
        mmTop = 0
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOTIPID'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 119063
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ASODNI'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 128323
        mmTop = 0
        mmWidth = 19050
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
      mmHeight = 16933
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'MONTO TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 112448
        mmTop = 2117
        mmWidth = 20447
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'ASONCTA'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 6085
        mmWidth = 14817
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CRESALDO'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 4233
        mmLeft = 151607
        mmTop = 1588
        mmWidth = 30956
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 3175
        mmTop = 529
        mmWidth = 197380
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 3175
        mmTop = 11906
        mmWidth = 197380
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'REGISTROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 112448
        mmTop = 6085
        mmWidth = 16722
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 133615
        mmTop = 2117
        mmWidth = 4763
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 133615
        mmTop = 6350
        mmWidth = 4763
        BandType = 7
      end
    end
  end
  object ppDBEstPre: TppDBPipeline
    DataSource = DM1.dsQry3
    UserName = 'DBEstPre'
    Left = 37
    Top = 135
  end
end
