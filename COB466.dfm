object FSaldoFPD: TFSaldoFPD
  Left = 310
  Top = 131
  Width = 800
  Height = 540
  Caption = 'Saldo del Fondo de Desgravamen'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 11
    Width = 342
    Height = 24
    Caption = 'Saldo del Fondo de Desgravamen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 38
    Width = 405
    Height = 57
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 15
      Width = 127
      Height = 38
      AutoSize = False
      Caption = 'Periodo de'#13#10'Proceso/Reporte:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnFiltrar: TBitBtn
      Left = 308
      Top = 18
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
    object sbAno: TwwDBSpinEdit
      Left = 119
      Top = 21
      Width = 66
      Height = 21
      TabStop = False
      Increment = 1.000000000000000000
      MaxValue = 3000.000000000000000000
      MinValue = 2011.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      OnChange = sbAnoChange
    end
    object sbMes: TwwDBSpinEdit
      Left = 193
      Top = 21
      Width = 36
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 2
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      OnChange = sbMesChange
      OnExit = sbMesExit
    end
    object chkProcesa: TCheckBox
      Left = 238
      Top = 23
      Width = 17
      Height = 17
      Caption = 'chkProcesa'
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 21
    Top = 360
    Width = 185
    Height = 94
    Caption = #218'ltimo Proceso: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 18
      Top = 27
      Width = 44
      Height = 16
      Caption = 'Fecha :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 54
      Width = 53
      Height = 16
      Caption = 'Usuario :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblfecha: TLabel
      Left = 75
      Top = 30
      Width = 75
      Height = 16
      Caption = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblUsuProcesa: TLabel
      Left = 75
      Top = 57
      Width = 91
      Height = 16
      Caption = 'UsuarioProc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox5: TGroupBox
    Left = 203
    Top = 360
    Width = 571
    Height = 94
    Caption = 'Observaci'#243'n:'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object menObs: TMemo
      Left = 13
      Top = 23
      Width = 548
      Height = 61
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object BitBtn2: TBitBtn
    Left = 476
    Top = 463
    Width = 88
    Height = 33
    Caption = '&Imprimir'
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      BE080000424DBE0800000000000036000000280000001B0000001A0000000100
      18000000000088080000CE0E0000D80E00000000000000000000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C080
      8080000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000808080C0C0
      C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000080808080800080808080
      8000808080808000808080808000808080808000808080808000808080808000
      808080808000808080808080808000000000C0C0C0C0C0C0C0C0C0000000C0C0
      C0C0C0C000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C00000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000000000C0C0C0
      C0C0C0000000C0C0C0C0C0C00000008080008080000000000000008080000000
      0000000080800000000000000080800080800080800080800000000000000000
      0000000000000000000000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0
      0000008080008080000000000000008080000000000000008080000000000000
      0080800080800080800080800000000000000000000000000000000000000080
      8000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      00808000808000808000808000808000808000808000000000C0C0C0C0C0C000
      0000C0C0C0C0C0C0000000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      00808000808000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000C0
      C0C0C0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFF
      C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C00000
      00C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0
      C0C0C0C0C0C0C0C0C0C0000000808000808000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808000808000
      000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C00000
      00000000000000000000FFFFFF00000000000080808080808000000080808000
      0000808080000000FFFFFF000000000000000000000000C0C0C0C0C0C0C0C0C0
      C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF0000000000008080800000
      00808080000000000000C0C0C0000000FFFFFF000000C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF000000
      808080000000000000808080000000FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
      0000FFFFFF000000000000808080808080000000000000FFFFFF000000000000
      000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000
      00000000000000000000000000000000000000000000000000C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
      0000}
  end
  object btnAExcel: TBitBtn
    Left = 583
    Top = 463
    Width = 86
    Height = 33
    Caption = 'A &Excel'
    TabOrder = 4
    OnClick = btnAExcelClick
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
  object BitBtn1: TBitBtn
    Left = 689
    Top = 463
    Width = 80
    Height = 33
    Caption = '&Salir'
    TabOrder = 5
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333301BBBBBBBB033333011BBBBBBB0333330111BBBBBB03333301110BBBBB
      03333301110BBBBB03333301110BBBBB03333301110BBBBB03333301110BBBBB
      03333301110BBBBB0333330111B0BBBB03333301110BBBBB03333301110BBBBB
      03333301E10BBBBB03333301EE0BBBBB03333300000000000333}
  end
  object GroupBox7: TGroupBox
    Left = 8
    Top = 100
    Width = 766
    Height = 252
    Color = clSilver
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 6
    object Label5: TLabel
      Left = 283
      Top = 13
      Width = 150
      Height = 20
      Caption = 'Del ultimo proceso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGRESTIPASO: TwwDBGrid
    Left = 20
    Top = 139
    Width = 582
    Height = 200
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DSRESTIPASO
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 7
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 6
    TitleButtons = False
    UseTFields = False
    OnEnter = DBGRESTIPASOEnter
  end
  object DBGDISFLATFSC: TwwDBGrid
    Left = 610
    Top = 139
    Width = 154
    Height = 200
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 8
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 3
    TitleButtons = False
    OnEnter = DBGDISFLATFSCEnter
  end
  object DSRESTIPASO: TDataSource
    DataSet = CDSRESTIPASO
    Left = 439
    Top = 49
  end
  object CDSRESTIPASO: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPASOID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TIPASODES'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLATPERANT'
        DataType = ftFloat
      end
      item
        Name = 'FLATPERACT'
        DataType = ftFloat
      end
      item
        Name = 'APLFSCPER'
        DataType = ftFloat
      end
      item
        Name = 'DEVFSCPER'
        DataType = ftFloat
      end
      item
        Name = 'SALFLAFSC'
        DataType = ftFloat
      end
      item
        Name = 'FLATPORC'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 439
    Top = 61
    Data = {
      D60000009619E0BD010000001800000008000000000003000000D60008544950
      41534F494401004900000001000557494454480200020002000954495041534F
      44455301004900000001000557494454480200020014000A464C415450455241
      4E5408000400000000000A464C41545045524143540800040000000000094150
      4C46534350455208000400000000000944455646534350455208000400000000
      000953414C464C41465343080004000000000008464C4154504F524308000400
      0000010007535542545950450200490006004D6F6E6579000000}
  end
  object DSRESTIPPAGO: TDataSource
    DataSet = CDSRESTIPPAGO
    Left = 480
    Top = 51
  end
  object CDSRESTIPPAGO: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'GRUPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ORDEN'
        DataType = ftInteger
      end
      item
        Name = 'TIPPAGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'EXCPORDEV'
        DataType = ftFloat
      end
      item
        Name = 'DEVALFSC'
        DataType = ftFloat
      end
      item
        Name = 'FORPAGODES'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EXCDEVUELTO'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    StoreDefs = True
    Left = 480
    Top = 62
    Data = {
      CA0000009619E0BD010000001800000007000000000003000000CA0005475255
      504F0100490000000100055749445448020002000100054F5244454E04000100
      00000000075449505041474F0100490000000100055749445448020002000400
      09455843504F52444556080004000000000008444556414C4653430800040000
      0000000A464F525041474F444553010049000000010005574944544802000200
      1E000B45584344455655454C544F080004000000000001000D44454641554C54
      5F4F524445520200820000000000}
  end
  object DSRESFLATTPAGO: TDataSource
    DataSet = CDSRESFLATTPAGO
    Left = 520
    Top = 51
  end
  object CDSRESFLATTPAGO: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPPAGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'FORPAGODES'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FLATPER'
        DataType = ftFloat
      end
      item
        Name = 'FLATPORC'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 520
    Top = 63
    Data = {
      760000009619E0BD010000001800000004000000000003000000760007544950
      5041474F01004900000001000557494454480200020004000A464F525041474F
      4445530100490000000100055749445448020002001E0007464C415450455208
      0004000000000008464C4154504F524308000400000000000000}
  end
  object dbpRESTIPASO: TppDBPipeline
    DataSource = DM1.dsUtilidades
    UserName = 'dbpRESTIPASO'
    Left = 588
    Top = 23
    MasterDataPipelineName = 'dbpRESTIPPAGO'
  end
  object dbpRESTIPPAGO: TppDBPipeline
    DataSource = DM1.dsMGrupo
    UserName = 'dbpRESTIPPAGO'
    Left = 623
    Top = 23
  end
  object ppREPRESAPLFSC: TppReport
    AutoStop = False
    DataPipeline = dbpRESTIPASO
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Documents and Settings\rmedina\Escritorio\COBRANZA_ULTIMO\Ult' +
      'imo CLiente\SRC_201123_COB\REPRESFLATFSC.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 656
    Top = 23
    Version = '7.02'
    mmColumnWidth = 297127
    DataPipelineName = 'dbpRESTIPASO'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 73025
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clYellow
        mmHeight = 17198
        mmLeft = 34396
        mmTop = 55827
        mmWidth = 26458
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 8454016
        mmHeight = 17198
        mmLeft = 60590
        mmTop = 55827
        mmWidth = 22490
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clSilver
        mmHeight = 17198
        mmLeft = 82815
        mmTop = 55827
        mmWidth = 26723
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = clSilver
        mmHeight = 17198
        mmLeft = 109273
        mmTop = 55827
        mmWidth = 22490
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = clSilver
        mmHeight = 17198
        mmLeft = 131498
        mmTop = 55827
        mmWidth = 22490
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = 8454016
        mmHeight = 17198
        mmLeft = 153723
        mmTop = 55827
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 43127
        mmTop = 61648
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 39423
        mmTop = 67204
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 66675
        mmTop = 62442
        mmWidth = 8932
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Dist. TFPD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 87577
        mmTop = 60325
        mmWidth = 17187
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'para el FPD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 86519
        mmTop = 64558
        mmWidth = 18711
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'De cr'#233'ditos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 133879
        mmTop = 60325
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'aplicados con'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 132292
        mmTop = 64558
        mmWidth = 21463
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'De cr'#233'ditos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 111390
        mmTop = 60061
        mmWidth = 17780
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'al FPD - Inva'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 67998
        mmWidth = 20447
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Nuevo Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 154782
        mmTop = 61648
        mmWidth = 20024
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'FPD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 161132
        mmTop = 67469
        mmWidth = 7027
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 70115
        mmTop = 55563
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'b'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 94192
        mmTop = 55563
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'c'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 118004
        mmTop = 55563
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 140759
        mmTop = 55563
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = '(a+b) - (c+d)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 155311
        mmTop = 55827
        mmWidth = 19558
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'Saldo del Fondo de Protecci'#243'n de Desgravamen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 31221
        mmTop = 26458
        mmWidth = 147638
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label202'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 170657
        mmTop = 3175
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170657
        mmTop = 11113
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 184680
        mmTop = 3175
        mmWidth = 19578
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 184680
        mmTop = 11113
        mmWidth = 19578
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'M'#243'dulo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 20373
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = '(COBRANZAS)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 85196
        mmTop = 68792
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'el FPD - Falle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 132027
        mmTop = 68527
        mmWidth = 21421
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = clSilver
        mmHeight = 7144
        mmLeft = 60590
        mmTop = 48948
        mmWidth = 22490
        BandType = 0
      end
      object pplblSubtitulo2: TppLabel
        UserName = 'lblSubtitulo2'
        Caption = 'Anterior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 65352
        mmTop = 52123
        mmWidth = 12319
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        Brush.Color = clSilver
        mmHeight = 7144
        mmLeft = 82815
        mmTop = 48948
        mmWidth = 93398
        BandType = 0
      end
      object pplblSubtitulo1: TppLabel
        UserName = 'lblSubtitulo1'
        Caption = 'Periodo de consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 109009
        mmTop = 50271
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 170657
        mmTop = 7144
        mmWidth = 8202
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 184680
        mmTop = 7144
        mmWidth = 19578
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'FPD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 67733
        mmTop = 67733
        mmWidth = 7027
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Periodo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 65088
        mmTop = 48948
        mmWidth = 12700
        BandType = 0
      end
      object pplblPeriodo2: TppLabel
        UserName = 'lblPeriodo2'
        Caption = '(Periodo - 9999)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 91811
        mmTop = 34660
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label301'
        Caption = '(Importe en Nuevos Soles)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 140759
        mmTop = 45244
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'aplicados con'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 109538
        mmTop = 63765
        mmWidth = 21463
        BandType = 0
      end
      object ppImage3: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D61676543290000FFD8FFE1001845786966000049492A0008
          0000000000000000000000FFEC00114475636B7900010004000000640000FFE1
          036F687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C
          3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043
          656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120
          786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B
          3D2241646F626520584D5020436F726520352E332D633031312036362E313435
          3636312C20323031322F30322F30362D31343A35363A32372020202020202020
          223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777
          772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E
          7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D
          222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
          636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
          5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D4D3A4F7269
          67696E616C446F63756D656E7449443D22786D702E6469643A38384242323139
          413845363945333131393530364335414333303344354330382220786D704D4D
          3A446F63756D656E7449443D22786D702E6469643A3442453033434441363939
          3831314533383235463846314639373642313741362220786D704D4D3A496E73
          74616E636549443D22786D702E6969643A344245303343443936393938313145
          33383235463846314639373642313741362220786D703A43726561746F72546F
          6F6C3D2241646F62652050686F746F73686F7020435336202857696E646F7773
          29223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E73
          74616E636549443D22786D702E6969643A384642423231394138453639453331
          3139353036433541433330334435433038222073745265663A646F63756D656E
          7449443D22786D702E6469643A38384242323139413845363945333131393530
          36433541433330334435433038222F3E203C2F7264663A446573637269707469
          6F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F7870
          61636B657420656E643D2272223F3EFFEE000E41646F62650064C000000001FF
          DB00840001010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010202020202020202020202030303030303
          0303030301010101010101020101020202010202030303030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303FFC00011080040010403011100021101031101FFC4009C00000102
          070101000000000000000000000007080103040506090A0B0201010101010000
          0000000000000000000000010203100000060200040207030808030901000002
          03040506070108001112091314215394D415161731180A516191222393193941
          D192242556B778A133957181D336274768C81A8A110100030002000602030000
          0000000000000111213141516171810212B1D1F0A132FFDA000C030100021103
          11003F00D6A7E21FEE59B05B49BCB7D6B9993691C5B5B75BAC97FA8E255233BB
          2D6E8DBFC9600B4D8FCAAC49B22467109659227893A35996E1AC01806B6AC924
          A7000625672AC7CA76BA573BD938DFE830CE5F9CC167FE3E8E203C537973F14C
          FC9FF305CFF473E7C047C51FAE3BF4E7FF001389A1CE6A76E3EC5E91DB91DBAF
          5BACC9157F30625E894AD4685C570A2D336A4AA4B52A6293F8C96AD3B74BE26E
          982BA54A25411079F234B116704A3408B891EC67AC774A5D8FD70A1360D1340E
          3C96F0A6EB4B64A8F9AA32B06C3F5061ACF2A1B30966494DE732D237411193BC
          3060DE8EAC631CF971D50BA70070070070070070070070070070070070070070
          070070070070073E5F6F006338CFD9C01C01C01C019CE31F6F010E78FCB8FD38
          E0239CE31F6F00701E379DD8FF0099E7703C7FF30F617FD5092FF5F1CE79564C
          D5D9E7B9BBD51A1D8D6AD30B9555526C7C32C4AE38696B2E5CBE28680B3CA933
          65567BA956B3B47D421330A8A5A9990E4C721CF9A00B24733787D64380DA2EDC
          D3FB7F6E6ADA1740F5C2452D7179D22D3BB9A4D18871CB0E6C6D76B0F5F6BF95
          CEA7B2E94CCDE4A6486373E4BA42664C39C57A240158A42495D22180AE131738
          1B3C7BB4D771C945FD26D5F66D44B6CCBB218CC9E49288C383735B332B2C5D71
          AB486A942BB15EDD9B6B60C59FD537A925B5CC0EF940E67A730A4A69C60041E1
          5F2B4B34DBCE83B97596CC91D377E56D2BA9ECE8A8C803E43E62D8636B9A6256
          1385081C1319FB448EACEE89861391AE4661C89610209849A60058CE64DF6AF5
          F3ED63FCB47403FD9BEB7FFA4713E3AA15CD91DC8D57D4065677FD9DBF6AEA49
          048CF3D3470B9F4A9BD9DD64A6A31A62D7E238C19198FD202DB32B89CAB1A34C
          781284D088DC8022C6780E6E7B8B7766D848C774DED5F59E98ECE449EB4E76BC
          DA2332C360CC356D8D12B18A95ECD3FD6B3B0229DAD8FC81E111E18EA029B8F2
          9BD7A339B14807D41028EAE52E6E23A1D19EC86F0EA169FE1903B37B1B52D28B
          24850D4C7D9E75306D6C913E2228FF002C738B5468261EFEBDAD3A9FD99CA8A4
          C24E519E818F19E28CC59368F5BE4B492FD948EDED53BFEBFB4B4B9BF3ADCACF
          3C8E39D6ED6D2CBCC2F2B1CA5C8DC0E666F0B38B190AB01A680C4E6632033011
          6338E013A6FDFDD27776DA7DE1A369E8E776BBFE4B248852CE0D161C7DCD2597
          228764E2E5C82247205AA0B732E307938257A80E7CB235261449A600D3C900C2
          CE4771DD0B575D116DA0DBCD7F74AD1559CD34BA39B345971A76605F6C3EA546
          E2D75E372D6D5CA42E12A52D2B8B5B9484E0C38A41D4A8CC05380668428AD8EE
          65DBDE8D992CAEEDBDD0D6C824EDB1C4E697A883DDB90E2E431E744E6E0950DD
          26694EE8A164656A737D0616BC29C60F4F3FB33C2E02CB2BDABD6783D3683626
          5B7F53EC5423AFC33E15732EB0E2C1AC9D7E34B3E1CD196B9A96E638F38FC457
          872493E0A81F5998C871CF38CF2045275DCDFB7BD66E155B5CF37275EA28AEEC
          8DB24D2B0CBC5971E4E92530B9264F047A665AFC2B13735441F4C4C6811BA2E3
          52A152324C096688458B1860BCDD3DC5744F5CACA69A76F5DB2A22ACB39E7084
          C221732B0D81A9E9B53B9929D5362C93146AAC950E40E8955166A550EC344428
          273D650840C67385C0576E3D9BD74D798AB5CE6F6BDAA3A7E22F981E58243645
          83168735C8BA1312AC408E297C74440901D84AA0B33A11F8C3F0CCC67972CE39
          8615AF5BC1A7FB60ADDDB75AF65A97BADE581265C9EE3F5F5811F90491A1AF0A
          4A47F17728DA559F1D46CE258A0B282AC69829C468F01C0F22CE31C0393757A6
          763253287A756C674EB5CDB19519EE8B933792ADE1ED7A76B666A4C6AB34A01E
          E6ECE4A8A4C9480E7269E79812CBC6442C632090C4F67B5B27B66C9293836C25
          2133B961C27404BAA58A5AD0490D99171B12B290BD824304687E572765133AD3
          824ABC294A5E539A2C00CE916718E0257DE9759BEB07DDEBEF1345FD7DF13C2F
          A21F56A05F56FC6F85FC77C0FA6FF1FF009BFCC7C17FBEF4793EBF2BFB6FF97F
          ADC065D695CB50D1D191CD6EBB52B7A7E185282519B2CB46731880468B58A39F
          974837D9639B4B60551DD39E8064DEA172CF2C7A380ABAD2D6ABEE788A29F53B
          6440AD782399AA486D9A56B308F4EA26BCF446E49584229145DC5D1A151C90EC
          640680B3B392C58E42C633C02713FDB9D53AA27ED754DA5B35AF95B5A0F7F0DC
          B356F3EB9ABA87CF1DB0F4779766136C4243236E7F5B876521C969725A717981
          E3917D59F47011BF5DA54F9584FD8E97BEEB5A4AD1607B81B71F614D98D92C36
          180295F2588BC2B639642D64A230501C6750B5F942DE050B529A131D932A2B06
          67C3098178B8B6575D35DCB6036FFBF295A34A961EAD34587705A507AD012552
          8029B2B93B00A66FACD8783908561393829FAF2560C07572C0B1CDC721A36F07
          710AEF519669C165CD693588F66B66AB3AB9ED5CCECC636029828F98C7A6CE72
          2BB580D03984A5EC51C72626D4D95E6FF84604E2009A703232F3C27390F322D7
          DD173A823F5A508BA2A798D611513C065163C5AC587C86071B1479116E2FC17E
          97B4BC2C8F34098DBCE09EB3CC282FCB102C0CCE90E719E028A9CD8CD7DD8940
          F0EDAFF7AD3B79354755A640FEE5505990BB29031AE5648D42346F0AE1CF4F49
          DB152A20191940384011810E738C6718CF017B925D14F43A3C8E5D2EB5EB58B4
          4DC6505C1DBA51239D461963ABE686BDA88C950F44F4E4E899B55CA4C91A435B
          F0DE59B95795A5893E0BF14390E0304AB9F64505AEA7724BEAFAACE789186C5B
          71D0EB19B5B186B788C12048666F6264834A148A44E6D25BC556CC461A5DDC94
          A84E61CA51983505966E079C85EA9ED95D73D882DF0EA06FDA56F12A306A6224
          86D3F69C1ECC0478F59E2F9325EC70B7D7AC3518AF040F2584FF000F23C005CB
          9F2CF2723493F7E5DA7F9E3E0FF53D3FC3FF00FD0E7DC73CBFC990CE5F75AFA0
          9F39FD31F17E0FD5E3FCC3FDE3E33CFE33D5FB3F31D3FA9C66FF002AE49ABB8A
          54F38FC5053E8C5D28232F10D71EE19B2C63630CC4CC971591DA0DEF567B951F
          197E2C61196B50492EA471F4262234224EBBCC796342228D163333EDA34E33EB
          CF73D56E2C86E19ACFAEB6DDD9496DAF29D5FF000B648CF71305B089F8C65322
          6D881064878605ECAE85E5A53322524A4E8C90010129C050024E33737E63A4BE
          F756258276AB6D54B5CDDDBA3767DBDBF1A574DED486BD7A270D52495D37DAFE
          B9944CE997C5CC0E2A50BC452A5BC642E8689A4C11C991BFF50841F1D28041DC
          F1EE9DB55B71EC0DDEF9D8AB506B277B5664E55FFDF7B66A1A289AA785236F3E
          235CD67414A60316579CE7CCAC8E4364964BEAD6F4261B94898E71C6405F3208
          C932E7EB4AB4EF33B39CDFB54F66AB0A62B5649E78595BE353E66AFC70DD2527
          D61565BD5CE2B3811EFCACC35CD744EBD2654E44332238D114D49D5984A60964
          F2070F97108F4B3ED65FCB4BB7F7FB38D6FF00F48A29C6C71F554D055D7774FC
          48FBBB03DEC74779657FAF38B85A6B9A754C99E638DD268D5253D8ED57078337
          9ADAE8DAF6D51B21BA42AE5AB9334284A6B839E4F54663251EB303C73F2D5255
          BD3A0BAD7A19F883FB66567ACA4AB8B571675CDA9168AEAA8E91BBC952D71207
          2D8DC4517A38FB83F383B3EA6649395152D7929D6293CC214987E0B1052F9624
          A4C57CA2836FD7A9AB5EDDF707EE13B15B63DB6769BB9FCD49B25C18982B2AB1
          C24C38B514D2AE5B35606B699CB74690AA7DCFCBD1589A4648C1423F089214DE
          B44612729C90A533B9B80BB6B9D2DB49AEB56F7BF89675276E3547B7E5C5A2D7
          85935B41B63A36FE04B12B3236E90D4B01650CBDE9A1B1B5548871C91BDA1F0C
          A18DC96B6A44BE74C586A009F8B1DF852161EC25DAB20D61E9EBDF744B7E7D3D
          7F9BD1C9EF42F562B442FE14D5EC353D7516952B707D942434A39C1C82ED61BE
          B8292DA129EDC80224E250ABCE79E30B25F18EE4379FC397DA72AEDF262B1F63
          F65ACEB09AE9CD5CB59914D775AC2A5638B369D6990DB1F9BCAE712774392AA1
          3333A08F32B3261E1B7095C1767908C5840111403DF18B0BE3995A15DC9EF5DC
          3B4751BB116C46E5C49FECC993F595B4ECFB672DA31CC12B95962717C9455D59
          2F20E830E48E6E869B2142C4A0D5AEAA3CE80C5A8892D47920327881ABCD7E97
          CB55762AEEB74EBC2F7CC426A7DA9D3392C2A2B200E32BA29229ECE65D1F9AE0
          E2F00F0D02C7043016E0AA28BF08B0A94E316318C9A2EA91FE654F97623B476A
          0407F0E9555DC01A1A2666ED5AD8DD2D623D58ABA66FEB913EA1B3AC563829F5
          F2A87A970510F6F8A45E3D242F0DE6244699CB0A5BCAC9AA46030D2449F8C447
          9A24583DA7F5213FE1BE67EE306B6CE5CF6F14A18858ABED1709BC855A67142F
          97FB7D359AF15C416AE5116C445AA20BC034E781281DF2E290B37CDF96C891E5
          51F5B9E57B2BCB766F4E65DDB0BB2F6B1ED0E9DDABDC736C9E22D60BF5194A43
          EC496560E08602A6DDB3E978832BF587174EE331358DF1140D1266E666D4E615
          92E2851AACC4A993100536E2AA790D74EAF1FF004CFBD276C87EAD341EDAED78
          ED60DD550C5A4355492F73360215316699D9AD35DCED6C02C3C80F5CA9AA4105
          981ADEF4D872C5004A79A1C00B27AB1812AA611DA877A189027FA8509800A432
          487FCFBB9BA310CC4C616E8730CD622193ED4D5AD0A2450D90251056B04A1B12
          2B306897119C9A94FE430E3D19E353C0493BA16976B0D37DB6AEE9BD174EC128
          5B1B542B270B875DAD3A7630C705B32ACB0AB74E43C333E304E5A1127921A6BE
          650E52BDF985270DE922A3C2A846986789874156BC3B7169AC4BB7F5AF5A4729
          383B19D0EA3671358D5B0963CCE3BBD92DA8EC35CA52D17B916C9A9899B1D742
          198A229EC4FE6AEC2D3DC03911A664B1081C2434F8F6C1C5F682BFD2B465E834
          1BB916F3B568C6BADD36D496C32EA286D6F41336C3D78C4FE15533B52C68E4A1
          3C5665713F30AD5CDF1C8F3139399ADE8CE527012A1C1461D2EE3CCECD7E773F
          BE34FF00622EDB5E0FA391AEDF1389876B0DF6B15643AB9B3AAFB5E87BF2DBD5
          56DAF26F4CCDDA20F59B142D3FD54ABBE747125C1C5F18122A756277C202B278
          53E3207E86DFB50340B4753EAA55C23296A7360C57056B13B1ACBBBADA84C4EE
          19E6C74A2C98F249649AD6B1E7F356F90BD4E1CA7AE2FA7B875A8546A44E4A90
          A7480252964940540D06DDB4ED7146EB5F7EBA76AE7A769556F01DB5EDB2C314
          1CA256E13E5F13694CE5A98E096A1264AF2A97BA2A8CD2C62BF979911A95071E
          CED6853B78CCC89264594F1EFF00A1B54BDA939A515B9BB2DB4169E8187B8FD2
          37DC72B61314B610DB5C599B0FABF1AACA008E24EF45B051375485A1B26155CB
          E5197095A61C10E4EECA1D5E9C00EADEBC6044A30F30D7F64229DBE2DDA9FB53
          BD6ACD275423AB3F8C0D795BC86BA72A81244DEAB190BE365F2F778D2136ACA6
          4C091EAB1569A748CB54F1133D2236FF001C84EA0A4E34F94868A4D4D7A9050F
          73D35511DDFBD7CD2945A6330B4754607AED3ADE0956AE6A756951A48A5C578A
          9B722B52C22457A575207BAD227308055E992A972291E559E05F235EDE7AF4C7
          94DE4745EEBA1779B237496EC6EA3DC7A8BDB3B6AB542F1825F159C46CCB257D
          45425555CCEF50A70FE8A33B055B5D47C06F45A54A6311A891C549E3C156D2F0
          B1AE4AC2886D6024472918931DF62FDDA9B47EA99F47671B297AB430DE8BE29B
          81BB51FD418D4FD81A1FA17AC558B16E25AEA1C1657713716CCB337DB93BB39A
          DC1E9E260328D90284816C401525266F015956DC84AAABB268866D67514B595A
          B09B76EDBBBFBA0F71C7CD79D603D8A04E044CE6355ECF5C92091D92FEF16AAC
          455E4361D5B3439872E6F6E061DE586E24904A75279E12B2C18BDECCB74D636C
          697DD62ED5B5CE8F4C229BA5AC75B636335B6FBA3658CA3AAEF9B6E3F51D9D55
          5D3148B55F59CC65D059FB2CC7CB224A4A25C5B7C8468DC42A52E538C2A4132F
          FDC9FF00FACAFF00EAEF13F6BD7B3895EEB0A0F45DD0F7F55A434E4AAD36E4EC
          2284CA539A610A139E45AB2334A3C838192CC24D2860EB00C3E9E7CB38E333C8
          5BD277BFDEE4CD891C8E74A19DEF36E654B1A6BDC27ED6EA65E770DB98914771
          144C98BBF1C2207CA95BB96C18C9187C5383E442E79332BFC6CF5F0FB4FB8634
          FF00B6175CAB5DD7EB149A484C86B777D8F78DAF795EF8930E93B7ABAA45082E
          BF7C92BCCDD79C7BE3A16EAC24F59E51E60B272B165408591E79F12F28634F77
          FD86FDAF903D635EA5A05575736958570C69281A8A29F0B995991D83C5A4E6AC
          7AC0B2A16379AD75EB77809FA71828CF133CF3D58C05782BE79B296859342D03
          ADF275ACC755FAD2E5703B55A89131A342F08965E0FCC1249F09E9E4BC655BEE
          153A4692E5378B91652978C8439E9E58C3781EBA9DAC7F968E807FB37D6FFF00
          48E27C7546AA7B93FE1F449B6BB52DFBCFA95B472FD2BDA23BE1C6CCE4D176B7
          A5AD9267A69662632DF3561758ACBA172880CC0C8C17842E4626395A37720A2F
          232083C6B142B931737D86E711FC30F2763DAAD5ADC296F707B12DCBA2A4B36B
          8B86F6975AF03719A3FDCF33AEEC16D94B6258E3DBAD946BA4218088A3221642
          42B8D7F3CBC939521100BC948899F5DB0B9EDE7E1F6964AB6D26DBB1DBB375EC
          1D09B9ADA39DD6DBED3186F7C5D1796BCC95612E72A796E708D4B62CECD29E52
          F69C0E4E4D4B0B766F52EBCD493E544108316B6C2A543F648B56BAD3ADEAA0ED
          EEE0773EC25BDBDF1871679AD916323757DAEA0CF6A9A0D6804B2395B3ECD1DD
          E9CA5CE080C2923AB99AFA9C4B903737272C84C0420C8D101D976FAEDA2E1A39
          DBB1FB44155D24D8CB1ED1DD494168A481662A5377D5D29D40030B889F2B91E5
          665806E7E2721B863CCE71CBF678E5CAC64504FF00B3D7691FE169415D744C96
          E76FD836CB92C23266B96975D1D5EA540DAAA16D10D5EC0A1BCD99CC86E21584
          3708623707138E91F2E9FB73C48C81AEAA43F0ECECFEAA4D2CE836A97764BA68
          3D3AB7E5637A985590E81220DAA9D80C30297E171DB1954A543446E7D88E124B
          77CE0DAD88169A020919E8CD012023844570319AC7F0C038D6BA65BA7A869773
          D3B991B5D636BE4CDA66CAA8E3427419B284934BDFC86F766705A81F9ADC64E4
          4AC25187814A02D29A9BC4C16678990855514365D6FF0069176B53B3AC3FB55E
          2FD4AC8E31783D470F36EF156827146BFE974F23F37F1C35F066880F4A4BA858
          B09318F8C08C2702C1B91199C64194C5C50A594F685739276626FED318D814A9
          5C5144A2F1ACDED9ACF26243B31CBB1BAE2F17E9D026A518020F021C36631F19
          C998C67CC6739CF32F85650D7DCF3F0D34A0751E8AAAA4F77DF6A5DBCD1D88BD
          C1983601AAB7529DA2671B576DCFED88B1208B249DFC5226E5075D63B8212D46
          17B994E680CC92A53F40B1802BCF4642BFF0F0DF7626DAEA3EEAEC3F7359FDFD
          7650762D713E9E9B39A7DAC11A90A1AC2C96B9F4760952B0B1CD199BEA68B9C4
          A4509D607C1710295EACE70C12508D191956C48DF96DBEB8A8DA0AF60D054F32
          0C1870DD82D77BCB2EA362C487E200A1EE1885AC28CE11E5D1A7CA8A4DF2B791
          F37E20FCAF8DE2F846F4F40A8AFDC8D7C3B6C355AFED6B4F2D0C0CEBBAAF94D7
          209989971230C685246F310FC544C427167F8AE12E0CCE72479A23ABECEB0FDB
          C029B65400760D453FAB30EF968366D5BCAABFC3F811855E5AC5258C2E8EE1E0
          0DA23C90A9CA3CADF1F04E4D0E07D3D1D78E7CF80D5840BB726C76AA0AB49BE9
          7EC6D60D76421D56D6ED62D858A5FB4F482594D5F8A358A189E0D5A5CED24422
          C58B5875158AD51E50E0DE71299D5E1A1C5B54272D425F3288B58395E033EAF3
          47F611B36AE09BD5B25B479BA6CB83D2973552EB4A56F531709A39AA273D3E02
          FCD4C149C41E66F2992B34802F90B506BDBD3F3C3DB9CA047214DD4D889BC94D
          C581AC788583DB6E2512B0239587761DA4EDA75AAF54F0E73FD0B9A4A6BDA3EC
          6A09F5D917C624F01A52B9D81A764F775325FC756AB51F0C812E706513929370
          C022C9F0318990142D6FEDD8D9B2FAAFBF8CD5AB34AF52E89DCED87D7F986BA2
          39FC2A40EB612AA9F598749AA1DDD398CCDDF9A2C25524DA39AD6EF6F9955283
          8A931E9DDC97571C9C7A8E9139C1B41B2A99EE22C1674EE63AD7B7B4DB857D3F
          7148E69A9EDADD7D79B05254AB8A6D2D02FF00A596053B6853724511A723CA02
          ACB44813BBE493C02C10B4A09A3C714226F1DAD1D57EBF25602F6157AADB749B
          92C9DC2F3B26F3014CAA22E5B5AC68D247083D6D288E4E8884F4CE2B34818827
          8E92F785691A0051F85E6AE2F2A061994CB4D76AAE68FD5D6D593B2155D6DBDB
          424DE64ED4A5DBAFD4CCB1BAA143584F5BE30D538A2ADCA76C9B7662BADE80D8
          A4C6CB54E66E1E58D7A0704EDCADA8D46A9B8472C0CBEBFA3FB844CACAAFA5FB
          45B655430C02B279CC88AA874F2A29656A8EDE7D293F9441F59A7D6C58D69C8D
          4405016238FF009658D3B5815283C3956BD4812961182F7A81AE86EABD2D8A8D
          44C713C37EAADFD65E6421610C6F19C5DF7B58B74059F0D20747700331B0CF7E
          1FE360EC614F96F1B0593E27840062C776C09EC4D92BD9CD31B229E19B4147EC
          86E25EF5258D20AD8E9155EE110DCAB3DEAC2B3686B66AC4B3567512985BAA55
          0DC984EA81D9B1D5138B592E2872467034A30F99FE87EE86D43D52D2CDB8DBAA
          E19F1AFBB1D436C157950EAFD32F710A91EDEE9BB11B258E4AADC72B2AC09D58
          53F7290C6D3AA6F694C8D7313447D6A80389C95D8F20809705D7F85BABF99FE6
          3FAE41FE6E1FC517CB7D3F2BAFCA7D2CFA69F43FC7F9ABA79F2FEF3F30747574
          FECBC8F3FDAF0A2DC1B7E21AEDD57E6AB6FA5FD7ABAC3248FDAF7B2B67C86DE8
          1DBADCD0B15C512BED8ABD5C96475DC8DD12967A38F4B23D213D7149922B34B3
          17B6145AB2422C64D093998DB573F5E09BEA8CFEC0BFAB880F04DF5467F605FD
          5C01E09BEA8CFEC0BFAB8070DAC9AA57FEE2DB719A4B5DAB4935913E93B82342
          048CCDAACC6B6144AD5149CE92CC5F7C2C35C5228D7E2F8AADC57984A54E5079
          885F663323C207B236ADD2C5EB76B56BFEBE14F19910690A5EB2A98520C94626
          F8E9B5FC319E2C7BC0131861C6242DCCF6B11C127231F8201E03CF3CB9F1D50B
          CF007007007007007007007010E78E7CB9FA78039E3D3F9BEDE023C01C01CF1F
          6F3F47E5E00E021CF1E8CFA3F3678039E33F6671C04780B32C6162725CDEE6E2
          CCD2E0E4D23198D4E0B5BD1AA5CD860F1C8C31BD59E418A118861F467258C39C
          E3EDE02F18CE33E9C7FDF9FF00B3F2F0073C63F37FC38039E3F2E3F4E3808F00
          7010E78FCB8FD38E00E78FCB8FD38E00E78FCB8FD38E023C0483882541432541
          452824D0E4269271603493039F4F2194308806633F9F80B4FCAD19FF002E317A
          3ECFF086FF0077E00F95E33FE5D62FFA437FBBF007CAF19FF2EB17FD21BFDDF8
          0AE46D8DEDD8185BD022420333D46051244E97060B1CB964CC12006062E5FD39
          E02BF803803803803803803803806A3BAB6ACEA95D739C58B5BC8AAA89CAD955
          C54848FD73BEA48CC1D1A07495B3363D832F8EAB9A230DD2A5ACCA8F21846F8B
          DB5872F6624C38AB4E8F271980D5CC1FB8E6CBD9578D13128D06AC87C2A6708D
          5392461A76023E5D2F3FDB263B88996E2F19856B1E74B09C1FA2721AAD4C54B4
          ACCC4CA8E5C854293BCE2E72C33B835ADE084F1A3BA6ED1331E49D292600E6BC
          9A0E617C5DF5DB96B5DED0191EAAB8D75B35ADF5A5A95F3B3939C9958ED266AA
          2A5B5244BDD5D1B508CD129610BC031F0854427C94E3A09BD9B05B0BB028E154
          AA8A7566BA7D54DB0CACB5C503B45D575814BEB8C2B574E6947523D96FCC9177
          67B9C59572BFB51928C094320D035E4E6A2959A4F59CF40D49CF742EA9842A80
          AB7167C728A75766AED6618E6BF278BDEAED7DDE712BB9F684975A364D7D71BA
          CA472922230B3CD7C893818AD24970980C6E7F35AB00DD527868919A19DD36F4
          717FBDC88A3B57E2AF123143A5EDB61CCAAE78CBEE9CC75E36C7341D82B364EB
          F88CFD500D056D5B182941CD4E8E71D91203DBD51CF0991B5E0E3108F5391D50
          D80B79EF58FB8ADBA8EE8ABAD09440761EF82E9CB927E82D2866B6393241290A
          97E55907975E075746AA6913F27526BC2D8A28718F2A561725CD4A8E20EC0F87
          21A93F7744D8322ABAE64245974DD759328EBC2C268B3AD0A85D2511EDACD8BA
          82CC570E2B532976EAA2D2768C3D94B5A028D4259244DEA46B27253C27531A6F
          CFC39E1190BF00A04E77B2F297B4EECB4CD9F2B1A767D5AD2B7C8619DBD5F639
          3951B18FCCF14D7D69B0582E5597656D68C71E011D7E90BCA80015455A8684B6
          F2C2853399520214E490C17603B81DD53498EC5D215CAD93B6445D284DD36442
          CADF0C90C2B63A84B075A2AC873DC6275E6D82412597A5895BEFCF8B7E5F58FE
          D6C4E0F284E6D5ECD937193BC57907C7BFDB892DD73B4E8CAE51DE548EB4422C
          BA7B656C590DCD7557B26B252A0945203A6D443E1CD0D0C5348721201292276E
          425C154689638929028DAB2072389CE41AEB47739D87739A51E078AFD04064B2
          18A415A6F2D5C974294A7B42212C99EAE58F7EAAB0A17E4E62A67E7D72C3248D
          B3350D73C30236FC0D63835283487B4232CB781AB149FB93ED141A0BA82E9255
          B5A2FB96C6AF3576EFB56AB4153BDC4E2F634436CADC8A404359D0A091D9CF36
          EBE4EA848D2F705EF8AD1B53B14947F0F54EC4A14EB3CB168F3E4397DD9DCED8
          FA6F6B6B2A16A66CA922CCD25AAE3D62C524D79BB1313876C0D94E773B7D72FB
          AECC33A72746FF0096DFA39075817917C09049E4662F786A330D796E25778EEE
          859E2B7B5F95876F8B42CD852D324D7213BBB73D6513537737D83602065659DF
          72C90526800E0D6D2AD9E62F71D80C124B9C33109141294099BD30402C230F2E
          1FCFEC2647EEE6E952F207074BACF855955C466C3DBCA3DF08A975C2D14B632C
          2F5D68F7EBAA0D7C31B4AA982F657F7898099C6CAEB1821427683C632D436B90
          324AB24208BB87740DAD470BCB5065DAE0535A6D83B32B8FBE5B894C04D085B3
          C7B576BEBFEA98CC85C4CB45055E6BED913A992B8DAC766A93188B0DCC8AC86F
          24D7C116103F0335D94DEBDA56F6DDACAB489EC1ABEB61B7481D6E8ACD16BBC5
          0EBDD55353588D5B57CFEC2576CBDA9589A53165987292BB62307AF89931A934
          7CF6E1A071F8E275ADA638F50A74F77776C18CEBD65B1894D16F7AE755834EA0
          11EBF1155B377F40B526C744EAD9959FBA92F31B67E9232B687A9E392A3CE42C
          D1F355832352254F0EC81B1B8F52308FF101BD7EEB1F3F7CDB527CBDF7D1FBAF
          FDFF007E9ECCBEEE9F427E17E77EF7FF004F3E29FF0097FE77FF00D37F3FF1FF
          00913E71FF001BF8A7CBBFB3E16378DC01C01C01C01C01C01C01C01C01C01C01
          C01C048388215146A752494790780651E41E580D24F28C0E4232CD2478100C28
          C0E738CE058CE33C07C0D2A530D4EA069881A849834294E112588D4A13C2101C
          14E3C872611834000E07D3CB9E3973E011CAEB5CA8CA9251299B57157C4E272E
          9A0069A45236D6FEA7656DA6B9AA7B1B1245AACC506B3C644F6B8F5BF0B4794E
          DD85A78CFC13E28C43C82D05145905964905809289000A28A28012CB28B2C380
          0005803C8002C00C63A438C72C6380F911040CF2D408A2B2A092CD24A3F25832
          71651E328679459BCBC401678C806461C6790B20C73FB31C07C052A50E140429
          8808558C662A08492C21546180C1660D407A3183CC30A06022C8B9F3C6397013
          0A20924A2C828A2CB20A2C24964960080A2CA007A00500B0F2000B0031D380E3
          1CB18E02461020C14953851A409084448D11384C56094834E1C8091A42BA3C34
          E32422E40C83974E3ECE0277974F83FCDE0827CD785E5FCCF860F31E5FAFC5F0
          3C5E9F13C2C0FF005BA39F2E7E9E000A720B34E3CB20901EA3C3F30700B004E3
          FC10F413E31B80E0667860CF20F5673D3FD1C0634BA0B0C749732CF5CA2CC4BA
          6B1C617F8B304A55B62550FACD1C94B9471DE46C8DCE269425291B1EDD21ED4A
          14921160069ADE40858E65879064BE027F1FCD7805799C93E5FC7F0C3E3797EB
          F13C0F17A7AFC3EBFD6E8E7CB9FA780049C819A51E324A19E9F0660838658447
          1383B0109D824C107232F07746302E9E5D5CBD3C07C1C95328C902509C83C494
          FC294C238A2CCCA652001A585427C8C23C94A0251A30F58790B96738FB339E02
          AB80380A2CB720CA5020CA2499425F8382D1E5313E50BF00C01A47869FA3C007
          8269781079071D22C6338E5C04EC2720078D4849282A0D2CB28C3F0583071851
          4230451433718EB196588D16421FB319CE7F2E78002412124298049414C12B04
          848096109212301E8F070560382F05747EAF4F2E5CB8097E451F93F87F944DE4
          3CB792F23E017E4FC9785E0793F2BD1E0795F0BF53A3A7A3A3D1CB97012BA9D7
          D537FEFD4FBB704D1D4EBEA9BFF7EA7DDB81A3A9D7D537FEFD4FBB7034753AFA
          A6FF00DFA9F76E068EA75F54DFFBF53EEDC0D1D4EBEA9BFF007EA7DDB81A39B9
          FAA43ED4ABDDB81A8F53A7A941ED2A3DD781A87373F5487DA957BB70347373F5
          487DA957BB70351EA74F5283DA547BAF034753A7A941ED2A3DD781A87373F548
          7DA957BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA9
          57BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA957BB
          70347373F5487DA957BB7034753AFAA6FF00DFA9F76E068E6E7EA90FB52AF76E
          068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E
          6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7E
          A90FB52AF76E068EA75F54DFFBF53EEDC0D1CDCFD521F6A55EEDC0D1CDCFD521
          F6A55EEDC0D439B9FAA41ED4A7DDB81AFFD9}
        mmHeight = 16933
        mmLeft = 5292
        mmTop = 3440
        mmWidth = 72231
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label203'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 182298
        mmTop = 3175
        mmWidth = 794
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 182298
        mmTop = 7144
        mmWidth = 794
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 182298
        mmTop = 11113
        mmWidth = 794
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = clYellow
        mmHeight = 6085
        mmLeft = 34396
        mmTop = 0
        mmWidth = 26458
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = 8454016
        mmHeight = 6085
        mmLeft = 60590
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Style = bsClear
        mmHeight = 6085
        mmLeft = 82815
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        Brush.Style = bsClear
        mmHeight = 6085
        mmLeft = 109273
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        Brush.Style = bsClear
        mmHeight = 6085
        mmLeft = 131498
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Brush.Color = 8454016
        mmHeight = 6085
        mmLeft = 153723
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOTIPID'
        DataPipeline = dbpRESTIPASO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 34925
        mmTop = 1058
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'impperant'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 62177
        mmTop = 1058
        mmWidth = 18786
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'impperact'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 87313
        mmTop = 1058
        mmWidth = 18786
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'impaplfal'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 133086
        mmTop = 1058
        mmWidth = 18786
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'impaplinv'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 111125
        mmTop = 1058
        mmWidth = 18786
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'impsalfin'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 155575
        mmTop = 1058
        mmWidth = 18786
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'asotipdes'
        DataPipeline = dbpRESTIPASO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 39688
        mmTop = 1058
        mmWidth = 20108
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 39158
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 16140
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Usuario que consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 16954
        mmTop = 2381
        mmWidth = 32015
        BandType = 8
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Ultima fecha de proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 16933
        mmTop = 6350
        mmWidth = 35983
        BandType = 8
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Ultimo usuario que proces'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 16933
        mmTop = 10319
        mmWidth = 41275
        BandType = 8
      end
      object pplblusuario: TppLabel
        UserName = 'Label205'
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 62177
        mmTop = 2381
        mmWidth = 11113
        BandType = 8
      end
      object pplblfechaproceso: TppLabel
        UserName = 'lblfechaproceso'
        Caption = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 62177
        mmTop = 6350
        mmWidth = 15875
        BandType = 8
      end
      object pplblUsuarioProceso: TppLabel
        UserName = 'lblfechaproceso1'
        Caption = 'Usuario que proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 62177
        mmTop = 10319
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel35: TppLabel
        UserName = 'Label204'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 59267
        mmTop = 2381
        mmWidth = 794
        BandType = 8
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 59267
        mmTop = 6350
        mmWidth = 794
        BandType = 8
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 59267
        mmTop = 10319
        mmWidth = 794
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppShape25: TppShape
        UserName = 'Shape25'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 153723
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 109273
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 131498
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppShape22: TppShape
        UserName = 'Shape102'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 82815
        mmTop = 0
        mmWidth = 26723
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbpRESTIPPAGO'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9260
        mmWidth = 210079
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbpRESTIPPAGO
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbpRESTIPPAGO'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 36513
            mmPrintPosition = 0
            object ppShape15: TppShape
              UserName = 'Shape15'
              Brush.Color = clYellow
              mmHeight = 13229
              mmLeft = 65352
              mmTop = 23019
              mmWidth = 48683
              BandType = 1
            end
            object ppShape16: TppShape
              UserName = 'Shape16'
              Brush.Color = clSilver
              mmHeight = 13229
              mmLeft = 113771
              mmTop = 23019
              mmWidth = 22490
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              Caption = 'Tipo de Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 70644
              mmTop = 28840
              mmWidth = 20902
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              Caption = 'Dist. TFPD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 116152
              mmTop = 25135
              mmWidth = 17187
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              Caption = 'Para el FPD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 115094
              mmTop = 30692
              mmWidth = 19092
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              Caption = 'FPD por Tipo de Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 6615
              mmLeft = 75671
              mmTop = 5556
              mmWidth = 58738
              BandType = 1
            end
            object pplblPeriodo3: TppLabel
              UserName = 'lblPeriodo3'
              Caption = '(Periodo - 9999)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 90488
              mmTop = 12965
              mmWidth = 26458
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              Caption = '(Importe en Nuevos Soles)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 100806
              mmTop = 19579
              mmWidth = 35454
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppShape19: TppShape
              UserName = 'Shape19'
              Brush.Color = clYellow
              mmHeight = 6085
              mmLeft = 65352
              mmTop = 0
              mmWidth = 48683
              BandType = 4
            end
            object ppShape20: TppShape
              UserName = 'Shape20'
              Brush.Style = bsClear
              mmHeight = 6085
              mmLeft = 113771
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'FORPAG'
              DataPipeline = dbpRESTIPPAGO
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpRESTIPPAGO'
              mmHeight = 3969
              mmLeft = 66146
              mmTop = 794
              mmWidth = 5821
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              AutoSize = True
              DataField = 'fpdper'
              DataPipeline = dbpRESTIPPAGO
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESTIPPAGO'
              mmHeight = 3260
              mmLeft = 127635
              mmTop = 1058
              mmWidth = 8001
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'FORPAGODES'
              DataPipeline = dbpRESTIPPAGO
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpRESTIPPAGO'
              mmHeight = 3969
              mmLeft = 73025
              mmTop = 794
              mmWidth = 39952
              BandType = 4
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 72496
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 14023
            mmPrintPosition = 0
            object ppShape17: TppShape
              UserName = 'Shape17'
              Brush.Color = clSilver
              mmHeight = 6085
              mmLeft = 113771
              mmTop = 0
              mmWidth = 22490
              BandType = 7
            end
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              DataField = 'fpdper'
              DataPipeline = dbpRESTIPPAGO
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESTIPPAGO'
              mmHeight = 3260
              mmLeft = 118417
              mmTop = 1323
              mmWidth = 17314
              BandType = 7
            end
          end
        end
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 60590
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'impperant'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 62177
        mmTop = 1588
        mmWidth = 18786
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'impperact'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 87313
        mmTop = 1588
        mmWidth = 18786
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'impaplfal'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 133086
        mmTop = 1588
        mmWidth = 18786
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        DataField = 'impaplinv'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3970
        mmLeft = 111125
        mmTop = 1588
        mmWidth = 18786
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        DataField = 'impsalfin'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3175
        mmLeft = 155575
        mmTop = 1588
        mmWidth = 18786
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
