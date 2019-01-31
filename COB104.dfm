object FMantUPagoAdd: TFMantUPagoAdd
  Left = 251
  Top = 258
  BorderStyle = bsDialog
  Caption = 'Mantenimiento de Unidad de Pago'
  ClientHeight = 176
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pcIngreso: TPageControl
    Left = 0
    Top = 0
    Width = 527
    Height = 135
    ActivePage = tsBasico
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object tsBasico: TTabSheet
      Caption = 'Unidad de Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      object Label2: TLabel
        Left = 32
        Top = 59
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 10
        Top = 84
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'Abreviatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 37
        Top = 35
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDepartamento: TLabel
        Left = 50
        Top = 10
        Width = 28
        Height = 13
        Caption = 'Dpto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edNombre: TEdit
        Left = 80
        Top = 56
        Width = 345
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 65
        TabOrder = 3
      end
      object edAbreviatura: TEdit
        Left = 80
        Top = 80
        Width = 193
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 15
        TabOrder = 4
      end
      object edCodigo: TEdit
        Left = 80
        Top = 32
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 2
        TabOrder = 2
      end
      object dblcdDepartamento: TwwDBLookupComboDlg
        Left = 80
        Top = 7
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Departamento'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsQry2MantUgel
        LookupField = 'DPTOID'
        Enabled = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdDepartamentoChange
      end
      object meDepartamento: TMaskEdit
        Left = 145
        Top = 7
        Width = 250
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 135
    Width = 527
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnAdd: TBitBtn
      Left = 242
      Top = 9
      Width = 79
      Height = 25
      Caption = 'Insertar'
      TabOrder = 0
      OnClick = btnAddClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object btnCancelar: TBitBtn
      Left = 330
      Top = 9
      Width = 79
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 2
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
    object btnEdit: TBitBtn
      Left = 242
      Top = 9
      Width = 79
      Height = 25
      Caption = 'Actualizar'
      TabOrder = 1
      OnClick = btnEditClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
end
