object FReprCtaCte: TFReprCtaCte
  Left = 255
  Top = 139
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recaudadores - Cta Cte'
  ClientHeight = 246
  ClientWidth = 603
  Color = 12904163
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object Z2bbtnAceptar: TfcShapeBtn
    Left = 528
    Top = 211
    Width = 32
    Height = 31
    Hint = 'Aceptar'
    Color = 13165023
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 0
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnAceptarClick
  end
  object Z2bbtnCancel: TfcShapeBtn
    Left = 567
    Top = 211
    Width = 32
    Height = 31
    Hint = 'Cancelar'
    Cancel = True
    Color = 13165023
    DitherColor = clWhite
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 1
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnCancelClick
  end
  object z2bbtnCrono: TfcShapeBtn
    Left = 491
    Top = 211
    Width = 32
    Height = 31
    Hint = 'Cronograma para Cr'#233'ditos en Efectivo'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
      777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
      79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
      777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
      79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
      CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 2
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnCronoClick
  end
  object pnlPrin: TPanel
    Left = 3
    Top = 8
    Width = 593
    Height = 193
    Color = 10207162
    TabOrder = 3
    object lblCodigo: TLabel
      Left = 12
      Top = 3
      Width = 35
      Height = 15
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblRecauda: TLabel
      Left = 84
      Top = 3
      Width = 60
      Height = 15
      Caption = 'Recaudador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblConcepto: TLabel
      Left = 12
      Top = 52
      Width = 47
      Height = 15
      Caption = 'Concepto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblMPrest: TLabel
      Left = 301
      Top = 52
      Width = 64
      Height = 15
      Caption = 'Monto Prest.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblVinteres: TLabel
      Left = 385
      Top = 52
      Width = 68
      Height = 15
      Caption = 'Valor Interes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblGAdminis: TLabel
      Left = 456
      Top = 52
      Width = 57
      Height = 15
      Caption = 'Gasto Adm.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblNCuota: TLabel
      Left = 527
      Top = 52
      Width = 60
      Height = 15
      Caption = 'Nro. Cuotas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblObserva: TLabel
      Left = 12
      Top = 98
      Width = 65
      Height = 15
      Caption = 'Observaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblMCuota: TLabel
      Left = 12
      Top = 146
      Width = 64
      Height = 15
      Caption = 'Monto Cuota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblMDeuda: TLabel
      Left = 106
      Top = 146
      Width = 67
      Height = 15
      Caption = 'Monto Deuda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblMPagado: TLabel
      Left = 202
      Top = 146
      Width = 71
      Height = 15
      Caption = 'Monto Pagado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblSDeuda: TLabel
      Left = 298
      Top = 146
      Width = 64
      Height = 15
      Caption = 'Saldo Deuda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblFInicio: TLabel
      Left = 392
      Top = 146
      Width = 65
      Height = 15
      Caption = 'Fecha Inicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblFFin: TLabel
      Left = 484
      Top = 146
      Width = 49
      Height = 15
      Caption = 'Fecha Fin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbecodigo: TwwDBEdit
      Left = 12
      Top = 22
      Width = 63
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'CTANRO'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbereprid: TwwDBEdit
      Left = 84
      Top = 22
      Width = 82
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'REPRID'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbereprapenom: TwwDBEdit
      Left = 171
      Top = 22
      Width = 414
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'REPRAPENOM'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcconcid: TwwDBLookupCombo
      Left = 12
      Top = 70
      Width = 61
      Height = 21
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      DataField = 'CONCID'
      LookupTable = DM1.cdsconcepto
      LookupField = 'CONCID'
      Options = [loColLines, loTitles]
      Color = 10207162
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      SearchDelay = 2
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcconcidExit
      OnNotInList = dblcconcidNotInList
    end
    object edtconcdes: TEdit
      Left = 78
      Top = 67
      Width = 216
      Height = 23
      CharCase = ecUpperCase
      Color = 10207162
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbemtoPrest: TwwDBEdit
      Left = 301
      Top = 70
      Width = 76
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'MTOBAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbemtoPrestExit
      OnKeyPress = dbemtoPrestKeyPress
    end
    object dbeValInt: TwwDBEdit
      Left = 385
      Top = 70
      Width = 60
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'IntValor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeValIntExit
      OnKeyPress = dbemtoPrestKeyPress
    end
    object dbeValFlat: TwwDBEdit
      Left = 456
      Top = 70
      Width = 60
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'FLATVALOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeValFlatExit
      OnKeyPress = dbemtoPrestKeyPress
    end
    object dbeNumcuo: TwwDBEdit
      Left = 527
      Top = 70
      Width = 60
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'Numcuo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeNumcuoExit
      OnKeyPress = dbemtoPrestKeyPress
    end
    object dbeobv: TwwDBEdit
      Left = 12
      Top = 118
      Width = 284
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'REFER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbemtocuota: TwwDBEdit
      Left = 12
      Top = 165
      Width = 85
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'MTOCUO'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbemtodeuda: TwwDBEdit
      Left = 106
      Top = 165
      Width = 85
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'MTONET'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbemtopagado: TwwDBEdit
      Left = 202
      Top = 165
      Width = 85
      Height = 21
      BorderStyle = bsNone
      DataField = 'MTOPAG'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      TabOrder = 12
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbemtosaldo: TwwDBEdit
      Left = 298
      Top = 165
      Width = 85
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'MTOSLD'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 13
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeFecIni: TwwDBEdit
      Left = 392
      Top = 165
      Width = 85
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'Fecini'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 14
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeFecfin: TwwDBEdit
      Left = 484
      Top = 165
      Width = 85
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'FecFin'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 15
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object ppdbSolicitud: TppDBPipeline
    UserName = 'dbSolicitud'
    Left = 558
    Top = 133
  end
  object ppSolicitud: TppReport
    AutoStop = False
    DataPipeline = ppdbSolicitud
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report1'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\CronogramaCTACTE.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppSolicitudPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 450
    Top = 139
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbSolicitud'
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREMTO'
        DataPipeline = ppdbSolicitud
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbSolicitud'
        mmHeight = 4233
        mmLeft = 65881
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMCUOTA'
        DataPipeline = ppdbSolicitud
        DisplayFormat = '0#'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbSolicitud'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 529
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PERIODO'
        DataPipeline = ppdbSolicitud
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbSolicitud'
        mmHeight = 4233
        mmLeft = 21960
        mmTop = 529
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CREANO'
        DataPipeline = ppdbSolicitud
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbSolicitud'
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 529
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CRECAPCRON'
        DataPipeline = ppdbSolicitud
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbSolicitud'
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CREAMORT'
        DataPipeline = ppdbSolicitud
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbSolicitud'
        mmHeight = 4233
        mmLeft = 87313
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREINTERES'
        DataPipeline = ppdbSolicitud
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbSolicitud'
        mmHeight = 4233
        mmLeft = 113242
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREFLAT'
        DataPipeline = ppdbSolicitud
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbSolicitud'
        mmHeight = 4233
        mmLeft = 140494
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 4763
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 20108
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 58208
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 85196
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 109538
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 133879
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 160602
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 187325
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'dbtNroCre'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 67469
        mmPrintPosition = 0
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Cuota a Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 59002
          mmTop = 55563
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'Cronograma de Pagos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 13
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 77523
          mmTop = 5292
          mmWidth = 50271
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Fecha :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 794
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Hora :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 6350
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169598
          mmTop = 529
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable2: TppSystemVariable
          UserName = 'SystemVariable2'
          VarType = vtTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169863
          mmTop = 6085
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          AutoSize = False
          Caption = 'Monto :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 23548
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          AutoSize = False
          Caption = 'Inter'#233's :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 29633
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          AutoSize = False
          Caption = 'Comisi'#243'n FLAT :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 35719
          mmWidth = 25665
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          AutoSize = False
          Caption = 'Tiempo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 42333
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel107: TppLabel
          UserName = 'Label107'
          AutoSize = False
          Caption = 'Asociado :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 11377
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel125: TppLabel
          UserName = 'Label125'
          AutoSize = False
          Caption = 'Nro Cr'#233'dito :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 23548
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel128: TppLabel
          UserName = 'Label128'
          AutoSize = False
          Caption = 'Fecha :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 29633
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel130: TppLabel
          UserName = 'Label130'
          Caption = 'Moneda :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 35719
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object dbtAsoid: TppDBText
          UserName = 'dbtAsoid'
          DataField = 'REPRID'
          DataPipeline = ppdbSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 11377
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
        object dbtAsoApe: TppDBText
          UserName = 'dbtAsoApe'
          DataField = 'REPNOM'
          DataPipeline = ppdbSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 17198
          mmWidth = 83873
          BandType = 3
          GroupNo = 0
        end
        object dbtNroCre: TppDBText
          UserName = 'dbtNroCre'
          DataField = 'CTANRO'
          DataPipeline = ppdbSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 23548
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
        end
        object dbtFecOto: TppDBText
          UserName = 'dbtFecOto'
          DataField = 'FECOTOR'
          DataPipeline = ppdbSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 29633
          mmWidth = 41540
          BandType = 3
          GroupNo = 0
        end
        object dbtMoneda: TppDBText
          UserName = 'dbtMoneda'
          DataField = 'TMONDES'
          DataPipeline = ppdbSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 35719
          mmWidth = 58738
          BandType = 3
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'MTOBAS'
          DataPipeline = ppdbSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 23548
          mmWidth = 38894
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'INTVALOR'
          DataPipeline = ppdbSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 29633
          mmWidth = 31221
          BandType = 3
          GroupNo = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'FLATVALOR'
          DataPipeline = ppdbSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 35719
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
        object dbtCuota: TppDBText
          UserName = 'dbtCuota'
          AutoSize = True
          DataField = 'NUMCUO'
          DataPipeline = ppdbSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 42333
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          AutoSize = False
          Caption = 'meses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 137054
          mmTop = 42333
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 7144
          mmTop = 55563
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 33338
          mmTop = 55563
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Capital'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 166159
          mmTop = 55563
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'Amortizaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 86519
          mmTop = 55563
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Interes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 115888
          mmTop = 55563
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Caption = 'Comisi'#243'n FLAT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 134409
          mmTop = 55563
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4763
          mmTop = 60325
          mmWidth = 182827
          BandType = 3
          GroupNo = 0
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 4763
          mmTop = 50006
          mmWidth = 182827
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 4763
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 20108
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 58208
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 85196
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 109538
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 133879
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 160602
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 187325
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppLabel109: TppLabel
          UserName = 'Label109'
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 5027
          mmTop = 0
          mmWidth = 182563
          BandType = 5
          GroupNo = 0
        end
        object ppLabel110: TppLabel
          UserName = 'Label110'
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 5027
          mmTop = 6085
          mmWidth = 182827
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTO'
          DataPipeline = ppdbSolicitud
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 61648
          mmTop = 3440
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'CREFLAT'
          DataPipeline = ppdbSolicitud
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 138113
          mmTop = 3440
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREINTERES'
          DataPipeline = ppdbSolicitud
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 113242
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CREAMORT'
          DataPipeline = ppdbSolicitud
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbSolicitud'
          mmHeight = 4233
          mmLeft = 87313
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel124: TppLabel
          UserName = 'Label124'
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 32808
          mmTop = 3440
          mmWidth = 10583
          BandType = 5
          GroupNo = 0
        end
        object ppLine30: TppLine
          UserName = 'Line30'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 4763
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
        end
        object ppLine31: TppLine
          UserName = 'Line301'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 20108
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 58208
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine33: TppLine
          UserName = 'Line33'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 85196
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine34: TppLine
          UserName = 'Line34'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 109538
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine35: TppLine
          UserName = 'Line35'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 133879
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine36: TppLine
          UserName = 'Line36'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 160602
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine37: TppLine
          UserName = 'Line37'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 187325
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
