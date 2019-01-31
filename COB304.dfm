object FRecalendarizacion: TFRecalendarizacion
  Left = 200
  Top = 136
  BorderStyle = bsDialog
  Caption = 'Recalendarizaci'#243'n'
  ClientHeight = 244
  ClientWidth = 752
  Color = 13165023
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label54: TLabel
    Left = 6
    Top = 10
    Width = 104
    Height = 15
    Caption = 'Apellidos y Nombres'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object lblTitu1: TLabel
    Left = 8
    Top = 75
    Width = 38
    Height = 15
    Caption = 'Cr'#233'dito'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object lblTitu2: TLabel
    Left = 111
    Top = 75
    Width = 46
    Height = 15
    Caption = 'Mto. Sol.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object lblTitu3: TLabel
    Left = 177
    Top = 75
    Width = 34
    Height = 15
    Caption = 'Estado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 385
    Top = 75
    Width = 29
    Height = 15
    Caption = 'Cuota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 433
    Top = 75
    Width = 32
    Height = 15
    Caption = 'Monto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 492
    Top = 75
    Width = 34
    Height = 15
    Caption = 'Amort.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 545
    Top = 75
    Width = 42
    Height = 15
    Caption = 'Mto.Int.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 608
    Top = 75
    Width = 42
    Height = 15
    Caption = 'Mto.Flat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 681
    Top = 75
    Width = 34
    Height = 15
    Caption = 'Estado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 5
    Top = 37
    Width = 80
    Height = 15
    Caption = 'C'#243'digo Modular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 118
    Top = 37
    Width = 82
    Height = 15
    Caption = 'C'#243'digo Derrama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 236
    Top = 37
    Width = 57
    Height = 13
    Caption = 'Tipo Cr'#233'dito'
  end
  object Label3: TLabel
    Left = 364
    Top = 37
    Width = 56
    Height = 13
    Caption = 'Nro. Cr'#233'dito'
  end
  object TLabel
    Left = 501
    Top = 32
    Width = 172
    Height = 15
    Caption = 'Oficina de Origen de la Solicitud'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 554
    Top = 10
    Width = 91
    Height = 15
    Caption = 'Fecha de Registro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object dbeasonom: TwwDBEdit
    Left = 122
    Top = 10
    Width = 420
    Height = 19
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Frame.Enabled = True
    Frame.FocusBorders = [efRightBorder, efBottomBorder]
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    ParentFont = False
    TabOrder = 0
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = dbeasonomExit
  end
  object clbCronoAux: TCheckListBox
    Left = 125
    Top = 104
    Width = 100
    Height = 41
    ItemHeight = 13
    TabOrder = 7
    Visible = False
  end
  object clbCrono: TCheckListBox
    Left = 5
    Top = 89
    Width = 372
    Height = 81
    OnClickCheck = clbCronoClickCheck
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 5
  end
  object clbCuotas: TListBox
    Left = 381
    Top = 89
    Width = 366
    Height = 81
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 6
  end
  object dbecodigomodular: TwwDBEdit
    Left = 5
    Top = 52
    Width = 105
    Height = 19
    BorderStyle = bsNone
    Color = 13165023
    DataField = 'ASOCODMOD'
    DataSource = DM1.dsAso
    Enabled = False
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeasoid: TwwDBEdit
    Left = 118
    Top = 52
    Width = 113
    Height = 19
    BorderStyle = bsNone
    Color = 13165023
    DataField = 'ASOID'
    DataSource = DM1.dsAso
    Enabled = False
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    Picture.PictureMask = '*15[#]'
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbetipcre: TwwDBEdit
    Left = 238
    Top = 52
    Width = 55
    Height = 19
    BorderStyle = bsNone
    Color = 13165023
    Enabled = False
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbenrocre: TwwDBEdit
    Left = 304
    Top = 52
    Width = 189
    Height = 19
    BorderStyle = bsNone
    Color = 13165023
    DataField = 'CREDID'
    DataSource = DM1.dsCredito
    Enabled = False
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object pnlCabecera: TPanel
    Left = 4
    Top = 179
    Width = 741
    Height = 54
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    Enabled = False
    TabOrder = 8
    object TLabel
      Left = 28
      Top = 6
      Width = 58
      Height = 15
      Caption = 'Saldo Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 109
      Top = 6
      Width = 100
      Height = 13
      Caption = 'F. Recalendarizaci'#243'n'
    end
    object TLabel
      Left = 223
      Top = 6
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
    object Label10: TLabel
      Left = 291
      Top = 6
      Width = 61
      Height = 13
      Alignment = taCenter
      Caption = 'Monto Cuota'
      WordWrap = True
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 667
      Top = 15
      Width = 32
      Height = 31
      Hint = 'Devuelve Aporte'
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
      TabOrder = 6
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object Z2bbtnCancel: TfcShapeBtn
      Left = 701
      Top = 15
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
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
    end
    object Z2bbtnNuevo: TfcShapeBtn
      Left = 633
      Top = 15
      Width = 32
      Height = 31
      Hint = 'Nueva Devoluci'#243'n'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D760100000000000076000000280000001F000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333033333333333333333333333333333330333333333333
        333333333333333333303000000000003333337777777777733030FFFFFFFFF0
        3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
        3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
        3333337F33333333733030FFFFFFFFF03333337F33333FFF733030FFFF000000
        3333337F33337777733030FFFF00FF033333337F33337F37333030FFFF00F033
        3333337F33337F77333030FFFF0003333333337FFFFF77333330300000003333
        3333337777777333333033333333333333333333333333333330}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnNuevoClick
    end
    object dbesaldo: TwwDBEdit
      Left = 6
      Top = 22
      Width = 97
      Height = 19
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      Picture.PictureMask = '#[#][#][#][#][#][#][#][#][#][.][#][#]'
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbdtpfecrec: TwwDBDateTimePicker
      Left = 109
      Top = 22
      Width = 92
      Height = 19
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = 13165023
      Epoch = 1950
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ShowButton = True
      TabOrder = 1
    end
    object z2bbtnCrono: TfcShapeBtn
      Left = 596
      Top = 15
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
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnCronoClick
    end
    object edtMtoCuo: TEdit
      Left = 291
      Top = 22
      Width = 57
      Height = 19
      AutoSelect = False
      AutoSize = False
      Color = 13165023
      Enabled = False
      TabOrder = 2
    end
    object dbencuotas: TwwDBEdit
      Left = 225
      Top = 22
      Width = 40
      Height = 19
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbencuotasExit
      OnKeyPress = dbencuotasKeyPress
    end
    object Z2bbtnImprime: TfcShapeBtn
      Left = 561
      Top = 15
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 8
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnImprimeClick
    end
  end
  object dblcdOfDes: TwwDBLookupComboDlg
    Left = 500
    Top = 52
    Width = 62
    Height = 19
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    CharCase = ecUpperCase
    BorderStyle = bsNone
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    Selected.Strings = (
      'OFDESID'#9'3'#9'CODIGO'#9'F'
      'OFDESNOM'#9'20'#9'NOMBRE'#9'F'
      'OFDESABR'#9'15'#9'ABREV'#9'F')
    LookupTable = DM1.cdsOfDes
    LookupField = 'OFDESID'
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    Color = 13165023
    Frame.Enabled = True
    Frame.FocusBorders = [efRightBorder, efBottomBorder]
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    ParentFont = False
    TabOrder = 9
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = True
    UseTFields = False
    ShowMatchText = True
    OnExit = dblcdOfDesExit
  end
  object dbeDescOfDes: TwwDBEdit
    Left = 566
    Top = 52
    Width = 169
    Height = 19
    BorderStyle = bsNone
    Color = 13165023
    Enabled = False
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 10
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbdtpFechaSol: TwwDBDateTimePicker
    Left = 656
    Top = 8
    Width = 88
    Height = 21
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -8
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Color = 13165023
    Epoch = 1950
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    ShowButton = True
    TabOrder = 11
    OnExit = dbdtpFechaSolExit
  end
  object ppDBCronograma: TppDBPipeline
    UserName = 'DBCronograma'
    Left = 270
    Top = 13
  end
  object ppRepCronograma: TppReport
    AutoStop = False
    DataPipeline = ppDBCronograma
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
    Template.FileName = 'T:\SOLDb\SOLFormatos\Cob\Dema\CronogramaPagos.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepCronogramaPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 369
    Top = 17
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBCronograma'
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CRECUOTA'
        DataPipeline = ppDBCronograma
        DisplayFormat = '0#'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 529
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'PERIODO'
        DataPipeline = ppDBCronograma
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CRECAPITAL'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 61913
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CREAMORT'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 87313
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTOINT'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 113242
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREMTOFLAT'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 140494
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREMTO'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 168805
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
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
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
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'Cronograma de Pagos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 13
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 77523
          mmTop = 5292
          mmWidth = 46567
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Fecha :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 794
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Hora :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 6350
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169598
          mmTop = 529
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable2: TppSystemVariable
          UserName = 'SystemVariable2'
          VarType = vtTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169863
          mmTop = 6085
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'Tipo de Pr'#233'stamo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 11377
          mmWidth = 29104
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'Monto :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 22225
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Inter'#233's :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 27252
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = 'Comisi'#243'n FLAT :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 32279
          mmWidth = 25665
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'Tiempo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 37571
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = 'Tipo de Cuotas :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 16933
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'meses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 54769
          mmTop = 37571
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 7144
          mmTop = 55563
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 33338
          mmTop = 55563
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Cuota a Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 162190
          mmTop = 55563
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Capital'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 66146
          mmTop = 55563
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'Amortizaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 86519
          mmTop = 55563
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Interes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 115888
          mmTop = 55563
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Caption = 'Comisi'#243'n FLAT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 134409
          mmTop = 55563
          mmWidth = 23548
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
          mmWidth = 265
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
          mmWidth = 265
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
          mmWidth = 265
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
          mmWidth = 265
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
          mmWidth = 265
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
          mmWidth = 265
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
          mmWidth = 265
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
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Label1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 11377
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Label2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 16933
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Label3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 22225
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Label4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 27252
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Label5'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43392
          mmTop = 32279
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Label6'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 43127
          mmTop = 37571
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 52388
          mmWidth = 183092
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 66940
          mmWidth = 183092
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 21960
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTO'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 164571
          mmTop = 3440
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CREAMORT'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
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
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 32808
          mmTop = 3440
          mmWidth = 7408
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
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREMTOINT'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 113242
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          AutoSize = True
          DataField = 'CREMTOFLAT'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 136261
          mmTop = 3440
          mmWidth = 33867
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 8996
          mmWidth = 183092
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 0
          mmWidth = 183092
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
