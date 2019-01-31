object Finfprocob: TFinfprocob
  Left = 33
  Top = 219
  BorderStyle = bsDialog
  Caption = 'Informaci'#243'n del proceso de cobranza'
  ClientHeight = 335
  ClientWidth = 751
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
  object pnlmes_3: TPanel
    Left = 588
    Top = 97
    Width = 132
    Height = 24
    BorderStyle = bsSingle
    Caption = 'Octubre hacia atras'
    TabOrder = 5
  end
  object pnlmes_2: TPanel
    Left = 456
    Top = 97
    Width = 135
    Height = 24
    BorderStyle = bsSingle
    Caption = 'Noviembre'
    TabOrder = 1
  end
  object pnlmes_1: TPanel
    Left = 324
    Top = 97
    Width = 135
    Height = 24
    BorderStyle = bsSingle
    Caption = 'Diciembre'
    TabOrder = 0
  end
  object dbgpreprocob: TwwDBGrid
    Left = 6
    Top = 118
    Width = 739
    Height = 174
    DisableThemesInTitle = False
    Selected.Strings = (
      'USEID'#9'6'#9'C'#243'digo~UGEL'
      'USENOM'#9'34'#9'Descripci'#243'n~UGEL'
      'C_P_C_S_P'#9'8'#9'Pro.Cob.~sin periodo'
      'C_P_C_1'#9'10'#9'Con proceso ~de cobranza'
      'S_P_C_1'#9'9'#9'Sin proceso~de cobranza'
      'C_P_C_2'#9'10'#9'Con proceso ~de cobranza'
      'S_P_C_2'#9'9'#9'Sin proceso~de cobranza'
      'C_P_C_3'#9'10'#9'Con proceso~de cobranza'
      'S_P_C_3'#9'9'#9'Sin proceso~de cobranza')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsprocob
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgpreprocobDblClick
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 0
    Width = 447
    Height = 92
    Caption = ' Informaci'#243'n del convenio '
    Color = 10207162
    Enabled = False
    ParentColor = False
    TabOrder = 3
    object Label1: TLabel
      Left = 7
      Top = 17
      Width = 45
      Height = 13
      Caption = 'Convenio'
    end
    object Label2: TLabel
      Left = 96
      Top = 17
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label3: TLabel
      Left = 7
      Top = 42
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
    end
    object Label4: TLabel
      Left = 168
      Top = 42
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object Label5: TLabel
      Left = 96
      Top = 42
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label6: TLabel
      Left = 195
      Top = 42
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label7: TLabel
      Left = 7
      Top = 66
      Width = 82
      Height = 13
      Caption = 'Tipo de asociado'
    end
    object Label8: TLabel
      Left = 96
      Top = 66
      Width = 3
      Height = 13
      Caption = ':'
    end
    object pnldespla: TPanel
      Left = 168
      Top = 14
      Width = 275
      Height = 23
      Enabled = False
      TabOrder = 0
      object edtdescon: TEdit
        Left = 1
        Top = 1
        Width = 273
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object Panel8: TPanel
      Left = 104
      Top = 14
      Width = 61
      Height = 23
      Enabled = False
      TabOrder = 1
      object edtcodcon: TEdit
        Left = 1
        Top = 1
        Width = 59
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 104
      Top = 38
      Width = 50
      Height = 23
      Enabled = False
      TabOrder = 2
      object edtanopro: TEdit
        Left = 1
        Top = 1
        Width = 47
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 202
      Top = 38
      Width = 29
      Height = 23
      Enabled = False
      TabOrder = 3
      object edtmespro: TEdit
        Left = 1
        Top = 1
        Width = 27
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 104
      Top = 63
      Width = 127
      Height = 23
      Enabled = False
      TabOrder = 4
      object edttipaso: TEdit
        Left = 1
        Top = 1
        Width = 125
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
  end
  object btnsalir: TBitBtn
    Left = 664
    Top = 297
    Width = 80
    Height = 28
    Caption = 'Salir'
    TabOrder = 4
    OnClick = btnsalirClick
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
  object cdsprocob: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'USEID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'C_P_C_S_P'
        DataType = ftFloat
      end
      item
        Name = 'C_P_C_1'
        DataType = ftFloat
      end
      item
        Name = 'S_P_C_1'
        DataType = ftFloat
      end
      item
        Name = 'C_P_C_2'
        DataType = ftFloat
      end
      item
        Name = 'S_P_C_2'
        DataType = ftFloat
      end
      item
        Name = 'C_P_C_3'
        DataType = ftFloat
      end
      item
        Name = 'S_P_C_3'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'cdsprocobIndex3'
        Fields = 'USEID'
      end>
    IndexFieldNames = 'USEID'
    Params = <>
    StoreDefs = True
    Left = 464
    Top = 8
    Data = {
      D70000009619E0BD010000001800000009000000000003000000D70005555345
      49440100490000000100055749445448020002001400065553454E4F4D010049
      000000010005574944544802000200140009435F505F435F535F500800040000
      00000007435F505F435F31080004000000000007535F505F435F310800040000
      00000007435F505F435F32080004000000000007535F505F435F320800040000
      00000007435F505F435F33080004000000000007535F505F435F330800040000
      00000001000D44454641554C545F4F524445520200820000000000}
  end
  object dsprocob: TDataSource
    DataSet = cdsprocob
    Left = 472
    Top = 15
  end
end
