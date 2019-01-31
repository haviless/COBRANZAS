object fRepResDisFlatFSC: TfRepResDisFlatFSC
  Left = 371
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Saldo del Fondo Solidario de Contingencia'
  ClientHeight = 505
  ClientWidth = 704
  Color = 10207162
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 11
    Width = 489
    Height = 24
    Caption = 'Saldo del Fondo Solidario de Contingencia - FSC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox7: TGroupBox
    Left = 8
    Top = 101
    Width = 689
    Height = 257
    Color = clSilver
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 3
    object Label5: TLabel
      Left = 293
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 39
    Width = 401
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
    Top = 365
    Width = 185
    Height = 80
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
    Top = 365
    Width = 494
    Height = 80
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
      Left = 9
      Top = 23
      Width = 475
      Height = 50
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object DBGRESTIPASO: TwwDBGrid
    Left = 16
    Top = 139
    Width = 445
    Height = 200
    DisableThemesInTitle = False
    PictureMasks.Strings = (
      'DISGASFLAT'#9'###,###,###.0#'#9'T'#9'F'
      'APLCONFSC'#9'###,###,###.0#'#9'T'#9'F'
      'DEVALFSC'#9'###,###,###.0#'#9'T'#9'F'
      'SALDEVFSC'#9'###,###,###.0#'#9'T'#9'F'
      'SALDISGASFLAT'#9'###,###,###.0#'#9'T'#9'F'
      'EXCPORDEV'#9'###,###,###.0#'#9'T'#9'F'
      'FLATPERANT'#9'##,###,###.#0'#9'T'#9'T'
      'FLATPERACT'#9'##,###,###.#0'#9'T'#9'T'
      'APLFSCPER'#9'##,###,###.#0'#9'T'#9'T'
      'DEVFSCPER'#9'##,###,###.#0'#9'T'#9'T'
      'SALFLAFSC'#9'##,###,###.#0'#9'T'#9'T')
    Selected.Strings = (
      'TIPASOID'#9'7'#9'Tipo~Asociado'
      'FLATPERANT'#9'12'#9'(a) Saldo FSC'#9'F'#9'Periodo Anterior'
      
        'FLATPERACT'#9'13'#9'(b) Dist.FLAT~para el FSC~(COBRANZAS)'#9'F'#9'Periodo de' +
        ' Consulta'
      'DEVFSCPER'#9'10'#9'(c) Devuelto~ al FSC'#9'F'#9'Periodo de Consulta'
      
        'APLFSCPER'#9'11'#9'(d) De cr'#233'ditos~aplicados~con el FSC'#9'F'#9'Periodo de C' +
        'onsulta'
      
        'SALFLAFSC'#9'12'#9'(a + b + c) - d~Nuevo Saldo~FSC'#9'F'#9'Periodo de Consul' +
        'ta')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnCellChanged = DBGRESTIPASOCellChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DSRESTIPASO
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 4
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 6
    TitleButtons = False
    UseTFields = False
    OnCalcCellColors = DBGRESTIPASOCalcCellColors
    OnDrawDataCell = DBGRESTIPASODrawDataCell
    OnAfterDrawCell = DBGRESTIPASOAfterDrawCell
  end
  object DBGRESTIPPAGO: TwwDBGrid
    Left = 568
    Top = 139
    Width = 121
    Height = 200
    DisableThemesInTitle = False
    Selected.Strings = (
      'TIPPAGO'#9'4'#9'Tipo~de~Pago'#9#9
      'DEVALFSC'#9'11'#9'Devuelto~al~FSC'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnCellChanged = DBGRESTIPPAGOCellChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DSRESTIPPAGO
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 3
    TitleButtons = False
    OnCalcCellColors = DBGRESTIPPAGOCalcCellColors
    OnDrawDataCell = DBGRESTIPPAGODrawDataCell
    OnAfterDrawCell = DBGRESTIPPAGOAfterDrawCell
  end
  object BitBtn1: TBitBtn
    Left = 618
    Top = 464
    Width = 80
    Height = 33
    Caption = '&Salir'
    TabOrder = 6
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
  object BitBtn2: TBitBtn
    Left = 380
    Top = 464
    Width = 88
    Height = 33
    Caption = '&Imprimir'
    TabOrder = 7
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
    Left = 487
    Top = 464
    Width = 86
    Height = 33
    Caption = 'A &Excel'
    TabOrder = 8
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
  object DBG1: TwwDBGrid
    Left = 8
    Top = 424
    Width = 41
    Height = 73
    DisableThemesInTitle = False
    Selected.Strings = (
      'TIPASOID'#9'10'#9'Tipo~Asociado'
      'FLATPERANT'#9'10'#9'(a) Saldo FSC~del~Per. anteriro'
      'FLATPORC'#9'3'#9'%'
      'FLATPERACT'#9'12'#9'(b) Dist.FLAT~para el FSC~(COBRANZAS)'
      'APLFSCPER'#9'10'#9'(c) Devuelto~ al FSC'
      'DEVFSCPER'#9'11'#9'(d) De cr'#233'ditos~aplicados~con el FSC'
      'SALFLAFSC'#9'10'#9'(a + b + c) - d~Nuevo Saldo~FSC')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DSRESTIPASO
    TabOrder = 9
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 3
    TitleButtons = False
    Visible = False
  end
  object DBGDISFLATFSC: TwwDBGrid
    Left = 457
    Top = 139
    Width = 114
    Height = 200
    DisableThemesInTitle = False
    Selected.Strings = (
      'TIPPAGO'#9'4'#9'Tipo~de~Pago'
      'FLATPORC'#9'10'#9'Dist. FLAT~para el FSC')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnCellChanged = DBGDISFLATFSCCellChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DSRESFLATTPAGO
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 10
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 3
    TitleButtons = False
    OnCalcCellColors = DBGDISFLATFSCCalcCellColors
    OnDrawDataCell = DBGDISFLATFSCDrawDataCell
    OnAfterDrawCell = DBGDISFLATFSCAfterDrawCell
  end
  object DSRESTIPASO: TDataSource
    DataSet = CDSRESTIPASO
    Left = 419
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
    Left = 419
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
    Left = 460
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
    Left = 460
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
  object dbpRESTIPASO: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'dbpRESTIPASO'
    Left = 564
    Top = 23
    MasterDataPipelineName = 'dbpRESTIPPAGO'
  end
  object dbpRESTIPPAGO: TppDBPipeline
    DataSource = DSRESTIPPAGO
    UserName = 'dbpRESTIPPAGO'
    Left = 623
    Top = 23
    object dbpRESTIPPAGOppField1: TppField
      FieldAlias = 'TIPPAGO'
      FieldName = 'TIPPAGO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object dbpRESTIPPAGOppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEVALFSC'
      FieldName = 'DEVALFSC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 11
      Position = 1
    end
    object dbpRESTIPPAGOppField3: TppField
      FieldAlias = 'GRUPO'
      FieldName = 'GRUPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object dbpRESTIPPAGOppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORDEN'
      FieldName = 'ORDEN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbpRESTIPPAGOppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXCPORDEV'
      FieldName = 'EXCPORDEV'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object dbpRESTIPPAGOppField6: TppField
      FieldAlias = 'FORPAGODES'
      FieldName = 'FORPAGODES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object dbpRESTIPPAGOppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXCDEVUELTO'
      FieldName = 'EXCDEVUELTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
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
    Left = 652
    Top = 23
    Version = '7.02'
    mmColumnWidth = 297127
    DataPipelineName = 'dbpRESTIPASO'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 58208
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clYellow
        mmHeight = 17198
        mmLeft = 42863
        mmTop = 41275
        mmWidth = 26458
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 8454016
        mmHeight = 17198
        mmLeft = 69056
        mmTop = 41275
        mmWidth = 22490
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clSilver
        mmHeight = 17198
        mmLeft = 91281
        mmTop = 41275
        mmWidth = 26723
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = clSilver
        mmHeight = 17198
        mmLeft = 117740
        mmTop = 41275
        mmWidth = 22490
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = clSilver
        mmHeight = 17198
        mmLeft = 139965
        mmTop = 41275
        mmWidth = 22490
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = 8454016
        mmHeight = 17198
        mmLeft = 162190
        mmTop = 41275
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
        mmLeft = 51594
        mmTop = 47096
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
        mmLeft = 47890
        mmTop = 52652
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Saldo Ant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 71438
        mmTop = 47890
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Dist. FLAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 96044
        mmTop = 45773
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'para el FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 94986
        mmTop = 50006
        mmWidth = 18785
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
        mmLeft = 142346
        mmTop = 45773
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'aplicados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 143669
        mmTop = 50006
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Devuelto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 121973
        mmTop = 48154
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'al FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 123296
        mmTop = 53446
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169334
        mmTop = 47890
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 53181
        mmWidth = 7144
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
        mmLeft = 78581
        mmTop = 41010
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
        mmLeft = 102659
        mmTop = 41010
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
        mmLeft = 126471
        mmTop = 41010
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
        mmLeft = 149225
        mmTop = 41010
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = '(a + b + c) - d'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 162719
        mmTop = 41540
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label201'
        Caption = 'Saldo del Fondo Solidario de Contingencia - FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 22225
        mmTop = 13494
        mmWidth = 150019
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label202'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 171715
        mmTop = 2117
        mmWidth = 10668
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Pag :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 175155
        mmTop = 12171
        mmWidth = 7451
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
        mmHeight = 3598
        mmLeft = 182827
        mmTop = 2117
        mmWidth = 16002
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
        mmHeight = 3598
        mmLeft = 182827
        mmTop = 12171
        mmWidth = 1778
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label203'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 4763
        mmTop = 1852
        mmWidth = 34925
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
        mmHeight = 3175
        mmLeft = 8467
        mmTop = 6879
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
        mmLeft = 93663
        mmTop = 54240
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'con el FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 142346
        mmTop = 53975
        mmWidth = 17463
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = clSilver
        mmHeight = 7144
        mmLeft = 69056
        mmTop = 34396
        mmWidth = 22490
        BandType = 0
      end
      object pplblSubtitulo2: TppLabel
        UserName = 'lblSubtitulo2'
        Caption = 'Periodo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 73554
        mmTop = 37571
        mmWidth = 12700
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        Brush.Color = clSilver
        mmHeight = 7144
        mmLeft = 91281
        mmTop = 34396
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
        mmLeft = 117475
        mmTop = 35719
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 173832
        mmTop = 7144
        mmWidth = 8678
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
        mmHeight = 3598
        mmLeft = 182827
        mmTop = 7144
        mmWidth = 19558
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 76200
        mmTop = 53181
        mmWidth = 7144
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
        mmHeight = 3704
        mmLeft = 73554
        mmTop = 34131
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
        Transparent = True
        mmHeight = 5027
        mmLeft = 81227
        mmTop = 21696
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
        mmLeft = 149225
        mmTop = 30692
        mmWidth = 35454
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
        mmLeft = 42863
        mmTop = 0
        mmWidth = 26458
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = 8454016
        mmHeight = 6085
        mmLeft = 69056
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Style = bsClear
        mmHeight = 6085
        mmLeft = 91281
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        Brush.Style = bsClear
        mmHeight = 6085
        mmLeft = 117740
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        Brush.Style = bsClear
        mmHeight = 6085
        mmLeft = 139965
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Brush.Color = 8454016
        mmHeight = 6085
        mmLeft = 162190
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'TIPASOID'
        DataPipeline = dbpRESTIPASO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3969
        mmLeft = 43392
        mmTop = 1058
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'FLATPERANT'
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
        mmHeight = 3260
        mmLeft = 71967
        mmTop = 1323
        mmWidth = 18457
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'FLATPERACT'
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
        mmHeight = 3260
        mmLeft = 98425
        mmTop = 1323
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'APLFSCPER'
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
        mmLeft = 143404
        mmTop = 1323
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'DEVFSCPER'
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
        mmLeft = 121444
        mmTop = 1323
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'SALFLAFSC'
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
        mmHeight = 3260
        mmLeft = 167746
        mmTop = 1323
        mmWidth = 16256
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
        mmHeight = 3260
        mmLeft = 48154
        mmTop = 1323
        mmWidth = 20108
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 47625
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'flatporc'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###.##%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 2910
        mmLeft = 91811
        mmTop = 1588
        mmWidth = 5027
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 97896
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Usuario que consulta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 17812
        mmTop = 7408
        mmWidth = 36957
        BandType = 8
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Ultima fecha de proceso:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 12171
        mmWidth = 41804
        BandType = 8
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Ultimo usuario que proces'#243':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 7408
        mmTop = 16933
        mmWidth = 47361
        BandType = 8
      end
      object pplblusuario: TppLabel
        UserName = 'Label205'
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 56356
        mmTop = 7673
        mmWidth = 12171
        BandType = 8
      end
      object pplblfechaproceso: TppLabel
        UserName = 'lblfechaproceso'
        Caption = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 56356
        mmTop = 12435
        mmWidth = 17463
        BandType = 8
      end
      object pplblUsuarioProceso: TppLabel
        UserName = 'lblfechaproceso1'
        Caption = 'Usuario que Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 56356
        mmTop = 17198
        mmWidth = 32808
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape25: TppShape
        UserName = 'Shape25'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 162190
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 117740
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 139965
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppShape22: TppShape
        UserName = 'Shape102'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 91281
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
        mmTop = 13758
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
            mmHeight = 31485
            mmPrintPosition = 0
            object ppShape15: TppShape
              UserName = 'Shape15'
              Brush.Color = clYellow
              mmHeight = 13229
              mmLeft = 65352
              mmTop = 18521
              mmWidth = 48683
              BandType = 1
            end
            object ppShape16: TppShape
              UserName = 'Shape16'
              Brush.Color = clSilver
              mmHeight = 13229
              mmLeft = 113771
              mmTop = 18521
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
              mmTop = 24342
              mmWidth = 20902
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              Caption = 'Devuelto al'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 116152
              mmTop = 20902
              mmWidth = 17463
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              Caption = 'FSC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 121444
              mmTop = 26723
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              Caption = 'Devoluciones al FSC por Tipo de Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 6615
              mmLeft = 52388
              mmTop = 1058
              mmWidth = 102923
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
              mmTop = 8467
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
              mmTop = 15081
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
              DataField = 'TIPPAGO'
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
              DataField = 'DEVALFSC'
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
              mmLeft = 120862
              mmTop = 1058
              mmWidth = 14774
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
              DataField = 'DEVALFSC'
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
              mmLeft = 113210
              mmTop = 1323
              mmWidth = 22521
              BandType = 7
            end
          end
        end
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 69056
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'FLATPERANT'
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
        mmHeight = 3260
        mmLeft = 64505
        mmTop = 1588
        mmWidth = 25993
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'FLATPERACT'
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
        mmHeight = 3260
        mmLeft = 91228
        mmTop = 1588
        mmWidth = 25993
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'APLFSCPER'
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
        mmHeight = 3260
        mmLeft = 135732
        mmTop = 1588
        mmWidth = 24638
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        DataField = 'DEVFSCPER'
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
        mmHeight = 3260
        mmLeft = 113771
        mmTop = 1588
        mmWidth = 25104
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        DataField = 'SALFLAFSC'
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
        mmHeight = 3260
        mmLeft = 159809
        mmTop = 1588
        mmWidth = 24003
        BandType = 7
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'dbpRESFLATTIPPAGO'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 20373
        mmWidth = 210079
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = dbpRESFLATTIPPAGO
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
          DataPipelineName = 'dbpRESFLATTIPPAGO'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 30956
            mmPrintPosition = 0
            object ppShape26: TppShape
              UserName = 'Shape26'
              Brush.Color = clYellow
              mmHeight = 13229
              mmLeft = 57944
              mmTop = 17727
              mmWidth = 46038
              BandType = 1
            end
            object ppShape29: TppShape
              UserName = 'Shape29'
              Brush.Color = clSilver
              mmHeight = 13229
              mmLeft = 103717
              mmTop = 17727
              mmWidth = 22490
              BandType = 1
            end
            object ppShape30: TppShape
              UserName = 'Shape30'
              Brush.Color = clSilver
              mmHeight = 13229
              mmLeft = 125942
              mmTop = 17727
              mmWidth = 22490
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label204'
              Caption = 'Tipo de Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 63500
              mmTop = 23548
              mmWidth = 20902
              BandType = 1
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              Caption = 'FLAT al'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4022
              mmLeft = 131234
              mmTop = 19844
              mmWidth = 12319
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label39'
              Caption = 'FSC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4022
              mmLeft = 133879
              mmTop = 25665
              mmWidth = 7027
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label40'
              Caption = 'Cobranzas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 106098
              mmTop = 20108
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label41'
              Caption = 'FLAT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 111390
              mmTop = 25929
              mmWidth = 8636
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              Caption = 'Distribuci'#243'n FLAT para el FSC por Tipo de Pago (Cobranzas)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 6646
              mmLeft = 22754
              mmTop = 265
              mmWidth = 162687
              BandType = 1
            end
            object pplblPeriodo4: TppLabel
              UserName = 'lblPeriodo4'
              Caption = '(Periodo - 9999)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 95250
              mmTop = 7938
              mmWidth = 26458
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              Caption = '(Importe en Nuevos Soles)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 112977
              mmTop = 14288
              mmWidth = 35454
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppShape31: TppShape
              UserName = 'Shape31'
              Brush.Color = clYellow
              mmHeight = 6085
              mmLeft = 57944
              mmTop = 0
              mmWidth = 46038
              BandType = 4
            end
            object ppShape32: TppShape
              UserName = 'Shape202'
              Brush.Style = bsClear
              mmHeight = 6085
              mmLeft = 103717
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppShape33: TppShape
              UserName = 'Shape33'
              Brush.Style = bsClear
              mmHeight = 6085
              mmLeft = 125942
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'TIPPAGO'
              DataPipeline = dbpRESFLATTIPPAGO
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3969
              mmLeft = 58473
              mmTop = 1058
              mmWidth = 5821
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              AutoSize = True
              DataField = 'FLATPER'
              DataPipeline = dbpRESFLATTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3260
              mmLeft = 112184
              mmTop = 1323
              mmWidth = 12785
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText101'
              AutoSize = True
              DataField = 'FLATPORC'
              DataPipeline = dbpRESFLATTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3260
              mmLeft = 132027
              mmTop = 1323
              mmWidth = 15113
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'FORPAGODES'
              DataPipeline = dbpRESFLATTIPPAGO
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3969
              mmLeft = 65352
              mmTop = 1058
              mmWidth = 37571
              BandType = 4
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 64823
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 32808
            mmPrintPosition = 0
            object ppShape34: TppShape
              UserName = 'Shape34'
              Brush.Color = clSilver
              mmHeight = 6085
              mmLeft = 125942
              mmTop = 0
              mmWidth = 22490
              BandType = 7
            end
            object ppShape35: TppShape
              UserName = 'Shape35'
              Brush.Color = clSilver
              mmHeight = 6085
              mmLeft = 103717
              mmTop = 0
              mmWidth = 22490
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
              AutoSize = True
              DataField = 'FLATPER'
              DataPipeline = dbpRESFLATTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3260
              mmLeft = 104723
              mmTop = 1323
              mmWidth = 20320
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              DataField = 'FLATPORC'
              DataPipeline = dbpRESFLATTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3260
              mmLeft = 124566
              mmTop = 1323
              mmWidth = 22648
              BandType = 7
            end
            object ppDBRichText1: TppDBRichText
              UserName = 'DBRichText1'
              KeepTogether = True
              DataField = 'OBSIMPRESION'
              DataPipeline = dbpRESTIPASO
              ParentDataPipeline = False
              Stretch = True
              DataPipelineName = 'dbpRESTIPASO'
              mmHeight = 21960
              mmLeft = 6350
              mmTop = 9790
              mmWidth = 197909
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
          end
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DSRESFLATTPAGO: TDataSource
    DataSet = CDSRESFLATTPAGO
    Left = 500
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
    Left = 500
    Top = 63
    Data = {
      760000009619E0BD010000001800000004000000000003000000760007544950
      5041474F01004900000001000557494454480200020004000A464F525041474F
      4445530100490000000100055749445448020002001E0007464C415450455208
      0004000000000008464C4154504F524308000400000000000000}
  end
  object dbpRESFLATTIPPAGO: TppDBPipeline
    DataSource = DSRESFLATTPAGO
    UserName = 'dbpRESFLATTIPPAGO'
    Left = 593
    Top = 23
    object dbpRESFLATTIPPAGOppField1: TppField
      FieldAlias = 'TIPPAGO'
      FieldName = 'TIPPAGO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object dbpRESFLATTIPPAGOppField2: TppField
      FieldAlias = 'FORPAGODES'
      FieldName = 'FORPAGODES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object dbpRESFLATTIPPAGOppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'FLATPER'
      FieldName = 'FLATPER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object dbpRESFLATTIPPAGOppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'FLATPORC'
      FieldName = 'FLATPORC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
  end
  object ppREPRESAPLFSCOLD: TppReport
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
      'imo CLiente\SRC_201123_COB\REPRESFLATFSC_OLD.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 654
    Top = 56
    Version = '7.02'
    mmColumnWidth = 297127
    DataPipelineName = 'dbpRESTIPASO'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 58208
      mmPrintPosition = 0
      object ppShape21: TppShape
        UserName = 'Shape1'
        Brush.Color = clYellow
        mmHeight = 17198
        mmLeft = 42863
        mmTop = 41275
        mmWidth = 25135
        BandType = 0
      end
      object ppShape27: TppShape
        UserName = 'Shape2'
        Brush.Color = 8454016
        mmHeight = 17198
        mmLeft = 67733
        mmTop = 41275
        mmWidth = 22490
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape3'
        Brush.Color = clSilver
        mmHeight = 17198
        mmLeft = 89959
        mmTop = 41275
        mmWidth = 26723
        BandType = 0
      end
      object ppShape36: TppShape
        UserName = 'Shape4'
        Brush.Color = clSilver
        mmHeight = 17198
        mmLeft = 116417
        mmTop = 41275
        mmWidth = 22490
        BandType = 0
      end
      object ppShape37: TppShape
        UserName = 'Shape5'
        Brush.Color = clSilver
        mmHeight = 17198
        mmLeft = 138642
        mmTop = 41275
        mmWidth = 22490
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape6'
        Brush.Color = 8454016
        mmHeight = 17198
        mmLeft = 160867
        mmTop = 41275
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label1'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51594
        mmTop = 47096
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label2'
        Caption = 'Asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 52652
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label4'
        Caption = 'Saldo Ant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 70115
        mmTop = 47890
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label5'
        Caption = 'Dist. FLAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 94721
        mmTop = 45773
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label6'
        Caption = 'para el FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 93663
        mmTop = 50006
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label7'
        Caption = 'De cr'#233'ditos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 141023
        mmTop = 45773
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label8'
        Caption = 'aplicados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 142346
        mmTop = 50006
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label9'
        Caption = 'Devuelto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 120650
        mmTop = 48154
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label10'
        Caption = 'al FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 121973
        mmTop = 53446
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label11'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 168011
        mmTop = 47890
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label12'
        Caption = 'FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169069
        mmTop = 53181
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label15'
        Caption = 'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 77258
        mmTop = 41010
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label16'
        Caption = 'b'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 101336
        mmTop = 41010
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label17'
        Caption = 'c'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 125148
        mmTop = 41010
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label18'
        Caption = 'd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 41010
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label19'
        Caption = '(a + b + c) - d'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 161396
        mmTop = 41540
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label201'
        Caption = 'Saldo del Fondo Solidario de Contingencia - FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 22225
        mmTop = 13494
        mmWidth = 150019
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label202'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 171715
        mmTop = 2117
        mmWidth = 10668
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label28'
        Caption = 'Pag :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 175155
        mmTop = 12171
        mmWidth = 7451
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 182827
        mmTop = 2117
        mmWidth = 16002
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 182827
        mmTop = 12171
        mmWidth = 1778
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label203'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 4763
        mmTop = 1852
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label30'
        Caption = 'M'#243'dulo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 8467
        mmTop = 6879
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label32'
        Caption = '(COBRANZAS)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 92340
        mmTop = 54240
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label33'
        Caption = 'con el FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 141023
        mmTop = 53975
        mmWidth = 17463
        BandType = 0
      end
      object ppShape39: TppShape
        UserName = 'Shape7'
        Brush.Color = clSilver
        mmHeight = 7144
        mmLeft = 67733
        mmTop = 34396
        mmWidth = 22490
        BandType = 0
      end
      object pplblSubtitulo2b: TppLabel
        UserName = 'lblSubtitulo2'
        Caption = 'Periodo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 72231
        mmTop = 37571
        mmWidth = 12700
        BandType = 0
      end
      object ppShape40: TppShape
        UserName = 'Shape14'
        Brush.Color = clSilver
        mmHeight = 7144
        mmLeft = 89959
        mmTop = 34396
        mmWidth = 93398
        BandType = 0
      end
      object pplblSubtitulo1b: TppLabel
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
        mmLeft = 116152
        mmTop = 35719
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label3'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 173832
        mmTop = 7144
        mmWidth = 8678
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 182827
        mmTop = 7144
        mmWidth = 19558
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label34'
        Caption = 'FSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 74877
        mmTop = 53181
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label13'
        Caption = 'Periodo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 72231
        mmTop = 34131
        mmWidth = 12700
        BandType = 0
      end
      object pplblPeriodo2b: TppLabel
        UserName = 'lblPeriodo2'
        Caption = '(Periodo - 9999)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 81227
        mmTop = 21696
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel72: TppLabel
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
        mmLeft = 147902
        mmTop = 30692
        mmWidth = 35454
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape41: TppShape
        UserName = 'Shape8'
        Brush.Color = clYellow
        mmHeight = 6085
        mmLeft = 42863
        mmTop = 0
        mmWidth = 25135
        BandType = 4
      end
      object ppShape42: TppShape
        UserName = 'Shape9'
        Brush.Color = 8454016
        mmHeight = 6085
        mmLeft = 67733
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppShape43: TppShape
        UserName = 'Shape10'
        Brush.Style = bsClear
        mmHeight = 6085
        mmLeft = 89959
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppShape44: TppShape
        UserName = 'Shape11'
        Brush.Style = bsClear
        mmHeight = 6085
        mmLeft = 116417
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppShape45: TppShape
        UserName = 'Shape12'
        Brush.Style = bsClear
        mmHeight = 6085
        mmLeft = 138642
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppShape46: TppShape
        UserName = 'Shape13'
        Brush.Color = 8454016
        mmHeight = 6085
        mmLeft = 160867
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText1'
        DataField = 'TIPASOID'
        DataPipeline = dbpRESTIPASO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3969
        mmLeft = 43392
        mmTop = 1058
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'FLATPERANT'
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
        mmHeight = 3260
        mmLeft = 70644
        mmTop = 1323
        mmWidth = 18457
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'FLATPERACT'
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
        mmHeight = 3260
        mmLeft = 97102
        mmTop = 1323
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'APLFSCPER'
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
        mmLeft = 142082
        mmTop = 1323
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'DEVFSCPER'
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
        mmLeft = 120121
        mmTop = 1323
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'SALFLAFSC'
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
        mmHeight = 3260
        mmLeft = 166423
        mmTop = 1323
        mmWidth = 16256
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText7'
        DataField = 'asotipdes'
        DataPipeline = dbpRESTIPASO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 3969
        mmLeft = 48419
        mmTop = 1058
        mmWidth = 18521
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 47625
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'flatporc'
        DataPipeline = dbpRESTIPASO
        DisplayFormat = '###.##%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRESTIPASO'
        mmHeight = 2910
        mmLeft = 90488
        mmTop = 1588
        mmWidth = 5027
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 96573
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 28046
      mmPrintPosition = 0
      object ppLabel73: TppLabel
        UserName = 'Label14'
        Caption = 'Usuario que consulta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 17812
        mmTop = 10319
        mmWidth = 36957
        BandType = 8
      end
      object ppLabel74: TppLabel
        UserName = 'Label36'
        Caption = 'Ultima fecha de proceso:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 15081
        mmWidth = 41804
        BandType = 8
      end
      object ppLabel75: TppLabel
        UserName = 'Label37'
        Caption = 'Ultimo usuario que proces'#243':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 7408
        mmTop = 19844
        mmWidth = 47361
        BandType = 8
      end
      object pplblusuariob: TppLabel
        UserName = 'Label205'
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 56356
        mmTop = 10583
        mmWidth = 12171
        BandType = 8
      end
      object pplblfechaprocesob: TppLabel
        UserName = 'lblfechaproceso'
        Caption = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 56356
        mmTop = 15346
        mmWidth = 17463
        BandType = 8
      end
      object pplblUsuarioProcesob: TppLabel
        UserName = 'lblfechaproceso1'
        Caption = 'Usuario que Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 56356
        mmTop = 20108
        mmWidth = 32808
        BandType = 8
      end
      object ppLabel79: TppLabel
        UserName = 'Label206'
        Caption = 'La informaci'#243'n que se muestra en estas columnas es en l'#237'nea.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 12435
        mmTop = 24606
        mmWidth = 79036
        BandType = 8
      end
      object ppLabel80: TppLabel
        UserName = 'Label207'
        Caption = '(*) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4953
        mmLeft = 4498
        mmTop = 23548
        mmWidth = 7027
        BandType = 8
      end
    end
    object ppSummaryBand4: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 28046
      mmPrintPosition = 0
      object ppShape47: TppShape
        UserName = 'Shape25'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 160867
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppShape48: TppShape
        UserName = 'Shape23'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 116417
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppShape49: TppShape
        UserName = 'Shape24'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 138642
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppShape50: TppShape
        UserName = 'Shape102'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 89959
        mmTop = 0
        mmWidth = 26723
        BandType = 7
      end
      object ppSubReport3: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbpRESTIPPAGO'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 16140
        mmWidth = 210079
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
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
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 29369
            mmPrintPosition = 0
            object ppShape51: TppShape
              UserName = 'Shape15'
              Brush.Color = clYellow
              mmHeight = 13229
              mmLeft = 52388
              mmTop = 16140
              mmWidth = 35983
              BandType = 1
            end
            object ppShape52: TppShape
              UserName = 'Shape16'
              Brush.Color = clSilver
              mmHeight = 13229
              mmLeft = 88106
              mmTop = 16140
              mmWidth = 22490
              BandType = 1
            end
            object ppShape53: TppShape
              UserName = 'Shape17'
              Brush.Color = clSilver
              mmHeight = 13229
              mmLeft = 110331
              mmTop = 16140
              mmWidth = 22490
              BandType = 1
            end
            object ppLabel81: TppLabel
              UserName = 'Label20'
              Caption = 'Tipo de Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 57944
              mmTop = 21960
              mmWidth = 20902
              BandType = 1
            end
            object ppLabel82: TppLabel
              UserName = 'Label22'
              Caption = 'Excesos por'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 112184
              mmTop = 18256
              mmWidth = 19315
              BandType = 1
            end
            object ppLabel83: TppLabel
              UserName = 'Label23'
              Caption = 'Devolver'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 114829
              mmTop = 24077
              mmWidth = 13758
              BandType = 1
            end
            object ppLabel84: TppLabel
              UserName = 'Label24'
              Caption = 'Devuelto al'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 90488
              mmTop = 18521
              mmWidth = 17463
              BandType = 1
            end
            object ppLabel85: TppLabel
              UserName = 'Label25'
              Caption = 'FSC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 95779
              mmTop = 24342
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel86: TppLabel
              UserName = 'Label38'
              Caption = 'Devoluciones al FSC por Tipo de Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 6615
              mmLeft = 52388
              mmTop = 1058
              mmWidth = 102923
              BandType = 1
            end
            object pplblPeriodo3b: TppLabel
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
              mmTop = 8467
              mmWidth = 26458
              BandType = 1
            end
            object ppShape54: TppShape
              UserName = 'Shape36'
              Brush.Color = clSilver
              mmHeight = 13229
              mmLeft = 132557
              mmTop = 16140
              mmWidth = 22490
              BandType = 1
            end
            object ppLabel88: TppLabel
              UserName = 'Label43'
              Caption = 'Excesos del'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4022
              mmLeft = 133979
              mmTop = 16669
              mmWidth = 18965
              BandType = 1
            end
            object ppLabel89: TppLabel
              UserName = 'Label44'
              Caption = 'Devueltos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4022
              mmLeft = 135732
              mmTop = 24606
              mmWidth = 15579
              BandType = 1
            end
            object ppLabel90: TppLabel
              UserName = 'Label45'
              Caption = 'periodo,'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4022
              mmLeft = 137340
              mmTop = 20638
              mmWidth = 12658
              BandType = 1
            end
            object ppLabel91: TppLabel
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
              mmLeft = 119856
              mmTop = 12435
              mmWidth = 35454
              BandType = 1
            end
            object ppLabel92: TppLabel
              UserName = 'Label48'
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 152136
              mmTop = 24077
              mmWidth = 1588
              BandType = 1
            end
            object ppLabel93: TppLabel
              UserName = 'Label49'
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 129646
              mmTop = 24342
              mmWidth = 1524
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppShape55: TppShape
              UserName = 'Shape19'
              Brush.Color = clYellow
              mmHeight = 6085
              mmLeft = 52388
              mmTop = 0
              mmWidth = 35983
              BandType = 4
            end
            object ppShape56: TppShape
              UserName = 'Shape20'
              Brush.Style = bsClear
              mmHeight = 6085
              mmLeft = 88106
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppShape57: TppShape
              UserName = 'Shape101'
              Brush.Style = bsClear
              mmHeight = 6085
              mmLeft = 110331
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText8'
              DataField = 'TIPPAGO'
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
              mmLeft = 52917
              mmTop = 794
              mmWidth = 5821
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText9'
              AutoSize = True
              DataField = 'DEVALFSC'
              DataPipeline = dbpRESTIPPAGO
              DisplayFormat = '###,###.#0'
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
              mmLeft = 94456
              mmTop = 1323
              mmWidth = 14986
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText10'
              AutoSize = True
              DataField = 'EXCPORDEV'
              DataPipeline = dbpRESTIPPAGO
              DisplayFormat = '###,###.#0'
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
              mmLeft = 113771
              mmTop = 1323
              mmWidth = 17738
              BandType = 4
            end
            object ppDBText27: TppDBText
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
              mmLeft = 59796
              mmTop = 794
              mmWidth = 27781
              BandType = 4
            end
            object ppLine7: TppLine
              UserName = 'Line1'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 59267
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppShape58: TppShape
              UserName = 'Shape37'
              Brush.Style = bsClear
              mmHeight = 6085
              mmLeft = 132557
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText102'
              AutoSize = True
              DataField = 'EXCDEVUELTO'
              DataPipeline = dbpRESTIPPAGO
              DisplayFormat = '###,###.#0'
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
              mmLeft = 132557
              mmTop = 1323
              mmWidth = 21040
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 11377
            mmPrintPosition = 0
            object ppShape59: TppShape
              UserName = 'Shape28'
              Brush.Color = clSilver
              mmHeight = 6085
              mmLeft = 110331
              mmTop = 0
              mmWidth = 22490
              BandType = 7
            end
            object ppShape60: TppShape
              UserName = 'Shape201'
              Brush.Color = clSilver
              mmHeight = 6085
              mmLeft = 88106
              mmTop = 0
              mmWidth = 22490
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              DataField = 'DEVALFSC'
              DataPipeline = dbpRESTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESTIPPAGO'
              mmHeight = 3260
              mmLeft = 86784
              mmTop = 1323
              mmWidth = 22733
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              DataField = 'EXCPORDEV'
              DataPipeline = dbpRESTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESTIPPAGO'
              mmHeight = 3260
              mmLeft = 106098
              mmTop = 1323
              mmWidth = 25485
              BandType = 7
            end
            object ppShape61: TppShape
              UserName = 'Shape38'
              Brush.Color = clSilver
              mmHeight = 6085
              mmLeft = 132557
              mmTop = 0
              mmWidth = 22490
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              DataField = 'EXCDEVUELTO'
              DataPipeline = dbpRESTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESTIPPAGO'
              mmHeight = 3260
              mmLeft = 124937
              mmTop = 1323
              mmWidth = 28787
              BandType = 7
            end
          end
        end
      end
      object ppShape62: TppShape
        UserName = 'Shape18'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 67733
        mmTop = 0
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'FLATPERANT'
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
        mmHeight = 3260
        mmLeft = 63182
        mmTop = 1588
        mmWidth = 25993
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'FLATPERACT'
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
        mmHeight = 3260
        mmLeft = 89905
        mmTop = 1588
        mmWidth = 25993
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'APLFSCPER'
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
        mmHeight = 3260
        mmLeft = 134409
        mmTop = 1588
        mmWidth = 24638
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        DataField = 'DEVFSCPER'
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
        mmHeight = 3260
        mmLeft = 112448
        mmTop = 1588
        mmWidth = 25104
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        DataField = 'SALFLAFSC'
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
        mmHeight = 3260
        mmLeft = 158486
        mmTop = 1588
        mmWidth = 24003
        BandType = 7
      end
      object ppSubReport4: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport3
        TraverseAllData = False
        DataPipelineName = 'dbpRESFLATTIPPAGO'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 22754
        mmWidth = 210079
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = dbpRESFLATTIPPAGO
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
          DataPipelineName = 'dbpRESFLATTIPPAGO'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 30956
            mmPrintPosition = 0
            object ppShape63: TppShape
              UserName = 'Shape26'
              Brush.Color = clYellow
              mmHeight = 13229
              mmLeft = 66411
              mmTop = 17727
              mmWidth = 35983
              BandType = 1
            end
            object ppShape64: TppShape
              UserName = 'Shape29'
              Brush.Color = clSilver
              mmHeight = 13229
              mmLeft = 102129
              mmTop = 17727
              mmWidth = 22490
              BandType = 1
            end
            object ppShape65: TppShape
              UserName = 'Shape30'
              Brush.Color = clSilver
              mmHeight = 13229
              mmLeft = 124354
              mmTop = 17727
              mmWidth = 22490
              BandType = 1
            end
            object ppLabel94: TppLabel
              UserName = 'Label204'
              Caption = 'Tipo de Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 71967
              mmTop = 23548
              mmWidth = 20902
              BandType = 1
            end
            object ppLabel95: TppLabel
              UserName = 'Label35'
              Caption = 'FLAT al'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4022
              mmLeft = 129707
              mmTop = 19844
              mmWidth = 12319
              BandType = 1
            end
            object ppLabel96: TppLabel
              UserName = 'Label39'
              Caption = 'FSC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4022
              mmLeft = 132217
              mmTop = 25665
              mmWidth = 7027
              BandType = 1
            end
            object ppLabel97: TppLabel
              UserName = 'Label40'
              Caption = 'Cobranzas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 104511
              mmTop = 20108
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel98: TppLabel
              UserName = 'Label41'
              Caption = 'FLAT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 109802
              mmTop = 25929
              mmWidth = 8636
              BandType = 1
            end
            object ppLabel99: TppLabel
              UserName = 'Label42'
              Caption = 'Distribuci'#243'n FLAT para el FSC por Tipo de Pago (Cobranzas)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 6646
              mmLeft = 22754
              mmTop = 265
              mmWidth = 162687
              BandType = 1
            end
            object pplblPeriodo4b: TppLabel
              UserName = 'lblPeriodo4'
              Caption = '(Periodo - 9999)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 92604
              mmTop = 7938
              mmWidth = 26458
              BandType = 1
            end
            object ppLabel101: TppLabel
              UserName = 'Label47'
              Caption = '(Importe en Nuevos Soles)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 111919
              mmTop = 14288
              mmWidth = 35454
              BandType = 1
            end
          end
          object ppDetailBand6: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppShape66: TppShape
              UserName = 'Shape31'
              Brush.Color = clYellow
              mmHeight = 6085
              mmLeft = 66411
              mmTop = 0
              mmWidth = 35983
              BandType = 4
            end
            object ppShape67: TppShape
              UserName = 'Shape202'
              Brush.Style = bsClear
              mmHeight = 6085
              mmLeft = 102129
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppShape68: TppShape
              UserName = 'Shape33'
              Brush.Style = bsClear
              mmHeight = 6085
              mmLeft = 124354
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText13'
              DataField = 'TIPPAGO'
              DataPipeline = dbpRESFLATTIPPAGO
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3969
              mmLeft = 66940
              mmTop = 1058
              mmWidth = 5821
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText14'
              AutoSize = True
              DataField = 'FLATPER'
              DataPipeline = dbpRESFLATTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3260
              mmLeft = 110680
              mmTop = 1323
              mmWidth = 12785
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText101'
              AutoSize = True
              DataField = 'FLATPORC'
              DataPipeline = dbpRESFLATTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3260
              mmLeft = 130419
              mmTop = 1323
              mmWidth = 15113
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText16'
              DataField = 'FORPAGODES'
              DataPipeline = dbpRESFLATTIPPAGO
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3969
              mmLeft = 73819
              mmTop = 1058
              mmWidth = 27781
              BandType = 4
            end
            object ppLine8: TppLine
              UserName = 'Line4'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 73290
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 32808
            mmPrintPosition = 0
            object ppShape69: TppShape
              UserName = 'Shape34'
              Brush.Color = clSilver
              mmHeight = 6085
              mmLeft = 124354
              mmTop = 0
              mmWidth = 22490
              BandType = 7
            end
            object ppShape70: TppShape
              UserName = 'Shape35'
              Brush.Color = clSilver
              mmHeight = 6085
              mmLeft = 102129
              mmTop = 0
              mmWidth = 22490
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc6'
              AutoSize = True
              DataField = 'FLATPER'
              DataPipeline = dbpRESFLATTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3260
              mmLeft = 103007
              mmTop = 1323
              mmWidth = 20532
              BandType = 7
            end
            object ppDBCalc18: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              DataField = 'FLATPORC'
              DataPipeline = dbpRESFLATTIPPAGO
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpRESFLATTIPPAGO'
              mmHeight = 3260
              mmLeft = 122746
              mmTop = 1323
              mmWidth = 22860
              BandType = 7
            end
            object ppDBRichText1b: TppDBRichText
              UserName = 'DBRichText1'
              KeepTogether = True
              DataField = 'OBSIMPRESION'
              DataPipeline = dbpRESTIPASO
              ParentDataPipeline = False
              Stretch = True
              DataPipelineName = 'dbpRESTIPASO'
              mmHeight = 21960
              mmLeft = 6350
              mmTop = 9790
              mmWidth = 197909
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
          end
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
