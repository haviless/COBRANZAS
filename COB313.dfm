object FDevolCuota: TFDevolCuota
  Left = 119
  Top = 99
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas'
  ClientHeight = 518
  ClientWidth = 775
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
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 3
    Top = 2
    Width = 769
    Height = 513
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 10
      Top = 5
      Width = 193
      Height = 27
      Caption = 'Devoluci'#243'n de Cuotas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object TLabel
      Left = 11
      Top = 159
      Width = 163
      Height = 21
      Caption = 'Cuotas No Reclamadas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 392
      Top = 160
      Width = 136
      Height = 21
      Caption = 'Cuotas Reclamadas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 11
      Top = 325
      Width = 155
      Height = 21
      Caption = 'Detalle de Devoluci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgDetReclamo: TwwDBGrid
      Left = 390
      Top = 182
      Width = 373
      Height = 143
      DisableThemesInTitle = False
      Selected.Strings = (
        'RECLID'#9'6'#9'Reclamo'#9'F'
        'APOANO'#9'4'#9'A'#241'o'#9'F'
        'APOMES'#9'4'#9'Mes'#9'F'
        'TMONID'#9'5'#9'Moneda'#9'F'
        'RECLMONTO'#9'10'#9'Monto'#9'F'
        'RECLSITID'#9'7'#9'Situaci'#243'n'#9'F'
        'RECLFINI'#9'13'#9'Fecha Reclamo'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsReclamoDCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter]
      ParentFont = False
      TabOrder = 6
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDragOver = dbgDetReclamoDragOver
      OnEndDrag = dbgDetReclamoEndDrag
      OnMouseDown = dbgDetReclamoMouseDown
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 691
      Top = 479
      Width = 31
      Height = 32
      Hint = 'Devuelve Aporte'
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
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object Z2bbtnCancel: TfcShapeBtn
      Left = 732
      Top = 481
      Width = 31
      Height = 30
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
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCancelClick
    end
    object dbgCreditos: TwwDBGrid
      Left = 8
      Top = 182
      Width = 378
      Height = 142
      DisableThemesInTitle = False
      Selected.Strings = (
        'TRANSANO'#9'5'#9'A'#241'o'#9'F'
        'TRANSMES'#9'3'#9'Mes'#9'F'
        'FORPAGOABR'#9'15'#9'Forma de Pago'#9'F'
        'TMONID'#9'3'#9'Moneda'#9'F'
        'TRANSMTO'#9'12'#9'Monto'#9'F'
        'APOFDEV'#9'6'#9'Devuelto(S/N)'#9'F'
        'APOFNP'#9'1'#9'No Procede(S/N)'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsCuotas
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColLines, dgShowFooter]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDragOver = dbgCreditosDragOver
      OnEndDrag = dbgCreditosEndDrag
      OnMouseDown = dbgCreditosMouseDown
    end
    object dbgDevolver: TwwDBGrid
      Left = 8
      Top = 347
      Width = 754
      Height = 129
      DisableThemesInTitle = False
      Selected.Strings = (
        'DEVID'#9'6'#9'ID'#9'F'
        'APOANO'#9'5'#9'A'#241'o del ~Aporte'#9'F'
        'APOMES'#9'6'#9'Mes del ~Aporte'#9'F'
        'TMONID'#9'5'#9'Moneda'#9'F'
        'APOMONTO'#9'12'#9'Monto ~del Aporte'#9'F'
        'DEVMTO'#9'12'#9'Monto~Devuelto'#9'F'
        'FORPAGOID'#9'10'#9'Forma de Pago'#9'F'
        'BANCOID'#9'4'#9'Banco'#9'F'
        'DEVMOTID'#9'8'#9'Motivo ~Devoluci'#243'n'#9'F'
        'AGENBCOID'#9'7'#9'Agencia ~del Banco'#9'F'
        'ASONCTA'#9'20'#9'N'#250'mero de ~Cuenta'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsRecauda
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter]
      ParentFont = False
      TabOrder = 2
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDblClick = dbgDevolverDblClick
      OnDragOver = dbgDevolverDragOver
      OnKeyDown = dbgDevolverKeyDown
      OnMouseDown = dbgDevolverMouseDown
    end
    object Z2bbtnNuevo: TfcShapeBtn
      Left = 648
      Top = 479
      Width = 31
      Height = 32
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
    object pnlcta: TPanel
      Left = 3
      Top = 124
      Width = 761
      Height = 36
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object TLabel
        Left = 472
        Top = 13
        Width = 73
        Height = 15
        Caption = 'Situaci'#243'n Cta.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 298
        Top = 13
        Width = 52
        Height = 15
        Caption = 'N'#176' Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 7
        Top = 13
        Width = 34
        Height = 15
        Caption = 'Banco '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object wwDBEdit3: TwwDBEdit
        Left = 759
        Top = 145
        Width = 74
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNroCta: TwwDBEdit
        Left = 354
        Top = 8
        Width = 112
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
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object dbeBco: TwwDBEdit
        Left = 85
        Top = 8
        Width = 206
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
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeSitCta: TwwDBEdit
        Left = 591
        Top = 8
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
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcBcoId: TwwDBLookupCombo
        Left = 42
        Top = 8
        Width = 39
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 4
        Visible = False
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object dblcSitCta: TwwDBLookupCombo
        Left = 549
        Top = 8
        Width = 37
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 5
        Visible = False
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object Panel2: TPanel
      Left = 531
      Top = 2
      Width = 233
      Height = 30
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object TLabel
        Left = 10
        Top = 9
        Width = 89
        Height = 15
        Caption = 'N'#176' de Devoluci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeDevolucion: TwwDBEdit
        Left = 135
        Top = 6
        Width = 89
        Height = 19
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'DEVID'
        DataSource = DM1.dsDevolucion
        Enabled = False
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
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlInicio: TPanel
      Left = 3
      Top = 35
      Width = 761
      Height = 84
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      object Label54: TLabel
        Left = 7
        Top = 5
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
      object TLabel
        Left = 529
        Top = 4
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
        Left = 642
        Top = 4
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
      object TLabel
        Left = 6
        Top = 43
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
        Left = 250
        Top = 44
        Width = 78
        Height = 15
        Caption = 'Unidad de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 501
        Top = 43
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
      object dbeAsoNom: TwwDBEdit
        Left = 7
        Top = 21
        Width = 515
        Height = 21
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        OnExit = dbeAsoNomExit
      end
      object dbeCodigoModular: TwwDBEdit
        Left = 529
        Top = 21
        Width = 105
        Height = 21
        AutoSize = False
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnExit = dbeCodigoModularExit
      end
      object dbeAsoId: TwwDBEdit
        Left = 642
        Top = 21
        Width = 113
        Height = 21
        AutoSize = False
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object dblcdUPro: TwwDBLookupComboDlg
        Left = 6
        Top = 59
        Width = 60
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Proceso'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'UPROID'#9'3'#9'C'#243'digo'#9'F'
          'UPRONOM'#9'75'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
      end
      object dbeUPro: TwwDBEdit
        Left = 71
        Top = 59
        Width = 172
        Height = 19
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
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
      object dblcdUPag: TwwDBLookupComboDlg
        Left = 250
        Top = 59
        Width = 53
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
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
          'UPAGOID'#9'3'#9'C'#243'digo'#9'F'
          'UPAGONOM'#9'65'#9'Nombre Unidad de Pago'#9'F')
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object dbeUPag: TwwDBEdit
        Left = 308
        Top = 58
        Width = 187
        Height = 19
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
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
      object dblcdUse: TwwDBLookupComboDlg
        Left = 501
        Top = 58
        Width = 59
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'USEID'#9'3'#9'ID'#9'F'
          'USENOM'#9'75'#9'USE'#9'F')
        LookupTable = DM1.cdsUSES
        LookupField = 'USEID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 7
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object dbeUSE: TwwDBEdit
        Left = 564
        Top = 58
        Width = 191
        Height = 19
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
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
    end
    object pnlCuotas: TPanel
      Left = 66
      Top = 214
      Width = 647
      Height = 236
      BorderStyle = bsSingle
      Color = 10207162
      TabOrder = 1
      Visible = False
      object StaticText2: TStaticText
        Left = 1
        Top = 1
        Width = 641
        Height = 19
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSunken
        Caption = 'Cuotas'
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 1
        Top = 21
        Width = 641
        Height = 210
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
          Left = 7
          Top = 41
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
          Left = 7
          Top = 83
          Width = 76
          Height = 15
          Caption = 'Forma de Pago '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblAgencia: TLabel
          Left = 5
          Top = 123
          Width = 42
          Height = 15
          Caption = 'Agencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 304
          Top = 43
          Width = 90
          Height = 15
          Caption = 'Monto a Devolver'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label2: TLabel
          Left = 271
          Top = 167
          Width = 122
          Height = 15
          Caption = 'Resultado de Conclusi'#243'n'
        end
        object TLabel
          Left = 8
          Top = 0
          Width = 64
          Height = 15
          Caption = 'Tipo Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 304
          Top = 1
          Width = 55
          Height = 15
          Caption = 'N'#176' Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblBanco: TLabel
          Left = 288
          Top = 83
          Width = 31
          Height = 15
          Caption = 'Banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 451
          Top = 0
          Width = 29
          Height = 15
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblNCuenta: TLabel
          Left = 321
          Top = 126
          Width = 61
          Height = 15
          Caption = 'Nro. Cuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblFecConcl: TLabel
          Left = 7
          Top = 166
          Width = 88
          Height = 15
          Caption = 'Fecha Conclusi'#243'n'
        end
        object dblcTMoneda: TwwDBLookupCombo
          Left = 7
          Top = 58
          Width = 41
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'TMONID'#9'2'#9'Id'#9'F'
            'TMONDES'#9'30'#9'Descripci'#243'n'#9'F')
          DataField = 'TMONID'
          DataSource = DM1.dsRecauda
          LookupTable = DM1.cdsTmone
          LookupField = 'TMONID'
          Options = [loColLines, loTitles]
          Color = 13165023
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 4
          AutoDropDown = True
          ShowButton = True
          SearchDelay = 2
          PreciseEditRegion = False
          AllowClearKey = False
          OnExit = dblcTMonedaExit
        end
        object dblcFormaPago: TwwDBLookupCombo
          Left = 7
          Top = 100
          Width = 47
          Height = 21
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FORPAGOID'#9'3'#9'Id'#9'F'
            'FORPAGODES'#9'25'#9'Descripci'#243'n'#9'F')
          DataField = 'FORPAGOID'
          DataSource = DM1.dsRecauda
          LookupTable = DM1.cdsFormaPago
          LookupField = 'FORPAGOID'
          Options = [loColLines, loTitles]
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          MaxLength = 3
          ParentFont = False
          TabOrder = 7
          AutoDropDown = True
          ShowButton = True
          SearchDelay = 2
          PreciseEditRegion = False
          AllowClearKey = False
          OnExit = dblcFormaPagoExit
        end
        object dbeMontoDevoluc: TwwDBEdit
          Left = 304
          Top = 58
          Width = 130
          Height = 19
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'DEVMTO'
          DataSource = DM1.dsRecauda
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = dbeMontoDevolucExit
        end
        object dblcdAgencia: TwwDBLookupComboDlg
          Left = 5
          Top = 140
          Width = 71
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'USE'
          MaxWidth = 0
          MaxHeight = 209
          SearchDelay = 2
          Selected.Strings = (
            'AGENBCOID'#9'8'#9'Id'#9'F'
            'AGENBCODES'#9'30'#9'Descripci'#243'n'#9'F')
          DataField = 'AGENBCOID'
          DataSource = DM1.dsRecauda
          LookupTable = DM1.cdsAgenciaBco
          LookupField = 'AGENBCOID'
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 11
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
          OnExit = dblcdAgenciaExit
        end
        object dbmResultado: TwwDBEdit
          Left = 113
          Top = 184
          Width = 443
          Height = 19
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'DEVOBS'
          DataSource = DM1.dsRecauda
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 15
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = dbmResultadoExit
        end
        object dblcTCredito: TwwDBLookupCombo
          Left = 8
          Top = 16
          Width = 42
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          DataField = 'TIPCREID'
          DataSource = DM1.dsRecauda
          LookupTable = DM1.cdsTCredito
          LookupField = 'TIPCREID'
          Color = 13165023
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnExit = dblcTCreditoExit
        end
        object dbeNCredito: TwwDBEdit
          Left = 304
          Top = 17
          Width = 130
          Height = 19
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'CREDID'
          DataSource = DM1.dsRecauda
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
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
        object dblcBanco: TwwDBLookupCombo
          Left = 288
          Top = 100
          Width = 41
          Height = 21
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'BANCOID'#9'2'#9'Id'#9'F'
            'BANCONOM'#9'25'#9'Descripci'#243'n'#9'F')
          DataField = 'BANCOID'
          DataSource = DM1.dsRecauda
          LookupTable = DM1.cdsBcos
          LookupField = 'BANCOID'
          Options = [loColLines, loTitles]
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 9
          AutoDropDown = True
          ShowButton = True
          SearchDelay = 2
          PreciseEditRegion = False
          AllowClearKey = False
          OnExit = dblcBancoExit
        end
        object dbeCuota: TwwDBEdit
          Left = 451
          Top = 17
          Width = 89
          Height = 19
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'CREDID'
          DataSource = DM1.dsRecauda
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object dbeCuenta: TwwDBEdit
          Left = 321
          Top = 140
          Width = 144
          Height = 21
          AutoSize = False
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'ASONCTA'
          DataSource = DM1.dsRecauda
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = dbeCuentaExit
        end
        object dbdtpFResultado: TwwDBDateTimePicker
          Left = 7
          Top = 184
          Width = 97
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = 13165023
          DataField = 'FREG'
          DataSource = DM1.dsRecauda
          Epoch = 1950
          Frame.Enabled = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 14
          OnExit = dbdtpFResultadoExit
        end
        object bbtnCancelar: TfcShapeBtn
          Left = 604
          Top = 168
          Width = 31
          Height = 32
          Hint = 'Acepta Cabecera'
          Cancel = True
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
          TabOrder = 16
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnCancelarClick
        end
        object bbtnAceptar: TfcShapeBtn
          Left = 570
          Top = 168
          Width = 31
          Height = 32
          Hint = 'Aceptar'
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
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 17
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnAceptarClick
        end
        object dbeTCredito: TwwDBEdit
          Left = 56
          Top = 16
          Width = 235
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
        object dbeMoneda: TwwDBEdit
          Left = 56
          Top = 56
          Width = 213
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
        object dbeFormaPago: TwwDBEdit
          Left = 59
          Top = 100
          Width = 223
          Height = 21
          AutoSize = False
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
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeBanco: TwwDBEdit
          Left = 338
          Top = 100
          Width = 212
          Height = 21
          AutoSize = False
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
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeAgencia: TwwDBEdit
          Left = 82
          Top = 140
          Width = 225
          Height = 21
          AutoSize = False
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
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
  end
  object ppReport1: TppReport
    AutoStop = False
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
    Template.FileName = 'C:\SOL\APO\APOREPCTAIN\Cuenta.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 723
    Top = 200
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 97896
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 14552
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'PREVISION SOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 19315
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'ESTADO DE CUENTA INDIVIDUAL DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 53711
        mmTop = 28840
        mmWidth = 66675
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
        mmHeight = 3704
        mmLeft = 170921
        mmTop = 11906
        mmWidth = 14288
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
        mmHeight = 3704
        mmLeft = 170921
        mmTop = 16669
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 186267
        mmTop = 21696
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 158221
        mmTop = 11906
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 158221
        mmTop = 16669
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 158221
        mmTop = 21696
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 37835
        mmWidth = 188384
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'C'#243'digo Modular :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 46302
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'USE : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 51329
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Unidad de Pago : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 56356
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Res. Nombramiento :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 61383
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Fec.Res.Nomb. . '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 61383
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'A'#241'os de Aportes a '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 66411
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Unidad de Proceso : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 113506
        mmTop = 51329
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 75142
        mmWidth = 188384
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4233
        mmTop = 93663
        mmWidth = 188384
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'FEC.REG.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 87577
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'FEC.OPER.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 20373
        mmTop = 87577
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'N.OPER.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 40481
        mmTop = 87577
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'FORM.PAG.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 53975
        mmTop = 87577
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'PERIODO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 75142
        mmTop = 87577
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'CAP.ACUM.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 94192
        mmTop = 87577
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'INTERES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 111919
        mmTop = 87577
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'BONUS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 127265
        mmTop = 87577
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'APORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 139171
        mmTop = 87577
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'DEVOLC.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 153194
        mmTop = 87577
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'TOTAL ACUM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169334
        mmTop = 87577
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 83609
        mmWidth = 188384
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'ASOAPENOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 113506
        mmTop = 46302
        mmWidth = 77258
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Res. Cese : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 113506
        mmTop = 56356
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Fec. Res. Cese : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 149754
        mmTop = 56356
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 
          '(*) a Diciembre 1998 - Bonus=1%, a partir de Enero 1999 - Bonus ' +
          '= 0.5%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 79375
        mmWidth = 90752
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 32015
        mmTop = 46302
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'UPAGONOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 32015
        mmTop = 56356
        mmWidth = 69056
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASORESNOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 32279
        mmTop = 61383
        mmWidth = 19050
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ASOFRESNOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 76729
        mmTop = 61383
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'UPRONOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 139700
        mmTop = 51329
        mmWidth = 53446
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ASORESCESE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 128059
        mmTop = 56356
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'ASOFRESCESE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170127
        mmTop = 56356
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 84138
        mmTop = 1058
        mmWidth = 794
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'FREG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 1058
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'TRANSFOPE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 20902
        mmTop = 1058
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'TRANSNOPE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36777
        mmTop = 1058
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FORPAGOABR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 55033
        mmTop = 1058
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'TRANSANO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 77523
        mmTop = 1058
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'TRANSMES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 85461
        mmTop = 1058
        mmWidth = 3440
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'SALDOANT'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 94721
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'INTERESMTO'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 110331
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'BONUSMTO'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 125942
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'TRANSMTO'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'TRANSMTODEV'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'SALDO'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173302
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 12171
        mmWidth = 188384
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 
          '----------------------------------------------------------------' +
          '-------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 84138
        mmTop = 794
        mmWidth = 87842
        BandType = 7
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 
          'Capital Acumulado a la fecha de Emisi'#243'n de este Reporte :       ' +
          '         S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 17992
        mmWidth = 86519
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'SALDOANT'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 94721
        mmTop = 5027
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'INTERESMTO'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 110331
        mmTop = 5027
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'BONUSMTO'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 125942
        mmTop = 5027
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'TRANSMTO'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 5027
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'TRANSMTODEV'
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 5027
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'SALDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 87048
        mmTop = 17992
        mmWidth = 15081
        BandType = 7
      end
    end
  end
end
