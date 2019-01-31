object FInvCreOtorg: TFInvCreOtorg
  Left = 391
  Top = 213
  BorderStyle = bsDialog
  Caption = 'Inventario de Cr'#233'ditos Otorgados'
  ClientHeight = 439
  ClientWidth = 857
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 121
    Width = 833
    Height = 272
    TabOrder = 0
    object dbgCreditos: TwwDBGrid
      Left = 8
      Top = 16
      Width = 809
      Height = 249
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 3
      TitleButtons = False
    end
  end
  object fcShapeBtn3: TfcShapeBtn
    Left = 747
    Top = 401
    Width = 92
    Height = 25
    Cancel = True
    Caption = 'Salir'
    Color = clBtnFace
    DitherColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
    ParentClipping = True
    ParentFont = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    TabOrder = 1
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = fcShapeBtn3Click
  end
  object BitBtn5: TBitBtn
    Left = 653
    Top = 401
    Width = 84
    Height = 25
    Caption = 'Excel'
    TabOrder = 2
    OnClick = BitBtn5Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
      000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
      0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
      080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 833
    Height = 107
    Caption = 'Filtro (Fecha de Otorgamiento):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 29
      Width = 102
      Height = 17
      Caption = 'Fecha de Inicio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 59
      Width = 100
      Height = 17
      Caption = 'Fecha de Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object chkAnulados: TCheckBox
      Left = 428
      Top = 42
      Width = 209
      Height = 17
      Caption = 'Incluir Anulados y Extornados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = chkAnuladosClick
    end
    object chkContabilizados: TCheckBox
      Left = 428
      Top = 18
      Width = 169
      Height = 17
      Caption = 'Solo Contabilizados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = chkContabilizadosClick
    end
    object dbdtpInicio: TwwDBDateTimePicker
      Left = 120
      Top = 30
      Width = 88
      Height = 24
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 2
      OnChange = dbdtpInicioChange
    end
    object dbdtpFinal: TwwDBDateTimePicker
      Left = 120
      Top = 55
      Width = 88
      Height = 24
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 3
      OnChange = dbdtpFinalChange
    end
    object btnFiltrar: TBitBtn
      Left = 673
      Top = 37
      Width = 75
      Height = 36
      Hint = 'Filtra datos para aprobar'
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnFiltrarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005F5F00000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000BFBF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000BFBF7FBFBF60606000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBF7FFF
        FF7FDFDF60A0A060606000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000BFBF7FFFFF7FFFFF7FDFDF60A0A060A0A0606060000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBF7FBFBF7F7F7F3F7F
        7F3F6F6F30505030505030707030606000000000FFFFFFFFFFFFFFFFFFFFFFFF
        0000002020002020009F9F9FBFBFBFBFBFBFBFBFBFDFDFDF5050502020004040
        00404000000000FFFFFFFFFFFF0000006060008080005F5F3FBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF707070505050808000808000606000000000FFFFFF000000
        8080006060009F9F9FBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FB0B0B0A0A0A04040
        00808000808000000000FFFFFFFFFFFF2020005F5F3FBFBFBFBFBFBFBFBFBFBF
        BFBFDFDFDF7F7F7FDFDFDFA0A0A0505050606000202000FFFFFFFFFFFFFFFFFF
        0000009F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6F6F6FDFDFDFB0B0B0A0A0
        A0000000FFFFFFFFFFFFFFFFFFFFFFFF3F3F3FBFBFBFBFBFBFFFFFFF7F7F7F7F
        7F7F3F3F3FEFEFEFDFDFDFDFDFDFB0B0B0202020FFFFFFFFFFFFFFFFFFFFFFFF
        3F3F3F404040505050505050CFCFCF7F7F7FFFFFFFBFBFBF6F6F6F7F7F7F7F7F
        7F303030000000FFFFFFFFFFFF000000808080909090A0A0A0B0B0B0CFCFCF6F
        6F6F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
        000000505050A0A0A0B0B0B0DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFF7F7F
        7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003030306F6F6F6F
        6F6F6F6F6F7F7F7F000000000000FFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object rgtipaso: TRadioGroup
      Left = 258
      Top = 10
      Width = 159
      Height = 92
      Caption = ' Tipo de Asociado  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Docente           '
        'Cesante            '
        'Contratado'
        'Todos')
      ParentFont = False
      TabOrder = 5
      OnClick = rgtipasoClick
    end
  end
  object dtgData: TDBGrid
    Left = 32
    Top = 323
    Width = 185
    Height = 49
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
end
