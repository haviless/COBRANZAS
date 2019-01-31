object FMarcaCredFSC: TFMarcaCredFSC
  Left = 384
  Top = 191
  BorderStyle = bsDialog
  Caption = 'Marca existencia de expedientes (FMarcaCredFSC)'
  ClientHeight = 421
  ClientWidth = 763
  Color = 9090478
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 50
    Top = 6
    Width = 656
    Height = 18
    Caption = 
      'MARCA- EXISTENCIA DE EXPEDIENTES DE CR'#201'DITOS CANCELADOS CON EL F' +
      'SC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 31
    Width = 745
    Height = 93
    Caption = 'Filtro FSC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 27
      Width = 24
      Height = 16
      Caption = 'A'#241'o'
    end
    object Label2: TLabel
      Left = 82
      Top = 27
      Width = 26
      Height = 16
      Caption = 'Mes'
    end
    object Label3: TLabel
      Left = 132
      Top = 27
      Width = 89
      Height = 16
      Caption = 'Numero Memo'
    end
    object btnFiltrar: TBitBtn
      Left = 521
      Top = 38
      Width = 82
      Height = 28
      Hint = 'Procesa Informaci'#243'n'
      Caption = '&Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnFiltrarClick
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656604747000D0D0BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42425CFFFF001A1A0DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEEEEF0696987CCCC443F3F00CDCDDEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEEEEF064646BFFFF81E5E565A5A547353500CCCCD7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50
        506FFFFF7CFFFF81E7E75CABAB67A3A345383800D3D3E3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9EC575763FFFF89FFFF
        92FFFF96E2E26BBBBB70A7A771A8A849262600D4D4E4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676769FFFF84EEEE79F0F089EEEE87
        C8C85AA9A95F96965D99995BA7A73E444400D3D3D6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000698985F73735816162A1818265656637C7C8783
        838B303037121220191900454500000000D4D4DEFFFFFFFFFFFFFFFFFFFFFFFF
        FBFBFF1F1F0D5A5A003737009696A2E9E9E9EFEFEFD9D9D9B5B5B5C8C8C88E8E
        8E85858A4444078080008181003D3D00CCCCD7FFFFFFFFFFFFF9F9FE3A3A1288
        88009494004D4D38DADADED8D8D8CACACAABABABACACACF1F1F1424242B5B5B5
        1B1B339A9A008787008F8F00424200D1D1D8FFFFFFECECF31E1E009595006262
        00818190B7B7B7A9A9A9D1D1D1D6D6D6D4D4D4E4E4E44E4E4EABABABBBBBC10B
        0B009393008B8B005A5A00A0A0ABFFFFFFFFFFFF737370707000242400C5C5CA
        AEAEAED7D7D7DADADAD3D3D3DADADADCDCDC747474D5D5D5A5A5A76262636C6C
        007575004B4B32FDFDFFFFFFFFFFFFFFFFFFFF666673737379CBCBCBC9C9C9EF
        EFEFBFBFBFC1C1C1F0F0F0373737FCFCFCD5D5D5A0A0A08484893D3D09727285
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424242E1E1E1D3D3D3E9E9E9A8A8A8BBBB
        BBBCBCBCC3C3C3242424F2F2F2E6E6E6C5C5C5AAAAAA2B2B31FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFA9A9A9B0B0B0EBEBEBDFDFDFFFFFFFBDBDBD4B4B4B5A5A5A
        000000D2D2D2EDEDEDEEEEEEF8F8F8CCCCCC606060B5B5B5FFFFFFFFFFFFFFFF
        FFFFFFFF7A7A7A7777770606062828281A1A1A737373AFAFAFACACACFFFFFFFF
        FFFF9393937A7A7A6565654545455E5E5E323232FFFFFFFFFFFFFFFFFFF3F3F3
        3939396E6E6EB1B1B1AFAFAFACACACC5C5C5ACACAC1C1C1C3D3D3D484848C9C9
        C9BEBEBEF4F4F4FFFFFFE2E2E2484848E8E8E8FFFFFFFFFFFFFDFDFD4848483B
        3B3BA7A7A7AAAAAAA8A8A8D9D9D9EAEAEAF3F3F3EEEEEEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF626262FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFCACACA2B2B
        2B7D7D7D818181E1E1E1F7F7F7F4F4F4EBEBEBFFFFFFE9E9E9BCBCBCCBCBCB30
        3030474747FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0
        A2A2A24444444646464545454E4E4E4949497C7C7CA5A5A5969696FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
    end
    object Panel2: TPanel
      Left = 21
      Top = 43
      Width = 106
      Height = 32
      TabOrder = 1
      object fano: TwwDBSpinEdit
        Left = 3
        Top = 4
        Width = 58
        Height = 26
        Cursor = crHandPoint
        Increment = 1.000000000000000000
        MaxValue = 2050.000000000000000000
        MinValue = 2008.000000000000000000
        Value = 2015.000000000000000000
        AutoFillDate = False
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object fmes: TwwDBSpinEdit
        Left = 64
        Top = 4
        Width = 39
        Height = 26
        Cursor = crHandPoint
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        AutoFillDate = False
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        UsePictureMask = False
        OnExit = fmesExit
      end
    end
    object Panel1: TPanel
      Left = 133
      Top = 42
      Width = 184
      Height = 33
      Caption = 'Panel1'
      TabOrder = 2
      object edtMemo: TEdit
        Left = 3
        Top = 4
        Width = 176
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 336
      Top = 9
      Width = 159
      Height = 80
      Caption = 'Expedientes'
      TabOrder = 3
      object rdEncontrados: TRadioButton
        Left = 11
        Top = 20
        Width = 113
        Height = 17
        Caption = 'Encontrados'
        TabOrder = 0
      end
      object rdNoencontrados: TRadioButton
        Left = 11
        Top = 38
        Width = 113
        Height = 17
        Caption = 'No encontrados'
        TabOrder = 1
      end
      object rdTodos: TRadioButton
        Left = 12
        Top = 57
        Width = 113
        Height = 17
        Caption = 'Todos'
        TabOrder = 2
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 136
    Width = 745
    Height = 273
    Caption = 'Detalle de Expedientes enviados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object dbgCanceladoFSC: TwwDBGrid
      Left = 8
      Top = 21
      Width = 729
      Height = 212
      HelpType = htKeyword
      DisableThemesInTitle = False
      ControlInfoInDataset = False
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 1
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnCalcCellColors = dbgCanceladoFSCCalcCellColors
    end
    object btnGrabar: TBitBtn
      Left = 483
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Graba'
      TabOrder = 1
      OnClick = btnGrabarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF3F3FFF0000
        FF0000FF0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A0A0A0C0C0C0C0C0C0FF00
        00FF0000BF0000FF0000FF0000FF0000FF0000FF0000C0C0C0DF6060FF0000C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF0000FF0000BF0000FF0000BF20203F6060
        3F6060FF0000C0C0C0DF6060FF0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF00
        00FF0000BF0000FF0000FF00007F4040BF2020FF0000C0C0C0DF6060FF0000C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF0000FF0000BF0000FF0000FF0000FF0000
        FF0000FF0000C0C0C0DF6060FF0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF00
        00FF0000BF0000FF0000FF0000FF0000FF0000FF0000C0C0C0CF9090DF6060C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0BF0000BF0000BF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000DF0000BF0000BF0000BF0000BF0000BF0000BF
        0000BF0000BF0000BF0000BF0000BF0000BF0000DF0000FF0000FF0000BF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000BF0000FF0000FF0000BF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000BF0000FF0000FF0000BF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000BF0000FF0000FF0000BF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000BF0000FF0000FF0000BF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000BF0000FF0000FF0000BF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000BF0000FF0000FF0000BF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000BF3F3FFF3F3FFF0000BF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000BF0000FF0000}
    end
    object btnExcel: TBitBtn
      Left = 571
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 2
      OnClick = btnExcelClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
    end
    object BitBtn3: TBitBtn
      Left = 659
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 3
      OnClick = BitBtn3Click
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
    end
  end
  object pnlMemo: TPanel
    Left = 35
    Top = 144
    Width = 702
    Height = 201
    Color = 11389894
    TabOrder = 1
    Visible = False
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 700
      Height = 22
      Align = alTop
      Brush.Color = clNavy
      Pen.Style = psClear
    end
    object Label4: TLabel
      Left = 8
      Top = 3
      Width = 249
      Height = 16
      Caption = 'Numero de Memo a Archivo Central:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 8
      Top = 34
      Width = 75
      Height = 13
      Caption = 'Bus Num.Memo'
    end
    object dbgMemos: TwwDBGrid
      Left = 5
      Top = 61
      Width = 691
      Height = 133
      HelpType = htKeyword
      DisableThemesInTitle = False
      ControlInfoInDataset = False
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDblClick = dbgMemosDblClick
    end
    object Button1: TButton
      Left = 681
      Top = 3
      Width = 18
      Height = 17
      Caption = 'X'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Panel3: TPanel
      Left = 85
      Top = 26
      Width = 175
      Height = 26
      Caption = 'Panel1'
      TabOrder = 2
      object edtBusca: TwwIncrementalSearch
        Left = 1
        Top = 2
        Width = 174
        Height = 19
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        DataSource = DM1.dsQry4
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object dtgData: TDBGrid
    Left = 737
    Top = 216
    Width = 161
    Height = 65
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
end
