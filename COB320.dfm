object FRegGlobalCob_Anu: TFRegGlobalCob_Anu
  Left = 334
  Top = 258
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Anular detalle de Registro Global'
  ClientHeight = 166
  ClientWidth = 392
  Color = clBtnFace
  Constraints.MaxHeight = 200
  Constraints.MaxWidth = 400
  Constraints.MinHeight = 193
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object mAnula: TMemo
    Left = 8
    Top = 21
    Width = 377
    Height = 102
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 216
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 304
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
