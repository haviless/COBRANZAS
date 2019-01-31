object fCtasAhorro: TfCtasAhorro
  Left = 220
  Top = 257
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cuentas De Ahorros'
  ClientHeight = 219
  ClientWidth = 619
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpDatos: TGroupBox
    Left = 3
    Top = -3
    Width = 614
    Height = 172
    TabOrder = 0
    object dtgCuentas: TwwDBGrid
      Left = 5
      Top = 10
      Width = 605
      Height = 155
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASONCTA'#9'12'#9'Cuenta~De Ahorros'#9#9
        'SITCTADES'#9'20'#9'Situaci'#243'n'#9'F'#9
        'BANCONOM'#9'25'#9'Banco'#9#9
        'USUARIO'#9'12'#9'Actualizado~Por'#9#9
        'HREG'#9'22'#9'Fecha/Hora'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsGradoA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
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
    end
  end
  object grpResoluciones: TGroupBox
    Left = 3
    Top = 169
    Width = 611
    Height = 45
    TabOrder = 1
    object BitSalir: TBitBtn
      Left = 475
      Top = 13
      Width = 105
      Height = 26
      Caption = '&Salir'
      TabOrder = 0
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
