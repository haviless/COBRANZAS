object FPlantMan2: TFPlantMan2
  Left = 186
  Top = 12
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Plantillas de TeleAhorro'
  ClientHeight = 528
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlPrevio: TPanel
    Left = 26
    Top = 241
    Width = 743
    Height = 252
    BevelInner = bvLowered
    BevelWidth = 2
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    Color = 10207162
    ParentBiDiMode = False
    TabOrder = 3
    Visible = False
    object Label12: TLabel
      Left = 49
      Top = 7
      Width = 211
      Height = 27
      Caption = 'Preliminar de Importar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgPrevio: TwwDBGrid
      Left = 10
      Top = 35
      Width = 716
      Height = 174
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 15792632
      KeyOptions = [dgAllowDelete]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
    object BitBtn3: TBitBtn
      Left = 632
      Top = 215
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object dbgPlantilla: TwwDBGrid
    Left = 4
    Top = 356
    Width = 782
    Height = 134
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = 15792632
    DataSource = DM1.dsEjecuta
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    KeyOptions = [dgAllowDelete]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object Panel3: TPanel
    Left = 4
    Top = 492
    Width = 782
    Height = 34
    Color = 10207162
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 574
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Minimiza'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 665
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Maximiza'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object Previo: TBitBtn
      Left = 38
      Top = 6
      Width = 91
      Height = 25
      Caption = 'Preliminar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = PrevioClick
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
  end
  object Panel1: TPanel
    Left = 280
    Top = 3
    Width = 507
    Height = 344
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 0
    object Label2: TLabel
      Left = 203
      Top = 4
      Width = 80
      Height = 27
      Caption = 'Plantillas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 335
      Top = 18
      Width = 75
      Height = 27
      Caption = 'Detalles'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 71
      Top = 18
      Width = 86
      Height = 27
      Caption = 'Cabecera'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object wwDBGrid2: TwwDBGrid
      Left = 237
      Top = 42
      Width = 259
      Height = 260
      DisableThemesInTitle = False
      Selected.Strings = (
        'ITEM'#9'2'#9'It.'
        'NOMBRE'#9'15'#9'Campo'
        'DESDE'#9'4'#9'Inicio'
        'HASTA'#9'4'#9'Hasta'
        'CEROIZQ'#9'4'#9'Cero~Izq.'
        'LONGITUD'#9'3'#9'Ln'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 15792632
      DataSource = DM1.dsPlandet
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = wwDBGrid2DblClick
      OnKeyDown = wwDBGrid2KeyDown
      object wwDBGrid2IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 20
        Height = 28
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = wwDBGrid2IButtonClick
      end
    end
    object dbgCabec: TwwDBGrid
      Left = 4
      Top = 42
      Width = 230
      Height = 260
      DisableThemesInTitle = False
      Selected.Strings = (
        'PLANTILLA'#9'5'#9'It'#9'F'
        'NOMBRE'#9'20'#9'Plantilla'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      OnRowChanged = dbgCabecRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 15792632
      DataSource = DM1.dsPlantilla
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDblClick = dbgCabecDblClick
      OnKeyDown = dbgCabecKeyDown
      object wwDBGrid3IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 20
        Height = 28
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = wwDBGrid3IButtonClick
      end
    end
    object BitBtn2: TBitBtn
      Left = 76
      Top = 307
      Width = 75
      Height = 25
      Caption = 'Cargar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDD
        DD000000DDDDDD000000DDDDDD066660DDDDDD000000D0000006666000000D00
        0000DDD000666666000DDD000000DDDDD00066000DDDDD000000DDDDDDD0000D
        DDDDDD000000DDDDDDDD88DDDDDDDD000000D0000000000000000D000000D0F8
        0F80F80F80F80D000000D0FF0FF0FF0FF0FF0D000000D0000000000000000D00
        0000DDDDDDDDDDDDDDDDDD000000D0000000000000000D000000DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
    end
    object pnlCab: TPanel
      Left = 14
      Top = 109
      Width = 187
      Height = 124
      BevelInner = bvLowered
      BevelWidth = 2
      BorderWidth = 2
      Color = 10207162
      TabOrder = 3
      Visible = False
      object Label1: TLabel
        Left = 11
        Top = 39
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 11
        Top = 62
        Width = 37
        Height = 13
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 64
        Top = 7
        Width = 55
        Height = 21
        Caption = 'Plantilla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeCodigo: TwwDBEdit
        Left = 52
        Top = 33
        Width = 50
        Height = 23
        DataField = 'PLANTILLA'
        DataSource = DM1.dsPlantilla
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNombre: TwwDBEdit
        Left = 52
        Top = 58
        Width = 121
        Height = 23
        DataField = 'NOMBRE'
        DataSource = DM1.dsPlantilla
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object bbtnOkC: TBitBtn
        Left = 101
        Top = 86
        Width = 32
        Height = 28
        TabOrder = 2
        OnClick = bbtnOkCClick
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
      object bbtnCancC: TBitBtn
        Left = 137
        Top = 86
        Width = 32
        Height = 28
        Cancel = True
        TabOrder = 3
        OnClick = bbtnCancCClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object pnlDet: TPanel
      Left = 267
      Top = 79
      Width = 212
      Height = 212
      Alignment = taRightJustify
      BevelInner = bvLowered
      BevelWidth = 2
      BorderWidth = 2
      Color = 10207162
      TabOrder = 4
      Visible = False
      object Label7: TLabel
        Left = 33
        Top = 6
        Width = 136
        Height = 21
        Caption = 'Detalle de Plantilla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 30
        Top = 61
        Width = 20
        Height = 13
        Caption = 'Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 29
        Top = 36
        Width = 33
        Height = 13
        Caption = 'Campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object bbtnOkD: TBitBtn
        Left = 118
        Top = 178
        Width = 32
        Height = 25
        TabOrder = 4
        OnClick = bbtnOkDClick
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
      object bbtnCancD: TBitBtn
        Left = 154
        Top = 178
        Width = 32
        Height = 25
        Cancel = True
        TabOrder = 5
        OnClick = bbtnCancDClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object dbeItem: TwwDBEdit
        Left = 74
        Top = 56
        Width = 34
        Height = 23
        DataField = 'ITEM'
        DataSource = DM1.dsPlandet
        Enabled = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object GroupBox1: TGroupBox
        Left = 14
        Top = 131
        Width = 185
        Height = 43
        Caption = 'Ceros a la Izquierda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label13: TLabel
          Left = 84
          Top = 20
          Width = 41
          Height = 13
          Caption = 'Longitud'
        end
        object spLongCero: TwwDBSpinEdit
          Left = 130
          Top = 15
          Width = 45
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 100.000000000000000000
          DataField = 'LONGITUD'
          DataSource = DM1.dsPlandet
          MaxLength = 3
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object dbcbCero: TDBCheckBox
          Left = 13
          Top = 19
          Width = 53
          Height = 17
          Caption = 'Si/No'
          DataField = 'CEROIZQ'
          DataSource = DM1.dsPlandet
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 82
        Width = 185
        Height = 44
        Caption = 'Posiciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label10: TLabel
          Left = 9
          Top = 23
          Width = 31
          Height = 13
          Caption = 'Desde'
        end
        object Label11: TLabel
          Left = 98
          Top = 23
          Width = 28
          Height = 13
          Caption = 'Hasta'
        end
        object spDesde: TwwDBSpinEdit
          Left = 44
          Top = 17
          Width = 45
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 200.000000000000000000
          DataField = 'DESDE'
          DataSource = DM1.dsPlandet
          MaxLength = 3
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object spHasta: TwwDBSpinEdit
          Left = 130
          Top = 16
          Width = 45
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 200.000000000000000000
          DataField = 'HASTA'
          DataSource = DM1.dsPlandet
          MaxLength = 3
          TabOrder = 1
          UnboundDataType = wwDefault
        end
      end
      object dblcCampo: TwwDBLookupCombo
        Left = 73
        Top = 30
        Width = 119
        Height = 23
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOMBRE'#9'15'#9'Nombre')
        DataField = 'NOMBRE'
        DataSource = DM1.dsPlandet
        Options = [loColLines, loRowLines, loTitles]
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcCampoExit
      end
    end
    object pgProc: TProgressBar
      Left = 248
      Top = 309
      Width = 241
      Height = 20
      TabOrder = 5
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 3
    Width = 273
    Height = 344
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 1
    object Label14: TLabel
      Left = 65
      Top = 9
      Width = 141
      Height = 27
      Caption = 'Plantilla a Usar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object wwDBGrid1: TwwDBGrid
      Left = 3
      Top = 42
      Width = 265
      Height = 260
      DisableThemesInTitle = False
      Selected.Strings = (
        'ITEM'#9'2'#9'It.'
        'NOMBRE'#9'15'#9'Campo'#9'F'
        'DESDE'#9'4'#9'Inicio'
        'HASTA'#9'4'#9'Hasta'
        'CEROIZQ'#9'1'#9'Cero~Izq.'
        'LONGITUD'#9'3'#9'Ln')
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 15792632
      DataSource = DM1.dsModelo
      KeyOptions = [dgAllowDelete]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      object wwDBGrid1IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 20
        Height = 25
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object bbtnImportar: TBitBtn
      Left = 9
      Top = 305
      Width = 93
      Height = 28
      Caption = 'Importar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbtnImportarClick
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
    object bbtnEliminar: TBitBtn
      Left = 133
      Top = 307
      Width = 123
      Height = 25
      Hint = 'Elimina Datos Importados'
      Caption = 'Elimina Importaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bbtnEliminarClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777777777777770000000777777777777770F700000007777
        0F777777777770000000777000F7777770F770000000777000F777770F777000
        00007777000F77700F777000000077777000F700F7777000000077777700000F
        7777700000007777777000F777777000000077777700000F7777700000007777
        7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
        00007700F7777777700F70000000777777777777777770000000777777777777
        777770000000}
    end
  end
end
