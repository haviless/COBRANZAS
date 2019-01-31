object fReclaAso: TfReclaAso
  Left = 187
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reclamos'
  ClientHeight = 337
  ClientWidth = 719
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
  object Shape2: TShape
    Left = 18
    Top = 298
    Width = 106
    Height = 27
  end
  object Shape1: TShape
    Left = 24
    Top = 304
    Width = 33
    Height = 17
    Brush.Color = clGreen
  end
  object Label1: TLabel
    Left = 64
    Top = 306
    Width = 56
    Height = 13
    Caption = 'Cocluidas'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object dtgReclaAso: TwwDBGrid
    Left = 4
    Top = 2
    Width = 711
    Height = 287
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'RECIDE'#9'8'#9'N'#250'mero'
      'REC_DESC'#9'55'#9'Tipo de Reclamo'
      'RECRECUSU'#9'20'#9'Ingresado~Por'
      'FREGREC'#9'20'#9'Fecha y Horas~de Registro'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dssitreclamo
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    OnDrawDataCell = dtgReclaAsoDrawDataCell
    OnDblClick = dtgReclaAsoDblClick
    PaintOptions.ActiveRecordColor = 13165023
    object dtgReclaAsoIButton: TwwIButton
      Left = 0
      Top = 0
      Width = 26
      Height = 29
      AllowAllUp = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      OnClick = dtgReclaAsoIButtonClick
    end
  end
  object BitSalir: TBitBtn
    Left = 600
    Top = 302
    Width = 93
    Height = 27
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitSalirClick
    Kind = bkClose
  end
end
