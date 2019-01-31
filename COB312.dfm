object FReclamosCob: TFReclamosCob
  Left = -137
  Top = 320
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas'
  ClientHeight = 526
  ClientWidth = 791
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
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlCabecera: TPanel
    Left = 4
    Top = 2
    Width = 785
    Height = 520
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 19
      Top = 4
      Width = 213
      Height = 30
      AutoSize = False
      Caption = 'Reclamo de Cobranzas'
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
      Top = 155
      Width = 47
      Height = 21
      Caption = 'Cuotas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 404
      Top = 155
      Width = 135
      Height = 21
      Caption = 'Pagos sin Sustento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 12
      Top = 318
      Width = 139
      Height = 21
      Caption = 'Detalle de Reclamo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgCreditos: TwwDBGrid
      Left = 6
      Top = 179
      Width = 382
      Height = 136
      DisableThemesInTitle = False
      Selected.Strings = (
        'APOANO'#9'5'#9'A'#241'o'#9'F'
        'APOMES'#9'6'#9'Mes'#9'F'
        'RECLMOTID'#9'8'#9'Motivo'#9'F'
        'RECLSITID'#9'9'#9'Situaci'#243'n'#9'F'
        'TMONID'#9'8'#9'Moneda'#9'F'
        'APOMONTO'#9'15'#9'Monto del Aporte'#9'F'
        'RECLMONTO'#9'17'#9'Monto Reclamado'#9'F'
        'RECLFINI'#9'20'#9'Fecha Reclamo'#9'F'
        'RECLFFIN'#9'20'#9'Fecha Conclusi'#243'n'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsCuotas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
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
      OnDragOver = dbgCreditosDragOver
      OnEndDrag = dbgCreditosEndDrag
      OnMouseDown = dbgCreditosMouseDown
      object dbgCreditosbtn: TwwIButton
        Left = 0
        Top = 0
        Width = 28
        Height = 34
        AllowAllUp = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
          00000000000000FFFFFF000000FFFFFF000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000FFFFFF000000000000000000FFFFFF000000FFFFFF
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000
          00000000000000FFFFFF000000000000000000000000000000000000000000FF
          FFFF000000000000000000000000000000000000000000FFFFFF000000000000
          FFFFFF000000000000000000000000000000000000FFFFFF0000000000000000
          00000000000000FFFFFF000000000000FFFFFF000000000000000000C0C7C000
          0000000000FFFFFF000000000000000000000000000000FFFFFF000000000000
          FFFFFF000000000000000000C0C7C0000000000000FFFFFF0000000000000000
          00000000000000FFFFFFFFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          000000FFFFFF000000000000000000FFFFFF000000FFFFFF0000000000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FF
          FFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFF
          FFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = dbgCreditosbtnClick
      end
    end
    object pnlInicio: TPanel
      Left = 6
      Top = 37
      Width = 772
      Height = 118
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label54: TLabel
        Left = 7
        Top = 2
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
        Left = 540
        Top = 0
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
        Left = 652
        Top = 0
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
        Top = 77
        Width = 82
        Height = 15
        Caption = 'Tipo Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 325
        Top = 77
        Width = 73
        Height = 15
        Caption = 'Tipo Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 175
        Top = 77
        Width = 93
        Height = 15
        Caption = 'N'#176' Identificaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 561
        Top = 77
        Width = 100
        Height = 15
        Caption = 'Situaci'#243'n Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 39
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
        Top = 40
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
        Left = 510
        Top = 39
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
        Top = 17
        Width = 528
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
        OnExit = dbeAsoNomExit
      end
      object dbeAsoId: TwwDBEdit
        Left = 652
        Top = 15
        Width = 113
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object dbeTipo: TwwDBEdit
        Left = 375
        Top = 92
        Width = 157
        Height = 21
        AutoSize = False
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeTipDoc: TwwDBEdit
        Left = 56
        Top = 92
        Width = 114
        Height = 21
        AutoSize = False
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
      object dbeDocIdNum: TwwDBEdit
        Left = 175
        Top = 92
        Width = 117
        Height = 21
        AutoSize = False
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeTipSit: TwwDBEdit
        Left = 612
        Top = 92
        Width = 152
        Height = 21
        AutoSize = False
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
      object dblcdUPro: TwwDBLookupComboDlg
        Left = 6
        Top = 55
        Width = 60
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
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
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
      end
      object dbeUPro: TwwDBEdit
        Left = 71
        Top = 55
        Width = 172
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
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcdUPag: TwwDBLookupComboDlg
        Left = 250
        Top = 55
        Width = 53
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
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
          'UPAGOID'#9'3'#9'C'#243'digo'#9'F'
          'UPAGONOM'#9'65'#9'Nombre Unidad de Pago'#9'F')
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object dbeUPag: TwwDBEdit
        Left = 308
        Top = 54
        Width = 194
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
      object dblcdUse: TwwDBLookupComboDlg
        Left = 510
        Top = 54
        Width = 59
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
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
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object dbeUSE: TwwDBEdit
        Left = 574
        Top = 53
        Width = 191
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
      object dblcdTipo: TwwDBLookupCombo
        Left = 325
        Top = 92
        Width = 45
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'RECLMOTID'#9'2'#9'ID'#9'F'
          'RECLMOTDES'#9'30'#9'Motivo del Reclamo'#9'F')
        LookupTable = DM1.cdsReclamoMotiv
        LookupField = 'RECLMOTID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 12
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object dblcdTipSit: TwwDBLookupCombo
        Left = 561
        Top = 92
        Width = 45
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'RECLMOTID'#9'2'#9'ID'#9'F'
          'RECLMOTDES'#9'30'#9'Motivo del Reclamo'#9'F')
        LookupTable = DM1.cdsReclamoMotiv
        LookupField = 'RECLMOTID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 13
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object dblcdTipDoc: TwwDBLookupCombo
        Left = 6
        Top = 92
        Width = 45
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'RECLMOTID'#9'2'#9'ID'#9'F'
          'RECLMOTDES'#9'30'#9'Motivo del Reclamo'#9'F')
        LookupTable = DM1.cdsReclamoMotiv
        LookupField = 'RECLMOTID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 14
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object dbeCodigoModular: TwwDBEdit
        Left = 540
        Top = 15
        Width = 107
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 15
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnExit = dbeCodigoModularExit
      end
    end
    object dbgReclamo: TwwDBGrid
      Left = 6
      Top = 342
      Width = 772
      Height = 138
      DisableThemesInTitle = False
      Selected.Strings = (
        'APOANO'#9'5'#9'A'#241'o'#9'F'
        'APOMES'#9'6'#9'Mes'#9'F'
        'RECLMOTID'#9'8'#9'Motivo'#9'F'
        'RECLSITID'#9'9'#9'Situaci'#243'n'#9'F'
        'TMONID'#9'8'#9'Moneda'#9'F'
        'APOMONTO'#9'15'#9'Monto del Aporte'#9'F'
        'RECLMONTO'#9'17'#9'Monto Reclamado'#9'F'
        'RECLFINI'#9'20'#9'Fecha Reclamo'#9'F'
        'RECLFFIN'#9'20'#9'Fecha Conclusi'#243'n'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsReclamoDCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDblClick = dbgReclamoDblClick
      OnDragOver = dbgReclamoDragOver
      OnKeyDown = dbgReclamoKeyDown
      OnMouseDown = dbgReclamoMouseDown
      object bbtnInsertaDetReclamo: TwwIButton
        Left = 0
        Top = 0
        Width = 28
        Height = 35
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
        OnClick = bbtnInsertaDetReclamoClick
      end
    end
    object pnlBtnPrin: TPanel
      Left = 636
      Top = 486
      Width = 133
      Height = 29
      BevelOuter = bvNone
      Color = 10207162
      TabOrder = 3
      object Z2bbtnNuevo: TfcShapeBtn
        Left = 20
        Top = 0
        Width = 30
        Height = 29
        Hint = 'Nuevo'
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
        ShadeStyle = fbsRaised
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnNuevoClick
      end
      object Z2bbtnAceptar: TfcShapeBtn
        Left = 60
        Top = 1
        Width = 30
        Height = 29
        Hint = 'Graba Reclamo'
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
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnAceptarClick
      end
      object Z2bbtnCancel: TfcShapeBtn
        Left = 102
        Top = 1
        Width = 30
        Height = 29
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
        ShadeStyle = fbsRaised
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 2
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnCancelClick
      end
    end
    object Panel1: TPanel
      Left = 405
      Top = 3
      Width = 373
      Height = 30
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object TLabel
        Left = 10
        Top = 9
        Width = 59
        Height = 15
        Caption = 'N'#176' Reclamo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 185
        Top = 8
        Width = 78
        Height = 18
        AutoSize = False
        Caption = 'Fecha Reclamo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object dbeReclamo: TwwDBEdit
        Left = 79
        Top = 6
        Width = 89
        Height = 19
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'RECLID'
        DataSource = DM1.dsReclamo
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
        WantReturns = False
        WordWrap = False
      end
      object dbdtpFReclamo: TwwDBDateTimePicker
        Left = 267
        Top = 4
        Width = 98
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'FRECLA'
        DataSource = DM1.dsReclamo
        Epoch = 1950
        Frame.Enabled = True
        Enabled = False
        ShowButton = True
        TabOrder = 1
        OnExit = dbdtpFResultadoExit
      end
    end
    object dbgPagos: TwwDBGrid
      Left = 395
      Top = 179
      Width = 382
      Height = 136
      DisableThemesInTitle = False
      Selected.Strings = (
        'APOANO'#9'5'#9'A'#241'o'#9'F'
        'APOMES'#9'6'#9'Mes'#9'F'
        'RECLMOTID'#9'8'#9'Motivo'#9'F'
        'RECLSITID'#9'9'#9'Situaci'#243'n'#9'F'
        'TMONID'#9'8'#9'Moneda'#9'F'
        'APOMONTO'#9'15'#9'Monto del Aporte'#9'F'
        'RECLMONTO'#9'17'#9'Monto Reclamado'#9'F'
        'RECLFINI'#9'20'#9'Fecha Reclamo'#9'F'
        'RECLFFIN'#9'20'#9'Fecha Conclusi'#243'n'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dstransacciones
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter]
      ParentFont = False
      TabOrder = 5
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDragOver = dbgPagosDragOver
      OnEndDrag = dbgPagosEndDrag
      OnMouseDown = dbgPagosMouseDown
    end
  end
  object PnlBusCre: TPanel
    Left = 336
    Top = 182
    Width = 441
    Height = 77
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object TLabel
      Left = 83
      Top = 40
      Width = 38
      Height = 15
      Caption = 'Cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 250
      Top = 40
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
    object TLabel
      Left = 11
      Top = 40
      Width = 23
      Height = 15
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object btnBusOK: TfcShapeBtn
      Left = 355
      Top = 35
      Width = 28
      Height = 28
      Hint = 'Aceptar '
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
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnBusOKClick
    end
    object btnBusCan: TfcShapeBtn
      Left = 393
      Top = 35
      Width = 28
      Height = 28
      Hint = 'Cancelar'
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
      ShadeStyle = fbsRaised
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnBusCanClick
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 435
      Height = 19
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Buscar Cuota'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object dbeBusCre: TwwDBEdit
      Left = 127
      Top = 35
      Width = 114
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'CREMONTO'
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeBusCuo: TwwDBEdit
      Left = 286
      Top = 36
      Width = 50
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'CREMONTO'
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeBusTip: TwwDBEdit
      Left = 39
      Top = 35
      Width = 36
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'CREMONTO'
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlReclamo: TPanel
    Left = 83
    Top = 189
    Width = 629
    Height = 214
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 1
    Visible = False
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 623
      Height = 19
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Cr'#233'ditos'
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
      Top = 20
      Width = 623
      Height = 189
      Align = alBottom
      BevelOuter = bvNone
      Caption = '.'
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TLabel
        Left = 413
        Top = 54
        Width = 59
        Height = 15
        Caption = 'Monto Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object TLabel
        Left = 312
        Top = 102
        Width = 89
        Height = 15
        Caption = 'Monto Reclamado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object TLabel
        Left = 12
        Top = 55
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
        Left = 11
        Top = 102
        Width = 36
        Height = 15
        Caption = 'Motivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 10
        Top = 144
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
      object TLabel
        Left = 181
        Top = 55
        Width = 50
        Height = 15
        Caption = 'Situaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 183
        Top = 5
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
        Left = 417
        Top = 7
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
      object TLabel
        Left = 538
        Top = 6
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
      object bbtnAceptar: TfcShapeBtn
        Left = 549
        Top = 154
        Width = 28
        Height = 27
        Hint = 'Aceptar '
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
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 11
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnAceptarClick
      end
      object bbtnCancelar: TfcShapeBtn
        Left = 586
        Top = 153
        Width = 28
        Height = 27
        Hint = 'Cancelar'
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
        ShadeStyle = fbsRaised
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 12
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnCancelarClick
      end
      object dbeMontoPagado: TwwDBEdit
        Left = 413
        Top = 74
        Width = 135
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'CREMONTO'
        DataSource = DM1.dsReclamoDCob
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeMontoPagadoExit
      end
      object dblcTMoneda: TwwDBLookupCombo
        Left = 12
        Top = 73
        Width = 40
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        DataField = 'TMONID'
        DataSource = DM1.dsReclamoDCob
        LookupTable = DM1.cdsTmone
        LookupField = 'TMONID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcTMonedaExit
      end
      object edtTMoneda: TEdit
        Left = 55
        Top = 73
        Width = 120
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
        TabOrder = 13
      end
      object dbeMontoRecl: TwwDBEdit
        Left = 312
        Top = 121
        Width = 140
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RECLMONTO'
        DataSource = DM1.dsReclamoDCob
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeMontoReclExit
      end
      object dblcReclMotId: TwwDBLookupCombo
        Left = 11
        Top = 120
        Width = 40
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'RECLMOTID'#9'2'#9'ID'#9'F'
          'RECLMOTDES'#9'30'#9'Motivo del Reclamo'#9'F')
        DataField = 'RECLMOTID'
        DataSource = DM1.dsReclamoDCob
        LookupTable = DM1.cdsReclamoMotiv
        LookupField = 'RECLMOTID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcReclMotIdExit
        OnNotInList = dblcReclMotIdNotInList
      end
      object edtReclMotivo: TEdit
        Left = 54
        Top = 121
        Width = 245
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
        TabOrder = 14
      end
      object dblcReclSit: TwwDBLookupCombo
        Left = 181
        Top = 74
        Width = 52
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'RECLMOTID'#9'2'#9'ID'#9'F'
          'RECLMOTDES'#9'30'#9'Motivo del Reclamo'#9'F')
        DataField = 'RECLSITID'
        DataSource = DM1.dsReclamoDCob
        LookupTable = DM1.cdsReclamoMotiv
        LookupField = 'RECLMOTID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object edtReclSit: TEdit
        Left = 236
        Top = 74
        Width = 166
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
        TabOrder = 15
      end
      object edtTCredito: TEdit
        Left = 229
        Top = 24
        Width = 173
        Height = 21
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object dblcTCredito: TwwDBLookupCombo
        Left = 183
        Top = 24
        Width = 42
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        DataField = 'TIPCREID'
        DataSource = DM1.dsReclamoDCob
        LookupTable = DM1.cdsTCredito
        LookupField = 'TIPCREID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcTCreditoExit
      end
      object dbeNCredito: TwwDBEdit
        Left = 417
        Top = 25
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'CREDID'
        DataSource = DM1.dsReclamoDCob
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeNCreditoExit
      end
      object bbtnNProcede: TfcShapeBtn
        Left = 509
        Top = 153
        Width = 28
        Height = 27
        Hint = 'No Procede Reclamo'
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
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 10
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnNProcedeClick
      end
      object dbmObservacion: TwwDBRichEdit
        Left = 10
        Top = 156
        Width = 487
        Height = 26
        AutoURLDetect = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RECLOBS'
        DataSource = DM1.dsReclamoDCob
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        PrintJobName = 'Delphi 5'
        TabOrder = 9
        OnExit = dbmObservacionExit
        EditorCaption = 'Edit Rich Text'
        EditorPosition.Left = 0
        EditorPosition.Top = 0
        EditorPosition.Width = 0
        EditorPosition.Height = 0
        MeasurementUnits = muInches
        PrintMargins.Top = 1.000000000000000000
        PrintMargins.Bottom = 1.000000000000000000
        PrintMargins.Left = 1.000000000000000000
        PrintMargins.Right = 1.000000000000000000
        PrintHeader.VertMargin = 0.500000000000000000
        PrintHeader.Font.Charset = DEFAULT_CHARSET
        PrintHeader.Font.Color = clWindowText
        PrintHeader.Font.Height = -11
        PrintHeader.Font.Name = 'MS Sans Serif'
        PrintHeader.Font.Style = []
        PrintFooter.VertMargin = 0.500000000000000000
        PrintFooter.Font.Charset = DEFAULT_CHARSET
        PrintFooter.Font.Color = clWindowText
        PrintFooter.Font.Height = -11
        PrintFooter.Font.Name = 'MS Sans Serif'
        PrintFooter.Font.Style = []
        RichEditVersion = 2
        Data = {
          A30000007B5C727466315C616E73695C616E7369637067313235325C64656666
          307B5C666F6E7474626C7B5C66305C666E696C5C66636861727365743020436F
          6D69632053616E73204D533B7D7D0D0A7B5C636F6C6F7274626C203B5C726564
          305C677265656E305C626C75653132383B7D0D0A5C766965776B696E64345C75
          63315C706172645C6366315C6C616E6731303235305C66305C667331365C7061
          720D0A7D0D0A00}
      end
      object grCredito: TRadioGroup
        Left = 8
        Top = 8
        Width = 161
        Height = 41
        Caption = 'Cr'#233'dito'
        Columns = 2
        Items.Strings = (
          'Existe'
          'No Existe')
        TabOrder = 0
        OnExit = grCreditoExit
      end
      object dbeCuota: TwwDBEdit
        Left = 538
        Top = 25
        Width = 70
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'CRECUOTA'
        DataSource = DM1.dsReclamoDCob
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeCuotaExit
      end
    end
  end
  object pnlNoProcede: TPanel
    Left = 73
    Top = 222
    Width = 656
    Height = 74
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object TLabel
      Left = 125
      Top = 25
      Width = 122
      Height = 15
      Caption = 'Resultado de Conclusi'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 15
      Top = 24
      Width = 88
      Height = 15
      Caption = 'Fecha Conclusi'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object bbtnOK: TfcShapeBtn
      Left = 574
      Top = 37
      Width = 28
      Height = 28
      Hint = 'Aceptar '
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
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnOKClick
    end
    object bbtnNoOK: TfcShapeBtn
      Left = 612
      Top = 37
      Width = 28
      Height = 28
      Hint = 'Cancelar'
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
      ShadeStyle = fbsRaised
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnNoOKClick
    end
    object StaticText3: TStaticText
      Left = 1
      Top = 1
      Width = 650
      Height = 19
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'No Procede'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object dbmResultado: TwwDBEdit
      Left = 125
      Top = 43
      Width = 436
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'RECLRC'
      DataSource = DM1.dsReclamoDCob
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
      OnExit = dbmresultadoExit
    end
    object dbdtpFResultado: TwwDBDateTimePicker
      Left = 10
      Top = 42
      Width = 105
      Height = 21
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = 13165023
      DataField = 'RECLFFIN'
      DataSource = DM1.dsReclamoDCob
      Epoch = 1950
      Frame.Enabled = True
      ShowButton = True
      TabOrder = 0
      OnExit = dbdtpFResultadoExit
    end
  end
end
