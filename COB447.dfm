object fmancon: Tfmancon
  Left = 467
  Top = 345
  BorderStyle = bsDialog
  Caption = 'xxx'
  ClientHeight = 299
  ClientWidth = 440
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbinnuecon: TGroupBox
    Left = 0
    Top = -1
    Width = 433
    Height = 260
    Caption = 'xxx'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 69
      Height = 13
      Caption = 'Identificaci'#243'n :'
    end
    object Label2: TLabel
      Left = 8
      Top = 47
      Width = 62
      Height = 13
      Caption = 'Descripci'#243'n :'
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 142
      Height = 13
      Caption = 'Fecha de inicio del convenio :'
    end
    object Label4: TLabel
      Left = 8
      Top = 95
      Width = 125
      Height = 13
      Caption = 'Fecha Final del convenio :'
    end
    object Panel1: TPanel
      Left = 81
      Top = 17
      Width = 92
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 0
      object edtidecon: TMaskEdit
        Left = 1
        Top = 1
        Width = 90
        Height = 21
        Color = 14417919
        TabOrder = 0
      end
    end
    object medescon: TMaskEdit
      Left = 81
      Top = 43
      Width = 338
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 45
      TabOrder = 1
    end
    object dbdtpinicio: TwwDBDateTimePicker
      Left = 156
      Top = 68
      Width = 89
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object dbdfinal: TwwDBDateTimePicker
      Left = 156
      Top = 92
      Width = 89
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
    end
    object gbtipaso: TGroupBox
      Left = 8
      Top = 118
      Width = 115
      Height = 64
      Caption = ' Tipo de asociados '
      TabOrder = 4
      object chkaplices: TCheckBox
        Left = 6
        Top = 38
        Width = 97
        Height = 17
        Caption = 'Aplica cesantes'
        TabOrder = 0
      end
      object chkaplidoc: TCheckBox
        Left = 6
        Top = 17
        Width = 97
        Height = 17
        Caption = 'Aplica docentes'
        TabOrder = 1
      end
    end
    object gbtipdes: TGroupBox
      Left = 129
      Top = 118
      Width = 141
      Height = 64
      Caption = ' Aplicaci'#243'n de descuento '
      TabOrder = 5
      object chkapliapo: TCheckBox
        Left = 6
        Top = 38
        Width = 97
        Height = 17
        Caption = 'Aplica aportes'
        TabOrder = 0
        OnClick = chkapliapoClick
      end
      object chkaplicuo: TCheckBox
        Left = 6
        Top = 17
        Width = 97
        Height = 17
        Caption = 'Aplica cuotas'
        TabOrder = 1
      end
    end
    object rgtipdesapo: TRadioGroup
      Left = 8
      Top = 187
      Width = 179
      Height = 64
      Caption = ' Tipo de descuento de aporte '
      ItemIndex = 1
      Items.Strings = (
        'Con autorizaci'#243'n de descuento'
        'Todos los aportes')
      TabOrder = 6
    end
    object rgtipdescuo: TRadioGroup
      Left = 192
      Top = 187
      Width = 179
      Height = 64
      Caption = ' Tipo de descuento de cr'#233'dito'
      ItemIndex = 1
      Items.Strings = (
        'Con autorizaci'#243'n de descuento'
        'Todos los creditos')
      TabOrder = 7
    end
  end
  object btnmodifica: TBitBtn
    Left = 181
    Top = 266
    Width = 80
    Height = 28
    Caption = 'Modifica'
    TabOrder = 1
    OnClick = btnmodificaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object btnguarda: TBitBtn
    Left = 267
    Top = 266
    Width = 80
    Height = 28
    Caption = 'Guardar'
    TabOrder = 2
    OnClick = btnguardaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
      7700333333337777777733333333008088003333333377F73377333333330088
      88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
      000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
      FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
      99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object btncerrar: TBitBtn
    Left = 354
    Top = 266
    Width = 80
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = btncerrarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
end
