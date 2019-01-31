object fTipAtencion: TfTipAtencion
  Left = 388
  Top = 249
  Cursor = crHandPoint
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Tipo de Atenci'#243'n al Asociado'
  ClientHeight = 420
  ClientWidth = 307
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 5
    Top = 19
    Width = 109
    Height = 15
    AutoSize = False
    Caption = 'Tipos de Atenci'#243'n'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object dblGestionDet: TwwDBLookupCombo
    Left = 4
    Top = 39
    Width = 46
    Height = 21
    Cursor = crHandPoint
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'IDGTNDET'#9'4'#9'Codigo'#9'F'
      'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9'F')
    LookupTable = DM1.cdsTipCreA
    LookupField = 'IDGTNDET'
    Options = [loColLines, loRowLines]
    MaxLength = 3
    ParentFont = False
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnChange = dblGestionDetChange
  end
  object Panel2: TPanel
    Left = 54
    Top = 38
    Width = 249
    Height = 23
    Caption = 'Panel1'
    Color = 13165023
    Enabled = False
    TabOrder = 1
    object EdtDesGntDet: TEdit
      Left = 2
      Top = 0
      Width = 245
      Height = 22
      Cursor = crHandPoint
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object mDetObs: TMemo
    Left = 4
    Top = 67
    Width = 297
    Height = 102
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 250
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object BitSalir: TBitBtn
    Left = 205
    Top = 392
    Width = 92
    Height = 26
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 3
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
  object BitGrabar: TBitBtn
    Left = 109
    Top = 392
    Width = 88
    Height = 25
    Cursor = crHandPoint
    Caption = 'Grabar'
    TabOrder = 4
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
  object BitAteAnt: TBitBtn
    Left = 215
    Top = 8
    Width = 88
    Height = 25
    Cursor = crHandPoint
    Caption = 'Anteriores'
    TabOrder = 5
    OnClick = BitAteAntClick
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      777770000000777777770000000000000000777777770FFFFFFF000000007777
      77770F88888F00000000777777770F8FFF8F00000000777777770F88888F0000
      0000744444440FFFFFFF00000000748888880F88777F00000000747777770FFF
      F00000000000747007000F88707070000000747777770FFFF007700000007470
      0700000000777000000074777777777747777000000074444444444447777000
      000074F44F44F44F477770000000744444444444477770000000777777777777
      777770000000}
  end
  object pnl1: TPanel
    Left = 5
    Top = 173
    Width = 297
    Height = 113
    TabOrder = 6
    Visible = False
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 64
      Height = 13
      Caption = 'Tel'#233'fono Fijo '
    end
    object Label2: TLabel
      Left = 162
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Celular  '
    end
    object Label3: TLabel
      Left = 4
      Top = 32
      Width = 51
      Height = 13
      Caption = 'Direcci'#243'n  '
    end
    object Label4: TLabel
      Left = 4
      Top = 80
      Width = 34
      Height = 13
      Caption = 'Correo '
    end
    object edtTelefono: TEdit
      Left = 71
      Top = 3
      Width = 85
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtTelefonoKeyPress
    end
    object edtCelular: TEdit
      Left = 199
      Top = 3
      Width = 92
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edtCelularKeyPress
    end
    object edtCorreo: TEdit
      Left = 71
      Top = 80
      Width = 215
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = edtCorreoExit
    end
    object mDireccion: TMemo
      Left = 70
      Top = 28
      Width = 222
      Height = 47
      Cursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 250
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
  object pnl2: TPanel
    Left = 6
    Top = 288
    Width = 297
    Height = 49
    TabOrder = 7
    Visible = False
    object Label5: TLabel
      Left = 4
      Top = 3
      Width = 79
      Height = 13
      Caption = 'Motivo de atraso'
    end
    object dblMotivoAtraso: TwwDBLookupCombo
      Left = 4
      Top = 19
      Width = 46
      Height = 21
      Cursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CODMOT'#9'4'#9'Codigo'#9'F'
        'DESMOT'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsQryMotAtraso
      LookupField = 'CODMOT'
      Options = [loColLines, loRowLines]
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblMotivoAtrasoChange
    end
    object edtMotivoAtraso: TEdit
      Left = 55
      Top = 18
      Width = 236
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnl3: TPanel
    Left = 6
    Top = 340
    Width = 297
    Height = 49
    TabOrder = 8
    Visible = False
    object Label6: TLabel
      Left = 5
      Top = 8
      Width = 77
      Height = 13
      Caption = 'Importe pactado'
    end
    object Label7: TLabel
      Left = 5
      Top = 31
      Width = 72
      Height = 13
      Caption = 'Fecha pactada'
    end
    object edtMontoPactado: TEdit
      Left = 87
      Top = 3
      Width = 88
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtMontoPactadoKeyPress
    end
    object dtpFechaPactada: TDateTimePicker
      Left = 87
      Top = 25
      Width = 90
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 0.561222696756885900
      Time = 0.561222696756885900
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
end
