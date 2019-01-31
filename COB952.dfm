object fAplCroTel: TfAplCroTel
  Left = 259
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Aplicar Descuentos a Cronogramas De Pago '
  ClientHeight = 176
  ClientWidth = 452
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grbParametros: TGroupBox
    Left = 6
    Top = -1
    Width = 441
    Height = 50
    Caption = 'Periodo De Proceso'
    Enabled = False
    TabOrder = 0
    object lblNomMes: TLabel
      Left = 105
      Top = 23
      Width = 96
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
      Top = 19
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
      Left = 65
      Top = 19
      Width = 36
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
    object pnlProceso: TPanel
      Left = 307
      Top = 17
      Width = 126
      Height = 25
      Enabled = False
      TabOrder = 2
      object Label1: TLabel
        Left = 6
        Top = 6
        Width = 64
        Height = 13
        Caption = 'Descargando'
      end
      object Edit2: TEdit
        Left = 74
        Top = 2
        Width = 49
        Height = 21
        TabOrder = 0
        Text = '0%'
      end
    end
  end
  object grbParDes: TGroupBox
    Left = 6
    Top = 54
    Width = 441
    Height = 84
    Caption = 'Parametros Para Descarga'
    TabOrder = 1
    object fcLabel4: TfcLabel
      Left = 8
      Top = 16
      Width = 61
      Height = 15
      Caption = 'N'#250'mero De'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcLabel5: TfcLabel
      Left = 124
      Top = 16
      Width = 51
      Height = 15
      Caption = 'Fecha De'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcLabel6: TfcLabel
      Left = 245
      Top = 32
      Width = 139
      Height = 15
      Caption = 'Monto Total  Recuperado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcLabel1: TfcLabel
      Left = 8
      Top = 32
      Width = 66
      Height = 15
      Caption = 'Documento '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcLabel2: TfcLabel
      Left = 124
      Top = 32
      Width = 63
      Height = 15
      Caption = 'Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object DtpFecPag: TwwDBDateTimePicker
      Left = 123
      Top = 50
      Width = 107
      Height = 24
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 1
      DisplayFormat = 'DD/MM/YYYY'
    end
    object EdtDocPag: TEdit
      Left = 8
      Top = 50
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
    end
    object dbeMtoRec: TwwDBEdit
      Left = 244
      Top = 50
      Width = 184
      Height = 27
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeMtoRecExit
      OnKeyPress = dbeMtoRecKeyPress
    end
  end
  object BitDesCargaDatos: TBitBtn
    Left = 249
    Top = 144
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Caption = 'Descargar'
    TabOrder = 2
    OnClick = BitDesCargaDatosClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitSalir: TBitBtn
    Left = 345
    Top = 144
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 3
    OnClick = BitSalirClick
    Kind = bkClose
  end
end
