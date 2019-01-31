object fImpTelTex: TfImpTelTex
  Left = 219
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Importar y Aplicar Texto'
  ClientHeight = 262
  ClientWidth = 456
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
  object gbDriver: TGroupBox
    Left = 6
    Top = 45
    Width = 441
    Height = 169
    TabOrder = 0
    object Label2: TLabel
      Left = 7
      Top = 127
      Width = 95
      Height = 13
      Caption = 'Archivo a  Importar  '
    end
    object DriveComboBox1: TDriveComboBox
      Left = 6
      Top = 11
      Width = 182
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 5
      Top = 35
      Width = 183
      Height = 90
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 194
      Top = 9
      Width = 238
      Height = 116
      ItemHeight = 13
      Mask = '*.TXT'
      TabOrder = 2
      OnClick = FileListBox1Click
    end
    object dbeNomArc: TwwDBEdit
      Left = 6
      Top = 142
      Width = 427
      Height = 21
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object BitSalir: TBitBtn
    Left = 349
    Top = 227
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 1
    OnClick = BitSalirClick
    Kind = bkClose
  end
  object BitCargaDatos: TBitBtn
    Left = 253
    Top = 228
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Caption = 'Importar'
    TabOrder = 2
    OnClick = BitCargaDatosClick
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
  object grbParametros: TGroupBox
    Left = 6
    Top = -1
    Width = 441
    Height = 50
    Caption = 'Periodo De Proceso'
    Enabled = False
    TabOrder = 3
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
        Width = 53
        Height = 13
        Caption = 'Importando'
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
  object grbProcesos: TGroupBox
    Left = 10
    Top = 219
    Width = 229
    Height = 37
    Caption = 'Procesando Informaci'#243'n'
    TabOrder = 4
    Visible = False
    object prbAvances: TProgressBar
      Left = 4
      Top = 14
      Width = 220
      Height = 16
      Min = 1
      Position = 1
      Step = 20
      TabOrder = 0
    end
  end
end
