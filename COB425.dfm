object FEditaDescarga: TFEditaDescarga
  Left = 275
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edita Datos de Autdisk'
  ClientHeight = 272
  ClientWidth = 544
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 20
    Top = 13
    Width = 505
    Height = 194
  end
  object Label7: TLabel
    Left = 47
    Top = 34
    Width = 50
    Height = 13
    Caption = 'Año / Mes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 47
    Top = 65
    Width = 64
    Height = 13
    Caption = 'Unid Proceso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 47
    Top = 132
    Width = 68
    Height = 13
    Caption = 'T.Recudación'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 47
    Top = 98
    Width = 51
    Height = 15
    Caption = 'Unid Pago'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object lblArchivo: TLabel
    Left = 47
    Top = 162
    Width = 41
    Height = 15
    Caption = 'Archivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 293
    Top = 162
    Width = 76
    Height = 15
    Caption = 'Nuevo Nombre'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object dblcdUPro: TwwDBLookupComboDlg
    Left = 122
    Top = 59
    Width = 62
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Unidad de Proceso'
    MaxWidth = 0
    MaxHeight = 209
    SearchDelay = 2
    Selected.Strings = (
      'UPROID'#9'3'#9'Codigo'#9'F'
      'UPRONOM'#9'75'#9'Nombre'#9'F')
    DataField = 'UPROID'
    DataSource = DM1.dsDetalle
    LookupField = 'UPROID'
    ParentFont = False
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    UseTFields = False
    OnExit = dblcdUProExit
  end
  object dblcdUPago: TwwDBLookupComboDlg
    Left = 122
    Top = 92
    Width = 62
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Unidad de Pago'
    MaxWidth = 0
    MaxHeight = 209
    SearchDelay = 2
    Selected.Strings = (
      'UPAGOID'#9'3'#9'Id'#9'F'
      'UPAGONOM'#9'65'#9'Unida de Pago'#9'F')
    DataField = 'UPAGOID'
    DataSource = DM1.dsDetalle
    LookupField = 'UPAGOID'
    ParentFont = False
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    UseTFields = False
  end
  object dbcTRecauda: TwwDBLookupCombo
    Left = 122
    Top = 126
    Width = 130
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    DataField = 'RECAUDA'
    DataSource = DM1.dsDetalle
    LookupField = 'RECAUDA'
    Options = [loColLines, loTitles]
    Style = csDropDownList
    ParentFont = False
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    SearchDelay = 2
    AllowClearKey = False
  end
  object dbeArchivo: TwwDBEdit
    Left = 122
    Top = 162
    Width = 130
    Height = 23
    DataField = 'ARCHIVO'
    DataSource = DM1.dsDetalle
    Enabled = False
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeAAMM: TwwDBEdit
    Left = 122
    Top = 28
    Width = 62
    Height = 23
    DataField = 'PERIODO'
    DataSource = DM1.dsDetalle
    Enabled = False
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object BitBtn1: TBitBtn
    Left = 388
    Top = 117
    Width = 113
    Height = 25
    Caption = 'Renombrar'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 239
    Top = 228
    Width = 113
    Height = 25
    Caption = 'Aplicar Cambio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object meRenombre: TMaskEdit
    Left = 380
    Top = 162
    Width = 131
    Height = 23
    TabOrder = 7
  end
  object BitBtn3: TBitBtn
    Left = 375
    Top = 228
    Width = 113
    Height = 25
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn3Click
  end
end
