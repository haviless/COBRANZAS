object fAmplIndividual: TfAmplIndividual
  Left = 282
  Top = 282
  BorderStyle = bsDialog
  Caption = 'Ampliaci'#243'n Individual'
  ClientHeight = 301
  ClientWidth = 710
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblFecOpe: TLabel
    Left = 603
    Top = 8
    Width = 90
    Height = 14
    AutoSize = False
    Caption = 'XX/XX/XXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label23: TLabel
    Left = 461
    Top = 7
    Width = 136
    Height = 16
    AutoSize = False
    Caption = 'Fecha de Operaci'#243'n : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object grbDeudor: TGroupBox
    Left = 4
    Top = 25
    Width = 700
    Height = 70
    Caption = 'Datos del Deudor '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 118
      Height = 16
      AutoSize = False
      Caption = 'C'#243'digo Modular : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 305
      Top = 21
      Width = 37
      Height = 13
      AutoSize = False
      Caption = 'DNI : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 45
      Width = 141
      Height = 17
      AutoSize = False
      Caption = 'Apellidos y Nombres : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCodMod: TLabel
      Left = 125
      Top = 21
      Width = 97
      Height = 13
      AutoSize = False
      Caption = 'XXXXXXXXXX '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDNI: TLabel
      Left = 351
      Top = 21
      Width = 97
      Height = 13
      AutoSize = False
      Caption = 'XXXXXXXXXX '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblApeNom: TLabel
      Left = 157
      Top = 46
      Width = 303
      Height = 13
      AutoSize = False
      Caption = 'XXXXXXXXXX '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object grpAmpliar: TGroupBox
    Left = 4
    Top = 100
    Width = 700
    Height = 60
    Caption = 'Datos del Cr'#233'dito Original'
    TabOrder = 1
    object Label4: TLabel
      Left = 30
      Top = 16
      Width = 46
      Height = 13
      AutoSize = False
      Caption = 'Fecha  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 342
      Top = 16
      Width = 62
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Monto  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 443
      Top = 16
      Width = 117
      Height = 13
      AutoSize = False
      Caption = 'N'#250'mero de Cuotas '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 587
      Top = 16
      Width = 87
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor Cuota  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 163
      Top = 16
      Width = 120
      Height = 13
      AutoSize = False
      Caption = 'N'#250'mero de Cr'#233'dito '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblFecPre: TLabel
      Left = 12
      Top = 35
      Width = 92
      Height = 13
      AutoSize = False
      Caption = 'XX/XX/XXXX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCredito: TLabel
      Left = 157
      Top = 35
      Width = 146
      Height = 13
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMonto: TLabel
      Left = 337
      Top = 35
      Width = 75
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '99,999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNumCuo: TLabel
      Left = 485
      Top = 35
      Width = 22
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValor: TLabel
      Left = 588
      Top = 35
      Width = 86
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '9,999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 164
    Width = 700
    Height = 132
    Caption = 'C'#225'lculo para la Ampliaci'#243'n'
    Color = 10207162
    ParentColor = False
    TabOrder = 4
    object Label9: TLabel
      Left = 30
      Top = 17
      Width = 46
      Height = 14
      AutoSize = False
      Caption = 'Fecha  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblFecAmp: TLabel
      Left = 12
      Top = 35
      Width = 92
      Height = 13
      AutoSize = False
      Caption = 'XX/XX/XXXX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 161
      Top = 17
      Width = 120
      Height = 14
      AutoSize = False
      Caption = 'N'#250'mero de Cr'#233'dito '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCreAmp: TLabel
      Left = 131
      Top = 35
      Width = 190
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSalCap: TLabel
      Left = 343
      Top = 35
      Width = 101
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = '99,999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 343
      Top = 17
      Width = 98
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo Capital'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 455
      Top = 17
      Width = 103
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo Gas./Flat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 571
      Top = 17
      Width = 115
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo Fon. Desg.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 163
      Top = 67
      Width = 117
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cuotas por Ampliar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSalGas: TLabel
      Left = 458
      Top = 35
      Width = 101
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = '99,999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSalDes: TLabel
      Left = 577
      Top = 35
      Width = 101
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = '99,999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 11
      Top = 68
      Width = 117
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cuotas por Cobrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCuoPen: TLabel
      Left = 45
      Top = 91
      Width = 25
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 327
      Top = 70
      Width = 89
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor Cuota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCuoAmp: TLabel
      Left = 327
      Top = 91
      Width = 92
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = '9,999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object speNumCuo: TSpinEdit
      Left = 192
      Top = 88
      Width = 47
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 2
      MaxValue = 72
      MinValue = 1
      ParentFont = False
      TabOrder = 0
      Value = 72
      OnChange = speNumCuoChange
    end
  end
  object btnGrabar: TBitBtn
    Left = 492
    Top = 260
    Width = 92
    Height = 26
    Caption = 'Grabar'
    TabOrder = 2
    OnClick = btnGrabarClick
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
  object btnSalir: TBitBtn
    Left = 599
    Top = 261
    Width = 92
    Height = 26
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 3
    OnClick = btnSalirClick
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
