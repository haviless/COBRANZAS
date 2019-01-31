object fNueAsociado: TfNueAsociado
  Left = 209
  Top = 325
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Asociados'
  ClientHeight = 286
  ClientWidth = 746
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpNueAso: TGroupBox
    Left = 4
    Top = 1
    Width = 744
    Height = 280
    TabOrder = 0
    object Panel1: TPanel
      Left = 8
      Top = 16
      Width = 257
      Height = 41
      Caption = 'Panel1'
      Color = clWindow
      Enabled = False
      TabOrder = 0
      object Label2: TLabel
        Left = 6
        Top = 10
        Width = 91
        Height = 16
        Caption = 'Codigo Derrama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtAsoId: TwwDBEdit
        Left = 103
        Top = 7
        Width = 141
        Height = 28
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Pan01: TPanel
      Left = 272
      Top = 8
      Width = 464
      Height = 50
      Caption = 'Pan01'
      Color = 10207162
      Enabled = False
      TabOrder = 1
      object Label3: TLabel
        Left = 7
        Top = 1
        Width = 84
        Height = 17
        Caption = 'Procesado En : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DbLUniPro: TwwDBLookupCombo
        Left = 8
        Top = 20
        Width = 55
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'UPROID'#9'4'#9'Codigo'#9'F'
          'UPRONOM'#9'40'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Options = [loColLines, loRowLines, loTitles]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DbLUniProChange
      end
      object Panel9: TPanel
        Left = 62
        Top = 18
        Width = 395
        Height = 27
        Caption = 'Panel7'
        Enabled = False
        TabOrder = 1
        object dbeUproDes: TwwDBEdit
          Left = 3
          Top = 2
          Width = 390
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnChange = dbeUproDesChange
        end
      end
    end
    object Pan02: TPanel
      Left = 7
      Top = 61
      Width = 729
      Height = 49
      Caption = 'Pan02'
      Color = 10207162
      Enabled = False
      TabOrder = 2
      object Label4: TLabel
        Left = 4
        Top = 2
        Width = 84
        Height = 17
        Caption = 'Unidad De Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 338
        Top = 3
        Width = 60
        Height = 17
        Caption = 'Use / Ugel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DbLUniPag: TwwDBLookupCombo
        Left = 5
        Top = 20
        Width = 48
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'UPAGOID'#9'4'#9'Codigo'#9'F'
          'UPAGONOM'#9'40'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        Options = [loColLines, loRowLines, loTitles]
        Enabled = False
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DbLUniPagChange
      end
      object Panel2: TPanel
        Left = 54
        Top = 18
        Width = 271
        Height = 27
        Caption = 'Panel7'
        Enabled = False
        TabOrder = 1
        object dbeUpagDes: TwwDBEdit
          Left = 3
          Top = 2
          Width = 263
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnChange = dbeUpagDesChange
        end
      end
      object DbLUses: TwwDBLookupCombo
        Left = 334
        Top = 20
        Width = 48
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'USEID'#9'4'#9'Codigo'#9'F'
          'USENOM'#9'38'#9'Descripci'#243'n'#9'F')
        LookupField = 'USEID'
        Options = [loColLines, loRowLines, loTitles]
        Enabled = False
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DbLUsesChange
      end
      object Panel3: TPanel
        Left = 382
        Top = 18
        Width = 339
        Height = 27
        Caption = 'Panel7'
        Enabled = False
        TabOrder = 3
        object dbeUses: TwwDBEdit
          Left = 3
          Top = 2
          Width = 334
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object Pan03: TPanel
      Left = 6
      Top = 186
      Width = 730
      Height = 48
      Color = 10207162
      Enabled = False
      TabOrder = 3
      object Label1: TLabel
        Left = 9
        Top = 1
        Width = 83
        Height = 17
        Caption = 'Codigo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 124
        Top = 1
        Width = 90
        Height = 17
        Caption = 'Apellido Paterno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 405
        Top = 1
        Width = 94
        Height = 17
        Caption = 'Apellido Materno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object EdtCodMod: TwwDBEdit
        Left = 7
        Top = 18
        Width = 110
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = EdtCodModExit
      end
      object EdtApePat: TwwDBEdit
        Left = 122
        Top = 18
        Width = 271
        Height = 24
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object EdtApeMat: TwwDBEdit
        Left = 401
        Top = 18
        Width = 321
        Height = 24
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Pan04: TPanel
      Left = 6
      Top = 238
      Width = 379
      Height = 33
      Color = 10207162
      Enabled = False
      TabOrder = 4
      object Label24: TLabel
        Left = 11
        Top = 8
        Width = 48
        Height = 17
        Caption = 'Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object EdtAsoNom: TwwDBEdit
        Left = 66
        Top = 4
        Width = 305
        Height = 24
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object BitGrabar: TBitBtn
      Left = 425
      Top = 247
      Width = 97
      Height = 27
      Cursor = crHandPoint
      Hint = 'Grabar'
      Caption = '&Grabar'
      Enabled = False
      TabOrder = 5
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
    object BitMasDat: TBitBtn
      Left = 531
      Top = 247
      Width = 97
      Height = 27
      Cursor = crHandPoint
      Hint = 'Datos Complementarios'
      Caption = '&Mas Datos'
      Enabled = False
      TabOrder = 6
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFD3D3D3
        8181818888888888888888888888888888888888888888888888888888888888
        889090907D7D7DFFFFFFFFFFFF0F0F0F7783836F77776F77776F77776F77776F
        77776F77777179796F77776F77777985851616163F3F3FFFFFFFFFFFFF687474
        991919A85F5FA65959A65959A65959BD7171BF73739F5151A15353A157579919
        19808B8B3D3D3DFFFFFFFFFFFF606868A86060CBD9D9C7CECEC7CECEDDE4E400
        0000000000262F2FFFFFFFFFFFFFA15858767E7E3D3D3DFFFFFFFFFFFF606868
        A85C5CCBD2D2C7C7C7C7C7C7D2D2D25F5F5F6969696B6B6BF1F1F1EDF3F3A458
        58767E7E3D3D3DFFFFFFFFFFFF626A6A934646AAB2B2A2A2A29A9A9A9A9A9AA8
        A8A8B4B4B4ACACAC969696989F9F9346467880803D3D3DFFFFFFFFFFFF606868
        B56A6A555D5D9A9A9AFFFFFFF4F4F4CECECE4040408A8A8AF5F5F5F4FAFAA65A
        5A767E7E3D3D3DFFFFFFFFFFFF626A6A9F5252343C3C383838202020A2A2A2C4
        C4C4CACACAC5C5C5BCBCBCC2C8C88F42427880803D3D3DFFFFFFFFFFFF606868
        B46868636B6B6B6B6B616161B9B9B9EBEBEBE5E5E5E5E5E5E5E5E5EDF3F3A458
        58767E7E3D3D3DFFFFFFFFFFFF606868B266665F67676767675D5D5DB7B7B7E7
        E7E7E1E1E1E1E1E1E1E1E1E9EFEFA65656767E7E3D3D3DFFFFFFFFFFFF606868
        B46C6C5767675F6767555D5DBBC3C3EEF5F5E9EFEFE9EFEFE9EFEFF7FEFE835C
        5C8084843D3D3DFFFFFFFFFFFF626E6E8D1919A46B6BA26565A4676783434396
        5757945555945555A255557F57570812123D3D3D424242FFFFFFFFFFFF5A6666
        E28C8CFB8787F88787F88787F98888F88787F88787FF8787876F6F8C9494FFFF
        FF5D6969545454FFFFFFFFFFFF5C7474C50000FF0000FF0000FF0000FF0000FF
        0000FF0000690000B5C7C7D3D6D64E2828630000707C7CFFFFFFFFFFFF5C6464
        BF8383B08383B08383B08383B08383B78A8A5D24245A72721F1F1F0000006F73
        736D7979060606FFFFFFFFFFFF79797981888881888881888881888881888881
        8888818888CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitSalir: TBitBtn
      Left = 637
      Top = 247
      Width = 97
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 7
      OnClick = BitSalirClick
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
    object Panel4: TPanel
      Left = 6
      Top = 111
      Width = 177
      Height = 51
      Color = 10207162
      Enabled = False
      TabOrder = 8
      object Label7: TLabel
        Left = 9
        Top = 1
        Width = 92
        Height = 17
        Caption = 'Tipo de Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeAsoTip: TwwDBEdit
        Left = 9
        Top = 18
        Width = 161
        Height = 28
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel5: TPanel
      Left = 187
      Top = 111
      Width = 101
      Height = 51
      Color = 10207162
      Enabled = False
      TabOrder = 9
      object Label8: TLabel
        Left = 9
        Top = 1
        Width = 31
        Height = 17
        Caption = 'Cargo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object mecargo: TMaskEdit
        Left = 8
        Top = 18
        Width = 84
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlFecha: TPanel
      Left = 412
      Top = 117
      Width = 323
      Height = 61
      Color = 10207162
      Enabled = False
      TabOrder = 10
      object lblFecUlt: TLabel
        Left = 6
        Top = 7
        Width = 145
        Height = 17
        Caption = 'Ultima Fecha Reasignaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblFecAct: TLabel
        Left = 6
        Top = 36
        Width = 150
        Height = 17
        Caption = 'Ultima Fecha Actualizaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dtpFecha: TwwDBDateTimePicker
        Left = 164
        Top = 5
        Width = 153
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 0
      end
      object dtpFecAct: TwwDBDateTimePicker
        Left = 164
        Top = 34
        Width = 153
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
      end
    end
  end
end
