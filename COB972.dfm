object Fmanblo: TFmanblo
  Left = 411
  Top = 203
  BorderStyle = bsDialog
  Caption = 'Bloqueo de cuotas'
  ClientHeight = 335
  ClientWidth = 500
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
  object gbbloqueo: TGroupBox
    Left = 1
    Top = 0
    Width = 497
    Height = 97
    Caption = ' Datos del bloqueo '
    Color = 10207162
    Enabled = False
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 47
      Width = 39
      Height = 13
      Caption = 'Cr'#233'dito :'
    end
    object Label2: TLabel
      Left = 10
      Top = 73
      Width = 36
      Height = 13
      Caption = 'Cuotas:'
    end
    object Label4: TLabel
      Left = 10
      Top = 21
      Width = 50
      Height = 13
      Caption = 'Asociado :'
    end
    object Label5: TLabel
      Left = 136
      Top = 73
      Width = 57
      Height = 13
      Caption = 'Monto : S/. '
    end
    object Panel1: TPanel
      Left = 64
      Top = 43
      Width = 427
      Height = 23
      Caption = 'Panel1'
      TabOrder = 0
      object mecredid: TMaskEdit
        Left = 1
        Top = 1
        Width = 425
        Height = 21
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 64
      Top = 69
      Width = 57
      Height = 23
      Caption = 'Panel2'
      TabOrder = 1
      object mecuota: TMaskEdit
        Left = 1
        Top = 1
        Width = 54
        Height = 21
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 64
      Top = 17
      Width = 427
      Height = 23
      Caption = 'Panel1'
      TabOrder = 2
      object measoapenomdni: TMaskEdit
        Left = 1
        Top = 1
        Width = 425
        Height = 21
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 216
      Top = 69
      Width = 74
      Height = 23
      Caption = 'Panel2'
      TabOrder = 3
      object memoncuo: TMaskEdit
        Left = 1
        Top = 1
        Width = 72
        Height = 21
        TabOrder = 0
      end
    end
  end
  object gbinfblo: TGroupBox
    Left = 1
    Top = 101
    Width = 497
    Height = 191
    Caption = ' Informaci'#243'n del bloqueo '
    Color = 10207162
    ParentColor = False
    TabOrder = 1
    object Label6: TLabel
      Left = 11
      Top = 26
      Width = 42
      Height = 13
      Caption = 'Usuario :'
    end
    object Label7: TLabel
      Left = 10
      Top = 46
      Width = 68
      Height = 13
      Caption = 'Fecha y hora :'
    end
    object Label8: TLabel
      Left = 9
      Top = 76
      Width = 83
      Height = 13
      Caption = 'Tipo de bloqueo :'
    end
    object Label9: TLabel
      Left = 9
      Top = 108
      Width = 66
      Height = 13
      Caption = 'Observaci'#243'n :'
    end
    object dblcdtipblo: TwwDBLookupComboDlg
      Left = 96
      Top = 72
      Width = 49
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTRela
      LookupField = 'CODTIP'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdtipbloChange
    end
    object Panel6: TPanel
      Left = 150
      Top = 72
      Width = 272
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 2
      object medesblo: TMaskEdit
        Left = 1
        Top = 1
        Width = 270
        Height = 21
        TabOrder = 0
      end
    end
    object mObsDat: TMemo
      Left = 96
      Top = 101
      Width = 325
      Height = 80
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 96
      Top = 46
      Width = 181
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 3
      object mefechorbloq: TMaskEdit
        Left = 1
        Top = 1
        Width = 179
        Height = 21
        TabOrder = 0
      end
    end
    object Panel8: TPanel
      Left = 96
      Top = 20
      Width = 323
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 4
      object meusuario: TMaskEdit
        Left = 1
        Top = 1
        Width = 321
        Height = 21
        TabOrder = 0
      end
    end
  end
  object btngrabar: TBitBtn
    Left = 320
    Top = 297
    Width = 86
    Height = 32
    Caption = 'Actualizar'
    TabOrder = 2
    OnClick = btngrabarClick
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
    Left = 412
    Top = 297
    Width = 86
    Height = 32
    Caption = 'Cerrar'
    TabOrder = 3
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
end
