object fCtrolDesCaj: TfCtrolDesCaj
  Left = 117
  Top = 162
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Control de Desembolso (Cajas a Nivel Nacional)'
  ClientHeight = 404
  ClientWidth = 810
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
  object lblCajaDev: TLabel
    Left = 344
    Top = 71
    Width = 337
    Height = 21
    AutoSize = False
    Caption = 'lblCajaDev'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object dbgMovCajaCab: TwwDBGrid
    Left = 10
    Top = 67
    Width = 327
    Height = 286
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'OFDESNOM'#9'17'#9'Caja'#9#9
      'CANTIDAD'#9'10'#9'N'#176'~de Devoluciones'#9#9
      'IMPORTE'#9'12'#9'Importe'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dbgMovCajaCabRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsHijo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgMovCajaCabDblClick
  end
  object dbgMovCajaDet: TwwDBGrid
    Left = 341
    Top = 96
    Width = 466
    Height = 257
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'ASODNI'#9'8'#9'D.N.I.'#9#9
      'ASOAPENOM'#9'42'#9'Asociado'#9#9
      'ASONUMDEV'#9'8'#9'N'#176'~Documento'#9#9
      'MONTOSOL'#9'10'#9'Monto~Por Devolver'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsPadre
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object Panel1: TPanel
    Left = 14
    Top = 9
    Width = 251
    Height = 48
    TabOrder = 2
    object Label2: TLabel
      Left = 13
      Top = 2
      Width = 104
      Height = 13
      Caption = 'Fecha De Devoluci'#243'n'
    end
    object DtpFecIni: TDateTimePicker
      Left = 12
      Top = 17
      Width = 110
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BitMostar: TBitBtn
      Left = 138
      Top = 15
      Width = 89
      Height = 25
      Caption = 'Mostar'
      TabOrder = 1
      OnClick = BitMostarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
        C43337777777777777F33444881B188444333777F3737337773333308881FF70
        33333337F3373337F3333330888BF770333333373F33F337333333330881F703
        3333333373F73F7333333333308B703333333333373F77333333333333080333
        3333333333777FF333333333301F103333333333377777FF3333333301B1F103
        333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
        333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
        C43337777777777777F334444444444444333777777777777733}
      NumGlyphs = 2
    end
  end
  object BitSalir: TBitBtn
    Left = 698
    Top = 367
    Width = 78
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
end
