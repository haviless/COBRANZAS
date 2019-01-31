object FToolSaldoxCliente: TFToolSaldoxCliente
  Left = 211
  Top = 306
  Width = 711
  Height = 79
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlToolSaldoxCliente: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 52
    Align = alClient
    Color = 13165023
    TabOrder = 0
    object Label1: TLabel
      Left = 336
      Top = 8
      Width = 101
      Height = 13
      Caption = 'Nombre del Asociado'
    end
    object isAsoApeNom: TwwIncrementalSearch
      Left = 336
      Top = 25
      Width = 289
      Height = 21
      TabOrder = 0
    end
  end
end
