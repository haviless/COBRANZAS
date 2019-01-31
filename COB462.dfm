object fDatosPadron: TfDatosPadron
  Left = 517
  Top = 402
  Width = 860
  Height = 440
  Caption = 'Datos de Padr'#243'n'
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
  object dbgDatos: TwwDBGrid
    Left = 8
    Top = 67
    Width = 826
    Height = 274
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsAsoBanAct
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgDatosDblClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 6
    Width = 826
    Height = 57
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 17
      Top = 8
      Width = 74
      Height = 13
      Caption = 'Codigo Modular'
    end
    object Label2: TLabel
      Left = 137
      Top = 8
      Width = 95
      Height = 13
      Caption = 'Apellidos y Nombres'
    end
    object Label9: TLabel
      Left = 473
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Tipo Asociado'
    end
    object wwDBEdit2: TwwDBEdit
      Left = 130
      Top = 25
      Width = 311
      Height = 21
      DataField = 'ASOAPENOM'
      DataSource = DM1.dsRegCob
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 10
      Top = 25
      Width = 95
      Height = 21
      DataField = 'ASOCODMOD'
      DataSource = DM1.dsRegCob
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit10: TwwDBEdit
      Left = 487
      Top = 25
      Width = 41
      Height = 21
      DataField = 'ASOTIPID'
      DataSource = DM1.dsAsoBanAct
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 347
    Width = 826
    Height = 51
    TabOrder = 2
    object btncerrar: TBitBtn
      Left = 730
      Top = 11
      Width = 80
      Height = 30
      Caption = 'Cerrar'
      TabOrder = 0
      OnClick = btncerrarClick
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
    object btnCargo: TBitBtn
      Left = 19
      Top = 11
      Width = 135
      Height = 30
      Caption = 'Actualizar Cargo'
      TabOrder = 1
      OnClick = btnCargoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555FFFFFFFFFF5F5557777777777505555777777777757F55555555555555
        055555555555FF5575F555555550055030555555555775F7F7F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        305555577F555557F7F5550E0BFBFB003055557575F55577F7F550EEE0BFB0B0
        305557FF575F5757F7F5000EEE0BFBF03055777FF575FFF7F7F50000EEE00000
        30557777FF577777F7F500000E05555BB05577777F75555777F5500000555550
        3055577777555557F7F555000555555999555577755555577755}
      NumGlyphs = 2
    end
  end
end
