object FCalParaleloVencido: TFCalParaleloVencido
  Left = 515
  Top = 145
  BorderStyle = bsDialog
  Caption = 'Reporte de Calendario Paralelo / Vencido'
  ClientHeight = 487
  ClientWidth = 849
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbTipoReporte: TGroupBox
    Left = 0
    Top = 8
    Width = 193
    Height = 57
    Caption = 'Tipo de Reporte'
    TabOrder = 0
    object rbCalParalelo: TRadioButton
      Left = 8
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Cr'#233'ditos Paralelos'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbCalParaleloClick
    end
    object rbCalSaldoVencido: TRadioButton
      Left = 8
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Cr'#233'ditos Vencidos'
      TabOrder = 1
      OnClick = rbCalSaldoVencidoClick
    end
  end
  object gbFecha: TGroupBox
    Left = 0
    Top = 64
    Width = 193
    Height = 57
    Caption = 'Datos generados'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 9
      Height = 13
      Caption = 'Al'
    end
    object dtFecha: TEdit
      Left = 37
      Top = 20
      Width = 144
      Height = 19
      TabStop = False
      Color = 10207162
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object gbUnidadProceso: TGroupBox
    Left = 200
    Top = 8
    Width = 393
    Height = 57
    Caption = 'Unidad de Proceso'
    TabOrder = 2
    DesignSize = (
      393
      57)
    object dblcdUPro: TwwDBLookupComboDlg
      Left = 10
      Top = 20
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Unidad de Proceso'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdUProChange
    end
    object meUPro: TMaskEdit
      Left = 70
      Top = 20
      Width = 307
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object gbUnidadPago: TGroupBox
    Left = 200
    Top = 64
    Width = 393
    Height = 57
    Caption = 'Unidad de Pago'
    TabOrder = 3
    DesignSize = (
      393
      57)
    object dblcdUPago: TwwDBLookupComboDlg
      Left = 10
      Top = 20
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Unidad de Pago'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdUPagoChange
    end
    object meUPago: TMaskEdit
      Left = 70
      Top = 20
      Width = 307
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      ReadOnly = True
      TabOrder = 1
    end
  end
  object gbTipoDocente: TGroupBox
    Left = 600
    Top = 8
    Width = 137
    Height = 88
    Caption = 'Tipos de Docente'
    TabOrder = 4
    object rbDocentes: TRadioButton
      Left = 8
      Top = 16
      Width = 73
      Height = 17
      Caption = 'Docentes'
      TabOrder = 0
      OnClick = rbDocentesClick
    end
    object rbContratados: TRadioButton
      Left = 8
      Top = 32
      Width = 81
      Height = 17
      Caption = 'Contratados'
      TabOrder = 1
      OnClick = rbContratadosClick
    end
    object rbCesantes: TRadioButton
      Left = 8
      Top = 48
      Width = 73
      Height = 17
      Caption = 'Cesantes'
      TabOrder = 2
      OnClick = rbCesantesClick
    end
    object rbTodos: TRadioButton
      Left = 8
      Top = 64
      Width = 57
      Height = 17
      Caption = 'Todos'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = rbTodosClick
    end
  end
  object btnFiltrar: TBitBtn
    Left = 751
    Top = 95
    Width = 90
    Height = 26
    Caption = 'Filtrar'
    TabOrder = 5
    OnClick = btnFiltrarClick
    NumGlyphs = 2
  end
  object dbgResultado: TwwDBGrid
    Left = 7
    Top = 128
    Width = 834
    Height = 313
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 6
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    OnTitleButtonClick = dbgResultadoTitleButtonClick
  end
  object btnAExcel: TBitBtn
    Left = 638
    Top = 449
    Width = 80
    Height = 30
    Caption = 'A Excel'
    TabOrder = 7
    OnClick = btnAExcelClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object btnSalir: TBitBtn
    Left = 761
    Top = 449
    Width = 80
    Height = 30
    Caption = 'Cerrar'
    TabOrder = 8
    OnClick = btnSalirClick
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
end
