object fResFPago: TfResFPago
  Left = 280
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Resumen de Cobranza por Forma de Pago'
  ClientHeight = 471
  ClientWidth = 829
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 5
    Top = 0
    Width = 683
    Height = 138
    TabOrder = 0
    object Label2: TLabel
      Left = 13
      Top = 16
      Width = 80
      Height = 15
      Caption = 'Fecha de Inicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 13
      Top = 42
      Width = 58
      Height = 15
      Caption = 'Fecha Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 13
      Top = 94
      Width = 73
      Height = 15
      Caption = 'Forma de pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 94
      Top = 18
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label4: TLabel
      Left = 94
      Top = 43
      Width = 3
      Height = 13
      Caption = ':'
    end
    object DBLCTipCob: TwwDBLookupCombo
      Left = 13
      Top = 111
      Width = 46
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FORPAGOID'#9'2'#9'Codigo'#9'F'
        'FORPAGODES'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormaPago
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTipCobChange
    end
    object EdtForPago: TEdit
      Left = 62
      Top = 111
      Width = 258
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = 12975869
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object ChkDetalle: TCheckBox
      Left = 224
      Top = 33
      Width = 81
      Height = 17
      Caption = 'Detallado'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = ChkDetalleClick
    end
    object chkDist: TCheckBox
      Left = 224
      Top = 55
      Width = 153
      Height = 13
      Caption = 'Amo - Int - Gas - Desgrav'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = chkDistClick
    end
    object btnProcesar: TBitBtn
      Left = 584
      Top = 15
      Width = 79
      Height = 27
      Caption = '&Procesar'
      TabOrder = 6
      OnClick = btnProcesarClick
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
    object rgtipaso: TRadioGroup
      Left = 413
      Top = 8
      Width = 153
      Height = 88
      Caption = ' Tipo de Asociado  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Docente           '
        'Cesante            '
        'Contratado'
        'Todos')
      ParentFont = False
      TabOrder = 5
      OnClick = rgtipasoClick
    end
    object DtpFecIni: TwwDBDateTimePicker
      Left = 100
      Top = 16
      Width = 94
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
      OnChange = DtpFecIniChange
    end
    object DtpFecFin: TwwDBDateTimePicker
      Left = 100
      Top = 40
      Width = 94
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      OnChange = DtpFecFinChange
    end
    object chkFSC: TCheckBox
      Left = 224
      Top = 73
      Width = 139
      Height = 17
      Caption = 'Incluir Pagos al FSC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = chkFSCClick
    end
    object chkOpeRef: TCheckBox
      Left = 225
      Top = 14
      Width = 182
      Height = 18
      Caption = 'Pago de Ope. Refinanciadas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = chkOpeRefClick
    end
    object chkExtFSC: TCheckBox
      Left = 224
      Top = 92
      Width = 139
      Height = 17
      Caption = 'Ext. FSC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = chkExtFSCClick
    end
  end
  object BitPrint: TBitBtn
    Left = 664
    Top = 437
    Width = 78
    Height = 27
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    Enabled = False
    TabOrder = 1
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
    Left = 745
    Top = 437
    Width = 79
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
  object dbgPrevio: TwwDBGrid
    Left = 5
    Top = 142
    Width = 820
    Height = 287
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
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
  object btnaexcel: TBitBtn
    Left = 582
    Top = 437
    Width = 78
    Height = 28
    Caption = 'A Excel'
    Enabled = False
    TabOrder = 4
    OnClick = btnaexcelClick
    Glyph.Data = {
      76040000424DB604000000000000B60000002800000010000000100000000100
      2000000000000004000000000000000000001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBF0000BFBF0000BFBF000000000000FF00FF00FF00FF000000
      000080808000808080008080800080808000808080008080800000000000FFFF
      00000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000008080800000000000FF00FF00FF00
      FF0000000000C0C0C000C0C0C000C0C0C00080808000FFFF000000000000FFFF
      0000FFFF0000FFFF000000000000000000008080800000000000FF00FF00FF00
      FF00FF00FF0000000000C0C0C00080808000FFFF000000000000FFFF0000FFFF
      0000FFFF000000000000C0C0C000C0C0C0000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF0000000000FFFF000000000000FFFF0000FFFF0000FFFF00000000
      00008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFF000000000000FFFF0000FFFF0000FFFF000000000000C0C0
      C000000000008080800000000000FF00FF00FF00FF00FF00FF00FF00FF000000
      0000FFFF000000000000FFFF0000FFFF0000FFFF000000000000C0C0C000C0C0
      C000C0C0C000000000008080800000000000FF00FF00FF00FF0000000000FFFF
      000000000000FFFF0000FFFF0000FFFF000000000000FF00FF0000000000C0C0
      C000C0C0C000C0C0C000000000008080800000000000FF00FF00000000000000
      0000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF000000
      0000C0C0C000C0C0C000C0C0C0000000000000000000FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object DataRep: TppDBPipeline
    DataSource = DM1.dsCambios
    UserName = 'DataRep'
    Left = 312
    Top = 440
  end
  object ppRepFPago: TppReport
    AutoStop = False
    DataPipeline = DataRep
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
    Template.FileName = 'F:\SOLREPO\COB\ResGnrCob.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 344
    Top = 440
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DataRep'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object pplblTitulo01: TppLabel
        UserName = 'lblTitulo01'
        AutoSize = False
        Caption = 'REPORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 16140
        mmWidth = 200290
        BandType = 0
      end
      object pplblTitulo02: TppLabel
        UserName = 'lblTitulo02'
        AutoSize = False
        Caption = 'REPORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 20902
        mmWidth = 200555
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
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
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label102'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label103'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 5080
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
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 0
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 4498
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label202'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 9260
        mmWidth = 2646
        BandType = 0
      end
      object ppltipaso: TppLabel
        UserName = 'ltipaso'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 26988
        mmWidth = 64823
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'COB917'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 16669
        mmTop = 8996
        mmWidth = 10054
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'USEID'
        DataPipeline = DataRep
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'USENOM'
        DataPipeline = DataRep
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 0
        mmWidth = 70379
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3175
        mmLeft = 82286
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        AutoSize = True
        DataField = 'CREAMORT'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3175
        mmLeft = 107156
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        AutoSize = True
        DataField = 'CREINTERES'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3175
        mmLeft = 124354
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        AutoSize = True
        DataField = 'CREFLAT'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3175
        mmLeft = 157427
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        AutoSize = True
        DataField = 'CREMTOEXC'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3175
        mmLeft = 173567
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        AutoSize = True
        DataField = 'MOVIM'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3175
        mmLeft = 189971
        mmTop = 0
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        DataField = 'MONCOBDESGRAV'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3175
        mmLeft = 142611
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLine11: TppLine
        UserName = 'Line11'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 1058
        mmWidth = 201877
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 7144
        mmWidth = 201877
        BandType = 7
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Total General         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 44186
        mmTop = 2117
        mmWidth = 26458
        BandType = 7
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc201'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3260
        mmLeft = 74465
        mmTop = 2117
        mmWidth = 26077
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        AutoSize = True
        DataField = 'CREAMORT'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3260
        mmLeft = 99420
        mmTop = 2117
        mmWidth = 23876
        BandType = 7
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        AutoSize = True
        DataField = 'CREINTERES'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3260
        mmLeft = 113929
        mmTop = 2117
        mmWidth = 26035
        BandType = 7
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc29'
        AutoSize = True
        DataField = 'CREFLAT'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3260
        mmLeft = 149945
        mmTop = 2117
        mmWidth = 20447
        BandType = 7
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc30'
        AutoSize = True
        DataField = 'CREMTOEXC'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3260
        mmLeft = 161365
        mmTop = 2117
        mmWidth = 25696
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc31'
        AutoSize = True
        DataField = 'MOVIM'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3260
        mmLeft = 182182
        mmTop = 2117
        mmWidth = 17314
        BandType = 7
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 76200
        mmTop = 2117
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc58: TppDBCalc
        UserName = 'DBCalc58'
        AutoSize = True
        DataField = 'MONCOBDESGRAV'
        DataPipeline = DataRep
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DataRep'
        mmHeight = 3260
        mmLeft = 121189
        mmTop = 2117
        mmWidth = 34121
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'UPROID'
      DataPipeline = DataRep
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataRep'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppDBText22: TppDBText
          UserName = 'DBText22'
          DataField = 'UPROID'
          DataPipeline = DataRep
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 4233
          mmLeft = 32544
          mmTop = 3704
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
        end
        object ppDBText23: TppDBText
          UserName = 'DBText23'
          DataField = 'UPRONOM'
          DataPipeline = DataRep
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 4233
          mmLeft = 39952
          mmTop = 3704
          mmWidth = 88900
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = 'Lugar de Proceso     '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 265
          mmTop = 3704
          mmWidth = 26670
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = ': '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 28840
          mmTop = 3704
          mmWidth = 2646
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 794
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          Caption = 'Total por Lugar        '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 44186
          mmTop = 2117
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 74465
          mmTop = 2117
          mmWidth = 26077
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc21'
          AutoSize = True
          DataField = 'CREAMORT'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 99420
          mmTop = 2117
          mmWidth = 23876
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          AutoSize = True
          DataField = 'CREINTERES'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 113929
          mmTop = 2117
          mmWidth = 26035
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          AutoSize = True
          DataField = 'CREFLAT'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 149945
          mmTop = 2117
          mmWidth = 20447
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc24'
          AutoSize = True
          DataField = 'CREMTOEXC'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 161364
          mmTop = 2117
          mmWidth = 25696
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc25'
          AutoSize = True
          DataField = 'MOVIM'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 182182
          mmTop = 2117
          mmWidth = 17314
          BandType = 5
          GroupNo = 0
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
          Caption = ': '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 76200
          mmTop = 2117
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc57: TppDBCalc
          UserName = 'DBCalc57'
          AutoSize = True
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 121190
          mmTop = 2117
          mmWidth = 34121
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'TIPCREID'
      DataPipeline = DataRep
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataRep'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBText24: TppDBText
          UserName = 'DBText24'
          DataField = 'TIPCREID'
          DataPipeline = DataRep
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3440
          mmLeft = 32279
          mmTop = 1323
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
        end
        object ppDBText25: TppDBText
          UserName = 'DBText25'
          DataField = 'TIPCREDES'
          DataPipeline = DataRep
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3440
          mmLeft = 37042
          mmTop = 1323
          mmWidth = 88900
          BandType = 3
          GroupNo = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'Tipo  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 1323
          mmWidth = 7620
          BandType = 3
          GroupNo = 1
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Caption = ': '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 28575
          mmTop = 1058
          mmWidth = 2646
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 529
          mmWidth = 201877
          BandType = 5
          GroupNo = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          Caption = 'Total por Tipo  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 43921
          mmTop = 2117
          mmWidth = 20320
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 74465
          mmTop = 2117
          mmWidth = 26077
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          AutoSize = True
          DataField = 'CREAMORT'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 99420
          mmTop = 2117
          mmWidth = 23876
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc101'
          AutoSize = True
          DataField = 'CREINTERES'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 113929
          mmTop = 2117
          mmWidth = 26035
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          AutoSize = True
          DataField = 'CREFLAT'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 149945
          mmTop = 2117
          mmWidth = 20447
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          AutoSize = True
          DataField = 'CREMTOEXC'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 161365
          mmTop = 2117
          mmWidth = 25696
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          AutoSize = True
          DataField = 'MOVIM'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 182182
          mmTop = 2117
          mmWidth = 17314
          BandType = 5
          GroupNo = 1
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Caption = ': '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 76200
          mmTop = 2117
          mmWidth = 2646
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc56: TppDBCalc
          UserName = 'DBCalc56'
          AutoSize = True
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 121190
          mmTop = 2117
          mmWidth = 34121
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CREFPAG'
      DataPipeline = DataRep
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataRep'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          DataField = 'CREFPAG'
          DataPipeline = DataRep
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3440
          mmLeft = 32279
          mmTop = 0
          mmWidth = 16669
          BandType = 3
          GroupNo = 2
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'Fecha de Pago    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 265
          mmTop = 0
          mmWidth = 21590
          BandType = 3
          GroupNo = 2
        end
        object ppLabel51: TppLabel
          UserName = 'Label501'
          Caption = ': '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 28575
          mmTop = 0
          mmWidth = 2646
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 794
          mmWidth = 201877
          BandType = 5
          GroupNo = 2
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          Caption = 'Total por Fecha    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 43921
          mmTop = 2117
          mmWidth = 24130
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 74465
          mmTop = 2117
          mmWidth = 26077
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          AutoSize = True
          DataField = 'CREAMORT'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 99420
          mmTop = 2117
          mmWidth = 23876
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          AutoSize = True
          DataField = 'CREINTERES'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 113929
          mmTop = 2117
          mmWidth = 26035
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          AutoSize = True
          DataField = 'CREFLAT'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 149945
          mmTop = 2117
          mmWidth = 20447
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          AutoSize = True
          DataField = 'CREMTOEXC'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 161365
          mmTop = 2117
          mmWidth = 25696
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          AutoSize = True
          DataField = 'MOVIM'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 182182
          mmTop = 2117
          mmWidth = 17314
          BandType = 5
          GroupNo = 2
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = ': '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 76200
          mmTop = 2117
          mmWidth = 2646
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc55: TppDBCalc
          UserName = 'DBCalc55'
          AutoSize = True
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 121189
          mmTop = 2117
          mmWidth = 34121
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'CREDOCPAG'
      DataPipeline = DataRep
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataRep'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12171
        mmPrintPosition = 0
        object ppDBText27: TppDBText
          UserName = 'DBText27'
          DataField = 'CREDOCPAG'
          DataPipeline = DataRep
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3440
          mmLeft = 32279
          mmTop = 0
          mmWidth = 21960
          BandType = 3
          GroupNo = 3
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = 'Documento '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 265
          mmTop = 0
          mmWidth = 17463
          BandType = 3
          GroupNo = 3
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 10848
          mmWidth = 201877
          BandType = 3
          GroupNo = 3
        end
        object ppLabel36: TppLabel
          UserName = 'Label302'
          Caption = 'Use '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 3175
          mmTop = 6615
          mmWidth = 5080
          BandType = 3
          GroupNo = 3
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          Caption = 'Descripci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 9790
          mmTop = 6615
          mmWidth = 22754
          BandType = 3
          GroupNo = 3
        end
        object ppLabel38: TppLabel
          UserName = 'Label38'
          Caption = 'Monto Pagado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 82021
          mmTop = 6615
          mmWidth = 18521
          BandType = 3
          GroupNo = 3
        end
        object ppLabel39: TppLabel
          UserName = 'Label39'
          Caption = 'Amortizaci'#243'n '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 106363
          mmTop = 6615
          mmWidth = 16933
          BandType = 3
          GroupNo = 3
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          Caption = 'Intereses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 127794
          mmTop = 6615
          mmWidth = 11377
          BandType = 3
          GroupNo = 3
        end
        object ppLabel41: TppLabel
          UserName = 'Label401'
          Caption = 'Gastos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 160602
          mmTop = 6615
          mmWidth = 9790
          BandType = 3
          GroupNo = 3
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          Caption = 'Excesos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 174890
          mmTop = 6615
          mmWidth = 12171
          BandType = 3
          GroupNo = 3
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Movim'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 190765
          mmTop = 6615
          mmWidth = 8731
          BandType = 3
          GroupNo = 3
        end
        object ppLabel52: TppLabel
          UserName = 'Label502'
          Caption = ': '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 28575
          mmTop = 0
          mmWidth = 2646
          BandType = 3
          GroupNo = 3
        end
        object ppLabel85: TppLabel
          UserName = 'Label402'
          Caption = 'Desgrav'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 143404
          mmTop = 6615
          mmWidth = 10583
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 1058
          mmWidth = 201877
          BandType = 5
          GroupNo = 3
        end
        object ppLabel31: TppLabel
          UserName = 'Label301'
          Caption = 'Total por Documento  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 44186
          mmTop = 2381
          mmWidth = 26670
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 74465
          mmTop = 2381
          mmWidth = 26077
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          AutoSize = True
          DataField = 'CREAMORT'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 99420
          mmTop = 2381
          mmWidth = 23876
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          AutoSize = True
          DataField = 'CREINTERES'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 113929
          mmTop = 2381
          mmWidth = 26035
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          AutoSize = True
          DataField = 'CREFLAT'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 149945
          mmTop = 2381
          mmWidth = 20447
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          AutoSize = True
          DataField = 'CREMTOEXC'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 161365
          mmTop = 2381
          mmWidth = 25696
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          AutoSize = True
          DataField = 'MOVIM'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 182182
          mmTop = 2381
          mmWidth = 17314
          BandType = 5
          GroupNo = 3
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = ': '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 76200
          mmTop = 2381
          mmWidth = 2646
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc54: TppDBCalc
          UserName = 'DBCalc54'
          AutoSize = True
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DataRep
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DataRep'
          mmHeight = 3260
          mmLeft = 121190
          mmTop = 2381
          mmWidth = 34121
          BandType = 5
          GroupNo = 3
        end
      end
    end
  end
  object RpDistribucion: TppReport
    AutoStop = False
    DataPipeline = DbDistribucion
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
    Template.FileName = 'D:\RpDistribucion_ini.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 408
    Top = 440
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbDistribucion'
    object ppHeaderBand8: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26988
      mmPrintPosition = 0
      object ppLabel119: TppLabel
        UserName = 'Label47'
        Caption = 'Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 24871
        mmTop = 10583
        mmWidth = 13631
        BandType = 0
      end
      object TituDis01: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 
          'COBRANZA EFECTUADA DEL XX/XX/XXXX AL XX/XX/XXXX - FONDO SOLIDARI' +
          'O DE CONTINGENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 14817
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label84'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label85'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label501'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable22: TppSystemVariable
        UserName = 'SystemVariable13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180975
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable23: TppSystemVariable
        UserName = 'SystemVariable14'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180711
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable24: TppSystemVariable
        UserName = 'SystemVariable15'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 181505
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label87'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label88'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label89'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object TituDis02: TppLabel
        UserName = 'Label113'
        AutoSize = False
        Caption = 'DETALLES AMORTIZACION + INTERES + GASTO '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 19315
        mmWidth = 198438
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 26723
        mmWidth = 196850
        BandType = 0
      end
      object ppltipoaso3: TppLabel
        UserName = 'ltipaso1'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 22754
        mmWidth = 64823
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D6167650A160000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002D00FE03012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FAF3
          F6C5FF0083826F3E1FFC5FD4BC2FF0ABC29A56BD63A1DC1B6BBD6B55B86486EE
          55E1C4089C95078DC7AF6AF3AD2FFE0E13F8B97DF7FC13E055FA4F3FF8D7E6CA
          6B3E54F3CB2C8A88AC59DDDB0179EA49AF46FD983C129FB48FC49FF846B4DD76
          D2C651A75DEA66E76F9A02DBC46429B473F36319ED5FD134B84725C361FF0079
          453515AC9DDBF36ECFF23F38C6663984EA5A9D469B7A2563F41B46FF0082F0FC
          51D471BFC23E0B5F5C4F37F8D759A27FC169FE22EA78DFE16F092FFBB34BFE35
          F98BE13F88B69702D77DCDBDBCF728AEB03C8370CF415E8BE1AF1E5AC7A80B6F
          B65BFDABB43BC6FF00FF005FB576FF00AA193F5C347F1FF33E1B32CEF398ABD3
          C4C97DDFE47EC17EC77FF05198FE3EF8A63F0D788F4BB7D1B5AB904DA4B6F217
          B7BA23929CF2AD8FCEBEA506BF1A7F621F1334BFB4E7819036376A6838383DEB
          F6578535F9071DE4D85CBF1B05845CB19C6F6E89DEDA1F7FE1D6718EC7E06A2C
          7CB9A509594B66D593D6D6DBB8B9C51B853257D88CD83F28CFD6BE68FD827FE0
          A61A0FEDEDE33F881A368FE19D6B4093E1FDEFD8AE25BE7465BB3B99729B7A0F
          97BD7C9D1C0622B51A988A51BC29DB99F6BBB2FBD9F735717469D58519BB4A77
          B2EF6DCFA6BAD2D3776051BF8AE43A0751499A4DFCF7A00751499A0B6280168A
          4DD407CD002D149BA93CCA0075149B851BA80168A4DD41602801690B60D217E2
          B0BE24F8C64F87DE00D635C8749D4F5D974AB492E574ED3A3F32EEF4A8C88E25
          EEE7A01EA69C62E52518EEC4DA4AECDEDD466B27C15E237F18783B4AD59F4FBE
          D2A4D4ED22BB6B2BC4D973685D0379722F675CE08F506B1FE2FF00C6EF0DFC08
          D0B4FD4FC4F7DFD9F67AA6A76DA3DB3F96CFE65D4EDB224C01DCF7E9571A3525
          53D9455E5B596BA90EAC230F692765BDCEBE8A6B360FF5A5DE2B3340CD1B8532
          47C21E0F1CE3D6B93F823F1427F8C1E01835CB9F0DEBFE149269A684E9DACC02
          1BB8C46E5039504FCAD8DCBEC455AA72707516CACBEFBFF913CE94B93A9D7E69
          41A8E49362938E833F5AE33F675F8DF67FB457C27B4F1658D95D69F6D777B7F6
          4B05C106456B4BD9ED189C7186680B0F6614D529BA6EAA5EEA693F577B7E4FEE
          25D5829AA6DEAD37F256BFE68FE74FF674B0F0FF00C36FD9DFE207C72F10E81A
          5F8D6EFC2BE20B1F09F86341D4C17D31752BA05FEDB7B18FF5891A8F9109C16A
          F7CFD8EBF6CA9BE397C5DD574BF1BF843C167C549E14D54787BC43A168D1E977
          1A5C9E415749522C2490153C6E0769C57C71FB3FFED147E0AEA5E26D2B57F0EE
          9FE3CF877E39812C7C5BE12BF95A18B5348DB7437104A3986EA22494907AF35D
          FEA1FB4B7807C05F0FB59F0F7C16F87DAFF82EEFC588969AD789BC4DAE1D5B57
          160AEAED61687810A3EDDACFF788AFE90C5E0A559CE33839397C32BAB455926B
          7BAB3BB6927CD7F92F949C392D24ED6DD77FEBF03E88F1A7C5AB0FD92FE38E93
          F02F44F03780F55F875A6D96896BADC7A9696971A9F8926BE85249EE64BB3FBC
          8E405FF77B08DB815DCC5F18746B1FDB3EDFE01C7F0FBC10BF0A2E7C483C282C
          3EC00EA71EF185BD17A7F7BF6856F9B39C76C57C83F1CFF6918FE3D7ED517BF1
          322D1E4D1E0BE9B4B9134A7943B442C6344DBB871F3ECE3D335D227ED2EB7FFB
          655A7C5DFECA9521B6F152789BFB244A0C8C14E7C90FD33EF531CB252A6A538F
          BFECDDF5FF009796567BFC57BDA5F8DAC7818A493693D39974FB1ADD6DB5ADA7
          E07BF7EC559F0B7EDD3E1FD00DCBDDAE85E2E9B4B49DFEFCC9148CAACDEF8033
          5FB15FB51FC6D87F66FF00D9EBC61E399E0FB4AF8674B9AF561ED2BAA9D8A7D8
          B6335F885FB1078D078B7FE0A11E17D5821B7FF8487C5F2EA6B096C9804CECFE
          593DC8CE335FB9FF001D3E10E9BF1F7E107893C17AC06FECEF12D84B613B28F9
          A30EA4061EE0E08FA57C07882E9ACC70AF12BDDE55CDE9CDA9DDC21859D1C1E2
          63434936F97D79743F2EBF625F83DFB537EDEDE02BCF8FB1FC74D47C2FA94B79
          3CBE1DD084465D3AEBCB27F752C790AB093F20F958F049AF16FF008279FED59E
          21FD8DBF679FDAABE232D9DA9F1843ABDA69CB0EDCC10EA33C922B36DEE8AD92
          07D2BDFF00F66CFD92FF006DCFD8AEC354F83BE079BC1B7DE04D52EE4FB0F8A6
          FA5DC7448A4E1E748BEF6EC73E59CFCDC8AABFB21FFC1153E21B7C02F8FBF0E3
          E24496FA5A78E2E6DAEB45D663BA1706E6EE06665B9911790198F23AE1BDABE8
          EAE6597463898E2AAD174252A5C91824A5ECD4D369D926ECB74EEF7D933C0A59
          7E35BA32C3D3AAAB28D4E6726EDCEE364D5DF57B3D3A1E01E24FDA57C55E01F8
          256DF16B4DFDB2C6B5F176031EA57DE0A7918DB3A3364DB2AFDC6650795DA063
          D2BD0FF6C1FF0082997C59F1E7C52FD9C3C5FF000CB56D4EDAFBC6BA043249E1
          BB798FD82FF52333C4CAE9FC49BBD7B0AEF7C0BFB3BFED93F0E3C23A67C3CD3F
          E10FC0DB8BED1F659DAF8EAF6CADE7616CA7019D0AFCE76E7A8DDCFAD7A8FED2
          FF00F04F7F899E37FDBB3F673F1A68DA0F870E83F0FED2D57C45369D2A59DB45
          70B233CCD0404676127207BD15331CA63898BAFECA56551A7CD06B979348B518
          C524DDB96EF996A8165F98BC3B8D0F691BF25D5A57E6E6D649B6F5B5EF6D3667
          CD3FB6FF008CFF0068DFF827E782FE0FE91ACFC4DD635CF1FF008ABC477DAD6A
          0B6379235BDDEF910C3664B004A29217680140E95EE9E36F03FC66F809FB1178
          A355F8C7FB47699F0CFC5FE3BF13DB6AD16A866795B4FB4D99934F863DA0EE19
          E163E38E4D77FF00F0575FD86BE23FED5BFB417C0FD7BC13A5596A1A6782F53F
          B4EAAF35E2C0604F3A36C8047CDC29E949FF0005A6FF00827C78FF00F6B5D6BE
          1AF8DFE1F41A5788752F87378D3CBE1CD4E4096FA8A332B6E19F949057054F50
          78AF1F0F9CE0F130C0D3AB2A70751CE5525CB1BA6A5784754D453D3756B5BA1E
          AD5CAB1346AE2AA414E4A0A2A0AEECEEAD27A59B6BC8F8CFE16FEDD7E2BFD983
          F6ACF86CDE15FDA3352F8E7E0EF16EA7169DAC69FA9DA4D6D35B2C922A6E31CB
          92BF7B2AEA79C1AEFBC1BE29FDA0FF0069BFF82A67ED03F097C23F18757F0BE8
          56D73701A6B926E46956A186C4B54C8D8E49C160460574DFB487EC61FB4DFED8
          FF00147E11F8BB58F863F0EFC13A6F84B58826974AD26F505D5BC492C4CF2CB2
          63E61843B631F771EF5ECFFB177EC35F11FE0F7FC15A7E38FC53D7B4AB3B6F05
          F8D049FD937697AB2493EE9148CC60657807AD7A18DCCF2DA7879E260E97B7F6
          52D3F772F79548F2FC315172B5F68EDDD23870397E36A555879F3AA5ED236F8E
          3EEB8BBDAEDC92BF99F24FEC8577FB4E7C77F8E5E3FF00D9917E355FE8D6DE14
          B896E753F11BEEBAD42358D822C3039218239209190473CD7A87FC12DFF68BF8
          A3E14F897FB40FC16F88BF1224993C07A5DD4B6DE24D42E0483459A33E5F9C24
          7E7CBF995B0D9C11C57B27EC2DFB0C7C48F829FF000546F8CFF133C43A4D95AF
          847C60251A5DD25E2C924DBA456198C0CAF00F5AF1EF15FF00C122BE2CFC54F8
          DBFB52493C7A7E83A47C4F85A4D0350FB687FB5489711CA90C8ABCA2B852093D
          2B3C566B9662AA56C2D59528D394294AEA31D2A371E76ADAB695EEBB2B771E1F
          2DCC30D0A55E9C6A4A71954567296B0B3E55E49F47E67CE9F14BF686F127C2EF
          065E78AFC1FF00B6E6A9E3AF1C683324B2E8E6CAE20B0D430DF32412BE63971F
          DDC0C8AFD81FD8F7F684BDFDA47F62BF09FC42BF8D6CF53D734337774B12E152
          65560C547D549C7BD7E790FD8D3F6A5F1E7EC0F37C0DFF008549F0CBC2F6DE1F
          B5588EB4D771BDE6B9B5F21610062390F794F61EF5F7A7EC09F037C49F02FF00
          605F07F817C47690DA789349D164B3B9B749C4AA921DF81BC707EF0AF238CAB6
          02AE0A1C9283AB1AAD27174DB70B6EFD9C62AD7E8EED6CD9E9F0BD1C653C649C
          A3254E54EFAA95B9EFB7BCE4EE975D2FD8F1DFD903E187C4EFDB2FF66BF0EFC4
          0F13FC62F16E85AADC0B83A343A1F950DBC71C77122C72DD2329F3E46D837024
          2E3803BD5BFD9AFC33F10FF6FEF87B71E2EF177C48F12F834E91A8DDE87A7587
          84A54B385E5B494C2F7B31656691A464DC233F22838C1AF6CFF827AFC1ED7BE0
          1FEC79E0CF08F89ADA1B4D73478278EEA28A612AA96B895C618707E56155FF00
          E09F7F053C43F01BE045DE87E26B68AD75197C47AAEA2A91CC250619EEE49223
          91DCAB0E3B57CF63B358C5E2654793DDA8953B463A45B95F974DB48EBFE6EFEC
          6132C6D61E3554BDE85E7794B59251B5F5F37FD23CE21F8FBAADEFECBBE21B5F
          1F7C4F8BE1E6B1E0EF134BE19BFF00135A5AC6D36AA2361B3C98D81027955870
          8A4820902BCCFE1EFED55A57C0DF8A3E108BC31F163C73E3BD2BC4DACC7A46AB
          A0F8BEC245B854911B1776B33C519050A8DC992181E82BB1F1A7ECB7E3EF0CFC
          4EB6F88565E12D1FC5ADE16F1BEABAC47E1FB9B9557D42CEEE2545BA81986C4B
          98F076AB8E464020E2B43E2AE9DF167F6B6F127802687E17C3E0AF0B785FC536
          3ABEA2359BC88EA77C9139DC2344042200727272DD0577D1FA959AF75D39DDCB
          DEA6945DB6B34E4FA356692BD95ACCE1ABF5AD1FBCA71B25A4DB6AFBDD3E55D9
          DD36ED777BA2D7C30F0578CBF6FED027F1FEABF123C55E09F0B5DDF5C45E19D1
          3C2F3A5A18ADA295A259EEA564669657285B6F08A081835CBFC45F8ABF17BE05
          6A9F197C3FAB78B975987C21F0DDB58F0EEAE2DD22B99E5F3197CD9D00DBE6AE
          02E5400DD702B6FE1A687E3BF82DE2BF15E95F047C5DF0E3C6BE067D4EE67FEC
          1D7EF248AEFC237AEE5A6811E33936E5D8B047195C900E2BCE744F849E30F8D9
          E3FF00DA0A1FF848E0F1EF8BB59F00C7A0DEDD59E20D12CB5176764B0B53CE02
          27DF2C4B648CF3554234DD59BA8E1EC572B8C5C55E29CA3BE89A76D24DBF79ED
          7DC556535082829FB577E6926ED27CB2DB5B357D925EEF96C68FC54F8F7AD6BD
          E24F87BA5FC4CF887E25F857F0EB56F03E99AB5A789B49C4035DD5E48D4CF15C
          5D6C61005055950ED0FB8F2718ACFF00F8282FC28D5B54FD957E17CFFF000B83
          5BF175947F10F4A8EC355B436FFE996F34C163695A305659222A4AB8C727906B
          DBE6D4FE277C1CF02785FC2F7DF0974DF889E0BB4F0BE9F652C7657D19BEB5BD
          8A058E68E58661E5C91E47CAC98C77AF216FD80FC79AAFECF1E2E9F49D234EF0
          B5DDF78EAC3C73E1DF017DAC359E98968CA5EDBCE1F2C725C619DB68D8ACC38E
          B5A60B15429D4A55B9A34D464AD6706A5776BEDCD1767795FDDD3A6889C561AA
          D4854A5CB29B945DF49A6AC93B6FCB257568DB5F5D59D4FC77F88B7FFB2C78A3
          44F86175F19F55D366F1DBDCEB17BE2EF1349034DA358C2154C169F22C7E6BB1
          C296076F27078AE634AFDA7BC3BFB2FF00C48F0837843E39CFF163C33E2BD660
          D0F57D0B54D463D4750B3967CAC7796AE8A1C00F8F31082B83918AEFBE28FC39
          F1B7ED09ABF863E2C41F0B6DB4EF16782DA7D366F0A7896EA19935DD3A6DA651
          1C80148A5561B918820E39EB5B1F0E5FC5BE3DF897A1FF00647C03F0FF00C3AD
          22CAE19F57D5B5C4B7376230A711D9C708C972D8FDE31DA076CD7342A61D61D7
          B54A4ECFDA2E6A69736BE4DED6E570BEBB6B735953AEEBFEEDB4AEB91F2D46F9
          74F3B6F7E6E6D6DBE9639DFD956C3E2D7ED5FA65BEB3E27F1CEA7E1AF0BF84FC
          49790DB5BE92B1ADDF8A0DBDE4986B994A9DB6F802311A004ED24B5637C3FF00
          DA36FF00E24FEC33A4F893C75F16EEBE1F5D6ADE21D46CE4BEB0B68DEFAFD12E
          6548ED6D94AB1DC154728A4802BE84FD8ABE16EB5F073E0059E85E20823B7D4A
          1D43509D9125128092DE4D227CC3B94753F8D7CC7F073F64DF895FB38786BE1B
          78AE5F05E99E31D47C1726B56B7DA02DDA7DA618AF2EDE68EEED5D86C3285C2B
          29192A700D650C4616B56AD16E11519AE4B282BA4AA6CDA6BDE7CB76EE95D792
          35950C452A349FBCDCA0F9EFCCECDB86E93BFBAAFA2B3767E643F03FF6A9B6F8
          61FB477803C29E19F89DE2DF88FE1CF8837573A6DEE93E2BB378B53D266485A5
          4BB82568A32D09DBB590EEEB90457BFF00FC131C6DFD8E7471E9AF788BFF004F
          DA8579BF8CBC1BF163F6A2F8F7F087C5573F0F6D7C11E0EF03F881EFEE6D6FAF
          637D62E4B5BC91ACA420DA91296E5325989CF4AF6CFD87FE156B5F05BF672D3F
          C3DE20B78ADB54B7D5B59BA78E29448A23B8D5AF2E623B87AC52A13E84E3B563
          9ED4C3BC1250B2A8DC1C929464EEBDAEEE292BD9C6F65DAEEE6B92D3AEB17795
          DC12928B6A496BECB6E66DEE9DB5EF6D0FE5FF00E3FF00C1EF10FECBFF001CFC
          43E05F18594FA5EB7A0DDBC2E2742897299F9268C9E1A3718208F5AC4B2D7222
          07EF973EBBBAD7F575F183F662F877FB403DB378DBC17E1BF143D9FF00A87D4A
          C239DE2F60C4671ED5C72FFC1377E02274F845E021FF007088BFC2BEB30FE265
          154E2AB517CDD6CD5BE47B7572FE67A33F995D2FC431671E627A7DEE95D0E97A
          FC636FEF508EFF00374AFE9317FE09CFF021071F09BC0A39CFFC8262FF000A95
          7FE09E5F035071F0A7C0E3FEE1517F856FFF00113B08BFE5CCBEF479B5B2194F
          6923F17BFE0923F0AB5EF8D9FB70782DF45B39A7D3FC3578353D56F153F73670
          A038DCDD3731E00EF5FD01819AE7BE1A7C20F0B7C1BD10E9BE14F0FE91E1EB16
          6DCD0D85AAC0AC7D4ED1CFE35D1D7E7DC51C42F37C52ACA3CB18AB25D7BEA7A5
          95E5CB074DC2F76DDC685C0ED4B8E6968AF9A3D313148569D4500342F1FE78A3
          653A8A00685F7A31914EA2801A17346DE29D4500376E68C1A751400DD9C51B48
          A751400C286948269D45007937C4BFD87FE157C5CF12CBAD6B9E0DD366D5AE0A
          99EF2D9E4B39AE369C8F31A164DFFF0002CD76FF000DBE16F87BE0FF0085A0D0
          FC31A3D8687A55B92C96D6916C5DC792C4F5663DC9C93EB5D1515D3531988A94
          D52A936E2B64DB697C8E786128426EAC20949EED257FBC40B8A4DBCD3A8AE63A
          04228DB4B450037CBA36E3BD3A8A0066CE69FD28A2803FFFD9}
        mmHeight = 10583
        mmLeft = 0
        mmTop = 0
        mmWidth = 72231
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText43: TppDBText
        UserName = 'DBText20'
        AutoSize = True
        DataField = 'CREAMORT'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 121444
        mmTop = 794
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'CREFPAG'
        DataPipeline = DbDistribucion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3704
        mmLeft = 15610
        mmTop = 794
        mmWidth = 16403
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText205'
        AutoSize = True
        DataField = 'CREINTERES'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 137319
        mmTop = 794
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText206'
        AutoSize = True
        DataField = 'CREFLAT'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 169334
        mmTop = 794
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 185209
        mmTop = 794
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'CREDID'
        DataPipeline = DbDistribucion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 83079
        mmTop = 794
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'CRECUOTA'
        DataPipeline = DbDistribucion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 112713
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREDOCPAG'
        DataPipeline = DbDistribucion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3704
        mmLeft = 51594
        mmTop = 794
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        AutoSize = True
        DataField = 'MONCOBDESGRAV'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 153459
        mmTop = 794
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'EXT'
        DataPipeline = DbDistribucion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3704
        mmLeft = 71702
        mmTop = 794
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        DataField = 'FEC_REG'
        DataPipeline = DbDistribucion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3704
        mmLeft = 33602
        mmTop = 794
        mmWidth = 16403
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        DataField = 'DESC_ABR_FORPAGO'
        DataPipeline = DbDistribucion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 794
        mmWidth = 9525
        BandType = 4
      end
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand8: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 32544
      mmPrintPosition = 0
      object ppLabel140: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 153459
        mmTop = 8467
        mmWidth = 15610
        BandType = 7
      end
      object ppLabel141: TppLabel
        UserName = 'Label57'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 170392
        mmTop = 8467
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc35: TppDBCalc
        UserName = 'DBCalc9'
        AutoSize = True
        DataField = 'CREFPAG'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3810
        mmLeft = 172467
        mmTop = 8467
        mmWidth = 27559
        BandType = 7
      end
      object ppLine39: TppLine
        UserName = 'Line27'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 4498
        mmTop = 265
        mmWidth = 196850
        BandType = 7
      end
      object ppLine40: TppLine
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 4498
        mmTop = 13494
        mmWidth = 196850
        BandType = 7
      end
      object ppDBCalc36: TppDBCalc
        UserName = 'DBCalc34'
        AutoSize = True
        DataField = 'CREAMORT'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 121444
        mmTop = 1323
        mmWidth = 15080
        BandType = 7
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc35'
        AutoSize = True
        DataField = 'CREINTERES'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 137319
        mmTop = 1323
        mmWidth = 15080
        BandType = 7
      end
      object ppDBCalc38: TppDBCalc
        UserName = 'DBCalc36'
        AutoSize = True
        DataField = 'CREFLAT'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 169334
        mmTop = 1323
        mmWidth = 15080
        BandType = 7
      end
      object ppDBCalc39: TppDBCalc
        UserName = 'DBCalc37'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 185209
        mmTop = 1323
        mmWidth = 15080
        BandType = 7
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        AutoSize = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 78052
        mmTop = 1323
        mmWidth = 15610
        BandType = 7
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 94986
        mmTop = 1323
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc53: TppDBCalc
        UserName = 'DBCalc53'
        AutoSize = True
        DataField = 'MONCOBDESGRAV'
        DataPipeline = DbDistribucion
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDistribucion'
        mmHeight = 3703
        mmLeft = 153459
        mmTop = 1323
        mmWidth = 15080
        BandType = 7
      end
      object pplUsuario2: TppLabel
        UserName = 'lUsuario2'
        Caption = 'lUsuario2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 4763
        mmTop = 16404
        mmWidth = 14817
        BandType = 7
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'PERIODO'
      DataPipeline = DbDistribucion
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbDistribucion'
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBText47: TppDBText
          UserName = 'DBText402'
          DataField = 'MESANO'
          DataPipeline = DbDistribucion
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3704
          mmLeft = 6085
          mmTop = 1588
          mmWidth = 26988
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 14288
        mmPrintPosition = 0
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc24'
          AutoSize = True
          DataField = 'CREAMORT'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 121444
          mmTop = 2646
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc25'
          AutoSize = True
          DataField = 'CREINTERES'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 137319
          mmTop = 2646
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc42: TppDBCalc
          UserName = 'DBCalc26'
          AutoSize = True
          DataField = 'CREFLAT'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 169334
          mmTop = 2646
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc43: TppDBCalc
          UserName = 'DBCalc27'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 185209
          mmTop = 2646
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
        object ppLabel142: TppLabel
          UserName = 'Label142'
          AutoSize = False
          Caption = 'Cantidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 153459
          mmTop = 7938
          mmWidth = 15610
          BandType = 5
          GroupNo = 0
        end
        object ppLabel143: TppLabel
          UserName = 'Label143'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 170392
          mmTop = 7938
          mmWidth = 4498
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc44: TppDBCalc
          UserName = 'DBCalc32'
          AutoSize = True
          DataField = 'CREFPAG'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3810
          mmLeft = 172466
          mmTop = 7938
          mmWidth = 27559
          BandType = 5
          GroupNo = 0
        end
        object ppLine41: TppLine
          UserName = 'Line41'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 4498
          mmTop = 1058
          mmWidth = 196850
          BandType = 5
          GroupNo = 0
        end
        object ppLine42: TppLine
          UserName = 'Line42'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 4498
          mmTop = 13229
          mmWidth = 196850
          BandType = 5
          GroupNo = 0
        end
        object ppLabel148: TppLabel
          UserName = 'Label148'
          AutoSize = False
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 78052
          mmTop = 2646
          mmWidth = 15610
          BandType = 5
          GroupNo = 0
        end
        object ppLabel149: TppLabel
          UserName = 'Label149'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 94986
          mmTop = 2646
          mmWidth = 4498
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc52: TppDBCalc
          UserName = 'DBCalc52'
          AutoSize = True
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 153459
          mmTop = 2646
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'ASOAPENOM'
      DataPipeline = DbDistribucion
      OutlineSettings.CreateNode = True
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbDistribucion'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppDBText44: TppDBText
          UserName = 'DBText40'
          DataField = 'ASOAPENOM'
          DataPipeline = DbDistribucion
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3704
          mmLeft = 50800
          mmTop = 4763
          mmWidth = 73554
          BandType = 3
          GroupNo = 1
        end
        object ppDBText45: TppDBText
          UserName = 'DBText401'
          DataField = 'USEID'
          DataPipeline = DbDistribucion
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3704
          mmLeft = 22225
          mmTop = 4763
          mmWidth = 7144
          BandType = 3
          GroupNo = 1
        end
        object ppDBText48: TppDBText
          UserName = 'DBText48'
          DataField = 'ASOCODMOD'
          DataPipeline = DbDistribucion
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 30427
          mmTop = 4763
          mmWidth = 19050
          BandType = 3
          GroupNo = 1
        end
        object ppLabel128: TppLabel
          UserName = 'Label77'
          Caption = 'Inter'#233's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4234
          mmLeft = 143934
          mmTop = 8731
          mmWidth = 8731
          BandType = 3
          GroupNo = 1
        end
        object ppLabel152: TppLabel
          UserName = 'Label152'
          Caption = 'Gasto/Flat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 173567
          mmTop = 8731
          mmWidth = 13229
          BandType = 3
          GroupNo = 1
        end
        object ppLabel153: TppLabel
          UserName = 'Label153'
          Caption = 'Monto Pagado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 190500
          mmTop = 5027
          mmWidth = 9790
          BandType = 3
          GroupNo = 1
        end
        object ppLabel138: TppLabel
          UserName = 'Label1'
          Caption = 'Amort.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4234
          mmLeft = 128323
          mmTop = 8731
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel154: TppLabel
          UserName = 'Label154'
          Caption = 'Apellidos y Nombres '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 3175
          mmLeft = 50800
          mmTop = 1058
          mmWidth = 26723
          BandType = 3
          GroupNo = 1
        end
        object ppLabel155: TppLabel
          UserName = 'Label155'
          Caption = 'Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 3440
          mmLeft = 22225
          mmTop = 794
          mmWidth = 5821
          BandType = 3
          GroupNo = 1
        end
        object ppLabel156: TppLabel
          UserName = 'Label156'
          Caption = 'Cod.Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 3175
          mmLeft = 30427
          mmTop = 1058
          mmWidth = 16140
          BandType = 3
          GroupNo = 1
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          Caption = 'Fec.Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 17727
          mmTop = 8731
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          Caption = 'Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 51594
          mmTop = 8731
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
        end
        object ppLabel61: TppLabel
          UserName = 'Label601'
          Caption = 'N'#176' de Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 83079
          mmTop = 8731
          mmWidth = 16933
          BandType = 3
          GroupNo = 1
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4234
          mmLeft = 113506
          mmTop = 8731
          mmWidth = 7408
          BandType = 3
          GroupNo = 1
        end
        object ppLabel82: TppLabel
          UserName = 'Label82'
          Caption = 'Upro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 3175
          mmLeft = 5821
          mmTop = 794
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
        end
        object ppLabel83: TppLabel
          UserName = 'Label83'
          Caption = 'Upag'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 3175
          mmLeft = 14023
          mmTop = 794
          mmWidth = 6615
          BandType = 3
          GroupNo = 1
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'Uproid'
          DataPipeline = DbDistribucion
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 5821
          mmTop = 4763
          mmWidth = 7145
          BandType = 3
          GroupNo = 1
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'Upagoid'
          DataPipeline = DbDistribucion
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3704
          mmLeft = 14023
          mmTop = 4763
          mmWidth = 7144
          BandType = 3
          GroupNo = 1
        end
        object ppLabel84: TppLabel
          UserName = 'Label2'
          Caption = 'Desgrav'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4234
          mmLeft = 157957
          mmTop = 8731
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
        object ppLabel106: TppLabel
          UserName = 'Label602'
          Caption = 'F:Registro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 33602
          mmTop = 8731
          mmWidth = 12965
          BandType = 3
          GroupNo = 1
        end
        object ppLabel107: TppLabel
          UserName = 'Label107'
          Caption = 'For.Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 8731
          mmWidth = 11377
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 12700
        mmPrintPosition = 0
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc28'
          AutoSize = True
          DataField = 'CREAMORT'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 121444
          mmTop = 2117
          mmWidth = 15080
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc46: TppDBCalc
          UserName = 'DBCalc29'
          AutoSize = True
          DataField = 'CREINTERES'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 137319
          mmTop = 2117
          mmWidth = 15080
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc47: TppDBCalc
          UserName = 'DBCalc30'
          AutoSize = True
          DataField = 'CREFLAT'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 169334
          mmTop = 2117
          mmWidth = 15080
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc48: TppDBCalc
          UserName = 'DBCalc31'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 185209
          mmTop = 2117
          mmWidth = 15080
          BandType = 5
          GroupNo = 1
        end
        object ppLabel144: TppLabel
          UserName = 'Label144'
          AutoSize = False
          Caption = 'Cantidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 153459
          mmTop = 6879
          mmWidth = 15610
          BandType = 5
          GroupNo = 1
        end
        object ppLabel145: TppLabel
          UserName = 'Label145'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 170392
          mmTop = 6879
          mmWidth = 4498
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc49: TppDBCalc
          UserName = 'DBCalc33'
          AutoSize = True
          DataField = 'CREFPAG'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3810
          mmLeft = 172467
          mmTop = 6879
          mmWidth = 27559
          BandType = 5
          GroupNo = 1
        end
        object ppLine43: TppLine
          UserName = 'Line43'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 4498
          mmTop = 529
          mmWidth = 196850
          BandType = 5
          GroupNo = 1
        end
        object ppLine44: TppLine
          UserName = 'Line44'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 4498
          mmTop = 11113
          mmWidth = 196850
          BandType = 5
          GroupNo = 1
        end
        object ppLabel150: TppLabel
          UserName = 'Label150'
          AutoSize = False
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 77788
          mmTop = 2117
          mmWidth = 15610
          BandType = 5
          GroupNo = 1
        end
        object ppLabel151: TppLabel
          UserName = 'Label151'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 94721
          mmTop = 2117
          mmWidth = 4498
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc51: TppDBCalc
          UserName = 'DBCalc51'
          AutoSize = True
          DataField = 'MONCOBDESGRAV'
          DataPipeline = DbDistribucion
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDistribucion'
          mmHeight = 3703
          mmLeft = 153459
          mmTop = 2117
          mmWidth = 15080
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object DbDistribucion: TppDBPipeline
    DataSource = DM1.dsFPago
    UserName = 'dbResumen1'
    Left = 376
    Top = 440
  end
  object ppDBRefPago: TppDBPipeline
    DataSource = DM1.dsFPago
    UserName = 'DBRefPago'
    Left = 148
    Top = 440
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
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 220
    Top = 439
  end
  object ppRepfPagos: TppReport
    AutoStop = False
    DataPipeline = ppDBRefPago
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
    Template.FileName = 'D:\DESARROLLO\Front\COBRANZAS\RepfPagos.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 184
    Top = 440
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRefPago'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label102'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 4498
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label103'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164307
        mmTop = 8996
        mmWidth = 5080
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 4498
        mmWidth = 19315
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 176742
        mmTop = 9260
        mmWidth = 2910
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 
          'COBRANZA EFECTUADA DEL 01/04/2009 AL 30/04/2009-PLANILLA MINISTE' +
          'RIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 16140
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label20'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 172773
        mmTop = 0
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label201'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 172773
        mmTop = 4498
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label202'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 172773
        mmTop = 9260
        mmWidth = 2646
        BandType = 0
      end
      object ppLblUser: TppLabel
        UserName = 'Label104'
        AutoSize = False
        Caption = 'USUARIOS EN GENERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 20638
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label15'
        Caption = 
          '"El tipo Asociado Corresponde a la situaci'#243'n del mismo al moment' +
          'o del otorgamiento del cr'#233'dito"'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 25135
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label27'
        Caption = 'Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 24342
        mmTop = 10583
        mmWidth = 16669
        BandType = 0
      end
      object ppImage3: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D6167650A160000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002D00FE03012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FAF3
          F6C5FF0083826F3E1FFC5FD4BC2FF0ABC29A56BD63A1DC1B6BBD6B55B86486EE
          55E1C4089C95078DC7AF6AF3AD2FFE0E13F8B97DF7FC13E055FA4F3FF8D7E6CA
          6B3E54F3CB2C8A88AC59DDDB0179EA49AF46FD983C129FB48FC49FF846B4DD76
          D2C651A75DEA66E76F9A02DBC46429B473F36319ED5FD134B84725C361FF0079
          453515AC9DDBF36ECFF23F38C6663984EA5A9D469B7A2563F41B46FF0082F0FC
          51D471BFC23E0B5F5C4F37F8D759A27FC169FE22EA78DFE16F092FFBB34BFE35
          F98BE13F88B69702D77DCDBDBCF728AEB03C8370CF415E8BE1AF1E5AC7A80B6F
          B65BFDABB43BC6FF00FF005FB576FF00AA193F5C347F1FF33E1B32CEF398ABD3
          C4C97DDFE47EC17EC77FF05198FE3EF8A63F0D788F4BB7D1B5AB904DA4B6F217
          B7BA23929CF2AD8FCEBEA506BF1A7F621F1334BFB4E7819036376A6838383DEB
          F6578535F9071DE4D85CBF1B05845CB19C6F6E89DEDA1F7FE1D6718EC7E06A2C
          7CB9A509594B66D593D6D6DBB8B9C51B853257D88CD83F28CFD6BE68FD827FE0
          A61A0FEDEDE33F881A368FE19D6B4093E1FDEFD8AE25BE7465BB3B99729B7A0F
          97BD7C9D1C0622B51A988A51BC29DB99F6BBB2FBD9F735717469D58519BB4A77
          B2EF6DCFA6BAD2D3776051BF8AE43A0751499A4DFCF7A00751499A0B6280168A
          4DD407CD002D149BA93CCA0075149B851BA80168A4DD41602801690B60D217E2
          B0BE24F8C64F87DE00D635C8749D4F5D974AB492E574ED3A3F32EEF4A8C88E25
          EEE7A01EA69C62E52518EEC4DA4AECDEDD466B27C15E237F18783B4AD59F4FBE
          D2A4D4ED22BB6B2BC4D973685D0379722F675CE08F506B1FE2FF00C6EF0DFC08
          D0B4FD4FC4F7DFD9F67AA6A76DA3DB3F96CFE65D4EDB224C01DCF7E9571A3525
          53D9455E5B596BA90EAC230F692765BDCEBE8A6B360FF5A5DE2B3340CD1B8532
          47C21E0F1CE3D6B93F823F1427F8C1E01835CB9F0DEBFE149269A684E9DACC02
          1BB8C46E5039504FCAD8DCBEC455AA72707516CACBEFBFF913CE94B93A9D7E69
          41A8E49362938E833F5AE33F675F8DF67FB457C27B4F1658D95D69F6D777B7F6
          4B05C106456B4BD9ED189C7186680B0F6614D529BA6EAA5EEA693F577B7E4FEE
          25D5829AA6DEAD37F256BFE68FE74FF674B0F0FF00C36FD9DFE207C72F10E81A
          5F8D6EFC2BE20B1F09F86341D4C17D31752BA05FEDB7B18FF5891A8F9109C16A
          F7CFD8EBF6CA9BE397C5DD574BF1BF843C167C549E14D54787BC43A168D1E977
          1A5C9E415749522C2490153C6E0769C57C71FB3FFED147E0AEA5E26D2B57F0EE
          9FE3CF877E39812C7C5BE12BF95A18B5348DB7437104A3986EA22494907AF35D
          FEA1FB4B7807C05F0FB59F0F7C16F87DAFF82EEFC588969AD789BC4DAE1D5B57
          160AEAED61687810A3EDDACFF788AFE90C5E0A559CE33839397C32BAB455926B
          7BAB3BB6927CD7F92F949C392D24ED6DD77FEBF03E88F1A7C5AB0FD92FE38E93
          F02F44F03780F55F875A6D96896BADC7A9696971A9F8926BE85249EE64BB3FBC
          8E405FF77B08DB815DCC5F18746B1FDB3EDFE01C7F0FBC10BF0A2E7C483C282C
          3EC00EA71EF185BD17A7F7BF6856F9B39C76C57C83F1CFF6918FE3D7ED517BF1
          322D1E4D1E0BE9B4B9134A7943B442C6344DBB871F3ECE3D335D227ED2EB7FFB
          655A7C5DFECA9521B6F152789BFB244A0C8C14E7C90FD33EF531CB252A6A538F
          BFECDDF5FF009796567BFC57BDA5F8DAC7818A493693D39974FB1ADD6DB5ADA7
          E07BF7EC559F0B7EDD3E1FD00DCBDDAE85E2E9B4B49DFEFCC9148CAACDEF8033
          5FB15FB51FC6D87F66FF00D9EBC61E399E0FB4AF8674B9AF561ED2BAA9D8A7D8
          B6335F885FB1078D078B7FE0A11E17D5821B7FF8487C5F2EA6B096C9804CECFE
          593DC8CE335FB9FF001D3E10E9BF1F7E107893C17AC06FECEF12D84B613B28F9
          A30EA4061EE0E08FA57C07882E9ACC70AF12BDDE55CDE9CDA9DDC21859D1C1E2
          63434936F97D79743F2EBF625F83DFB537EDEDE02BCF8FB1FC74D47C2FA94B79
          3CBE1DD084465D3AEBCB27F752C790AB093F20F958F049AF16FF008279FED59E
          21FD8DBF679FDAABE232D9DA9F1843ABDA69CB0EDCC10EA33C922B36DEE8AD92
          07D2BDFF00F66CFD92FF006DCFD8AEC354F83BE079BC1B7DE04D52EE4FB0F8A6
          FA5DC7448A4E1E748BEF6EC73E59CFCDC8AABFB21FFC1153E21B7C02F8FBF0E3
          E24496FA5A78E2E6DAEB45D663BA1706E6EE06665B9911790198F23AE1BDABE8
          EAE6597463898E2AAD174252A5C91824A5ECD4D369D926ECB74EEF7D933C0A59
          7E35BA32C3D3AAAB28D4E6726EDCEE364D5DF57B3D3A1E01E24FDA57C55E01F8
          256DF16B4DFDB2C6B5F176031EA57DE0A7918DB3A3364DB2AFDC6650795DA063
          D2BD0FF6C1FF0082997C59F1E7C52FD9C3C5FF000CB56D4EDAFBC6BA043249E1
          BB798FD82FF52333C4CAE9FC49BBD7B0AEF7C0BFB3BFED93F0E3C23A67C3CD3F
          E10FC0DB8BED1F659DAF8EAF6CADE7616CA7019D0AFCE76E7A8DDCFAD7A8FED2
          FF00F04F7F899E37FDBB3F673F1A68DA0F870E83F0FED2D57C45369D2A59DB45
          70B233CCD0404676127207BD15331CA63898BAFECA56551A7CD06B979348B518
          C524DDB96EF996A8165F98BC3B8D0F691BF25D5A57E6E6D649B6F5B5EF6D3667
          CD3FB6FF008CFF0068DFF827E782FE0FE91ACFC4DD635CF1FF008ABC477DAD6A
          0B6379235BDDEF910C3664B004A29217680140E95EE9E36F03FC66F809FB1178
          A355F8C7FB47699F0CFC5FE3BF13DB6AD16A866795B4FB4D99934F863DA0EE19
          E163E38E4D77FF00F0575FD86BE23FED5BFB417C0FD7BC13A5596A1A6782F53F
          B4EAAF35E2C0604F3A36C8047CDC29E949FF0005A6FF00827C78FF00F6B5D6BE
          1AF8DFE1F41A5788752F87378D3CBE1CD4E4096FA8A332B6E19F949057054F50
          78AF1F0F9CE0F130C0D3AB2A70751CE5525CB1BA6A5784754D453D3756B5BA1E
          AD5CAB1346AE2AA414E4A0A2A0AEECEEAD27A59B6BC8F8CFE16FEDD7E2BFD983
          F6ACF86CDE15FDA3352F8E7E0EF16EA7169DAC69FA9DA4D6D35B2C922A6E31CB
          92BF7B2AEA79C1AEFBC1BE29FDA0FF0069BFF82A67ED03F097C23F18757F0BE8
          56D73701A6B926E46956A186C4B54C8D8E49C160460574DFB487EC61FB4DFED8
          FF00147E11F8BB58F863F0EFC13A6F84B58826974AD26F505D5BC492C4CF2CB2
          63E61843B631F771EF5ECFFB177EC35F11FE0F7FC15A7E38FC53D7B4AB3B6F05
          F8D049FD937697AB2493EE9148CC60657807AD7A18DCCF2DA7879E260E97B7F6
          52D3F772F79548F2FC315172B5F68EDDD23870397E36A555879F3AA5ED236F8E
          3EEB8BBDAEDC92BF99F24FEC8577FB4E7C77F8E5E3FF00D9917E355FE8D6DE14
          B896E753F11BEEBAD42358D822C3039218239209190473CD7A87FC12DFF68BF8
          A3E14F897FB40FC16F88BF1224993C07A5DD4B6DE24D42E0483459A33E5F9C24
          7E7CBF995B0D9C11C57B27EC2DFB0C7C48F829FF000546F8CFF133C43A4D95AF
          847C60251A5DD25E2C924DBA456198C0CAF00F5AF1EF15FF00C122BE2CFC54F8
          DBFB52493C7A7E83A47C4F85A4D0350FB687FB5489711CA90C8ABCA2B852093D
          2B3C566B9662AA56C2D59528D394294AEA31D2A371E76ADAB695EEBB2B771E1F
          2DCC30D0A55E9C6A4A71954567296B0B3E55E49F47E67CE9F14BF686F127C2EF
          065E78AFC1FF00B6E6A9E3AF1C683324B2E8E6CAE20B0D430DF32412BE63971F
          DDC0C8AFD81FD8F7F684BDFDA47F62BF09FC42BF8D6CF53D734337774B12E152
          65560C547D549C7BD7E790FD8D3F6A5F1E7EC0F37C0DFF008549F0CBC2F6DE1F
          B5588EB4D771BDE6B9B5F21610062390F794F61EF5F7A7EC09F037C49F02FF00
          605F07F817C47690DA789349D164B3B9B749C4AA921DF81BC707EF0AF238CAB6
          02AE0A1C9283AB1AAD27174DB70B6EFD9C62AD7E8EED6CD9E9F0BD1C653C649C
          A3254E54EFAA95B9EFB7BCE4EE975D2FD8F1DFD903E187C4EFDB2FF66BF0EFC4
          0F13FC62F16E85AADC0B83A343A1F950DBC71C77122C72DD2329F3E46D837024
          2E3803BD5BFD9AFC33F10FF6FEF87B71E2EF177C48F12F834E91A8DDE87A7587
          84A54B385E5B494C2F7B31656691A464DC233F22838C1AF6CFF827AFC1ED7BE0
          1FEC79E0CF08F89ADA1B4D73478278EEA28A612AA96B895C618707E56155FF00
          E09F7F053C43F01BE045DE87E26B68AD75197C47AAEA2A91CC250619EEE49223
          91DCAB0E3B57CF63B358C5E2654793DDA8953B463A45B95F974DB48EBFE6EFEC
          6132C6D61E3554BDE85E7794B59251B5F5F37FD23CE21F8FBAADEFECBBE21B5F
          1F7C4F8BE1E6B1E0EF134BE19BFF00135A5AC6D36AA2361B3C98D81027955870
          8A4820902BCCFE1EFED55A57C0DF8A3E108BC31F163C73E3BD2BC4DACC7A46AB
          A0F8BEC245B854911B1776B33C519050A8DC992181E82BB1F1A7ECB7E3EF0CFC
          4EB6F88565E12D1FC5ADE16F1BEABAC47E1FB9B9557D42CEEE2545BA81986C4B
          98F076AB8E464020E2B43E2AE9DF167F6B6F127802687E17C3E0AF0B785FC536
          3ABEA2359BC88EA77C9139DC2344042200727272DD0577D1FA959AF75D39DDCB
          DEA6945DB6B34E4FA356692BD95ACCE1ABF5AD1FBCA71B25A4DB6AFBDD3E55D9
          DD36ED777BA2D7C30F0578CBF6FED027F1FEABF123C55E09F0B5DDF5C45E19D1
          3C2F3A5A18ADA295A259EEA564669657285B6F08A081835CBFC45F8ABF17BE05
          6A9F197C3FAB78B975987C21F0DDB58F0EEAE2DD22B99E5F3197CD9D00DBE6AE
          02E5400DD702B6FE1A687E3BF82DE2BF15E95F047C5DF0E3C6BE067D4EE67FEC
          1D7EF248AEFC237AEE5A6811E33936E5D8B047195C900E2BCE744F849E30F8D9
          E3FF00DA0A1FF848E0F1EF8BB59F00C7A0DEDD59E20D12CB5176764B0B53CE02
          27DF2C4B648CF3554234DD59BA8E1EC572B8C5C55E29CA3BE89A76D24DBF79ED
          7DC556535082829FB577E6926ED27CB2DB5B357D925EEF96C68FC54F8F7AD6BD
          E24F87BA5FC4CF887E25F857F0EB56F03E99AB5A789B49C4035DD5E48D4CF15C
          5D6C61005055950ED0FB8F2718ACFF00F8282FC28D5B54FD957E17CFFF000B83
          5BF175947F10F4A8EC355B436FFE996F34C163695A305659222A4AB8C727906B
          DBE6D4FE277C1CF02785FC2F7DF0974DF889E0BB4F0BE9F652C7657D19BEB5BD
          8A058E68E58661E5C91E47CAC98C77AF216FD80FC79AAFECF1E2E9F49D234EF0
          B5DDF78EAC3C73E1DF017DAC359E98968CA5EDBCE1F2C725C619DB68D8ACC38E
          B5A60B15429D4A55B9A34D464AD6706A5776BEDCD1767795FDDD3A6889C561AA
          D4854A5CB29B945DF49A6AC93B6FCB257568DB5F5D59D4FC77F88B7FFB2C78A3
          44F86175F19F55D366F1DBDCEB17BE2EF1349034DA358C2154C169F22C7E6BB1
          C296076F27078AE634AFDA7BC3BFB2FF00C48F0837843E39CFF163C33E2BD660
          D0F57D0B54D463D4750B3967CAC7796AE8A1C00F8F31082B83918AEFBE28FC39
          F1B7ED09ABF863E2C41F0B6DB4EF16782DA7D366F0A7896EA19935DD3A6DA651
          1C80148A5561B918820E39EB5B1F0E5FC5BE3DF897A1FF00647C03F0FF00C3AD
          22CAE19F57D5B5C4B7376230A711D9C708C972D8FDE31DA076CD7342A61D61D7
          B54A4ECFDA2E6A69736BE4DED6E570BEBB6B735953AEEBFEEDB4AEB91F2D46F9
          74F3B6F7E6E6D6DBE9639DFD956C3E2D7ED5FA65BEB3E27F1CEA7E1AF0BF84FC
          49790DB5BE92B1ADDF8A0DBDE4986B994A9DB6F802311A004ED24B5637C3FF00
          DA36FF00E24FEC33A4F893C75F16EEBE1F5D6ADE21D46CE4BEB0B68DEFAFD12E
          6548ED6D94AB1DC154728A4802BE84FD8ABE16EB5F073E0059E85E20823B7D4A
          1D43509D9125128092DE4D227CC3B94753F8D7CC7F073F64DF895FB38786BE1B
          78AE5F05E99E31D47C1726B56B7DA02DDA7DA618AF2EDE68EEED5D86C3285C2B
          29192A700D650C4616B56AD16E11519AE4B282BA4AA6CDA6BDE7CB76EE95D792
          35950C452A349FBCDCA0F9EFCCECDB86E93BFBAAFA2B3767E643F03FF6A9B6F8
          61FB477803C29E19F89DE2DF88FE1CF8837573A6DEE93E2BB378B53D266485A5
          4BB82568A32D09DBB590EEEB90457BFF00FC131C6DFD8E7471E9AF788BFF004F
          DA8579BF8CBC1BF163F6A2F8F7F087C5573F0F6D7C11E0EF03F881EFEE6D6FAF
          637D62E4B5BC91ACA420DA91296E5325989CF4AF6CFD87FE156B5F05BF672D3F
          C3DE20B78ADB54B7D5B59BA78E29448A23B8D5AF2E623B87AC52A13E84E3B563
          9ED4C3BC1250B2A8DC1C929464EEBDAEEE292BD9C6F65DAEEE6B92D3AEB17795
          DC12928B6A496BECB6E66DEE9DB5EF6D0FE5FF00E3FF00C1EF10FECBFF001CFC
          43E05F18594FA5EB7A0DDBC2E2742897299F9268C9E1A3718208F5AC4B2D7222
          07EF973EBBBAD7F575F183F662F877FB403DB378DBC17E1BF143D9FF00A87D4A
          C239DE2F60C4671ED5C72FFC1377E02274F845E021FF007088BFC2BEB30FE265
          154E2AB517CDD6CD5BE47B7572FE67A33F995D2FC431671E627A7DEE95D0E97A
          FC636FEF508EFF00374AFE9317FE09CFF021071F09BC0A39CFFC8262FF000A95
          7FE09E5F035071F0A7C0E3FEE1517F856FFF00113B08BFE5CCBEF479B5B2194F
          6923F17BFE0923F0AB5EF8D9FB70782DF45B39A7D3FC3578353D56F153F73670
          A038DCDD3731E00EF5FD01819AE7BE1A7C20F0B7C1BD10E9BE14F0FE91E1EB16
          6DCD0D85AAC0AC7D4ED1CFE35D1D7E7DC51C42F37C52ACA3CB18AB25D7BEA7A5
          95E5CB074DC2F76DDC685C0ED4B8E6968AF9A3D313148569D4500342F1FE78A3
          653A8A00685F7A31914EA2801A17346DE29D4500376E68C1A751400DD9C51B48
          A751400C286948269D45007937C4BFD87FE157C5CF12CBAD6B9E0DD366D5AE0A
          99EF2D9E4B39AE369C8F31A164DFFF0002CD76FF000DBE16F87BE0FF0085A0D0
          FC31A3D8687A55B92C96D6916C5DC792C4F5663DC9C93EB5D1515D3531988A94
          D52A936E2B64DB697C8E786128426EAC20949EED257FBC40B8A4DBCD3A8AE63A
          04228DB4B450037CBA36E3BD3A8A0066CE69FD28A2803FFFD9}
        mmHeight = 10583
        mmLeft = 0
        mmTop = 0
        mmWidth = 72231
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText2'
        DataField = 'USEID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 20902
        mmTop = 0
        mmWidth = 6878
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 28575
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 49477
        mmTop = 0
        mmWidth = 54504
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText5'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 144727
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 175874
        mmTop = 0
        mmWidth = 18330
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'CREDID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3175
        mmLeft = 120650
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText10'
        DataField = 'TIPO'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 104511
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText11'
        DataField = 'Uproid'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 4233
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText12'
        DataField = 'Upagoid'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 12965
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText18'
        DataField = 'EXT'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 2879
        mmLeft = 166423
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        AutoSize = True
        DataField = 'DIAS_ATRAZO'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3175
        mmLeft = 112448
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      AfterGenerate = ppSummaryBnd2AfterGenerate
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBCalc59: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3810
        mmLeft = 164444
        mmTop = 1323
        mmWidth = 29760
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3439
        mmTop = 529
        mmWidth = 190765
        BandType = 7
      end
      object ppLabel94: TppLabel
        UserName = 'Label8'
        Caption = 'Importe Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 131403
        mmTop = 1323
        mmWidth = 19939
        BandType = 7
      end
      object ppLabel95: TppLabel
        UserName = 'Label10'
        Caption = 'Total Movimientos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 123614
        mmTop = 6085
        mmWidth = 27728
        BandType = 7
      end
      object ppLine16: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3439
        mmTop = 25135
        mmWidth = 190765
        BandType = 7
      end
      object ppLabel96: TppLabel
        UserName = 'Label18'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 153459
        mmTop = 1323
        mmWidth = 1905
        BandType = 7
      end
      object ppLabel97: TppLabel
        UserName = 'Label19'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 153459
        mmTop = 6085
        mmWidth = 1905
        BandType = 7
      end
      object ppLabel98: TppLabel
        UserName = 'Label105'
        Caption = 'Mov.  Por Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 125603
        mmTop = 20373
        mmWidth = 25739
        BandType = 7
      end
      object ppLabel99: TppLabel
        UserName = 'Label24'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 153459
        mmTop = 20373
        mmWidth = 1905
        BandType = 7
      end
      object ppLblCount2: TppLabel
        UserName = 'Label14'
        Caption = '8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 192426
        mmTop = 20373
        mmWidth = 1778
        BandType = 7
      end
      object ppLabel101: TppLabel
        UserName = 'Label74'
        Caption = 'Total de asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 122852
        mmTop = 10848
        mmWidth = 28490
        BandType = 7
      end
      object ppLabel102: TppLabel
        UserName = 'Label75'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 153829
        mmTop = 10848
        mmWidth = 1905
        BandType = 7
      end
      object ppltotaso2: TppLabel
        UserName = 'Label26'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 181250
        mmTop = 10848
        mmWidth = 12954
        BandType = 7
      end
      object ppDBCalc60: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBRefPago
        DisplayFormat = '##,###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3810
        mmLeft = 165629
        mmTop = 6085
        mmWidth = 28575
        BandType = 7
      end
      object ppLabel104: TppLabel
        UserName = 'Label73'
        Caption = 'Total de cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 126069
        mmTop = 15610
        mmWidth = 25273
        BandType = 7
      end
      object ppLabel105: TppLabel
        UserName = 'Label76'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 153829
        mmTop = 15610
        mmWidth = 1905
        BandType = 7
      end
      object ppltotcre2: TppLabel
        UserName = 'Label23'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 181250
        mmTop = 15610
        mmWidth = 12954
        BandType = 7
      end
      object ppShpResumen2: TppShape
        UserName = 'ShpResumen'
        Visible = False
        mmHeight = 14552
        mmLeft = 25929
        mmTop = 2910
        mmWidth = 38629
        BandType = 7
      end
      object lblSubTCUO2: TppLabel
        UserName = 'Label29'
        Caption = 'CUOTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3810
        mmLeft = 27252
        mmTop = 5556
        mmWidth = 13335
        BandType = 7
      end
      object lblSubTFSC2: TppLabel
        UserName = 'Label303'
        Caption = 'FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 11642
        mmWidth = 6350
        BandType = 7
      end
      object lblCUOTAS2: TppLabel
        UserName = 'Label28'
        Caption = '9,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3598
        mmLeft = 44831
        mmTop = 5292
        mmWidth = 18669
        BandType = 7
      end
      object lblFSC2: TppLabel
        UserName = 'Label30'
        Caption = '9,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3598
        mmLeft = 44831
        mmTop = 11377
        mmWidth = 18669
        BandType = 7
      end
      object ppShpResumenTot2: TppShape
        UserName = 'ShpResumen1'
        Visible = False
        mmHeight = 6350
        mmLeft = 25929
        mmTop = 17198
        mmWidth = 38629
        BandType = 7
      end
      object lblSubTTotal2: TppLabel
        UserName = 'Label31'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 18521
        mmWidth = 7673
        BandType = 7
      end
      object lbltotal2: TppLabel
        UserName = 'Label304'
        Caption = '9,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3598
        mmLeft = 44831
        mmTop = 18256
        mmWidth = 18669
        BandType = 7
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'CREFPAG'
      DataPipeline = ppDBRefPago
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand9: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppDBText57: TppDBText
          UserName = 'DBText1'
          DataField = 'CREFPAG'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 12965
          mmTop = 265
          mmWidth = 21431
          BandType = 3
          GroupNo = 0
        end
        object ppLabel113: TppLabel
          UserName = 'Label1'
          Caption = 'Dia :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 3440
          mmTop = 265
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppLabel114: TppLabel
          UserName = 'Label2'
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 20638
          mmTop = 8202
          mmWidth = 6878
          BandType = 3
          GroupNo = 0
        end
        object ppLabel115: TppLabel
          UserName = 'Label3'
          Caption = 'Cod.Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 28310
          mmTop = 8202
          mmWidth = 20109
          BandType = 3
          GroupNo = 0
        end
        object ppLabel116: TppLabel
          UserName = 'Label4'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 50006
          mmTop = 7938
          mmWidth = 42069
          BandType = 3
          GroupNo = 0
        end
        object ppLabel117: TppLabel
          UserName = 'Label5'
          Caption = 'Importe (S/.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 174890
          mmTop = 8202
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel118: TppLabel
          UserName = 'Label6'
          Caption = 'N'#176' Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 142346
          mmTop = 8202
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 3439
          mmTop = 12965
          mmWidth = 190765
          BandType = 3
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 3439
          mmTop = 6615
          mmWidth = 190765
          BandType = 3
          GroupNo = 0
        end
        object ppLabel120: TppLabel
          UserName = 'Label67'
          Caption = 'N'#186' Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 125413
          mmTop = 8202
          mmWidth = 15452
          BandType = 3
          GroupNo = 0
        end
        object ppLabel121: TppLabel
          UserName = 'Label79'
          Caption = 'T.Mov'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 101071
          mmTop = 8202
          mmWidth = 9186
          BandType = 3
          GroupNo = 0
        end
        object ppLabel122: TppLabel
          UserName = 'Label80'
          Caption = 'Upro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 3969
          mmTop = 8202
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppLabel123: TppLabel
          UserName = 'Label801'
          Caption = 'Upag'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 12171
          mmTop = 8202
          mmWidth = 7959
          BandType = 3
          GroupNo = 0
        end
        object ppLabel69: TppLabel
          UserName = 'Label11'
          Caption = 'D.Atra.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          Visible = False
          mmHeight = 3704
          mmLeft = 111654
          mmTop = 8202
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        AfterGenerate = ppGroupFooterBand1AfterGenerate
        mmBottomOffset = 0
        mmHeight = 21431
        mmPrintPosition = 0
        object ppDBCalc61: TppDBCalc
          UserName = 'DBCalc1'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3810
          mmLeft = 164444
          mmTop = 2117
          mmWidth = 29760
          BandType = 5
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 3439
          mmTop = 1323
          mmWidth = 190765
          BandType = 5
          GroupNo = 0
        end
        object ppLabel125: TppLabel
          UserName = 'Label7'
          Caption = 'Importe por d'#237'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 128090
          mmTop = 2117
          mmWidth = 23199
          BandType = 5
          GroupNo = 0
        end
        object ppLabel126: TppLabel
          UserName = 'Label9'
          Caption = 'Movimientos por d'#237'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 120354
          mmTop = 6879
          mmWidth = 30988
          BandType = 5
          GroupNo = 0
        end
        object ppLine20: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 3440
          mmTop = 21166
          mmWidth = 190765
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc62: TppDBCalc
          UserName = 'DBCalc3'
          AutoSize = True
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3810
          mmLeft = 162623
          mmTop = 6879
          mmWidth = 31581
          BandType = 5
          GroupNo = 0
        end
        object ppLabel127: TppLabel
          UserName = 'Label16'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 153830
          mmTop = 2117
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
        object ppLabel129: TppLabel
          UserName = 'Label17'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 153829
          mmTop = 6879
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
        object ppLabel130: TppLabel
          UserName = 'Label68'
          Caption = 'Total de asociados por d'#237'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 111337
          mmTop = 11642
          mmWidth = 40005
          BandType = 5
          GroupNo = 0
        end
        object ppLabel131: TppLabel
          UserName = 'Label69'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 153829
          mmTop = 11642
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
        object ppltotasodia2: TppLabel
          UserName = 'Label22'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 181250
          mmTop = 11642
          mmWidth = 12954
          BandType = 5
          GroupNo = 0
        end
        object ppLabel157: TppLabel
          UserName = 'Label70'
          Caption = 'Total de cr'#233'ditos por d'#237'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 114553
          mmTop = 16404
          mmWidth = 36788
          BandType = 5
          GroupNo = 0
        end
        object ppLabel158: TppLabel
          UserName = 'Label71'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 153829
          mmTop = 16404
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
        object ppltotcredia2: TppLabel
          UserName = 'ltotcredia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 181250
          mmTop = 16404
          mmWidth = 12954
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'ASOTIPDES'
      DataPipeline = ppDBRefPago
      OutlineSettings.CreateNode = True
      UserName = 'Group14'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand10: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel160: TppLabel
          UserName = 'Label394'
          Caption = 'Tipo de Asociado :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 3440
          mmTop = 794
          mmWidth = 28279
          BandType = 3
          GroupNo = 1
        end
        object ppDBText58: TppDBText
          UserName = 'DBText150'
          DataField = 'ASOTIPDES'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3810
          mmLeft = 37042
          mmTop = 794
          mmWidth = 40746
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBCalc63: TppDBCalc
          UserName = 'DBCalc50'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3810
          mmLeft = 164444
          mmTop = 794
          mmWidth = 29760
          BandType = 5
          GroupNo = 1
        end
        object ppLabel161: TppLabel
          UserName = 'Label21'
          Caption = 'Total por Tipo de Asociado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 70485
          mmTop = 794
          mmWidth = 40640
          BandType = 5
          GroupNo = 1
        end
        object ppLabel162: TppLabel
          UserName = 'Label25'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 113506
          mmTop = 794
          mmWidth = 1905
          BandType = 5
          GroupNo = 1
        end
        object ppLine21: TppLine
          UserName = 'Line14'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 165629
          mmTop = 0
          mmWidth = 28575
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object daDataModule2: TdaDataModule
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppRepfPagos2: TppReport
    AutoStop = False
    DataPipeline = ppDBRefPago
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
    Template.FileName = 'D:\DESARROLLO\Front\COBRANZAS\RepfPagos_2.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 256
    Top = 440
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRefPago'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label102'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 4498
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label103'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164307
        mmTop = 8996
        mmWidth = 5080
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 4498
        mmWidth = 19315
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 176742
        mmTop = 9260
        mmWidth = 2910
        BandType = 0
      end
      object ppLblTitulo2: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 
          'COBRANZA EFECTUADA DEL 01/04/2009 AL 30/04/2009-PLANILLA MINISTE' +
          'RIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 16140
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label20'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 172773
        mmTop = 0
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label201'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 172773
        mmTop = 4498
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label202'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 172773
        mmTop = 9260
        mmWidth = 2646
        BandType = 0
      end
      object ppLblUser2: TppLabel
        UserName = 'Label104'
        AutoSize = False
        Caption = 'USUARIOS EN GENERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 20638
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label15'
        Caption = 
          '"El tipo Asociado Corresponde a la situaci'#243'n del mismo al moment' +
          'o del otorgamiento del cr'#233'dito"'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 25135
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label27'
        Caption = 'Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 24342
        mmTop = 10583
        mmWidth = 16669
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D6167650A160000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002D00FE03012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FAF3
          F6C5FF0083826F3E1FFC5FD4BC2FF0ABC29A56BD63A1DC1B6BBD6B55B86486EE
          55E1C4089C95078DC7AF6AF3AD2FFE0E13F8B97DF7FC13E055FA4F3FF8D7E6CA
          6B3E54F3CB2C8A88AC59DDDB0179EA49AF46FD983C129FB48FC49FF846B4DD76
          D2C651A75DEA66E76F9A02DBC46429B473F36319ED5FD134B84725C361FF0079
          453515AC9DDBF36ECFF23F38C6663984EA5A9D469B7A2563F41B46FF0082F0FC
          51D471BFC23E0B5F5C4F37F8D759A27FC169FE22EA78DFE16F092FFBB34BFE35
          F98BE13F88B69702D77DCDBDBCF728AEB03C8370CF415E8BE1AF1E5AC7A80B6F
          B65BFDABB43BC6FF00FF005FB576FF00AA193F5C347F1FF33E1B32CEF398ABD3
          C4C97DDFE47EC17EC77FF05198FE3EF8A63F0D788F4BB7D1B5AB904DA4B6F217
          B7BA23929CF2AD8FCEBEA506BF1A7F621F1334BFB4E7819036376A6838383DEB
          F6578535F9071DE4D85CBF1B05845CB19C6F6E89DEDA1F7FE1D6718EC7E06A2C
          7CB9A509594B66D593D6D6DBB8B9C51B853257D88CD83F28CFD6BE68FD827FE0
          A61A0FEDEDE33F881A368FE19D6B4093E1FDEFD8AE25BE7465BB3B99729B7A0F
          97BD7C9D1C0622B51A988A51BC29DB99F6BBB2FBD9F735717469D58519BB4A77
          B2EF6DCFA6BAD2D3776051BF8AE43A0751499A4DFCF7A00751499A0B6280168A
          4DD407CD002D149BA93CCA0075149B851BA80168A4DD41602801690B60D217E2
          B0BE24F8C64F87DE00D635C8749D4F5D974AB492E574ED3A3F32EEF4A8C88E25
          EEE7A01EA69C62E52518EEC4DA4AECDEDD466B27C15E237F18783B4AD59F4FBE
          D2A4D4ED22BB6B2BC4D973685D0379722F675CE08F506B1FE2FF00C6EF0DFC08
          D0B4FD4FC4F7DFD9F67AA6A76DA3DB3F96CFE65D4EDB224C01DCF7E9571A3525
          53D9455E5B596BA90EAC230F692765BDCEBE8A6B360FF5A5DE2B3340CD1B8532
          47C21E0F1CE3D6B93F823F1427F8C1E01835CB9F0DEBFE149269A684E9DACC02
          1BB8C46E5039504FCAD8DCBEC455AA72707516CACBEFBFF913CE94B93A9D7E69
          41A8E49362938E833F5AE33F675F8DF67FB457C27B4F1658D95D69F6D777B7F6
          4B05C106456B4BD9ED189C7186680B0F6614D529BA6EAA5EEA693F577B7E4FEE
          25D5829AA6DEAD37F256BFE68FE74FF674B0F0FF00C36FD9DFE207C72F10E81A
          5F8D6EFC2BE20B1F09F86341D4C17D31752BA05FEDB7B18FF5891A8F9109C16A
          F7CFD8EBF6CA9BE397C5DD574BF1BF843C167C549E14D54787BC43A168D1E977
          1A5C9E415749522C2490153C6E0769C57C71FB3FFED147E0AEA5E26D2B57F0EE
          9FE3CF877E39812C7C5BE12BF95A18B5348DB7437104A3986EA22494907AF35D
          FEA1FB4B7807C05F0FB59F0F7C16F87DAFF82EEFC588969AD789BC4DAE1D5B57
          160AEAED61687810A3EDDACFF788AFE90C5E0A559CE33839397C32BAB455926B
          7BAB3BB6927CD7F92F949C392D24ED6DD77FEBF03E88F1A7C5AB0FD92FE38E93
          F02F44F03780F55F875A6D96896BADC7A9696971A9F8926BE85249EE64BB3FBC
          8E405FF77B08DB815DCC5F18746B1FDB3EDFE01C7F0FBC10BF0A2E7C483C282C
          3EC00EA71EF185BD17A7F7BF6856F9B39C76C57C83F1CFF6918FE3D7ED517BF1
          322D1E4D1E0BE9B4B9134A7943B442C6344DBB871F3ECE3D335D227ED2EB7FFB
          655A7C5DFECA9521B6F152789BFB244A0C8C14E7C90FD33EF531CB252A6A538F
          BFECDDF5FF009796567BFC57BDA5F8DAC7818A493693D39974FB1ADD6DB5ADA7
          E07BF7EC559F0B7EDD3E1FD00DCBDDAE85E2E9B4B49DFEFCC9148CAACDEF8033
          5FB15FB51FC6D87F66FF00D9EBC61E399E0FB4AF8674B9AF561ED2BAA9D8A7D8
          B6335F885FB1078D078B7FE0A11E17D5821B7FF8487C5F2EA6B096C9804CECFE
          593DC8CE335FB9FF001D3E10E9BF1F7E107893C17AC06FECEF12D84B613B28F9
          A30EA4061EE0E08FA57C07882E9ACC70AF12BDDE55CDE9CDA9DDC21859D1C1E2
          63434936F97D79743F2EBF625F83DFB537EDEDE02BCF8FB1FC74D47C2FA94B79
          3CBE1DD084465D3AEBCB27F752C790AB093F20F958F049AF16FF008279FED59E
          21FD8DBF679FDAABE232D9DA9F1843ABDA69CB0EDCC10EA33C922B36DEE8AD92
          07D2BDFF00F66CFD92FF006DCFD8AEC354F83BE079BC1B7DE04D52EE4FB0F8A6
          FA5DC7448A4E1E748BEF6EC73E59CFCDC8AABFB21FFC1153E21B7C02F8FBF0E3
          E24496FA5A78E2E6DAEB45D663BA1706E6EE06665B9911790198F23AE1BDABE8
          EAE6597463898E2AAD174252A5C91824A5ECD4D369D926ECB74EEF7D933C0A59
          7E35BA32C3D3AAAB28D4E6726EDCEE364D5DF57B3D3A1E01E24FDA57C55E01F8
          256DF16B4DFDB2C6B5F176031EA57DE0A7918DB3A3364DB2AFDC6650795DA063
          D2BD0FF6C1FF0082997C59F1E7C52FD9C3C5FF000CB56D4EDAFBC6BA043249E1
          BB798FD82FF52333C4CAE9FC49BBD7B0AEF7C0BFB3BFED93F0E3C23A67C3CD3F
          E10FC0DB8BED1F659DAF8EAF6CADE7616CA7019D0AFCE76E7A8DDCFAD7A8FED2
          FF00F04F7F899E37FDBB3F673F1A68DA0F870E83F0FED2D57C45369D2A59DB45
          70B233CCD0404676127207BD15331CA63898BAFECA56551A7CD06B979348B518
          C524DDB96EF996A8165F98BC3B8D0F691BF25D5A57E6E6D649B6F5B5EF6D3667
          CD3FB6FF008CFF0068DFF827E782FE0FE91ACFC4DD635CF1FF008ABC477DAD6A
          0B6379235BDDEF910C3664B004A29217680140E95EE9E36F03FC66F809FB1178
          A355F8C7FB47699F0CFC5FE3BF13DB6AD16A866795B4FB4D99934F863DA0EE19
          E163E38E4D77FF00F0575FD86BE23FED5BFB417C0FD7BC13A5596A1A6782F53F
          B4EAAF35E2C0604F3A36C8047CDC29E949FF0005A6FF00827C78FF00F6B5D6BE
          1AF8DFE1F41A5788752F87378D3CBE1CD4E4096FA8A332B6E19F949057054F50
          78AF1F0F9CE0F130C0D3AB2A70751CE5525CB1BA6A5784754D453D3756B5BA1E
          AD5CAB1346AE2AA414E4A0A2A0AEECEEAD27A59B6BC8F8CFE16FEDD7E2BFD983
          F6ACF86CDE15FDA3352F8E7E0EF16EA7169DAC69FA9DA4D6D35B2C922A6E31CB
          92BF7B2AEA79C1AEFBC1BE29FDA0FF0069BFF82A67ED03F097C23F18757F0BE8
          56D73701A6B926E46956A186C4B54C8D8E49C160460574DFB487EC61FB4DFED8
          FF00147E11F8BB58F863F0EFC13A6F84B58826974AD26F505D5BC492C4CF2CB2
          63E61843B631F771EF5ECFFB177EC35F11FE0F7FC15A7E38FC53D7B4AB3B6F05
          F8D049FD937697AB2493EE9148CC60657807AD7A18DCCF2DA7879E260E97B7F6
          52D3F772F79548F2FC315172B5F68EDDD23870397E36A555879F3AA5ED236F8E
          3EEB8BBDAEDC92BF99F24FEC8577FB4E7C77F8E5E3FF00D9917E355FE8D6DE14
          B896E753F11BEEBAD42358D822C3039218239209190473CD7A87FC12DFF68BF8
          A3E14F897FB40FC16F88BF1224993C07A5DD4B6DE24D42E0483459A33E5F9C24
          7E7CBF995B0D9C11C57B27EC2DFB0C7C48F829FF000546F8CFF133C43A4D95AF
          847C60251A5DD25E2C924DBA456198C0CAF00F5AF1EF15FF00C122BE2CFC54F8
          DBFB52493C7A7E83A47C4F85A4D0350FB687FB5489711CA90C8ABCA2B852093D
          2B3C566B9662AA56C2D59528D394294AEA31D2A371E76ADAB695EEBB2B771E1F
          2DCC30D0A55E9C6A4A71954567296B0B3E55E49F47E67CE9F14BF686F127C2EF
          065E78AFC1FF00B6E6A9E3AF1C683324B2E8E6CAE20B0D430DF32412BE63971F
          DDC0C8AFD81FD8F7F684BDFDA47F62BF09FC42BF8D6CF53D734337774B12E152
          65560C547D549C7BD7E790FD8D3F6A5F1E7EC0F37C0DFF008549F0CBC2F6DE1F
          B5588EB4D771BDE6B9B5F21610062390F794F61EF5F7A7EC09F037C49F02FF00
          605F07F817C47690DA789349D164B3B9B749C4AA921DF81BC707EF0AF238CAB6
          02AE0A1C9283AB1AAD27174DB70B6EFD9C62AD7E8EED6CD9E9F0BD1C653C649C
          A3254E54EFAA95B9EFB7BCE4EE975D2FD8F1DFD903E187C4EFDB2FF66BF0EFC4
          0F13FC62F16E85AADC0B83A343A1F950DBC71C77122C72DD2329F3E46D837024
          2E3803BD5BFD9AFC33F10FF6FEF87B71E2EF177C48F12F834E91A8DDE87A7587
          84A54B385E5B494C2F7B31656691A464DC233F22838C1AF6CFF827AFC1ED7BE0
          1FEC79E0CF08F89ADA1B4D73478278EEA28A612AA96B895C618707E56155FF00
          E09F7F053C43F01BE045DE87E26B68AD75197C47AAEA2A91CC250619EEE49223
          91DCAB0E3B57CF63B358C5E2654793DDA8953B463A45B95F974DB48EBFE6EFEC
          6132C6D61E3554BDE85E7794B59251B5F5F37FD23CE21F8FBAADEFECBBE21B5F
          1F7C4F8BE1E6B1E0EF134BE19BFF00135A5AC6D36AA2361B3C98D81027955870
          8A4820902BCCFE1EFED55A57C0DF8A3E108BC31F163C73E3BD2BC4DACC7A46AB
          A0F8BEC245B854911B1776B33C519050A8DC992181E82BB1F1A7ECB7E3EF0CFC
          4EB6F88565E12D1FC5ADE16F1BEABAC47E1FB9B9557D42CEEE2545BA81986C4B
          98F076AB8E464020E2B43E2AE9DF167F6B6F127802687E17C3E0AF0B785FC536
          3ABEA2359BC88EA77C9139DC2344042200727272DD0577D1FA959AF75D39DDCB
          DEA6945DB6B34E4FA356692BD95ACCE1ABF5AD1FBCA71B25A4DB6AFBDD3E55D9
          DD36ED777BA2D7C30F0578CBF6FED027F1FEABF123C55E09F0B5DDF5C45E19D1
          3C2F3A5A18ADA295A259EEA564669657285B6F08A081835CBFC45F8ABF17BE05
          6A9F197C3FAB78B975987C21F0DDB58F0EEAE2DD22B99E5F3197CD9D00DBE6AE
          02E5400DD702B6FE1A687E3BF82DE2BF15E95F047C5DF0E3C6BE067D4EE67FEC
          1D7EF248AEFC237AEE5A6811E33936E5D8B047195C900E2BCE744F849E30F8D9
          E3FF00DA0A1FF848E0F1EF8BB59F00C7A0DEDD59E20D12CB5176764B0B53CE02
          27DF2C4B648CF3554234DD59BA8E1EC572B8C5C55E29CA3BE89A76D24DBF79ED
          7DC556535082829FB577E6926ED27CB2DB5B357D925EEF96C68FC54F8F7AD6BD
          E24F87BA5FC4CF887E25F857F0EB56F03E99AB5A789B49C4035DD5E48D4CF15C
          5D6C61005055950ED0FB8F2718ACFF00F8282FC28D5B54FD957E17CFFF000B83
          5BF175947F10F4A8EC355B436FFE996F34C163695A305659222A4AB8C727906B
          DBE6D4FE277C1CF02785FC2F7DF0974DF889E0BB4F0BE9F652C7657D19BEB5BD
          8A058E68E58661E5C91E47CAC98C77AF216FD80FC79AAFECF1E2E9F49D234EF0
          B5DDF78EAC3C73E1DF017DAC359E98968CA5EDBCE1F2C725C619DB68D8ACC38E
          B5A60B15429D4A55B9A34D464AD6706A5776BEDCD1767795FDDD3A6889C561AA
          D4854A5CB29B945DF49A6AC93B6FCB257568DB5F5D59D4FC77F88B7FFB2C78A3
          44F86175F19F55D366F1DBDCEB17BE2EF1349034DA358C2154C169F22C7E6BB1
          C296076F27078AE634AFDA7BC3BFB2FF00C48F0837843E39CFF163C33E2BD660
          D0F57D0B54D463D4750B3967CAC7796AE8A1C00F8F31082B83918AEFBE28FC39
          F1B7ED09ABF863E2C41F0B6DB4EF16782DA7D366F0A7896EA19935DD3A6DA651
          1C80148A5561B918820E39EB5B1F0E5FC5BE3DF897A1FF00647C03F0FF00C3AD
          22CAE19F57D5B5C4B7376230A711D9C708C972D8FDE31DA076CD7342A61D61D7
          B54A4ECFDA2E6A69736BE4DED6E570BEBB6B735953AEEBFEEDB4AEB91F2D46F9
          74F3B6F7E6E6D6DBE9639DFD956C3E2D7ED5FA65BEB3E27F1CEA7E1AF0BF84FC
          49790DB5BE92B1ADDF8A0DBDE4986B994A9DB6F802311A004ED24B5637C3FF00
          DA36FF00E24FEC33A4F893C75F16EEBE1F5D6ADE21D46CE4BEB0B68DEFAFD12E
          6548ED6D94AB1DC154728A4802BE84FD8ABE16EB5F073E0059E85E20823B7D4A
          1D43509D9125128092DE4D227CC3B94753F8D7CC7F073F64DF895FB38786BE1B
          78AE5F05E99E31D47C1726B56B7DA02DDA7DA618AF2EDE68EEED5D86C3285C2B
          29192A700D650C4616B56AD16E11519AE4B282BA4AA6CDA6BDE7CB76EE95D792
          35950C452A349FBCDCA0F9EFCCECDB86E93BFBAAFA2B3767E643F03FF6A9B6F8
          61FB477803C29E19F89DE2DF88FE1CF8837573A6DEE93E2BB378B53D266485A5
          4BB82568A32D09DBB590EEEB90457BFF00FC131C6DFD8E7471E9AF788BFF004F
          DA8579BF8CBC1BF163F6A2F8F7F087C5573F0F6D7C11E0EF03F881EFEE6D6FAF
          637D62E4B5BC91ACA420DA91296E5325989CF4AF6CFD87FE156B5F05BF672D3F
          C3DE20B78ADB54B7D5B59BA78E29448A23B8D5AF2E623B87AC52A13E84E3B563
          9ED4C3BC1250B2A8DC1C929464EEBDAEEE292BD9C6F65DAEEE6B92D3AEB17795
          DC12928B6A496BECB6E66DEE9DB5EF6D0FE5FF00E3FF00C1EF10FECBFF001CFC
          43E05F18594FA5EB7A0DDBC2E2742897299F9268C9E1A3718208F5AC4B2D7222
          07EF973EBBBAD7F575F183F662F877FB403DB378DBC17E1BF143D9FF00A87D4A
          C239DE2F60C4671ED5C72FFC1377E02274F845E021FF007088BFC2BEB30FE265
          154E2AB517CDD6CD5BE47B7572FE67A33F995D2FC431671E627A7DEE95D0E97A
          FC636FEF508EFF00374AFE9317FE09CFF021071F09BC0A39CFFC8262FF000A95
          7FE09E5F035071F0A7C0E3FEE1517F856FFF00113B08BFE5CCBEF479B5B2194F
          6923F17BFE0923F0AB5EF8D9FB70782DF45B39A7D3FC3578353D56F153F73670
          A038DCDD3731E00EF5FD01819AE7BE1A7C20F0B7C1BD10E9BE14F0FE91E1EB16
          6DCD0D85AAC0AC7D4ED1CFE35D1D7E7DC51C42F37C52ACA3CB18AB25D7BEA7A5
          95E5CB074DC2F76DDC685C0ED4B8E6968AF9A3D313148569D4500342F1FE78A3
          653A8A00685F7A31914EA2801A17346DE29D4500376E68C1A751400DD9C51B48
          A751400C286948269D45007937C4BFD87FE157C5CF12CBAD6B9E0DD366D5AE0A
          99EF2D9E4B39AE369C8F31A164DFFF0002CD76FF000DBE16F87BE0FF0085A0D0
          FC31A3D8687A55B92C96D6916C5DC792C4F5663DC9C93EB5D1515D3531988A94
          D52A936E2B64DB697C8E786128426EAC20949EED257FBC40B8A4DBCD3A8AE63A
          04228DB4B450037CBA36E3BD3A8A0066CE69FD28A2803FFFD9}
        mmHeight = 10583
        mmLeft = 0
        mmTop = 0
        mmWidth = 72231
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText2'
        DataField = 'USEID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 20902
        mmTop = 0
        mmWidth = 6878
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 28575
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 49477
        mmTop = 0
        mmWidth = 54504
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText5'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 144727
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 175874
        mmTop = 0
        mmWidth = 18330
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'CREDID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3175
        mmLeft = 120650
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'TIPO'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 104511
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Uproid'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 4233
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Upagoid'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3260
        mmLeft = 12965
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        DataField = 'DIAS_ATRAZO'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3175
        mmLeft = 112448
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'EXT'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 2879
        mmLeft = 166423
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      AfterGenerate = ppSummaryBand2AfterGenerate
      mmBottomOffset = 0
      mmHeight = 33602
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3810
        mmLeft = 164444
        mmTop = 1323
        mmWidth = 29760
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3439
        mmTop = 529
        mmWidth = 190765
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label8'
        Caption = 'Importe Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 131403
        mmTop = 1323
        mmWidth = 19939
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label10'
        Caption = 'Total Movimientos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 123614
        mmTop = 6085
        mmWidth = 27728
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3439
        mmTop = 25135
        mmWidth = 190765
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 153459
        mmTop = 1323
        mmWidth = 1905
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 153459
        mmTop = 6085
        mmWidth = 1905
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label105'
        Caption = 'Mov.  Por Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 125603
        mmTop = 20373
        mmWidth = 25739
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 153459
        mmTop = 20373
        mmWidth = 1905
        BandType = 7
      end
      object ppLblCount: TppLabel
        UserName = 'Label14'
        Caption = '8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 192426
        mmTop = 20373
        mmWidth = 1778
        BandType = 7
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'Total de asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 122852
        mmTop = 10848
        mmWidth = 28490
        BandType = 7
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 153829
        mmTop = 10848
        mmWidth = 1905
        BandType = 7
      end
      object ppltotaso: TppLabel
        UserName = 'Label26'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 181250
        mmTop = 10848
        mmWidth = 12954
        BandType = 7
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBRefPago
        DisplayFormat = '##,###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        ResetGroup = ppGroup11
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 3810
        mmLeft = 165629
        mmTop = 6085
        mmWidth = 28575
        BandType = 7
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = 'Total de cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 126069
        mmTop = 15610
        mmWidth = 25273
        BandType = 7
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 153829
        mmTop = 15610
        mmWidth = 1905
        BandType = 7
      end
      object ppltotcre: TppLabel
        UserName = 'Label23'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 181250
        mmTop = 15610
        mmWidth = 12954
        BandType = 7
      end
      object ppShpResumen: TppShape
        UserName = 'ShpResumen'
        Visible = False
        mmHeight = 14552
        mmLeft = 25929
        mmTop = 2910
        mmWidth = 38629
        BandType = 7
      end
      object lblSubTCUO: TppLabel
        UserName = 'Label29'
        Caption = 'CUOTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3810
        mmLeft = 27252
        mmTop = 5556
        mmWidth = 13335
        BandType = 7
      end
      object lblSubTFSC: TppLabel
        UserName = 'Label303'
        Caption = 'FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 11642
        mmWidth = 6350
        BandType = 7
      end
      object lblCUOTAS: TppLabel
        UserName = 'Label28'
        Caption = '9,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3598
        mmLeft = 44831
        mmTop = 5292
        mmWidth = 18669
        BandType = 7
      end
      object lblFSC: TppLabel
        UserName = 'Label30'
        Caption = '9,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3598
        mmLeft = 44831
        mmTop = 11377
        mmWidth = 18669
        BandType = 7
      end
      object ppShpResumenTot: TppShape
        UserName = 'ShpResumen1'
        Visible = False
        mmHeight = 6350
        mmLeft = 25929
        mmTop = 17198
        mmWidth = 38629
        BandType = 7
      end
      object lblSubTTotal: TppLabel
        UserName = 'Label31'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 18521
        mmWidth = 7673
        BandType = 7
      end
      object lbltotal: TppLabel
        UserName = 'Label304'
        Caption = '9,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3598
        mmLeft = 44831
        mmTop = 18256
        mmWidth = 18669
        BandType = 7
      end
      object pplUsuario: TppLabel
        UserName = 'Label21'
        Caption = 'Label21'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 28310
        mmWidth = 35190
        BandType = 7
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'ppDBText6'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group11'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand11: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12171
        mmPrintPosition = 0
        object ppLabel26: TppLabel
          UserName = 'Label1'
          Caption = 'Dia :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 529
          mmTop = 265
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText1'
          DataField = 'CREFPAG'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 8467
          mmTop = 265
          mmWidth = 21431
          BandType = 3
          GroupNo = 0
        end
        object ppLabel53: TppLabel
          UserName = 'Label2'
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 18521
          mmTop = 7144
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppLabel54: TppLabel
          UserName = 'Label3'
          Caption = 'Cod.Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 26194
          mmTop = 7144
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppLabel55: TppLabel
          UserName = 'Label4'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 47890
          mmTop = 6879
          mmWidth = 42069
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label5'
          Caption = 'Importe (S/.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 172773
          mmTop = 7144
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label6'
          Caption = 'N'#176' Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 140229
          mmTop = 7144
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 1323
          mmTop = 11906
          mmWidth = 190765
          BandType = 3
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 1323
          mmTop = 5556
          mmWidth = 190765
          BandType = 3
          GroupNo = 0
        end
        object ppLabel67: TppLabel
          UserName = 'Label67'
          Caption = 'N'#186' Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 123296
          mmTop = 7144
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel79: TppLabel
          UserName = 'Label79'
          Caption = 'T.Mov'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 98954
          mmTop = 7144
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel80: TppLabel
          UserName = 'Label80'
          Caption = 'Upro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 7144
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppLabel81: TppLabel
          UserName = 'Label801'
          Caption = 'Upag'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 7144
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel86: TppLabel
          UserName = 'Label86'
          Caption = 'D.Atra.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          Visible = False
          mmHeight = 3704
          mmLeft = 109273
          mmTop = 7144
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        AfterGenerate = ppGroupFooterBand11AfterGenerate
        mmBottomOffset = 0
        mmHeight = 21431
        mmPrintPosition = 0
        object ppDBCalc33: TppDBCalc
          UserName = 'DBCalc1'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3810
          mmLeft = 164571
          mmTop = 2117
          mmWidth = 29760
          BandType = 5
          GroupNo = 0
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 3440
          mmTop = 1323
          mmWidth = 190765
          BandType = 5
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label9'
          Caption = 'Importe por d'#237'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 128059
          mmTop = 2117
          mmWidth = 23199
          BandType = 5
          GroupNo = 0
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          Caption = 'Movimientos por d'#237'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 120386
          mmTop = 6879
          mmWidth = 30988
          BandType = 5
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 3440
          mmTop = 21166
          mmWidth = 190765
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc34: TppDBCalc
          UserName = 'DBCalc3'
          AutoSize = True
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3810
          mmLeft = 162719
          mmTop = 6879
          mmWidth = 31581
          BandType = 5
          GroupNo = 0
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 153723
          mmTop = 2117
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 153723
          mmTop = 6879
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          Caption = 'Total de asociados por d'#237'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 111390
          mmTop = 11642
          mmWidth = 40005
          BandType = 5
          GroupNo = 0
        end
        object ppLabel68: TppLabel
          UserName = 'Label11'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 153723
          mmTop = 11642
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
        object ppltotasodia: TppLabel
          UserName = 'Label16'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 182298
          mmTop = 11642
          mmWidth = 11896
          BandType = 5
          GroupNo = 0
        end
        object ppLabel70: TppLabel
          UserName = 'Label701'
          Caption = 'Total de cr'#233'ditos por d'#237'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 114565
          mmTop = 16404
          mmWidth = 36788
          BandType = 5
          GroupNo = 0
        end
        object ppLabel71: TppLabel
          UserName = 'Label17'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 153723
          mmTop = 16404
          mmWidth = 1905
          BandType = 5
          GroupNo = 0
        end
        object ppltotcredia: TppLabel
          UserName = 'ltotcredia1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 178065
          mmTop = 16404
          mmWidth = 16129
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup12: TppGroup
      BreakName = 'ppDBText8'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group12'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand12: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel66: TppLabel
          UserName = 'Label394'
          Caption = 'Tipo de Asociado :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 529
          mmWidth = 28310
          BandType = 3
          GroupNo = 1
        end
        object ppDBText8: TppDBText
          UserName = 'DBText150'
          DataField = 'ASOTIPDES'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3704
          mmLeft = 33602
          mmTop = 529
          mmWidth = 40746
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand12: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBCalc50: TppDBCalc
          UserName = 'DBCalc501'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3810
          mmLeft = 164571
          mmTop = 688
          mmWidth = 29760
          BandType = 5
          GroupNo = 1
        end
        object ppLabel87: TppLabel
          UserName = 'Label22'
          Caption = 'Total por Tipo de Asociado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 70379
          mmTop = 688
          mmWidth = 40640
          BandType = 5
          GroupNo = 1
        end
        object ppLabel91: TppLabel
          UserName = 'Label91'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 113506
          mmTop = 688
          mmWidth = 1905
          BandType = 5
          GroupNo = 1
        end
        object ppLine14: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 165629
          mmTop = 0
          mmWidth = 28575
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'ppDBText20'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand13: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText20: TppDBText
          UserName = 'DBText7'
          DataField = 'FORPAGID'
          DataPipeline = ppDBRefPago
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3704
          mmLeft = 30163
          mmTop = 529
          mmWidth = 6615
          BandType = 3
          GroupNo = 2
        end
        object ppLabel10: TppLabel
          UserName = 'Label7'
          Caption = 'Forma de Pago :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 0
          mmTop = 265
          mmWidth = 24934
          BandType = 3
          GroupNo = 2
        end
        object ppDBText59: TppDBText
          UserName = 'DBText8'
          AutoSize = True
          DataField = 'FORPAGODES'
          DataPipeline = ppDBRefPago
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3598
          mmLeft = 37306
          mmTop = 529
          mmWidth = 22098
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppDBCalc64: TppDBCalc
          UserName = 'DBCalc502'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3810
          mmLeft = 164444
          mmTop = 1058
          mmWidth = 29760
          BandType = 5
          GroupNo = 2
        end
        object ppLabel100: TppLabel
          UserName = 'Label100'
          Caption = 'Total por Forma de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 73829
          mmTop = 1058
          mmWidth = 37296
          BandType = 5
          GroupNo = 2
        end
        object ppLabel103: TppLabel
          UserName = 'Label25'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 113506
          mmTop = 1058
          mmWidth = 1852
          BandType = 5
          GroupNo = 2
        end
        object ppLine22: TppLine
          UserName = 'Line22'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 165629
          mmTop = 265
          mmWidth = 28575
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object daDataModule1: TdaDataModule
    end
    object ppParameterList1: TppParameterList
    end
  end
end
