object fDesTelSgt: TfDesTelSgt
  Left = 225
  Top = 271
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Envio De La Siguiente Cuota'
  ClientHeight = 264
  ClientWidth = 544
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grbParametros: TGroupBox
    Left = 5
    Top = 2
    Width = 206
    Height = 46
    Caption = 'Periodo De Proceso'
    Enabled = False
    TabOrder = 0
    object lblNomMes: TLabel
      Left = 108
      Top = 19
      Width = 95
      Height = 18
      AutoSize = False
      Caption = 'DICIEMBRE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbsAnoIni: TwwDBSpinEdit
      Left = 4
      Top = 15
      Width = 58
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 2004.000000000000000000
      Value = 2004.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object dbsMesIni: TwwDBSpinEdit
      Left = 64
      Top = 15
      Width = 38
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      UsePictureMask = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 48
    Width = 540
    Height = 181
    TabOrder = 1
    object dtgSgtCuota: TwwDBGrid
      Left = 9
      Top = 15
      Width = 523
      Height = 159
      DisableThemesInTitle = False
      Selected.Strings = (
        'NUMERO'#9'15'#9'N'#250'mero~de Credito'
        'CRECUOTA'#9'10'#9'N'#250'mero~de Cuota'
        'CREFVEN'#9'10'#9'Fecha~Vencimiento'
        'CUOPAG'#9'15'#9'Cuota~Por Pagar'
        'CREESTADO'#9'20'#9'Cuota~Por Pagar'
        'FLAGVAR'#9'1'#9'Marcar'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgSgtCuotaDblClick
    end
  end
  object BitSalir: TBitBtn
    Left = 390
    Top = 235
    Width = 103
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 2
    OnClick = BitSalirClick
    Kind = bkClose
  end
  object BitDescueto: TBitBtn
    Left = 281
    Top = 235
    Width = 103
    Height = 27
    Cursor = crHandPoint
    Caption = 'Al Descuento'
    TabOrder = 3
    OnClick = BitDescuetoClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777770000000000007770330770000330777033077000033077703307700003
      30777033000000033077703333333333307770330000000330777030FFFFFFF0
      30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
      8077777CCC777700007777CCC77777777777777C777777777777}
  end
  object Panel1: TPanel
    Left = 216
    Top = 2
    Width = 321
    Height = 50
    TabOrder = 4
    object Shape1: TShape
      Left = 74
      Top = 24
      Width = 160
      Height = 22
    end
    object lblDescuento: TLabel
      Left = 172
      Top = 27
      Width = 57
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Color = clCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 80
      Top = 29
      Width = 95
      Height = 13
      Caption = 'Cuota Para Envio    '
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 70
      Height = 13
      Caption = 'Cuota Actual   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblActual: TLabel
      Left = 75
      Top = 3
      Width = 57
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 155
      Top = 6
      Width = 62
      Height = 13
      Caption = 'Selecci'#243'n     '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSeleccion: TLabel
      Left = 219
      Top = 3
      Width = 57
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
