object FRepDevCuotaEfecTDes: TFRepDevCuotaEfecTDes
  Left = 195
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas'
  ClientHeight = 367
  ClientWidth = 525
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 6
    Top = 6
    Width = 513
    Height = 355
    BevelOuter = bvNone
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 11
      Top = 2
      Width = 447
      Height = 54
      Caption = 'Devoluci'#243'n de Cuotas Efectuadas seg'#250'n Tipo de Desembolso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      WordWrap = True
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 416
      Top = 305
      Width = 32
      Height = 31
      Hint = 'Aceptar '
      Color = 13165023
      DitherColor = clWhite
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
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 458
      Top = 305
      Width = 32
      Height = 31
      Hint = 'Cancelar'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033911833333333333333333F333333333333
        0000339111833333911333333388F333333F3333000033911118333911118333
        38F38F333F88F33300003339111183911111833338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003339
        1118333911183333338F33838F338F33000033911183333391118333338FF833
        38F338F300003391183333333911133333388333338FFF830000333913333333
        3391833333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object zzzzz: TPanel
      Left = 7
      Top = 73
      Width = 498
      Height = 216
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object TLabel
        Left = 15
        Top = 166
        Width = 72
        Height = 15
        Caption = 'Tipo Pr'#233'stamo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 15
        Top = 87
        Width = 71
        Height = 15
        Caption = 'Departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 229
        Top = 87
        Width = 49
        Height = 15
        Caption = 'Provincia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 15
        Top = 126
        Width = 94
        Height = 15
        Caption = 'Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 228
        Top = 126
        Width = 23
        Height = 15
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object wwDBLookupComboDlg4: TwwDBLookupComboDlg
        Left = 15
        Top = 183
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 71
        Top = 183
        Width = 250
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object GroupBox1: TGroupBox
        Left = 17
        Top = 11
        Width = 280
        Height = 70
        Caption = 'Periodo'
        TabOrder = 2
        object TLabel
          Left = 144
          Top = 15
          Width = 49
          Height = 15
          Caption = 'Fecha Fin'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object TLabel
          Left = 12
          Top = 15
          Width = 65
          Height = 15
          Caption = 'Fecha Inicio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 144
          Top = 32
          Width = 121
          Height = 21
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
          TabOrder = 0
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 8
          Top = 32
          Width = 121
          Height = 21
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
      end
      object RadioGroup1: TRadioGroup
        Left = 308
        Top = 3
        Width = 165
        Height = 78
        Items.Strings = (
          'Todos los Departamentos'
          'Departamento'
          'Use'
          'Tipo de Pr'#233'stamo')
        TabOrder = 3
      end
      object wwDBLookupComboDlg1: TwwDBLookupComboDlg
        Left = 15
        Top = 104
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit1: TwwDBEdit
        Left = 71
        Top = 104
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupComboDlg2: TwwDBLookupComboDlg
        Left = 229
        Top = 104
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit3: TwwDBEdit
        Left = 284
        Top = 104
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupComboDlg3: TwwDBLookupComboDlg
        Left = 15
        Top = 141
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit39: TwwDBEdit
        Left = 70
        Top = 141
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupComboDlg5: TwwDBLookupComboDlg
        Left = 228
        Top = 141
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit43: TwwDBEdit
        Left = 282
        Top = 141
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object ppRepDevCuotEfecTDes: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta: 216 x 279 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepDevCuotEfecTDesPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 416
    Top = 244
    Version = '7.02'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 78846
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 145345
        mmTop = 8114
        mmWidth = 10231
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 145345
        mmTop = 12347
        mmWidth = 7761
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 145345
        mmTop = 16581
        mmWidth = 11994
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'DEVOLUCION DE CUOTAS EFECTUADAS SEGUN TIPO DE DESEMBOLSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 17992
        mmLeft = 33867
        mmTop = 28575
        mmWidth = 117475
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 159456
        mmTop = 8114
        mmWidth = 19050
        BandType = 1
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
        mmHeight = 4586
        mmLeft = 159456
        mmTop = 12347
        mmWidth = 23283
        BandType = 1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 159456
        mmTop = 16581
        mmWidth = 7761
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 69321
        mmWidth = 7144
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'N'#176' de Abono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 67733
        mmTop = 67733
        mmWidth = 10848
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'N'#176' de Oficio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 80698
        mmTop = 67733
        mmWidth = 9790
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Fecha Emisi'#243'n de Oficio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 114829
        mmTop = 67733
        mmWidth = 23019
        BandType = 1
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'Sistema de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 265
        mmTop = 22490
        mmWidth = 47096
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 77258
        mmWidth = 197909
        BandType = 1
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 66940
        mmWidth = 197909
        BandType = 1
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 65881
        mmWidth = 197909
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Cod. Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 69321
        mmWidth = 20638
        BandType = 1
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 32544
        mmTop = 69586
        mmWidth = 33602
        BandType = 1
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 'USE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 98425
        mmTop = 46831
        mmWidth = 10054
        BandType = 1
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Departamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 58473
        mmWidth = 22490
        BandType = 1
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 46831
        mmWidth = 40217
        BandType = 1
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 30163
        mmTop = 58473
        mmWidth = 13229
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Caption = 'Provincia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 98425
        mmTop = 52652
        mmWidth = 16933
        BandType = 1
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 52652
        mmWidth = 13229
        BandType = 1
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Unidad de Proceso:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 98425
        mmTop = 58473
        mmWidth = 30163
        BandType = 1
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 131763
        mmTop = 58473
        mmWidth = 59796
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Fecha Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 46831
        mmWidth = 18521
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha Fin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 52652
        mmWidth = 15346
        BandType = 1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 30692
        mmTop = 46831
        mmWidth = 17198
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 30427
        mmTop = 52652
        mmWidth = 17198
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Tipo de Desembolso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 93134
        mmTop = 67998
        mmWidth = 19050
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Fecha Recepci'#243'n de Oficio Bco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 143669
        mmTop = 67998
        mmWidth = 26723
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Fecha Pago Efectivo/Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 172509
        mmTop = 67998
        mmWidth = 24606
        BandType = 1
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D616765A60D0000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC00011080052008403012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A2B0BC49E32D03C23F66FEDCBFF00B2FDAB7793FB9924DDB7
          1BBEE29C6370EBEB5C8E89E1B5F19D849E208FC65E2A8A1BCBCBA6812D350314
          42313C8A9B50AE40DA1783401E974570BFF0ACFF00EA78F1A7FE0D7FFB0A49F4
          1BFF000658CFAC5A78A359BF82D71717B6DAACCB70B2DBA0632043B41470A495
          20804AA86E39001DDD15E65A4687AC78F525F126A3E24D774AB1BB6FF89658E9
          D29B531DB8276B4A083B9DBAE464630412080BA47E199FFA1E3C69FF00836FFE
          C2803BBA2BCC7C43E039B49F0D6ADA941E35F183CB696935C46926AA7696542C
          01C2838C8F5AEF34EF11689ABDC341A6EB3A7DECCABBDA3B6BA49182F1C90A49
          C7239F7A00D2A28A2800A28A2800A28A2800A28A2800A28AE23C63A9EBB178CF
          C25A3E8DA9A5826A0D74D3B3DB2CCAE224570AC0E0E0FCC3E5653CE73C500790
          7C6CF18E9FE24D5ED74DB386EA39B479EEADEE1A6550ACDB9172986248CA1EA0
          76AF5CF837FF0024A745FF00B6FF00FA3E4AF9A7C5E255F1AEBCB70E924C351B
          8123C685159BCC6C90A492067B64E3D4D7D2DF06FF00E494E8BFF6DFFF0047C9
          401DD56178DBFE442F117FD832E7FF0045356ED6178DBFE442F117FD832E7FF4
          535001E09FF910BC3BFF0060CB6FFD14B5BB585E09FF00910BC3BFF60CB6FF00
          D14B5BB40185E36FF910BC45FF0060CB9FFD14D5F3AFC1EF12691E15F175DDF6
          B5762D6D9EC1E157F2DDF2E648C818504F453F957D15E36FF910BC45FF0060CB
          9FFD14D5F19D007DC565796FA8D85BDF5AC9E65B5CC4B344F8237230041C1E47
          0475A9EBCBBC2BAC78AF44B8F04787F588B4C4B6D46D648D628E1956786386DD
          5977966C07C9C30DB818EBCF1EA34005145140051451400514514005709E29FF
          0092AFE00FFB88FF00E885AEEEB23C45A19D72C63486F26B1BDB6945C5A5D427
          98A500804AF47521994A9E08623DC007CB9F12740D5746F1B6A73EA364F6F0DF
          DE5C5C5AC870CB2A19188208246704641E464640C8AFA03E0DFF00C929D17FED
          BFFE8F92B47C3FAA45E2CD3750D2B5ED3AD7EDF613FD9750B3914491BB0C32C8
          AADCF96FC32961D8F5C64E15A697A3E89737DA44D6FE24B7B2B49C2E9F1E9E75
          131085A3476F9A1E18F9AF2F2C4B76CE000003D1AB0BC6DFF221788BFEC1973F
          FA29AB9C9AE7C256CBE65D5D78AED212EA8D3DDCFAB4312162146E7721546481
          9240A7F8DBC270C5E0BD6AE6C355D5EDA68ACA790F99A94F711C89E538646495
          D970413C80083820F1401D07827FE442F0EFFD832DBFF452D6ED798F85FC1FAB
          6B9E0BD127D53C57AB59816717D9ADF469C5BC71C3E5A050C7696772141249C0
          2C4280393817B77E09D3AFEE2C6EFE28F8CE3B9B695A2993ED931C3A9208C88B
          07907A5007A878DBFE442F117FD832E7FF0045357C7DA669B7BAC6A56FA769D6
          CF737770DB23893A93FC80032493C00093C57AEEA92787B5AD326D2FC33E3EF1
          86ADABDD2F956F632CF2BA4E49C32B87541B36EEC92C0019241C60FA7D9E99E1
          6F85BE1AB89A08D2DA1DBBA47924066BB915090A0B11B9CE1B0830324E00C9A0
          0C0FB25CE9DE28F8536172BE55C5BD85D43347B81C32DAA0232383823B57A8D7
          23E1AD1EEF51BA8BC55E215FF899CB1E6CEC8E7669B138FB801009948C6F7201
          FE11851CF5D40051451400514514005145140051451401CEF887C2CDAB5CC1A9
          699A8BE93ADDBA98E3BF8A25937444FCD1C8878917B807EEB608EE0D293C577F
          E1CBC8AD7C5764A96B2B61359B25636AB9720098364C0798C64965258FCC0038
          EBE8A00643345730473C12A4B0CAA1E392360CAEA46410470411DEB17C6DFF00
          221788BFEC1973FF00A29AB0344F0EF887C37E20D7AE74DD3B451A5DFCB135B5
          925F490241B1361608B0150CF85271E98CB6335A3AD41E2BD6741D474B3A5E8D
          08BDB596DCCA35595B61752B9C7D9C6719CF514017BC13FF002217877FEC196D
          FF00A296B76B93D160F15E8DA0E9DA58D2B4598595AC56FE6FF6ACABBF6285CE
          3ECE719C67193543C53E1FF1278C6D2C34DBEB4D2ED34E4BF867BD5875399CDC
          42A4EE8F0214EB90473D547D40017DF1222B9D59B4AF09E8F3F896E63DA6696D
          6554B68B2ACC0198E5777CA3DB9233B86DA4D17C0FAA5D6BF0788BC69AA43A9D
          FDB6EFB159411EDB6B22589DC99C1738DB82C3231C962148ED6CECAD34EB44B5
          B1B586D6DA3CEC8608C222E4E4E00E07249A9E800A28A2800A28A2800A28A280
          3CF7518E4D53E350D26E6FF514D3D7C3A2E45BDB5FCD6EBE6FDA0AEF3E5BAE4E
          0E3F2F415C2DE78EFC59670C1E1FD3F50BE91E0D6750D3C5E4160B7D7D2C36CB
          194CA315576FDE1DCD8070A0F5CEEF5ED5FC17E1FD77554D4F53D3FED174912C
          39334815E357F3023A060AEBBF0D8604640F41516AFE02F0AEB9A65AE9B7DA25
          A9B3B4767B78A00601116E5B698CA9009E48E84804F20500794F837E2178E6F7
          C4569A649749A97DA35292DA78B51B04B496DE184A798C9B5955A5DB212D18DE
          C9E5E7041C9D0F853F13B54D6D2F86BFA9A5CC565652DEDD4B25B4713C215942
          84F2DB3226D0EC4F960A92064E56BBFB4F86FE11B182D21B7D1E355B3BDFB7DB
          932C8CD1CDF2FCC18B138F9132B9DA768C8E281F0DFC28B610D947A63430436F
          2DAA886EA68D9A1918BBC6CCAE19D0B1276B12064E319A00F34B2F8BBAFC9F0E
          FC4377772696BAD5B4515CDA3DBCF1C9FBA9E5D9CC618ED68B70186E794DC339
          2DD3E81F12F55D77C43E1ED3934D8228A588C7ACB3F125B5DEC9F1104DD94F9A
          D9CFCDB8ED65CED38CF57ACF80FC31AFA449A86951B2C500B651048F00F24306
          119F2D97720650429C80464629F37823C373B5EBBE93007BD95E6B968F286576
          89E1624A91D5249063A65D9BEF12680391F86FF126E3C5FE25D52CAE5E078268
          9AFB4E489007B781653098E6F98E243847C73F7C9CE0A81CAF8BB5DF10E8FF00
          12F5DD76DF54D44E8DA0DE69DF6CB08E6CC6D6F3C589084660A4E400001D5F76
          46335EC29E18D1E3B8D1A74B3C49A344D0D81F31BF728C8108EBF37CA00F9B3F
          9D489E1DD263BED56F3EC48F36AC891DF7984BACEA8A5154AB12B8DA48C01CE7
          9CD00790D9FC40D66C3C63AAF8835CB971A3C9E1D6D4B4CD3BCC2AA2269D1200
          E177012BF76F9B1E6760368B1A47C60D6F53F0CA14B7D1DBC4171AB5AD8448A5
          FECF0C7709BA377C3316395914A860548E402307D2B59F05787BC41773DD6A7A
          7F9F3CF6AB672B89A44DD0AC8250BF2B0FE35073D7B671C54D73E14D0AF350BC
          BEB9D3209A6BD8921BA5906E8E7543942F19F91997B310580E01C71401C2C5E2
          BD44F8ABC39A4C5AA59EB778B71A8595CCCB1CF62BE7C10236C740EC8C4B1E5F
          6328CFCAA08E607F1478A2EBC2DE25FB56B2DA3F88F4DB737E96674B48F6C71A
          11204DEF209A16652048304373F74AAD751A2FC2DF0A687B44362F3A473DC4D0
          25CC85D6213C6B1C9185E8C85100C3EE3D79E6ADE99F0EFC25A3E9F7B6361A24
          10C37B13C170DB99A478DC00C9E6125C29C0E01001E473401E5377E34F1EC736
          83A7AEB37D72F77A2C7AABCBA568315CDC379ADC2BA170BB57180EA17A8CA927
          352E83F127C5BAC68B773492D9DE47269B7DA8DD2340D6AF691AACAB12C2EB2A
          BCA9BE300BA8257760BEEFBBE9DAA7C36F086B36F6106A1A34732585BADB5B1F
          3645658971B54B060580C71B89C64FA9CA27C35F08476F690268D184B4B79ED6
          122593708A60C2452DBB2C0EF7C649C6E38C6680389F147C4BD4742F08784D34
          E9F4D8B52D434C5D4276BC999C2471C4B26CC331726521915998924119DC772E
          F691E209B58F8B764F6F7176BA5DDF84E3BE8ED64721433CE30C5012BBB69C64
          7D335D6699E18D1F47BB1756567B275B58ECD1DE4790C70460058D7713B57804
          818C9E4E4F35910FC31F07C173A65C47A4113697B7EC6C6EA63E5ED91A51D5FE
          6F9DD8F39EB8E9C50075D4514500145145001451450014514500145145001451
          4500145145001451450014514500145145007FFFD9}
        mmHeight = 21167
        mmLeft = 1323
        mmTop = 794
        mmWidth = 34396
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5644
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 56092
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 353
        mmLeft = 1411
        mmTop = 0
        mmWidth = 197909
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 92869
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Total por USE :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 2381
        mmWidth = 23548
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Total General :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 7673
        mmWidth = 22490
        BandType = 7
      end
    end
  end
end
