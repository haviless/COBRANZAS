object FDFam: TFDFam
  Left = 162
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Datos Familiares'
  ClientHeight = 400
  ClientWidth = 739
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
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lbTitulo: TfcLabel
    Left = 256
    Top = 8
    Width = 69
    Height = 19
    Caption = 'Asociado :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object lbCodigo: TfcLabel
    Left = 12
    Top = 8
    Width = 110
    Height = 19
    Caption = 'C'#243'digo Modular :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object dbgDFam: TwwDBGrid
    Left = 0
    Top = 34
    Width = 739
    Height = 366
    DisableThemesInTitle = False
    Selected.Strings = (
      'FAMAPEPAT'#9'20'#9'APELLIDO PATERNO'#9'F'
      'FAMAPEMAT'#9'20'#9'APELLIDO MATERNO'#9'F'
      'FAMNOMBRE'#9'20'#9'NOMBRES'#9'F'
      'FAMAPENOM'#9'50'#9'APELLIDOS Y NOMBRES'#9'F'
      'FAMRELID'#9'2'#9'RELACION'#9'F'
      'FAMDIRECC'#9'75'#9'DIRECCION'#9'F'
      'DISTID'#9'3'#9'DISTRITO'#9'F'
      'FAMTELF'#9'15'#9'TELEFONO'#9'F'
      'FAMSEXO'#9'1'#9'SEXO'#9'F'
      'TIPDOCCOD'#9'2'#9'TIPO DOC'#9'F'
      'FAMNUMDOC'#9'15'#9'NUMERO DOC'#9'F'
      'ESTCIVID'#9'2'#9'EST CIVIL'#9'F'
      'FAMFECNAC'#9'18'#9'FECHA NACIMIENTO'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow]
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alBottom
    BorderStyle = bsNone
    Color = 13165023
    DataSource = DM1.dsDFam
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete]
    MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnDblClick = dbgDFamDblClick
    OnKeyDown = dbgDFamKeyDown
    object btnDFam: TwwIButton
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
      OnClick = btnDFamClick
    end
  end
  object pnlFamiliares: TPanel
    Left = 5
    Top = 78
    Width = 716
    Height = 303
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 1
    Visible = False
    object stFam: TStaticText
      Left = 1
      Top = 1
      Width = 710
      Height = 18
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Familiares'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object pnlFam: TPanel
      Left = 5
      Top = 23
      Width = 703
      Height = 272
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
        Left = 10
        Top = 7
        Width = 85
        Height = 15
        Caption = 'Tipo de Relacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 10
        Top = 56
        Width = 57
        Height = 15
        Caption = 'Fec Nacim.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 106
        Top = 56
        Width = 61
        Height = 15
        Caption = 'Estado Civil'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 379
        Top = 197
        Width = 46
        Height = 15
        Caption = 'Tel'#233'fono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 10
        Top = 197
        Width = 51
        Height = 15
        Caption = 'Direcci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 205
        Top = 7
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
        Left = 374
        Top = 7
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
        Left = 539
        Top = 7
        Width = 45
        Height = 15
        Caption = 'Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 318
        Top = 56
        Width = 191
        Height = 15
        Caption = 'Tipo de Documento de Identificaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 582
        Top = 56
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
      object TLabel
        Left = 315
        Top = 150
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
        Left = 9
        Top = 150
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
        Left = 211
        Top = 102
        Width = 40
        Height = 15
        Caption = 'Distrito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 10
        Top = 245
        Width = 89
        Height = 15
        Caption = 'Nombre Completo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 10
        Top = 102
        Width = 27
        Height = 15
        Caption = 'Sexo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object sbtnDFAceptar: TfcShapeBtn
        Left = 613
        Top = 228
        Width = 32
        Height = 31
        Hint = 'Grabar Datos Familiares'
        Color = 10207162
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
        TabOrder = 23
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnDFAceptarClick
      end
      object sbtnDFCancelar: TfcShapeBtn
        Left = 653
        Top = 228
        Width = 32
        Height = 31
        Hint = 'Cancelar'
        Color = 10207162
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
        TabOrder = 24
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnDFCancelarClick
      end
      object dblcDFTRel: TwwDBLookupCombo
        Left = 10
        Top = 28
        Width = 46
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PARENID'#9'2'#9'ID'#9'F'
          'PARENDES'#9'30'#9'DESCRIPCION'#9'F')
        DataField = 'FAMRELID'
        DataSource = DM1.dsDFam
        LookupTable = DM1.cdsTRela
        LookupField = 'PARENID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcDFTRelExit
        OnNotInList = dblcNotInList
      end
      object dbdtpDFFecNac: TwwDBDateTimePicker
        Left = 10
        Top = 77
        Width = 88
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'FAMFECNAC'
        DataSource = DM1.dsDFam
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 5
      end
      object dblcDFEstCiv: TwwDBLookupCombo
        Left = 106
        Top = 77
        Width = 46
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ESTCIVID'#9'2'#9'ID'#9'F'
          'ESTCIVDES'#9'30'#9'DESCRIPCION'#9'F')
        DataField = 'ESTCIVID'
        DataSource = DM1.dsDFam
        LookupTable = DM1.cdsEstCiv
        LookupField = 'ESTCIVID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcDFEstCivExit
        OnNotInList = dblcNotInList
      end
      object dbeDFTelf: TwwDBEdit
        Left = 379
        Top = 215
        Width = 118
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'FAMTELF'
        DataSource = DM1.dsDFam
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 20
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeDFDir: TwwDBEdit
        Left = 10
        Top = 215
        Width = 347
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'FAMDIRECC'
        DataSource = DM1.dsDFam
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 19
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeDFApePat: TwwDBEdit
        Left = 205
        Top = 28
        Width = 166
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'FAMAPEPAT'
        DataSource = DM1.dsDFam
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
        OnExit = dbeDFApePatExit
      end
      object dbeDFApeMat: TwwDBEdit
        Left = 374
        Top = 28
        Width = 162
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'FAMAPEMAT'
        DataSource = DM1.dsDFam
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeDFApeMatExit
      end
      object dbeDFNombres: TwwDBEdit
        Left = 539
        Top = 28
        Width = 158
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'FAMNOMBRE'
        DataSource = DM1.dsDFam
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeDFNombresExit
      end
      object dblcDFTDoc: TwwDBLookupCombo
        Left = 318
        Top = 77
        Width = 43
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TIPDOCCOD'#9'2'#9'ID'#9'F'
          'TIPDOCDES'#9'35'#9'DESCRIPCION'#9'F')
        DataField = 'TIPDOCCOD'
        DataSource = DM1.dsDFam
        LookupTable = DM1.cdsTDoc
        LookupField = 'TIPDOCCOD'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
        OnExit = dblcDFTDocExit
        OnNotInList = dblcNotInList
      end
      object dbeDFNum: TwwDBEdit
        Left = 583
        Top = 77
        Width = 97
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'FAMNUMDOC'
        DataSource = DM1.dsDFam
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
      object edtDFTRel: TEdit
        Left = 58
        Top = 26
        Width = 141
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        TabOrder = 1
      end
      object edtDFEstCiv: TEdit
        Left = 154
        Top = 75
        Width = 156
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        TabOrder = 7
      end
      object edtDFDoc: TEdit
        Left = 363
        Top = 75
        Width = 210
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        TabOrder = 9
      end
      object dblcDFDpto: TwwDBLookupCombo
        Left = 315
        Top = 170
        Width = 43
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DPTOID'#9'3'#9'ID'#9'F'
          'DPTODES'#9'30'#9'DESCRIPCION'#9'F')
        DataField = 'DPTOID'
        DataSource = DM1.dsDFam
        LookupTable = DM1.cdsDpto
        LookupField = 'DPTOID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 17
        AutoDropDown = False
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcDFDptoExit
      end
      object edtDFDpto: TEdit
        Left = 360
        Top = 168
        Width = 230
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        TabOrder = 18
      end
      object edtDFProv: TEdit
        Left = 68
        Top = 168
        Width = 230
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        TabOrder = 16
      end
      object edtDFDist: TEdit
        Left = 262
        Top = 120
        Width = 230
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        TabOrder = 14
      end
      object dblcdDFProv: TwwDBLookupComboDlg
        Left = 9
        Top = 170
        Width = 57
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Provincias'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'CIUDID'#9'3'#9'ID'#9'F'
          'CIUDDES'#9'30'#9'DESCRIPCION'#9'F')
        DataField = 'CIUDID'
        DataSource = DM1.dsDFam
        LookupTable = DM1.cdsProvin
        LookupField = 'CIUDID'
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        Color = 13165023
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 15
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = True
        UseTFields = False
        ShowMatchText = True
        OnExit = dblcdDFProvExit
      end
      object dbeDFApeNom: TwwDBEdit
        Left = 114
        Top = 244
        Width = 383
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'FAMAPENOM'
        DataSource = DM1.dsDFam
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 21
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtSexo: TEdit
        Left = 49
        Top = 120
        Width = 156
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        TabOrder = 12
      end
      object dblcSexo: TwwDBLookupCombo
        Left = 10
        Top = 122
        Width = 36
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'SEXO'#9'2'#9'ID'#9'F'
          'DESCRIP'#9'30'#9'DESCRIPCION'#9'F')
        DataField = 'FAMSEXO'
        DataSource = DM1.dsDFam
        LookupTable = DM1.cdsSexo
        LookupField = 'SEXO'
        Options = [loColLines, loRowLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 11
        AutoDropDown = False
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcSexoExit
        OnNotInList = dblcNotInList
      end
      object sbtnDFNuevo: TfcShapeBtn
        Left = 573
        Top = 228
        Width = 32
        Height = 31
        Hint = 'Nuevo Familiar'
        Color = 10207162
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
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 22
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnDFNuevoClick
      end
      object dblcdDFDistrito: TwwDBLookupComboDlg
        Left = 211
        Top = 122
        Width = 48
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Distritos'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'ZIPID'#9'3'#9'ID'#9'F'
          'ZIPDES'#9'50'#9'DESCRIPCION'#9'F')
        DataField = 'DISTID'
        DataSource = DM1.dsDFam
        LookupTable = DM1.cdsDist
        LookupField = 'ZIPID'
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        Color = 13165023
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 13
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = True
        UseTFields = False
        ShowMatchText = True
        OnExit = dblcdDFDistritoExit
      end
    end
  end
end
