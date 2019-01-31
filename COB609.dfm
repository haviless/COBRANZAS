object FGraficoFSC: TFGraficoFSC
  Left = 429
  Top = 167
  Width = 800
  Height = 600
  Caption = 'Grafico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object dbChartHist: TDBChart
    Left = 0
    Top = 73
    Width = 784
    Height = 448
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = 16767152
    Gradient.Visible = True
    MarginBottom = 1
    MarginLeft = 1
    MarginRight = 1
    MarginTop = 1
    Title.Font.Charset = ANSI_CHARSET
    Title.Font.Color = clNavy
    Title.Font.Height = -13
    Title.Font.Name = 'Microsoft Sans Serif'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'TITULO DEL GRAFICO')
    BottomAxis.LabelsAngle = 15
    BottomAxis.Title.Caption = 'Meses'
    BottomAxis.Title.Font.Charset = ANSI_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -11
    BottomAxis.Title.Font.Name = 'Microsoft Sans Serif'
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.Title.Caption = 'Importes en Nuevos Soles'
    LeftAxis.Title.Font.Charset = ANSI_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Microsoft Sans Serif'
    LeftAxis.Title.Font.Style = [fsBold]
    View3D = False
    Align = alClient
    TabOrder = 0
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 11468153
      Title = 'COBRADO'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 521
    Width = 784
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      784
      41)
    object btnSalir: TBitBtn
      Left = 702
      Top = 8
      Width = 75
      Height = 25
      Anchors = []
      Caption = 'Cerrar'
      TabOrder = 0
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
  object pnlFiltro: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 73
    Align = alTop
    TabOrder = 2
    object rbTipo: TRadioGroup
      Left = 8
      Top = 3
      Width = 617
      Height = 46
      Columns = 8
      ItemIndex = 7
      Items.Strings = (
        'BAN'
        'BEN'
        'EFE'
        'PLA'
        'REG'
        'ONP'
        'CXC'
        'TODOS')
      TabOrder = 0
      OnClick = rbTipoClick
    end
    object cbEti: TCheckBox
      Left = 688
      Top = 22
      Width = 73
      Height = 17
      Caption = 'Etiquetas'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbEtiClick
    end
  end
end
