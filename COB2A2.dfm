object FDFirmaHuella: TFDFirmaHuella
  Left = 265
  Top = 371
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Firma y Huella'
  ClientHeight = 279
  ClientWidth = 647
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Image3: TImage
    Left = 48
    Top = 42
    Width = 241
    Height = 217
    Center = True
    Stretch = True
  end
  object lbCodigo: TfcLabel
    Left = 12
    Top = 8
    Width = 109
    Height = 19
    Caption = 'Código Modular :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object lbTitulo: TfcLabel
    Left = 256
    Top = 8
    Width = 68
    Height = 19
    Caption = 'Asociado :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object Panel12: TPanel
    Left = 316
    Top = 40
    Width = 136
    Height = 129
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'Huella Digital'
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel13: TPanel
    Left = 316
    Top = 177
    Width = 305
    Height = 84
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'Firma'
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
