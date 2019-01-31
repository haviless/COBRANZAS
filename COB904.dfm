object fNPago: TfNPago
  Left = 336
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Nuevo Pago'
  ClientHeight = 406
  ClientWidth = 526
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
  object GrpGrabar: TGroupBox
    Left = 5
    Top = 132
    Width = 516
    Height = 217
    TabOrder = 0
    object Label6: TLabel
      Left = 12
      Top = 12
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object Label7: TLabel
      Left = 341
      Top = 11
      Width = 39
      Height = 13
      Caption = 'Cuentas'
    end
    object Label8: TLabel
      Left = 12
      Top = 57
      Width = 61
      Height = 13
      Caption = 'Documento  '
    end
    object Label9: TLabel
      Left = 11
      Top = 149
      Width = 70
      Height = 13
      Caption = 'Monto Pagado'
    end
    object Label10: TLabel
      Left = 147
      Top = 55
      Width = 60
      Height = 13
      Caption = 'Observaci'#243'n'
    end
    object LblExceso: TLabel
      Left = 10
      Top = 100
      Width = 89
      Height = 13
      Caption = 'Exceso Por Aplicar'
      Enabled = False
    end
    object DBLCBanco: TwwDBLookupCombo
      Left = 10
      Top = 26
      Width = 46
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BANCOID'#9'3'#9'Codigo'#9'F'
        'BANCONOM'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.CdsCBcos
      LookupField = 'BANCOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCBancoChange
    end
    object DBLCuenta: TwwDBLookupCombo
      Left = 341
      Top = 24
      Width = 168
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CCBCOID'#9'20'#9'Cuenta'#9'F')
      LookupTable = DM1.cdsCtasBco
      LookupField = 'CCBCOID'
      Options = [loColLines, loRowLines]
      Color = 12975869
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCuentaChange
      OnExit = DBLCuentaExit
    end
    object EdtDesBan: TEdit
      Left = 57
      Top = 25
      Width = 277
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = 12975869
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnChange = EdtDesBanChange
    end
    object EdtDocPag: TEdit
      Left = 42
      Top = 71
      Width = 85
      Height = 24
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnExit = EdtDocPagExit
      OnKeyPress = EdtDocPagKeyPress
    end
    object EdtMonCob: TEdit
      Left = 10
      Top = 162
      Width = 119
      Height = 28
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = '0.00'
      OnExit = EdtMonCobExit
      OnKeyPress = EdtMonCobKeyPress
    end
    object mObsPag: TMemo
      Left = 147
      Top = 69
      Width = 360
      Height = 68
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnExit = mObsPagExit
    end
    object EdtMonExc: TEdit
      Left = 10
      Top = 113
      Width = 119
      Height = 28
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = 12975869
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = '0.00'
    end
    object EdtPreBco: TEdit
      Left = 8
      Top = 71
      Width = 31
      Height = 24
      CharCase = ecUpperCase
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object pnlVerifica: TPanel
      Left = 148
      Top = 140
      Width = 359
      Height = 71
      Color = clWindow
      TabOrder = 8
      Visible = False
      object Shape2: TShape
        Left = 0
        Top = 1
        Width = 359
        Height = 69
        Brush.Color = 16580558
      end
      object Label4: TLabel
        Left = 7
        Top = 14
        Width = 40
        Height = 13
        Caption = 'Fecha '
        Color = 16580558
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label14: TLabel
        Left = 7
        Top = 27
        Width = 85
        Height = 13
        Caption = 'De Documento'
        Color = 16580558
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label15: TLabel
        Left = 121
        Top = 25
        Width = 73
        Height = 13
        Caption = 'Documento  '
        Color = 16580558
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label16: TLabel
        Left = 258
        Top = 25
        Width = 83
        Height = 13
        Caption = 'Monto Pagado'
        Color = 16580558
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label17: TLabel
        Left = 8
        Top = 3
        Width = 348
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Registro Total De Papeleta De Banco'
        Color = 16580558
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DtpFecPagVer: TwwDBDateTimePicker
        Left = 6
        Top = 41
        Width = 107
        Height = 24
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
        DisplayFormat = 'DD/MM/YYYY'
      end
      object EdtPreBcoVer: TEdit
        Left = 120
        Top = 41
        Width = 31
        Height = 24
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdtDocPagVer: TEdit
        Left = 154
        Top = 41
        Width = 85
        Height = 24
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = EdtDocPagExit
        OnKeyPress = EdtDocPagKeyPress
      end
      object EdtMonCobVer: TEdit
        Left = 256
        Top = 39
        Width = 95
        Height = 28
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = '0.00'
        OnExit = EdtMonCobVerExit
        OnKeyPress = EdtMonCobVerKeyPress
      end
    end
  end
  object GrpFormaPago: TGroupBox
    Left = 5
    Top = -4
    Width = 515
    Height = 140
    TabOrder = 1
    object Shape1: TShape
      Left = 324
      Top = 19
      Width = 183
      Height = 32
      Brush.Color = 16580558
    end
    object Label1: TLabel
      Left = 9
      Top = 10
      Width = 48
      Height = 13
      Caption = 'Cuotas :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 104
      Width = 40
      Height = 13
      Caption = 'Fecha '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 230
      Top = 107
      Width = 118
      Height = 20
      Caption = 'Monto a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 52
      Width = 88
      Height = 13
      Caption = 'Forma De Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 331
      Top = 22
      Width = 36
      Height = 13
      Caption = 'Fecha'
      Color = 16580558
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 9
      Top = 116
      Width = 85
      Height = 13
      Caption = 'De Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 330
      Top = 35
      Width = 68
      Height = 13
      Caption = 'De Registro'
      Color = 16580558
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EdtCuotas: TEdit
      Left = 9
      Top = 24
      Width = 310
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = 12975869
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtMonPag: TEdit
      Left = 355
      Top = 98
      Width = 149
      Height = 37
      Color = 12975869
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = '             0.00'
      OnDblClick = EdtMonPagDblClick
    end
    object EdtForPago: TEdit
      Left = 56
      Top = 67
      Width = 423
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = 12975869
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBLCTipCob: TwwDBLookupCombo
      Left = 9
      Top = 67
      Width = 46
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FORPAGOID'#9'2'#9'Codigo'#9'F'
        'FORPAGODES'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormaPago
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTipCobChange
      OnExit = DBLCTipCobExit
    end
    object DtpFecReg: TDateTimePicker
      Left = 403
      Top = 23
      Width = 101
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.000000000000000000
      Time = 37814.000000000000000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DtpFecPag: TwwDBDateTimePicker
      Left = 106
      Top = 105
      Width = 107
      Height = 24
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 4
      DisplayFormat = 'DD/MM/YYYY'
      OnExit = DtpFecPagExit
      OnKeyPress = DtpFecPagKeyPress
    end
    object BitTel: TButton
      Left = 480
      Top = 67
      Width = 25
      Height = 25
      Hint = 'Inconsistencia De TeleAhorro'
      Caption = '...'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitTelClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 349
    Width = 516
    Height = 50
    BiDiMode = bdLeftToRight
    Ctl3D = True
    ParentBiDiMode = False
    ParentCtl3D = False
    TabOrder = 2
    object BitGrabar: TBitBtn
      Left = 344
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Grabar'
      TabOrder = 0
      OnClick = BitGrabarClick
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
    object BitSalir: TBitBtn
      Left = 428
      Top = 16
      Width = 78
      Height = 25
      Caption = '&Salir'
      TabOrder = 1
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
  end
end
