object FDescTelahorro: TFDescTelahorro
  Left = 211
  Top = 149
  BorderStyle = bsDialog
  Caption = 'DESCARGA DE TELEAHORRO'
  ClientHeight = 387
  ClientWidth = 464
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object fcLabel2: TfcLabel
    Left = 10
    Top = 3
    Width = 169
    Height = 15
    Align = alCustom
    Caption = 'DESCARGA DE TELEAHORRO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object gbDriver: TGroupBox
    Left = 16
    Top = 166
    Width = 441
    Height = 168
    Caption = ' Informaci'#243'n del Credipago'
    TabOrder = 0
    object DriveComboBox1: TDriveComboBox
      Left = 8
      Top = 16
      Width = 148
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 7
      Top = 38
      Width = 149
      Height = 92
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 165
      Top = 16
      Width = 153
      Height = 113
      ItemHeight = 13
      Mask = '*.TXT'
      TabOrder = 2
      OnClick = FileListBox1Click
    end
    object dbeNomArc: TwwDBEdit
      Left = 6
      Top = 136
      Width = 427
      Height = 21
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Edit1: TEdit
    Left = 288
    Top = 0
    Width = 33
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 24
    Width = 313
    Height = 137
    Caption = ' Datos de la descarga '
    Color = 13165023
    ParentColor = False
    TabOrder = 2
    object fcLabel1: TfcLabel
      Left = 16
      Top = 21
      Width = 31
      Height = 15
      Caption = 'A'#241'o :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcLabel4: TfcLabel
      Left = 16
      Top = 48
      Width = 133
      Height = 15
      Caption = 'N'#250'mero del Documento :'
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
      Left = 16
      Top = 74
      Width = 123
      Height = 15
      Caption = 'Fecha del Documento :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcLabel3: TfcLabel
      Left = 104
      Top = 21
      Width = 31
      Height = 15
      Caption = 'Mes :'
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
      Left = 16
      Top = 104
      Width = 75
      Height = 15
      Caption = 'Monto Total :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object dbseAno: TwwDBSpinEdit
      Left = 50
      Top = 19
      Width = 49
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 2006.000000000000000000
      MinValue = 2005.000000000000000000
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object dbdtpFecPag: TwwDBDateTimePicker
      Left = 154
      Top = 72
      Width = 79
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object dbeDocPag: TwwDBEdit
      Left = 154
      Top = 46
      Width = 79
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbseMes: TwwDBSpinEdit
      Left = 136
      Top = 19
      Width = 49
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 3
      UnboundDataType = wwDefault
    end
    object meMontoTotal: TMaskEdit
      Left = 154
      Top = 98
      Width = 76
      Height = 21
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      MaxLength = 12
      ParentBiDiMode = False
      TabOrder = 4
      OnExit = meMontoTotalExit
    end
  end
  object btnImporta: TBitBtn
    Left = 16
    Top = 347
    Width = 73
    Height = 33
    Caption = 'Importa'
    TabOrder = 3
    OnClick = btnImportaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
  end
  object btnDescarga: TBitBtn
    Left = 265
    Top = 347
    Width = 73
    Height = 33
    Caption = 'Descarga'
    TabOrder = 4
    OnClick = btnDescargaClick
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
  object btnValida: TBitBtn
    Left = 96
    Top = 347
    Width = 73
    Height = 33
    Caption = 'Valida'
    TabOrder = 5
    OnClick = btnValidaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
      33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
      FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
      FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
      FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
      FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
      FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
      3333333773FFFF77333333333FBFBF3333333333377777333333}
    NumGlyphs = 2
  end
  object btnSalir: TBitBtn
    Left = 350
    Top = 347
    Width = 73
    Height = 33
    Caption = 'Salir'
    TabOrder = 6
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
  object BitBtn1: TBitBtn
    Left = 180
    Top = 347
    Width = 73
    Height = 33
    Caption = 'Corrige'
    TabOrder = 7
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object Edit2: TEdit
    Left = 328
    Top = 136
    Width = 49
    Height = 21
    TabOrder = 8
    Text = 'Edit2'
    Visible = False
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 328
    Top = 32
  end
end
