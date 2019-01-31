object fEntAutFis: TfEntAutFis
  Left = 196
  Top = 134
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Escuelas Fiscalizadas  /  Entidades Automonas'
  ClientHeight = 533
  ClientWidth = 791
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = -4
    Width = 353
    Height = 525
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 489
      Width = 36
      Height = 13
      Caption = 'Buscar '
    end
    object dtgCab: TwwDBGrid
      Left = 8
      Top = 11
      Width = 337
      Height = 462
      DisableThemesInTitle = False
      Selected.Strings = (
        'UPROID'#9'5'#9'Unidad~De Proceso.'
        'UPRONOM'#9'38'#9'Descripci'#243'n'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgCabRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCtasBco
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgCabDblClick
    end
    object edtBuscar: TEdit
      Left = 47
      Top = 486
      Width = 291
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = edtBuscarChange
    end
  end
  object GroupBox2: TGroupBox
    Left = 368
    Top = 16
    Width = 417
    Height = 457
    TabOrder = 1
    object lblTitulo: TLabel
      Left = 9
      Top = 15
      Width = 385
      Height = 13
      AutoSize = False
      Caption = 'lblTitulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dtgDet: TwwDBGrid
      Left = 8
      Top = 36
      Width = 401
      Height = 366
      DisableThemesInTitle = False
      Selected.Strings = (
        'UPAGOID'#9'5'#9'Unidad~De Pago.'
        'UPAGONOM'#9'43'#9'Descripci'#243'n'
        'FLGESCFIS'#9'1'#9'Esc.Fis.~Ent.Aut.'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgDetRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCuentaEst
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDrawDataCell = dtgDetDrawDataCell
    end
    object BitMarcar: TBitBtn
      Left = 309
      Top = 413
      Width = 86
      Height = 26
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitMarcarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object BitSalir: TBitBtn
    Left = 554
    Top = 491
    Width = 111
    Height = 28
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 2
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
end
