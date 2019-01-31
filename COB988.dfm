object fgenarcenv: Tfgenarcenv
  Left = 293
  Top = 265
  BorderStyle = bsDialog
  Caption = 'Generaci'#243'n de archivo para env'#237'o'
  ClientHeight = 313
  ClientWidth = 483
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 2
    Width = 124
    Height = 13
    Caption = 'Descripci'#243'n del Convenio:'
  end
  object Label2: TLabel
    Left = 328
    Top = 2
    Width = 109
    Height = 13
    Caption = 'A'#241'o y mes de Proceso:'
  end
  object Label3: TLabel
    Left = 6
    Top = 114
    Width = 119
    Height = 13
    Caption = 'Caracteristica del archivo'
  end
  object gbtiparc: TGroupBox
    Left = 328
    Top = 45
    Width = 149
    Height = 83
    Caption = ' Seleccione tipo de archivo '
    TabOrder = 0
    object lbtipos: TListBox
      Left = 6
      Top = 17
      Width = 136
      Height = 60
      ItemHeight = 13
      Items.Strings = (
        'SIGA.DBF'
        'SUP.DBF'
        'RIMAC.DBF'
        'TARAPOTO.DBF'
        'LIBERTAD.DBF'
        'UCAYALI.DBF'
        'TERCEROS.DBF'
        'HUANUCO.DBF'
        'LORETO.DBF'
        'COR_PORT.DBF')
      TabOrder = 0
      OnClick = lbtiposClick
    end
  end
  object menomarc: TMaskEdit
    Left = 8
    Top = 287
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object stvarc: TShellTreeView
    Left = 8
    Top = 159
    Width = 217
    Height = 123
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    UseShellImages = True
    AutoRefresh = False
    Indent = 19
    ParentColor = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 2
  end
  object btngenera: TBitBtn
    Left = 257
    Top = 216
    Width = 81
    Height = 29
    Caption = 'Generar'
    TabOrder = 3
    OnClick = btngeneraClick
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
  object btncerrar: TBitBtn
    Left = 344
    Top = 216
    Width = 81
    Height = 29
    Caption = 'Cerrar'
    TabOrder = 4
    OnClick = btncerrarClick
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
  object Memo1: TMemo
    Left = 372
    Top = 132
    Width = 25
    Height = 25
    Lines.Strings = (
      'Me'
      'mo'
      '1')
    TabOrder = 5
    Visible = False
  end
  object Panel1: TPanel
    Left = 6
    Top = 18
    Width = 317
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 6
    object medescon: TMaskEdit
      Left = 1
      Top = 1
      Width = 315
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 328
    Top = 18
    Width = 151
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 7
    object medesanomespro: TMaskEdit
      Left = 1
      Top = 1
      Width = 149
      Height = 21
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 6
    Top = 132
    Width = 330
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 8
    object mecarenvarc: TMaskEdit
      Left = 1
      Top = 1
      Width = 328
      Height = 21
      TabOrder = 0
    end
  end
  object rgtipaso: TRadioGroup
    Left = 6
    Top = 45
    Width = 107
    Height = 52
    Caption = ' Tipo de asociado '
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Docente'
      'Cesante')
    TabOrder = 9
    OnClick = rgtipasoClick
  end
  object rgtiparc: TRadioGroup
    Left = 158
    Top = 45
    Width = 163
    Height = 66
    Caption = ' Tipo de archivo '
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Cuotas + FSC'
      'Aportes'
      'Cuotas + FSC + Aportes')
    TabOrder = 10
    OnClick = rgtiparcClick
  end
  object gbterceros: TGroupBox
    Left = 230
    Top = 157
    Width = 195
    Height = 52
    Caption = 'Datos Adicionales (TERCEROS.DBF)'
    TabOrder = 11
    Visible = False
    object Label4: TLabel
      Left = 7
      Top = 25
      Width = 47
      Height = 13
      Caption = 'Empresa :'
    end
    object Panel4: TPanel
      Left = 64
      Top = 20
      Width = 31
      Height = 23
      TabOrder = 0
      object mecodemp: TMaskEdit
        Left = 1
        Top = 1
        Width = 29
        Height = 21
        EditMask = '###'
        MaxLength = 3
        TabOrder = 0
        Text = '   '
      end
    end
  end
  object pb1: TProgressBar
    Left = 235
    Top = 272
    Width = 242
    Height = 17
    TabOrder = 12
    Visible = False
  end
  object TAB: TTable
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        Precision = 4
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
        Precision = 2
      end>
    StoreDefs = True
    TableType = ttFoxPro
    Left = 340
    Top = 132
  end
end
