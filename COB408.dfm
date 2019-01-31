object FFondoSolidario: TFFondoSolidario
  Left = 222
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Generaci'#243'n y Aceptaci'#243'n'
  ClientHeight = 554
  ClientWidth = 587
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
  object Label1: TLabel
    Left = 134
    Top = 0
    Width = 343
    Height = 27
    Caption = 'Generacion y aceptacion de los casos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlCabecera: TPanel
    Left = 17
    Top = 35
    Width = 559
    Height = 499
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object FFSC: TLabel
      Left = 6
      Top = 4
      Width = 291
      Height = 27
      Caption = 'Fondo Solidario de Contingencia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 4
      Top = 33
      Width = 549
      Height = 112
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
        Left = 384
        Top = 11
        Width = 88
        Height = 15
        Caption = 'Fecha de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 10
        Top = 48
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
        Left = 191
        Top = 48
        Width = 19
        Height = 15
        Caption = 'Use'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcTipo: TwwDBLookupCombo
        Left = 10
        Top = 65
        Width = 51
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
      object dbeTipo: TwwDBEdit
        Left = 63
        Top = 65
        Width = 128
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcEstado: TwwDBLookupCombo
        Left = 191
        Top = 65
        Width = 51
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CONTNUM'#9'9'#9'ID'#9'F'
          'CONTACTO'#9'20'#9'Contacto'#9'F')
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object wwDBEdit31: TwwDBEdit
        Left = 241
        Top = 65
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbdtpFRecepcion: TwwDBDateTimePicker
        Left = 384
        Top = 27
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
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 8
        Width = 369
        Height = 41
        Columns = 3
        Items.Strings = (
          'Global'
          'Departamento'
          'USE')
        TabOrder = 5
      end
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 511
      Top = 464
      Width = 32
      Height = 31
      Hint = 'Acepta Cabecera'
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
    object fcShapeBtn1: TfcShapeBtn
      Left = 466
      Top = 464
      Width = 32
      Height = 31
      Hint = 'Borra Cabecera'
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
    end
    object Panel2: TPanel
      Left = 5
      Top = 147
      Width = 549
      Height = 310
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object wwDBGrid3: TwwDBGrid
        Left = 4
        Top = 3
        Width = 538
        Height = 299
        DisableThemesInTitle = False
        Selected.Strings = (
          'TDIARID'#9'3'#9'TD'#9'F'
          'CPANOMES'#9'7'#9'Periodo'#9'F'
          'CPNOREG'#9'7'#9'No.Reg'#9'F'
          'lkDocID'#9'4'#9'Doc'#9'F'
          'CPSERIE'#9'5'#9'Serie'#9'F'
          'CPNODOC'#9'13'#9'No.Documento'#9'F'
          'CPFEMIS'#9'10'#9'Fecha~Emisi'#243'n'#9'F'
          'CPFVCMTO'#9'10'#9'Fecha~Vcmto'#9'F'
          'CPTCAMPR'#9'9'#9'T.Cambio~Provisi'#243'n'#9'F'
          'lkTMonID'#9'4'#9'TM'#9'F'
          'CPMTOORI'#9'8'#9'Total'#9'F'
          'CPSALLOC'#9'12'#9'Saldo Mon.~Local'#9'F'
          'CPSALEXT'#9'12'#9'Saldo Mon.~Extranjera'#9'F')
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        object wwIButton3: TwwIButton
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
    end
  end
end
