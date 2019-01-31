object fSelDesPorc: TfSelDesPorc
  Left = 212
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cuotas Seleccionadas Para Descuento Porcentual'
  ClientHeight = 347
  ClientWidth = 564
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 119
    Top = 16
    Width = 326
    Height = 24
  end
  object Shape1: TShape
    Left = 5
    Top = 16
    Width = 111
    Height = 24
  end
  object lblNumCre: TLabel
    Left = 6
    Top = 19
    Width = 108
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = '24-00488-2003'
    Color = clWindow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblTipCre: TLabel
    Left = 121
    Top = 18
    Width = 320
    Height = 20
    AutoSize = False
    Caption = 'lblNumCre'
    Color = clWindow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 1
    Width = 89
    Height = 14
    AutoSize = False
    Caption = 'CREDITO '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object dtgEnvPor: TwwDBGrid
    Left = 4
    Top = 43
    Width = 555
    Height = 202
    DisableThemesInTitle = False
    Selected.Strings = (
      'CRECUOTA'#9'6'#9'N'#176' Cuota'#9#9
      'CREFVEN'#9'10'#9'Fec.Vencimto'#9#9
      'CRESALDO'#9'12'#9'Saldo a Pagar'#9#9
      'PORENVIO'#9'8'#9'(%) Envio'#9#9
      'CREMONENV'#9'12'#9'Nuevo Saldo'#9#9
      'CREESTADO'#9'22'#9'Estado'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsDcuotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
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
    OnDrawDataCell = dtgEnvPorDrawDataCell
    OnDblClick = dtgEnvPorDblClick
  end
  object BitSalir: TBitBtn
    Left = 460
    Top = 312
    Width = 95
    Height = 25
    Caption = '&Salir'
    TabOrder = 4
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
  object pnlPorc: TPanel
    Left = 49
    Top = 308
    Width = 297
    Height = 32
    Color = clWindow
    TabOrder = 2
    object Label1: TLabel
      Left = 4
      Top = 9
      Width = 83
      Height = 15
      Caption = 'Descontar  El :  '
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 168
      Top = 5
      Width = 18
      Height = 22
      Caption = '%'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbsPorc: TwwDBSpinEdit
      Left = 112
      Top = 3
      Width = 49
      Height = 26
      Cursor = crHandPoint
      Increment = 5.000000000000000000
      MaxValue = 200.000000000000000000
      MinValue = 5.000000000000000000
      Value = 100.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      UsePictureMask = False
      OnKeyPress = dbsPorcKeyPress
    end
    object BitGrabar: TBitBtn
      Left = 195
      Top = 3
      Width = 95
      Height = 25
      Caption = '&Grabar'
      TabOrder = 1
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
  end
  object mObsEnv: TMemo
    Left = 6
    Top = 249
    Width = 553
    Height = 51
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 150
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object BitAnular: TBitBtn
    Left = 357
    Top = 311
    Width = 95
    Height = 27
    Cursor = crHandPoint
    Caption = 'Anular'
    Enabled = False
    TabOrder = 3
    OnClick = BitAnularClick
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888800008888888888888888889800008898888888888888898800008899
      88777777777798880000889990000000000998880000888990BFFFBFFF998888
      0000888899FCCCCCCF97888800008888999FBFFFB9978888000088888999CCC9
      990788880000888880999FB99F0788880000888880FC9999CF07888800008888
      80FF9999BF0788880000888880FC9999000788880000888880B99F099F078888
      0000888880999F099998888800008888999FBF0F089988880000889999000000
      8889988800008899988888888888898800008888888888888888889800008888
      88888888888888880000}
  end
end
