object FCobranzaFSC: TFCobranzaFSC
  Left = 256
  Top = 20
  Width = 1005
  Height = 700
  Caption = 'Cobranza del FSC'
  Color = 10207162
  Constraints.MaxHeight = 700
  Constraints.MaxWidth = 1005
  Constraints.MinHeight = 700
  Constraints.MinWidth = 1005
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 4
    Top = 4
    Width = 982
    Height = 58
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 16
      Top = 13
      Width = 328
      Height = 38
      Caption = 'Cobranzas del F.S.C. al '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 568
      Top = 20
      Width = 76
      Height = 23
      Caption = 'Periodo : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitProcesar: TBitBtn
      Left = 846
      Top = 18
      Width = 110
      Height = 28
      Caption = 'Procesar'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
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
    object dblcPeriodo: TwwDBLookupCombo
      Left = 648
      Top = 17
      Width = 80
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      DropDownAlignment = taLeftJustify
      LookupField = 'PERIODO'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcPeriodoChange
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 66
    Width = 982
    Height = 545
    TabOrder = 1
    object lblMes: TLabel
      Left = 608
      Top = 276
      Width = 36
      Height = 13
      Caption = '201301'
      Visible = False
    end
    object Image1: TImage
      Left = 275
      Top = 111
      Width = 16
      Height = 16
      Picture.Data = {
        07544269746D617076010000424D760100000000000076000000280000002000
        000010000000010004000000000000010000120B0000120B0000100000000000
        0000000000000000800000800000008080008000000080008000808000007F7F
        7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333333333333333333333333333333FF333
        33333333330033333333333333773FF3333333333309003333333333337F773F
        F33333333309990033333FFFFF7F33773FF30000000999990033777777733333
        773F09999999999999007FFFFFFF33333F7700000009999900337777777F333F
        773333333309990033333333337F3F77333333333309003333333333337F7733
        3333333333003333333333333377333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333}
    end
    object Image3: TImage
      Left = 493
      Top = 231
      Width = 14
      Height = 16
      Picture.Data = {
        07544269746D617076010000424D760100000000000076000000280000002000
        000010000000010004000000000000010000120B0000120B0000100000000000
        0000000000000000800000800000008080008000000080008000808000007F7F
        7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00333333303333333333333337F33333333333333033333333333333373F33
        333333333309033333333333337F7F33333333333309033333333333337373F3
        33333333309990333333333337F337F33333333330999033333333333733373F
        3333333309999903333333337F33337F33333333099999033333333373333373
        F33333309999999033333337FFFF3FF7F33333300009000033333337777F7777
        333333333309033333333333337F7F33333333333309033333333333337F7F33
        333333333309033333333333337F7F33333333333309033333333333337F7F33
        333333333309033333333333337F7F3333333333330003333333333333777333
        3333}
    end
    object Image2: TImage
      Left = 275
      Top = 390
      Width = 16
      Height = 16
      Picture.Data = {
        07544269746D617076010000424D760100000000000076000000280000002000
        000010000000010004000000000000010000120B0000120B0000100000000000
        0000000000000000800000800000008080008000000080008000808000007F7F
        7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333333333333333333333333333333FF333
        33333333330033333333333333773FF3333333333309003333333333337F773F
        F33333333309990033333FFFFF7F33773FF30000000999990033777777733333
        773F09999999999999007FFFFFFF33333F7700000009999900337777777F333F
        773333333309990033333333337F3F77333333333309003333333333337F7733
        3333333333003333333333333377333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333}
    end
    object Image4: TImage
      Left = 606
      Top = 390
      Width = 16
      Height = 16
      Picture.Data = {
        07544269746D617076010000424D760100000000000076000000280000002000
        000010000000010004000000000000010000120B0000120B0000100000000000
        0000000000000000800000800000008080008000000080008000808000007F7F
        7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333333333333333333333333333333FF333
        33333333330033333333333333773FF3333333333309003333333333337F773F
        F33333333309990033333FFFFF7F33773FF30000000999990033777777733333
        773F09999999999999007FFFFFFF33333F7700000009999900337777777F333F
        773333333309990033333333337F3F77333333333309003333333333337F7733
        3333333333003333333333333377333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333}
    end
    object Bevel1: TBevel
      Left = 8
      Top = 249
      Width = 964
      Height = 27
    end
    object lblMesDes: TLabel
      Left = 391
      Top = 253
      Width = 225
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbgAno: TwwDBGrid
      Left = 8
      Top = 17
      Width = 262
      Height = 200
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnEnter = dbgAnoEnter
    end
    object dbgForPag: TwwDBGrid
      Left = 294
      Top = 17
      Width = 680
      Height = 199
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 1
      ShowHorzScrollBar = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = True
      OnTitleButtonClick = dbgForPagTitleButtonClick
      OnEnter = dbgForPagEnter
    end
    object dbgMes: TwwDBGrid
      Left = 8
      Top = 290
      Width = 262
      Height = 240
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 2
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnEnter = dbgMesEnter
    end
    object dbgMesApl: TwwDBGrid
      Left = 294
      Top = 290
      Width = 288
      Height = 240
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnEnter = dbgMesAplEnter
    end
    object dbgMesFP: TwwDBGrid
      Left = 644
      Top = 290
      Width = 328
      Height = 240
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 4
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnEnter = dbgMesFPEnter
    end
  end
  object Panel3: TPanel
    Left = 4
    Top = 615
    Width = 982
    Height = 41
    TabOrder = 2
    DesignSize = (
      982
      41)
    object btnSalir: TBitBtn
      Left = 869
      Top = 6
      Width = 100
      Height = 30
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
    object btnAExcel: TBitBtn
      Left = 529
      Top = 6
      Width = 100
      Height = 30
      Caption = 'A &Excel'
      TabOrder = 1
      OnClick = btnAExcelClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
    end
    object bbtnGrafico: TBitBtn
      Left = 638
      Top = 6
      Width = 100
      Height = 30
      Caption = '&Gr'#225'fico A'#241'o'
      TabOrder = 2
      OnClick = bbtnGraficoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbtnGrafMes: TBitBtn
      Left = 749
      Top = 6
      Width = 100
      Height = 30
      Caption = '&Gr'#225'fico Meses'
      TabOrder = 3
      OnClick = bbtnGrafMesClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
        3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
        000077777777777777773303333333333333337FF333333F33333709333333C3
        333337773F3FF373F333330393993C3C33333F7F7F77F7F7FFFF77079797977C
        77777777777777777777330339339333C333337FF73373F37F33370C333C3933
        933337773F3737F37FF33303C3C33939C9333F7F7F7FF7F777FF7707C7C77797
        7C97777777777777777733033C3333333C33337F37F33333373F37033C333333
        33C3377F37333333337333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
end
