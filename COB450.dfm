object FContabilizacionDev: TFContabilizacionDev
  Left = 296
  Top = 167
  Width = 758
  Height = 627
  Caption = 'Cobranzas'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgExcel: TwwDBGrid
    Left = 448
    Top = 56
    Width = 289
    Height = 81
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
  end
  object pnlCabecera: TPanel
    Left = 6
    Top = 15
    Width = 731
    Height = 570
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 10
      Top = 0
      Width = 286
      Height = 27
      Caption = 'Contabilizaci'#243'n de Devoluciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 701
      Top = 5
      Width = 25
      Height = 13
      Caption = 'V.5.3'
    end
    object Panel1: TPanel
      Left = 7
      Top = 33
      Width = 698
      Height = 528
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 229
        Top = 8
        Width = 265
        Height = 73
        Caption = 'Rango de Fechas'
        Enabled = False
        TabOrder = 0
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
          OnChange = dtpFecFinChange
          OnExit = dtpFecFinExit
        end
      end
      object GroupBox2: TGroupBox
        Left = 24
        Top = 16
        Width = 130
        Height = 59
        Caption = 'Periodo'
        TabOrder = 1
        object TLabel
          Left = 74
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
          Left = 20
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
          Left = 73
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
          Left = 18
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
      object PageControl1: TPageControl
        Left = 0
        Top = 88
        Width = 687
        Height = 425
        ActivePage = TabSheet1
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object TabSheet1: TTabSheet
          Caption = 'Devoluci'#243'n Cuotas'
          object TLabel
            Left = 7
            Top = -1
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
            Left = 253
            Top = -3
            Width = 82
            Height = 17
            Caption = 'Fecha Contable'
            Visible = False
          end
          object TLabel
            Left = 361
            Top = -3
            Width = 110
            Height = 17
            Caption = 'Comprobante Inicial'
            Visible = False
          end
          object fcShapeBtn3: TfcShapeBtn
            Left = 249
            Top = 356
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
            TabOrder = 0
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            Visible = False
            OnClick = fcShapeBtn3Click
          end
          object fcShapeBtn6: TfcShapeBtn
            Left = 289
            Top = 356
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
            TabOrder = 1
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            Visible = False
            OnClick = fcShapeBtn6Click
          end
          object fcShapeBtn4: TfcShapeBtn
            Left = 434
            Top = 356
            Width = 32
            Height = 31
            Hint = 'Contabilizar Devoluciones'
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
            TabOrder = 2
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn4Click
          end
          object fcShapeBtn7: TfcShapeBtn
            Left = 474
            Top = 356
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
            TabOrder = 3
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn7Click
          end
          object fcShpDevoTrans: TfcShapeBtn
            Left = 538
            Top = 356
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
            TabOrder = 4
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShpDevoTransClick
          end
          object fcShapeBtn5: TfcShapeBtn
            Left = 578
            Top = 356
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
            TabOrder = 5
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn5Click
          end
          object fcShapeBtn2: TfcShapeBtn
            Left = 628
            Top = 356
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
            TabOrder = 6
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn2Click
          end
          object dbgConta: TwwDBGrid
            Left = 6
            Top = 38
            Width = 664
            Height = 301
            DisableThemesInTitle = False
            Selected.Strings = (
              'CREFOTORG'#9'12'#9'Fecha~Otorga'#9'F'
              'NROFICIO'#9'12'#9'Oficio'#9'F'
              'TIPDESEID'#9'8'#9'Tipo~Desembolso'#9'F'
              'MONTO_OTO'#9'18'#9'Monto~Otorgado'#9'F'
              'MONTO_GIR'#9'18'#9'Monto~Girado'#9'F'
              'REGISTROS'#9'10'#9'Registros'#9'F'
              'COMPROBANTE'#9'13'#9'Comprobante~Devoluciones'#9'F'
              'COMPROBANTE2'#9'13'#9'Comprobante~Descargo'#9'F')
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
            TabOrder = 7
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Comic Sans MS'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnDblClick = dbgContaDblClick
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
          object dblcTipo: TwwDBLookupCombo
            Left = 7
            Top = 14
            Width = 45
            Height = 23
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
            TabOrder = 8
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object dbeTipo: TwwDBEdit
            Left = 56
            Top = 14
            Width = 186
            Height = 23
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'VENDEDABR'
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dtpFComp: TwwDBDateTimePicker
            Left = 252
            Top = 14
            Width = 100
            Height = 23
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
            TabOrder = 10
            Visible = False
            OnExit = dtpFCompExit
          end
          object dbeComprob: TwwDBEdit
            Left = 362
            Top = 14
            Width = 90
            Height = 23
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            MaxLength = 10
            Picture.PictureMask = '[#][#][#][#][#][#][#][#][#][#]'
            TabOrder = 11
            UnboundDataType = wwDefault
            Visible = False
            WantReturns = False
            WordWrap = False
          end
          object fcShapeBtn1: TfcShapeBtn
            Left = 329
            Top = 354
            Width = 32
            Height = 33
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
            TabOrder = 12
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn1Click
          end
          object prbAvance: TProgressBar
            Left = 11
            Top = 359
            Width = 212
            Height = 24
            TabOrder = 13
            Visible = False
          end
          object btnExcelDevCuo: TfcShapeBtn
            Left = 372
            Top = 356
            Width = 38
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
            TabOrder = 14
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = btnExcelDevCuoClick
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Devoluci'#243'n de Excesos del FSC'
          ImageIndex = 1
          object Label2: TLabel
            Left = 151
            Top = 4
            Width = 320
            Height = 29
            Caption = 'Devoluciones de Excesos del FSC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -20
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbgDevExcFSC: TwwDBGrid
            Left = 6
            Top = 38
            Width = 664
            Height = 301
            DisableThemesInTitle = False
            Selected.Strings = (
              'ASOFECDEV'#9'11'#9'Fecha~Devoluci'#243'n'#9'F'
              'DESCRIP'#9'11'#9'Descripci'#243'n'#9'F'
              'ASOAPENOM'#9'30'#9'Apellidos y Nombres'#9'F'
              'ASOTIPID'#9'04'#9'Tip~Aso'#9'F'
              'TIPDESEID'#9'10'#9'Tipo~Desembolso'#9'F'
              'MONTODEV'#9'13'#9'Monto~Devuelto'#9'F'
              'OFDESNOM'#9'15'#9'Oficina~Desembolso'#9'F'
              'CAJERO'#9'10'#9'Cajero'#9'F'
              'DOCOFI'#9'06'#9'Oficio'#9'F')
            MemoAttributes = [mSizeable, mWordWrap, mGridShow]
            IniAttributes.Delimiter = ';;'
            TitleColor = 10207162
            FixedCols = 0
            ShowHorzScrollBar = True
            BorderStyle = bsNone
            Color = 13165023
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            KeyOptions = [dgEnterToTab, dgAllowDelete]
            MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter]
            ParentFont = False
            TabOrder = 0
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
          end
          object fcShapeBtn10: TfcShapeBtn
            Left = 241
            Top = 354
            Width = 32
            Height = 33
            Hint = 'Filtrar Devoluciones de Excesos del FSC'
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
            TabOrder = 1
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn10Click
          end
          object fcShapeBtn8: TfcShapeBtn
            Left = 388
            Top = 356
            Width = 32
            Height = 31
            Hint = 'Contabilizaci'#243'n'
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
            TabOrder = 2
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn8Click
          end
          object fcShapeBtn9: TfcShapeBtn
            Left = 281
            Top = 356
            Width = 32
            Height = 31
            Hint = 'Reporte Sustento '
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
            TabOrder = 3
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn9Click
          end
          object fcShapeBtn11: TfcShapeBtn
            Left = 430
            Top = 357
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
            TabOrder = 4
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn11Click
          end
          object fcShapeBtn12: TfcShapeBtn
            Left = 508
            Top = 356
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
            TabOrder = 5
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn12Click
          end
          object fcShapeBtn13: TfcShapeBtn
            Left = 549
            Top = 355
            Width = 32
            Height = 31
            Hint = 'Impresi'#243'n Transferencia Contable'
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
            TabOrder = 6
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn13Click
          end
          object fcShapeBtn14: TfcShapeBtn
            Left = 628
            Top = 356
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
            TabOrder = 7
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = fcShapeBtn2Click
          end
          object btnExcelDev: TfcShapeBtn
            Left = 324
            Top = 356
            Width = 38
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
            OnClick = btnExcelDevClick
          end
        end
      end
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
    Report = RprtDevExcFSC
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 174
    Top = 527
  end
  object ppr2: TppReport
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
    Template.FileName = 
      'C:\Documents and Settings\rmedina\Escritorio\COBRANZA_ULTIMO\Ult' +
      'imo CLiente\HPP_201113_COB\SRC_201113_COB\ContaExcFSC.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 606
    Top = 63
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4022
        mmLeft = 101865
        mmTop = 5821
        mmWidth = 11684
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 89694
        mmTop = 5821
        mmWidth = 10118
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label4'
        Caption = 'Reporte Contable Devoluciones de Excesos del FSC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 67469
        mmTop = 1058
        mmWidth = 67998
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
        mmTop = 18521
        mmWidth = 201084
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label5'
        Caption = 'Derrama Magisterial - Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 41656
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label6'
        Caption = 'Cia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 12965
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label7'
        Caption = 'TD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6879
        mmTop = 12965
        mmWidth = 4191
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label8'
        Caption = 'Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12171
        mmTop = 12965
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label9'
        Caption = 'Glosa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 49742
        mmTop = 12965
        mmWidth = 8340
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label10'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 85990
        mmTop = 13229
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label101'
        Caption = 'Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 102394
        mmTop = 13229
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label11'
        Caption = 'Debe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 166688
        mmTop = 13494
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label12'
        Caption = 'Haber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 191294
        mmTop = 13494
        mmWidth = 9260
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
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 529
        mmWidth = 3133
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
        mmHeight = 3260
        mmLeft = 6615
        mmTop = 529
        mmWidth = 3133
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
        mmHeight = 3260
        mmLeft = 12171
        mmTop = 529
        mmWidth = 15663
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
        mmHeight = 3260
        mmLeft = 102659
        mmTop = 529
        mmWidth = 10964
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
        mmHeight = 3175
        mmLeft = 168001
        mmTop = 794
        mmWidth = 7154
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
        mmHeight = 3260
        mmLeft = 193485
        mmTop = 265
        mmWidth = 7070
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
        mmHeight = 3429
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
        mmHeight = 3683
        mmLeft = 134938
        mmTop = 265
        mmWidth = 11896
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText15'
        DataField = 'CNTGLOSA'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 529
        mmWidth = 53181
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        DataField = 'CNTFEMIS'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 83079
        mmTop = 529
        mmWidth = 14139
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
          mmLeft = 149501
          mmTop = 4233
          mmWidth = 25654
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
          mmLeft = 174901
          mmTop = 4233
          mmWidth = 25654
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
          mmHeight = 3440
          mmLeft = 7673
          mmTop = 4233
          mmWidth = 34131
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
          mmHeight = 3175
          mmLeft = 42863
          mmTop = 4498
          mmWidth = 3175
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
        mmHeight = 10583
        mmPrintPosition = 0
        object ppLine82: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 83608
          mmTop = 1323
          mmWidth = 118798
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
          mmLeft = 149501
          mmTop = 3440
          mmWidth = 25654
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
          mmLeft = 174901
          mmTop = 3440
          mmWidth = 25654
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
          mmHeight = 3440
          mmLeft = 85990
          mmTop = 3175
          mmWidth = 34396
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppdb1: TppDBPipeline
    UserName = 'db1'
    Left = 534
    Top = 63
  end
  object RprtDevExcFSC: TppReport
    AutoStop = False
    DataPipeline = dbpplExceFSC
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
    Template.FileName = 
      'C:\Documents and Settings\rmedina\Escritorio\COBRANZA_ULTIMO\Ult' +
      'imo CLiente\SRC_201013_COB_FSC_BANCO\REPSUSDEVEXCFSC.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 105
    Top = 524
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpplExceFSC'
    object ppHeaderBand13: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object ppShape33: TppShape
        UserName = 'Shape4'
        Brush.Color = 14605022
        mmHeight = 5821
        mmLeft = 0
        mmTop = 21431
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label18'
        Caption = 'DerramaMagisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 0
        mmWidth = 32766
        BandType = 0
      end
      object ppSystemVariable27: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 162719
        mmTop = 1588
        mmWidth = 33073
        BandType = 0
      end
      object ppSystemVariable28: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 162719
        mmTop = 5027
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label19'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 150284
        mmTop = 1058
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label20'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 150284
        mmTop = 5556
        mmWidth = 11113
        BandType = 0
      end
      object ppltitulo: TppLabel
        UserName = 'Xtitulo'
        Caption = 'XTITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 265
        mmTop = 9790
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel176: TppLabel
        UserName = 'Label176'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2381
        mmTop = 22754
        mmWidth = 34121
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label177'
        Caption = 'TIP.ASOC.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 51065
        mmTop = 23019
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel178: TppLabel
        UserName = 'Label178'
        Caption = 'DESEMBOLSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 68792
        mmTop = 23019
        mmWidth = 20235
        BandType = 0
      end
      object ppLabel179: TppLabel
        UserName = 'Label179'
        Caption = 'N'#170' OFICIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 93398
        mmTop = 22754
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel180: TppLabel
        UserName = 'Label180'
        Caption = 'CAJERO DES.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 113506
        mmTop = 22754
        mmWidth = 19092
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label1801'
        Caption = 'OFICINA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 146844
        mmTop = 22754
        mmWidth = 11515
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Caption = 'IMP.DEVUELTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 173567
        mmTop = 22754
        mmWidth = 21336
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label170'
        Caption = '(REPSUSDEEXCVFSC.rtm-COB409)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 794
        mmTop = 5027
        mmWidth = 35391
        BandType = 0
      end
      object ppltitulo2: TppLabel
        UserName = 'Xtitulo2'
        Caption = 'XTITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 265
        mmTop = 14817
        mmWidth = 196850
        BandType = 0
      end
    end
    object ppDetailBand14: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 196850
        BandType = 4
      end
      object ppDBText171: TppDBText
        UserName = 'DBText20'
        DataField = 'ASOAPENOM'
        DataPipeline = dbpplExceFSC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpplExceFSC'
        mmHeight = 2879
        mmLeft = 1323
        mmTop = 529
        mmWidth = 50800
        BandType = 4
      end
      object ppDBText172: TppDBText
        UserName = 'DBText21'
        DataField = 'TIPDESEID'
        DataPipeline = dbpplExceFSC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpplExceFSC'
        mmHeight = 2910
        mmLeft = 65881
        mmTop = 529
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText178: TppDBText
        UserName = 'DBText27'
        DataField = 'MONTODEV'
        DataPipeline = dbpplExceFSC
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpplExceFSC'
        mmHeight = 2910
        mmLeft = 180446
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppLine110: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 52388
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine111: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 64294
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine112: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 91017
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine113: TppLine
        UserName = 'Line8'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 110067
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine115: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 170657
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine120: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 138113
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOTIPID'
        DataPipeline = dbpplExceFSC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpplExceFSC'
        mmHeight = 2910
        mmLeft = 56621
        mmTop = 529
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DOCOFI'
        DataPipeline = dbpplExceFSC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpplExceFSC'
        mmHeight = 2910
        mmLeft = 95250
        mmTop = 529
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CAJERO'
        DataPipeline = dbpplExceFSC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpplExceFSC'
        mmHeight = 2910
        mmLeft = 114036
        mmTop = 529
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'OFDESNOM'
        DataPipeline = dbpplExceFSC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpplExceFSC'
        mmHeight = 2910
        mmLeft = 141552
        mmTop = 529
        mmWidth = 23813
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      PrintOnFirstPage = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand11: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape34: TppShape
        UserName = 'Shape7'
        mmHeight = 5556
        mmLeft = 265
        mmTop = 794
        mmWidth = 196850
        BandType = 7
      end
      object ppLabel171: TppLabel
        UserName = 'Label24'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 23548
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONTODEV'
        DataPipeline = dbpplExceFSC
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpplExceFSC'
        mmHeight = 2910
        mmLeft = 174625
        mmTop = 2117
        mmWidth = 21696
        BandType = 7
      end
    end
    object ppGroup26: TppGroup
      BreakName = 'ppDBText5'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand26: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppLabel172: TppLabel
          UserName = 'Xsubtitulo'
          Caption = 'XSUBTITULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1588
          mmTop = 1058
          mmWidth = 71967
          BandType = 3
          GroupNo = 0
        end
        object ppDBText182: TppDBText
          UserName = 'DBText32'
          DataField = 'FREG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 3704
          mmLeft = 75142
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppShape35: TppShape
          UserName = 'Shape1'
          Brush.Color = 14605022
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 196850
          BandType = 3
          GroupNo = 0
        end
        object pplSubtituloSustFSC: TppLabel
          UserName = 'Xsubtitulo2'
          Caption = 'DEVOLUCI'#210'N DE EXCESOS DEL FSC, DEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1852
          mmTop = 1323
          mmWidth = 58473
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'ASOFECDEV'
          DataPipeline = dbpplExceFSC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbpplExceFSC'
          mmHeight = 3704
          mmLeft = 63236
          mmTop = 1058
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand26: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppShape36: TppShape
          UserName = 'Shape6'
          mmHeight = 5556
          mmLeft = 0
          mmTop = 0
          mmWidth = 196850
          BandType = 5
          GroupNo = 0
        end
        object ppLabel173: TppLabel
          UserName = 'Label23'
          Caption = 'TOTAL DEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 1058
          mmTop = 794
          mmWidth = 15706
          BandType = 5
          GroupNo = 0
        end
        object ppDBText183: TppDBText
          UserName = 'DBText34'
          DataField = 'FREG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 18785
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MONTODEV'
          DataPipeline = dbpplExceFSC
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup26
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpplExceFSC'
          mmHeight = 2910
          mmLeft = 174890
          mmTop = 1323
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dbpplExceFSC: TppDBPipeline
    DataSource = DM1.dsMGrupo
    UserName = 'dbpplExceFSC'
    Left = 137
    Top = 524
  end
  object ppD2: TppDesigner
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
    Left = 565
    Top = 64
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
    Left = 550
    Top = 119
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppDBText8: TppDBText
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
      object ppSystemVariable1: TppSystemVariable
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
      object ppSystemVariable2: TppSystemVariable
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
      object ppSystemVariable3: TppSystemVariable
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
      object ppLabel9: TppLabel
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
      object ppLabel10: TppLabel
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
      object ppLine1: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 11113
        mmWidth = 201084
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 794
        mmTop = 18256
        mmWidth = 201084
        BandType = 0
      end
      object ppLabel11: TppLabel
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
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText9: TppDBText
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
      object ppDBText10: TppDBText
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
      object ppDBText11: TppDBText
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
      object ppDBText12: TppDBText
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
      object ppDBText13: TppDBText
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
      object ppDBText14: TppDBText
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
      object ppDBText15: TppDBText
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
      object ppDBText16: TppDBText
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
    object ppGroup1: TppGroup
      BreakName = 'CIAID'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 4498
          mmTop = 1323
          mmWidth = 197909
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
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
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 149501
          mmTop = 4233
          mmWidth = 25654
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
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
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 174901
          mmTop = 4233
          mmWidth = 25654
          BandType = 5
          GroupNo = 0
        end
        object ppLabel12: TppLabel
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
        object ppDBText17: TppDBText
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
    object ppGroup2: TppGroup
      BreakName = 'TDIARID'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'CNTCOMPROB'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 84931
          mmTop = 1323
          mmWidth = 117475
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc5: TppDBCalc
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
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 149501
          mmTop = 3440
          mmWidth = 25654
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc6: TppDBCalc
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
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 174901
          mmTop = 3440
          mmWidth = 25654
          BandType = 5
          GroupNo = 2
        end
        object ppLabel13: TppLabel
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
    object ppParameterList2: TppParameterList
    end
  end
end
