object fmandetcon: Tfmandetcon
  Left = 188
  Top = 195
  BorderStyle = bsDialog
  Caption = 'Actualizando Unidad de Gesti'#243'n'
  ClientHeight = 113
  ClientWidth = 486
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 96
    Height = 13
    Caption = 'Unidad de proceso :'
  end
  object Label2: TLabel
    Left = 5
    Top = 35
    Width = 82
    Height = 13
    Caption = 'Unidad de pago :'
  end
  object Label3: TLabel
    Left = 5
    Top = 61
    Width = 92
    Height = 13
    Caption = 'Unidad de gesti'#243'n :'
  end
  object dblcunipro: TwwDBLookupComboDlg
    Left = 105
    Top = 4
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsUPro
    LookupField = 'UPROID'
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcuniproChange
  end
  object dblcunipag: TwwDBLookupComboDlg
    Left = 105
    Top = 31
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsUPago
    LookupField = 'UPAGOID'
    Enabled = False
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcunipagChange
  end
  object dblcduniges: TwwDBLookupComboDlg
    Left = 105
    Top = 57
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsUSES
    LookupField = 'USEID'
    Enabled = False
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcdunigesChange
  end
  object Panel1: TPanel
    Left = 160
    Top = 4
    Width = 321
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 3
    object medesunipro: TMaskEdit
      Left = 1
      Top = 1
      Width = 319
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 160
    Top = 29
    Width = 321
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 4
    object medesunipag: TMaskEdit
      Left = 1
      Top = 1
      Width = 319
      Height = 21
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 160
    Top = 55
    Width = 321
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 5
    object medesuniges: TMaskEdit
      Left = 1
      Top = 1
      Width = 319
      Height = 21
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 317
    Top = 81
    Width = 80
    Height = 28
    Caption = 'Modificar'
    TabOrder = 6
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 234
    Top = 81
    Width = 80
    Height = 28
    Caption = 'Grabar'
    TabOrder = 7
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
      7700333333337777777733333333008088003333333377F73377333333330088
      88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
      000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
      FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
      99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 400
    Top = 81
    Width = 80
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 8
    OnClick = BitBtn3Click
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
