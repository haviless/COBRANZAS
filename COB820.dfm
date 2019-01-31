object FAperturaMEs: TFAperturaMEs
  Left = 183
  Top = 182
  Width = 334
  Height = 91
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbPorTransferencia: TGroupBox
    Left = 0
    Top = 2
    Width = 325
    Height = 60
    Caption = 'Periodo'
    TabOrder = 0
    object Label7: TLabel
      Left = 11
      Top = 21
      Width = 50
      Height = 13
      Caption = 'A'#241'o / Mes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object seAno: TSpinEdit
      Left = 85
      Top = 12
      Width = 55
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 4
      MaxValue = 2030
      MinValue = 2000
      ParentFont = False
      TabOrder = 0
      Value = 2001
    end
    object seMes: TSpinEdit
      Left = 145
      Top = 12
      Width = 39
      Height = 22
      MaxLength = 2
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object BitBtn1: TBitBtn
      Left = 216
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Aperturar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
end
