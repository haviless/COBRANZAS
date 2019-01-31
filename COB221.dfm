object FSepArc: TFSepArc
  Left = 228
  Top = 284
  BorderStyle = bsDialog
  Caption = 'Proceso de separaci'#243'n de informaci'#243'n'
  ClientHeight = 371
  ClientWidth = 757
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 313
    Height = 74
    Caption = ' Cabecera de archivo '
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 20
      Width = 98
      Height = 13
      Caption = 'Nombre del archivo :'
    end
    object Label2: TLabel
      Left = 14
      Top = 46
      Width = 81
      Height = 13
      Caption = 'A'#241'o de proceso :'
    end
    object GroupBox2: TGroupBox
      Left = 116
      Top = 11
      Width = 185
      Height = 26
      TabOrder = 0
      object lblnomarc: TLabel
        Left = 4
        Top = 8
        Width = 178
        Height = 15
        AutoSize = False
        Color = clWhite
        ParentColor = False
      end
    end
    object GroupBox3: TGroupBox
      Left = 116
      Top = 37
      Width = 95
      Height = 26
      TabOrder = 1
      object Label4: TLabel
        Left = 4
        Top = 8
        Width = 89
        Height = 15
        AutoSize = False
        Color = clWhite
        ParentColor = False
      end
    end
  end
  object dbgparticiona: TwwDBGrid
    Left = 8
    Top = 88
    Width = 737
    Height = 240
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsEjecuta
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object btnasigna: TBitBtn
    Left = 575
    Top = 333
    Width = 82
    Height = 29
    Caption = 'Separar'
    TabOrder = 2
    OnClick = btnasignaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
      55555575555555775F55509999999901055557F55555557F75F5001111111101
      105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
      01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
      0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
      0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
      0005555555575FF7777555555555000555555555555577755555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object btnCerrar: TBitBtn
    Left = 664
    Top = 333
    Width = 82
    Height = 29
    Caption = 'Salir'
    TabOrder = 3
    OnClick = btnCerrarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
end
