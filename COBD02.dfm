object FValidaRefi1: TFValidaRefi1
  Left = 205
  Top = 79
  BorderStyle = bsDialog
  ClientHeight = 545
  ClientWidth = 633
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dbgValida: TwwDBGrid
    Left = 0
    Top = 24
    Width = 633
    Height = 474
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsValidaciones
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object stTitulo: TStaticText
    Left = 0
    Top = 0
    Width = 633
    Height = 24
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Titulo'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 498
    Width = 633
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 472
      Top = 12
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 551
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object cdsValidaciones: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 144
    Top = 368
  end
  object dsValidaciones: TwwDataSource
    DataSet = cdsValidaciones
    Left = 160
    Top = 392
  end
end
