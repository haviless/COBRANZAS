object fRefGestion: TfRefGestion
  Left = 204
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Referencias  / Gesti'#243'n de Cobranzas'
  ClientHeight = 453
  ClientWidth = 613
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grbGen: TGroupBox
    Left = 2
    Top = 0
    Width = 607
    Height = 451
    TabOrder = 0
    object rdb01: TRadioButton
      Left = 8
      Top = 13
      Width = 353
      Height = 17
      Caption = #191'PORQUE MEDIO SE ENTERO DE SU MOROSIDAD?'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rdb01Click
    end
    object rdb02: TRadioButton
      Left = 8
      Top = 35
      Width = 321
      Height = 17
      Caption = #191'CUAL ES LA JUSTIFICACION DEL DEUDOR?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rdb02Click
    end
    object rdb03: TRadioButton
      Left = 8
      Top = 57
      Width = 265
      Height = 17
      Caption = #191'CUAL ES LA SOLUCION ARRIBADA?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rdb03Click
    end
    object Panel1: TPanel
      Left = 7
      Top = 80
      Width = 595
      Height = 329
      Caption = 'Panel1'
      TabOrder = 3
      object Shape1: TShape
        Left = 5
        Top = 5
        Width = 582
        Height = 25
      end
      object lblCaption: TLabel
        Left = 11
        Top = 9
        Width = 433
        Height = 18
        AutoSize = False
        Caption = 'lblCaption'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object dtgGestCob: TwwDBGrid
        Left = 6
        Top = 31
        Width = 583
        Height = 291
        DisableThemesInTitle = False
        Selected.Strings = (
          'ID'#9'5'#9'Codigo'
          'DESCRIPCION'#9'76'#9'Descripci'#243'n'
          'ESTREG'#9'5'#9'Activo'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        OnRowChanged = dtgGestCobRowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsTZona
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        object dtgGestCobIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 24
          Height = 28
          Hint = 'Nuevo'
          AllowAllUp = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
            0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
            33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = dtgGestCobIButtonClick
        end
      end
    end
    object BitSalir: TBitBtn
      Left = 482
      Top = 417
      Width = 86
      Height = 26
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 4
      OnClick = BitSalirClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object BitMarcar: TBitBtn
      Left = 385
      Top = 417
      Width = 86
      Height = 26
      Caption = 'DesActiva'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitMarcarClick
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
  object pnlGrabar: TPanel
    Left = 32
    Top = 224
    Width = 553
    Height = 124
    Color = 10207162
    TabOrder = 1
    Visible = False
    object StaticText1: TStaticText
      Left = 5
      Top = 4
      Width = 543
      Height = 17
      AutoSize = False
      Caption = ' Nuevo'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object BitCerrar: TBitBtn
      Left = 531
      Top = 5
      Width = 15
      Height = 15
      Caption = 'X'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitCerrarClick
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 22
      Width = 543
      Height = 97
      TabOrder = 2
      object Label1: TLabel
        Left = 47
        Top = 9
        Width = 83
        Height = 17
        AutoSize = False
        Caption = 'Descripci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 7
        Top = 9
        Width = 38
        Height = 17
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object BitGrabar: TBitBtn
        Left = 366
        Top = 63
        Width = 78
        Height = 27
        Cursor = crHandPoint
        Hint = 'Grabar'
        Caption = '&Grabar'
        TabOrder = 0
        OnClick = BitGrabarClick
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
      object BitClose: TBitBtn
        Left = 451
        Top = 63
        Width = 77
        Height = 27
        Cursor = crHandPoint
        Hint = 'Salir'
        Caption = '&Salir'
        TabOrder = 1
        OnClick = BitCloseClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
          F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
          000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
          338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
          45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
          3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
          F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
          000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
          338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
          4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
          8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
          333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
          0000}
        NumGlyphs = 2
      end
      object Panel2: TPanel
        Left = 45
        Top = 26
        Width = 493
        Height = 29
        Caption = 'Panel2'
        TabOrder = 2
        object EdtDescrip: TEdit
          Left = 3
          Top = 2
          Width = 486
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          MaxLength = 60
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel3: TPanel
        Left = 6
        Top = 26
        Width = 36
        Height = 29
        Enabled = False
        TabOrder = 3
        object EdtCodigo: TEdit
          Left = 3
          Top = 2
          Width = 30
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
end
