object FImpDesOnp: TFImpDesOnp
  Left = 272
  Top = 216
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Importar Archivo'
  ClientHeight = 216
  ClientWidth = 454
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object gbDriver: TGroupBox
    Left = 6
    Top = 5
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
    Left = 357
    Top = 179
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 1
    OnClick = BitSalirClick
    Kind = bkClose
  end
  object BitCargaDatos: TBitBtn
    Left = 261
    Top = 180
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
end
