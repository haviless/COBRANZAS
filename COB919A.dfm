object FHistCalifAsoc: TFHistCalifAsoc
  Left = 182
  Top = 208
  Width = 800
  Height = 550
  BorderIcons = [biSystemMenu]
  Caption = 'Historico de Calificacion de Asociados'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 792
    Height = 97
    Align = alTop
    Caption = 'Asociado'
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      792
      97)
    object Label4: TLabel
      Left = 152
      Top = 55
      Width = 82
      Height = 13
      Caption = 'Tipo Asociado'
    end
    object Label2: TLabel
      Left = 9
      Top = 14
      Width = 115
      Height = 13
      Caption = 'Apellidos y Nombres'
    end
    object Label3: TLabel
      Left = 10
      Top = 55
      Width = 35
      Height = 13
      Caption = 'D.N.I.'
    end
    object Label1: TLabel
      Left = 242
      Top = 66
      Width = 260
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 
        '* La Calificaci'#243'n que se muestra es calculada'#13#10'  en base al N'#250'me' +
        'ro de D'#237'as de Atraso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBuscar: TBitBtn
      Left = 397
      Top = 30
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBuscarClick
    end
    object BitProcesar: TBitBtn
      Left = 668
      Top = 10
      Width = 110
      Height = 26
      Caption = 'Procesar'
      TabOrder = 3
      OnClick = BitProcesarClick
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
    object edTipoAsoc: TEdit
      Left = 151
      Top = 68
      Width = 86
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edDNI: TEdit
      Left = 8
      Top = 68
      Width = 141
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtNomGen: TEdit
      Left = 8
      Top = 28
      Width = 385
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object GroupBox2: TGroupBox
      Left = 424
      Top = 15
      Width = 113
      Height = 44
      Caption = 'Periodo de Inicio'
      TabOrder = 1
      object sedAnhoInicio: TSpinEdit
        Left = 7
        Top = 14
        Width = 57
        Height = 22
        MaxValue = 2050
        MinValue = 2004
        TabOrder = 0
        Value = 2010
        OnChange = sedAnhoInicioChange
      end
      object sedMesInicio: TSpinEdit
        Left = 66
        Top = 14
        Width = 41
        Height = 22
        MaxValue = 12
        MinValue = 1
        TabOrder = 1
        Value = 1
        OnChange = sedAnhoInicioChange
      end
    end
    object GroupBox3: TGroupBox
      Left = 539
      Top = 15
      Width = 113
      Height = 44
      Caption = 'Periodo de Fin'
      TabOrder = 2
      object sedAnhoFin: TSpinEdit
        Left = 7
        Top = 14
        Width = 57
        Height = 22
        MaxValue = 2050
        MinValue = 2004
        TabOrder = 0
        Value = 2010
        OnChange = sedAnhoInicioChange
      end
      object sedMesFin: TSpinEdit
        Left = 66
        Top = 14
        Width = 41
        Height = 22
        MaxValue = 12
        MinValue = 1
        TabOrder = 1
        Value = 1
        OnChange = sedAnhoInicioChange
      end
    end
    object btnAExcel: TBitBtn
      Left = 668
      Top = 39
      Width = 110
      Height = 26
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
      Left = 668
      Top = 67
      Width = 110
      Height = 26
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
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 792
    Height = 426
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object dbChartHist: TDBChart
      Left = 241
      Top = 1
      Width = 550
      Height = 424
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Gradient.EndColor = 8404992
      Gradient.Visible = True
      Title.Font.Charset = ANSI_CHARSET
      Title.Font.Color = clWhite
      Title.Font.Height = -13
      Title.Font.Name = 'Microsoft Sans Serif'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        'Historico de Calificacion de Asociados')
      BottomAxis.LabelsAngle = 15
      BottomAxis.Title.Caption = 'Periodos'
      BottomAxis.Title.Font.Charset = ANSI_CHARSET
      BottomAxis.Title.Font.Color = clBlack
      BottomAxis.Title.Font.Height = -11
      BottomAxis.Title.Font.Name = 'Microsoft Sans Serif'
      BottomAxis.Title.Font.Style = [fsBold]
      LeftAxis.Title.Caption = 'D'#237'as de Atraso'
      LeftAxis.Title.Font.Charset = ANSI_CHARSET
      LeftAxis.Title.Font.Color = clBlack
      LeftAxis.Title.Font.Height = -11
      LeftAxis.Title.Font.Name = 'Microsoft Sans Serif'
      LeftAxis.Title.Font.Style = [fsBold]
      Legend.Visible = False
      View3D = False
      Align = alClient
      TabOrder = 0
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Style = smsLabelValue
        Marks.Visible = False
        SeriesColor = clRed
        LinePen.Width = 3
        Pointer.InflateMargins = False
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object dtgClfCar: TwwDBGrid
      Left = 1
      Top = 1
      Width = 240
      Height = 424
      DisableThemesInTitle = False
      Selected.Strings = (
        'PERIODO'#9'7'#9'Periodo'
        'CFC_F'#9'5'#9'Cod.~Calif.'
        'CFCDES_F'#9'10'#9'Descripcion~Calif.'
        'DIASTRANS'#9'7'#9'Dias de~Atrazo')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      OnCalcCellColors = dtgClfCarCalcCellColors
      OnDrawDataCell = dtgClfCarDrawDataCell
    end
  end
end
