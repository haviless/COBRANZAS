object fEscFis: TfEscFis
  Left = 98
  Top = 130
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Asociados Escuelas Fiscalizadas'
  ClientHeight = 526
  ClientWidth = 804
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
  object Shape2: TShape
    Left = 80
    Top = 477
    Width = 25
    Height = 25
    Brush.Color = clRed
  end
  object Label9: TLabel
    Left = 111
    Top = 484
    Width = 55
    Height = 13
    Caption = 'Con Credito'
  end
  object rdbAsoNom: TRadioButton
    Left = 12
    Top = 15
    Width = 142
    Height = 14
    Caption = 'Apellidos y Nombres'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TabStop = True
    OnClick = rdbAsoNomClick
  end
  object rdbCtaAho: TRadioButton
    Left = 12
    Top = 32
    Width = 136
    Height = 14
    Caption = 'Cuenta de Ahorros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = rdbCtaAhoClick
  end
  object rdbDni: TRadioButton
    Left = 12
    Top = 50
    Width = 60
    Height = 14
    Caption = 'D.N.I.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = rdbDniClick
  end
  object pnlBuscar: TPanel
    Left = 163
    Top = 13
    Width = 592
    Height = 50
    Color = 15269887
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 60
      Height = 13
      Caption = 'Buscar  :  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtBuscar: TEdit
      Left = 70
      Top = 12
      Width = 403
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BitMostrar: TBitBtn
      Left = 484
      Top = 9
      Width = 89
      Height = 28
      Hint = 'Salir'
      Caption = 'Mostrar'
      TabOrder = 1
      OnClick = BitMostrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
  end
  object dtgAsoMan: TwwDBGrid
    Left = 8
    Top = 69
    Width = 788
    Height = 106
    DisableThemesInTitle = False
    Selected.Strings = (
      'UPROID'#9'5'#9'Unidad~De Proceso.'
      'USEID'#9'5'#9'Use/Ugel.'
      'ASOTIPID'#9'3'#9'Tipo de~Asociado'
      'ASOCODMOD'#9'12'#9'Codigo~Modular'
      'ASOAPENOMDNI'#9'43'#9'Apellidos y Nombres'
      'ASODNI'#9'10'#9'D.N.I.'
      'ASONCTA'#9'12'#9'Cuenta~De Ahorros'
      'SITCTA'#9'1'#9'Sit~Cta'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dtgAsoManRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsAso
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object dtgAsoEFis: TwwDBGrid
    Left = 7
    Top = 260
    Width = 788
    Height = 205
    DisableThemesInTitle = False
    Selected.Strings = (
      'UPROID'#9'5'#9'Unidad~De Proceso.'
      'USEID'#9'5'#9'Use/Ugel.'
      'ASOTIPID'#9'3'#9'Tipo de~Asociado'
      'ASOCODMOD'#9'10'#9'Codigo~Modular'
      'ASOAPENOM'#9'35'#9'Apellidos y Nombres'
      'ASODNI'#9'8'#9'D.N.I.'
      'USUARIO'#9'10'#9'Usuario'
      'HREG'#9'17'#9'Fecha y Hora~De Registro'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsProvin
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDrawDataCell = dtgAsoEFisDrawDataCell
  end
  object Panel3: TPanel
    Left = 7
    Top = 183
    Width = 789
    Height = 73
    TabOrder = 6
    object Shape1: TShape
      Left = 4
      Top = 4
      Width = 782
      Height = 67
      Brush.Color = clBtnFace
    end
    object Label2: TLabel
      Left = 10
      Top = 6
      Width = 113
      Height = 16
      AutoSize = False
      Caption = 'Codigo Modular '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 137
      Top = 6
      Width = 15
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 389
      Top = 6
      Width = 15
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblCodMod: TLabel
      Left = 157
      Top = 6
      Width = 80
      Height = 17
      Caption = 'XXXXXXXX'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblAsoApeNom: TLabel
      Left = 157
      Top = 28
      Width = 340
      Height = 17
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 264
      Top = 6
      Width = 107
      Height = 16
      AutoSize = False
      Caption = 'Tipo De Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 138
      Top = 49
      Width = 14
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblTipAso: TLabel
      Left = 409
      Top = 6
      Width = 170
      Height = 17
      Caption = 'XXXXXXXXXXXXXXXXX'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 12
      Top = 49
      Width = 38
      Height = 16
      AutoSize = False
      Caption = 'D.N.I'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblDni: TLabel
      Left = 157
      Top = 49
      Width = 80
      Height = 17
      Caption = 'XXXXXXXX'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 266
      Top = 50
      Width = 118
      Height = 15
      AutoSize = False
      Caption = 'Cuenta De Ahorros '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 389
      Top = 50
      Width = 15
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblCtaAhorros: TLabel
      Left = 409
      Top = 50
      Width = 170
      Height = 17
      Caption = 'XXXXXXXXXXXXXXXXX'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 138
      Top = 28
      Width = 14
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 28
      Width = 125
      Height = 18
      AutoSize = False
      Caption = 'Apellidos y Nombres'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object BitEscFis: TfcShapeBtn
      Left = 624
      Top = 26
      Width = 137
      Height = 31
      Cursor = crHandPoint
      Caption = 'A'#241'adir Asociado'
      Color = clMenu
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
        33333333373F33333333333330B03333333333337F7F33333333333330F03333
        333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
        333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
        333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
        3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
        33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
        33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
        03333337777777F7F33333330000000003333337777777773333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitEscFisClick
    end
  end
  object BitSalir: TBitBtn
    Left = 653
    Top = 484
    Width = 113
    Height = 31
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 7
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
