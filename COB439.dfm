object Fdescuerecbconac: TFdescuerecbconac
  Left = 155
  Top = 240
  BorderStyle = bsDialog
  Caption = 
    'Descargo de informaci'#243'n de la cuenta recaudadora Banco de la Nac' +
    'i'#243'n'
  ClientHeight = 158
  ClientWidth = 454
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object gbDriver: TGroupBox
    Left = 6
    Top = 5
    Width = 441
    Height = 145
    Caption = ' Informaci'#243'n a descargar'
    TabOrder = 0
    object DriveComboBox1: TDriveComboBox
      Left = 8
      Top = 16
      Width = 150
      Height = 19
      DirList = DirectoryListBox1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 8
      Top = 40
      Width = 145
      Height = 89
      FileList = FileListBox1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 168
      Top = 16
      Width = 153
      Height = 105
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      Mask = '*.TXT'
      ParentFont = False
      TabOrder = 2
    end
    object btnprocesar: TBitBtn
      Left = 344
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Procesar'
      TabOrder = 3
      OnClick = btnprocesarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object btnSalir: TBitBtn
      Left = 344
      Top = 64
      Width = 81
      Height = 33
      Caption = 'Salir'
      TabOrder = 4
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
    object Edit1: TEdit
      Left = 348
      Top = 112
      Width = 33
      Height = 21
      TabOrder = 5
      Text = 'Edit1'
      Visible = False
    end
  end
end
