object fRepRefDep: TfRepRefDep
  Left = 204
  Top = 205
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Listado De Refinanciaci'#243'n Por Departamentos'
  ClientHeight = 250
  ClientWidth = 621
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 609
    Height = 241
    TabOrder = 0
    object Label8: TLabel
      Left = 17
      Top = 15
      Width = 87
      Height = 16
      Caption = 'Departamento '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 309
      Top = 16
      Width = 108
      Height = 16
      Caption = 'Tipo De Descuento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 71
      Width = 73
      Height = 16
      Caption = 'Vencidos A :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitSalir: TBitBtn
      Left = 493
      Top = 206
      Width = 78
      Height = 25
      Caption = '&Salir'
      TabOrder = 0
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
    object BitImprimir: TBitBtn
      Left = 389
      Top = 206
      Width = 78
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
      OnClick = BitImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object lkcDpto: TwwDBLookupCombo
      Left = 16
      Top = 33
      Width = 41
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DPTOID'#9'3'#9'DPTOID'#9'F'
        'DPTODES'#9'30'#9'DPTODES'#9'F')
      LookupTable = DM1.cdsPadre
      LookupField = 'DPTOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcDptoChange
    end
    object Panel1: TPanel
      Left = 56
      Top = 31
      Width = 233
      Height = 29
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 3
      object edtDpto: TEdit
        Left = 0
        Top = 3
        Width = 230
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object DBLCTipC: TwwDBLookupCombo
      Left = 309
      Top = 34
      Width = 42
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FORPAGOID'#9'3'#9'Codigo'#9'F'
        'FORPAGODES'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTtransaccion
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTipCChange
    end
    object Panel3: TPanel
      Left = 349
      Top = 31
      Width = 228
      Height = 28
      Enabled = False
      TabOrder = 5
      object EdtTipCob: TEdit
        Left = 2
        Top = 2
        Width = 225
        Height = 25
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dbseAno: TwwDBSpinEdit
      Left = 17
      Top = 89
      Width = 55
      Height = 26
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 2003.000000000000000000
      Value = 2003.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
    end
    object dbseMes: TwwDBSpinEdit
      Left = 73
      Top = 89
      Width = 35
      Height = 26
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      UsePictureMask = False
    end
  end
end
