object FBoletaCob: TFBoletaCob
  Left = 219
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas'
  ClientHeight = 509
  ClientWidth = 758
  Color = 12904163
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
  object pnlCabecera: TPanel
    Left = 3
    Top = 3
    Width = 750
    Height = 501
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object lblBOlPago: TLabel
      Left = 10
      Top = 6
      Width = 137
      Height = 27
      Caption = 'Boleta de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlAso: TPanel
      Left = 152
      Top = 2
      Width = 593
      Height = 33
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblCod: TLabel
        Left = 6
        Top = 11
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
      object lblApeNom: TLabel
        Left = 118
        Top = 12
        Width = 116
        Height = 15
        Caption = 'Apellidos y Nombres   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbecodigo: TwwDBEdit
        Left = 45
        Top = 7
        Width = 65
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRID'
        DataSource = DM1.dsRepresentante
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
      object dbeApeNom: TwwDBEdit
        Left = 225
        Top = 7
        Width = 362
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'REPRAPENOM'
        DataSource = DM1.dsRepresentante
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlBoletaD: TPanel
      Left = 8
      Top = 267
      Width = 736
      Height = 200
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lblDetalleBol: TLabel
        Left = 13
        Top = 2
        Width = 125
        Height = 21
        Caption = 'Detalle de Boleta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgBoletaDCob: TwwDBGrid
        Left = 5
        Top = 23
        Width = 719
        Height = 170
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
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnDblClick = dbgBoletaDCobDblClick
        OnDragOver = dbgBoletaDCobDragOver
        OnKeyDown = dbgBoletaDCobKeyDown
        object wwIButton1: TwwIButton
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
          OnClick = wwIButton1Click
        end
      end
    end
    object pnlCod: TPanel
      Left = 7
      Top = 39
      Width = 736
      Height = 71
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object lblTBol: TLabel
        Left = 285
        Top = 11
        Width = 58
        Height = 15
        Caption = 'Tipo Boleta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblNBol: TLabel
        Left = 137
        Top = 11
        Width = 49
        Height = 15
        Caption = 'N'#176' Boleta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblFecha: TLabel
        Left = 5
        Top = 12
        Width = 30
        Height = 15
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblNOficio: TLabel
        Left = 572
        Top = 11
        Width = 61
        Height = 15
        Caption = 'Nro. Oficio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblTMon: TLabel
        Left = 5
        Top = 50
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
      object lblTCambio: TLabel
        Left = 248
        Top = 52
        Width = 47
        Height = 15
        Caption = 'T.Cambio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dblctipbol: TwwDBLookupCombo
        Left = 348
        Top = 6
        Width = 37
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        DataField = 'TIPBID'
        DataSource = DM1.dsBoletaCob
        LookupTable = DM1.cdsTipBoleta
        LookupField = 'TIPBID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 12
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblctipbolExit
      end
      object edttipbol: TEdit
        Left = 390
        Top = 6
        Width = 175
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
        TabOrder = 4
      end
      object dbenumbol: TwwDBEdit
        Left = 190
        Top = 6
        Width = 91
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'BOLRNUMB'
        DataSource = DM1.dsBoletaCob
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
      object dbdtpfecha: TwwDBDateTimePicker
        Left = 43
        Top = 6
        Width = 88
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'BOLFEMIS'
        DataSource = DM1.dsBoletaCob
        Epoch = 1950
        Frame.Enabled = True
        Enabled = False
        ShowButton = True
        TabOrder = 0
        OnExit = dbdtpfechaExit
      end
      object dbenumofi: TwwDBEdit
        Left = 639
        Top = 6
        Width = 91
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'NROOFI'
        DataSource = DM1.dsBoletaCob
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
      end
      object dblcdMonedaC: TwwDBLookupCombo
        Left = 52
        Top = 44
        Width = 40
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
          'TMONID'#9'2'#9'ID'#9'F'
          'TMONDES'#9'30'#9'Moneda'#9'F')
        DataField = 'TMONID'
        DataSource = DM1.dsBoletaCob
        LookupTable = DM1.cdsTMoneda
        LookupField = 'TMONID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcdMonedaCExit
      end
      object dbeMonedaC: TwwDBEdit
        Left = 96
        Top = 44
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
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeTCambio: TwwDBEdit
        Left = 302
        Top = 45
        Width = 65
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'BOLTCAMB'
        DataSource = DM1.dsBoletaCob
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
      end
    end
    object pnlMov: TPanel
      Left = 8
      Top = 116
      Width = 737
      Height = 145
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object lblMovCob: TLabel
        Left = 13
        Top = -1
        Width = 278
        Height = 21
        Caption = 'Movimiento de Cobranzas (Conciliados)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgMovCob: TwwDBGrid
        Left = 7
        Top = 21
        Width = 719
        Height = 119
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
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnDragOver = dbgMovCobDragOver
        OnEndDrag = dbgMovCobEndDrag
        OnMouseDown = dbgMovCobMouseDown
      end
    end
  end
  object Z2bbtnAceptar: TfcShapeBtn
    Left = 666
    Top = 472
    Width = 33
    Height = 31
    Hint = 'Aceptar'
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
    TabOrder = 1
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnAceptarClick
  end
  object Z2bbtnCancel: TfcShapeBtn
    Left = 713
    Top = 472
    Width = 33
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
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 2
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnCancelClick
  end
  object pnlBoletaDCob: TPanel
    Left = 51
    Top = 297
    Width = 656
    Height = 162
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 3
    Visible = False
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 650
      Height = 19
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Detalle de Boleta'
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
      Width = 650
      Height = 136
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
      object lblConcep: TLabel
        Left = 104
        Top = 5
        Width = 47
        Height = 15
        Caption = 'Concepto'
      end
      object lblRefer: TLabel
        Left = 383
        Top = 7
        Width = 58
        Height = 15
        Caption = 'Referencia'
      end
      object lblItem: TLabel
        Left = 32
        Top = 6
        Width = 24
        Height = 15
        Caption = 'Item'
      end
      object lblTipo: TLabel
        Left = 46
        Top = 50
        Width = 23
        Height = 15
        Caption = 'Tipo'
      end
      object lblmto: TLabel
        Left = 321
        Top = 54
        Width = 59
        Height = 15
        Caption = 'Monto Base'
      end
      object lblporc: TLabel
        Left = 441
        Top = 54
        Width = 67
        Height = 15
        Caption = 'Porcentaje %'
      end
      object lblmtn: TLabel
        Left = 547
        Top = 54
        Width = 71
        Height = 15
        Caption = 'Monto Detalle'
      end
      object bbtnAceptar: TfcShapeBtn
        Left = 576
        Top = 102
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
        TabOrder = 6
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnAceptarClick
      end
      object bbtnCancelar: TfcShapeBtn
        Left = 612
        Top = 102
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
        TabOrder = 7
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnCancelarClick
      end
      object dblcconcid: TwwDBLookupCombo
        Left = 85
        Top = 23
        Width = 60
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        DataField = 'CONCID'
        DataSource = DM1.dsBoletaDCob
        LookupTable = DM1.cdsconcepto
        LookupField = 'CONCID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcconcidExit
      end
      object edtconcdes: TEdit
        Left = 149
        Top = 23
        Width = 212
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
        TabOrder = 9
      end
      object dbedescri: TwwDBEdit
        Left = 369
        Top = 24
        Width = 271
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'BOLRREF'
        DataSource = DM1.dsBoletaDCob
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
        OnExit = dbedescriExit
      end
      object dbeitem: TwwDBEdit
        Left = 11
        Top = 23
        Width = 65
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'BOLRNUMBD'
        DataSource = DM1.dsBoletaDCob
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
      end
      object dblctipcid: TwwDBLookupCombo
        Left = 11
        Top = 68
        Width = 45
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        DataField = 'TIPCID'
        DataSource = DM1.dsBoletaDCob
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object edttpcdes: TEdit
        Left = 61
        Top = 68
        Width = 224
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
        TabOrder = 10
      end
      object dbemto: TwwDBEdit
        Left = 299
        Top = 69
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'CONCMTO'
        DataSource = DM1.dsBoletaDCob
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
        OnExit = dbemtoExit
      end
      object dbeporc: TwwDBEdit
        Left = 411
        Top = 69
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'CONCPORC'
        DataSource = DM1.dsBoletaDCob
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
      end
      object dbemtn: TwwDBEdit
        Left = 523
        Top = 69
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'CONCMTN'
        DataSource = DM1.dsBoletaDCob
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
        OnExit = dbemtnExit
      end
    end
  end
  object Z2bbtnAceptara: TfcShapeBtn
    Left = 618
    Top = 472
    Width = 33
    Height = 31
    Hint = 'Registrar'
    Color = 13165023
    DitherColor = clWhite
    Glyph.Data = {
      8A010000424D8A01000000000000760000002800000017000000170000000100
      0400000000001401000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333303000077777777777770003300000078888888888880000300000
      0780088888888800003000000780088888888800003000000780088888888800
      0030000007888888888888000030000000000000000000000030000000000000
      0000000000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000
      FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF00
      00300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFF
      FFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000
      FFFFFFFFFFFFFF07703000009999999999999907703000009999999999999900
      0030300099999999999999000330}
    Layout = blGlyphBottom
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
    OnClick = Z2bbtnAceptaraClick
  end
end
