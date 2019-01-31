object FRegDetAso: TFRegDetAso
  Left = 463
  Top = 210
  BorderStyle = bsDialog
  Caption = 'Registro de Ugeles a reprogramar'
  ClientHeight = 312
  ClientWidth = 475
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbporgrupo: TGroupBox
    Left = 8
    Top = 4
    Width = 457
    Height = 299
    Caption = ' Selecci'#243'n en grupo '
    Color = 10207162
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 28
      Width = 85
      Height = 13
      Caption = 'Tipo de asociado:'
    end
    object Label2: TLabel
      Left = 6
      Top = 51
      Width = 93
      Height = 13
      Caption = 'Unidad de proceso:'
    end
    object Label3: TLabel
      Left = 6
      Top = 75
      Width = 82
      Height = 13
      Caption = 'Unidad de pago: '
    end
    object Label4: TLabel
      Left = 6
      Top = 100
      Width = 89
      Height = 13
      Caption = 'Unidad de gesti'#243'n:'
    end
    object dblcdTipAso: TwwDBLookupComboDlg
      Left = 102
      Top = 24
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTAso
      LookupField = 'ASOTIPID'
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdTipAsoExit
    end
    object dblcdUniPro: TwwDBLookupComboDlg
      Left = 102
      Top = 48
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      MaxLength = 3
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdUniProExit
    end
    object dblcdUniPag: TwwDBLookupComboDlg
      Left = 102
      Top = 72
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      MaxLength = 2
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdUniPagExit
    end
    object dblcdUniGes: TwwDBLookupComboDlg
      Left = 102
      Top = 96
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUSES
      LookupField = 'USEID'
      MaxLength = 2
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdUniGesExit
    end
    object btnAnadir: TBitBtn
      Left = 294
      Top = 250
      Width = 75
      Height = 25
      Caption = '&A'#241'adir'
      TabOrder = 6
      OnClick = btnAnadirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object edtDesUniPro: TEdit
      Left = 157
      Top = 48
      Width = 295
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 7
      OnChange = edtDesUniProChange
    end
    object edtDesUniPag: TEdit
      Left = 157
      Top = 72
      Width = 295
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 8
      OnChange = edtDesUniPagChange
    end
    object edtDesUniGes: TEdit
      Left = 157
      Top = 96
      Width = 295
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 9
    end
    object edtDesTipAso: TEdit
      Left = 157
      Top = 24
      Width = 121
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 10
    end
    object BitBtn3: TBitBtn
      Left = 378
      Top = 249
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 11
      OnClick = BitBtn3Click
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
    object gbmotdif: TGroupBox
      Left = 4
      Top = 121
      Width = 448
      Height = 124
      Caption = ' Motivo del diferimento '
      TabOrder = 4
      object Label7: TLabel
        Left = 5
        Top = 20
        Width = 70
        Height = 13
        Caption = 'Tipo de motivo'
      end
      object Label8: TLabel
        Left = 5
        Top = 47
        Width = 73
        Height = 13
        Caption = 'Sub tipo motivo'
      end
      object Label9: TLabel
        Left = 5
        Top = 70
        Width = 84
        Height = 13
        Caption = 'Detalle del motivo'
      end
      object memotdif: TMaskEdit
        Left = 5
        Top = 96
        Width = 438
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        Enabled = False
        MaxLength = 80
        TabOrder = 0
      end
      object edtdestipmotdifabr: TEdit
        Left = 181
        Top = 18
        Width = 262
        Height = 21
        AutoSize = False
        BorderStyle = bsNone
        Enabled = False
        TabOrder = 1
        OnChange = edtdestipmotdifabrChange
      end
      object edtdesabrsubmot: TEdit
        Left = 181
        Top = 42
        Width = 262
        Height = 21
        AutoSize = False
        BorderStyle = bsNone
        Enabled = False
        TabOrder = 2
        OnChange = edtdesabrsubmotChange
      end
      object edtdesabrmot: TEdit
        Left = 181
        Top = 66
        Width = 262
        Height = 21
        AutoSize = False
        BorderStyle = bsNone
        Enabled = False
        TabOrder = 3
      end
      object dblcdcodtipmot: TwwDBLookupComboDlg
        Left = 101
        Top = 18
        Width = 41
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsDLabo
        LookupField = 'CODMOTDIF'
        MaxLength = 2
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdcodtipmotExit
      end
      object dblcdcodsubtipmot: TwwDBLookupComboDlg
        Left = 101
        Top = 42
        Width = 58
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsDFam
        LookupField = 'CODSUBMOTDIF'
        MaxLength = 4
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdcodsubtipmotExit
      end
      object dblcdcodmot: TwwDBLookupComboDlg
        Left = 101
        Top = 66
        Width = 74
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsDSocioE
        LookupField = 'CODMOTDIF'
        MaxLength = 6
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdcodmotExit
      end
    end
    object gbAnoMesDif: TGroupBox
      Left = 5
      Top = 246
      Width = 188
      Height = 46
      Caption = ' A'#241'o y mes a reprogramar'
      TabOrder = 5
      object Label5: TLabel
        Left = 12
        Top = 21
        Width = 22
        Height = 13
        Caption = 'A'#241'o:'
      end
      object Label6: TLabel
        Left = 100
        Top = 21
        Width = 23
        Height = 13
        Caption = 'Mes:'
      end
      object meAnoDif: TMaskEdit
        Left = 43
        Top = 18
        Width = 39
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        MaxLength = 4
        TabOrder = 0
        OnExit = meAnoDifExit
        OnKeyPress = meAnoDifKeyPress
      end
      object meMesDif: TMaskEdit
        Left = 130
        Top = 18
        Width = 33
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        MaxLength = 2
        TabOrder = 1
        OnExit = meMesDifExit
        OnKeyPress = meMesDifKeyPress
      end
    end
    object btneliminar: TBitBtn
      Left = 210
      Top = 250
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 12
      OnClick = btneliminarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
end
