object fAsigForPag: TfAsigForPag
  Left = 217
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Asignaci'#243'n de Formas de Pago A Usuarios'
  ClientHeight = 463
  ClientWidth = 351
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 14
    Top = 277
    Width = 233
    Height = 23
  end
  object Label1: TLabel
    Left = 16
    Top = 9
    Width = 113
    Height = 17
    Caption = 'Grupo Cobranzas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 95
    Top = 246
    Width = 40
    Height = 18
    AutoSize = False
    Caption = 'Buscar : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object lblUsuarios: TLabel
    Left = 16
    Top = 280
    Width = 112
    Height = 17
    Caption = 'Usuario Cobranzas'
    Color = clWindow
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object dtgUserCob: TwwDBGrid
    Left = 15
    Top = 28
    Width = 322
    Height = 204
    DisableThemesInTitle = False
    Selected.Strings = (
      'USERNOM'#9'40'#9'Usuarios'#9'F'#9
      'NIVEL'#9'5'#9'Nivel'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dtgUserCobRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsCambios
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitAgregar: TBitBtn
    Left = 16
    Top = 427
    Width = 145
    Height = 27
    Hint = 'Pagar Desde'
    Caption = 'Agregar Forma de Pago'
    TabOrder = 1
    OnClick = BitAgregarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
      0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
      00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
      00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
      F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
      F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
      FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
      0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
      00337777FFFF77FF7733EEEE0000000003337777777777777333}
    NumGlyphs = 2
  end
  object dtgFrmPagUsu: TwwDBGrid
    Left = 14
    Top = 301
    Width = 326
    Height = 116
    DisableThemesInTitle = False
    Selected.Strings = (
      'FORPAGOID'#9'6'#9'C'#243'digo'#9'F'#9
      'FORPAGODES'#9'40'#9'Descripci'#243'n'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsCtaCtes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitSalir: TBitBtn
    Left = 258
    Top = 428
    Width = 82
    Height = 26
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
  object BitQuitar: TBitBtn
    Left = 169
    Top = 428
    Width = 82
    Height = 26
    Caption = '&Quitar'
    TabOrder = 4
    OnClick = BitQuitarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object EdtBuscar: TEdit
    Left = 146
    Top = 242
    Width = 178
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnChange = EdtBuscarChange
    OnKeyPress = EdtBuscarKeyPress
  end
end
