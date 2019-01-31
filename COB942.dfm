object fDetAsoc: TfDetAsoc
  Left = 167
  Top = 216
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalles Por Asociados'
  ClientHeight = 367
  ClientWidth = 763
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = -2
    Width = 759
    Height = 367
    TabOrder = 0
    DesignSize = (
      759
      367)
    object lblDescripc: TLabel
      Left = 14
      Top = 30
      Width = 499
      Height = 16
      AutoSize = False
      Caption = 'lblDescripc'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescrip: TLabel
      Left = 13
      Top = 11
      Width = 499
      Height = 16
      AutoSize = False
      Caption = 'lblDescrip'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescripx: TLabel
      Left = 14
      Top = 48
      Width = 499
      Height = 16
      AutoSize = False
      Caption = 'lblDescripx'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtgData: TDBGrid
      Left = 423
      Top = 113
      Width = 50
      Height = 8
      DataSource = DM1.dsDetRegGlob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
    end
    object BitSalir: TBitBtn
      Left = 645
      Top = 336
      Width = 89
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 0
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
    object dtgResGes: TwwDBGrid
      Left = 6
      Top = 68
      Width = 747
      Height = 263
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'USENOM'#9'25'#9'Uses/Ugel'
        'ASOCODMOD'#9'10'#9'Codigo~Modular'
        'CREFPAG'#9'10'#9'Fecha~De Pago'
        'CREDOCPAG'#9'10'#9'Documento~De Pago'
        'USUARIO'#9'15'#9'Usuario'
        'CREMTOCOB'#9'15'#9'Importe~Cobrado'
        'MOVIMIENTOS'#9'10'#9'N'#176'De~Cuotas'
        'ASODIR'#9'45'#9'Direcci'#243'n Domiciliaria'
        'ZIPABR'#9'25'#9'Distrito'
        'CIUDABR'#9'25'#9'Provincia'
        'DPTOABR'#9'25'#9'Departamento'
        'ASOTELF'#9'15'#9'Telefono'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsDetRegGlob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
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
    object BitExporta: TBitBtn
      Left = 547
      Top = 336
      Width = 89
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitExportaClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      Spacing = 10
    end
  end
end
