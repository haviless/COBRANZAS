object FResoluciones: TFResoluciones
  Left = 242
  Top = 315
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Resoluciones'
  ClientHeight = 327
  ClientWidth = 595
  Color = 10207162
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
  object lbCodigo: TfcLabel
    Left = 0
    Top = 4
    Width = 109
    Height = 19
    Caption = 'Código Modular :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object lbTitulo: TfcLabel
    Left = 224
    Top = 3
    Width = 68
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
  object dbgResol: TwwDBGrid
    Left = 3
    Top = 42
    Width = 589
    Height = 281
    Selected.Strings = (
      'RESID'#9'2'#9'TIPO'#9'F'
      'ASOFRESNOM'#9'18'#9'FECHA'#9'F'
      'RESNRO'#9'15'#9'NUMERO'#9'F'
      'RESFVIG'#9'1'#9'VIGENTE'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow]
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 13165023
    DataSource = DM1.dsResol
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
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnDblClick = dbgResolDblClick
    OnKeyDown = dbgResolKeyDown
    IndicatorColor = icBlack
    object wwIButton1: TwwIButton
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
      OnClick = wwIButton1Click
    end
  end
  object pnlResolucion: TPanel
    Left = 101
    Top = 158
    Width = 392
    Height = 140
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 1
    Visible = False
    object StaticText5: TStaticText
      Left = 1
      Top = 1
      Width = 386
      Height = 18
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Resolución'
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
    object Panel11: TPanel
      Left = 3
      Top = 22
      Width = 380
      Height = 109
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
        Left = 95
        Top = 58
        Width = 33
        Height = 15
        Caption = 'Fecha '
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
        Top = 8
        Width = 96
        Height = 15
        Caption = 'Tipo de Resolución'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 238
        Top = 8
        Width = 14
        Height = 15
        Caption = 'N°'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object sbtnRAceptar: TfcShapeBtn
        Left = 294
        Top = 71
        Width = 32
        Height = 31
        Hint = 'Grabar Resoluciones'
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
        TabOrder = 5
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnRAceptarClick
      end
      object sbtnRCancelar: TfcShapeBtn
        Left = 338
        Top = 71
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
        TabOrder = 6
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnRCancelarClick
      end
      object dblcRTipResol: TwwDBLookupCombo
        Left = 15
        Top = 31
        Width = 51
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
          'TIPRESID'#9'2'#9'ID'#9'F'
          'TIPRESDES'#9'40'#9'DESCRIPCION'#9'F')
        DataField = 'RESID'
        DataSource = DM1.dsResol
        LookupTable = DM1.cdsTResol
        LookupField = 'TIPRESID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        AllowClearKey = False
        OnExit = dblcRTipResolExit
        OnNotInList = dblcNotInList
      end
      object edtRDescripcion: TEdit
        Left = 69
        Top = 31
        Width = 159
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        TabOrder = 1
      end
      object dbeNroResol: TwwDBEdit
        Left = 240
        Top = 31
        Width = 125
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'ASONRES'
        DataSource = DM1.dsResol
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
      end
      object cbVigencia: TCheckBox
        Left = 15
        Top = 73
        Width = 65
        Height = 17
        Caption = 'Vigente'
        TabOrder = 3
      end
      object dbdtpRfecha: TwwDBDateTimePicker
        Left = 95
        Top = 77
        Width = 106
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'ASOFRES'
        DataSource = DM1.dsResol
        Epoch = 1950
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 4
        UnboundDataType = wwDTEdtDate
        DisplayFormat = 'dd/mm/yyyy'
      end
    end
  end
end
