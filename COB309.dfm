object FSeguiRefinan: TFSeguiRefinan
  Left = 0
  Top = 26
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsSingle
  Caption = 'Seguimiento de Cr'#233'ditos Refinanciados'
  ClientHeight = 528
  ClientWidth = 789
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCuotasAnt: TPanel
    Left = 0
    Top = 21
    Width = 476
    Height = 447
    Color = 10207162
    TabOrder = 3
    object Label2: TLabel
      Left = 45
      Top = 85
      Width = 51
      Height = 17
      Caption = 'Fch Otog'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 206
      Top = 85
      Width = 63
      Height = 17
      Caption = 'Mto Solict.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 272
      Top = 85
      Width = 45
      Height = 17
      Caption = '# Cuota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 319
      Top = 85
      Width = 59
      Height = 17
      Caption = 'Tipo Cuota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 136
      Top = 85
      Width = 40
      Height = 17
      Caption = 'Moneda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Label1: TLabel
      Left = 2
      Top = 85
      Width = 25
      Height = 17
      Caption = 'USE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbgCuotasAnt: TwwDBGrid
      Left = 2
      Top = 128
      Width = 470
      Height = 313
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = False
      Color = 13165023
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgFooter3DCells]
      TabOrder = 5
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dbgCuotasAntDblClick
      FooterColor = 13165023
      FooterCellColor = clInfoBk
      FooterHeight = 23
    end
    object edtFecOtor: TEdit
      Left = 45
      Top = 101
      Width = 89
      Height = 21
      TabOrder = 0
    end
    object edtmto: TEdit
      Left = 180
      Top = 101
      Width = 89
      Height = 21
      AutoSelect = False
      AutoSize = False
      TabOrder = 1
    end
    object edtCuota: TEdit
      Left = 281
      Top = 101
      Width = 25
      Height = 21
      TabOrder = 2
    end
    object edtTipo: TEdit
      Left = 319
      Top = 101
      Width = 71
      Height = 21
      TabOrder = 3
    end
    object edtmoneda: TEdit
      Left = 136
      Top = 101
      Width = 41
      Height = 21
      TabOrder = 4
    end
    object dbgRefinan: TwwDBGrid
      Left = 2
      Top = 2
      Width = 335
      Height = 80
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      OnRowChanged = dbgRefinanRowChanged
      FixedCols = 0
      ShowHorzScrollBar = False
      Color = 13165023
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgWordWrap, dgPerfectRowFit]
      ReadOnly = True
      TabOrder = 6
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
    object edtUse: TEdit
      Left = 2
      Top = 101
      Width = 41
      Height = 21
      TabOrder = 7
    end
  end
  object dbgNuevos: TwwDBGrid
    Left = 478
    Top = 21
    Width = 307
    Height = 489
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = 13165023
    Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
  object pnlDetalle: TPanel
    Left = 120
    Top = 120
    Width = 569
    Height = 289
    BevelInner = bvLowered
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 4
    Visible = False
    DesignSize = (
      565
      285)
    object Label11: TLabel
      Left = 6
      Top = 161
      Width = 57
      Height = 13
      Caption = 'Forma Pago'
      Transparent = True
    end
    object Label12: TLabel
      Left = 148
      Top = 161
      Width = 31
      Height = 13
      Caption = 'Banco'
      Transparent = True
    end
    object Label13: TLabel
      Left = 7
      Top = 199
      Width = 35
      Height = 13
      Caption = 'Cta.Cte'
      Transparent = True
    end
    object Label14: TLabel
      Left = 6
      Top = 238
      Width = 39
      Height = 13
      Caption = 'Moneda'
      Transparent = True
    end
    object Label15: TLabel
      Left = 69
      Top = 238
      Width = 48
      Height = 13
      Caption = 'T. Cambio'
      Transparent = True
    end
    object Label16: TLabel
      Left = 130
      Top = 238
      Width = 55
      Height = 13
      Caption = 'Documento'
      Transparent = True
    end
    object Label17: TLabel
      Left = 304
      Top = 122
      Width = 60
      Height = 13
      Caption = 'Observaci'#243'n'
      Transparent = True
    end
    object Label8: TLabel
      Left = 77
      Top = 122
      Width = 64
      Height = 13
      Caption = 'Mto. Cobrado'
      Transparent = True
    end
    object Label9: TLabel
      Left = 167
      Top = 122
      Width = 51
      Height = 13
      Caption = 'Mto. Saldo'
      Transparent = True
    end
    object Label10: TLabel
      Left = 236
      Top = 122
      Width = 59
      Height = 13
      Caption = 'Mto. Exceso'
      Transparent = True
    end
    object Label7: TLabel
      Left = 19
      Top = 122
      Width = 52
      Height = 13
      Caption = 'Mto. Cuota'
      Transparent = True
    end
    object stDetalle: TStaticText
      Left = 2
      Top = 2
      Width = 561
      Height = 20
      Align = alTop
      BorderStyle = sbsSingle
      Caption = 'Detalle de Cuotas '
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object dbgDetalle: TwwDBGrid
      Left = 2
      Top = 22
      Width = 561
      Height = 99
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = False
      Align = alTop
      Color = 13165023
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgFooter3DCells]
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      FooterColor = 13165023
      FooterCellColor = clInfoBk
      FooterHeight = 23
    end
    object z2bbtnAcepta: TfcShapeBtn
      Left = 547
      Top = 4
      Width = 15
      Height = 16
      Hint = 'Proceso de Refinanciaci'#243'n'
      Anchors = [akLeft, akBottom]
      Caption = 'X'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnAceptaClick
    end
    object dbeMtoCob: TwwDBEdit
      Left = 76
      Top = 138
      Width = 65
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeMtosal: TwwDBEdit
      Left = 145
      Top = 138
      Width = 73
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeMtoExc: TwwDBEdit
      Left = 222
      Top = 138
      Width = 73
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeForpago: TwwDBEdit
      Left = 6
      Top = 177
      Width = 139
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeBanco: TwwDBEdit
      Left = 148
      Top = 177
      Width = 139
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCtacte: TwwDBEdit
      Left = 7
      Top = 215
      Width = 139
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbrMoneda: TwwDBEdit
      Left = 6
      Top = 254
      Width = 57
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbtTCambio: TwwDBEdit
      Left = 69
      Top = 254
      Width = 57
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeDocu: TwwDBEdit
      Left = 130
      Top = 254
      Width = 137
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 12
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeMtoCuo: TwwDBEdit
      Left = 6
      Top = 138
      Width = 65
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      CharCase = ecUpperCase
      DataSource = DM1.dsqry5
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbremswObs: TDBRichEdit
      Left = 304
      Top = 136
      Width = 249
      Height = 111
      DataSource = DM1.dsqry5
      ScrollBars = ssHorizontal
      TabOrder = 13
    end
  end
  object stRefinan: TStaticText
    Left = 0
    Top = 1
    Width = 151
    Height = 20
    BorderStyle = sbsSingle
    Caption = 'Cr'#233'dito(s) Refinanciado(s)'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object stNuevos: TStaticText
    Left = 481
    Top = 1
    Width = 238
    Height = 20
    BorderStyle = sbsSingle
    Caption = 'Cronograma del Nuevo Cr'#233'dito Generado'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object z2bbtnRefiImp: TfcShapeBtn
    Left = 438
    Top = 474
    Width = 32
    Height = 31
    Hint = 'Nota de Refinanciamiento'
    Color = 10207162
    DitherColor = clWhite
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
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 5
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnRefiImpClick
  end
  object rptNota: TppReport
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
    Template.FileName = 'C:\SOLDB\Solformatos\Cob\Dema\RefiMasivo.rtm'
    Units = utMMThousandths
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 490
    Top = 178
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 57150
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CIADES'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 529
        mmTop = 529
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'AREADES'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 529
        mmTop = 5556
        mmWidth = 17198
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170392
        mmTop = 529
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170657
        mmTop = 5556
        mmWidth = 14288
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'TIT1'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3969
        mmLeft = 58738
        mmTop = 11113
        mmWidth = 6350
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'NROREFI'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3969
        mmLeft = 65617
        mmTop = 16140
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Datos del Docente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 23283
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Apellidos y nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 29369
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'C'#243'digo modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 34131
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'C'#243'd. de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 120915
        mmTop = 29369
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'DNI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 121179
        mmTop = 34131
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cta. Cte. N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 121179
        mmTop = 38894
        mmWidth = 14552
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 45244
        mmWidth = 187855
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Datos del Cr'#233'dito Refinanciado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 46038
        mmWidth = 44450
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 529
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 5556
        mmWidth = 6085
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ASOAPENOM'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 33338
        mmTop = 29369
        mmWidth = 83609
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'ASOCODMOD'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 33338
        mmTop = 34131
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'ASOCODPAGO'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 145521
        mmTop = 29104
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'ASODNI'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 145521
        mmTop = 34131
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'ASONCTA'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 145521
        mmTop = 38894
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Nro del Cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 52388
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Descripci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 28575
        mmTop = 52388
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 64294
        mmTop = 52388
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Moneda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 81227
        mmTop = 52388
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Saldo a Descontar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 95250
        mmTop = 52388
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Detalle de cuotas pagada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 127265
        mmTop = 52388
        mmWidth = 35983
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 56621
        mmWidth = 187855
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      DataPipeline = dbeppNota
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'CREDID'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'TIPCREDES'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 28575
        mmTop = 265
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CREFOTORG'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 64294
        mmTop = 265
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'TMONABR'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 87577
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        DataField = 'COBRADO'
        DataPipeline = dbeppNota
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 107421
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = True
        DataField = 'DETALLE'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 0
        mmWidth = 69586
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 66146
      mmPrintPosition = 0
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'TOTAL DE DESCUENTOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 8467
        mmTop = 1058
        mmWidth = 33338
        BandType = 7
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'TMONABR'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 57415
        mmTop = 1058
        mmWidth = 5821
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COBRADO'
        DataPipeline = dbeppNota
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 103981
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'TCAMBIO'
        DataPipeline = dbeppNota
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 141288
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 0
        mmWidth = 187855
        BandType = 7
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 5821
        mmWidth = 187855
        BandType = 7
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 45244
        mmTop = 10319
        mmWidth = 85725
        BandType = 7
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 45244
        mmTop = 16404
        mmWidth = 85725
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Datos Refinanciados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 11906
        mmWidth = 29369
        BandType = 7
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 45244
        mmTop = 40481
        mmWidth = 85725
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'N'#176'. del Refinanciamiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 19315
        mmWidth = 30692
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Fecha de Refinanciamiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 24871
        mmWidth = 34396
        BandType = 7
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Saldo Refinanciado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 30163
        mmWidth = 24606
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Forma de Refinanciado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 35454
        mmWidth = 29369
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 30427
        mmLeft = 45244
        mmTop = 10319
        mmWidth = 265
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 30427
        mmLeft = 130704
        mmTop = 10319
        mmWidth = 265
        BandType = 7
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'NROREFI'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 99219
        mmTop = 19315
        mmWidth = 30427
        BandType = 7
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'FREG'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 99219
        mmTop = 24871
        mmWidth = 30427
        BandType = 7
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'COBRADO'
        DataPipeline = dbeppNota
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 99219
        mmTop = 30163
        mmWidth = 30427
        BandType = 7
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'FORMA'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 99219
        mmTop = 35454
        mmWidth = 30427
        BandType = 7
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'TMONABR'
        DataPipeline = dbeppNota
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbeppNota'
        mmHeight = 3704
        mmLeft = 92075
        mmTop = 30163
        mmWidth = 5821
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Equipo de Cobranza'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 30427
        mmTop = 61913
        mmWidth = 28840
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 22490
        mmTop = 60854
        mmWidth = 48419
        BandType = 7
      end
    end
  end
  object dbeppNota: TppBDEPipeline
    UserName = 'dbeppNota'
    Left = 522
    Top = 178
  end
end
