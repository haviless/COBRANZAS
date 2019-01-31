object FContabilizacionRef: TFContabilizacionRef
  Left = 224
  Top = 143
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cr'#233'ditos'
  ClientHeight = 524
  ClientWidth = 744
  Color = 13165023
  Constraints.MaxHeight = 562
  Constraints.MaxWidth = 760
  Constraints.MinHeight = 562
  Constraints.MinWidth = 760
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 1
    Top = 3
    Width = 740
    Height = 517
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 10
      Top = 0
      Width = 279
      Height = 27
      AutoSize = False
      Caption = 'Contabilizacion Refinanciaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 703
      Top = 5
      Width = 25
      Height = 13
      Caption = 'V.4.0'
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 353
      Top = 480
      Width = 32
      Height = 31
      Hint = 'Filtrar Refinanciacion del Periodo'
      Color = 13165023
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Comic Sans MS'
      Font.Style = []
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
      ParentFont = False
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
    object prbAvance: TProgressBar
      Left = 5
      Top = 483
      Width = 212
      Height = 24
      TabOrder = 1
      Visible = False
    end
    object Panel1: TPanel
      Left = 7
      Top = 25
      Width = 726
      Height = 449
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
        Left = 12
        Top = 91
        Width = 74
        Height = 15
        Caption = 'Tipo de Diario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 248
        Top = 89
        Width = 77
        Height = 15
        Caption = 'Fecha Contable'
        Visible = False
      end
      object TLabel
        Left = 350
        Top = 89
        Width = 104
        Height = 15
        Caption = 'Comprobante Inicial'
        Visible = False
      end
      object dbeComprob: TwwDBEdit
        Left = 357
        Top = 106
        Width = 90
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 10
        Picture.PictureMask = '[#][#][#][#][#][#][#][#][#][#]'
        TabOrder = 4
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
      end
      object dblcTipo: TwwDBLookupCombo
        Left = 12
        Top = 106
        Width = 45
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CONTNUM'#9'9'#9'ID'#9'F'
          'CONTACTO'#9'20'#9'Contacto'#9'F')
        LookupField = 'CONTNUM'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object dbeTipo: TwwDBEdit
        Left = 61
        Top = 106
        Width = 179
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object GroupBox1: TGroupBox
        Left = 173
        Top = 8
        Width = 265
        Height = 73
        Caption = 'Rango de Fechas'
        Enabled = False
        TabOrder = 2
        object TLabel
          Left = 38
          Top = 21
          Width = 31
          Height = 15
          Caption = 'Desde'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object TLabel
          Left = 162
          Top = 21
          Width = 29
          Height = 15
          Caption = 'Hasta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object dtpFecIni: TwwDBDateTimePicker
          Left = 19
          Top = 40
          Width = 100
          Height = 23
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 0
        end
        object dtpFecFin: TwwDBDateTimePicker
          Left = 142
          Top = 40
          Width = 100
          Height = 23
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 1
        end
      end
      object dtpFComp: TwwDBDateTimePicker
        Left = 247
        Top = 106
        Width = 100
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
        Enabled = False
        ReadOnly = True
        ShowButton = True
        TabOrder = 3
        Visible = False
        OnExit = dtpFCompExit
      end
      object dbgConta: TwwDBGrid
        Left = 11
        Top = 138
        Width = 704
        Height = 301
        DisableThemesInTitle = False
        Selected.Strings = (
          'CREFOTORG'#9'11'#9'Fecha~Otorga'#9'F'
          'NROFICIO'#9'10'#9'Oficio'#9'F'
          'TIPDESEID'#9'3'#9'TD'#9'F'
          'MONTO_OTO'#9'13'#9'Monto~Otorgado'#9'F'
          'MONTO_ABO'#9'11'#9'Monto~N.Abono'#9'F'
          'MONTO_GIR'#9'13'#9'Monto~Girado'#9'F'
          'MONTO_DEP'#9'09'#9'Monto~Dep.Cont'#9'F'
          'MONTO_REAL'#9'13'#9'Girado~Real'#9'F'
          'REGISTROS'#9'05'#9'#Reg.'#9'F'
          'COMPROBANTE'#9'12'#9'Comprobante'#9'F')
        MemoAttributes = [mSizeable, mWordWrap, mGridShow]
        IniAttributes.Delimiter = ';;'
        TitleColor = 10207162
        FixedCols = 0
        ShowHorzScrollBar = True
        BorderStyle = bsNone
        Color = 13165023
        DataSource = DM1.dsQry2
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowDelete]
        MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter]
        ParentFont = False
        TabOrder = 5
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        FooterColor = 10207162
        FooterCellColor = 13165023
        object wwIButton2: TwwIButton
          Left = 0
          Top = 0
          Width = 28
          Height = 28
          AllowAllUp = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 24
        Top = 16
        Width = 130
        Height = 59
        Caption = 'Periodo'
        TabOrder = 6
        object TLabel
          Left = 76
          Top = 15
          Width = 21
          Height = 15
          Caption = 'Mes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object TLabel
          Left = 22
          Top = 15
          Width = 20
          Height = 15
          Caption = 'A'#241'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object dbseMes: TwwDBSpinEdit
          Left = 75
          Top = 28
          Width = 34
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          Value = 9.000000000000000000
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 10207162
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          LimitEditRect = True
          MaxLength = 2
          TabOrder = 0
          UnboundDataType = wwDefault
          OnExit = dbseMesExit
        end
        object dbseAno: TwwDBSpinEdit
          Left = 20
          Top = 28
          Width = 51
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 2060.000000000000000000
          MinValue = 2003.000000000000000000
          Value = 2004.000000000000000000
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 10207162
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          LimitEditRect = True
          MaxLength = 4
          TabOrder = 1
          UnboundDataType = wwDefault
          OnExit = dbseAnoExit
        end
      end
      object dbgExcel: TDBGrid
        Left = 464
        Top = 16
        Width = 248
        Height = 56
        DataSource = DM1.dsQry
        TabOrder = 7
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        Visible = False
      end
    end
    object fcShapeBtn3: TfcShapeBtn
      Left = 121
      Top = 472
      Width = 32
      Height = 31
      Hint = 'Genera Numero de Comprobante'
      Color = 13165023
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F33F333F3337F330FF0FFF0FFF
        F03337F37F337F3337F330FF0FFF0FFFF03337F37FFF7FFF37F330F00000000F
        F03337F77777777337F330FFF0FFF0FFF03337F337F337F337F330FFF0FFF0FF
        F03337F337FFF7FFF7F330FF00000000F03337F37777777737F330FFFF0FFF0F
        F03337F3337F337F37F330FFFF0FFF0FF03337F33373337337F330FFFFFFFFFF
        F03337F33333333FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      Visible = False
      OnClick = fcShapeBtn3Click
    end
    object fcShapeBtn4: TfcShapeBtn
      Left = 393
      Top = 480
      Width = 32
      Height = 31
      Hint = 'Contabilizar Refinanciaci'#243'n'
      Color = 13165023
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn4Click
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 700
      Top = 480
      Width = 32
      Height = 31
      Hint = 'Salir'
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
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object fcShapeBtn6: TfcShapeBtn
      Left = 158
      Top = 472
      Width = 32
      Height = 31
      Hint = 'Contabilizar Filiales'
      Color = 13165023
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 6
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      Visible = False
      OnClick = fcShapeBtn6Click
    end
    object bbtnConsis: TBitBtn
      Left = 237
      Top = 483
      Width = 75
      Height = 25
      Caption = 'Consistencia'
      TabOrder = 7
      OnClick = bbtnConsisClick
    end
    object fcShpDevoTrans: TfcShapeBtn
      Left = 513
      Top = 480
      Width = 32
      Height = 31
      Hint = 'Transferir Asientos Contables'
      Color = 13165023
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
        33333333373F33333333333330B03333333333337F7F33333333333330F03333
        333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
        333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
        333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
        3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
        33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
        33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
        03333337777777F7F33333330000000003333337777777773333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 8
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShpDevoTransClick
    end
    object fcShapeBtn5: TfcShapeBtn
      Left = 552
      Top = 480
      Width = 32
      Height = 31
      Hint = 'Impresi'#243'n Contabilizaci'#243'n '
      Color = 13165023
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 9
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn5Click
    end
    object fcShapeBtn7: TfcShapeBtn
      Left = 432
      Top = 480
      Width = 32
      Height = 31
      Hint = 'Impresi'#243'n Contabilizaci'#243'n Preliminar'
      Color = 13165023
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 10
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn7Click
    end
    object btnExcelOpeRef: TfcShapeBtn
      Left = 472
      Top = 480
      Width = 33
      Height = 31
      Hint = 'Exportar Excel Reporte Sustento '
      Color = 13165023
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 11
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnExcelOpeRefClick
    end
  end
  object ppr1: TppReport
    AutoStop = False
    DataPipeline = ppdb1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SolExes\CreditosConta.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 446
    Top = 351
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb1'
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppDBText99: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CNTANOMM'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4233
        mmLeft = 102129
        mmTop = 5821
        mmWidth = 8890
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 1058
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 5821
        mmWidth = 19262
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNoDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 5821
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label3'
        Caption = 'Perido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 87842
        mmTop = 5821
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label4'
        Caption = 'Reporte Contable'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 88689
        mmTop = 1058
        mmWidth = 23707
        BandType = 0
      end
      object ppLine79: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 11113
        mmWidth = 201084
        BandType = 0
      end
      object ppLine80: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 794
        mmTop = 18256
        mmWidth = 201084
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label5'
        Caption = 'Derrama Magisterial - Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 44450
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label6'
        Caption = 'Cia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 12965
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label7'
        Caption = 'TD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 12965
        mmWidth = 2963
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label8'
        Caption = 'Comprobante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 12965
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label9'
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 45508
        mmTop = 12965
        mmWidth = 13335
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label10'
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 105040
        mmTop = 12965
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label11'
        Caption = 'Auxiliar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 121179
        mmTop = 12965
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label12'
        Caption = 'C.Costo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 135467
        mmTop = 12965
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label13'
        Caption = 'Debe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164307
        mmTop = 12965
        mmWidth = 5927
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label14'
        Caption = 'Haber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 188648
        mmTop = 12965
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText100: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'CIAID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 529
        mmWidth = 2963
        BandType = 4
      end
      object ppDBText101: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'TDIARID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 529
        mmWidth = 2963
        BandType = 4
      end
      object ppDBText102: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'CNTCOMPROB'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4233
        mmLeft = 14552
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText103: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'CUENTAID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4233
        mmLeft = 102659
        mmTop = 529
        mmWidth = 13335
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'DOCID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4057
        mmLeft = 37835
        mmTop = 529
        mmWidth = 3598
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'CNTSERIE'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4057
        mmLeft = 43656
        mmTop = 529
        mmWidth = 4022
        BandType = 4
      end
      object ppDBText106: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'CNTNODOC'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4057
        mmLeft = 49477
        mmTop = 529
        mmWidth = 34078
        BandType = 4
      end
      object ppDBText107: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CNTDEBEMN'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4057
        mmLeft = 161396
        mmTop = 529
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CNTHABEMN'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4233
        mmLeft = 191664
        mmTop = 529
        mmWidth = 8890
        BandType = 4
      end
      object ppDBText109: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'AUXID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4057
        mmLeft = 121444
        mmTop = 529
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'CCOSID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4233
        mmLeft = 134938
        mmTop = 529
        mmWidth = 11853
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText14'
        DataField = 'CNTFEMIS'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4233
        mmLeft = 84138
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'CIAID'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand13: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLine81: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 4498
          mmTop = 1323
          mmWidth = 197909
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc89: TppDBCalc
          UserName = 'DBCalc3'
          AutoSize = True
          DataField = 'CNTDEBEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 147935
          mmTop = 4233
          mmWidth = 27220
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc90: TppDBCalc
          UserName = 'DBCalc4'
          AutoSize = True
          DataField = 'CNTHABEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 173335
          mmTop = 4233
          mmWidth = 27220
          BandType = 5
          GroupNo = 0
        end
        object ppLabel72: TppLabel
          UserName = 'Label1'
          Caption = 'TOTAL POR COMPA'#209'IA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 7673
          mmTop = 4233
          mmWidth = 26670
          BandType = 5
          GroupNo = 0
        end
        object ppDBText112: TppDBText
          UserName = 'DBText13'
          AutoSize = True
          DataField = 'CIAID'
          DataPipeline = ppdb1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 4233
          mmLeft = 52388
          mmTop = 4233
          mmWidth = 2963
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup14: TppGroup
      BreakName = 'TDIARID'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand14: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand14: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup15: TppGroup
      BreakName = 'CNTCOMPROB'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand15: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand15: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppLine82: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 84931
          mmTop = 1323
          mmWidth = 117475
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc91: TppDBCalc
          UserName = 'DBCalc1'
          AutoSize = True
          DataField = 'CNTDEBEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 147935
          mmTop = 3440
          mmWidth = 27220
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc92: TppDBCalc
          UserName = 'DBCalc2'
          AutoSize = True
          DataField = 'CNTHABEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 173335
          mmTop = 3440
          mmWidth = 27220
          BandType = 5
          GroupNo = 2
        end
        object ppLabel73: TppLabel
          UserName = 'Label2'
          Caption = 'TOTAL POR COMPROBANTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 88106
          mmTop = 3440
          mmWidth = 31115
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
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
    Report = ppr1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 382
    Top = 351
  end
  object ppdb1: TppDBPipeline
    UserName = 'db1'
    Left = 414
    Top = 351
  end
  object ppd2: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppr2
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 245
    Top = 344
  end
  object ppr2: TppReport
    AutoStop = False
    DataPipeline = ppdb2
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
    Template.FileName = 'C:\Solexes\SOLFORMATOS\Cob\Dema\InconsRefinanc2.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 229
    Top = 384
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb2'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 794
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 5292
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 9525
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label1'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1588
        mmTop = 794
        mmWidth = 31665
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label2'
        Caption = 'Cobranzas Contab. Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1588
        mmTop = 5292
        mmWidth = 37677
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label3'
        Caption = 'ASOCODMOD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 18785
        mmWidth = 18923
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label4'
        Caption = 'ASOAPENOM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 26988
        mmTop = 18785
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'CREDID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 73290
        mmTop = 18785
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'CREFOTORG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 96573
        mmTop = 18785
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'CREFOTORG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 114829
        mmTop = 18785
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'CREMTONABO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 132821
        mmTop = 18785
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'NRONABO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 155046
        mmTop = 18785
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label101'
        Caption = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 176213
        mmTop = 18785
        mmWidth = 12965
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 22754
        mmWidth = 198702
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText9'
        DataField = 'PERIODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 40217
        mmTop = 4233
        mmWidth = 127000
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3260
        mmLeft = 0
        mmTop = 265
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3175
        mmLeft = 20373
        mmTop = 265
        mmWidth = 47890
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText3'
        DataField = 'CREDID'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3175
        mmLeft = 69850
        mmTop = 265
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText4'
        DataField = 'CREFOTORG'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3175
        mmLeft = 99219
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText5'
        DataField = 'CREFOTORG'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3175
        mmLeft = 117740
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTONABO'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3175
        mmLeft = 135996
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText7'
        DataField = 'NRONABO'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3175
        mmLeft = 154517
        mmTop = 265
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText8'
        DataField = 'USUARIO'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3175
        mmLeft = 174890
        mmTop = 265
        mmWidth = 27517
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
    end
  end
  object ppdb2: TppDBPipeline
    UserName = 'db2'
    Left = 205
    Top = 368
  end
end
