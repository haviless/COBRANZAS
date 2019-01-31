object fSaldCredOtro: TfSaldCredOtro
  Left = 157
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Saldos De Creditos Otorgados'
  ClientHeight = 343
  ClientWidth = 403
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
  object grbParametros: TGroupBox
    Left = 2
    Top = 149
    Width = 399
    Height = 156
    TabOrder = 0
    object lblNomMes: TLabel
      Left = 105
      Top = 68
      Width = 93
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
    object TLabel
      Left = 4
      Top = 45
      Width = 59
      Height = 18
      Caption = 'PERIODO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object TLabel
      Left = 6
      Top = 15
      Width = 230
      Height = 18
      Caption = 'Creditos Con Cronogramas Terminado '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object dbsAnoIni: TwwDBSpinEdit
      Left = 4
      Top = 64
      Width = 58
      Height = 26
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 1990.000000000000000000
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
      Top = 64
      Width = 36
      Height = 26
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
      OnChange = dbsMesIniChange
    end
    object GroupBox1: TGroupBox
      Left = 209
      Top = 53
      Width = 185
      Height = 44
      TabOrder = 2
      object chkResumen: TCheckBox
        Left = 9
        Top = 18
        Width = 56
        Height = 16
        Caption = 'Resum'#233'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = chkResumenClick
      end
      object BitImprime: TBitBtn
        Left = 71
        Top = 13
        Width = 106
        Height = 26
        Cursor = crHandPoint
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = BitImprimeClick
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
    end
    object gbOfiDes: TGroupBox
      Left = 7
      Top = 102
      Width = 386
      Height = 45
      Caption = 'Origen De Otorgamiento'
      TabOrder = 3
      object DBLkOfiDes: TwwDBLookupCombo
        Left = 11
        Top = 15
        Width = 44
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'OFDESID'#9'2'#9'Codigo'#9'F'
          'OFDESNOM'#9'25'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsOfDes
        LookupField = 'OFDESID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DBLkOfiDesChange
      end
      object Panel2: TPanel
        Left = 58
        Top = 15
        Width = 307
        Height = 27
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 1
        object EdtOfiDes: TEdit
          Left = 1
          Top = 1
          Width = 305
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  object grpTipPre: TGroupBox
    Left = 3
    Top = 0
    Width = 397
    Height = 147
    TabOrder = 1
    object TLabel
      Left = 7
      Top = 71
      Width = 88
      Height = 17
      Caption = 'Tipo De Credito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 29
      Width = 33
      Height = 17
      Caption = 'Inicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 131
      Top = 30
      Width = 17
      Height = 17
      Caption = 'Fin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 8
      Top = 10
      Width = 183
      Height = 18
      Caption = 'Saldos De Creditos Otorgados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object dblTipCre: TwwDBLookupCombo
      Left = 7
      Top = 90
      Width = 44
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPCREID'#9'2'#9'Codigo'#9'F'#9
        'TIPCREDES'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTipCreA
      LookupField = 'TIPCREID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblTipCreChange
    end
    object Panel1: TPanel
      Left = 53
      Top = 89
      Width = 307
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 1
      object EdtDesCre: TEdit
        Left = 1
        Top = 1
        Width = 305
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object chkRef: TCheckBox
      Left = 220
      Top = 122
      Width = 137
      Height = 17
      Caption = 'Solo Refinanciados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DtpFecIni: TDateTimePicker
      Left = 7
      Top = 44
      Width = 101
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
      TabOrder = 3
    end
    object DtpFecFin: TDateTimePicker
      Left = 130
      Top = 44
      Width = 100
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
      TabOrder = 4
    end
    object BitPrintRep: TBitBtn
      Left = 255
      Top = 44
      Width = 106
      Height = 26
      Cursor = crHandPoint
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = BitPrintRepClick
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
  end
  object BitSalir: TBitBtn
    Left = 283
    Top = 311
    Width = 105
    Height = 27
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
  object DbDatTip: TppDBPipeline
    DataSource = DM1.dsCredito
    UserName = 'DbDatTip'
    Left = 256
    Top = 168
  end
  object ppRepCronos: TppReport
    AutoStop = False
    DataPipeline = DbDatTip
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
    Left = 296
    Top = 168
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbDatTip'
    object ppHeaderBand22: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 46038
      mmPrintPosition = 0
      object ppLblTitu01: TppLabel
        UserName = 'LblTitu01'
        AutoSize = False
        Caption = 'CREDITOS CON CALENDARIOS TERMINADOS A OCTUBRE-2004'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 15081
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel453: TppLabel
        UserName = 'Label428'
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
      object ppLabel454: TppLabel
        UserName = 'Label429'
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
      object ppLabel455: TppLabel
        UserName = 'Label430'
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
      object ppLabel456: TppLabel
        UserName = 'Label431'
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
      object ppLabel457: TppLabel
        UserName = 'Label432'
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
      object ppSystemVariable38: TppSystemVariable
        UserName = 'SystemVariable203'
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
      object ppSystemVariable39: TppSystemVariable
        UserName = 'SystemVariable36'
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
      object ppSystemVariable40: TppSystemVariable
        UserName = 'SystemVariable37'
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
      object ppLabel458: TppLabel
        UserName = 'Label433'
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
      object ppLabel459: TppLabel
        UserName = 'Label434'
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
      object ppLabel460: TppLabel
        UserName = 'Label435'
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
      object ppLabel461: TppLabel
        UserName = 'Label425'
        Caption = 'Origen De Otorgamiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25929
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel462: TppLabel
        UserName = 'Label426'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 25929
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel463: TppLabel
        UserName = 'Label437'
        Caption = 'Use'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 39423
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel464: TppLabel
        UserName = 'Label438'
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 35454
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel465: TppLabel
        UserName = 'Label439'
        Caption = 'Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 39688
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel466: TppLabel
        UserName = 'Label440'
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 39688
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel467: TppLabel
        UserName = 'Label4401'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 91281
        mmTop = 36248
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel468: TppLabel
        UserName = 'Label442'
        Caption = 'De Prestamo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 91281
        mmTop = 40217
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel469: TppLabel
        UserName = 'Label443'
        Caption = 'Numero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 110596
        mmTop = 40217
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel470: TppLabel
        UserName = 'Label444'
        Caption = 'Saldos(A+I+G)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 134938
        mmTop = 40481
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel471: TppLabel
        UserName = 'Label445'
        Caption = 'MES/A'#209'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 40481
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel472: TppLabel
        UserName = 'Label446'
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 40481
        mmWidth = 10054
        BandType = 0
      end
      object ppLine117: TppLine
        UserName = 'Line112'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 44715
        mmWidth = 201877
        BandType = 0
      end
      object ppLine118: TppLine
        UserName = 'Line113'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 34131
        mmWidth = 201877
        BandType = 0
      end
      object lblOfiDes: TppLabel
        UserName = 'lblOfiDes'
        AutoSize = False
        Caption = 'SEDE CENTRAL '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 25929
        mmWidth = 118798
        BandType = 0
      end
    end
    object ppDetailBand24: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText201: TppDBText
        UserName = 'DBText193'
        DataField = 'ASOCODMOD'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText202: TppDBText
        UserName = 'DBText194'
        DataField = 'ASOAPENOM'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 25400
        mmTop = 0
        mmWidth = 62971
        BandType = 4
      end
      object ppDBText203: TppDBText
        UserName = 'DBText195'
        DataField = 'USEID'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText204: TppDBText
        UserName = 'DBText196'
        DataField = 'CREFOTORG'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 91017
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText205: TppDBText
        UserName = 'DBText197'
        DataField = 'NUMCRE'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 110331
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText206: TppDBText
        UserName = 'DBText198'
        DataField = 'CRESDOACT'
        DataPipeline = DbDatTip
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 132821
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText207: TppDBText
        UserName = 'DBText199'
        DataField = 'MESANO'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText208: TppDBText
        UserName = 'DBText200'
        DataField = 'CREESTADO'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 177271
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppFooterBand17: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand22: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine119: TppLine
        UserName = 'Line115'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 201877
        BandType = 7
      end
      object ppLabel473: TppLabel
        UserName = 'Label448'
        Caption = 'Total General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 46302
        mmTop = 1323
        mmWidth = 21960
        BandType = 7
      end
      object ppLabel474: TppLabel
        UserName = 'Label449'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 74877
        mmTop = 1323
        mmWidth = 2117
        BandType = 7
      end
      object ppDBCalc178: TppDBCalc
        UserName = 'DBCalc175'
        DataField = 'CRESDOACT'
        DataPipeline = DbDatTip
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3704
        mmLeft = 117211
        mmTop = 1323
        mmWidth = 37571
        BandType = 7
      end
      object ppDBCalc179: TppDBCalc
        UserName = 'DBCalc177'
        DataField = 'ASOID'
        DataPipeline = DbDatTip
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbDatTip'
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 1323
        mmWidth = 14023
        BandType = 7
      end
      object ppLabel475: TppLabel
        UserName = 'Label452'
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178065
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object ppLine120: TppLine
        UserName = 'Line116'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 6615
        mmWidth = 201877
        BandType = 7
      end
    end
  end
  object ppRepResumen: TppReport
    AutoStop = False
    DataPipeline = DbDatTip
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
    Left = 200
    Top = 184
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbDatTip'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object ppLblTitus: TppLabel
        UserName = 'LblTitu01'
        AutoSize = False
        Caption = 'RESUMEN DE CREDITOS CON CALENDARIOS TERMINADOS A OCTUBRE-2004'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 15081
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label428'
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
      object ppLabel3: TppLabel
        UserName = 'Label429'
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
      object ppLabel4: TppLabel
        UserName = 'Label430'
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
      object ppLabel5: TppLabel
        UserName = 'Label431'
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
      object ppLabel6: TppLabel
        UserName = 'Label432'
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
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable203'
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
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable36'
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
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable37'
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
      object ppLabel7: TppLabel
        UserName = 'Label433'
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
      object ppLabel8: TppLabel
        UserName = 'Label434'
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
      object ppLabel9: TppLabel
        UserName = 'Label435'
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
      object ppLabel10: TppLabel
        UserName = 'Label440'
        Caption = 'Origen De Otorgamiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 28310
        mmWidth = 37253
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label442'
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 28840
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label444'
        Caption = 'Saldos(A+I+G)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 162719
        mmTop = 29104
        mmWidth = 19050
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line112'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 33338
        mmWidth = 201877
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line113'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 26988
        mmWidth = 201877
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText194'
        DataField = 'OFDESNOM'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 11906
        mmTop = 265
        mmWidth = 62971
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText195'
        DataField = 'OFIDES'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText196'
        DataField = 'REGISTROS'
        DataPipeline = DbDatTip
        DisplayFormat = '###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 114829
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText198'
        DataField = 'SALDOS'
        DataPipeline = DbDatTip
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 160602
        mmTop = 0
        mmWidth = 21431
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
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line115'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 201877
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label448'
        Caption = 'Total General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 46302
        mmTop = 1323
        mmWidth = 21960
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label449'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 74877
        mmTop = 1323
        mmWidth = 2117
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc175'
        DataField = 'SALDOS'
        DataPipeline = DbDatTip
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3704
        mmLeft = 144992
        mmTop = 1323
        mmWidth = 37571
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc177'
        DataField = 'REGISTROS'
        DataPipeline = DbDatTip
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3704
        mmLeft = 114829
        mmTop = 1323
        mmWidth = 21961
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line116'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 6615
        mmWidth = 201877
        BandType = 7
      end
    end
  end
  object ppRepTipCre: TppReport
    AutoStop = False
    DataPipeline = DbDatTip
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
    Left = 216
    Top = 72
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbDatTip'
    object ppHeaderBand21: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object ppLblTitulos: TppLabel
        UserName = 'LblTitulos'
        AutoSize = False
        Caption = 'CREDITOS OTORGADOS DEL 01/09/2004 AL 30/09/2004 - EMERGENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 265
        mmTop = 16404
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel428: TppLabel
        UserName = 'Label428'
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
      object ppLabel429: TppLabel
        UserName = 'Label429'
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
      object ppLabel430: TppLabel
        UserName = 'Label430'
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
      object ppLabel431: TppLabel
        UserName = 'Label431'
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
      object ppLabel432: TppLabel
        UserName = 'Label432'
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
      object ppSystemVariable35: TppSystemVariable
        UserName = 'SystemVariable203'
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
      object ppSystemVariable36: TppSystemVariable
        UserName = 'SystemVariable36'
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
      object ppSystemVariable37: TppSystemVariable
        UserName = 'SystemVariable37'
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
      object ppLabel433: TppLabel
        UserName = 'Label433'
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
      object ppLabel434: TppLabel
        UserName = 'Label434'
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
      object ppLabel435: TppLabel
        UserName = 'Label435'
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
      object ppLblSunTit: TppLabel
        UserName = 'LblSunTit'
        AutoSize = False
        Caption = 'CON SALDO PENDIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23548
        mmWidth = 198702
        BandType = 0
      end
    end
    object ppDetailBand23: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText193: TppDBText
        UserName = 'DBText193'
        DataField = 'ASOCODMOD'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText194: TppDBText
        UserName = 'DBText194'
        DataField = 'ASOAPENOM'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 25400
        mmTop = 0
        mmWidth = 62971
        BandType = 4
      end
      object ppDBText195: TppDBText
        UserName = 'DBText195'
        DataField = 'USEID'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText196: TppDBText
        UserName = 'DBText196'
        DataField = 'CREFOTORG'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 91017
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText197: TppDBText
        UserName = 'DBText197'
        DataField = 'NUMCRE'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 110331
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText198: TppDBText
        UserName = 'DBText198'
        DataField = 'CRESDOACT'
        DataPipeline = DbDatTip
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 132821
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText199: TppDBText
        UserName = 'DBText199'
        DataField = 'USUARIO'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText200: TppDBText
        UserName = 'DBText200'
        DataField = 'CREESTADO'
        DataPipeline = DbDatTip
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3969
        mmLeft = 177271
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppFooterBand16: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
    end
    object ppSummaryBand21: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel448: TppLabel
        UserName = 'Label448'
        Caption = 'Total General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 46302
        mmTop = 2646
        mmWidth = 22013
        BandType = 7
      end
      object ppLabel449: TppLabel
        UserName = 'Label449'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 74877
        mmTop = 2646
        mmWidth = 2117
        BandType = 7
      end
      object ppLine115: TppLine
        UserName = 'Line115'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 529
        mmWidth = 201877
        BandType = 7
      end
      object ppLine116: TppLine
        UserName = 'Line116'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 7938
        mmWidth = 201877
        BandType = 7
      end
      object ppDBCalc175: TppDBCalc
        UserName = 'DBCalc175'
        DataField = 'CRESDOACT'
        DataPipeline = DbDatTip
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatTip'
        mmHeight = 3704
        mmLeft = 117211
        mmTop = 2646
        mmWidth = 37571
        BandType = 7
      end
      object ppDBCalc177: TppDBCalc
        UserName = 'DBCalc177'
        DataField = 'ASOID'
        DataPipeline = DbDatTip
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbDatTip'
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 2646
        mmWidth = 14023
        BandType = 7
      end
      object ppLabel452: TppLabel
        UserName = 'Label452'
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178065
        mmTop = 2381
        mmWidth = 15346
        BandType = 7
      end
    end
    object ppGroup32: TppGroup
      BreakName = 'OFDESID'
      DataPipeline = DbDatTip
      OutlineSettings.CreateNode = True
      UserName = 'Group32'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbDatTip'
      object ppGroupHeaderBand32: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 23813
        mmPrintPosition = 0
        object ppDBText192: TppDBText
          UserName = 'DBText192'
          DataField = 'OFDESNOM'
          DataPipeline = DbDatTip
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbDatTip'
          mmHeight = 4233
          mmLeft = 35719
          mmTop = 4233
          mmWidth = 83608
          BandType = 3
          GroupNo = 0
        end
        object ppLabel425: TppLabel
          UserName = 'Label425'
          Caption = 'Origen De Otorgamiento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 4233
          mmWidth = 32544
          BandType = 3
          GroupNo = 0
        end
        object ppLabel426: TppLabel
          UserName = 'Label426'
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 33073
          mmTop = 4233
          mmWidth = 2117
          BandType = 3
          GroupNo = 0
        end
        object ppLabel437: TppLabel
          UserName = 'Label437'
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 17727
          mmWidth = 5080
          BandType = 3
          GroupNo = 0
        end
        object ppLabel438: TppLabel
          UserName = 'Label438'
          Caption = 'Codigo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 6350
          mmTop = 13758
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel439: TppLabel
          UserName = 'Label439'
          Caption = 'Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 6350
          mmTop = 17992
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel440: TppLabel
          UserName = 'Label440'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 25665
          mmTop = 17992
          mmWidth = 32015
          BandType = 3
          GroupNo = 0
        end
        object ppLabel441: TppLabel
          UserName = 'Label4401'
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 91281
          mmTop = 14552
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppLabel442: TppLabel
          UserName = 'Label442'
          Caption = 'De Prestamo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 91281
          mmTop = 18521
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel443: TppLabel
          UserName = 'Label443'
          Caption = 'Numero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 110596
          mmTop = 18521
          mmWidth = 10160
          BandType = 3
          GroupNo = 0
        end
        object ppLabel444: TppLabel
          UserName = 'Label444'
          Caption = 'Saldos(A+I+G)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 134938
          mmTop = 18785
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel445: TppLabel
          UserName = 'Label445'
          Caption = 'Otorgado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 155311
          mmTop = 14023
          mmWidth = 13547
          BandType = 3
          GroupNo = 0
        end
        object ppLabel446: TppLabel
          UserName = 'Label446'
          Caption = 'Estado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 177536
          mmTop = 18785
          mmWidth = 10160
          BandType = 3
          GroupNo = 0
        end
        object ppLine112: TppLine
          UserName = 'Line112'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 23019
          mmWidth = 201877
          BandType = 3
          GroupNo = 0
        end
        object ppLine113: TppLine
          UserName = 'Line113'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 12435
          mmWidth = 201877
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label461'
          Caption = 'Por'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 155575
          mmTop = 18521
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand32: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppLabel447: TppLabel
          UserName = 'Label447'
          Caption = 'Sub-Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 46302
          mmTop = 1852
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
        end
        object ppLine114: TppLine
          UserName = 'Line114'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 0
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
        object ppLabel450: TppLabel
          UserName = 'Label450'
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 74877
          mmTop = 1852
          mmWidth = 2117
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc174: TppDBCalc
          UserName = 'DBCalc174'
          DataField = 'CRESDOACT'
          DataPipeline = DbDatTip
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup32
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDatTip'
          mmHeight = 3704
          mmLeft = 117211
          mmTop = 2381
          mmWidth = 37042
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc176: TppDBCalc
          UserName = 'DBCalc176'
          DataField = 'ASOID'
          DataPipeline = DbDatTip
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup32
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbDatTip'
          mmHeight = 3704
          mmLeft = 161661
          mmTop = 2381
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppLabel451: TppLabel
          UserName = 'Label451'
          Caption = 'Registros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 178065
          mmTop = 2117
          mmWidth = 15240
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
