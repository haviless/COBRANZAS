object FVPrevia: TFVPrevia
  Left = 157
  Top = 134
  Width = 798
  Height = 525
  BorderIcons = []
  Caption = 'Vista Previa '
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object lblTotReg: TLabel
    Left = 8
    Top = 456
    Width = 151
    Height = 23
    Caption = 'Total de Registros:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgPrevio: TwwDBGrid
    Left = 6
    Top = 9
    Width = 778
    Height = 432
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = 15792632
    DataSource = DM1.ds1
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    OnTitleButtonClick = dbgPrevioTitleButtonClick
  end
  object BitBtn1: TBitBtn
    Left = 673
    Top = 461
    Width = 75
    Height = 25
    Caption = '&Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object pnlDBF: TPanel
    Left = 368
    Top = 451
    Width = 265
    Height = 39
    Color = 10207162
    TabOrder = 2
    Visible = False
    object lblCampo: TLabel
      Left = 14
      Top = 14
      Width = 33
      Height = 15
      Caption = 'Campo'
    end
    object BitBtn2: TBitBtn
      Left = 92
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Mayor a'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object dbeImp: TwwDBEdit
      Left = 180
      Top = 9
      Width = 67
      Height = 23
      Picture.PictureMask = '#[#][#].[#][#]'
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
end
