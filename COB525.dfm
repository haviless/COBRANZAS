object FCandidatosFSCDet: TFCandidatosFSCDet
  Left = 254
  Top = 253
  BorderStyle = bsDialog
  Caption = 'Candidatos al Fondo Solidario de Contingencia'
  ClientHeight = 412
  ClientWidth = 992
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 86
    Height = 13
    Caption = 'Tipo de Asociado:'
  end
  object lblTipoAsociado: TLabel
    Left = 104
    Top = 24
    Width = 75
    Height = 13
    Caption = 'lblTipoAsociado'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 39
    Height = 13
    Caption = 'Periodo:'
  end
  object lblPeriodo: TLabel
    Left = 104
    Top = 8
    Width = 46
    Height = 13
    Caption = 'lblPeriodo'
  end
  object Label3: TLabel
    Left = 8
    Top = 40
    Width = 82
    Height = 13
    Caption = 'Meses de Atraso:'
  end
  object lblMesesAtraso: TLabel
    Left = 104
    Top = 40
    Width = 71
    Height = 13
    Caption = 'lblMesesAtraso'
  end
  object dbgCandidatos: TwwDBGrid
    Left = 8
    Top = 64
    Width = 977
    Height = 305
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    ExportOptions.ExportType = wwgetSYLK
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsqry5
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    OnTitleButtonClick = dbgCandidatosTitleButtonClick
  end
  object btnAExcel: TBitBtn
    Left = 800
    Top = 377
    Width = 89
    Height = 28
    Caption = 'A &Excel'
    TabOrder = 1
    OnClick = btnAExcelClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
      000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
      0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
      080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
  end
  object btnCerrar: TBitBtn
    Left = 895
    Top = 377
    Width = 90
    Height = 28
    Caption = '&Cerrar'
    TabOrder = 2
    OnClick = btnCerrarClick
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
