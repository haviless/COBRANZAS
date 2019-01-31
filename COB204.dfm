object FConvenios: TFConvenios
  Left = 283
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas'
  ClientHeight = 534
  ClientWidth = 535
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
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlCabecera: TPanel
    Left = 4
    Top = 3
    Width = 526
    Height = 526
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 5
      Top = 2
      Width = 199
      Height = 27
      Caption = 'Registro de Convenios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lblconvenio: TLabel
      Left = 48
      Top = 489
      Width = 88
      Height = 25
      Caption = 'lblconvenio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 4
      Top = 48
      Width = 517
      Height = 430
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TLabel
        Left = 212
        Top = 1
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
        Left = 8
        Top = 1
        Width = 80
        Height = 15
        Caption = 'Fecha de Inicio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 112
        Top = 1
        Width = 64
        Height = 15
        Caption = 'Fecha de Fin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 11
        Top = 339
        Width = 130
        Height = 15
        Caption = 'Condiciones del Convenio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcCobertura: TwwDBLookupCombo
        Left = 212
        Top = 23
        Width = 51
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CONTNUM'#9'9'#9'ID'#9'F'
          'CONTACTO'#9'20'#9'Contacto'#9'F')
        DataField = 'UPROID'
        DataSource = DM1.dsConvenio
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcCoberturaExit
        OnNotInList = dblcNotInList
      end
      object dbdtpfecini: TwwDBDateTimePicker
        Left = 8
        Top = 23
        Width = 100
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'CONVFINI'
        DataSource = DM1.dsConvenio
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ShowButton = True
        TabOrder = 0
        OnExit = dbdtpfeciniExit
      end
      object dbdtpfecfin: TwwDBDateTimePicker
        Left = 112
        Top = 23
        Width = 100
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'CONVFFIN'
        DataSource = DM1.dsConvenio
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ShowButton = True
        TabOrder = 1
        OnExit = dbdtpfecfinExit
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 55
        Width = 497
        Height = 138
        Caption = 'Datos del Representante de Derrama'
        TabOrder = 4
        object TLabel
          Left = 7
          Top = 23
          Width = 87
          Height = 15
          Caption = 'Apellido Paterno '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 165
          Top = 22
          Width = 91
          Height = 15
          Caption = 'Apellido Materno '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 323
          Top = 23
          Width = 40
          Height = 15
          Caption = 'Nombre'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 7
          Top = 78
          Width = 165
          Height = 15
          Caption = 'Tipo de Documento de Identidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 271
          Top = 78
          Width = 14
          Height = 15
          Caption = 'N'#176
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object dbeDeApePat: TwwDBEdit
          Left = 7
          Top = 47
          Width = 158
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'DERREPAT'
          DataSource = DM1.dsConvenio
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyPress = dbeDeApePatKeyPress
        end
        object dbeDeApeMat: TwwDBEdit
          Left = 165
          Top = 47
          Width = 158
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'DERREMAT'
          DataSource = DM1.dsConvenio
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyPress = dbeDeApeMatKeyPress
        end
        object dbeDeNombre: TwwDBEdit
          Left = 323
          Top = 47
          Width = 158
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'DERRENOM'
          DataSource = DM1.dsConvenio
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyPress = dbeDeNombreKeyPress
        end
        object dblcDeTipdoc: TwwDBLookupCombo
          Left = 7
          Top = 104
          Width = 43
          Height = 21
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'LUGPROCID'#9'1'#9'ID'#9'F'
            'LUGPROCDES'#9'20'#9'Lugar de Procedencia'#9'F')
          DataField = 'DERETDOCID'
          DataSource = DM1.dsConvenio
          LookupTable = DM1.cdsTDoc
          LookupField = 'TIPDOCCOD'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 3
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = True
          OnExit = dblcDeTipdocExit
          OnNotInList = dblcNotInList
        end
        object edtDetdocdes: TEdit
          Left = 54
          Top = 103
          Width = 203
          Height = 23
          Color = 13165023
          ReadOnly = True
          TabOrder = 4
        end
        object dbeDendoc: TwwDBEdit
          Left = 275
          Top = 105
          Width = 134
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'DERRENDOC'
          DataSource = DM1.dsConvenio
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 10
        Top = 201
        Width = 497
        Height = 130
        Caption = 'Datos del Representante del Convenio'
        TabOrder = 5
        object TLabel
          Left = 7
          Top = 20
          Width = 87
          Height = 15
          Caption = 'Apellido Paterno '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 165
          Top = 19
          Width = 91
          Height = 15
          Caption = 'Apellido Materno '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 323
          Top = 20
          Width = 40
          Height = 15
          Caption = 'Nombre'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 7
          Top = 75
          Width = 165
          Height = 15
          Caption = 'Tipo de Documento de Identidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 279
          Top = 80
          Width = 14
          Height = 15
          Caption = 'N'#176
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object dbeConApePat: TwwDBEdit
          Left = 7
          Top = 43
          Width = 158
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'CONVREPAT'
          DataSource = DM1.dsConvenio
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyPress = dbeConApePatKeyPress
        end
        object dbeConApeMat: TwwDBEdit
          Left = 165
          Top = 43
          Width = 158
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'CONVREMAT'
          DataSource = DM1.dsConvenio
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyPress = dbeConApeMatKeyPress
        end
        object dbeConNombre: TwwDBEdit
          Left = 323
          Top = 43
          Width = 158
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'CONVRENOM'
          DataSource = DM1.dsConvenio
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyPress = dbeConNombreKeyPress
        end
        object dblcReTipdoc: TwwDBLookupCombo
          Left = 7
          Top = 99
          Width = 43
          Height = 21
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'LUGPROCID'#9'1'#9'ID'#9'F'
            'LUGPROCDES'#9'20'#9'Lugar de Procedencia'#9'F')
          DataField = 'CONRETDOC'
          DataSource = DM1.dsConvenio
          LookupTable = DM1.cdsTDoc
          LookupField = 'TIPDOCCOD'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 3
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = True
          OnExit = dblcReTipdocExit
          OnNotInList = dblcNotInList
        end
        object edtRetdocdes: TEdit
          Left = 56
          Top = 98
          Width = 203
          Height = 23
          Color = 13165023
          ReadOnly = True
          TabOrder = 4
        end
        object dbeConndoc: TwwDBEdit
          Left = 275
          Top = 100
          Width = 134
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'CONVRENDOC'
          DataSource = DM1.dsConvenio
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object edtproceso: TEdit
        Left = 264
        Top = 22
        Width = 241
        Height = 23
        Color = 13165023
        ReadOnly = True
        TabOrder = 3
      end
      object DBMemo1: TDBMemo
        Left = 9
        Top = 355
        Width = 496
        Height = 64
        BiDiMode = bdLeftToRight
        Color = 13165023
        DataField = 'CONVOBSE'
        DataSource = DM1.dsConvenio
        ParentBiDiMode = False
        TabOrder = 6
      end
    end
    object Panel2: TPanel
      Left = 238
      Top = 4
      Width = 281
      Height = 38
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TLabel
        Left = 102
        Top = -1
        Width = 37
        Height = 15
        Caption = 'Estado '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 10
        Top = -1
        Width = 14
        Height = 15
        Caption = 'N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeestado: TwwDBEdit
        Left = 150
        Top = 12
        Width = 122
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcEstado: TwwDBLookupCombo
        Left = 101
        Top = 12
        Width = 51
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CONTNUM'#9'9'#9'ID'#9'F'
          'CONTACTO'#9'20'#9'Contacto'#9'F')
        DataField = 'CONVEST'
        DataSource = DM1.dsConvenio
        LookupTable = DM1.cdsEstado
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcEstadoExit
        OnNotInList = dblcNotInList
      end
      object dblcconvid: TwwDBLookupComboDlg
        Left = 9
        Top = 12
        Width = 91
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        DataField = 'CONVID'
        DataSource = DM1.dsConvenio
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ReadOnly = True
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
    end
    object bbtnAceptaCabecera: TfcShapeBtn
      Left = 431
      Top = 487
      Width = 32
      Height = 31
      Hint = 'Graba Convenio'
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
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnAceptaCabeceraClick
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 386
      Top = 487
      Width = 32
      Height = 31
      Hint = 'Renovar Convenio'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
        3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
        B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
        33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
        000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
        033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
        BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
        33B33733333773333373B333333B3333333B7333333733333337}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 341
      Top = 487
      Width = 32
      Height = 31
      Hint = 'Aprobar Convenio'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
  end
  object bbtnCancelaCabecera: TfcShapeBtn
    Left = 478
    Top = 491
    Width = 32
    Height = 31
    Hint = 'Cerrar'
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
    OnClick = bbtnCancelaCabeceraClick
  end
end
