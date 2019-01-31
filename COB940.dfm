object fRepResGest: TfRepResGest
  Left = 185
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Estadisticas De Recuperaci'#243'n De Cobranzas'
  ClientHeight = 439
  ClientWidth = 584
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
    Left = 3
    Top = 92
    Width = 577
    Height = 344
    TabOrder = 0
    DesignSize = (
      577
      344)
    object lblDescrip: TLabel
      Left = 14
      Top = 25
      Width = 251
      Height = 16
      AutoSize = False
      Caption = 'lblDescrip'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtgDato: TDBGrid
      Left = 143
      Top = 137
      Width = 50
      Height = 8
      DataSource = DM1.dsOfDes
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
    end
    object dtgData: TDBGrid
      Left = 279
      Top = 81
      Width = 50
      Height = 8
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
    end
    object BitSalir: TBitBtn
      Left = 452
      Top = 311
      Width = 89
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 0
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
    object BitExporta: TBitBtn
      Left = 349
      Top = 311
      Width = 90
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Resumen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitExportaClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      Spacing = 10
    end
    object BitExpDet: TBitBtn
      Left = 253
      Top = 311
      Width = 90
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Detalles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = BitExpDetClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      Spacing = 10
    end
    object BitPrint: TBitBtn
      Left = 430
      Top = 17
      Width = 128
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Imprime Resumen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = BitPrintClick
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
      Spacing = 10
    end
    object ChkAsociado: TCheckBox
      Left = 254
      Top = 292
      Width = 83
      Height = 17
      Caption = 'Por Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object chkIncTel: TCheckBox
      Left = 282
      Top = 24
      Width = 138
      Height = 17
      Caption = 'NO Incluye Teleahorro'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object ChkExpExc: TCheckBox
      Left = 131
      Top = 292
      Width = 83
      Height = 17
      Caption = 'Exportar Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnClick = ChkExpExcClick
    end
    object BitCatRie: TBitBtn
      Left = 128
      Top = 311
      Width = 120
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Cat.Riesgo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Visible = False
      OnClick = BitCatRieClick
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
      Spacing = 10
    end
    object BitCatExc: TBitBtn
      Left = 97
      Top = 310
      Width = 120
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'Cat.Riesgo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Visible = False
      OnClick = BitCatExcClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      Spacing = 10
    end
    object dtgDatos: TDBGrid
      Left = 279
      Top = 145
      Width = 50
      Height = 8
      DataSource = DM1.dsqry5
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
    end
    object dtgResGes: TwwDBGrid
      Left = 9
      Top = 49
      Width = 559
      Height = 238
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'OFDESID'#9'2'#9'Id'
        'OFDESNOM'#9'34'#9'Descripci'#243'n'
        'CREMTOCOB'#9'20'#9'Importes~Recuperados'
        'TOTASOID'#9'15'#9'Numero De~Asociados'
        'MOVIMIENTOS'#9'15'#9'Numero De~Movimientos'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgResGesDblClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 0
    Width = 574
    Height = 89
    TabOrder = 1
    object Label1: TLabel
      Left = 142
      Top = 29
      Width = 64
      Height = 13
      Caption = 'Fecha De Fin'
    end
    object Label2: TLabel
      Left = 17
      Top = 29
      Width = 75
      Height = 13
      Caption = 'Fecha De Inicio'
    end
    object DtpFecIni: TDateTimePicker
      Left = 15
      Top = 45
      Width = 104
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
      Left = 140
      Top = 44
      Width = 104
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
    object BitMostrar: TBitBtn
      Left = 424
      Top = 42
      Width = 106
      Height = 28
      Hint = 'Salir'
      Caption = 'Mostar'
      TabOrder = 2
      OnClick = BitMostrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object rdbOfDes: TRadioButton
      Left = 280
      Top = 10
      Width = 145
      Height = 17
      Caption = 'Oficinas Desconcetradas'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = rdbOfDesClick
    end
    object rdbForPag: TRadioButton
      Left = 280
      Top = 30
      Width = 113
      Height = 17
      Caption = 'Formas De Pago'
      TabOrder = 4
      OnClick = rdbForPagClick
    end
    object rdbEncuestados: TRadioButton
      Left = 280
      Top = 50
      Width = 113
      Height = 17
      Caption = 'Encuestados'
      TabOrder = 5
      OnClick = rdbEncuestadosClick
    end
    object rdbVencidos: TRadioButton
      Left = 280
      Top = 69
      Width = 113
      Height = 17
      Caption = 'Vencidos'
      TabOrder = 6
      OnClick = rdbVencidosClick
    end
  end
  object ppDBData01: TppDBPipeline
    DataSource = DM1.dsQry1
    UserName = 'DBData01'
    Left = 24
    Top = 200
  end
  object ppDBData02: TppDBPipeline
    DataSource = DM1.dsQry2
    UserName = 'DBData02'
    Left = 24
    Top = 232
  end
  object ppRepCon: TppReport
    AutoStop = False
    DataPipeline = ppDBData01
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\Documents and Settings\Administrador.DERRAMA\Mis documentos\R' +
      'epoCart\WWW.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 24
    Top = 264
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBData01'
    object ppHeaderBand8: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppLine43: TppLine
        UserName = 'Line403'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 14023
        mmTop = 32544
        mmWidth = 162454
        BandType = 0
      end
      object ppLine44: TppLine
        UserName = 'Line404'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 14023
        mmTop = 43921
        mmWidth = 162454
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label181'
        Caption = 'Desconcentrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 39158
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'Label182'
        Caption = 'Oficina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 34396
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 85990
        mmTop = 34925
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label184'
        Caption = 'Movimientos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 79111
        mmTop = 39688
        mmWidth = 19727
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label189'
        Caption = 'Recuperado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 152136
        mmTop = 39158
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
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
      object ppLabel2: TppLabel
        UserName = 'Label2'
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
      object ppLabel3: TppLabel
        UserName = 'Label3'
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
      object ppLabel4: TppLabel
        UserName = 'Label4'
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
      object ppLabel5: TppLabel
        UserName = 'Label5'
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
        UserName = 'SystemVariable1'
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
        UserName = 'SystemVariable2'
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
        UserName = 'SystemVariable3'
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
      object ppLabel6: TppLabel
        UserName = 'Label6'
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
      object ppLabel7: TppLabel
        UserName = 'Label7'
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
      object ppLabel8: TppLabel
        UserName = 'Label8'
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
      object Titulo: TppLabel
        UserName = 'Titulo'
        AutoSize = False
        Caption = 'LblTit01'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 0
        mmTop = 15610
        mmWidth = 192617
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'POR OFICINAS DESCONCENTRADAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 14288
        mmTop = 26458
        mmWidth = 69850
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Monto '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 152136
        mmTop = 34396
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 110669
        mmTop = 39688
        mmWidth = 16214
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 35190
        mmWidth = 12700
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        DataField = 'OFDESNOM'
        DataPipeline = ppDBData01
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBData01'
        mmHeight = 3260
        mmLeft = 14552
        mmTop = 0
        mmWidth = 55827
        BandType = 4
      end
      object ppDBText97: TppDBText
        UserName = 'DBText97'
        DataField = 'MOVIMIENTOS'
        DataPipeline = ppDBData01
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBData01'
        mmHeight = 3260
        mmLeft = 74877
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText98: TppDBText
        UserName = 'DBText98'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBData01
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBData01'
        mmHeight = 3260
        mmLeft = 128588
        mmTop = 0
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'TOTASOID'
        DataPipeline = ppDBData01
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBData01'
        mmHeight = 3175
        mmLeft = 102923
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand7: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppDBCalc106: TppDBCalc
        UserName = 'DBCalc106'
        DataField = 'MOVIMIENTOS'
        DataPipeline = ppDBData01
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBData01'
        mmHeight = 3260
        mmLeft = 74877
        mmTop = 2117
        mmWidth = 23813
        BandType = 7
      end
      object ppDBCalc107: TppDBCalc
        UserName = 'DBCalc107'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBData01
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBData01'
        mmHeight = 3260
        mmLeft = 128588
        mmTop = 2117
        mmWidth = 42598
        BandType = 7
      end
      object ppLabel180: TppLabel
        UserName = 'Label180'
        Caption = 'TOTALES  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 15875
        mmTop = 2117
        mmWidth = 14563
        BandType = 7
      end
      object ppLine41: TppLine
        UserName = 'Line401'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 14023
        mmTop = 794
        mmWidth = 162454
        BandType = 7
      end
      object ppLine42: TppLine
        UserName = 'Line402'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 14023
        mmTop = 7673
        mmWidth = 162454
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBData02'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 10054
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBData02
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBData02'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 23548
            mmPrintPosition = 0
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Caption = 'Forma De Pago'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 27252
              mmTop = 17727
              mmWidth = 24850
              BandType = 1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 19845
              mmTop = 12435
              mmWidth = 149754
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 19845
              mmTop = 22490
              mmWidth = 149754
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              Caption = 'Movimientos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 95779
              mmTop = 17992
              mmWidth = 19727
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              Caption = 'N'#250'mero'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 102923
              mmTop = 13494
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Recuperado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 140759
              mmTop = 18256
              mmWidth = 19135
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              Caption = 'Monto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 149225
              mmTop = 13758
              mmWidth = 10583
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              Caption = 'POR FORMAS DE PAGO '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Roman 12cpi'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 19579
              mmTop = 6879
              mmWidth = 37804
              BandType = 1
            end
          end
          object ppDetailBand9: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText103: TppDBText
              UserName = 'DBText103'
              DataField = 'FORPAGODES'
              DataPipeline = ppDBData02
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 27252
              mmTop = 0
              mmWidth = 57944
              BandType = 4
            end
            object ppDBText104: TppDBText
              UserName = 'DBText104'
              DataField = 'CREMTOCOB'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 117211
              mmTop = 0
              mmWidth = 42598
              BandType = 4
            end
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              DataField = 'MOVIMIENTOS'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 84138
              mmTop = 0
              mmWidth = 31222
              BandType = 4
            end
          end
          object ppSummaryBand8: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 14288
            mmPrintPosition = 0
            object ppLabel190: TppLabel
              UserName = 'Label1801'
              Caption = 'TOTALES  '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 29898
              mmTop = 2381
              mmWidth = 14563
              BandType = 7
            end
            object ppDBCalc112: TppDBCalc
              UserName = 'DBCalc112'
              DataField = 'CREMTOCOB'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 117211
              mmTop = 2381
              mmWidth = 42598
              BandType = 7
            end
            object ppLine45: TppLine
              UserName = 'Line45'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 19845
              mmTop = 7144
              mmWidth = 149754
              BandType = 7
            end
            object ppLine46: TppLine
              UserName = 'Line46'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 19845
              mmTop = 794
              mmWidth = 149754
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'MOVIMIENTOS'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 84138
              mmTop = 2381
              mmWidth = 31222
              BandType = 7
            end
          end
        end
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'TOTASOID'
        DataPipeline = ppDBData01
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBData01'
        mmHeight = 3175
        mmLeft = 102924
        mmTop = 2117
        mmWidth = 23813
        BandType = 7
      end
    end
  end
  object RepCatRiesgo: TppReport
    AutoStop = False
    DataPipeline = DbRepCatRiesgo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Documents and Settings\ealva\Mis documentos\RepoCart\edy.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 392
    Top = 272
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepCatRiesgo'
    object ppHeaderBand11: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel196: TppLabel
        UserName = 'Label196'
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
      object ppLabel197: TppLabel
        UserName = 'Label197'
        Caption = 'Sistema De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 4498
        mmWidth = 31623
        BandType = 0
      end
      object ppLabel198: TppLabel
        UserName = 'Label198'
        Caption = 'Fecha   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 0
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel199: TppLabel
        UserName = 'Label199'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel200: TppLabel
        UserName = 'Label200'
        Caption = 'Pag      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 8996
        mmWidth = 11430
        BandType = 0
      end
      object ppSystemVariable92: TppSystemVariable
        UserName = 'SystemVariable92'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable93: TppSystemVariable
        UserName = 'SystemVariable93'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable94: TppSystemVariable
        UserName = 'SystemVariable94'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 179388
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object TitCat: TppLabel
        UserName = 'LblTit1'
        AutoSize = False
        Caption = 
          'RECUPERACION DE CUOTAS VENCIDAS POR CATEGORIA DE RIESGO :  JULIO' +
          ' 2006'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 23019
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel204: TppLabel
        UserName = 'Label204'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel854: TppLabel
        UserName = 'Label854'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel856: TppLabel
        UserName = 'Label503'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel195: TppLabel
        UserName = 'Label195'
        Caption = 'Categoria de Riesgo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 36777
        mmTop = 30956
        mmWidth = 29104
        BandType = 0
      end
    end
    object ppDetailBand13: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText129: TppDBText
        UserName = 'DBText129'
        DataField = 'FORPAGODES'
        DataPipeline = DbRepCatRiesgo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCatRiesgo'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 0
        mmWidth = 62442
        BandType = 4
      end
      object ppDBText130: TppDBText
        UserName = 'DBText130'
        DataField = 'CREMTOCOB'
        DataPipeline = DbRepCatRiesgo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCatRiesgo'
        mmHeight = 4233
        mmLeft = 121179
        mmTop = 0
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText375: TppDBText
        UserName = 'DBText1301'
        DataField = 'NUMMOV'
        DataPipeline = DbRepCatRiesgo
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCatRiesgo'
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand11: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLine54: TppLine
        UserName = 'Line54'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 35983
        mmTop = 0
        mmWidth = 113505
        BandType = 7
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 35983
        mmTop = 5821
        mmWidth = 113505
        BandType = 7
      end
      object ppLabel201: TppLabel
        UserName = 'Label1'
        Caption = 'Total General  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 1058
        mmWidth = 25400
        BandType = 7
      end
      object ppLabel206: TppLabel
        UserName = 'Label206'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 1058
        mmWidth = 2910
        BandType = 7
      end
      object ppDBCalc125: TppDBCalc
        UserName = 'DBCalc125'
        DataField = 'CREMTOCOB'
        DataPipeline = DbRepCatRiesgo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCatRiesgo'
        mmHeight = 4233
        mmLeft = 121179
        mmTop = 1058
        mmWidth = 25928
        BandType = 7
      end
      object ppDBCalc286: TppDBCalc
        UserName = 'DBCalc286'
        DataField = 'NUMMOV'
        DataPipeline = DbRepCatRiesgo
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCatRiesgo'
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 1058
        mmWidth = 18256
        BandType = 7
      end
    end
    object ppGroup22: TppGroup
      BreakName = 'CFCDES_F'
      DataPipeline = DbRepCatRiesgo
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group22'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepCatRiesgo'
      object ppGroupHeaderBand22: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 17992
        mmPrintPosition = 0
        object ppDBText131: TppDBText
          UserName = 'DBText131'
          DataField = 'CFCDES_F'
          DataPipeline = DbRepCatRiesgo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbRepCatRiesgo'
          mmHeight = 3704
          mmLeft = 38365
          mmTop = 2117
          mmWidth = 64029
          BandType = 3
          GroupNo = 0
        end
        object ppLine50: TppLine
          UserName = 'Line405'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 36248
          mmTop = 7144
          mmWidth = 113505
          BandType = 3
          GroupNo = 0
        end
        object ppLine51: TppLine
          UserName = 'Line51'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 35984
          mmTop = 794
          mmWidth = 113505
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 36248
          mmTop = 16669
          mmWidth = 113505
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'Forma de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 37835
          mmTop = 12700
          mmWidth = 21844
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 100806
          mmTop = 12700
          mmWidth = 18669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'Monto '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 125942
          mmTop = 8996
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          AutoSize = False
          Caption = 'Recuperado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 126471
          mmTop = 12700
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand22: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel203: TppLabel
          UserName = 'Label203'
          Caption = 'Total x Categoria de Riesgo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 38100
          mmTop = 1323
          mmWidth = 36777
          BandType = 5
          GroupNo = 0
        end
        object ppLabel205: TppLabel
          UserName = 'Label205'
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 77788
          mmTop = 1323
          mmWidth = 2910
          BandType = 5
          GroupNo = 0
        end
        object ppLine56: TppLine
          UserName = 'Line56'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 35983
          mmTop = 0
          mmWidth = 113506
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc124: TppDBCalc
          UserName = 'DBCalc124'
          DataField = 'CREMTOCOB'
          DataPipeline = DbRepCatRiesgo
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup22
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepCatRiesgo'
          mmHeight = 4233
          mmLeft = 121179
          mmTop = 1323
          mmWidth = 25928
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc123: TppDBCalc
          UserName = 'DBCalc123'
          DataField = 'NUMMOV'
          DataPipeline = DbRepCatRiesgo
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup22
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepCatRiesgo'
          mmHeight = 4233
          mmLeft = 101600
          mmTop = 1323
          mmWidth = 18255
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object DbRepCatRiesgo: TppDBPipeline
    DataSource = DM1.dsqry5
    UserName = 'DbRepCatRiesgo'
    Left = 392
    Top = 240
  end
end
