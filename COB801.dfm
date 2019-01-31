object Fmardesprocob: TFmardesprocob
  Left = 184
  Top = 95
  BorderStyle = bsDialog
  Caption = 'Fmardesprocob'
  ClientHeight = 404
  ClientWidth = 416
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 9
    Width = 74
    Height = 13
    Caption = 'C'#243'digo Modular'
  end
  object Label2: TLabel
    Left = 5
    Top = 33
    Width = 99
    Height = 13
    Caption = 'Apellidos y nombre(s)'
  end
  object TLabel
    Left = 3
    Top = 58
    Width = 59
    Height = 13
    Caption = 'F.Otorgado :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 224
    Top = 58
    Width = 45
    Height = 13
    Caption = 'N'#176'  Prest.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 3
    Top = 84
    Width = 30
    Height = 13
    Caption = 'Tipo  :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 105
    Width = 409
    Height = 124
    Caption = ' Estado de la cuota '
    TabOrder = 0
    object Label3: TLabel
      Left = 7
      Top = 17
      Width = 93
      Height = 13
      Caption = 'N'#250'mero de la cuota'
    end
    object Label4: TLabel
      Left = 7
      Top = 94
      Width = 86
      Height = 13
      Caption = 'Monto de la cuota'
    end
    object Label5: TLabel
      Left = 181
      Top = 94
      Width = 69
      Height = 13
      Caption = 'Monto pagado'
    end
    object Label6: TLabel
      Left = 7
      Top = 43
      Width = 89
      Height = 13
      Caption = 'Estado de la cuota'
    end
    object Label7: TLabel
      Left = 7
      Top = 68
      Width = 99
      Height = 13
      Caption = 'Periodo de Cobranza'
    end
    object Panel6: TPanel
      Left = 119
      Top = 13
      Width = 37
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 0
      object mecrecuota: TMaskEdit
        Left = 1
        Top = 1
        Width = 35
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel7: TPanel
      Left = 119
      Top = 38
      Width = 282
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 1
      object mecreestado: TMaskEdit
        Left = 1
        Top = 1
        Width = 280
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel9: TPanel
      Left = 119
      Top = 89
      Width = 53
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 2
      object mecremto: TMaskEdit
        Left = 1
        Top = 1
        Width = 50
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel10: TPanel
      Left = 260
      Top = 89
      Width = 52
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 3
      object mecremtocob: TMaskEdit
        Left = 1
        Top = 1
        Width = 50
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel8: TPanel
      Left = 119
      Top = 63
      Width = 144
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 4
      object mepercob: TMaskEdit
        Left = 1
        Top = 1
        Width = 142
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object btnactualiza: TBitBtn
    Left = 334
    Top = 236
    Width = 77
    Height = 28
    Caption = 'Actualizar'
    TabOrder = 1
    OnClick = btnactualizaClick
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
    Left = 334
    Top = 269
    Width = 77
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 2
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
  object Panel1: TPanel
    Left = 109
    Top = 2
    Width = 95
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 3
    object measocodmod: TMaskEdit
      Left = 1
      Top = 1
      Width = 93
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 109
    Top = 27
    Width = 302
    Height = 23
    Caption = 'Panel2'
    Enabled = False
    TabOrder = 4
    object measoapenom: TMaskEdit
      Left = 1
      Top = 1
      Width = 300
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 109
    Top = 52
    Width = 105
    Height = 23
    Caption = 'Panel2'
    Enabled = False
    TabOrder = 5
    object mecrefotorg: TMaskEdit
      Left = 1
      Top = 1
      Width = 103
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 109
    Top = 77
    Width = 302
    Height = 23
    Caption = 'Panel2'
    Enabled = False
    TabOrder = 6
    object meTipcredes: TMaskEdit
      Left = 1
      Top = 1
      Width = 300
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel5: TPanel
    Left = 280
    Top = 52
    Width = 131
    Height = 23
    Caption = 'Panel2'
    Enabled = False
    TabOrder = 7
    object meCredid: TMaskEdit
      Left = 1
      Top = 1
      Width = 129
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 232
    Width = 311
    Height = 166
    Caption = ' Nuevo estado '
    TabOrder = 8
    object Label8: TLabel
      Left = 7
      Top = 19
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label9: TLabel
      Left = 7
      Top = 120
      Width = 99
      Height = 13
      Caption = 'Periodo de Cobranza'
    end
    object Label11: TLabel
      Left = 114
      Top = 120
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object Label12: TLabel
      Left = 177
      Top = 120
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
    end
    object Label13: TLabel
      Left = 7
      Top = 43
      Width = 86
      Height = 13
      Caption = 'Monto de la cuota'
    end
    object Label14: TLabel
      Left = 164
      Top = 43
      Width = 69
      Height = 13
      Caption = 'Monto pagado'
    end
    object Label10: TLabel
      Left = 7
      Top = 70
      Width = 102
      Height = 13
      Caption = 'Usuario que actualiza'
    end
    object Label15: TLabel
      Left = 7
      Top = 95
      Width = 142
      Height = 13
      Caption = 'Fecha y hora de actualizaci'#243'n'
    end
    object Panel11: TPanel
      Left = 106
      Top = 12
      Width = 199
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 0
      object mecreestadonue: TMaskEdit
        Left = 1
        Top = 1
        Width = 197
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object semes: TSpinEdit
      Left = 114
      Top = 138
      Width = 43
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object seano: TSpinEdit
      Left = 175
      Top = 138
      Width = 62
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object Panel12: TPanel
      Left = 102
      Top = 38
      Width = 53
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 3
      object mecremtonue: TMaskEdit
        Left = 1
        Top = 1
        Width = 50
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel14: TPanel
      Left = 253
      Top = 38
      Width = 52
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 4
      object mecremtocobnue: TMaskEdit
        Left = 1
        Top = 1
        Width = 50
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel13: TPanel
      Left = 153
      Top = 65
      Width = 152
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 5
      object meusuario: TMaskEdit
        Left = 1
        Top = 1
        Width = 150
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel15: TPanel
      Left = 153
      Top = 91
      Width = 152
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 6
      object mefechor: TMaskEdit
        Left = 1
        Top = 1
        Width = 150
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
end
