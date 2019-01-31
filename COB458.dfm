object FAplCuotas: TFAplCuotas
  Left = 667
  Top = 249
  BorderStyle = bsDialog
  Caption = 'Proceso de Aplicaci'#243'n de cuotas '
  ClientHeight = 282
  ClientWidth = 514
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
  object btnCerrar: TBitBtn
    Left = 423
    Top = 247
    Width = 80
    Height = 30
    Caption = 'Cerrar'
    TabOrder = 0
    OnClick = btnCerrarClick
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
  object GroupBox1: TGroupBox
    Left = 9
    Top = 1
    Width = 494
    Height = 241
    Caption = 'Datos del descargo '
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 104
      Height = 13
      Caption = 'N'#250'mero de Operaci'#243'n'
    end
    object Label2: TLabel
      Left = 8
      Top = 96
      Width = 97
      Height = 13
      Caption = 'Fecha de Operaci'#243'n'
    end
    object Label3: TLabel
      Left = 117
      Top = 22
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label4: TLabel
      Left = 116
      Top = 95
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label5: TLabel
      Left = 8
      Top = 120
      Width = 60
      Height = 13
      Caption = 'Observaci'#243'n'
    end
    object Label6: TLabel
      Left = 116
      Top = 120
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label7: TLabel
      Left = 8
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object Label8: TLabel
      Left = 116
      Top = 48
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label9: TLabel
      Left = 8
      Top = 72
      Width = 34
      Height = 13
      Caption = 'Cuenta'
    end
    object Label10: TLabel
      Left = 116
      Top = 71
      Width = 3
      Height = 13
      Caption = ':'
    end
    object edtNumOpe: TEdit
      Left = 124
      Top = 19
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 0
    end
    object dbdFecOpe: TwwDBDateTimePicker
      Left = 124
      Top = 90
      Width = 92
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 5
    end
    object btnprocesar: TBitBtn
      Left = 412
      Top = 203
      Width = 80
      Height = 30
      Caption = 'Procesar'
      TabOrder = 7
      OnClick = btnprocesarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object edtCreObs: TEdit
      Left = 124
      Top = 114
      Width = 359
      Height = 82
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 512
      TabOrder = 6
    end
    object dblcdBancoId: TwwDBLookupComboDlg
      Left = 124
      Top = 42
      Width = 47
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsBancos
      LookupField = 'BANCOID'
      MaxLength = 2
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdBancoIdExit
    end
    object edtBancoDes: TEdit
      Left = 176
      Top = 42
      Width = 146
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 15
      TabOrder = 2
    end
    object dblcdccbcoid: TwwDBLookupComboDlg
      Left = 124
      Top = 66
      Width = 127
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsCtasBco
      LookupField = 'CCBCOID'
      MaxLength = 2
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdccbcoidExit
    end
    object edtccbcoid: TEdit
      Left = 256
      Top = 66
      Width = 228
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 15
      TabOrder = 4
    end
  end
end
