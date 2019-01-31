object FDescarga: TFDescarga
  Left = 215
  Top = 34
  Width = 433
  Height = 319
  Caption = 'Cobranzas'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 72
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 3
    Top = 3
    Width = 414
    Height = 278
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 10
      Top = 1
      Width = 215
      Height = 27
      Caption = 'Descarga de Archivos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 4
      Top = 30
      Width = 405
      Height = 124
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
        Left = 8
        Top = 8
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
        Left = 190
        Top = 6
        Width = 20
        Height = 15
        Caption = 'Año'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 237
        Top = 6
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
        Left = 8
        Top = 48
        Width = 82
        Height = 15
        Caption = 'Tipo de Archivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 192
        Top = 48
        Width = 41
        Height = 15
        Caption = 'Archivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 277
        Top = 8
        Width = 58
        Height = 15
        Caption = 'N° Plantilla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcFormaRep: TwwDBLookupCombo
        Left = 8
        Top = 23
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
        AllowClearKey = False
      end
      object dbeApePat: TwwDBEdit
        Left = 59
        Top = 23
        Width = 129
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBSpinEdit1: TwwDBSpinEdit
        Left = 188
        Top = 23
        Width = 47
        Height = 21
        Increment = 1
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object wwDBSpinEdit2: TwwDBSpinEdit
        Left = 235
        Top = 23
        Width = 42
        Height = 21
        Increment = 1
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object wwDBEdit1: TwwDBEdit
        Left = 59
        Top = 63
        Width = 129
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 8
        Top = 63
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
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 188
        Top = 63
        Width = 211
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object btnFILEPATHCab: TButton
        Left = 381
        Top = 61
        Width = 16
        Height = 21
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        TabStop = False
      end
      object wwDBComboDlg1: TwwDBComboDlg
        Left = 277
        Top = 23
        Width = 122
        Height = 21
        ShowButton = True
        Style = csDropDown
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 8
        UnboundDataType = wwDefault
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 173
      Width = 412
      Height = 104
      Selected.Strings = (
        'TDIARID'#9'3'#9'TD'#9'F'
        'CPANOMES'#9'7'#9'Periodo'#9'F'
        'CPNOREG'#9'7'#9'No.Reg'#9'F'
        'lkDocID'#9'4'#9'Doc'#9'F'
        'CPSERIE'#9'5'#9'Serie'#9'F'
        'CPNODOC'#9'13'#9'No.Documento'#9'F'
        'CPFEMIS'#9'10'#9'Fecha~Emisión'#9'F'
        'CPFVCMTO'#9'10'#9'Fecha~Vcmto'#9'F'
        'CPTCAMPR'#9'9'#9'T.Cambio~Provisión'#9'F'
        'lkTMonID'#9'4'#9'TM'#9'F'
        'CPMTOORI'#9'8'#9'Total'#9'F'
        'CPSALLOC'#9'12'#9'Saldo Mon.~Local'#9'F'
        'CPSALEXT'#9'12'#9'Saldo Mon.~Extranjera'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alBottom
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
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      IndicatorColor = icBlack
    end
  end
  object fcShapeBtn3: TfcShapeBtn
    Left = 333
    Top = 124
    Width = 32
    Height = 31
    Hint = 'Borra Cabecera'
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
    TabOrder = 1
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
  end
  object bbtnCancel: TfcShapeBtn
    Left = 373
    Top = 124
    Width = 32
    Height = 31
    Hint = 'Acepta Cabecera'
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
    TabOrder = 2
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
  end
  object OpenDialog1: TOpenDialog
    Left = 266
    Top = 124
  end
end
