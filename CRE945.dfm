object fEncuesta: TfEncuesta
  Left = 209
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Encuesta'
  ClientHeight = 342
  ClientWidth = 581
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
  object GroupBox1: TGroupBox
    Left = 3
    Top = 0
    Width = 574
    Height = 339
    Color = 10207162
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 9
      Width = 357
      Height = 21
      AutoSize = False
      Caption = #191'PORQUE MEDIO SE ENTERO DE SU MOROSIDAD?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 102
      Width = 317
      Height = 21
      AutoSize = False
      Caption = #191'CUAL ES LA JUSTIFICACION DEL DEUDOR?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 202
      Width = 245
      Height = 21
      AutoSize = False
      Caption = #191'CUAL ES LA SOLUCION ARRIBADA?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lbl01: TLabel
      Left = 17
      Top = 57
      Width = 304
      Height = 13
      AutoSize = False
      Caption = 'OTROS(ESPECIFICAR)'
    end
    object lbl02: TLabel
      Left = 17
      Top = 155
      Width = 304
      Height = 13
      AutoSize = False
      Caption = 'OTROS(ESPECIFICAR)'
    end
    object lbl03: TLabel
      Left = 17
      Top = 252
      Width = 304
      Height = 13
      AutoSize = False
      Caption = 'OTROS(ESPECIFICAR)'
    end
    object BitGrabar: TBitBtn
      Left = 387
      Top = 304
      Width = 78
      Height = 27
      Cursor = crHandPoint
      Hint = 'Grabar'
      Caption = '&Grabar'
      TabOrder = 9
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
    object BitSalir: TBitBtn
      Left = 476
      Top = 304
      Width = 77
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 10
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
    object dblTipMet: TwwDBLookupCombo
      Left = 15
      Top = 28
      Width = 44
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ID'#9'2'#9'Codigo'#9'F'#9
        'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTMoneda
      LookupField = 'ID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblTipMetChange
    end
    object Panel1: TPanel
      Left = 60
      Top = 26
      Width = 289
      Height = 28
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 1
      object EdtDesMet: TEdit
        Left = 2
        Top = 2
        Width = 284
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dblTipJus: TwwDBLookupCombo
      Left = 16
      Top = 121
      Width = 44
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ID'#9'2'#9'Codigo'#9'F'#9
        'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTPension
      LookupField = 'ID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblTipJusChange
    end
    object Panel2: TPanel
      Left = 63
      Top = 117
      Width = 286
      Height = 28
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 4
      object EdtDesJus: TEdit
        Left = 2
        Top = 2
        Width = 281
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dblTipSol: TwwDBLookupCombo
      Left = 16
      Top = 222
      Width = 44
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ID'#9'2'#9'Codigo'#9'F'#9
        'DESCRIPCION'#9'60'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTransacciones
      LookupField = 'ID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblTipSolChange
    end
    object Panel3: TPanel
      Left = 61
      Top = 219
      Width = 500
      Height = 28
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 7
      object EdtDesSol: TEdit
        Left = 2
        Top = 2
        Width = 495
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Edt02: TEdit
      Left = 17
      Top = 170
      Width = 393
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 40
      ParentFont = False
      TabOrder = 5
      OnExit = Edt02Exit
    end
    object Edt01: TEdit
      Left = 16
      Top = 72
      Width = 393
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 40
      ParentFont = False
      TabOrder = 2
      OnExit = Edt01Exit
    end
    object Edt03: TEdit
      Left = 17
      Top = 267
      Width = 393
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 40
      ParentFont = False
      TabOrder = 8
      OnExit = Edt03Exit
    end
  end
end
