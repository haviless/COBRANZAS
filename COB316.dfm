object FRegGlobalCob1: TFRegGlobalCob1
  Left = 469
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas'
  ClientHeight = 525
  ClientWidth = 686
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
  object TLabel
    Left = 539
    Top = 77
    Width = 61
    Height = 15
    Caption = 'Monto Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object pnlCabecera: TPanel
    Left = 5
    Top = 4
    Width = 677
    Height = 517
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object lblReg: TLabel
      Left = 10
      Top = 7
      Width = 260
      Height = 27
      Caption = 'Registro Global de Cobranza'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlInicio: TPanel
      Left = 9
      Top = 44
      Width = 660
      Height = 133
      BorderWidth = 1
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lblBanco: TLabel
        Left = 8
        Top = 43
        Width = 37
        Height = 15
        Caption = 'Banco :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblCuenta: TLabel
        Left = 531
        Top = 45
        Width = 41
        Height = 15
        Caption = 'Cuenta :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 7
        Top = 286
        Width = 76
        Height = 15
        Caption = 'Observaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblNOpe: TLabel
        Left = 113
        Top = 86
        Width = 77
        Height = 15
        Caption = 'N'#176' Operaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblFOpe: TLabel
        Left = 8
        Top = 86
        Width = 93
        Height = 15
        Caption = 'Fecha Operaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 530
        Top = 273
        Width = 32
        Height = 15
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblFRepc: TLabel
        Left = 559
        Top = 4
        Width = 86
        Height = 15
        Caption = 'Fecha Recepci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 299
        Top = 272
        Width = 40
        Height = 15
        Caption = 'Moneda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 221
        Top = 86
        Width = 46
        Height = 15
        Caption = 'Moneda :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 456
        Top = 86
        Width = 38
        Height = 15
        Caption = 'Monto :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblRepres: TLabel
        Left = 8
        Top = 3
        Width = 79
        Height = 15
        Caption = 'Representante :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblAgencia: TLabel
        Left = 226
        Top = 44
        Width = 48
        Height = 15
        Caption = 'Agencia :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcBanco: TwwDBLookupCombo
        Left = 8
        Top = 60
        Width = 42
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'BANCOID'#9'2'#9'ID'#9'F'
          'BANCONOM'#9'40'#9'Nombre'#9'F')
        DataField = 'BANCOID'
        DataSource = DM1.dsRegCob
        LookupTable = DM1.cdsBcos
        LookupField = 'BANCOID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcBancoExit
        OnNotInList = dblcBancoNotInList
      end
      object dbdtpFOpe: TwwDBDateTimePicker
        Left = 8
        Top = 102
        Width = 99
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'RCOBFOPE'
        DataSource = DM1.dsRegCob
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 8
        DisplayFormat = 'dd/mm/yyyy'
      end
      object dbdtpFRecepcion: TwwDBDateTimePicker
        Left = 559
        Top = 20
        Width = 95
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'RCOBFRECEP'
        DataSource = DM1.dsRegCob
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 2
        DisplayFormat = 'dd/mm/yyyy'
      end
      object dbeNumOpe: TwwDBEdit
        Left = 113
        Top = 102
        Width = 98
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RCOBNOPE'
        DataSource = DM1.dsRegCob
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 10
        ParentFont = False
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcCuenta: TwwDBLookupCombo
        Left = 531
        Top = 60
        Width = 122
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CCBCOID'#9'25'#9'Cta. Cte.'#9'F')
        DataField = 'CCBCOID'
        DataSource = DM1.dsRegCob
        LookupTable = DM1.cdsCuentas
        LookupField = 'CCBCOID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = dblcCuentaExit
        OnNotInList = dblcBancoNotInList
      end
      object dblcMoneda: TwwDBLookupCombo
        Left = 221
        Top = 102
        Width = 41
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TMONID'#9'2'#9'ID'#9'F'
          'TMONDES'#9'30'#9'Moneda'#9'F')
        DataField = 'TMONID'
        DataSource = DM1.dsRegCob
        LookupTable = DM1.cdsTMoneda
        LookupField = 'TMONID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 10
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcMonedaExit
        OnNotInList = dblcMonedaNotInList
      end
      object dbeMonto: TwwDBEdit
        Left = 456
        Top = 102
        Width = 114
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RCOBMTO'
        DataSource = DM1.dsRegCob
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 12
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcdRepresentante: TwwDBLookupComboDlg
        Left = 8
        Top = 20
        Width = 63
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
        Caption = 'Representante'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'REPRID'#9'5'#9'C'#243'digo'#9'F'
          'REPRAPENOM'#9'70'#9'Representante'#9'F')
        DataField = 'REPRID'
        DataSource = DM1.dsRegCob
        LookupTable = DM1.cdsRepresentante
        LookupField = 'REPRID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnEnter = dblcdRepresentanteEnter
        OnExit = dblcdRepresentanteExit
      end
      object bbtnClear: TfcShapeBtn
        Left = 622
        Top = 93
        Width = 34
        Height = 31
        Hint = 'Limpiar'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        Layout = blGlyphTop
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 14
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnClearClick
      end
      object bbtnSigue: TfcShapeBtn
        Left = 585
        Top = 92
        Width = 34
        Height = 31
        Hint = 'Registrar Aportes'
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
        Layout = blGlyphTop
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 13
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnSigueClick
      end
      object edtRepresentante: TwwDBEdit
        Left = 77
        Top = 20
        Width = 468
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRAPENOM'
        DataSource = DM1.dsRegCob
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      object dblcdAgenbco: TwwDBLookupComboDlg
        Left = 226
        Top = 60
        Width = 81
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
        Caption = 'Agencia'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'AGENBCOID'#9'10'#9'Id'#9'F'
          'AGENBCODES'#9'30'#9'Descripci'#243'n'#9'F')
        DataField = 'AGENBCOID'
        DataSource = DM1.dsRegCob
        LookupTable = DM1.cdsAgenciaBco
        LookupField = 'AGENBCOID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdAgenbcoExit
      end
      object dbeBanco: TwwDBEdit
        Left = 56
        Top = 60
        Width = 165
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      end
      object dbeAgencia: TwwDBEdit
        Left = 310
        Top = 60
        Width = 217
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      end
      object dbeMoneda: TwwDBEdit
        Left = 264
        Top = 102
        Width = 183
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
    end
    object dbgDetRegGlobal: TwwDBGrid
      Left = 6
      Top = 182
      Width = 666
      Height = 278
      DisableThemesInTitle = False
      Selected.Strings = (
        'UPAGOID'#9'6'#9'Unidad~Pago'#9'F'
        'FORPAGOID'#9'6'#9'Forma~Recaud.'#9'F'
        'CPAGOID'#9'11'#9'Comprobante ~de Pago'#9'F'
        'CPAGOFECHA'#9'12'#9'Comprob. Pago~Fecha'#9'F'
        'CPAGOTMON'#9'7'#9'Comprob.~T. Mon.'#9'F'
        'CPAGOMTO'#9'12'#9'Comprob. Pago~Monto'#9'F'
        'CPAGODEDUC'#9'12'#9'Comprob. Pago~Deduccci'#243'n'#9'F'
        'CPAGOLIQ'#9'12'#9'Comprob. Pago~Monto Liquido'#9'F'
        'DOCMTO'#9'12'#9'Documento~Monto'#9'F'
        'CPAGOCPTO'#9'15'#9'Comprob. Pago~Concepto'#9'F'
        'FPAGOID'#9'12'#9'Docuemnto~Forma de Pago'#9'F'
        'BANCOID'#9'9'#9'Documento~Banco'#9'F'
        'CCBCO'#9'18'#9'Documento~Cuenta Corriente'#9'F'
        'DOCID'#9'13'#9'N'#176' Documento '#9'F'
        'DOCFECHA'#9'10'#9'Documento~Fecha'#9'F'
        'TMONID'#9'9'#9'Documento~Moneda'#9'F'
        'USUARIO'#9'12'#9'Usuario'#9'F'
        'FREG'#9'11'#9'Fecha ~de Registro'#9'F'
        'HREG'#9'20'#9'Hora ~de Registro'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsDetRegCob
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDblClick = dbgDetRegGlobalDblClick
      OnKeyDown = dbgDetRegGlobalKeyDown
      object bbtnNuevo: TwwIButton
        Left = 0
        Top = 0
        Width = 36
        Height = 36
        AllowAllUp = True
        Enabled = False
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
        OnClick = bbtnNuevoClick
      end
    end
    object pnlTop: TPanel
      Left = 389
      Top = 5
      Width = 280
      Height = 36
      BorderWidth = 1
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TLabel
        Left = 530
        Top = 273
        Width = 32
        Height = 15
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblPeriodo: TLabel
        Left = 4
        Top = 1
        Width = 57
        Height = 30
        Caption = 'Periodo de Cobranza'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblMes: TLabel
        Left = 194
        Top = 9
        Width = 27
        Height = 15
        Caption = 'Mes :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblAno: TLabel
        Left = 66
        Top = 9
        Width = 20
        Height = 15
        Caption = 'A'#241'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object wwDBEdit1: TwwDBEdit
        Left = 569
        Top = 265
        Width = 76
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDNOM'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 341
        Top = 267
        Width = 41
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CONTNUM'#9'9'#9'ID'#9'F'
          'CONTACTO'#9'20'#9'Contacto'#9'F')
        LookupField = 'CONTNUM'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object edtCorrelativo: TEdit
        Left = 165
        Top = 6
        Width = 12
        Height = 21
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object sbAno: TwwDBSpinEdit
        Left = 95
        Top = 6
        Width = 66
        Height = 21
        TabStop = False
        Increment = 1.000000000000000000
        MaxValue = 3000.000000000000000000
        MinValue = 1900.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RCOBANO'
        DataSource = DM1.dsRegCob
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 4
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object sbMes: TwwDBSpinEdit
        Left = 232
        Top = 5
        Width = 36
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RCOBMES'
        DataSource = DM1.dsRegCob
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 2
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        OnExit = sbMesExit
      end
    end
    object gbActualiza: TGroupBox
      Left = 11
      Top = 468
      Width = 649
      Height = 44
      TabOrder = 4
      object Z2bbtnModifica: TfcShapeBtn
        Left = 411
        Top = 11
        Width = 34
        Height = 31
        Hint = 'Modificar Cabecera'
        Color = 13165023
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          333333777777777F33333330B00000003333337F7777777F3333333000000000
          333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
          333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
          03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
          03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
          3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
          333333333377F7F33333333333330F03333333333337F7F33333333333330B03
          3333333333373733333333333333303333333333333373333333}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeColors.Btn3DLight = 14938351
        ShadeColors.BtnHighlight = 15857655
        ShadeColors.BtnShadow = 6582640
        ShadeColors.BtnBlack = 3291448
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnModificaClick
      end
      object Z2bbtnAceptara: TfcShapeBtn
        Left = 451
        Top = 11
        Width = 34
        Height = 31
        Hint = 'Registrar'
        Color = 13165023
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        Layout = blGlyphBottom
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnAceptaraClick
      end
      object Z2bbtnCancel: TfcShapeBtn
        Left = 490
        Top = 11
        Width = 34
        Height = 31
        Hint = 'Cancelar'
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
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 2
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnCancelClick
      end
      object Z2bbtnCierra: TfcShapeBtn
        Left = 529
        Top = 11
        Width = 34
        Height = 31
        Hint = 'Cierra Registrar'
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
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 3
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnCierraClick
      end
      object Z2bbtnConcluir: TfcShapeBtn
        Left = 568
        Top = 11
        Width = 34
        Height = 31
        Hint = 'Cierra Registrar'
        Color = 13165023
        DitherColor = clWhite
        Glyph.Data = {
          F2010000424DF201000000000000760000002800000024000000130000000100
          0400000000007C01000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
          3333333333388F3333333333000033334224333333333333338338F333333333
          0000333422224333333333333833338F33333333000033422222243333333333
          83333338F3333333000034222A22224333333338F33F33338F33333300003222
          A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
          38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
          2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
          0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
          333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
          33333A2224A2233333333338F338F83300003333333333A2224A333333333333
          8F338F33000033333333333A222433333333333338F338F30000333333333333
          A224333333333333338F38F300003333333333333A223333333333333338F8F3
          000033333333333333A3333333333333333383330000}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 4
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnConcluirClick
      end
      object Z2bbtnSalir: TfcShapeBtn
        Left = 607
        Top = 11
        Width = 34
        Height = 31
        Hint = 'Salir'
        Color = 13165023
        DitherColor = clWhite
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
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 5
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnSalirClick
      end
    end
    object pnlDocumentos: TPanel
      Left = 6
      Top = 176
      Width = 671
      Height = 341
      BorderStyle = bsSingle
      Color = 10207162
      TabOrder = 2
      Visible = False
      object StaticText1: TStaticText
        Left = 1
        Top = 1
        Width = 665
        Height = 18
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSunken
        Caption = 'Detalle'
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
      object Panel3: TPanel
        Left = 1
        Top = 16
        Width = 665
        Height = 320
        Align = alBottom
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
          Top = 40
          Width = 57
          Height = 15
          Caption = 'Unid Pago :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 334
          Top = 2
          Width = 71
          Height = 30
          Caption = 'Forma Recaudaci'#243'n :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object lblUnidadProceso: TLabel
          Left = 8
          Top = 3
          Width = 51
          Height = 30
          Caption = 'Unidad de Proceso :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object TLabel
          Left = 7
          Top = 70
          Width = 3
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 335
          Top = 254
          Width = 50
          Height = 30
          Caption = 'Tipo Asociado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object TLabel
          Left = 13
          Top = 62
          Width = 29
          Height = 15
          Caption = 'Ugel :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 335
          Top = 291
          Width = 66
          Height = 15
          Caption = 'Tipo Planilla:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object gbComprobante: TGroupBox
          Left = 3
          Top = 128
          Width = 327
          Height = 189
          Caption = 'Comprobante de Pago'
          TabOrder = 6
          object TLabel
            Left = 5
            Top = 16
            Width = 101
            Height = 15
            Caption = 'Nro Comp. de Pago :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 111
            Top = 16
            Width = 36
            Height = 15
            Caption = 'Fecha :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 8
            Top = 60
            Width = 46
            Height = 15
            Caption = 'Moneda :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 7
            Top = 104
            Width = 67
            Height = 15
            Caption = 'Monto Total :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 109
            Top = 104
            Width = 60
            Height = 15
            Caption = 'Deducci'#243'n :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 103
            Top = 146
            Width = 107
            Height = 15
            AutoSize = False
            Caption = 'Concepto Comp. Pago'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object MtoLiq: TLabel
            Left = 6
            Top = 148
            Width = 73
            Height = 15
            Caption = 'Monto L'#237'quido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 217
            Top = 104
            Width = 100
            Height = 15
            Caption = 'Nro Doc.Deducci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 215
            Top = 14
            Width = 26
            Height = 15
            Caption = 'A'#241'o :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 286
            Top = 14
            Width = 27
            Height = 15
            Caption = 'Mes :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 282
            Top = 62
            Width = 21
            Height = 15
            Caption = 'Mes'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 206
            Top = 63
            Width = 20
            Height = 15
            Caption = 'A'#241'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 243
            Top = 56
            Width = 35
            Height = 15
            Caption = 'Aporte'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dbeCPagoNum: TwwDBEdit
            Left = 9
            Top = 35
            Width = 89
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'CPAGOID'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          object dbdtpCPagoFecha: TwwDBDateTimePicker
            Left = 109
            Top = 35
            Width = 94
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataField = 'CPAGOFECHA'
            DataSource = DM1.dsDetRegCob
            Epoch = 1950
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 1
            DisplayFormat = 'dd/mm/yyyy'
            OnExit = dbdtpCPagoFechaExit
          end
          object dblcdMonedaC: TwwDBLookupCombo
            Left = 8
            Top = 79
            Width = 40
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'TMONID'#9'2'#9'ID'#9'F'
              'TMONDES'#9'30'#9'Moneda'#9'F')
            DataField = 'CPAGOTMON'
            DataSource = DM1.dsDetRegCob
            LookupTable = DM1.cdsTMoneda
            LookupField = 'TMONID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 4
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcdMonedaCExit
            OnNotInList = dblcMonedaNotInList
          end
          object dbeCPagoTotal: TwwDBEdit
            Left = 6
            Top = 121
            Width = 92
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'CPAGOMTO'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            OnExit = dbeCPagoTotalExit
          end
          object dbeDeduccion: TwwDBEdit
            Left = 109
            Top = 121
            Width = 93
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'CPAGODEDUC'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            OnExit = dbeDeduccionExit
          end
          object dbeCPagoConcepto: TwwDBEdit
            Left = 103
            Top = 164
            Width = 214
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'CPAGOCPTO'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 12
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeMtoLiq: TwwDBEdit
            Left = 8
            Top = 164
            Width = 89
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'CPAGOLIQ'
            DataSource = DM1.dsDetRegCob
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          object dbeNroDocDeduccion: TwwDBEdit
            Left = 216
            Top = 121
            Width = 101
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'NRODOCDED'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          object dbeAno: TwwDBEdit
            Left = 215
            Top = 35
            Width = 61
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'RCOBANO'
            DataSource = DM1.dsDetRegCob
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          object dbeMes: TwwDBEdit
            Left = 286
            Top = 35
            Width = 33
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'RCOBMES'
            DataSource = DM1.dsDetRegCob
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          end
          object seMesApo: TwwDBSpinEdit
            Left = 282
            Top = 79
            Width = 36
            Height = 21
            Increment = 1.000000000000000000
            MaxValue = 12.000000000000000000
            MinValue = 1.000000000000000000
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'RCOBMESAPO'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            MaxLength = 2
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            OnExit = seMesApoExit
          end
          object seAnoApo: TwwDBSpinEdit
            Left = 206
            Top = 79
            Width = 62
            Height = 21
            Increment = 1.000000000000000000
            MaxValue = 2020.000000000000000000
            MinValue = 2000.000000000000000000
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'RCOBANOAPO'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            MaxLength = 4
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
          end
          object dbeMonedaC: TwwDBEdit
            Left = 52
            Top = 79
            Width = 146
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          end
        end
        object dblcdUPago: TwwDBLookupComboDlg
          Left = 69
          Top = 37
          Width = 50
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
          Caption = 'Unidad de Pago'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'UPAGOID'#9'3'#9'ID'#9'F'
            'UPAGONOM'#9'65'#9'UNIDAD DE PAGO'#9'F')
          DataField = 'UPAGOID'
          DataSource = DM1.dsDetRegCob
          LookupTable = DM1.cdsUPago
          LookupField = 'UPAGOID'
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          UseTFields = False
          OnExit = dblcdUPagoExit
        end
        object dblcFRecaudacion: TwwDBLookupCombo
          Left = 412
          Top = 7
          Width = 52
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FORPAGOABR'#9'4'#9'ID'#9'F'
            'FORPAGODES'#9'35'#9'DESCRIPCION'#9'F')
          DataField = 'FORPAGOID'
          DataSource = DM1.dsDetRegCob
          LookupTable = DM1.cdsFormaPago
          LookupField = 'FORPAGOABR'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 4
          AutoDropDown = True
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          OnExit = dblcFRecaudacionExit
          OnNotInList = dblcFRecaudacionNotInList
        end
        object gbCheque: TGroupBox
          Left = 333
          Top = 48
          Width = 325
          Height = 200
          Caption = 'Datos del Documento'
          TabOrder = 7
          object TLabel
            Left = 6
            Top = 21
            Width = 110
            Height = 15
            Caption = 'Tipo de Transacci'#243'n :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 6
            Top = 62
            Width = 37
            Height = 15
            Caption = 'Banco :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblNCta: TLabel
            Left = 243
            Top = 106
            Width = 46
            Height = 15
            Caption = 'Nro Cta :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            Visible = False
          end
          object TLabel
            Left = 150
            Top = 106
            Width = 36
            Height = 15
            Caption = 'Fecha :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 8
            Top = 106
            Width = 94
            Height = 15
            Caption = 'N'#176' de Documento :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object TLabel
            Left = 6
            Top = 149
            Width = 46
            Height = 15
            Caption = 'Moneda :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 221
            Top = 149
            Width = 38
            Height = 15
            Caption = 'Monto :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object dblcFPago: TwwDBLookupCombo
            Left = 6
            Top = 38
            Width = 41
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'FPAGOID'#9'2'#9'Id'#9'F'
              'FPAGODES'#9'30'#9'Descripci'#243'n'#9'F')
            DataField = 'FPAGOID'
            DataSource = DM1.dsDetRegCob
            LookupTable = DM1.cdsFPago
            LookupField = 'FPAGOID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcFPagoExit
            OnNotInList = dblcBancoNotInList
          end
          object dblcChqBanco: TwwDBLookupCombo
            Left = 6
            Top = 81
            Width = 42
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'BANCOID'#9'2'#9'ID'#9'F'
              'BANCONOM'#9'40'#9'Banco'#9'F')
            DataField = 'BANCOID'
            DataSource = DM1.dsDetRegCob
            LookupTable = DM1.cdsBcos
            LookupField = 'BANCOID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcChqBancoExit
            OnNotInList = dblcBancoNotInList
          end
          object dbeChqCuenta: TwwDBEdit
            Left = 244
            Top = 126
            Width = 74
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'CCBCO'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            Visible = False
            WantReturns = False
            WordWrap = False
          end
          object dbdtpChqFecha: TwwDBDateTimePicker
            Left = 149
            Top = 126
            Width = 91
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataField = 'DOCFECHA'
            DataSource = DM1.dsDetRegCob
            Epoch = 1950
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 5
            DisplayFormat = 'dd/mm/yyyy'
            OnExit = dbdtpChqFechaExit
          end
          object dbeChqNum: TwwDBEdit
            Left = 8
            Top = 126
            Width = 136
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'DOCID'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          end
          object dblcChqMoneda: TwwDBLookupCombo
            Left = 6
            Top = 166
            Width = 41
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'TMONID'#9'2'#9'ID'#9'F'
              'TMONDES'#9'30'#9'Moneda'#9'F')
            DataField = 'TMONID'
            DataSource = DM1.dsDetRegCob
            LookupTable = DM1.cdsTMoneda
            LookupField = 'TMONID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 7
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcChqMonedaExit
            OnNotInList = dblcBancoNotInList
          end
          object dbeChqMonto: TwwDBEdit
            Left = 220
            Top = 166
            Width = 85
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'DOCMTO'
            DataSource = DM1.dsDetRegCob
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          end
          object dbeFPago: TwwDBEdit
            Left = 54
            Top = 38
            Width = 261
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          object dbeChqBanco: TwwDBEdit
            Left = 53
            Top = 81
            Width = 262
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          end
          object dbeChqMoneda: TwwDBEdit
            Left = 52
            Top = 166
            Width = 150
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
        end
        object bbtnAceptar: TfcShapeBtn
          Left = 591
          Top = 253
          Width = 34
          Height = 31
          Hint = 'Graba Aporte'
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
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 8
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnAceptarClick
        end
        object bbtnCancelar: TfcShapeBtn
          Left = 631
          Top = 251
          Width = 34
          Height = 31
          Hint = 'Cierra Panel'
          Color = 10207162
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
          TabOrder = 9
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnCancelarClick
        end
        object dblcUProceso: TwwDBLookupCombo
          Left = 71
          Top = 7
          Width = 51
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'UPROID'#9'4'#9'ID'#9'F'
            'UPRONOM'#9'65'#9'DESCRIPCION'#9'F')
          DataField = 'UPROID'
          DataSource = DM1.dsDetRegCob
          LookupTable = DM1.cdsUPro
          LookupField = 'UPROID'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SearchDelay = 2
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          OnExit = dblcUProcesoExit
          OnNotInList = dblcUProcesoNotInList
        end
        object edtUPagoAbr: TwwDBEdit
          Left = 126
          Top = 36
          Width = 187
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'UPAGOABR'
          DataSource = DM1.dsDetRegCob
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeUProceso: TwwDBEdit
          Left = 128
          Top = 8
          Width = 187
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
        object dbeUPago: TwwDBEdit
          Left = 128
          Top = 36
          Width = 186
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
        end
        object dbeFRecaudacion: TwwDBEdit
          Left = 469
          Top = 7
          Width = 187
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
        object gbRepresentante: TGroupBox
          Left = 4
          Top = 89
          Width = 325
          Height = 36
          Caption = ' Recpt. de doc por Representante'
          TabOrder = 5
          object TLabel
            Left = 168
            Top = 15
            Width = 36
            Height = 15
            Caption = 'Fecha :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dbdtpFecDocRcp: TwwDBDateTimePicker
            Left = 222
            Top = 10
            Width = 94
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataField = 'FRCPREPRE'
            DataSource = DM1.dsDetRegCob
            Epoch = 1950
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 0
            DisplayFormat = 'dd/mm/yyyy'
          end
        end
        object lblcAsotipid: TwwDBLookupCombo
          Left = 389
          Top = 258
          Width = 41
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'ASOTIPID'#9'4'#9'Tipo'#9'F'
            'ASOTIPDES'#9'15'#9'Descripci'#243'n'#9'F')
          DataField = 'asotipid'
          DataSource = DM1.dsDetRegCob
          LookupTable = DM1.cdsTipCreA
          LookupField = 'asotipid'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 12
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = lblcAsotipidChange
          OnExit = lblcAsotipidExit
          OnNotInList = dblcBancoNotInList
        end
        object dblcdUgel: TwwDBLookupComboDlg
          Left = 68
          Top = 61
          Width = 50
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
          Caption = 'Unidad de Pago'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'USEID'#9'3'#9'ID'#9'F'
            'USENOM'#9'65'#9'UGEL'#9'F')
          DataField = 'USEID'
          DataSource = DM1.dsDetRegCob
          LookupTable = DM1.cdsUSES
          LookupField = 'USEID'
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 13
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          UseTFields = False
          OnExit = dblcdUgelExit
        end
        object dbeUseid: TwwDBEdit
          Left = 129
          Top = 62
          Width = 186
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
        object tcbTipoPla: TComboBox
          Left = 410
          Top = 282
          Width = 87
          Height = 23
          ItemHeight = 15
          TabOrder = 15
          Items.Strings = (
            'Cr'#233'ditos'
            'Aportes')
        end
      end
    end
  end
end
