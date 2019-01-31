object fDatEnvGes: TfDatEnvGes
  Left = 120
  Top = 131
  BorderStyle = bsDialog
  Caption = 'Informaci'#243'n No Recuperada Por Planilla '
  ClientHeight = 517
  ClientWidth = 840
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
  PixelsPerInch = 96
  TextHeight = 13
  object BitSalir: TBitBtn
    Left = 707
    Top = 486
    Width = 101
    Height = 26
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
  object dtgInfGestion: TwwDBGrid
    Left = 13
    Top = 111
    Width = 817
    Height = 369
    DisableThemesInTitle = False
    Selected.Strings = (
      'PERIODO'#9'10'#9'Periodo~Envio'
      'ASOTIPID'#9'10'#9'Tipo~Asociado'
      'ASOAPENOM'#9'50'#9'Apellidos y Nombres'
      'ASODNI'#9'10'#9'D.N.I.'
      'MONCUOENV'#9'13'#9'Monto~Enviado'
      'MONCUOAPL'#9'13'#9'Mnto~Cobrado'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsAportes
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
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
  object grbParametros: TGroupBox
    Left = 6
    Top = 4
    Width = 198
    Height = 46
    Caption = 'Periodo De Proceso'
    TabOrder = 2
    object lblNomMes: TLabel
      Left = 104
      Top = 19
      Width = 89
      Height = 18
      AutoSize = False
      Caption = 'DICIEMBRE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbsAnoIni: TwwDBSpinEdit
      Left = 4
      Top = 15
      Width = 56
      Height = 26
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 2007.000000000000000000
      Value = 2008.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      OnChange = dbsAnoIniChange
    end
    object dbsMesIni: TwwDBSpinEdit
      Left = 62
      Top = 15
      Width = 38
      Height = 26
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 12.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      UsePictureMask = False
      OnChange = dbsMesIniChange
    end
  end
  object Pan01: TPanel
    Left = 214
    Top = 4
    Width = 363
    Height = 50
    Caption = 'Pan01'
    Color = 10207162
    TabOrder = 3
    object Label3: TLabel
      Left = 7
      Top = 1
      Width = 84
      Height = 17
      Caption = 'Procesado En : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object DbLUniPro: TwwDBLookupCombo
      Left = 8
      Top = 20
      Width = 55
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPROID'#9'4'#9'Codigo'#9'F'
        'UPRONOM'#9'50'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLUniProChange
    end
    object Panel9: TPanel
      Left = 62
      Top = 18
      Width = 299
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 1
      object dbeUproDes: TwwDBEdit
        Left = 3
        Top = 2
        Width = 294
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbeUproDesChange
      end
    end
  end
  object Pan02: TPanel
    Left = 7
    Top = 58
    Width = 730
    Height = 49
    Caption = 'Pan02'
    Color = 10207162
    TabOrder = 4
    object Label4: TLabel
      Left = 4
      Top = 2
      Width = 84
      Height = 17
      Caption = 'Unidad De Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 338
      Top = 3
      Width = 60
      Height = 17
      Caption = 'Use / Ugel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object DbLUniPag: TwwDBLookupCombo
      Left = 5
      Top = 20
      Width = 48
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPAGOID'#9'4'#9'Codigo'#9'F'
        'UPAGONOM'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLUniPagChange
    end
    object Panel2: TPanel
      Left = 54
      Top = 18
      Width = 271
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 1
      object dbeUpagDes: TwwDBEdit
        Left = 3
        Top = 2
        Width = 264
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbeUpagDesChange
      end
    end
    object DbLUses: TwwDBLookupCombo
      Left = 334
      Top = 20
      Width = 48
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USEID'#9'4'#9'Codigo'#9'F'
        'USENOM'#9'38'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsUSES
      LookupField = 'USEID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLUsesChange
    end
    object Panel3: TPanel
      Left = 382
      Top = 18
      Width = 345
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 3
      object dbeUses: TwwDBEdit
        Left = 3
        Top = 2
        Width = 340
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object BitGenMesPro: TBitBtn
    Left = 743
    Top = 77
    Width = 90
    Height = 26
    Cursor = crHandPoint
    Caption = 'Mostrar'
    TabOrder = 5
    OnClick = BitGenMesProClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333700000733333333F777773FF3333333007F0F70
      0333333773373377FF3333300FFF7FFF003333773F3333377FF33300F0FFFFF0
      F00337737333F37377F33707FFFF0FFFF70737F33337F33337FF300FFFFF0FFF
      FF00773F3337F333377F30707FFF0FFF70707F733337F333737F300FFFF09FFF
      FF0077F33377F33337733707FF0F9FFFF70737FF3737F33F37F33300F0FF9FF0
      F003377F7337F373773333300FFF9FFF00333377FF37F3377FF33300007F9F70
      000337777FF7FF77773333703070007030733373777777737333333333330333
      333333333337FF33333333333330003333333333337773333333}
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 593
    Top = 0
    Width = 144
    Height = 51
    Caption = 'Tipo Asociado'
    TabOrder = 6
    object rdbTipDo: TRadioButton
      Left = 8
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Docente'
      TabOrder = 0
      OnClick = rdbTipDoClick
    end
    object rdbTipCe: TRadioButton
      Left = 8
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Cesante'
      TabOrder = 1
      OnClick = rdbTipCeClick
    end
  end
  object BitPasGes: TBitBtn
    Left = 587
    Top = 486
    Width = 102
    Height = 27
    Cursor = crHandPoint
    Caption = 'Pasar Gesti'#243'n'
    TabOrder = 7
    OnClick = BitPasGesClick
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
  object grpProgress: TGroupBox
    Left = 376
    Top = 264
    Width = 89
    Height = 97
    Caption = 'En Progreso'
    TabOrder = 8
    Visible = False
    object Gauge1: TGauge
      Left = 7
      Top = 15
      Width = 76
      Height = 73
      ForeColor = clNavy
      Kind = gkPie
      Progress = 0
    end
  end
end
