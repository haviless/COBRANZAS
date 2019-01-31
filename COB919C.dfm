object FPie: TFPie
  Left = 648
  Top = 180
  Width = 552
  Height = 444
  Caption = 'Grafico Porcentual %'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 536
    Height = 406
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Gradient.EndColor = 16755027
    Gradient.Visible = True
    LeftWall.Brush.Color = clWhite
    Title.Font.Charset = ANSI_CHARSET
    Title.Font.Color = clWhite
    Title.Font.Height = -11
    Title.Font.Name = 'Microsoft Sans Serif'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    Chart3DPercent = 55
    ClipPoints = False
    Frame.Visible = False
    Legend.TextStyle = ltsLeftPercent
    View3DOptions.Elevation = 315
    View3DOptions.HorizOffset = 19
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    TabOrder = 0
    object btnSalir: TBitBtn
      Left = 456
      Top = 374
      Width = 80
      Height = 30
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
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelPercentTotal
      Marks.Visible = False
      SeriesColor = clRed
      Circled = True
      OtherSlice.Text = 'Other'
      PiePen.Visible = False
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loAscending
    end
  end
end
