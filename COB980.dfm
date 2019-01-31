object fDetReclamo: TfDetReclamo
  Left = 238
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalle del Reclamo'
  ClientHeight = 348
  ClientWidth = 503
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 4
    Top = -3
    Width = 496
    Height = 142
    Brush.Color = clInfoBk
  end
  object Label5: TLabel
    Left = 11
    Top = 1
    Width = 97
    Height = 13
    Caption = 'Tipo de Reclamo'
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblRot01: TLabel
    Left = 15
    Top = 118
    Width = 42
    Height = 13
    Caption = 'Usuario :'
    Color = clInfoBk
    ParentColor = False
    Visible = False
  end
  object lblUsuReclamo: TLabel
    Left = 77
    Top = 119
    Width = 404
    Height = 13
    AutoSize = False
    Caption = 'lblUsuConcluye'
    Color = clInfoBk
    ParentColor = False
    Visible = False
  end
  object BitSalir: TBitBtn
    Left = 355
    Top = 317
    Width = 123
    Height = 26
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitSalirClick
    Kind = bkClose
  end
  object DBLReclamo: TwwDBLookupCombo
    Left = 10
    Top = 19
    Width = 46
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'ID_RECLAMO'#9'3'#9'Codigo'#9'F'
      'REC_DESC'#9'50'#9'Descripci'#243'n'#9'F')
    LookupTable = DM1.cdsFormaPago
    LookupField = 'ID_RECLAMO'
    Options = [loColLines, loRowLines]
    MaxLength = 3
    ParentFont = False
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnChange = DBLReclamoChange
  end
  object mMenReclamo: TMemo
    Left = 9
    Top = 48
    Width = 486
    Height = 65
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 250
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object BitGrabarReclamo: TBitBtn
    Left = 456
    Top = 18
    Width = 32
    Height = 25
    Hint = 'Grabar Reclamo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitGrabarReclamoClick
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
  object pnlReclamo: TPanel
    Left = 56
    Top = 17
    Width = 395
    Height = 27
    Caption = 'pnlReclamo'
    Enabled = False
    TabOrder = 3
    object EdtDesTip: TEdit
      Left = 3
      Top = 2
      Width = 390
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object grbConclusion: TGroupBox
    Left = 4
    Top = 152
    Width = 497
    Height = 158
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 4
    object Label1: TLabel
      Left = 8
      Top = 15
      Width = 110
      Height = 13
      Caption = 'Tipo de Conclusi'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblUsuConcluye: TLabel
      Left = 77
      Top = 136
      Width = 404
      Height = 13
      AutoSize = False
      Caption = 'lblUsuConcluye'
      Visible = False
    end
    object lblRotulo: TLabel
      Left = 15
      Top = 136
      Width = 42
      Height = 13
      Caption = 'Usuario :'
      Visible = False
    end
    object DBLConclusion: TwwDBLookupCombo
      Left = 8
      Top = 32
      Width = 46
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ID_TIPCON'#9'2'#9'Codigo'#9'F'
        'DES_TIPCON'#9'25'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormPago
      LookupField = 'ID_TIPCON'
      Options = [loColLines, loRowLines]
      Enabled = False
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLConclusionChange
    end
    object Panel1: TPanel
      Left = 54
      Top = 31
      Width = 203
      Height = 28
      Caption = 'pnlReclamo'
      Enabled = False
      TabOrder = 0
      object EdtConRec: TEdit
        Left = 3
        Top = 2
        Width = 198
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object BitGrabaSolucion: TBitBtn
      Left = 262
      Top = 33
      Width = 33
      Height = 25
      Hint = 'Cerrar Reclamo'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitGrabaSolucionClick
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
    object mCierre: TMemo
      Left = 8
      Top = 65
      Width = 486
      Height = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 250
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
end
