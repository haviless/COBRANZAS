object FRefiApeCie: TFRefiApeCie
  Left = 277
  Top = 221
  Width = 420
  Height = 295
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Apertura / Cierre de Refinanciados'
  Color = clBtnFace
  Constraints.MaxHeight = 295
  Constraints.MaxWidth = 420
  Constraints.MinHeight = 295
  Constraints.MinWidth = 420
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 6
    Top = 6
    Width = 398
    Height = 246
    TabOrder = 0
    object Label1: TLabel
      Left = 43
      Top = 83
      Width = 66
      Height = 27
      Caption = 'Oficina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 53
      Top = 22
      Width = 55
      Height = 27
      Caption = 'Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 47
      Top = 143
      Width = 62
      Height = 27
      Caption = 'Estado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbtnApertura: TBitBtn
      Left = 18
      Top = 198
      Width = 110
      Height = 32
      Caption = 'Apertura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbtnAperturaClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777747177700000007777777777747117700000007777
        7777777471117000000077777777777471111000000077777777777471117000
        000070000000777471177000000070FFFFF0777471777000000070F888F07777
        77777000000070FFFFF0777777777000000070F888F0777777777000000070FF
        FFF0777777777000000070FF0000000007777000000070000FBFBFBF07777000
        000077770BFBFBFB077770000000777700000000077770000000777777777777
        777770000000}
      Margin = 10
    end
    object bbtnCierre: TBitBtn
      Left = 147
      Top = 198
      Width = 110
      Height = 32
      Cursor = crHandPoint
      Caption = 'Cierre'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbtnCierreClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABAFAF6B7272EBEBEBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7AAAA0B
        1E201F12183900000E24236A6E6ECDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA7AAAA0B1E20181219810700FC1F00FF1300570000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9E8EC000002810700FD1900FA
        4712C7A79D618C916A2C2C830000977878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCC5637F40D00FA4712BFA094B6CFD4C5C9CB767B7B3239382B3D3C9380
        80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD04E11C29C91B6CFD4BCC2C4BD
        BDBDC5C5C5757A7A373736343534888B8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF879C9FC0C5C6BDBDBDBDBDBDC0C0C0CECDCD787D7D333332363736898A
        89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E9593C1C0C0C0C0C0C9C9C9A5
        A2A55B5A5AA5ADAA5F605F131213858685FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF919896CDCCCCA8A6A86161616C736CA2ABA25C5F614A4E493F403FC8C7
        C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7378786464634D524C7B827BDC
        DFDCA8ADA784878E323631FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF535552A5ABAA84878D5C605B1F241F7B7A7A85888E323631FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCB7C808630342FFF
        FFFFFFFFFF75797F323631FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF75797F2E322CFFFFFFFFFFFF6A6E742E332CFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70757B5F605D76
        76763A3C39F9FFFF434542FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF5C5B5AFFFFFFC4C2C1EDEEF16B7370C6C5C6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67686A79
        7F834C5050CECDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Margin = 10
    end
    object pnlEstado: TPanel
      Left = 115
      Top = 137
      Width = 190
      Height = 36
      Enabled = False
      TabOrder = 2
      object lblEstado: TMaskEdit
        Left = 2
        Top = 2
        Width = 186
        Height = 31
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'NO LABORABLE'
      end
    end
    object dtpFecha: TwwDBDateTimePicker
      Left = 115
      Top = 21
      Width = 110
      Height = 29
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 3
      OnExit = dtpFechaExit
    end
    object dblcUniDesc: TwwDBLookupCombo
      Left = 116
      Top = 86
      Width = 45
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'OFDESID'#9'3'#9'Id'#9'F'
        'OFDESNOM'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsOfDes
      LookupField = 'OFDESID'
      Options = [loColLines, loTitles]
      DropDownCount = 15
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      SearchDelay = 2
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcUniDescExit
    end
    object edtunidesc: TEdit
      Left = 161
      Top = 86
      Width = 199
      Height = 26
      CharCase = ecUpperCase
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object bbtnFiltra: TBitBtn
      Left = 340
      Top = 15
      Width = 50
      Height = 30
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = bbtnFiltraClick
    end
    object BitSalir: TBitBtn
      Left = 306
      Top = 199
      Width = 72
      Height = 30
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BitSalirClick
      Kind = bkClose
    end
  end
end
