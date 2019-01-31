object FmodUGEL: TFmodUGEL
  Left = 208
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Mantenimiento de C'#243'digo de Cargo'
  ClientHeight = 544
  ClientWidth = 443
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
  object gbmodifica: TGroupBox
    Left = 3
    Top = 7
    Width = 431
    Height = 501
    Caption = 'M'#243'dificaci'#243'n de cargo en la UGEL'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 42
      Width = 91
      Height = 13
      Caption = 'Unidad de Proceso'
    end
    object Label2: TLabel
      Left = 8
      Top = 67
      Width = 77
      Height = 13
      Caption = 'Unidad de Pago'
    end
    object Label3: TLabel
      Left = 8
      Top = 91
      Width = 88
      Height = 13
      Caption = 'Unidad de Gesti'#243'n'
    end
    object Label4: TLabel
      Left = 104
      Top = 42
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label5: TLabel
      Left = 104
      Top = 67
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label6: TLabel
      Left = 104
      Top = 91
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label7: TLabel
      Left = 8
      Top = 20
      Width = 67
      Height = 13
      Caption = 'Departamento'
    end
    object Label8: TLabel
      Left = 104
      Top = 20
      Width = 3
      Height = 13
      Caption = ':'
    end
    object btnguardar: TBitBtn
      Left = 346
      Top = 452
      Width = 78
      Height = 28
      Caption = 'Guardar'
      Enabled = False
      TabOrder = 4
      OnClick = btnguardarClick
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
    object pnldesunipro: TPanel
      Left = 112
      Top = 38
      Width = 310
      Height = 23
      Enabled = False
      TabOrder = 6
      object medesunipro: TMaskEdit
        Left = 1
        Top = 1
        Width = 307
        Height = 21
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnldesunipag: TPanel
      Left = 112
      Top = 62
      Width = 310
      Height = 23
      Caption = 'pnldesunipag'
      Enabled = False
      TabOrder = 7
      object medesunipag: TMaskEdit
        Left = 1
        Top = 1
        Width = 307
        Height = 21
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnldesuniges: TPanel
      Left = 112
      Top = 86
      Width = 310
      Height = 23
      Caption = 'pnldesunipag'
      Enabled = False
      TabOrder = 8
      object medesuniges: TMaskEdit
        Left = 1
        Top = 1
        Width = 307
        Height = 21
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnldesdep: TPanel
      Left = 112
      Top = 14
      Width = 310
      Height = 23
      Enabled = False
      TabOrder = 5
      object medesdep: TMaskEdit
        Left = 1
        Top = 1
        Width = 307
        Height = 21
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object btnmodificar: TBitBtn
      Left = 343
      Top = 111
      Width = 78
      Height = 28
      Caption = 'Modificar'
      TabOrder = 0
      OnClick = btnmodificarClick
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
    object gbdocentes: TGroupBox
      Left = 4
      Top = 139
      Width = 420
      Height = 147
      Caption = '  DOCENTES  '
      TabOrder = 1
      object gb3pridigDO: TGroupBox
        Left = 4
        Top = 13
        Width = 204
        Height = 127
        Caption = ' Primeros 3 digitos '
        TabOrder = 0
        object dbg3primerosDO: TwwDBGrid
          Left = 5
          Top = 15
          Width = 193
          Height = 82
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DM1.dsQry3
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
        object pnlcodcarDO: TPanel
          Left = 163
          Top = 100
          Width = 35
          Height = 23
          Caption = 'pnlcodcargo'
          Enabled = False
          TabOrder = 0
          object me3pridigDO: TMaskEdit
            Left = 1
            Top = 1
            Width = 33
            Height = 21
            CharCase = ecUpperCase
            EditMask = '###'
            MaxLength = 3
            TabOrder = 0
            Text = '   '
            OnExit = me3pridigDOExit
          end
        end
      end
      object gb3ultdigDO: TGroupBox
        Left = 211
        Top = 13
        Width = 205
        Height = 127
        Caption = ' '#218'ltimos 3 digitos '
        TabOrder = 1
        object dbg3ultimosDO: TwwDBGrid
          Left = 6
          Top = 15
          Width = 193
          Height = 82
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DM1.dsQry4
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
        object pnldigmasrepDO: TPanel
          Left = 165
          Top = 100
          Width = 35
          Height = 23
          Caption = 'pnlcodcargo'
          Enabled = False
          TabOrder = 0
          object me3ultdigDO: TMaskEdit
            Left = 1
            Top = 1
            Width = 33
            Height = 21
            CharCase = ecUpperCase
            EditMask = '###'
            MaxLength = 3
            TabOrder = 0
            Text = '   '
            OnExit = me3ultdigDOExit
          end
        end
      end
    end
    object gbcesantes: TGroupBox
      Left = 4
      Top = 288
      Width = 420
      Height = 147
      Caption = '  CESANTES  '
      TabOrder = 2
      object gb3pridigCE: TGroupBox
        Left = 4
        Top = 12
        Width = 204
        Height = 126
        Caption = 'Primeros 3 digitos'
        TabOrder = 0
        object dbg3primerosCE: TwwDBGrid
          Left = 5
          Top = 15
          Width = 193
          Height = 82
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DM1.dsqry5
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
        object pnlcodcarCE: TPanel
          Left = 163
          Top = 100
          Width = 35
          Height = 23
          Caption = 'pnlcodcargo'
          Enabled = False
          TabOrder = 0
          object me3pridigCE: TMaskEdit
            Left = 1
            Top = 1
            Width = 33
            Height = 21
            CharCase = ecUpperCase
            EditMask = '###'
            MaxLength = 3
            TabOrder = 0
            Text = '   '
            OnExit = me3pridigCEExit
          end
        end
      end
      object gb3ultdigCE: TGroupBox
        Left = 212
        Top = 12
        Width = 204
        Height = 126
        Caption = #218'ltimos 3 digitos'
        TabOrder = 1
        object dbg3ultimosCE: TwwDBGrid
          Left = 5
          Top = 15
          Width = 193
          Height = 82
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DM1.dsQry6
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
        object pnldigmasrepCE: TPanel
          Left = 163
          Top = 100
          Width = 35
          Height = 23
          Caption = 'pnlcodcargo'
          Enabled = False
          TabOrder = 0
          object me3ultdigCE: TMaskEdit
            Left = 1
            Top = 1
            Width = 33
            Height = 21
            CharCase = ecUpperCase
            EditMask = '###'
            MaxLength = 3
            TabOrder = 0
            Text = '   '
            OnExit = me3ultdigCEExit
          end
        end
      end
    end
    object rgcarobl: TRadioGroup
      Left = 5
      Top = 436
      Width = 117
      Height = 59
      Caption = ' '#191' Cargo Obligatorio ? '
      Columns = 2
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 3
      OnExit = rgcaroblExit
    end
  end
  object btncerrar: TBitBtn
    Left = 355
    Top = 513
    Width = 78
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 1
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
