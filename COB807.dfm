object fregincpla: Tfregincpla
  Left = 262
  Top = 132
  BorderStyle = bsDialog
  Caption = 'Registro de inconsistencia de planilla'
  ClientHeight = 502
  ClientWidth = 862
  Color = 10207162
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
  object Label11: TLabel
    Left = 7
    Top = 47
    Width = 113
    Height = 13
    Caption = 'A'#241'o y mes del descargo'
  end
  object Label12: TLabel
    Left = 125
    Top = 47
    Width = 3
    Height = 13
    Caption = ':'
  end
  object gbregcob: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 73
    Caption = ' Datos del Registro de cobranza '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 101
      Height = 13
      Caption = 'Registro de cobranza'
    end
    object Label2: TLabel
      Left = 8
      Top = 47
      Width = 149
      Height = 13
      Caption = 'Detalle del registro de cobranza'
    end
    object Label3: TLabel
      Left = 170
      Top = 18
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label4: TLabel
      Left = 170
      Top = 47
      Width = 3
      Height = 13
      Caption = ':'
    end
    object edtregcob: TMaskEdit
      Left = 183
      Top = 15
      Width = 72
      Height = 21
      EditMask = '#######;1; '
      MaxLength = 7
      TabOrder = 0
      Text = '       '
    end
    object edtdetregcob: TMaskEdit
      Left = 183
      Top = 43
      Width = 72
      Height = 21
      EditMask = '#######;1; '
      MaxLength = 7
      TabOrder = 1
      Text = '       '
    end
  end
  object dbgdetregcob: TwwDBGrid
    Left = 8
    Top = 192
    Width = 847
    Height = 262
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsDetRegCob
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgdetregcobDblClick
  end
  object btnbuscar: TBitBtn
    Left = 193
    Top = 87
    Width = 80
    Height = 32
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = btnbuscarClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7B7B7
      B76F6F6F6061606464647E7F7FCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFCDCDCC7C
      7C7C6262625F5F606E6E6EAFAFB0F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFCDCDCE7B7C7C7373736161616A6A6A878787848484FFFFFFFFFFFFFFFF
      FFFFFFFF8282848282826969696464638080807C7C7ECDCDCDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFB8B8B98E8D8E7171715F606069696A8F8E8E8D8D8D
      FFFFFFFFFFFFFFFFFFFFFFFF9191938686876969696464637C7C7C9090919F9F
      9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B08888895D5D5D4E4F4E56
      56578282828C8C8DFFFFFFFFFFFFFFFFFFFFFFFF9797978282835D5E5E565656
      676768838384989899FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A57677
      775C5C5C5859585A59596B6B6C787879FFFFFFFFFFFFFFFFFFFFFFFF8485857B
      7C7D7475756161615D5D5D6362638C8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF9090908585856F6F706A6A6A747373807F7F8B8A8B8384847F7F7FBFBF
      BF797879797A7A99999AA3A4A47878786969696A6969787878FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF8686868C8D8E6B6B6C676767717171898888A8A7A7
      AFAFAF7170718787877D7D7E858585A7A7A7A0A1A07474746969696C6C6C6A6A
      6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484848F8F8E6A6A6B67676770
      7170868686A3A2A2A9A9A97475759D9D9D7D7C7C838283A4A4A4A1A09F747474
      6969696C6B6B686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484869392
      916A696A676666707070868686A3A3A2ACACAD6C6C6D7C7C7D7B7B7B848484A4
      A4A4A1A0A07575746868686E6D6D6B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF888889959494696969676767717171868686A2A2A2ADADAD6B6B6B7878
      797C7C7B838384A4A4A4A0A0A07474746867676E6E6E727272FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF8F8F8F979797686868656565707070868686A2A2A2
      AAABAA7373749E9E9E7C7C7B828383A4A4A5A0A0A07474746867676F6F6F7979
      79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98989898989A6161626062626C
      6C6C858585A6A6A5AFAEAE7372737F7F7F7677767E7E7FA2A2A39E9E9E737272
      666565727272828282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADADB3B3
      B4AEAEAFA4A5A59999999393939F9F9EA2A1A179797A89898A8A8A8B9F9FA0BE
      BDBFB5B4B4959596828182767676919192FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFDCDCDDACACAEF1F1F1DEDFDEB8B8B76E6E6E525253717071A6A7A7B0B0
      B1C3C2C58686886262649A9A9AB5B5B79696968B8B8ADEDEDEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0A1A2A3A7A7A8979798636363686969
      808181D3D3D3D1D1D18C8C8E6767686565659696978A8A8B8A8A8AD2D2D2FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F79E9D9E81
      81826767687D7D7F8F8E8FFFFFFFFFFFFF818181656565797A7B8C8A899B9B9C
      FFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFBFBFBA1A2A3BFAE9CC5B5A2CCBAA7979594FFFFFFFFFFFF9C9A98D5BCA3D2
      B99FC7B39CA1A1A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD2D2D29595958A8889868483CDCCCBFFFFFFFFFF
      FFC6C5C58685858684838C8B8BD3D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object gbdatregcob: TGroupBox
    Left = 288
    Top = 8
    Width = 561
    Height = 126
    Caption = ' Datos del Registro de Cobranza '
    TabOrder = 5
    object Label5: TLabel
      Left = 7
      Top = 76
      Width = 108
      Height = 13
      Caption = 'N'#250'mero de documento'
    end
    object Label6: TLabel
      Left = 7
      Top = 102
      Width = 101
      Height = 13
      Caption = 'Fecha de documento'
    end
    object Label7: TLabel
      Left = 7
      Top = 50
      Width = 113
      Height = 13
      Caption = 'A'#241'o y mes del descargo'
    end
    object Label8: TLabel
      Left = 125
      Top = 50
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label9: TLabel
      Left = 125
      Top = 76
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label10: TLabel
      Left = 125
      Top = 102
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label13: TLabel
      Left = 7
      Top = 24
      Width = 68
      Height = 13
      Caption = 'Tipo descargo'
    end
    object Label14: TLabel
      Left = 125
      Top = 24
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label15: TLabel
      Left = 228
      Top = 50
      Width = 90
      Height = 13
      Caption = 'Unidad de proceso'
    end
    object Label16: TLabel
      Left = 228
      Top = 76
      Width = 76
      Height = 13
      Caption = 'Unidad de pago'
    end
    object Label17: TLabel
      Left = 325
      Top = 50
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label18: TLabel
      Left = 325
      Top = 76
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Panel1: TPanel
      Left = 134
      Top = 45
      Width = 87
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 0
      object edtanomes: TEdit
        Left = 1
        Top = 1
        Width = 85
        Height = 21
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 134
      Top = 97
      Width = 87
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 1
      object edtrcobfope: TEdit
        Left = 1
        Top = 1
        Width = 85
        Height = 21
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 134
      Top = 71
      Width = 87
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 2
      object edtrcobnope: TEdit
        Left = 1
        Top = 1
        Width = 85
        Height = 21
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 134
      Top = 20
      Width = 339
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 3
      object edtcpagocpto: TEdit
        Left = 1
        Top = 1
        Width = 337
        Height = 21
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 332
      Top = 45
      Width = 223
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 4
      object edtupronom: TEdit
        Left = 1
        Top = 1
        Width = 221
        Height = 21
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 332
      Top = 71
      Width = 223
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 5
      object edtupagonom: TEdit
        Left = 1
        Top = 1
        Width = 221
        Height = 21
        TabOrder = 0
      end
    end
  end
  object gbfiltrarasociado: TGroupBox
    Left = 8
    Top = 137
    Width = 425
    Height = 49
    Caption = 'Datos del Asociado '
    TabOrder = 2
    object edtasoapenom: TMaskEdit
      Left = 8
      Top = 18
      Width = 410
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object btnsalir: TBitBtn
    Left = 775
    Top = 466
    Width = 80
    Height = 32
    Caption = 'Salir'
    TabOrder = 6
    OnClick = btnsalirClick
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
  object btnbuscarasociado: TBitBtn
    Left = 444
    Top = 151
    Width = 114
    Height = 32
    Caption = 'Filtrar asociado'
    TabOrder = 3
    OnClick = btnbuscarasociadoClick
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
  object pnlconfirmar: TPanel
    Left = 176
    Top = 171
    Width = 501
    Height = 313
    Color = 10207162
    TabOrder = 7
    Visible = False
    object gbinfaso: TGroupBox
      Left = 7
      Top = 8
      Width = 486
      Height = 263
      Caption = ' Informaci'#243'n del registro global de cobranza '
      Enabled = False
      TabOrder = 0
      object Label19: TLabel
        Left = 8
        Top = 134
        Width = 132
        Height = 13
        Caption = 'Monto registrado en aportes'
      end
      object Label20: TLabel
        Left = 8
        Top = 111
        Width = 129
        Height = 13
        Caption = 'Monto registrado en cuotas'
      end
      object Label21: TLabel
        Left = 8
        Top = 155
        Width = 151
        Height = 13
        Caption = 'Moto registrado en Fsc Solidario'
      end
      object Label23: TLabel
        Left = 164
        Top = 134
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label22: TLabel
        Left = 164
        Top = 111
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label24: TLabel
        Left = 164
        Top = 155
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label25: TLabel
        Left = 8
        Top = 178
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object Label26: TLabel
        Left = 164
        Top = 178
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label27: TLabel
        Left = 8
        Top = 45
        Width = 95
        Height = 13
        Caption = 'Apellidos y Nombres'
      end
      object Label28: TLabel
        Left = 8
        Top = 67
        Width = 89
        Height = 13
        Caption = 'Monto descontado'
      end
      object Label29: TLabel
        Left = 109
        Top = 45
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label30: TLabel
        Left = 109
        Top = 67
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label31: TLabel
        Left = 8
        Top = 22
        Width = 135
        Height = 13
        Caption = 'MONTO DESCONTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 8
        Top = 91
        Width = 131
        Height = 13
        Caption = 'MONTO REGISTRADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtcremtocob: TStaticText
        Left = 172
        Top = 108
        Width = 97
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clWindow
        ParentColor = False
        TabOrder = 0
      end
      object edtaporte: TStaticText
        Left = 172
        Top = 130
        Width = 97
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clWindow
        ParentColor = False
        TabOrder = 1
      end
      object edtfonsol: TStaticText
        Left = 172
        Top = 152
        Width = 97
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clWindow
        ParentColor = False
        TabOrder = 2
      end
      object edttotal: TStaticText
        Left = 172
        Top = 174
        Width = 97
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clWindow
        ParentColor = False
        TabOrder = 3
      end
      object edtasoapenomaceptar: TStaticText
        Left = 118
        Top = 41
        Width = 363
        Height = 20
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clWindow
        ParentColor = False
        TabOrder = 4
      end
      object edtmontodescontadoaceptar: TStaticText
        Left = 118
        Top = 63
        Width = 85
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clWindow
        ParentColor = False
        TabOrder = 5
      end
      object memavisoconfirmar: TRichEdit
        Left = 19
        Top = 203
        Width = 459
        Height = 52
        Alignment = taCenter
        BorderStyle = bsNone
        Color = 10207162
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
    end
    object btnaceptar: TBitBtn
      Left = 313
      Top = 274
      Width = 80
      Height = 32
      Caption = 'Grabar'
      TabOrder = 1
      OnClick = btnaceptarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object btnsaliraceptar: TBitBtn
      Left = 414
      Top = 274
      Width = 80
      Height = 32
      Caption = 'Salir'
      TabOrder = 2
      OnClick = btnsaliraceptarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Timer1: TTimer
    Interval = 200
    OnTimer = Timer1Timer
    Left = 631
    Top = 387
  end
end
