object FUnirDBF: TFUnirDBF
  Left = 225
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Unir Varios Archivo en Uno'
  ClientHeight = 553
  ClientWidth = 790
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlOrigen: TPanel
    Left = 4
    Top = 7
    Width = 782
    Height = 250
    BevelInner = bvLowered
    Color = 10207162
    TabOrder = 0
    object Label3: TLabel
      Left = 23
      Top = 48
      Width = 23
      Height = 15
      Caption = 'USE'
    end
    object Label1: TLabel
      Left = 36
      Top = 11
      Width = 95
      Height = 19
      Caption = 'Archivo Origen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 19
      Top = 221
      Width = 48
      Height = 15
      Caption = 'Registros'
    end
    object Bevel1: TBevel
      Left = 5
      Top = 43
      Width = 159
      Height = 4
    end
    object Bevel3: TBevel
      Left = 5
      Top = 206
      Width = 159
      Height = 4
    end
    object Bevel5: TBevel
      Left = 5
      Top = 112
      Width = 159
      Height = 4
    end
    object Label6: TLabel
      Left = 44
      Top = 132
      Width = 81
      Height = 15
      Caption = 'Dividir Archivo'
      Visible = False
    end
    object spdSubRegion: TSpeedButton
      Left = 26
      Top = 147
      Width = 116
      Height = 26
      Caption = 'Dividir archivo'
      Flat = True
      OnClick = spdSubRegionClick
    end
    object dblcdUSE: TwwDBLookupComboDlg
      Left = 10
      Top = 68
      Width = 54
      Height = 23
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'USE'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUSES
      LookupField = 'USEID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object btnAnadir: TBitBtn
      Left = 69
      Top = 68
      Width = 94
      Height = 25
      Caption = 'Anadir USE'
      TabOrder = 1
      OnClick = btnAnadirClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bbtnVerDbf: TBitBtn
      Left = 168
      Top = 9
      Width = 28
      Height = 25
      TabOrder = 2
      OnClick = bbtnVerDbfClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object dbgPrevio: TwwDBGrid
      Left = 167
      Top = 39
      Width = 599
      Height = 200
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 15792632
      DataSource = DM1.ds1
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = True
    end
    object dbeReg1: TwwDBEdit
      Left = 70
      Top = 218
      Width = 75
      Height = 23
      ReadOnly = True
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtName: TEdit
      Left = 205
      Top = 11
      Width = 500
      Height = 23
      TabOrder = 5
    end
  end
  object BitBtn1: TBitBtn
    Left = 677
    Top = 521
    Width = 84
    Height = 29
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object pnlDestino: TPanel
    Left = 4
    Top = 268
    Width = 782
    Height = 250
    BevelInner = bvLowered
    Color = 10207162
    TabOrder = 2
    object Label4: TLabel
      Left = 33
      Top = 11
      Width = 100
      Height = 19
      Caption = 'Archivo Destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 223
      Width = 48
      Height = 15
      Caption = 'Registros'
    end
    object Bevel4: TBevel
      Left = 5
      Top = 205
      Width = 159
      Height = 4
    end
    object Bevel2: TBevel
      Left = 5
      Top = 39
      Width = 159
      Height = 4
    end
    object wwDBGrid1: TwwDBGrid
      Left = 167
      Top = 38
      Width = 600
      Height = 200
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 15792632
      DataSource = dsDestino
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = True
    end
    object dbeReg2: TwwDBEdit
      Left = 70
      Top = 218
      Width = 75
      Height = 23
      ReadOnly = True
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtNewFile: TEdit
      Left = 205
      Top = 11
      Width = 104
      Height = 23
      TabOrder = 2
    end
    object btnTransf: TBitBtn
      Left = 42
      Top = 166
      Width = 80
      Height = 25
      Caption = 'Transferir'
      TabOrder = 3
      OnClick = btnTransfClick
    end
    object BitBtn2: TBitBtn
      Left = 168
      Top = 9
      Width = 28
      Height = 25
      TabOrder = 4
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object edtRutaNewFile: TEdit
      Left = 316
      Top = 11
      Width = 450
      Height = 23
      Enabled = False
      TabOrder = 5
    end
  end
  object pnlDirec: TPanel
    Left = 225
    Top = 135
    Width = 277
    Height = 275
    BevelInner = bvLowered
    BevelWidth = 2
    Color = clInfoBk
    TabOrder = 3
    Visible = False
    object Label7: TLabel
      Left = 24
      Top = 7
      Width = 109
      Height = 13
      Caption = 'Destino de Archivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 19
      Top = 192
      Width = 70
      Height = 15
      Caption = 'Dividido por :'
    end
    object rgdTipFile: TRadioGroup
      Left = 26
      Top = 118
      Width = 101
      Height = 69
      Caption = 'Dividor por:'
      ItemIndex = 0
      Items.Strings = (
        'Sub-Regi'#243'n'
        'Regi'#243'n')
      TabOrder = 3
      Visible = False
    end
    object BitBtn6: TBitBtn
      Left = 198
      Top = 237
      Width = 75
      Height = 25
      Caption = 'Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 118
      Top = 238
      Width = 75
      Height = 25
      Caption = 'Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn7Click
    end
    object doDestino: TDirectoryListBox
      Left = 17
      Top = 25
      Width = 242
      Height = 164
      ItemHeight = 16
      TabOrder = 2
    end
    object cb1: TComboBox
      Left = 18
      Top = 211
      Width = 139
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 4
    end
  end
  object odLeer: TOpenDialog
    Options = [ofReadOnly, ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 702
    Top = 425
  end
  object cdsDestino: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBajaAutDisk'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 356
    Top = 387
  end
  object cdsEjec: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBajaAutDisk'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 448
    Top = 400
  end
  object dsDestino: TwwDataSource
    DataSet = cdsDestino
    Left = 357
    Top = 434
  end
  object odDest: TOpenDialog
    Options = [ofReadOnly, ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 702
    Top = 377
  end
  object cdsSubReg: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBajaAutDisk'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 280
    Top = 387
  end
end
