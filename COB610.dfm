object fContIngresos: TfContIngresos
  Left = 224
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Control de Ingresos Mensuales'
  ClientHeight = 544
  ClientWidth = 1055
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
  object lblPeriodo: TLabel
    Left = 104
    Top = 512
    Width = 46
    Height = 13
    Caption = 'lblPeriodo'
    Visible = False
  end
  object BitSalir: TBitBtn
    Left = 960
    Top = 506
    Width = 89
    Height = 28
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
  object btnAExcel: TBitBtn
    Left = 855
    Top = 506
    Width = 89
    Height = 28
    Caption = 'A &Excel'
    TabOrder = 1
    OnClick = btnAExcelClick
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
  object Panel1: TPanel
    Left = 8
    Top = 13
    Width = 1041
    Height = 79
    BevelInner = bvLowered
    Color = 10207162
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 111
      Height = 13
      Caption = 'Fecha De Registro '
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 26
      Width = 75
      Height = 13
      Caption = 'Fecha De Inicio'
    end
    object Label1: TLabel
      Left = 109
      Top = 26
      Width = 64
      Height = 13
      Caption = 'Fecha De Fin'
    end
    object lblUniverso: TLabel
      Left = 632
      Top = 16
      Width = 313
      Height = 15
      AutoSize = False
      Caption = 'Deudores Priorizados a : 201412  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DtpFecIni: TDateTimePicker
      Left = 7
      Top = 41
      Width = 93
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DtpFecIniChange
    end
    object DtpFecFin: TDateTimePicker
      Left = 105
      Top = 41
      Width = 93
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = DtpFecFinChange
    end
    object BitMostrar: TBitBtn
      Left = 947
      Top = 45
      Width = 89
      Height = 30
      Hint = 'Mostrar'
      Caption = 'Mostar'
      TabOrder = 2
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
    object gbAgrupado: TGroupBox
      Left = 216
      Top = 1
      Width = 329
      Height = 32
      Caption = 'Agrupado Por'
      TabOrder = 3
      object chkClasificacion: TCheckBox
        Left = 16
        Top = 13
        Width = 97
        Height = 17
        Caption = 'Clasificaci'#243'n'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkClasificacionClick
      end
      object chkDepartamento: TCheckBox
        Left = 135
        Top = 13
        Width = 97
        Height = 17
        Caption = 'Departamento'
        TabOrder = 1
        OnClick = chkDepartamentoClick
      end
      object chkUgel: TCheckBox
        Left = 259
        Top = 13
        Width = 56
        Height = 17
        Caption = 'Ugel'
        TabOrder = 2
        OnClick = chkUgelClick
      end
    end
    object gbFrmPag: TGroupBox
      Left = 216
      Top = 38
      Width = 713
      Height = 37
      Caption = 'Formas de Pago'
      TabOrder = 4
      object chkPla: TCheckBox
        Left = 8
        Top = 16
        Width = 49
        Height = 17
        Caption = 'PLA'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkPlaClick
      end
      object chkEfe: TCheckBox
        Left = 69
        Top = 16
        Width = 49
        Height = 17
        Caption = 'EFE'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = chkEfeClick
      end
      object chkBan: TCheckBox
        Left = 122
        Top = 16
        Width = 49
        Height = 17
        Caption = 'BAN'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = chkBanClick
      end
      object chkOtr: TCheckBox
        Left = 610
        Top = 16
        Width = 49
        Height = 17
        Caption = 'OTR'
        TabOrder = 3
        OnClick = chkOtrClick
      end
      object chkFdg: TCheckBox
        Left = 549
        Top = 16
        Width = 49
        Height = 17
        Caption = 'FDG'
        TabOrder = 4
        OnClick = chkFdgClick
      end
      object chkAmp: TCheckBox
        Left = 488
        Top = 16
        Width = 49
        Height = 17
        Caption = 'AMP'
        TabOrder = 5
        OnClick = chkAmpClick
      end
      object chkFsc: TCheckBox
        Left = 427
        Top = 16
        Width = 49
        Height = 17
        Caption = 'FSC'
        TabOrder = 6
        OnClick = chkFscClick
      end
      object chkRef: TCheckBox
        Left = 366
        Top = 16
        Width = 49
        Height = 17
        Caption = 'REF'
        TabOrder = 7
        OnClick = chkRefClick
      end
      object chkOnp: TCheckBox
        Left = 305
        Top = 16
        Width = 49
        Height = 17
        Caption = 'ONP'
        TabOrder = 8
        OnClick = chkOnpClick
      end
      object chkBen: TCheckBox
        Left = 244
        Top = 16
        Width = 49
        Height = 17
        Caption = 'BEN'
        TabOrder = 9
        OnClick = chkBenClick
      end
      object chkAbn: TCheckBox
        Left = 183
        Top = 16
        Width = 49
        Height = 17
        Caption = 'ABN'
        TabOrder = 10
        OnClick = chkAbnClick
      end
    end
  end
  object dtgCtrlPagos: TwwDBGrid
    Left = 6
    Top = 94
    Width = 1042
    Height = 404
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsAbonoCuotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
end
