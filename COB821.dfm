object FGesDom: TFGesDom
  Left = 405
  Top = 366
  BorderStyle = bsDialog
  Caption = 'Tipo de Atenci'#243'n al Asociado'
  ClientHeight = 225
  ClientWidth = 426
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
  object btnGrabar: TBitBtn
    Left = 250
    Top = 183
    Width = 80
    Height = 31
    Caption = 'Grabar'
    TabOrder = 0
    OnClick = btnGrabarClick
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
  object btnSalir: TBitBtn
    Left = 337
    Top = 183
    Width = 80
    Height = 31
    Caption = 'Salir'
    TabOrder = 1
    OnClick = btnSalirClick
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
  object Panel3: TPanel
    Left = 6
    Top = 6
    Width = 411
    Height = 169
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 31
      Height = 13
      Caption = 'Gestor'
    end
    object Label3: TLabel
      Left = 87
      Top = 17
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 75
      Height = 13
      Caption = 'Tipo de Gesti'#243'n'
    end
    object Label4: TLabel
      Left = 87
      Top = 44
      Width = 3
      Height = 13
      Caption = ':'
    end
    object dblcdGesDom: TwwDBLookupComboDlg
      Left = 96
      Top = 13
      Width = 57
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsFRepr
      LookupField = 'IDEGESDOM'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdGesDomExit
    end
    object Panel1: TPanel
      Left = 158
      Top = 13
      Width = 241
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 1
      object medesgesdom: TMaskEdit
        Left = 1
        Top = 1
        Width = 239
        Height = 21
        TabOrder = 0
      end
    end
    object dblcdTipGes: TwwDBLookupComboDlg
      Left = 96
      Top = 40
      Width = 57
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTipCreA
      LookupField = 'IDGTNDET'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdTipGesExit
    end
    object Panel2: TPanel
      Left = 158
      Top = 40
      Width = 241
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 3
      object megesrefseg: TMaskEdit
        Left = 1
        Top = 1
        Width = 239
        Height = 21
        TabOrder = 0
      end
    end
    object meComGes: TMemo
      Left = 12
      Top = 70
      Width = 386
      Height = 82
      MaxLength = 150
      TabOrder = 4
    end
  end
  object btnAntecedentes: TBitBtn
    Left = 141
    Top = 183
    Width = 102
    Height = 31
    Caption = 'Antecedentes'
    TabOrder = 3
    OnClick = btnAntecedentesClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
      000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
      FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
      00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
      00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
      FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
      0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
      05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
      55557F7777777555555500000005555555557777777555555555}
    NumGlyphs = 2
  end
end
