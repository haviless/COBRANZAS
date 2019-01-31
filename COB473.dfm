object FInsAso: TFInsAso
  Left = 360
  Top = 84
  BorderStyle = bsDialog
  Caption = 'Insertar asociados a reprogramar'
  ClientHeight = 606
  ClientWidth = 640
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbporarchivo: TGroupBox
    Left = 10
    Top = 9
    Width = 617
    Height = 584
    Color = 10207162
    ParentColor = False
    TabOrder = 0
    object btncargaarchivo: TBitBtn
      Left = 432
      Top = 143
      Width = 101
      Height = 25
      Caption = '&Cargar previo'
      TabOrder = 1
      OnClick = btncargaarchivoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
    object dbgimporta: TwwDBGrid
      Left = 8
      Top = 175
      Width = 598
      Height = 223
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOID'#9'10'#9'C'#243'digo~derrama'#9#9
        'ASODNI'#9'8'#9'Documento~de identidad'#9#9
        'ASOCODMOD'#9'10'#9'C'#243'digo~modular'#9#9
        'ASOAPENOMDNI'#9'45'#9'Apellidos y nombre(s)'#9#9
        'ASOTIPID'#9'2'#9'Tipo~asociado'#9#9
        'UPROID'#9'3'#9'Unidad de~proceso'#9#9
        'UPAGOID'#9'3'#9'Unidad de~pago'#9#9
        'USEID'#9'3'#9'Unidad de~gesti'#243'n'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsImporta
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
    object btnImporta: TBitBtn
      Left = 422
      Top = 546
      Width = 101
      Height = 25
      Caption = '&Importar'
      Enabled = False
      TabOrder = 4
      OnClick = btnImportaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
    object btnsalir: TBitBtn
      Left = 533
      Top = 546
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 5
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
    object gbcargaarchivo: TGroupBox
      Left = 9
      Top = 11
      Width = 416
      Height = 159
      Caption = ' Seleccione archivo a reprogramar '
      TabOrder = 0
      object DriveComboBox: TDriveComboBox
        Left = 8
        Top = 19
        Width = 145
        Height = 19
        DirList = DirectoryListBox
        TabOrder = 0
      end
      object DirectoryListBox: TDirectoryListBox
        Left = 8
        Top = 52
        Width = 145
        Height = 97
        FileList = FileListBox
        ItemHeight = 16
        TabOrder = 1
      end
      object FileListBox: TFileListBox
        Left = 160
        Top = 18
        Width = 249
        Height = 131
        ItemHeight = 13
        Mask = '*.xls'
        TabOrder = 2
      end
    end
    object gbanomesdif: TGroupBox
      Left = 6
      Top = 530
      Width = 188
      Height = 46
      Caption = ' A'#241'o y mes a reprogramar '
      TabOrder = 3
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
      object meanodif: TMaskEdit
        Left = 43
        Top = 18
        Width = 39
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        MaxLength = 4
        TabOrder = 0
        OnExit = meanodifExit
        OnKeyPress = meanodifKeyPress
      end
      object memesdif: TMaskEdit
        Left = 130
        Top = 18
        Width = 33
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        MaxLength = 2
        TabOrder = 1
        OnExit = memesdifExit
        OnKeyPress = memesdifKeyPress
      end
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 403
      Width = 448
      Height = 124
      Caption = ' Motivo del diferimento '
      TabOrder = 6
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
  end
  object dsImporta: TDataSource
    DataSet = cdsImporta
    Left = 38
    Top = 232
  end
  object cdsImporta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PERCUOVENREP'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASODNI'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ASOCODMOD'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASOAPENOMDNI'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'ASOTIPID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'UPROID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UPAGOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'USEID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CREDID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CRECUOTA'
        DataType = ftInteger
      end
      item
        Name = 'CREFVEN'
        DataType = ftDate
      end
      item
        Name = 'CREAMORT'
        DataType = ftCurrency
      end
      item
        Name = 'CREINTERES'
        DataType = ftCurrency
      end
      item
        Name = 'CREFLAT'
        DataType = ftCurrency
      end
      item
        Name = 'MONPACDESGRAV'
        DataType = ftCurrency
      end
      item
        Name = 'CREMTO'
        DataType = ftCurrency
      end
      item
        Name = 'CRECAPITAL'
        DataType = ftCurrency
      end
      item
        Name = 'CREMTOINT'
        DataType = ftCurrency
      end
      item
        Name = 'CREMTOFLAT'
        DataType = ftCurrency
      end
      item
        Name = 'MONCOBDESGRAV'
        DataType = ftCurrency
      end
      item
        Name = 'CREMTOCOB'
        DataType = ftCurrency
      end
      item
        Name = 'CREESTID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CREESTADO'
        DataType = ftString
        Size = 22
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 30
    Top = 224
    Data = {
      150300009619E0BD01000000180000001800000000000300000015030C504552
      43554F56454E5245500100490000000100055749445448020002000600054153
      4F49440100490000000100055749445448020002000A000641534F444E490100
      4900000001000557494454480200020008000941534F434F444D4F4401004900
      00000100055749445448020002000A000C41534F4150454E4F4D444E49010049
      0000000100055749445448020002005A000841534F5449504944010049000000
      0100055749445448020002000200065550524F49440100490000000100055749
      44544802000200030007555041474F4944010049000000010005574944544802
      0002000300055553454944010049000000010005574944544802000200030006
      4352454449440100490000000100055749445448020002000F00084352454355
      4F54410400010000000000074352454656454E04000600000000000843524541
      4D4F5254080004000000010007535542545950450200490006004D6F6E657900
      0A435245494E5445524553080004000000010007535542545950450200490006
      004D6F6E65790007435245464C41540800040000000100075355425459504502
      00490006004D6F6E6579000D4D4F4E5041434445534752415608000400000001
      0007535542545950450200490006004D6F6E657900064352454D544F08000400
      0000010007535542545950450200490006004D6F6E6579000A43524543415049
      54414C080004000000010007535542545950450200490006004D6F6E65790009
      4352454D544F494E54080004000000010007535542545950450200490006004D
      6F6E6579000A4352454D544F464C415408000400000001000753554254595045
      0200490006004D6F6E6579000D4D4F4E434F4244455347524156080004000000
      010007535542545950450200490006004D6F6E657900094352454D544F434F42
      080004000000010007535542545950450200490006004D6F6E65790008435245
      4553544944010049000000010005574944544802000200020009435245455354
      41444F01004900000001000557494454480200020016000000}
  end
end
